Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D28DC4F4C6F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 03:15:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 808E810E484;
	Wed,  6 Apr 2022 01:15:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C01610E484;
 Wed,  6 Apr 2022 01:15:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6855BA66C9;
 Wed,  6 Apr 2022 01:15:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 06 Apr 2022 01:15:42 -0000
Message-ID: <164920774239.5449.13006473348419140696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fbcon_cleanups?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: fbcon cleanups
URL   : https://patchwork.freedesktop.org/series/102223/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
dfa32370def4 fbcon: delete a few unneeded forward decl
-:66: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
d499915380db fbcon: Move fbcon_bmove(_rec) functions
-:185: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
6de39807b693 fbcon: Introduce wrapper for console->fb_info lookup
-:334: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 274 lines checked
e6031facb28e fbcon: delete delayed loading code
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6104c37094e7 ("fbcon: Make fbcon a built-time depency for fbdev")'
#8: 
commit 6104c37094e729f3d4ce65797002112735d49cd1

-:69: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 25 lines checked
dba10a484a39 fbdev/sysfs: Fix locking
-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
6f8455180e38 fbcon: Use delayed work for cursor
-:288: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 229 lines checked
25853882a8c5 fbcon: Replace FBCON_FLAGS_INIT with a boolean
-:89: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
941ec083d94c fb: Delete fb_info->queue
-:26: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
d251e9f07617 fbcon: Extract fbcon_open/release helpers
-:127: WARNING:BLOCK_COMMENT_STYLE: Block comments use * on subsequent lines
#127: FILE: drivers/video/fbdev/core/fbcon.c:759:
+	/*
+	  If oldinfo and newinfo are driving the same hardware,

-:142: WARNING:PREFER_PR_LEVEL: Prefer [subsystem eg: netdev]_err([subsystem]dev, ... then dev_err(dev, ... then pr_err(...  to printk(KERN_ERR ...
#142: FILE: drivers/video/fbdev/core/fbcon.c:769:
+			printk(KERN_ERR "con2fb_release_oldinfo: "

-:142: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'con2fb_release_oldinfo', this function's name, in a string
#142: FILE: drivers/video/fbdev/core/fbcon.c:769:
+			printk(KERN_ERR "con2fb_release_oldinfo: "

-:199: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 4 warnings, 0 checks, 164 lines checked
cb066ee6b08c fbcon: Ditch error handling for con2fb_release_oldinfo
-:102: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
a3b1ce9ac765 fbcon: move more common code into fb_open()
-:64: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops)...) over kzalloc(sizeof(struct fbcon_ops)...)
#64: FILE: drivers/video/fbdev/core/fbcon.c:706:
+	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);

-:165: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 122 lines checked
7cb2d0470518 fbcon: use lock_fb_info in fbcon_open/release
-:94: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
c1ac96227f4e fbcon: Consistently protect deferred_takeover with console_lock()
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
5637778fde24 fbcon: Move console_lock for register/unlink/unregister
-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/video/fbdev/core/fbcon.c:2903:
+MODULE_PARM_DESC(lockless_register_fb,
+	"Lockless framebuffer registration for debugging [default=off]");

-:181: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 135 lines checked
16f2edb46f32 fbcon: Move more code into fbcon_release
-:81: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
dacecd8d6968 fbcon: untangle fbcon_exit
-:145: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
f1e4af1a8fab fbcon: Maintain a private array of fb_info
-:49: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#49: FILE: drivers/video/fbdev/core/fbcon.c:109:
+#define fbcon_for_each_registered_fb(i)		\
+	for (i = 0; WARN_CONSOLE_UNLOCKED(), i < FB_MAX; i++)		\
+		if (!fbcon_registered_fb[i]) {} else

-:49: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#49: FILE: drivers/video/fbdev/core/fbcon.c:109:
+#define fbcon_for_each_registered_fb(i)		\
+	for (i = 0; WARN_CONSOLE_UNLOCKED(), i < FB_MAX; i++)		\
+		if (!fbcon_registered_fb[i]) {} else

-:51: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#51: FILE: drivers/video/fbdev/core/fbcon.c:111:
+		if (!fbcon_registered_fb[i]) {} else

-:51: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#51: FILE: drivers/video/fbdev/core/fbcon.c:111:
+		if (!fbcon_registered_fb[i]) {} else
[...]
+		if (!fbcon_registered_fb[i]) {} else
[...]

-:211: WARNING:BRACES: braces {} are not necessary for single statement blocks
#211: FILE: drivers/video/fbdev/core/fbcon.c:3064:
+	if (!fbcon_registered_fb[con2fb.framebuffer]) {
 		return -EINVAL;
 	}

-:220: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#220: FILE: drivers/video/fbdev/core/fbcon.c:3131:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:233: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#233: FILE: drivers/video/fbdev/core/fbcon.c:3153:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:246: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#246: FILE: drivers/video/fbdev/core/fbcon.c:3173:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:259: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#259: FILE: drivers/video/fbdev/core/fbcon.c:3193:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:272: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!fbcon_registered_fb[idx]"
#272: FILE: drivers/video/fbdev/core/fbcon.c:3219:
+	if (idx == -1 || fbcon_registered_fb[idx] == NULL)

-:290: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 2 errors, 3 warnings, 6 checks, 237 lines checked


