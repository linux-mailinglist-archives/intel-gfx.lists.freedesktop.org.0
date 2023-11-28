Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA407FBE45
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 16:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3653410E570;
	Tue, 28 Nov 2023 15:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5314010E570
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 15:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701185990; x=1732721990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d1iX2ocmbyZ6txd5N5Fu2RZmcYVAlsdEB11wB8GaLEc=;
 b=COgk1P1NWLPSeQzJz56+i2pOnt3fPEp+Zm22chthz6PiHl9eQTKgf6/y
 Vy0rYcNfT0MgCcYXZOQMrwoVoA1mhQGOJNxi7ptj2iIT71Z12T47waiGk
 5dYH6b3a8K2JZJxkfMSEbnQ4A2d8Xu7c5jzM+be5yC4AR5LFqft5yr9Ef
 jp9KdiEtbMc6qzsrpj1/Y9c7nF1t6ymH3b/lJvXw2noOYmjcO/uK+JqVv
 0oPgB+pyPtWvyz9S/39sP3acHQjehD9+pti/z0q1c+UVUvY+mtChqNf8z
 d/3Ifpy+z6eeezpevC/IxtRxz5Jm5bi+D7X5IqzmgvDgaeQcSZLDhU6Qf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="457273216"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="457273216"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 07:39:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="744945692"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="744945692"
Received: from aspinu-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.59.67])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 07:39:47 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 17:39:18 +0200
Message-Id: <20231128153920.1553148-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231128153920.1553148-1-jouni.hogander@intel.com>
References: <20231128153920.1553148-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 2/4] drm/i915/display: Convert
 intel_fb_modifier_to_tiling as non-static
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

We are about to split i915 specific code from intel_fb.c. Convert
intel_fb_modifier_to_tiling as non-static to allow calling it from split
code.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 40 ++++++++++++-------------
 drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
 2 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 4af5b7181fdf..6c89cb2f2002 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -301,6 +301,26 @@ lookup_format_info(const struct drm_format_info formats[],
 	return NULL;
 }
 
+unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
+{
+	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
+			 INTEL_PLANE_CAP_TILING_MASK;
+
+	switch (tiling_caps) {
+	case INTEL_PLANE_CAP_TILING_Y:
+		return I915_TILING_Y;
+	case INTEL_PLANE_CAP_TILING_X:
+		return I915_TILING_X;
+	case INTEL_PLANE_CAP_TILING_4:
+	case INTEL_PLANE_CAP_TILING_Yf:
+	case INTEL_PLANE_CAP_TILING_NONE:
+		return I915_TILING_NONE;
+	default:
+		MISSING_CASE(tiling_caps);
+		return I915_TILING_NONE;
+	}
+}
+
 /**
  * intel_fb_get_format_info: Get a modifier specific format information
  * @cmd: FB add command structure
@@ -737,26 +757,6 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 	return ALIGN(height, tile_height);
 }
 
-static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
-{
-	u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
-			 INTEL_PLANE_CAP_TILING_MASK;
-
-	switch (tiling_caps) {
-	case INTEL_PLANE_CAP_TILING_Y:
-		return I915_TILING_Y;
-	case INTEL_PLANE_CAP_TILING_X:
-		return I915_TILING_X;
-	case INTEL_PLANE_CAP_TILING_4:
-	case INTEL_PLANE_CAP_TILING_Yf:
-	case INTEL_PLANE_CAP_TILING_NONE:
-		return I915_TILING_NONE;
-	default:
-		MISSING_CASE(tiling_caps);
-		return I915_TILING_NONE;
-	}
-}
-
 bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
 {
 	return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index e85167d6bc34..23db6628f53e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -95,4 +95,6 @@ intel_user_framebuffer_create(struct drm_device *dev,
 bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier);
 bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
 
+unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
+
 #endif /* __INTEL_FB_H__ */
-- 
2.34.1

