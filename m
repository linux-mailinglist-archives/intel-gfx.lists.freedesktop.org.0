Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E5126C481
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 17:46:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE05F6EA4E;
	Wed, 16 Sep 2020 15:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1B46D6EA36;
 Wed, 16 Sep 2020 15:46:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 12D51A0009;
 Wed, 16 Sep 2020 15:46:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Wed, 16 Sep 2020 15:46:48 -0000
Message-ID: <160027120804.19374.2121244202638555136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916150824.15749-1-karthik.b.s@intel.com>
In-Reply-To: <20200916150824.15749-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Asynchronous_flip_implementation_for_i915_=28rev9=29?=
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

Series: Asynchronous flip implementation for i915 (rev9)
URL   : https://patchwork.freedesktop.org/series/74386/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ed031e0bb186 drm/i915: Add enable/disable flip done and flip done handler
bd5ec737f6d0 drm/i915: Add support for async flips in I915
50aacb3faacb drm/i915: Add checks specific to async flips
-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/display/intel_display.c:14949:
+		if (!(new_plane_state->hw.fb->modifier != I915_FORMAT_MOD_X_TILED ||
+		    new_plane_state->hw.fb->modifier != I915_FORMAT_MOD_Y_TILED ||

total: 0 errors, 0 warnings, 1 checks, 149 lines checked
84389a4b6626 drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
9dfc7c3c5cc6 drm/i915: Add dedicated plane hook for async flip case
706158a5c86e drm/i915: WA for platforms with double buffered address update enable bit
f309aae00a01 Documentation/gpu: Add asynchronous flip documentation for i915
de58069a8dde drm/i915: Enable async flips in i915


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
