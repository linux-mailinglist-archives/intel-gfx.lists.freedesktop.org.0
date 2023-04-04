Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830D86D703E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 00:42:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5248D10E7DB;
	Tue,  4 Apr 2023 22:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F60C10E7DB;
 Tue,  4 Apr 2023 22:42:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26EA5AA3D8;
 Tue,  4 Apr 2023 22:42:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 04 Apr 2023 22:42:30 -0000
Message-ID: <168064815012.18899.192307025765360051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/fb-helper=3A_set_x/yres?=
 =?utf-8?q?=5Fvirtual_in_drm=5Ffb=5Fhelper=5Fcheck=5Fvar?=
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

Series: series starting with [1/3] drm/fb-helper: set x/yres_virtual in drm_fb_helper_check_var
URL   : https://patchwork.freedesktop.org/series/116109/
State : warning

== Summary ==

Error: dim checkpatch failed
8b9227e2090f drm/fb-helper: set x/yres_virtual in drm_fb_helper_check_var
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6c11df58fd1a ("fbmem: Check virtual screen sizes in fb_set_var()")'
#7: 
reject it. Uncovered by 6c11df58fd1a ("fbmem: Check virtual screen

-:31: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 9 lines checked
c7187f14b77e drm/fb-helper: drop redundant pixclock check from drm_fb_helper_set_par()
-:33: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 11 lines checked
07636f85167e drm/fb-helper: fix input validation gaps in check_var
-:39: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#39: FILE: drivers/gpu/drm/drm_fb_helper.c:1550:
+	var->height = var->width = 0;

-:40: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#40: FILE: drivers/gpu/drm/drm_fb_helper.c:1551:
+	var->left_margin = var->right_margin = 0;

-:41: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#41: FILE: drivers/gpu/drm/drm_fb_helper.c:1552:
+	var->upper_margin = var->lower_margin = 0;

-:42: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#42: FILE: drivers/gpu/drm/drm_fb_helper.c:1553:
+	var->hsync_len = var->vsync_len = 0;

-:43: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#43: FILE: drivers/gpu/drm/drm_fb_helper.c:1554:
+	var->sync = var->vmode = 0;

-:103: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 5 checks, 75 lines checked


