//
//  AppDelegate.m
//  test3
//
//  Created by yu shuhui on 2019/3/13.
//  Copyright © 2019 http://www.risecenter.com. All rights reserved.
//

#import "AppDelegate.h"
#import "IDZAudioPlayerViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

/*
 swift

 // pragma mark - IDZAudioPlayerDelegate

 /*

 测试
 playerInit()
 play()

 */
func audioPlayerDidFinishPlaying(_ player: IDZAudioPlayer!, successfully flag: Bool) {

}

func audioPlayerDecodeErrorDidOccur(_ player: IDZAudioPlayer!, error: Error!) {

}

func playerInit()
{
    let path = Bundle.main.path(forResource: "Rondo_Alla_Turka", ofType: "ogg")
    let oggUrl = URL(fileURLWithPath: path ?? "")
    let decoder =  try? IDZOggVorbisFileDecoder.init(contentsOf: oggUrl)
    if let duration = decoder?.duration {
        print("Ogg Vorbis file duration is \(duration)")
    }
    player = try? IDZAQAudioPlayer.init(decoder: decoder)

    if !(player != nil) {
        print("Error creating player: ")
    }
    player.delegate = self
    player.prepareToPlay()

}

func play()
{
    player.play()
}

func pause()
{
    player.pause()
}

func stop()
{
    player.stop()
}



 */


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
   IDZAudioPlayerViewController *viewController = [[IDZAudioPlayerViewController alloc] initWithNibName:@"IDZAudioPlayerViewController" bundle:nil];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
