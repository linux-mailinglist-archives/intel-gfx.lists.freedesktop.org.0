Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D56A866600F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 17:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C7F710E785;
	Wed, 11 Jan 2023 16:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A245410E785;
 Wed, 11 Jan 2023 16:10:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5371FAADD4;
 Wed, 11 Jan 2023 16:10:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 11 Jan 2023 16:10:20 -0000
Message-ID: <167345342033.20085.6961242441195108040@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/11=5D_drm/ast=3A_Use_drm=5Fapert?=
 =?utf-8?q?ure=5Fremove=5Fconflicting=5Fpci=5Fframebuffers?=
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

Series: series starting with [01/11] drm/ast: Use drm_aperture_remove_conflicting_pci_framebuffers
URL   : https://patchwork.freedesktop.org/series/112678/
State : warning

== Summary ==

Error: dim checkpatch failed
8179e533ce2d drm/ast: Use drm_aperture_remove_conflicting_pci_framebuffers
-:50: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
b6c78450ea70 drm/gma500: Use drm_aperture_remove_conflicting_pci_framebuffers
-:25: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
6ededaf10dce drm/aperture: Remove primary argument
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
with the preceeding two patches those are all using the pci version of
         ^^^^^^^^^^

-:239: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 141 lines checked
f31bb3cc89e7 video/aperture: use generic code to figure out the vga default device
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 1d38fe6ee6a8 ("PCI/VGA: Move vgaarb to drivers/pci")'
#10: 
specific hack. See also 1d38fe6ee6a8 ("PCI/VGA: Move vgaarb to

-:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 15 lines checked
53af1ee14d29 video/aperture: Only kick vgacon when the pdev is decoding vga
-:32: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 9 lines checked
4b35c67ecf18 staging/lynxfb: Use pci aperture helper
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
242c46f69022 fbdev/radeon: use pci aperture helpers
-:40: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 22 lines checked
e532a4323d08 fbdev/hyperv: use pci aperture helpers
-:31: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
bb9ea9da0922 video/aperture: Move vga handling to pci function
-:59: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
3630a240e94e video/aperture: Drop primary argument
-:6: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#6: 
With the preceeding patches it's become defunct. Also I'm about to add
         ^^^^^^^^^^

-:109: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 73 lines checked
1464ac9bdb27 video/aperture: Only remove sysfb on the default vga pci device
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ee7a69aa38d8 ("fbdev: Disable sysfb device registration when removing conflicting FBs")'
#7: 
This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable

-:10: WARNING:TYPO_SPELLING: 'loosing' may be misspelled - perhaps 'losing'?
#10: 
resulting in the user loosing their efifb console or similar.
                      ^^^^^^^

-:59: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 2 warnings, 0 checks, 19 lines checked


