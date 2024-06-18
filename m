Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B2890C31A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54ABC10E571;
	Tue, 18 Jun 2024 05:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JhpfcJhe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB54C10E562
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688657; x=1750224657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0GnEG7sLN3HYMVpKQTciJ4TNIJX59NWBFVA+4FUHCFU=;
 b=JhpfcJhe9ogWwaa80X+JKMGwH8jmKWSNOsQe2xi8FYN27Afte5VA3JtC
 frDx3uGxSmr2IOGpxFKLRNIwYHDPxvtGCBdA9rMSQQaa8SDHXeRMRXtbz
 8g8Cfv4r1kRkCCwWXx666JsBATZ+XChjxlBw58hOj1C6hz1vJjEzVrooZ
 b5EOC+FJIiqGIo8UdfJofOJlPKqHQ6jwBAJcsBimPcIch2Y8pPI3HYmVD
 fNHTGthpfLpcYQZANEWurmvovra70/4k7JJVgg5tUfUCmDrCxnVkPXUSX
 XsnVkyGUokvK27Cmf7LN98LpKlcElMnd1Su5ks95n1wN0CBnV/QwHcFWm w==;
X-CSE-ConnectionGUID: VjlKfYNCRIWHadIm9fjjkQ==
X-CSE-MsgGUID: nSMS1BtqR5yWX+CgJJgl1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077721"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077721"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:56 -0700
X-CSE-ConnectionGUID: A9YAbd1OR7+ipVdUjgVXgg==
X-CSE-MsgGUID: wqP5QJ9BQIWC20+hUYWzpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365157"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:52 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 9/9] intel_alpm: Fix wrong offset for PORT_ALPM_* registers
Date: Tue, 18 Jun 2024 08:30:26 +0300
Message-Id: <20240618053026.3268759-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

PORT_ALPM_* registers are using MMIO_TRANS2 macro. This is not correct as
they are port register. Use _PORT_MMIO instead.

Fixes: 4ee30a448255 ("drm/i915/alpm: Add ALPM register definitions")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 5 +++--
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 6 ++++--
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 67848fc1e24d..c7092af7da33 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -310,6 +310,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	enum port port = dp_to_dig_port(intel_dp)->base.port;
 	u32 alpm_ctl;
 
 	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.sel_update_enabled &&
@@ -328,7 +329,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(dev_priv,
-			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
+			       PORT_ALPM_CTL(dev_priv, port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
@@ -336,7 +337,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
 
 		intel_de_write(dev_priv,
-			       PORT_ALPM_LFPS_CTL(dev_priv, cpu_transcoder),
+			       PORT_ALPM_LFPS_CTL(dev_priv, port),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 1e503209da09..642bb15fb547 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -294,7 +294,8 @@
 #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
 
 #define _PORT_ALPM_CTL_A			0x16fa2c
-#define PORT_ALPM_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
+#define _PORT_ALPM_CTL_B			0x16fc2c
+#define PORT_ALPM_CTL(dev_priv, port)		_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
@@ -304,7 +305,8 @@
 #define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
-#define PORT_ALPM_LFPS_CTL(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_LFPS_CTL_A)
+#define _PORT_ALPM_LFPS_CTL_B					0x16fc30
+#define PORT_ALPM_LFPS_CTL(dev_priv, port)			_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
-- 
2.34.1

