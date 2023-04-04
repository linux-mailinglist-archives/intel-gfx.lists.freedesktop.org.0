Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C1D6D70D9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 01:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6DB10E22C;
	Tue,  4 Apr 2023 23:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2830410E061;
 Tue,  4 Apr 2023 23:44:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EE69FAA0ED;
 Tue,  4 Apr 2023 23:44:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 04 Apr 2023 23:44:08 -0000
Message-ID: <168065184893.18899.808823316238083569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/gma500=3A_Use_drm=5Faper?=
 =?utf-8?q?ture=5Fremove=5Fconflicting=5Fpci=5Fframebuffers?=
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

Series: series starting with [1/8] drm/gma500: Use drm_aperture_remove_conflicting_pci_framebuffers
URL   : https://patchwork.freedesktop.org/series/116115/
State : warning

== Summary ==

Error: dim checkpatch failed
7db5ea09e0ca drm/gma500: Use drm_aperture_remove_conflicting_pci_framebuffers
-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 19 lines checked
76418eb2d2d0 video/aperture: use generic code to figure out the vga default device
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 1d38fe6ee6a8 ("PCI/VGA: Move vgaarb to drivers/pci")'
#10: 
specific hack. See also 1d38fe6ee6a8 ("PCI/VGA: Move vgaarb to

-:68: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 15 lines checked
b33e4ae52179 drm/aperture: Remove primary argument
-:8: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#8: 
with the preceeding two patches those are all using the pci version of
         ^^^^^^^^^^

-:256: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 149 lines checked
a443b6f084bd video/aperture: Only kick vgacon when the pdev is decoding vga
-:15: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
#15: 
References: https://bugzilla.kernel.org/show_bug.cgi?id=216303

-:48: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 22 lines checked
ab328b0e47f5 video/aperture: Move vga handling to pci function
-:61: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 27 lines checked
396ad4927181 video/aperture: Drop primary argument
-:6: WARNING:TYPO_SPELLING: 'preceeding' may be misspelled - perhaps 'preceding'?
#6: 
With the preceeding patches it's become defunct. Also I'm about to add
         ^^^^^^^^^^

-:133: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 81 lines checked
3f7bc16a62fe video/aperture: Only remove sysfb on the default vga pci device
-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ee7a69aa38d8 ("fbdev: Disable sysfb device registration when removing conflicting FBs")'
#13: 
This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable

-:16: WARNING:TYPO_SPELLING: 'loosing' may be misspelled - perhaps 'losing'?
#16: 
resulting in the user loosing their efifb console or similar.
                      ^^^^^^^

-:50: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' instead
#50: 
References: https://bugzilla.kernel.org/show_bug.cgi?id=216303#c28

-:83: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 3 warnings, 0 checks, 19 lines checked
466711f2ccb2 fbdev: Simplify fb_is_primary_device for x86
-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 88674088d10c ("x86: Use vga_default_device() when determining whether an fb is primary")'
#20: 
up in 88674088d10c ("x86: Use vga_default_device() when determining

-:68: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 27 lines checked


