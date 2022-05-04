Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DBF5197C4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 09:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C98E10E090;
	Wed,  4 May 2022 07:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E3310E090
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 07:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651647814; x=1683183814;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=KM3k4sj2QWQ4OuQ91n3//CGLul8jFx4+/tmDDLmXbh4=;
 b=mm7RP/G1lIntAk0DUi1rIrB5ypj/R3nVcQOVConQBfqOzJKJvw4riZ0j
 0v5IHiX16Sl6tA54lZ6wrki7Nn2D9yksk2n61309m0ddr/1jdROeu1osC
 BoZ0s7tphidVu9VgrHkS+G25lUunYZs7/giSuoCw/euWBTlxmWWlCAczj
 zkCzVC3X+YuLHDm2iukXAeGQrR/BGeaPJndeX+s+PTaDbEVVqzqM0vqIo
 rayUtf++oRWfpb9wBZAMMPfricrEMgvhX4JgTUAPx+koCDjcIm58zqc/+
 iBwA2VNxvcQX4Jw02NJyI6+yIcvoAYev8aKiCKqN1SltgcHdnuo43TlYq Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="354121730"
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="354121730"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 00:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,197,1647327600"; d="scan'208";a="536703099"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 04 May 2022 00:03:24 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 10:00:53 +0300
Message-Id: <20220504070053.2838020-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add 4th pipe to extend TGL Wa_16013835468 to support DG2
platform.

BSpec: 54077

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 7 +++++--
 drivers/gpu/drm/i915/i915_reg.h          | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..d3b47c612305 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1080,6 +1080,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
 		return LATENCY_REPORTING_REMOVED_PIPE_B;
 	case PIPE_C:
 		return LATENCY_REPORTING_REMOVED_PIPE_C;
+	case PIPE_D:
+		return LATENCY_REPORTING_REMOVED_PIPE_D;
 	default:
 		MISSING_CASE(intel_dp->psr.pipe);
 		return 0;
@@ -1159,8 +1161,9 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 
 		/* Wa_16013835468:tgl[b0+], dg1 */
-		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
-		    IS_DG1(dev_priv)) {
+		/* Wa_14015648006: dg2 */
+		if (DISPLAY_VER(dev_priv) >= 12 &&
+		    !IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
 			u16 vtotal, vblank;
 
 			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9ccb67eec1bd..b01402647300 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5921,6 +5921,7 @@
 #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
 
 #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
 #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
 #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
 #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
-- 
2.27.0

