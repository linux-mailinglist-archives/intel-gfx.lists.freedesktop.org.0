Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 294DC59DA7B
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 12:09:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4517FB2D90;
	Tue, 23 Aug 2022 10:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5AFB2D8F
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 10:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661249327; x=1692785327;
 h=resent-to:resent-from:resent-date:resent-message-id:
 mime-version:from:to:cc:subject:date:message-id:
 in-reply-to:references:content-transfer-encoding;
 bh=6hNdlSmicaFynTBAeddNR1dSXSjg3YnYStiJaLSFLPM=;
 b=REI70KjiZxhJ3arFTIc6fkGi+hl89MOySv4ohRIS8wEM5MPB1O0zI6Uj
 oIrQJNUmmW3vvodf/83f8jpWDU0wmxN5sIlu6Ap372RY7T0mSVKv5pSQH
 qWx9oIaYoKxgbEyFYfuWMaqEqox9cFtpC5AiL/Lrx8jEo3zzDyS58KXW4
 gVGQ234p2JjkPTjvEw9mf9yWP3TLSaeAWMErmDV+BQF24BFNycjjGPvt0
 DwG3mLU5RR3qA69SuTEMYDKOt0gyO95pRJQNMQxvBOIfzgfsUa6+g8snx
 qUL0QjzNd/6UFV5eoRua+y+qf2oRpM06KCeZ9fQe6x6zUC0Z84tIQ4Qz2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="319689956"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="319689956"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:08:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="638592890"
Received: from obeltran-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 03:08:45 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 23 Aug 2022 13:08:42 +0300
Resent-Message-ID: <87zgfvl1at.fsf@intel.com>
MIME-Version: 1.0
Received: from outlook.iglb.intel.com [10.22.254.45]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Fri, 19 Aug 2022 15:04:57 +0300 (EEST)
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Mailbox Transport; Fri, 19 Aug 2022 05:03:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 05:03:38 -0700
Received: from FMSMGA003.fm.intel.com (10.253.24.29) by
 orsmsx608.amr.corp.intel.com (10.22.229.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 05:03:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="697545746"
Received: from jastrom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.176])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 05:03:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 19 Aug 2022 15:02:44 +0300
Message-ID: <bff2ea209031063cec38085518508394b064df4a.1660910433.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660910433.git.jani.nikula@intel.com>
References: <cover.1660910433.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
X-MS-Exchange-Organization-Network-Message-Id: 5346a58d-b1fe-46db-3f87-08da81dada05
X-MS-Exchange-Organization-AuthSource: ORSMSX608.amr.corp.intel.com
X-MS-Exchange-Organization-AuthAs: Internal
X-MS-Exchange-Organization-AuthMechanism: 10
Content-Type: text/plain
X-MS-Exchange-Organization-AVStamp-Enterprise: 1.0
X-MS-Exchange-Organization-SCL: -1
X-MS-Exchange-Transport-EndToEndLatency: 00:00:00.7114340
X-MS-Exchange-Processed-By-BccFoldering: 15.01.2375.031
Subject: [Intel-gfx] [PATCH v3 11/14] drm/i915: move pipe_mask and
 cpu_transcoder_mask to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h |  4 +-
 drivers/gpu/drm/i915/i915_drv.h              |  6 +-
 drivers/gpu/drm/i915/i915_pci.c              | 66 ++++++++++----------
 drivers/gpu/drm/i915/intel_device_info.c     | 24 +++----
 drivers/gpu/drm/i915/intel_device_info.h     |  5 +-
 5 files changed, 53 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index fa5371036239..e895277c4cd9 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -375,7 +375,7 @@ enum hpd_pin {
 
 #define for_each_pipe(__dev_priv, __p) \
 	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
-		for_each_if(INTEL_INFO(__dev_priv)->display.pipe_mask & BIT(__p))
+		for_each_if(RUNTIME_INFO(__dev_priv)->pipe_mask & BIT(__p))
 
 #define for_each_pipe_masked(__dev_priv, __p, __mask) \
 	for_each_pipe(__dev_priv, __p) \
@@ -383,7 +383,7 @@ enum hpd_pin {
 
 #define for_each_cpu_transcoder(__dev_priv, __t) \
 	for ((__t) = 0; (__t) < I915_MAX_TRANSCODERS; (__t)++)	\
-		for_each_if (INTEL_INFO(__dev_priv)->display.cpu_transcoder_mask & BIT(__t))
+		for_each_if (RUNTIME_INFO(__dev_priv)->cpu_transcoder_mask & BIT(__t))
 
 #define for_each_cpu_transcoder_masked(__dev_priv, __t, __mask) \
 	for_each_cpu_transcoder(__dev_priv, __t) \
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 16f5e74713cf..3f3e5ed52937 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1264,7 +1264,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
-#define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
+#define HAS_TRANSCODER(dev_priv, trans)	 ((RUNTIME_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
 #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
@@ -1335,9 +1335,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define GT_FREQUENCY_MULTIPLIER 50
 #define GEN9_FREQ_SCALER 3
 
-#define INTEL_NUM_PIPES(dev_priv) (hweight8(INTEL_INFO(dev_priv)->display.pipe_mask))
+#define INTEL_NUM_PIPES(dev_priv) (hweight8(RUNTIME_INFO(dev_priv)->pipe_mask))
 
-#define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask != 0)
+#define HAS_DISPLAY(dev_priv) (RUNTIME_INFO(dev_priv)->pipe_mask != 0)
 
 #define HAS_VRR(i915)	(DISPLAY_VER(i915) >= 11)
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 8c5a155fb4ac..365cbb80975a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -168,8 +168,8 @@
 #define I830_FEATURES \
 	GEN(2), \
 	.is_mobile = 1, \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_overlay = 1, \
 	.display.cursor_needs_physical = 1, \
 	.display.overlay_needs_physical = 1, \
@@ -190,8 +190,8 @@
 
 #define I845_FEATURES \
 	GEN(2), \
-	.display.pipe_mask = BIT(PIPE_A), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A), \
+	.__runtime.pipe_mask = BIT(PIPE_A), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A), \
 	.display.has_overlay = 1, \
 	.display.overlay_needs_physical = 1, \
 	.display.has_gmch = 1, \
@@ -233,8 +233,8 @@ static const struct intel_device_info i865g_info = {
 
 #define GEN3_FEATURES \
 	GEN(3), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
 	.__runtime.platform_engine_mask = BIT(RCS0), \
@@ -324,8 +324,8 @@ static const struct intel_device_info pnv_m_info = {
 
 #define GEN4_FEATURES \
 	GEN(4), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.display.has_gmch = 1, \
 	.gpu_reset_clobbers_display = true, \
@@ -378,8 +378,8 @@ static const struct intel_device_info gm45_info = {
 
 #define GEN5_FEATURES \
 	GEN(5), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
 	.has_3d_pipeline = 1, \
@@ -409,8 +409,8 @@ static const struct intel_device_info ilk_m_info = {
 
 #define GEN6_FEATURES \
 	GEN(6), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -461,8 +461,8 @@ static const struct intel_device_info snb_m_gt2_info = {
 
 #define GEN7_FEATURES  \
 	GEN(7), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C), \
 	.display.has_hotplug = 1, \
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A), \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
@@ -517,8 +517,8 @@ static const struct intel_device_info ivb_q_info = {
 	GEN7_FEATURES,
 	PLATFORM(INTEL_IVYBRIDGE),
 	.gt = 2,
-	.display.pipe_mask = 0, /* legal, last one wins */
-	.display.cpu_transcoder_mask = 0,
+	.__runtime.pipe_mask = 0, /* legal, last one wins */
+	.__runtime.cpu_transcoder_mask = 0,
 	.has_l3_dpf = 1,
 };
 
@@ -526,8 +526,8 @@ static const struct intel_device_info vlv_info = {
 	PLATFORM(INTEL_VALLEYVIEW),
 	GEN(7),
 	.is_lp = 1,
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
 	.has_runtime_pm = 1,
 	.has_rc6 = 1,
 	.has_reset_engine = true,
@@ -551,7 +551,7 @@ static const struct intel_device_info vlv_info = {
 #define G75_FEATURES  \
 	GEN7_FEATURES, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
 	.display.has_ddi = 1, \
 	.display.has_fpga_dbg = 1, \
@@ -621,8 +621,8 @@ static const struct intel_device_info bdw_gt3_info = {
 static const struct intel_device_info chv_info = {
 	PLATFORM(INTEL_CHERRYVIEW),
 	GEN(8),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
 	.display.has_hotplug = 1,
 	.is_lp = 1,
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
@@ -699,8 +699,8 @@ static const struct intel_device_info skl_gt4_info = {
 	.display.dbuf.slice_mask = BIT(DBUF_S1), \
 	.display.has_hotplug = 1, \
 	.__runtime.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
 	.has_3d_pipeline = 1, \
@@ -810,7 +810,7 @@ static const struct intel_device_info cml_gt2_info = {
 	GEN9_FEATURES, \
 	GEN11_DEFAULT_PAGE_SIZES, \
 	.display.abox_mask = BIT(0), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.display.pipe_offsets = { \
@@ -862,8 +862,8 @@ static const struct intel_device_info jsl_info = {
 	GEN11_FEATURES, \
 	GEN(12), \
 	.display.abox_mask = GENMASK(2, 1), \
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D), \
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D) | \
 		BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1), \
 	.display.pipe_offsets = { \
@@ -899,8 +899,8 @@ static const struct intel_device_info rkl_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ROCKETLAKE),
 	.display.abox_mask = BIT(0),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
@@ -921,7 +921,7 @@ static const struct intel_device_info dg1_info = {
 	DGFX_FEATURES,
 	.__runtime.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
 	.__runtime.platform_engine_mask =
 		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) |
@@ -933,7 +933,7 @@ static const struct intel_device_info dg1_info = {
 static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.__runtime.platform_engine_mask =
@@ -963,7 +963,7 @@ static const struct intel_device_info adl_s_info = {
 	.display.has_ipc = 1,							\
 	.display.has_psr = 1,							\
 	.display.ver = 13,							\
-	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
+	.__runtime.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),	\
 	.display.pipe_offsets = {						\
 		[TRANSCODER_A] = PIPE_A_OFFSET,					\
 		[TRANSCODER_B] = PIPE_B_OFFSET,					\
@@ -986,7 +986,7 @@ static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
 	XE_LPD_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_P),
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
 			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
 	.display.has_cdclk_crawl = 1,
@@ -1071,7 +1071,7 @@ static const struct intel_device_info xehpsdv_info = {
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
 	XE_LPD_FEATURES,
-	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
 	.require_force_probe = 1,
 };
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index bb16b0ec4ed2..91ac149ad85a 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -363,35 +363,35 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
 			drm_info(&dev_priv->drm,
 				 "Display fused off, disabling\n");
-			info->display.pipe_mask = 0;
-			info->display.cpu_transcoder_mask = 0;
+			runtime->pipe_mask = 0;
+			runtime->cpu_transcoder_mask = 0;
 			runtime->fbc_mask = 0;
 		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
 			drm_info(&dev_priv->drm, "PipeC fused off\n");
-			info->display.pipe_mask &= ~BIT(PIPE_C);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			runtime->pipe_mask &= ~BIT(PIPE_C);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_A);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
+			runtime->pipe_mask &= ~BIT(PIPE_A);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_A);
 			runtime->fbc_mask &= ~BIT(INTEL_FBC_A);
 		}
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_B);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			runtime->pipe_mask &= ~BIT(PIPE_B);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
-			info->display.pipe_mask &= ~BIT(PIPE_C);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
+			runtime->pipe_mask &= ~BIT(PIPE_C);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
 
 		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
-			info->display.pipe_mask &= ~BIT(PIPE_D);
-			info->display.cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
+			runtime->pipe_mask &= ~BIT(PIPE_D);
+			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
 		}
 
 		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 2084f568f7ea..f419848f52cb 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -233,6 +233,9 @@ struct intel_runtime_info {
 
 	/* display */
 	struct {
+		u8 pipe_mask;
+		u8 cpu_transcoder_mask;
+
 		u8 num_sprites[I915_MAX_PIPES];
 		u8 num_scalers[I915_MAX_PIPES];
 
@@ -257,8 +260,6 @@ struct intel_device_info {
 		u8 ver;
 		u8 rel;
 
-		u8 pipe_mask;
-		u8 cpu_transcoder_mask;
 		u8 abox_mask;
 
 		struct {
-- 
2.34.1

