Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D36D21E567
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 03:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051296E3C6;
	Tue, 14 Jul 2020 01:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BA556E3C6;
 Tue, 14 Jul 2020 01:58:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04288A41FB;
 Tue, 14 Jul 2020 01:58:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Tue, 14 Jul 2020 01:58:26 -0000
Message-ID: <159469190698.6781.4894838462547961618@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714012725.18383-1-karthik.b.s@intel.com>
In-Reply-To: <20200714012725.18383-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915_=28rev4=29?=
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

Series: Asynchronous flip implementation for i915 (rev4)
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
b48aa69c41de drm/i915: Add enable/disable flip done and flip done handler
-:28: WARNING:TYPO_SPELLING: 'begining' may be misspelled - perhaps 'beginning'?
#28: 
    -Make the pending vblank event NULL in the begining of

total: 0 errors, 1 warnings, 0 checks, 197 lines checked
64fa1ff84ea3 drm/i915: Add support for async flips in I915
2fe12b0307ea drm/i915: Add checks specific to async flips
-:48: WARNING:TYPO_SPELLING: 'Requried' may be misspelled - perhaps 'Required'?
#48: FILE: drivers/gpu/drm/i915/display/intel_display.c:14839:
+			DRM_DEBUG_KMS("Modeset Requried. Async flip not supported\n");

-:72: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].x !=
 		     new_plane_state->color_plane[0].x'
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:14863:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

-:72: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].y !=
 		     new_plane_state->color_plane[0].y'
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:14863:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

-:102: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_display.c:14893:
+		if (old_plane_state->uapi.pixel_blend_mode != new_plane_state->uapi.pixel_blend_mode) {

total: 0 errors, 2 warnings, 2 checks, 115 lines checked
c68f7e3b6d25 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
2f73114a8669 drm/i915: Enable async flips in i915

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
