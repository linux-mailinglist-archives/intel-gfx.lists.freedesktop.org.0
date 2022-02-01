Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C114A5AFC
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 12:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB7F10E538;
	Tue,  1 Feb 2022 11:15:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA1110E5A9
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 11:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643714150; x=1675250150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nfgToiB+xoOtFTr+dR+Jg6itWHpTKxpE1OdI1zrt64o=;
 b=FKuGun9ik1qKYpcx9gVHuUQ1efcGquMeQCEW4BAHazVncGqSZBibKgm5
 HbpaCinTt3NioVUNDy/6UNS8w1CXIInuF63husRGBMyKmMh7qsaio9RZ9
 io0DLwMRg7x0q3nKXm1Y+5YycWvnlIMtHC7akqyxmbt6m68YMy5XoVXNy
 Li+buk/YEBRW0xKAnNRvHJMlJUSOWz7ffTydf6NMn+4uAOvt1Hy2rNxrN
 lUFc1KaaY2mZ3f1NtOud+ZSyANg7IFSarHkhnj0GdIyKinevCy+mwM3D7
 PY6O7UJB9SAiaEXGw6wxWKpQKkZJM6Oj2+pZ+b4KGFpMp+6iabE3F5EnW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="235062450"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="235062450"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="698370299"
Received: from bconlan-mobl1.ger.corp.intel.com (HELO tursulin-mobl2.home)
 ([10.213.212.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 03:15:48 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Feb 2022 11:15:32 +0000
Message-Id: <20220201111533.250242-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
References: <20220201111533.250242-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/2] igp kconfig
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Michael Cheng <michael.cheng@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Kconfig           |   5 +
 drivers/gpu/drm/i915/Kconfig.platforms |   7 ++
 drivers/gpu/drm/i915/i915_drv.h        | 126 +++++++++++++++----------
 drivers/gpu/drm/i915/i915_pci.c        |  44 ++++++++-
 4 files changed, 129 insertions(+), 53 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 2ac220bfd0ed..e8c2549ca433 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -145,6 +145,11 @@ config DRM_I915_PXP
 	  protected session and manage the status of the alive software session,
 	  as well as its life cycle.
 
+menu "Platform support"
+depends on DRM_I915
+source "drivers/gpu/drm/i915/Kconfig.platforms"
+endmenu
+
 menu "drm/i915 Debugging"
 depends on DRM_I915
 depends on EXPERT
diff --git a/drivers/gpu/drm/i915/Kconfig.platforms b/drivers/gpu/drm/i915/Kconfig.platforms
new file mode 100644
index 000000000000..731be430cfad
--- /dev/null
+++ b/drivers/gpu/drm/i915/Kconfig.platforms
@@ -0,0 +1,7 @@
+config DRM_I915_INTEGRATED_GPU_SUPPORT
+	bool "Support integrated GPUs"
+	default y
+	depends on DRM_I915
+	help
+	  Include support for integrated GPUs.
+
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 00e7594b59c9..1d22d72163c1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1118,8 +1118,26 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 #define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics.ver)
 #define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics.ver, \
 					       INTEL_INFO(i915)->graphics.rel)
+
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
+#else
+#define IS_GRAPHICS_VER(i915, from, until) \
+({ \
+	const unsigned int s_ = 12; \
+	const unsigned int e_ = UINT_MAX; \
+	unsigned int res_; \
+ \
+	if ((s_ > (from) ? (s_): (from)) <= ((e_) < (until)? (e_): (until))) \
+		res_ = GRAPHICS_VER(i915) >= (from) && \
+		       GRAPHICS_VER(i915) <= (until); \
+	else \
+		res_ = 0; \
+ \
+	(res_); \
+})
+#endif
 
 #define MEDIA_VER(i915)			(INTEL_INFO(i915)->media.ver)
 #define MEDIA_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->media.arch, \
@@ -1213,49 +1231,53 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	return ((mask << (msb - pb)) & (mask << (msb - s))) & BIT(msb);
 }
 
+#define IS_IGP_PLATFORM(dev_priv, p) \
+	(IS_ENABLED(CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT) && \
+	 IS_PLATFORM(dev_priv, p))
+
 #define IS_MOBILE(dev_priv)	(INTEL_INFO(dev_priv)->is_mobile)
 #define IS_DGFX(dev_priv)   (INTEL_INFO(dev_priv)->is_dgfx)
 
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
+#define IS_I830(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I830)
+#define IS_I845G(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I845G)
+#define IS_I85X(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I85X)
+#define IS_I865G(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I865G)
+#define IS_I915G(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I915G)
+#define IS_I915GM(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I915GM)
+#define IS_I945G(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I945G)
+#define IS_I945GM(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I945GM)
+#define IS_I965G(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I965G)
+#define IS_I965GM(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_I965GM)
+#define IS_G45(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_G45)
+#define IS_GM45(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_GM45)
 #define IS_G4X(dev_priv)	(IS_G45(dev_priv) || IS_GM45(dev_priv))
-#define IS_PINEVIEW(dev_priv)	IS_PLATFORM(dev_priv, INTEL_PINEVIEW)
-#define IS_G33(dev_priv)	IS_PLATFORM(dev_priv, INTEL_G33)
-#define IS_IRONLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IRONLAKE)
+#define IS_PINEVIEW(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_PINEVIEW)
+#define IS_G33(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_G33)
+#define IS_IRONLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_IRONLAKE)
 #define IS_IRONLAKE_M(dev_priv) \
-	(IS_PLATFORM(dev_priv, INTEL_IRONLAKE) && IS_MOBILE(dev_priv))
-#define IS_SANDYBRIDGE(dev_priv) IS_PLATFORM(dev_priv, INTEL_SANDYBRIDGE)
-#define IS_IVYBRIDGE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
+	(IS_IGP_PLATFORM(dev_priv, INTEL_IRONLAKE) && IS_MOBILE(dev_priv))
+#define IS_SANDYBRIDGE(dev_priv) IS_IGP_PLATFORM(dev_priv, INTEL_SANDYBRIDGE)
+#define IS_IVYBRIDGE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_IVYBRIDGE)
 #define IS_IVB_GT1(dev_priv)	(IS_IVYBRIDGE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 1)
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
+#define IS_VALLEYVIEW(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_VALLEYVIEW)
+#define IS_CHERRYVIEW(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_CHERRYVIEW)
+#define IS_HASWELL(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_HASWELL)
+#define IS_BROADWELL(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_BROADWELL)
+#define IS_SKYLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_SKYLAKE)
+#define IS_BROXTON(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_BROXTON)
+#define IS_KABYLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_KABYLAKE)
+#define IS_GEMINILAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_GEMINILAKE)
+#define IS_COFFEELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COFFEELAKE)
+#define IS_COMETLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_COMETLAKE)
+#define IS_ICELAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ICELAKE)
+#define IS_JSL_EHL(dev_priv)	(IS_IGP_PLATFORM(dev_priv, INTEL_JASPERLAKE) || \
+				IS_IGP_PLATFORM(dev_priv, INTEL_ELKHARTLAKE))
+#define IS_TIGERLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_TIGERLAKE)
+#define IS_ROCKETLAKE(dev_priv)	IS_IGP_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
 #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
-#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
-#define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
+#define IS_ALDERLAKE_S(dev_priv) IS_IGP_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
+#define IS_ALDERLAKE_P(dev_priv) IS_IGP_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
 #define IS_XEHPSDV(dev_priv) IS_PLATFORM(dev_priv, INTEL_XEHPSDV)
 #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, INTEL_DG2)
 #define IS_DG2_G10(dev_priv) \
@@ -1263,34 +1285,34 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG2_G11(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_ADLS_RPLS(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S)
+	(IS_ALDERLAKE_S(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL_S))
 #define IS_ADLP_N(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
+	(IS_ALDERLAKE_P(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N))
 #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
 				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
 #define IS_BDW_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT)
+	(IS_BROADWELL(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULT))
 #define IS_BDW_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX)
+	(IS_BROADWELL(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_BROADWELL, INTEL_SUBPLATFORM_ULX))
 #define IS_BDW_GT3(dev_priv)	(IS_BROADWELL(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 3)
 #define IS_HSW_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT)
+	(IS_HASWELL(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULT))
 #define IS_HSW_GT3(dev_priv)	(IS_HASWELL(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 3)
 #define IS_HSW_GT1(dev_priv)	(IS_HASWELL(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 1)
 /* ULX machines are also considered ULT. */
 #define IS_HSW_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX)
+	(IS_HASWELL(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_HASWELL, INTEL_SUBPLATFORM_ULX))
 #define IS_SKL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT)
+	(IS_SKYLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULT))
 #define IS_SKL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX)
+	(IS_SKYLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_SKYLAKE, INTEL_SUBPLATFORM_ULX))
 #define IS_KBL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT)
+	(IS_KABYLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULT))
 #define IS_KBL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX)
+	(IS_KABYLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_KABYLAKE, INTEL_SUBPLATFORM_ULX))
 #define IS_SKL_GT2(dev_priv)	(IS_SKYLAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 2)
 #define IS_SKL_GT3(dev_priv)	(IS_SKYLAKE(dev_priv) && \
@@ -1302,29 +1324,29 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_KBL_GT3(dev_priv)	(IS_KABYLAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 3)
 #define IS_CFL_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT)
+	(IS_COFFEELAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULT))
 #define IS_CFL_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX)
+	(IS_COFFEELAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COFFEELAKE, INTEL_SUBPLATFORM_ULX))
 #define IS_CFL_GT2(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 2)
 #define IS_CFL_GT3(dev_priv)	(IS_COFFEELAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 3)
 
 #define IS_CML_ULT(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT)
+	(IS_COMETLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULT))
 #define IS_CML_ULX(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX)
+	(IS_COMETLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_COMETLAKE, INTEL_SUBPLATFORM_ULX))
 #define IS_CML_GT2(dev_priv)	(IS_COMETLAKE(dev_priv) && \
 				 INTEL_INFO(dev_priv)->gt == 2)
 
 #define IS_ICL_WITH_PORT_F(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF)
+	(IS_ICELAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_ICELAKE, INTEL_SUBPLATFORM_PORTF))
 
 #define IS_TGL_U(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULT)
+	(IS_TIGERLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULT))
 
 #define IS_TGL_Y(dev_priv) \
-	IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX)
+	(IS_TIGERLAKE(dev_priv) && IS_SUBPLATFORM(dev_priv, INTEL_TIGERLAKE, INTEL_SUBPLATFORM_ULX))
 
 #define IS_SKL_GRAPHICS_STEP(p, since, until) (IS_SKYLAKE(p) && IS_GRAPHICS_STEP(p, since, until))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 983546d5f415..2797cc369835 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -201,6 +201,7 @@
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info i830_info = {
 	I830_FEATURES,
 	PLATFORM(INTEL_I830),
@@ -222,6 +223,7 @@ static const struct intel_device_info i865g_info = {
 	PLATFORM(INTEL_I865G),
 	.display.fbc_mask = BIT(INTEL_FBC_A),
 };
+#endif
 
 #define GEN3_FEATURES \
 	GEN(3), \
@@ -239,6 +241,7 @@ static const struct intel_device_info i865g_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info i915g_info = {
 	GEN3_FEATURES,
 	PLATFORM(INTEL_I915G),
@@ -312,6 +315,7 @@ static const struct intel_device_info pnv_m_info = {
 	.display.has_overlay = 1,
 	.dma_mask_size = 36,
 };
+#endif
 
 #define GEN4_FEATURES \
 	GEN(4), \
@@ -330,6 +334,7 @@ static const struct intel_device_info pnv_m_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info i965g_info = {
 	GEN4_FEATURES,
 	PLATFORM(INTEL_I965G),
@@ -365,6 +370,7 @@ static const struct intel_device_info gm45_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(VCS0),
 	.gpu_reset_clobbers_display = false,
 };
+#endif
 
 #define GEN5_FEATURES \
 	GEN(5), \
@@ -383,6 +389,7 @@ static const struct intel_device_info gm45_info = {
 	GEN_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info ilk_d_info = {
 	GEN5_FEATURES,
 	PLATFORM(INTEL_IRONLAKE),
@@ -395,6 +402,7 @@ static const struct intel_device_info ilk_m_info = {
 	.has_rps = true,
 	.display.fbc_mask = BIT(INTEL_FBC_A),
 };
+#endif
 
 #define GEN6_FEATURES \
 	GEN(6), \
@@ -421,6 +429,7 @@ static const struct intel_device_info ilk_m_info = {
 	GEN6_FEATURES, \
 	PLATFORM(INTEL_SANDYBRIDGE)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info snb_d_gt1_info = {
 	SNB_D_PLATFORM,
 	.gt = 1,
@@ -430,6 +439,7 @@ static const struct intel_device_info snb_d_gt2_info = {
 	SNB_D_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define SNB_M_PLATFORM \
 	GEN6_FEATURES, \
@@ -437,6 +447,7 @@ static const struct intel_device_info snb_d_gt2_info = {
 	.is_mobile = 1
 
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info snb_m_gt1_info = {
 	SNB_M_PLATFORM,
 	.gt = 1,
@@ -446,6 +457,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	SNB_M_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define GEN7_FEATURES  \
 	GEN(7), \
@@ -474,6 +486,7 @@ static const struct intel_device_info snb_m_gt2_info = {
 	PLATFORM(INTEL_IVYBRIDGE), \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info ivb_d_gt1_info = {
 	IVB_D_PLATFORM,
 	.gt = 1,
@@ -483,6 +496,7 @@ static const struct intel_device_info ivb_d_gt2_info = {
 	IVB_D_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define IVB_M_PLATFORM \
 	GEN7_FEATURES, \
@@ -490,6 +504,7 @@ static const struct intel_device_info ivb_d_gt2_info = {
 	.is_mobile = 1, \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info ivb_m_gt1_info = {
 	IVB_M_PLATFORM,
 	.gt = 1,
@@ -534,6 +549,7 @@ static const struct intel_device_info vlv_info = {
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
 };
+#endif
 
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
@@ -552,6 +568,7 @@ static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_HASWELL), \
 	.has_l3_dpf = 1
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info hsw_gt1_info = {
 	HSW_PLATFORM,
 	.gt = 1,
@@ -566,6 +583,7 @@ static const struct intel_device_info hsw_gt3_info = {
 	HSW_PLATFORM,
 	.gt = 3,
 };
+#endif
 
 #define GEN8_FEATURES \
 	G75_FEATURES, \
@@ -580,6 +598,7 @@ static const struct intel_device_info hsw_gt3_info = {
 	GEN8_FEATURES, \
 	PLATFORM(INTEL_BROADWELL)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info bdw_gt1_info = {
 	BDW_PLATFORM,
 	.gt = 1,
@@ -632,6 +651,7 @@ static const struct intel_device_info chv_info = {
 	GEN_DEFAULT_PAGE_SIZES,
 	GEN_DEFAULT_REGIONS,
 };
+#endif
 
 #define GEN9_DEFAULT_PAGE_SIZES \
 	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
@@ -654,6 +674,7 @@ static const struct intel_device_info chv_info = {
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_SKYLAKE)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info skl_gt1_info = {
 	SKL_PLATFORM,
 	.gt = 1,
@@ -663,6 +684,7 @@ static const struct intel_device_info skl_gt2_info = {
 	SKL_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define SKL_GT3_PLUS_PLATFORM \
 	SKL_PLATFORM, \
@@ -670,6 +692,7 @@ static const struct intel_device_info skl_gt2_info = {
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1)
 
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info skl_gt3_info = {
 	SKL_GT3_PLUS_PLATFORM,
 	.gt = 3,
@@ -679,6 +702,7 @@ static const struct intel_device_info skl_gt4_info = {
 	SKL_GT3_PLUS_PLATFORM,
 	.gt = 4,
 };
+#endif
 
 #define GEN9_LP_FEATURES \
 	GEN(9), \
@@ -717,6 +741,7 @@ static const struct intel_device_info skl_gt4_info = {
 	GEN9_DEFAULT_PAGE_SIZES, \
 	GEN_DEFAULT_REGIONS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
 	PLATFORM(INTEL_BROXTON),
@@ -730,11 +755,13 @@ static const struct intel_device_info glk_info = {
 	.dbuf.size = 1024 - 4, /* 4 blocks for bypass path allocation */
 	GLK_COLORS,
 };
+#endif
 
 #define KBL_PLATFORM \
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_KABYLAKE)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info kbl_gt1_info = {
 	KBL_PLATFORM,
 	.gt = 1,
@@ -751,11 +778,13 @@ static const struct intel_device_info kbl_gt3_info = {
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
+#endif
 
 #define CFL_PLATFORM \
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_COFFEELAKE)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info cfl_gt1_info = {
 	CFL_PLATFORM,
 	.gt = 1,
@@ -772,11 +801,13 @@ static const struct intel_device_info cfl_gt3_info = {
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS1),
 };
+#endif
 
 #define CML_PLATFORM \
 	GEN9_FEATURES, \
 	PLATFORM(INTEL_COMETLAKE)
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info cml_gt1_info = {
 	CML_PLATFORM,
 	.gt = 1,
@@ -786,6 +817,7 @@ static const struct intel_device_info cml_gt2_info = {
 	CML_PLATFORM,
 	.gt = 2,
 };
+#endif
 
 #define GEN11_DEFAULT_PAGE_SIZES \
 	.page_sizes = I915_GTT_PAGE_SIZE_4K | \
@@ -823,6 +855,7 @@ static const struct intel_device_info cml_gt2_info = {
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info icl_info = {
 	GEN11_FEATURES,
 	PLATFORM(INTEL_ICELAKE),
@@ -843,6 +876,7 @@ static const struct intel_device_info jsl_info = {
 	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
 	.ppgtt_size = 36,
 };
+#endif
 
 #define GEN12_FEATURES \
 	GEN11_FEATURES, \
@@ -873,6 +907,7 @@ static const struct intel_device_info jsl_info = {
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info tgl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_TIGERLAKE),
@@ -893,6 +928,7 @@ static const struct intel_device_info rkl_info = {
 	.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0),
 };
+#endif
 
 #define DGFX_FEATURES \
 	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
@@ -915,6 +951,7 @@ static const struct intel_device_info dg1_info = {
 	.ppgtt_size = 47,
 };
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
@@ -925,6 +962,7 @@ static const struct intel_device_info adl_s_info = {
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
 	.dma_mask_size = 39,
 };
+#endif
 
 #define XE_LPD_CURSOR_OFFSETS \
 	.cursor_offsets = { \
@@ -974,6 +1012,7 @@ static const struct intel_device_info adl_s_info = {
 	},									\
 	XE_LPD_CURSOR_OFFSETS
 
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
@@ -989,6 +1028,7 @@ static const struct intel_device_info adl_p_info = {
 	.ppgtt_size = 48,
 	.dma_mask_size = 39,
 };
+#endif
 
 #undef GEN
 
@@ -1065,6 +1105,7 @@ static const struct intel_device_info dg2_info = {
  * PCI ID matches, otherwise we'll use the wrong info struct above.
  */
 static const struct pci_device_id pciidlist[] = {
+#ifdef CONFIG_DRM_I915_INTEGRATED_GPU_SUPPORT
 	INTEL_I830_IDS(&i830_info),
 	INTEL_I845G_IDS(&i845g_info),
 	INTEL_I85X_IDS(&i85x_info),
@@ -1133,8 +1174,9 @@ static const struct pci_device_id pciidlist[] = {
 	INTEL_ADLS_IDS(&adl_s_info),
 	INTEL_ADLP_IDS(&adl_p_info),
 	INTEL_ADLN_IDS(&adl_p_info),
-	INTEL_DG1_IDS(&dg1_info),
 	INTEL_RPLS_IDS(&adl_s_info),
+#endif
+	INTEL_DG1_IDS(&dg1_info),
 	{0, 0, 0}
 };
 MODULE_DEVICE_TABLE(pci, pciidlist);
-- 
2.32.0

