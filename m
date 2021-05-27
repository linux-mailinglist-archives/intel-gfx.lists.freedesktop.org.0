Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875FA393557
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 20:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 524FC6F496;
	Thu, 27 May 2021 18:17:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB246F494
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 18:17:10 +0000 (UTC)
IronPort-SDR: xH+ep0kICeqiCxonboZlVvxPJkEk3DTXJ+7Btd6EiLPi1XbjSX+9CXgMH7S1FPn21t3vzjCtgU
 QNbvBzWhxNkg==
X-IronPort-AV: E=McAfee;i="6200,9189,9997"; a="202808221"
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="202808221"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 11:17:08 -0700
IronPort-SDR: LlkCc5Sq9ZE+yuxN8xrMlbFC9B1QogrpXbUyXPO9Kbwt6OsJ7QcRfPRXdABaKDX+nCxl4+Cu0/
 HVOz3/DY6eVA==
X-IronPort-AV: E=Sophos;i="5.83,228,1616482800"; d="scan'208";a="415008585"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2021 11:17:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 May 2021 11:16:59 -0700
Message-Id: <20210527181700.1676790-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527181700.1676790-1-lucas.demarchi@intel.com>
References: <20210527181700.1676790-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Add remaining conversions to
 GRAPHICS_VER
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For some reason coccinelle misses a few cases in header files with calls to
INTEL_GEN()/IS_GEN(). Do a manual conversion for those.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 35 ++++++++++++++++-----------------
 drivers/gpu/drm/i915/i915_reg.h | 26 ++++++++++++------------
 2 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0f6d27da69ac..ea8cc2656261 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1563,9 +1563,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(IS_ALDERLAKE_P(__i915) && \
 	 IS_GT_STEP(__i915, since, until))
 
-#define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
-#define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
-#define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
+#define IS_LP(dev_priv)		(INTEL_INFO(dev_priv)->is_lp)
+#define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && IS_LP(dev_priv))
+#define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) == 9 && !IS_LP(dev_priv))
 
 #define __HAS_ENGINE(engine_mask, id) ((engine_mask) & BIT(id))
 #define HAS_ENGINE(gt, id) __HAS_ENGINE((gt)->info.engine_mask, id)
@@ -1585,12 +1585,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
  * The Gen7 cmdparser copies the scanned buffer to the ggtt for execution
  * All later gens can run the final buffer from the ppgtt
  */
-#define CMDPARSER_USES_GGTT(dev_priv) IS_GEN(dev_priv, 7)
+#define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
 
 #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
 #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
 #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
-#define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
+#define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
 #define HAS_WT(dev_priv)	HAS_EDRAM(dev_priv)
 
 #define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
@@ -1623,7 +1623,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_BROKEN_CS_TLB(dev_priv)	(IS_I830(dev_priv) || IS_I845G(dev_priv))
 
 #define NEEDS_RC6_CTX_CORRUPTION_WA(dev_priv)	\
-	(IS_BROADWELL(dev_priv) || IS_GEN(dev_priv, 9))
+	(IS_BROADWELL(dev_priv) || GRAPHICS_VER(dev_priv) == 9)
 
 /* WaRsDisableCoarsePowerGating:skl,cnl */
 #define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
@@ -1631,23 +1631,22 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	 IS_SKL_GT3(dev_priv) ||					\
 	 IS_SKL_GT4(dev_priv))
 
-#define HAS_GMBUS_IRQ(dev_priv) (INTEL_GEN(dev_priv) >= 4)
-#define HAS_GMBUS_BURST_READ(dev_priv) (INTEL_GEN(dev_priv) >= 10 || \
+#define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >= 4)
+#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >= 10 || \
 					IS_GEMINILAKE(dev_priv) || \
 					IS_KABYLAKE(dev_priv))
 
 /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
  * rows, which changed the alignment requirements and fence programming.
  */
-#define HAS_128_BYTE_Y_TILING(dev_priv) (!IS_GEN(dev_priv, 2) && \
-					 !(IS_I915G(dev_priv) || \
-					 IS_I915GM(dev_priv)))
+#define HAS_128_BYTE_Y_TILING(dev_priv) (GRAPHICS_VER(dev_priv) != 2 && \
+					 !(IS_I915G(dev_priv) || IS_I915GM(dev_priv)))
 #define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
 #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
 
-#define HAS_FW_BLC(dev_priv) 	(INTEL_GEN(dev_priv) > 2)
+#define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
 #define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_fbc)
-#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && INTEL_GEN(dev_priv) >= 7)
+#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_priv) >= 7)
 
 #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
 
@@ -1658,7 +1657,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
 #define HAS_PSR_HW_TRACKING(dev_priv) \
 	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
-#define HAS_PSR2_SEL_FETCH(dev_priv)	 (INTEL_GEN(dev_priv) >= 12)
+#define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >= 12)
 #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->cpu_transcoder_mask & BIT(trans)) != 0)
 
 #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
@@ -1669,7 +1668,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
 
-#define HAS_MSO(i915)		(INTEL_GEN(i915) >= 12)
+#define HAS_MSO(i915)		(GRAPHICS_VER(i915) >= 12)
 
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
 #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
@@ -1702,7 +1701,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->pipe_mask != 0)
 
-#define HAS_VRR(i915)	(INTEL_GEN(i915) >= 12)
+#define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 12)
 
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
@@ -1729,7 +1728,7 @@ static inline bool intel_vtd_active(void)
 
 static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *dev_priv)
 {
-	return INTEL_GEN(dev_priv) >= 6 && intel_vtd_active();
+	return GRAPHICS_VER(dev_priv) >= 6 && intel_vtd_active();
 }
 
 static inline bool
@@ -1947,7 +1946,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 
 static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
 {
-	if (INTEL_GEN(i915) >= 10)
+	if (GRAPHICS_VER(i915) >= 10)
 		return CNL_HWS_CSB_WRITE_INDEX;
 	else
 		return I915_HWS_CSB_WRITE_INDEX;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 42f7909fc842..ba891c1ab6c7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9902,7 +9902,7 @@ enum skl_power_gate {
 #define TRANS_HDCP_CONF(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_CONF, \
 						    _TRANSB_HDCP_CONF)
 #define HDCP_CONF(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_CONF(trans) : \
 					 PORT_HDCP_CONF(port))
 
@@ -9915,7 +9915,7 @@ enum skl_power_gate {
 						    _TRANSA_HDCP_ANINIT, \
 						    _TRANSB_HDCP_ANINIT)
 #define HDCP_ANINIT(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_ANINIT(trans) : \
 					 PORT_HDCP_ANINIT(port))
 
@@ -9925,7 +9925,7 @@ enum skl_power_gate {
 #define TRANS_HDCP_ANLO(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANLO, \
 						    _TRANSB_HDCP_ANLO)
 #define HDCP_ANLO(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_ANLO(trans) : \
 					 PORT_HDCP_ANLO(port))
 
@@ -9935,7 +9935,7 @@ enum skl_power_gate {
 #define TRANS_HDCP_ANHI(trans)		_MMIO_TRANS(trans, _TRANSA_HDCP_ANHI, \
 						    _TRANSB_HDCP_ANHI)
 #define HDCP_ANHI(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_ANHI(trans) : \
 					 PORT_HDCP_ANHI(port))
 
@@ -9946,7 +9946,7 @@ enum skl_power_gate {
 						    _TRANSA_HDCP_BKSVLO, \
 						    _TRANSB_HDCP_BKSVLO)
 #define HDCP_BKSVLO(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_BKSVLO(trans) : \
 					 PORT_HDCP_BKSVLO(port))
 
@@ -9957,7 +9957,7 @@ enum skl_power_gate {
 						    _TRANSA_HDCP_BKSVHI, \
 						    _TRANSB_HDCP_BKSVHI)
 #define HDCP_BKSVHI(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_BKSVHI(trans) : \
 					 PORT_HDCP_BKSVHI(port))
 
@@ -9968,7 +9968,7 @@ enum skl_power_gate {
 						    _TRANSA_HDCP_RPRIME, \
 						    _TRANSB_HDCP_RPRIME)
 #define HDCP_RPRIME(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_RPRIME(trans) : \
 					 PORT_HDCP_RPRIME(port))
 
@@ -9979,7 +9979,7 @@ enum skl_power_gate {
 						    _TRANSA_HDCP_STATUS, \
 						    _TRANSB_HDCP_STATUS)
 #define HDCP_STATUS(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP_STATUS(trans) : \
 					 PORT_HDCP_STATUS(port))
 
@@ -10020,7 +10020,7 @@ enum skl_power_gate {
 #define   AUTH_FORCE_CLR_INPUTCTR	BIT(19)
 #define   AUTH_CLR_KEYS			BIT(18)
 #define HDCP2_AUTH(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH(trans) : \
 					 PORT_HDCP2_AUTH(port))
 
@@ -10031,7 +10031,7 @@ enum skl_power_gate {
 						    _TRANSB_HDCP2_CTL)
 #define   CTL_LINK_ENCRYPTION_REQ	BIT(31)
 #define HDCP2_CTL(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_CTL(trans) : \
 					 PORT_HDCP2_CTL(port))
 
@@ -10045,7 +10045,7 @@ enum skl_power_gate {
 #define   LINK_AUTH_STATUS		BIT(21)
 #define   LINK_ENCRYPTION_STATUS	BIT(20)
 #define HDCP2_STATUS(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STATUS(trans) : \
 					 PORT_HDCP2_STATUS(port))
 
@@ -10067,7 +10067,7 @@ enum skl_power_gate {
 #define   STREAM_ENCRYPTION_STATUS	BIT(31)
 #define   STREAM_TYPE_STATUS		BIT(30)
 #define HDCP2_STREAM_STATUS(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_STREAM_STATUS(trans) : \
 					 PIPE_HDCP2_STREAM_STATUS(pipe))
 
@@ -10083,7 +10083,7 @@ enum skl_power_gate {
 						    _TRANSB_HDCP2_AUTH_STREAM)
 #define   AUTH_STREAM_TYPE		BIT(31)
 #define HDCP2_AUTH_STREAM(dev_priv, trans, port) \
-					(INTEL_GEN(dev_priv) >= 12 ? \
+					(GRAPHICS_VER(dev_priv) >= 12 ? \
 					 TRANS_HDCP2_AUTH_STREAM(trans) : \
 					 PORT_HDCP2_AUTH_STREAM(port))
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
