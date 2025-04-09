Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3B0A82E78
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE48110E6F9;
	Wed,  9 Apr 2025 18:19:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="an67eXqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0887E10E6F9;
 Wed,  9 Apr 2025 18:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222757; x=1775758757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S5db7J8oeYGJ/ozpWzHaW23pU3za/yBNgejSmUk58d8=;
 b=an67eXqBvxsyE6wzsIw190rCsUR0cEeuy4RdUoR3nS6gwEMTyTf/x+4S
 +WUVcbpi8Sj9pcUujr73oy9q0DRiBuXrR+akIyDxLgzvK52CRZkrBWd6n
 ITW/kHAAcSNOwuij4MqrEEqcN83tyATfukTvs+MBXpMkh741HIdjSMkPR
 GHMrYJSk6BpMzWo9++U6qcZDlX24csrC0Jz04wizyyCPkcgyeTir1NgEm
 UXYnxuo21cdGzxWsrX9+KVKX6cZsxdT/93tNMwZ32ff811aypmzg6Kdnc
 atsYR3o+3oRPb6l7785LvsVxVn4a9nzM0xlJPQN4196LL162RN1WSCoUN g==;
X-CSE-ConnectionGUID: bA1iQbR/QRqZYaWxkQtq1A==
X-CSE-MsgGUID: ZNAtQI9rR+OrwIObVsC3xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="44857116"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="44857116"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:16 -0700
X-CSE-ConnectionGUID: MpccCeZ7RJuoTb1Xc2M/0w==
X-CSE-MsgGUID: oQ7IsRt5RU6xLINAfjB69A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="151841107"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 14/14] drm/xe/compat: clean up unused platform check macros
Date: Wed,  9 Apr 2025 21:17:55 +0300
Message-Id: <2f09b3c60223d9426049a28d3d06a3ec2c6ec348.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Clean up unused platform check macros from compat i915_drv.h. Display no
longer uses any of the IS_*() platform checks. The remaining users are
part of the soc/ code. Note that in a comment.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 36 +------------------
 1 file changed, 1 insertion(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index f89bd5e3520d..dd36f9b06b89 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -21,28 +21,12 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 	return container_of(dev, struct drm_i915_private, drm);
 }
 
+/* compat platform checks only for soc/ usage */
 #define IS_PLATFORM(xe, x) ((xe)->info.platform == x)
-#define INTEL_INFO(dev_priv)	(&((dev_priv)->info))
-#define IS_I830(dev_priv)	(dev_priv && 0)
-#define IS_I845G(dev_priv)	(dev_priv && 0)
-#define IS_I85X(dev_priv)	(dev_priv && 0)
-#define IS_I865G(dev_priv)	(dev_priv && 0)
 #define IS_I915G(dev_priv)	(dev_priv && 0)
 #define IS_I915GM(dev_priv)	(dev_priv && 0)
-#define IS_I945G(dev_priv)	(dev_priv && 0)
-#define IS_I945GM(dev_priv)	(dev_priv && 0)
-#define IS_I965G(dev_priv)	(dev_priv && 0)
-#define IS_I965GM(dev_priv)	(dev_priv && 0)
-#define IS_G45(dev_priv)	(dev_priv && 0)
-#define IS_GM45(dev_priv)	(dev_priv && 0)
-#define IS_G4X(dev_priv)	(dev_priv && 0)
 #define IS_PINEVIEW(dev_priv)	(dev_priv && 0)
-#define IS_G33(dev_priv)	(dev_priv && 0)
-#define IS_IRONLAKE(dev_priv)	(dev_priv && 0)
-#define IS_IRONLAKE_M(dev_priv) (dev_priv && 0)
-#define IS_SANDYBRIDGE(dev_priv)	(dev_priv && 0)
 #define IS_IVYBRIDGE(dev_priv)	(dev_priv && 0)
-#define IS_IVB_GT1(dev_priv)	(dev_priv && 0)
 #define IS_VALLEYVIEW(dev_priv)	(dev_priv && 0)
 #define IS_CHERRYVIEW(dev_priv)	(dev_priv && 0)
 #define IS_HASWELL(dev_priv)	(dev_priv && 0)
@@ -70,28 +54,10 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
 
 #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
 #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
-#define IS_BROADWELL_ULX(dev_priv) (dev_priv && 0)
 
 #define IS_MOBILE(xe) (xe && 0)
 
-#define IS_TIGERLAKE_UY(xe) (xe && 0)
-#define IS_COMETLAKE_ULX(xe) (xe && 0)
-#define IS_COFFEELAKE_ULX(xe) (xe && 0)
-#define IS_KABYLAKE_ULX(xe) (xe && 0)
-#define IS_SKYLAKE_ULX(xe) (xe && 0)
-#define IS_HASWELL_ULX(xe) (xe && 0)
-#define IS_COMETLAKE_ULT(xe) (xe && 0)
-#define IS_COFFEELAKE_ULT(xe) (xe && 0)
-#define IS_KABYLAKE_ULT(xe) (xe && 0)
-#define IS_SKYLAKE_ULT(xe) (xe && 0)
-
-#define IS_DG2_G10(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G10)
-#define IS_DG2_G11(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G11)
-#define IS_DG2_G12(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_DG2_G12)
-#define IS_RAPTORLAKE_U(xe) ((xe)->info.subplatform == XE_SUBPLATFORM_ALDERLAKE_P_RPLU)
-#define IS_ICL_WITH_PORT_F(xe) (xe && 0)
 #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
-
 #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
 
 #ifdef CONFIG_ARM64
-- 
2.39.5

