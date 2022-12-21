Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8471653193
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 14:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1244010E13F;
	Wed, 21 Dec 2022 13:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1891810E13F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 13:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671628897; x=1703164897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cpoqmvtVIiA1TvjmZU0dOKEpyxwOFNI6IkYrj9Ddm/w=;
 b=iQppfOm/lC9dsQc5ZAbR1VaDAcRhprL/jcWdI+hOcBZduYkdQwOZhFdL
 +T+hHX/1F1A80j3CDppXGo0257FYvgcwjAuLyqTMo/oX4uHQbFJy04zlu
 b/H8z4jfGhm21BTmKbEvJr1MvLd9N98VjG/t6102MiqpptUHP9hbBT5pl
 Q4Q8GUPN+RPNiqObHvfZffQ7e59PNLfMxfxaWx3yhee1jqES4PC7c0lwo
 ZbOgAryxTfHBeOfzcMqlTJbWZkWDAMmASggooHOmK3RNecVDYNVIBFrSx
 SBpuISJvHRgyi+2J8c/Kky4a9nQrE9JqQP0KIdDnb8B5F7K8cPcFpTkXX g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="318564012"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="318564012"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 05:21:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="653512100"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="653512100"
Received: from cbenthin-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.61.207])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 05:21:34 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 15:21:18 +0200
Message-Id: <20221221132118.1822697-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Implement Wa_14015648006
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

Add 4th pipe and extend TGL Wa_16013835468 to support ADLP, MTL and
DG2 and all TGL steppings.

BSpec: 54369, 55378, 66624

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++------
 drivers/gpu/drm/i915/i915_reg.h          |  1 +
 2 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9820e5fdd087..0d01b8a7a75d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1112,6 +1112,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 		return LATENCY_REPORTING_REMOVED_PIPE_B;
 	case PIPE_C:
 		return LATENCY_REPORTING_REMOVED_PIPE_C;
+	case PIPE_D:
+		return LATENCY_REPORTING_REMOVED_PIPE_D;
 	default:
 		MISSING_CASE(intel_dp->psr.pipe);
 		return 0;
@@ -1197,9 +1199,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 
-		/* Wa_16013835468:tgl[b0+], dg1 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
-		    IS_DG1(dev_priv)) {
+		/*
+		 * Wa_16013835468:tgl[b0+], dg1,
+		 * Wa_14015648006:adlp[a0+], mtl[a0], dg2, tgl[a0+]
+		 */
+		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+		    IS_DISPLAY_VER(dev_priv, 12, 13)) {
 			u16 vtotal, vblank;
 
 			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
@@ -1378,9 +1383,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
 
-		/* Wa_16013835468:tgl[b0+], dg1 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
-		    IS_DG1(dev_priv))
+		/*
+		 * Wa_16013835468:tgl[b0+], dg1,
+		 * Wa_14015648006:adlp[a0+], mtl[a0], dg2, tgl[a0+]
+		 */
+		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
+		    IS_DISPLAY_VER(dev_priv, 12, 13))
 			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 				     wa_16013835468_bit_get(intel_dp), 0);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index cef9418beec0..a70a1b6e6a15 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5737,6 +5737,7 @@
 #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
 #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
 #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-- 
2.34.1

