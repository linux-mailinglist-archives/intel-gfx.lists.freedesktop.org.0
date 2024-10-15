Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2838999FC20
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2024 01:11:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E95510E634;
	Tue, 15 Oct 2024 23:11:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GpdaWg0E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC69810E633;
 Tue, 15 Oct 2024 23:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729033898; x=1760569898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TOJWRE0HMua/Udq/2kHULMC6H2uDAQrMO9lUV0Dh3IY=;
 b=GpdaWg0EX5zZYNVz9tzs4YEsVUfEqvKtrGiefQZqwkRz8PWTznH2GeSy
 JJLwHM/Aun9GdsClWbmmteDYoCyaB8SkZeptJp2jT24RVYvvrZYq+wyER
 /LHUtvWLmzpqR0WKEpR4iz6yDIfABCcsk5Lxht/IeVWoCKcke16mmVSFY
 jwgJ3x575tEmKDGSu8rGOPJknmAHP2Se7FYSLP+L3tuit1ItdXLlhfYT1
 LGo8e6VjRMI+eF3Y0zT1w41Ak1HOCU0C5L9EFN8KAVGe4o0UkkFUHRYWc
 8U494/zrsWTNzb1mcBV9QBQmTy3MZqLhdDdtWA/4ZuPZmcmqilvgMWOrY w==;
X-CSE-ConnectionGUID: NpsU7xvhQZCV1nHhuWxOkw==
X-CSE-MsgGUID: sO92FLLjTmC2vSw2utm6vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28600794"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28600794"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:35 -0700
X-CSE-ConnectionGUID: BLYLvq8rT2ChdjHSGD6RAQ==
X-CSE-MsgGUID: CV8koEsrS56r1aE/oV5SdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,206,1725346800"; d="scan'208";a="83120430"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.108.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 16:11:34 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>
Subject: [PATCH v3 5/7] drm/i915/xe3lpd: Add new bit range of MAX swing setup
Date: Tue, 15 Oct 2024 16:11:22 -0700
Message-ID: <20241015231124.23982-6-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20241015231124.23982-1-matthew.s.atwood@intel.com>
References: <20241015231124.23982-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
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

From: Suraj Kandpal <suraj.kandpal@intel.com>

Add new bit range for Max PHY Swing Setup in PORT_ALPM_CTL
register for DISPLAY_VER >= 30.

v2: implement as two seperate macros instead of a single macro

Bspec: 70277
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     |  9 ++++++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 22 ++++++++++---------
 2 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 55f3ae1e68c9..847662930cb8 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -314,7 +314,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
-	u32 alpm_ctl;
+	u32 alpm_ctl, alpm_swing_setup;
 
 	if (DISPLAY_VER(display) < 20 ||
 	    (!intel_dp->psr.sel_update_enabled && !intel_dp_is_edp(intel_dp)))
@@ -331,10 +331,15 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
+
+		if (DISPLAY_VER(display) >= 30)
+			alpm_swing_setup = XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
+		else
+			alpm_swing_setup = PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15);
 		intel_de_write(display,
 			       PORT_ALPM_CTL(port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
-			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
+			       alpm_swing_setup |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
 			       PORT_ALPM_CTL_SILENCE_PERIOD(
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 0841242543ca..3aeb2af1fbf9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -294,16 +294,18 @@
 #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
 #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
 
-#define _PORT_ALPM_CTL_A			0x16fa2c
-#define _PORT_ALPM_CTL_B			0x16fc2c
-#define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
-#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
-#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
-#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
-#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
-#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
-#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
-#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
+#define _PORT_ALPM_CTL_A				0x16fa2c
+#define _PORT_ALPM_CTL_B				0x16fc2c
+#define PORT_ALPM_CTL(port)				_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
+#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE		REG_BIT(31)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK		REG_GENMASK(23, 20)
+#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(25, 20)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
+#define  XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(XE3_PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK		REG_GENMASK(19, 16)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK		REG_GENMASK(7, 0)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)		REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
 #define _PORT_ALPM_LFPS_CTL_B					0x16fc30
-- 
2.45.0

