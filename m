Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD71D4AE557
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 00:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C12A10E489;
	Tue,  8 Feb 2022 23:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F51C10E301;
 Tue,  8 Feb 2022 23:15:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 59291AADD1;
 Tue,  8 Feb 2022 23:15:56 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 08 Feb 2022 23:15:56 -0000
Message-ID: <164436215632.22536.16665584420592063529@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_fbcon_patches=2C_take_two?=
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

Series: fbcon patches, take two
URL   : https://patchwork.freedesktop.org/series/99865/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2d681145150e fbcon: delete a few unneeded forward decl
-:65: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 38 lines checked
19ba8aad9437 fbcon: Move fbcon_bmove(_rec) functions
-:184: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 157 lines checked
ffdf84522741 fbcon: Introduce wrapper for console->fb_info lookup
-:333: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 274 lines checked
92e96e00ac25 fbcon: delete delayed loading code
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6104c37094e7 ("fbcon: Make fbcon a built-time depency for fbdev")'
#8: 
commit 6104c37094e729f3d4ce65797002112735d49cd1

-:68: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 25 lines checked
74265731b7af fbdev/sysfs: Fix locking
-:40: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
a592364a0bdb fbcon: Use delayed work for cursor
-:281: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 229 lines checked
c09c3011a9cf fbcon: Replace FBCON_FLAGS_INIT with a boolean
-:89: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 57 lines checked
807d95275bfd fb: Delete fb_info->queue
-:25: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 7 lines checked
0e6fba249ed1 fbcon: Extract fbcon_open/release helpers
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
bd6d6ad767b9 fbcon: Ditch error handling for con2fb_release_oldinfo
-:101: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 75 lines checked
47a2d657d082 fbcon: move more common code into fb_open()
-:61: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*ops)...) over kzalloc(sizeof(struct fbcon_ops)...)
#61: FILE: drivers/video/fbdev/core/fbcon.c:706:
+	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);

-:162: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 122 lines checked
07a98b03a1c7 fbcon: use lock_fb_info in fbcon_open/release
-:94: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
1aece9d971a7 fbcon: Consistently protect deferred_takeover with console_lock()
-:43: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
68aaba46c7ef fbcon: Move console_lock for register/unlink/unregister
-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/video/fbdev/core/fbcon.c:2903:
+MODULE_PARM_DESC(lockless_register_fb,
+	"Lockless framebuffer registration for debugging [default=off]");

-:181: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 135 lines checked
2c3a29940188 fbcon: Move more code into fbcon_release
-:81: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
0536b37b945e fbcon: untangle fbcon_exit
-:145: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 96 lines checked
f30790fbd7af fbcon: Maintain a private array of fb_info
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
103c665d071a Revert "fbdev: Prevent probing generic drivers if a FB is already registered"
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 27599aacbaef ("fbdev: Hot-unplug firmware fb devices on forced removal")'
#11: 
commit 27599aacbaefcbf2af7b06b0029459bbf682000d

-:24: WARNING:BAD_SIGN_OFF: Duplicate signature
#24: 
Cc: Zack Rusin <zackr@vmware.com>

-:74: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 34 lines checked
93302ed0c9b3 fbdev: Make registered_fb[] private to fbmem.c
-:46: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#46: FILE: drivers/video/fbdev/core/fbmem.c:57:
+#define for_each_registered_fb(i)		\
+	for (i = 0; i < FB_MAX; i++)		\
+		if (!registered_fb[i]) {} else

-:46: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i' - possible side-effects?
#46: FILE: drivers/video/fbdev/core/fbmem.c:57:
+#define for_each_registered_fb(i)		\
+	for (i = 0; i < FB_MAX; i++)		\
+		if (!registered_fb[i]) {} else

-:48: ERROR:TRAILING_STATEMENTS: trailing statements should be on next line
#48: FILE: drivers/video/fbdev/core/fbmem.c:59:
+		if (!registered_fb[i]) {} else

-:48: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#48: FILE: drivers/video/fbdev/core/fbmem.c:59:
+		if (!registered_fb[i]) {} else
[...]
+		if (!registered_fb[i]) {} else
[...]

-:75: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 2 errors, 2 warnings, 1 checks, 35 lines checked


