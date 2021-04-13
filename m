Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 843FE35DE4B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 14:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D03AF89D77;
	Tue, 13 Apr 2021 12:10:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61C2989CF8;
 Tue, 13 Apr 2021 12:10:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55D89A47E8;
 Tue, 13 Apr 2021 12:10:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 13 Apr 2021 12:10:39 -0000
Message-ID: <161831583932.8797.5631148571000143975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/arm=3A_Don=27t_set_all?=
 =?utf-8?q?ow=5Ffb=5Fmodifiers_explicitly?=
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

Series: series starting with [01/12] drm/arm: Don't set allow_fb_modifiers explicitly
URL   : https://patchwork.freedesktop.org/series/88999/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
95d1b78648fe drm/arm: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:47: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
5a0febe6beff drm/arm/malidp: Always list modifiers
-:23: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#23: FILE: drivers/gpu/drm/arm/malidp_planes.c:930:
+static const uint64_t linear_only_modifiers[] = {

-:41: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 21 lines checked
0e8191b69ca9 drm/exynos: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:37: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 7 lines checked
9e2aecf3367a drm/i915: Don't set allow_fb_modifiers explicitly
-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#11: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:44: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
1bf4883a3d8f drm/imx: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:53: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 14 lines checked
5136a63981d1 drm/msm/dpu1: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:42: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 11 lines checked
afa911ded79d drm/msm/mdp4: Fix modifier support enabling
-:41: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#41: FILE: drivers/gpu/drm/msm/disp/mdp4/mdp4_plane.c:352:
+static const uint64_t supported_format_modifiers[] = {

-:58: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 1 warnings, 1 checks, 28 lines checked
cdfd52445cfa drm/nouveau: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 7 lines checked
e2b8b541e594 drm/stm: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 8 lines checked
d87b3d5a3254 drm/tegra: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:38: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u64' over 'uint64_t'
#38: FILE: drivers/gpu/drm/tegra/dc.c:962:
+static const uint64_t linear_modifiers[] = {

-:77: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 1 checks, 36 lines checked
cd7d120c5b56 drm/vc4: Don't set allow_fb_modifiers explicitly
-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 890880ddfdbe ("drm: Auto-set allow_fb_modifiers when given modifiers at plane init")'
#8: 
commit 890880ddfdbe256083170866e49c87618b706ac7

-:32: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 1 errors, 1 warnings, 0 checks, 7 lines checked
0fa454884dab drm/modifiers: Enforce consistency between the cap an IN_FORMATS
-:8: WARNING:TYPO_SPELLING: 'ommitted' may be misspelled - perhaps 'omitted'?
#8: 
here, and some drivers screwed this up a bit. Most just ommitted the
                                                        ^^^^^^^^

-:80: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Daniel Vetter <daniel.vetter@ffwll.ch>' != 'Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 43 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
