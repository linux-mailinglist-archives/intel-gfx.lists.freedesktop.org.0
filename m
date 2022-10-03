Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203D25F2F6A
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D3410E313;
	Mon,  3 Oct 2022 11:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7F5610E30A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795767; x=1696331767;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ubRw66dAtOdd0yFJE82as6kBZAhYerfp/jlATGfWt0=;
 b=d5HEE0FPdjhxal5mCg+rlvfc6MrGjLqdknoHYIScIoJ47er3g9Y2a03m
 tvg9eI8dr/8Cn0i+WiPJRttSa/AyBnGotLM5d/iB37gU0OSv+TmhqIdVw
 ojg51PewbamXGyiKtRNBSN3zGeiT7ufHo58Hh3GutppthTVdYfkM27DQF
 x362x9prkpY2BlqrfCiyEu3FyL4Igd3NOPNPSwMyxAWpreKQbb+2yoInE
 7OKgUAkGZqm9nBP38xN8m4mXZMjgBwf2z7AdS1vpUsw/x/KHNuSltrR8i
 NpIhK9RaiqyYEaJJGmMVLdhvzSO1wgtWyL3lpH0iJCsig2faMy9ykLoX1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="366650685"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="366650685"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:16:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618696720"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="618696720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 03 Oct 2022 04:16:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Oct 2022 14:16:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 14:15:44 +0300
Message-Id: <20221003111544.8007-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
References: <20221003111544.8007-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Simplify modifier lookup in
 watermark code
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

Replace the huge modifier lists in the watermark code with
a few calls to intel_fb.c.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c      | 13 ++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c | 22 +++-----------------
 3 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index eefa33c555ac..63137ae5ab21 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -300,6 +300,19 @@ static bool plane_caps_contain_all(u8 caps, u8 mask)
 	return (caps & mask) == mask;
 }
 
+/**
+ * intel_fb_is_tiled_modifier: Check if a modifier is a tiled modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a tiled modifier.
+ */
+bool intel_fb_is_tiled_modifier(u64 modifier)
+{
+	return plane_caps_contain_any(lookup_modifier(modifier)->plane_caps,
+				      INTEL_PLANE_CAP_TILING_MASK);
+}
+
 /**
  * intel_fb_is_ccs_modifier: Check if a modifier is a CCS modifier type
  * @modifier: Modifier to check
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 12386f13a4e0..4662b812b934 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -29,6 +29,7 @@ struct intel_plane_state;
 #define INTEL_PLANE_CAP_TILING_Yf	BIT(5)
 #define INTEL_PLANE_CAP_TILING_4	BIT(6)
 
+bool intel_fb_is_tiled_modifier(u64 modifier);
 bool intel_fb_is_ccs_modifier(u64 modifier);
 bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
 bool intel_fb_is_mc_ccs_modifier(u64 modifier);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index aac0980a0c9d..d58e667016e4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1706,26 +1706,10 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 		return -EINVAL;
 	}
 
-	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
-		      modifier == I915_FORMAT_MOD_4_TILED ||
-		      modifier == I915_FORMAT_MOD_Yf_TILED ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-		      modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
-		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
-		      modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
-		      modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
 	wp->x_tiled = modifier == I915_FORMAT_MOD_X_TILED;
-	wp->rc_surface = modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
-			 modifier == I915_FORMAT_MOD_Yf_TILED_CCS ||
-			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
-			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
-			 modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC ||
-			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS ||
-			 modifier == I915_FORMAT_MOD_4_TILED_DG2_MC_CCS ||
-			 modifier == I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
+	wp->y_tiled = modifier != I915_FORMAT_MOD_X_TILED &&
+		intel_fb_is_tiled_modifier(modifier);
+	wp->rc_surface = intel_fb_is_ccs_modifier(modifier);
 	wp->is_planar = intel_format_info_is_yuv_semiplanar(format, modifier);
 
 	wp->width = width;
-- 
2.35.1

