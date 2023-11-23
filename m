Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EBF7F597A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:41:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F42610E6D7;
	Thu, 23 Nov 2023 07:41:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CC910E6D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700725297; x=1732261297;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NW/eYMYWNH0qUW2/uWyGyp2jL2J2aQwYNfVE9dckNNY=;
 b=DvWXSSgikAliBlWGj7NfGcBSYgvwjBtzKH99umofL+yzob0LljOsQMmK
 PWDvz+feEKmMGi3FOTfdA0Yv69HVbxUWPBeuqDW7yXes7N164cpWVerp2
 cPDeMCd90eeDilRvVZuy5Yd/EFf9xRFmEjq69+NnBXgXBrYkwveRcMoel
 DML0dMzQuKhW9L0vTvzMayEd1a/iBlfRY2LU5aIES5D03XVzBihDbzWEN
 QDu7l5tbRnQVV6SBAmkxj7kEU0udiDb8WUC/l1KAYTW42XYT5z8xDflsp
 5ZSf+XgEjluoJTAwR41PpIfj5/riS37e7EwRWElF+J3bVMZlrGTRz0jfK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="391093283"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="391093283"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="884903108"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="884903108"
Received: from igorhaza-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.214])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:41:18 +0200
Message-Id: <20231123074120.1641630-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231123074120.1641630-1-jouni.hogander@intel.com>
References: <20231123074120.1641630-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 2/4] drm/i915/display: Convert
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

