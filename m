Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B90465192
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:26:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09B36ECDB;
	Wed,  1 Dec 2021 15:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B2686ECD9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="260456729"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="260456729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="500291168"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 01 Dec 2021 07:26:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:42 +0200
Message-Id: <20211201152552.7821-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Sipmplify PLANE_STRIDE masking
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no need to have separate masks for the stride bitfield
in PLANE_STRIDE for different platforms. All the extra bits
are hardcoded to zero anyway.

Also the masks we're using now don't even match the actual hardware
since the bitfield was only 10 bits on skl/derivatives, only getting
bumped to 11 bits on glk.

So let's just use a 12 bit mask for everything.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 5 +----
 drivers/gpu/drm/i915/i915_reg.h                    | 3 +--
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 09948922016b..984bb35ecf06 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2347,10 +2347,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
 	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
 	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
 
-	if (DISPLAY_VER(dev_priv) >= 13)
-		fb->pitches[0] = (val & PLANE_STRIDE_MASK_XELPD) * stride_mult;
-	else
-		fb->pitches[0] = (val & PLANE_STRIDE_MASK) * stride_mult;
+	fb->pitches[0] = (val & PLANE_STRIDE_MASK) * stride_mult;
 
 	aligned_height = intel_fb_align_height(fb, 0, fb->height);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 02d8db03c0bf..6066b1e2763c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7440,8 +7440,7 @@ enum {
 	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
 #define PLANE_STRIDE(pipe, plane)	\
 	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
-#define PLANE_STRIDE_MASK		REG_GENMASK(10, 0)
-#define PLANE_STRIDE_MASK_XELPD		REG_GENMASK(11, 0)
+#define PLANE_STRIDE_MASK		REG_GENMASK(11, 0)
 
 #define _PLANE_POS_1_B				0x7118c
 #define _PLANE_POS_2_B				0x7128c
-- 
2.32.0

