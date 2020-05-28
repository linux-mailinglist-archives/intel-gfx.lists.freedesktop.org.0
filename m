Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 934441E579A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB2E6E082;
	Thu, 28 May 2020 06:35:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06F4F6E082;
 Thu, 28 May 2020 06:35:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAFDCA47E0;
 Thu, 28 May 2020 06:35:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Thu, 28 May 2020 06:35:03 -0000
Message-ID: <159064770393.687.2063224966393844144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528053931.29282-1-karthik.b.s@intel.com>
In-Reply-To: <20200528053931.29282-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915_=28rev3=29?=
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

Series: Asynchronous flip implementation for i915 (rev3)
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
239c9f562cbf drm/i915: Add enable/disable flip done and flip done handler
-:28: WARNING:TYPO_SPELLING: 'begining' may be misspelled - perhaps 'beginning'?
#28: 
    -Make the pending vblank event NULL in the begining of

total: 0 errors, 1 warnings, 0 checks, 123 lines checked
54febd5358c0 drm/i915: Add support for async flips in I915
85045ff08f4f drm/i915: Add checks specific to async flips
-:59: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].x !=
 		     new_plane_state->color_plane[0].x'
#59: FILE: drivers/gpu/drm/i915/display/intel_display.c:14830:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

-:59: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].y !=
 		     new_plane_state->color_plane[0].y'
#59: FILE: drivers/gpu/drm/i915/display/intel_display.c:14830:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

total: 0 errors, 0 warnings, 2 checks, 67 lines checked
35ffa8ae0d13 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
f13f002114a6 drm/i915: Enable async flips in i915

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
