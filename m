Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE15236C485
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 12:58:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E977E89FA6;
	Tue, 27 Apr 2021 10:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 107D789F6B;
 Tue, 27 Apr 2021 10:58:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07791A3ECB;
 Tue, 27 Apr 2021 10:58:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 27 Apr 2021 10:58:47 -0000
Message-ID: <161952112702.17487.339580035504068601@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/arm=3A_Don=27t_set_allow?=
 =?utf-8?q?=5Ffb=5Fmodifiers_explicitly?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/8] drm/arm: Don't set allow_fb_modifiers explicitly
URL   : https://patchwork.freedesktop.org/series/89531/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6bdfcd621a6a drm/arm: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
9d02b5e6f19f drm/arm/malidp: Always list modifiers
-:23: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#23: FILE: drivers/gpu/drm/arm/malidp_planes.c:930:
+static const uint64_t linear_only_modifiers[] = {

-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 21 lines checked
4ba63830af10 drm/i915: Don't set allow_fb_modifiers explicitly
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#11: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
64a789bb0aab drm/msm/dpu1: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 11 lines checked
e77663da9c1f drm/msm/mdp4: Fix modifier support enabling
-:41: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#41: FILE: drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c:352:
+static const uint64_t supported_format_modifiers[] = {

-:58: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 28 lines checked
940e48334301 drm/nouveau: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 7 lines checked
899a5341c78f drm/stm: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
1aee8463efc8 drm/modifiers: Enforce consistency between the cap an IN_FORMATS
-:8: WARNING:TYPO_SPELLING: 'ommitted' may be misspelled - perhaps 'omitted'?
#8: 
here, and some drivers screwed this up a bit. Most just ommitted the
                                                        ^^^^^^^^

-:89: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 45 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
