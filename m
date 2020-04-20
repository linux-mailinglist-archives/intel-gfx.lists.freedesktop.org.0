Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82B61B0633
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 12:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCDA89DFC;
	Mon, 20 Apr 2020 10:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F15F89DFC;
 Mon, 20 Apr 2020 10:06:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5830AA363B;
 Mon, 20 Apr 2020 10:06:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Mon, 20 Apr 2020 10:06:37 -0000
Message-ID: <158737719735.29873.10089823011567381579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200420094746.20409-1-karthik.b.s@intel.com>
In-Reply-To: <20200420094746.20409-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915_=28rev2=29?=
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

Series: Asynchronous flip implementation for i915 (rev2)
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ae7aa012537f drm/i915: Add enable/disable flip done and flip done handler
3c944ffc2524 drm/i915: Add support for async flips in I915
5c51d5526531 drm/i915: Enable async flips in i915
65949de8f695 drm/i915: Make commit call blocking in case of async flips
bf1d60193151 drm/i915: Add checks specific to async flips
-:61: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].x !=
 		     new_plane_state->color_plane[0].x'
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:14706:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

-:61: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'old_plane_state->color_plane[0].y !=
 		     new_plane_state->color_plane[0].y'
#61: FILE: drivers/gpu/drm/i915/display/intel_display.c:14706:
+		if ((old_plane_state->color_plane[0].x !=
+		     new_plane_state->color_plane[0].x) ||
+		    (old_plane_state->color_plane[0].y !=
+		     new_plane_state->color_plane[0].y)) {

total: 0 errors, 0 warnings, 2 checks, 71 lines checked
c2228f5dc3a5 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
