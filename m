Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6D98A302
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 14:41:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE6810E445;
	Mon, 30 Sep 2024 12:41:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K3wGofYL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4563110E440;
 Mon, 30 Sep 2024 12:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727700078; x=1759236078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TnHv2+F7Ri9zpRP/WjklUNBa/WxG57Ll8I/Y+qCRluE=;
 b=K3wGofYLX5Bi6PzLM1kl4NnN4M0Y8w/SOPW1DCDjeQU63T2y0AZXWvVF
 hAT9MkttBIkOh2UbdHuXDRHvkdLdXZcQGsbAB7ZDQK387YOvKQ0orKR/O
 qK6hAx9eU4Tngwu/LPtwIXXI/abFIzshpbYjdKLZH4NiEfxzjxiPkrUnp
 rlqqIzp1b+J6xzKmpBQWN1MlEqco2id7nxhrz2Ttga1xrIGNRXrYSWrjA
 YF8CVFRSDcWDFJh+S8sN/Jv+oh+rvrqR8CD+zbF5FLnHKSqeK+iFcyDt9
 JHeKnXWjQ+RTfodEu15H0RxQM2raKhoeJ6/ZFyOg12LeozxgTNbkguErr g==;
X-CSE-ConnectionGUID: QWAX+VE3TIeqNsV3+/xrUw==
X-CSE-MsgGUID: Ghs0v/4SRJC8TPjT3tNVOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26292921"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26292921"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:41:18 -0700
X-CSE-ConnectionGUID: eyJ7qEYaT2KX0NxtKYJCzA==
X-CSE-MsgGUID: 40h5ie3ESv2Yj9ynLYqSJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73568063"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:41:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [CI 2/2] drm/i915/soc: stop using IS_GEN9_LP() and IS_GEN9_BC()
Date: Mon, 30 Sep 2024 15:40:56 +0300
Message-Id: <20240930124056.3541988-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20240930124056.3541988-1-jani.nikula@intel.com>
References: <20240930124056.3541988-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Replace IS_GEN9_LP() and IS_GEN9_BC() with direct platform checks. This
lets us remove their compat counterparts, as neither soc/ nor /display
now no longer needs them.

v2: Use !A && !B instead of !(A || B) (Ville)

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c             | 4 ++--
 drivers/gpu/drm/i915/soc/intel_pch.c              | 5 ++++-
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 3 ---
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 4aba47bccc63..9e310f4099f4 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -714,7 +714,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 	 * Assume level 0 watermark latency adjustment is needed until proven
 	 * otherwise, this w/a is not needed by bxt/glk.
 	 */
-	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
+	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
 
 	if (DISPLAY_VER(i915) >= 14)
 		ret = xelpdp_get_dram_info(i915);
@@ -722,7 +722,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
 		ret = gen12_get_dram_info(i915);
 	else if (GRAPHICS_VER(i915) >= 11)
 		ret = gen11_get_dram_info(i915);
-	else if (IS_GEN9_LP(i915))
+	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
 		ret = bxt_get_dram_info(i915);
 	else
 		ret = skl_get_dram_info(i915);
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 542eea50093c..842db43e46c0 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -124,7 +124,10 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
 			    !IS_ROCKETLAKE(dev_priv) &&
-			    !IS_GEN9_BC(dev_priv));
+			    !IS_SKYLAKE(dev_priv) &&
+			    !IS_KABYLAKE(dev_priv) &&
+			    !IS_COFFEELAKE(dev_priv) &&
+			    !IS_COMETLAKE(dev_priv));
 		return PCH_TGP;
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index 900003d855a6..b7041b578e5e 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -76,9 +76,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define IS_GEN9_LP(xe) ((xe) && 0)
-#define IS_GEN9_BC(xe) ((xe) && 0)
-
 #define IS_TIGERLAKE_UY(xe) (xe && 0)
 #define IS_COMETLAKE_ULX(xe) (xe && 0)
 #define IS_COFFEELAKE_ULX(xe) (xe && 0)
-- 
2.39.5

