Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 181107F2BB8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 12:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2487F10E481;
	Tue, 21 Nov 2023 11:27:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0A410E267
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 11:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700566074; x=1732102074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NW/eYMYWNH0qUW2/uWyGyp2jL2J2aQwYNfVE9dckNNY=;
 b=U5zmmSe/nptTtd6DWPqD1Hf4pGsZtg00Q436b1f94Mh/CB7uHW4e5eIj
 37esyGnzsO0xuIdT0SwPTaQ9tSwR1osu54HS+UVs5XH+K3YSnFBqD2Kss
 +RSiBakPyus+FcDV3PAkpHt63aVhFD5uKwX65AjYZh7dUE1m0OayAvQiN
 4tZsNduw+3NdMMOAKfZyxIp7jkFZaoDSsHngvrZISjDGwiUYilYhgXv3M
 0Gt3n1IR28ojAPYgt4Bdsk+JEvgc6iwxjuhACxdwMyAvbV7WZfkYFSOIX
 e8JoX1WMHijdlPETU7raBf4t9Wh7k9hFgO49nfN6x//nWsfi2piBQ8EeE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="390674964"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="390674964"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890223226"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="890223226"
Received: from ttmerile-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.236])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 03:27:52 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Nov 2023 13:27:27 +0200
Message-Id: <20231121112729.4191245-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121112729.4191245-1-jouni.hogander@intel.com>
References: <20231121112729.4191245-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/4] drm/i915/display: Convert
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
index 7c2df6c1f377..a235ec0f192d 100644
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

