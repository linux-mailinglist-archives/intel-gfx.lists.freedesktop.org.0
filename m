Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B826EAC06
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 15:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 354DF10EE1D;
	Fri, 21 Apr 2023 13:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BACB10EE1D;
 Fri, 21 Apr 2023 13:47:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682084855; x=1713620855;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v2J0ibDkSjs4yzMF4iMksy7qWJfGjCVkH+t3cPEXs94=;
 b=M/DURYMX3op6EY38x0x5fjJ1hLB4kCemSWxWqwADhyq1gGLrCk7vLKHh
 QjvpoGyaBe/JoL1JXcMbNJosPAp3KTPmRUE/hp6ynt0JM9JJ5/8KAp7wY
 HjmEdgSkl7A5xCoYrDtv6yIq5iKpznQeGsiMFdrxkZTham7cce8fV12xa
 Wgp0FO+92xu+XC/MpNJutody4sIzyrNLUA/LcE0IZuETEU+vYz/+mjECq
 zs5kbWvVYLVYUHEZbwETIPHn2ZsRqa/P9LuzB7h5YyE8ugCZFnCUIQp8W
 bh2fkOHW5VBlAQrd12WC+WHdsaW/D1EgTNee40tir8EmEPqyiPhHcxzQv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432272052"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432272052"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 06:47:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="938483470"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="938483470"
Received: from ppuente-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.214.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 06:47:30 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Intel GFX <intel-gfx@lists.freedesktop.org>,
 DRI Devel <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Apr 2023 15:46:54 +0200
Message-Id: <20230421134654.273182-3-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230421134654.273182-1-andi.shyti@linux.intel.com>
References: <20230421134654.273182-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/i915_drv: Use i915 instead of
 dev_priv insied the file_priv structure
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
Cc: Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the process of renaming all instances of 'dev_priv' to 'i915',
start using 'i915' within the 'drm_i915_file_private' structure.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 458 ++++++++++++++++----------------
 1 file changed, 229 insertions(+), 229 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index c16f8a3cd914f..14c5338c96a6b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -407,11 +407,11 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 	     (engine__) && (engine__)->uabi_class == (class__); \
 	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
 
-#define INTEL_INFO(dev_priv)	(&(dev_priv)->__info)
-#define RUNTIME_INFO(dev_priv)	(&(dev_priv)->__runtime)
-#define DRIVER_CAPS(dev_priv)	(&(dev_priv)->caps)
+#define INTEL_INFO(i915)	(&(i915)->__info)
+#define RUNTIME_INFO(i915)	(&(i915)->__runtime)
+#define DRIVER_CAPS(i915)	(&(i915)->caps)
 
-#define INTEL_DEVID(dev_priv)	(RUNTIME_INFO(dev_priv)->device_id)
+#define INTEL_DEVID(i915)	(RUNTIME_INFO(i915)->device_id)
 
 #define IP_VER(ver, rel)		((ver) << 8 | (rel))
 
@@ -431,7 +431,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define IS_DISPLAY_VER(i915, from, until) \
 	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
 
-#define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
+#define INTEL_REVID(i915)	(to_pci_dev((i915)->drm.dev)->revision)
 
 #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
 #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
@@ -516,135 +516,135 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	return ((mask << (msb - pb)) & (mask << (msb - s))) & BIT(msb);
 }
 
-#define IS_MOBILE(dev_priv)	(INTEL_INFO(dev_priv)->is_mobile)
-#define IS_DGFX(dev_priv)   (INTEL_INFO(dev_priv)->is_dgfx)
-
-#define IS_I830(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I830)
-#define IS_I845G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I845G)
-#define IS_I85X(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I85X)
-#define IS_I865G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I865G)
-#define IS_I915G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915G)
-#define IS_I915GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I915GM)
-#define IS_I945G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I945G)
-#define IS_I945GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I945GM)
-#define IS_I965G(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965G)
-#define IS_I965GM(dev_priv)	IS_PLATFORM(dev_priv, INTEL_I965GM)
-#define IS_G45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G45)
-#define IS_GM45(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GM45)
-#define IS_G4X(dev_priv)	(IS_G45(dev_priv) || IS_GM45(dev_priv))
-#define IS_PINEVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_PINEVIEW)
-#define IS_G33(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G33)
-#define IS_IRONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IRONLAKE)
-#define IS_IRONLAKE_M(dev_priv) \
-	(IS_PLATFORM(dev_priv, INTEL_IRONLAKE) && IS_MOBILE(dev_priv))
-#define IS_SANDYBRIDGE(dev_priv) IS_PLATFORM(dev_priv, INTEL_SANDYBRIDGE)
-#define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
-#define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 1)
-#define IS_VALLEYVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_VALLEYVIEW)
-#define IS_CHERRYVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
-#define IS_HASWELL(dev_priv)	IS_PLATFORM(dev_priv, INTEL_HASWELL)
-#define IS_BROADWELL(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROADWELL)
-#define IS_SKYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_SKYLAKE)
-#define IS_BROXTON(dev_priv)	IS_PLATFORM(dev_priv, INTEL_BROXTON)
-#define IS_KABYLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_KABYLAKE)
-#define IS_GEMINILAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_GEMINILAKE)
-#define IS_COFFEELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COFFEELAKE)
-#define IS_COMETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_COMETLAKE)
-#define IS_ICELAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ICELAKE)
-#define IS_JSL_EHL(dev_priv)	(IS_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
-				IS_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
-#define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
-#define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
-#define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
-#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
-#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
-#define IS_XEHPSDV(dev_priv) IS_PLATFORM(dev_priv, INTEL_XEHPSDV)
-#define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, INTEL_DG2)
-#define IS_PONTEVECCHIO(dev_priv) IS_PLATFORM(dev_priv, INTEL_PONTEVECCHIO)
-#define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, INTEL_METEORLAKE)
-
-#define IS_METEORLAKE_M(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
-#define IS_METEORLAKE_P(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
-#define IS_DG2_G10(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
-#define IS_DG2_G11(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
-#define IS_DG2_G12(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
-#define IS_ADLS_RPLS(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_N(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
-#define IS_ADLP_RPLP(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
-#define IS_ADLP_RPLU(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
-#define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
-				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
-#define IS_BDW_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
-#define IS_BDW_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_BDW_GT3(dev_priv)	(IS_BROADWELL(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 3)
-#define IS_HSW_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
-#define IS_HSW_GT3(dev_priv)	(IS_HASWELL(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 3)
-#define IS_HSW_GT1(dev_priv)	(IS_HASWELL(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 1)
+#define IS_MOBILE(i915)	(INTEL_INFO(i915)->is_mobile)
+#define IS_DGFX(i915)   (INTEL_INFO(i915)->is_dgfx)
+
+#define IS_I830(i915)	IS_PLATFORM(i915, INTEL_I830)
+#define IS_I845G(i915)	IS_PLATFORM(i915, INTEL_I845G)
+#define IS_I85X(i915)	IS_PLATFORM(i915, INTEL_I85X)
+#define IS_I865G(i915)	IS_PLATFORM(i915, INTEL_I865G)
+#define IS_I915G(i915)	IS_PLATFORM(i915, INTEL_I915G)
+#define IS_I915GM(i915)	IS_PLATFORM(i915, INTEL_I915GM)
+#define IS_I945G(i915)	IS_PLATFORM(i915, INTEL_I945G)
+#define IS_I945GM(i915)	IS_PLATFORM(i915, INTEL_I945GM)
+#define IS_I965G(i915)	IS_PLATFORM(i915, INTEL_I965G)
+#define IS_I965GM(i915)	IS_PLATFORM(i915, INTEL_I965GM)
+#define IS_G45(i915)	IS_PLATFORM(i915, INTEL_G45)
+#define IS_GM45(i915)	IS_PLATFORM(i915, INTEL_GM45)
+#define IS_G4X(i915)	(IS_G45(i915) || IS_GM45(i915))
+#define IS_PINEVIEW(i915)	IS_PLATFORM(i915, INTEL_PINEVIEW)
+#define IS_G33(i915)	IS_PLATFORM(i915, INTEL_G33)
+#define IS_IRONLAKE(i915)	IS_PLATFORM(i915, INTEL_IRONLAKE)
+#define IS_IRONLAKE_M(i915) \
+	(IS_PLATFORM(i915, INTEL_IRONLAKE) && IS_MOBILE(i915))
+#define IS_SANDYBRIDGE(i915) IS_PLATFORM(i915, INTEL_SANDYBRIDGE)
+#define IS_IVYBRIDGE(i915)	IS_PLATFORM(i915, INTEL_IVYBRIDGE)
+#define IS_IVB_GT1(i915)	(IS_IVYBRIDGE(i915) && \
+				 INTEL_INFO(i915)->gt == 1)
+#define IS_VALLEYVIEW(i915)	IS_PLATFORM(i915, INTEL_VALLEYVIEW)
+#define IS_CHERRYVIEW(i915)	IS_PLATFORM(i915, INTEL_CHERRYVIEW)
+#define IS_HASWELL(i915)	IS_PLATFORM(i915, INTEL_HASWELL)
+#define IS_BROADWELL(i915)	IS_PLATFORM(i915, INTEL_BROADWELL)
+#define IS_SKYLAKE(i915)	IS_PLATFORM(i915, INTEL_SKYLAKE)
+#define IS_BROXTON(i915)	IS_PLATFORM(i915, INTEL_BROXTON)
+#define IS_KABYLAKE(i915)	IS_PLATFORM(i915, INTEL_KABYLAKE)
+#define IS_GEMINILAKE(i915)	IS_PLATFORM(i915, INTEL_GEMINILAKE)
+#define IS_COFFEELAKE(i915)	IS_PLATFORM(i915, INTEL_COFFEELAKE)
+#define IS_COMETLAKE(i915)	IS_PLATFORM(i915, INTEL_COMETLAKE)
+#define IS_ICELAKE(i915)	IS_PLATFORM(i915, INTEL_ICELAKE)
+#define IS_JSL_EHL(i915)	(IS_PLATFORM(i915, INTEL_JASPERLAKE) || \
+				IS_PLATFORM(i915, INTEL_ELKHARTLAKE))
+#define IS_TIGERLAKE(i915)	IS_PLATFORM(i915, INTEL_TIGERLAKE)
+#define IS_ROCKETLAKE(i915)	IS_PLATFORM(i915, INTEL_ROCKETLAKE)
+#define IS_DG1(i915)        IS_PLATFORM(i915, INTEL_DG1)
+#define IS_ALDERLAKE_S(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_S)
+#define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
+#define IS_XEHPSDV(i915) IS_PLATFORM(i915, INTEL_XEHPSDV)
+#define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
+#define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
+#define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
+
+#define IS_METEORLAKE_M(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
+#define IS_METEORLAKE_P(i915) \
+	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_P)
+#define IS_DG2_G10(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
+#define IS_DG2_G11(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
+#define IS_DG2_G12(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+#define IS_ADLS_RPLS(i915) \
+	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
+#define IS_ADLP_N(i915) \
+	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
+#define IS_ADLP_RPLP(i915) \
+	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
+#define IS_ADLP_RPLU(i915) \
+	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
+#define IS_HSW_EARLY_SDV(i915) (IS_HASWELL(i915) && \
+				    (INTEL_DEVID(i915) & 0xFF00) == 0x0C00)
+#define IS_BDW_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
+#define IS_BDW_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
+#define IS_BDW_GT3(i915)	(IS_BROADWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)
+#define IS_HSW_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
+#define IS_HSW_GT3(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 3)
+#define IS_HSW_GT1(i915)	(IS_HASWELL(i915) && \
+				 INTEL_INFO(i915)->gt == 1)
 /* ULX machines are also considered ULT. */
-#define IS_HSW_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_SKL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_KBL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_KBL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_SKL_GT2(dev_priv)	(IS_SKYLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 2)
-#define IS_SKL_GT3(dev_priv)	(IS_SKYLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 3)
-#define IS_SKL_GT4(dev_priv)	(IS_SKYLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 4)
-#define IS_KBL_GT2(dev_priv)	(IS_KABYLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 2)
-#define IS_KBL_GT3(dev_priv)	(IS_KABYLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 3)
-#define IS_CFL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_CFL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_CFL_GT2(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 2)
-#define IS_CFL_GT3(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 3)
-
-#define IS_CML_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
-#define IS_CML_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
-#define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
-				 INTEL_INFO(dev_priv)->gt == 2)
-
-#define IS_ICL_WITH_PORT_F(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
-
-#define IS_TGL_UY(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
+#define IS_HSW_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
+#define IS_SKL_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
+#define IS_SKL_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
+#define IS_KBL_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
+#define IS_KBL_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
+#define IS_SKL_GT2(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)
+#define IS_SKL_GT3(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)
+#define IS_SKL_GT4(i915)	(IS_SKYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 4)
+#define IS_KBL_GT2(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)
+#define IS_KBL_GT3(i915)	(IS_KABYLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)
+#define IS_CFL_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
+#define IS_CFL_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX)
+#define IS_CFL_GT2(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)
+#define IS_CFL_GT3(i915)	(IS_COFFEELAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 3)
+
+#define IS_CML_ULT(i915) \
+	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
+#define IS_CML_ULX(i915) \
+	IS_SUBPLATFORM(i915, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
+#define IS_CML_GT2(i915)	(IS_COMETLAKE(i915) && \
+				 INTEL_INFO(i915)->gt == 2)
+
+#define IS_ICL_WITH_PORT_F(i915) \
+	IS_SUBPLATFORM(i915, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
+
+#define IS_TGL_UY(i915) \
+	IS_SUBPLATFORM(i915, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_UY)
 
 #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
-#define IS_KBL_GRAPHICS_STEP(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && IS_GRAPHICS_STEP(dev_priv, since, until))
-#define IS_KBL_DISPLAY_STEP(dev_priv, since, until) \
-	(IS_KABYLAKE(dev_priv) && IS_DISPLAY_STEP(dev_priv, since, until))
+#define IS_KBL_GRAPHICS_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_GRAPHICS_STEP(i915, since, until))
+#define IS_KBL_DISPLAY_STEP(i915, since, until) \
+	(IS_KABYLAKE(i915) && IS_DISPLAY_STEP(i915, since, until))
 
 #define IS_JSL_EHL_GRAPHICS_STEP(p, since, until) \
 	(IS_JSL_EHL(p) && IS_GRAPHICS_STEP(p, since, until))
@@ -720,9 +720,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_PONTEVECCHIO(__i915) && \
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
-#define IS_LP(dev_priv)		(INTEL_INFO(dev_priv)->is_lp)
-#define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))
-#define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))
+#define IS_LP(i915)		(INTEL_INFO(i915)->is_lp)
+#define IS_GEN9_LP(i915)	(GRAPHICS_VER(i915) == 9 && IS_LP(i915))
+#define IS_GEN9_BC(i915)	(GRAPHICS_VER(i915) == 9 && !IS_LP(i915))
 
 #define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
 #define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
@@ -747,180 +747,180 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define CCS_MASK(gt) \
 	ENGINE_INSTANCES_MASK(gt, CCS0, I915_MAX_CCS)
 
-#define HAS_MEDIA_RATIO_MODE(dev_priv) (INTEL_INFO(dev_priv)->has_media_ratio_mode)
+#define HAS_MEDIA_RATIO_MODE(i915) (INTEL_INFO(i915)->has_media_ratio_mode)
 
 /*
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
  */
-#define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
+#define CMDPARSER_USES_GGTT(i915) (GRAPHICS_VER(i915) == 7)
 
-#define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
-#define HAS_4TILE(dev_priv)	(INTEL_INFO(dev_priv)->has_4tile)
-#define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
-#define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
-#define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
-#define HAS_WT(dev_priv)	HAS_EDRAM(dev_priv)
+#define HAS_LLC(i915)	(INTEL_INFO(i915)->has_llc)
+#define HAS_4TILE(i915)	(INTEL_INFO(i915)->has_4tile)
+#define HAS_SNOOP(i915)	(INTEL_INFO(i915)->has_snoop)
+#define HAS_EDRAM(i915)	((i915)->edram_size_mb)
+#define HAS_SECURE_BATCHES(i915) (GRAPHICS_VER(i915) < 6)
+#define HAS_WT(i915)	HAS_EDRAM(i915)
 
-#define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
+#define HWS_NEEDS_PHYSICAL(i915)	(INTEL_INFO(i915)->hws_needs_physical)
 
-#define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_contexts)
-#define HAS_LOGICAL_RING_ELSQ(dev_priv) \
-		(INTEL_INFO(dev_priv)->has_logical_ring_elsq)
+#define HAS_LOGICAL_RING_CONTEXTS(i915) \
+		(INTEL_INFO(i915)->has_logical_ring_contexts)
+#define HAS_LOGICAL_RING_ELSQ(i915) \
+		(INTEL_INFO(i915)->has_logical_ring_elsq)
 
-#define HAS_EXECLISTS(dev_priv) HAS_LOGICAL_RING_CONTEXTS(dev_priv)
+#define HAS_EXECLISTS(i915) HAS_LOGICAL_RING_CONTEXTS(i915)
 
-#define INTEL_PPGTT(dev_priv) (RUNTIME_INFO(dev_priv)->ppgtt_type)
-#define HAS_PPGTT(dev_priv) \
-	(INTEL_PPGTT(dev_priv) != INTEL_PPGTT_NONE)
-#define HAS_FULL_PPGTT(dev_priv) \
-	(INTEL_PPGTT(dev_priv) >= INTEL_PPGTT_FULL)
+#define INTEL_PPGTT(i915) (RUNTIME_INFO(i915)->ppgtt_type)
+#define HAS_PPGTT(i915) \
+	(INTEL_PPGTT(i915) != INTEL_PPGTT_NONE)
+#define HAS_FULL_PPGTT(i915) \
+	(INTEL_PPGTT(i915) >= INTEL_PPGTT_FULL)
 
-#define HAS_PAGE_SIZES(dev_priv, sizes) ({ \
+#define HAS_PAGE_SIZES(i915, sizes) ({ \
 	GEM_BUG_ON((sizes) == 0); \
-	((sizes) & ~RUNTIME_INFO(dev_priv)->page_sizes) == 0; \
+	((sizes) & ~RUNTIME_INFO(i915)->page_sizes) == 0; \
 })
 
-#define HAS_OVERLAY(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_overlay)
-#define OVERLAY_NEEDS_PHYSICAL(dev_priv) \
-		(INTEL_INFO(dev_priv)->display.overlay_needs_physical)
+#define HAS_OVERLAY(i915)		 (INTEL_INFO(i915)->display.has_overlay)
+#define OVERLAY_NEEDS_PHYSICAL(i915) \
+		(INTEL_INFO(i915)->display.overlay_needs_physical)
 
 /* Early gen2 have a totally busted CS tlb and require pinned batches. */
-#define HAS_BROKEN_CS_TLB(dev_priv)	(IS_I830(dev_priv) || IS_I845G(dev_priv))
+#define HAS_BROKEN_CS_TLB(i915)	(IS_I830(i915) || IS_I845G(i915))
 
-#define NEEDS_RC6_CTX_CORRUPTION_WA(dev_priv)	\
-	(IS_BROADWELL(dev_priv) || GRAPHICS_VER(dev_priv) == 9)
+#define NEEDS_RC6_CTX_CORRUPTION_WA(i915)	\
+	(IS_BROADWELL(i915) || GRAPHICS_VER(i915) == 9)
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
-#define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
-	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
+#define NEEDS_WaRsDisableCoarsePowerGating(i915)			\
+	(IS_SKL_GT3(i915) || IS_SKL_GT4(i915))
 
-#define HAS_GMBUS_IRQ(dev_priv) (DISPLAY_VER(dev_priv) >= 4)
-#define HAS_GMBUS_BURST_READ(dev_priv) (DISPLAY_VER(dev_priv) >= 11 || \
-					IS_GEMINILAKE(dev_priv) || \
-					IS_KABYLAKE(dev_priv))
+#define HAS_GMBUS_IRQ(i915) (DISPLAY_VER(i915) >= 4)
+#define HAS_GMBUS_BURST_READ(i915) (DISPLAY_VER(i915) >= 11 || \
+					IS_GEMINILAKE(i915) || \
+					IS_KABYLAKE(i915))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
  */
-#define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
-					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))
-#define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
-#define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
+#define HAS_128_BYTE_Y_TILING(i915) (GRAPHICS_VER(i915) != 2 && \
+					 !(IS_I915G(i915) || IS_I915GM(i915)))
+#define SUPPORTS_TV(i915)		(INTEL_INFO(i915)->display.supports_tv)
+#define I915_HAS_HOTPLUG(i915)	(INTEL_INFO(i915)->display.has_hotplug)
 
-#define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
-#define HAS_FBC(dev_priv)	(RUNTIME_INFO(dev_priv)->fbc_mask != 0)
-#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)
+#define HAS_FW_BLC(i915)	(DISPLAY_VER(i915) > 2)
+#define HAS_FBC(i915)	(RUNTIME_INFO(i915)->fbc_mask != 0)
+#define HAS_CUR_FBC(i915)	(!HAS_GMCH(i915) && DISPLAY_VER(i915) >= 7)
 
-#define HAS_DPT(dev_priv)	(DISPLAY_VER(dev_priv) >= 13)
+#define HAS_DPT(i915)	(DISPLAY_VER(i915) >= 13)
 
-#define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
+#define HAS_IPS(i915)	(IS_HSW_ULT(i915) || IS_BROADWELL(i915))
 
-#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
-#define HAS_DP20(dev_priv)	(IS_DG2(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
+#define HAS_DP_MST(i915)	(INTEL_INFO(i915)->display.has_dp_mst)
+#define HAS_DP20(i915)	(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 
-#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
+#define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 
-#define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
-#define HAS_CDCLK_SQUASH(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_squash)
-#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
-#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
-#define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
-#define HAS_PSR_HW_TRACKING(dev_priv) \
-	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
-#define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
-#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)
+#define HAS_CDCLK_CRAWL(i915)	 (INTEL_INFO(i915)->display.has_cdclk_crawl)
+#define HAS_CDCLK_SQUASH(i915)	 (INTEL_INFO(i915)->display.has_cdclk_squash)
+#define HAS_DDI(i915)		 (INTEL_INFO(i915)->display.has_ddi)
+#define HAS_FPGA_DBG_UNCLAIMED(i915) (INTEL_INFO(i915)->display.has_fpga_dbg)
+#define HAS_PSR(i915)		 (INTEL_INFO(i915)->display.has_psr)
+#define HAS_PSR_HW_TRACKING(i915) \
+	(INTEL_INFO(i915)->display.has_psr_hw_tracking)
+#define HAS_PSR2_SEL_FETCH(i915)	 (DISPLAY_VER(i915) >= 12)
+#define HAS_TRANSCODER(i915, trans)	 ((RUNTIME_INFO(i915)->cpu_transcoder_mask & BIT(trans)) != 0)
 
-#define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
-#define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
-#define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
+#define HAS_RC6(i915)		 (INTEL_INFO(i915)->has_rc6)
+#define HAS_RC6p(i915)		 (INTEL_INFO(i915)->has_rc6p)
+#define HAS_RC6pp(i915)		 (false) /* HW was never validated */
 
-#define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
+#define HAS_RPS(i915)	(INTEL_INFO(i915)->has_rps)
 
-#define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
-#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
+#define HAS_DMC(i915)	(RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DSB(i915)	(INTEL_INFO(i915)->display.has_dsb)
 #define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
 #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
 
-#define HAS_HECI_PXP(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_heci_pxp)
+#define HAS_HECI_PXP(i915) \
+	(INTEL_INFO(i915)->has_heci_pxp)
 
-#define HAS_HECI_GSCFI(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_heci_gscfi)
+#define HAS_HECI_GSCFI(i915) \
+	(INTEL_INFO(i915)->has_heci_gscfi)
 
-#define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))
+#define HAS_HECI_GSC(i915) (HAS_HECI_PXP(i915) || HAS_HECI_GSCFI(i915))
 
 #define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
-#define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
-#define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
+#define HAS_RUNTIME_PM(i915) (INTEL_INFO(i915)->has_runtime_pm)
+#define HAS_64BIT_RELOC(i915) (INTEL_INFO(i915)->has_64bit_reloc)
 
-#define HAS_OA_BPC_REPORTING(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
-#define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
-#define HAS_OAM(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_oam)
+#define HAS_OA_BPC_REPORTING(i915) \
+	(INTEL_INFO(i915)->has_oa_bpc_reporting)
+#define HAS_OA_SLICE_CONTRIB_LIMITS(i915) \
+	(INTEL_INFO(i915)->has_oa_slice_contrib_limits)
+#define HAS_OAM(i915) \
+	(INTEL_INFO(i915)->has_oam)
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
  * device local memory access.
  */
-#define HAS_64K_PAGES(dev_priv) (INTEL_INFO(dev_priv)->has_64k_pages)
+#define HAS_64K_PAGES(i915) (INTEL_INFO(i915)->has_64k_pages)
 
-#define HAS_IPC(dev_priv)		(INTEL_INFO(dev_priv)->display.has_ipc)
-#define HAS_SAGV(dev_priv)		(DISPLAY_VER(dev_priv) >= 9 && !IS_LP(dev_priv))
+#define HAS_IPC(i915)		(INTEL_INFO(i915)->display.has_ipc)
+#define HAS_SAGV(i915)		(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
 
 #define HAS_REGION(i915, i) (RUNTIME_INFO(i915)->memory_regions & (i))
 #define HAS_LMEM(i915) HAS_REGION(i915, REGION_LMEM)
 
-#define HAS_EXTRA_GT_LIST(dev_priv)   (INTEL_INFO(dev_priv)->extra_gt_list)
+#define HAS_EXTRA_GT_LIST(i915)   (INTEL_INFO(i915)->extra_gt_list)
 
 /*
  * Platform has the dedicated compression control state for each lmem surfaces
  * stored in lmem to support the 3D and media compression formats.
  */
-#define HAS_FLAT_CCS(dev_priv)   (INTEL_INFO(dev_priv)->has_flat_ccs)
+#define HAS_FLAT_CCS(i915)   (INTEL_INFO(i915)->has_flat_ccs)
 
-#define HAS_GT_UC(dev_priv)	(INTEL_INFO(dev_priv)->has_gt_uc)
+#define HAS_GT_UC(i915)	(INTEL_INFO(i915)->has_gt_uc)
 
-#define HAS_POOLED_EU(dev_priv)	(RUNTIME_INFO(dev_priv)->has_pooled_eu)
+#define HAS_POOLED_EU(i915)	(RUNTIME_INFO(i915)->has_pooled_eu)
 
-#define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)	(INTEL_INFO(dev_priv)->has_global_mocs)
+#define HAS_GLOBAL_MOCS_REGISTERS(i915)	(INTEL_INFO(i915)->has_global_mocs)
 
-#define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
+#define HAS_GMCH(i915) (INTEL_INFO(i915)->display.has_gmch)
 
 #define HAS_GMD_ID(i915)	(INTEL_INFO(i915)->has_gmd_id)
 
-#define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
+#define HAS_LSPCON(i915) (IS_DISPLAY_VER(i915, 9, 10))
 
 #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
 
 /* DPF == dynamic parity feature */
-#define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
-#define NUM_L3_SLICES(dev_priv) (IS_HSW_GT3(dev_priv) ? \
-				 2 : HAS_L3_DPF(dev_priv))
+#define HAS_L3_DPF(i915) (INTEL_INFO(i915)->has_l3_dpf)
+#define NUM_L3_SLICES(i915) (IS_HSW_GT3(i915) ? \
+				 2 : HAS_L3_DPF(i915))
 
-#define INTEL_NUM_PIPES(dev_priv) (hweight8(RUNTIME_INFO(dev_priv)->pipe_mask))
+#define INTEL_NUM_PIPES(i915) (hweight8(RUNTIME_INFO(i915)->pipe_mask))
 
-#define HAS_DISPLAY(dev_priv) (RUNTIME_INFO(dev_priv)->pipe_mask != 0)
+#define HAS_DISPLAY(i915) (RUNTIME_INFO(i915)->pipe_mask != 0)
 
 #define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
 
 #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
 
 /* Only valid when HAS_DISPLAY() is true */
-#define INTEL_DISPLAY_ENABLED(dev_priv) \
-	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)),		\
-	 !(dev_priv)->params.disable_display &&				\
-	 !intel_opregion_headless_sku(dev_priv))
+#define INTEL_DISPLAY_ENABLED(i915) \
+	(drm_WARN_ON(&(i915)->drm, !HAS_DISPLAY(i915)),		\
+	 !(i915)->params.disable_display &&				\
+	 !intel_opregion_headless_sku(i915))
 
-#define HAS_GUC_DEPRIVILEGE(dev_priv) \
-	(INTEL_INFO(dev_priv)->has_guc_deprivilege)
+#define HAS_GUC_DEPRIVILEGE(i915) \
+	(INTEL_INFO(i915)->has_guc_deprivilege)
 
-#define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
-					      IS_ALDERLAKE_S(dev_priv))
+#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || \
+					      IS_ALDERLAKE_S(i915))
 
 #define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 
-- 
2.40.0

