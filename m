Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C63181818B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B54C110E18B;
	Tue, 19 Dec 2023 06:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E079610E18B
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702967558; x=1734503558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hg+RdXOjKT2W/telX9BAeAcJ5bMM2LMF51avFITJQdE=;
 b=KP8Kko+Vz37WIrJjX4W0PxXdDJYbI+krvpyYWAY6aGC4TFKTnHAfIC5V
 +Sz11w7idFQ3dl8H8oCqcRGc1/F7HVyaViT+ipDs7UUuL3Ud5ReOeNCp0
 OMTKRvPj2/I8UvEtp4KC+uzSt+JrCrIXXwHToT70BiU3i1sCbpXacDx+p
 Jc7SRpF0Ppw3jOYPZCbjBcdbOMY9t7jRozlvjcCWkOdTNEe7QjAZML8QF
 TrZgeBKF9nAeBGdckfHHT3hPuKm64eV2tsbLDKbqFlYwefh7pOZ2iMW50
 wizQWj8f2k1YmxjO/Q6itnXdqOVzXKX4A5xc3uxvR7DKmGcdNiw8oixIi g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2466440"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2466440"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="17836832"
Received: from amoested-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:36 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/alpm: Add ALPM register definitions
Date: Tue, 19 Dec 2023 08:32:18 +0200
Message-Id: <20231219063221.505982-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219063221.505982-1-jouni.hogander@intel.com>
References: <20231219063221.505982-1-jouni.hogander@intel.com>
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 103 ++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index efe4306b37e0..9410a43e901b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -290,4 +290,107 @@
 						  _SEL_FETCH_PLANE_OFFSET_1_A - \
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
+#define _ALPM_CTL_A	0x60950
+#define ALPM_CTL(tran)	_MMIO_TRANS2(tran, _ALPM_CTL_A)
+#define  ALPM_CTL_ALPM_ENABLE				BIT(31)
+#define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			BIT(30)
+#define  ALPM_CTL_LOBF_ENABLE				BIT(29)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE		BIT(28)
+#define  ALPM_CTL_KEEP_FEC_ENABLE_FOR_AUX_WAKE_SLEEP	BIT(27)
+#define  ALPM_CTL_RESTORE_OCCURED			BIT(26)
+#define  ALPM_CTL_RESTORE_TO_SLEEP			BIT(25)
+#define  ALPM_CTL_RESTORE_TO_DEEP_SLEEP			BIT(24)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(23, 21)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 0)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_128_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 1)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_256_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 2)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_512_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 3)
+#define  ALPM_CTL_AUX_WAKE_SLEEP_HOLD_ENABLE		BIT(20)
+#define  ALPM_CTL_ALPM_ENTRY_CHECK_MASK			REG_GENMASK(19, 16)
+#define  ALPM_CTL_ALPM_ENTRY_CHECK(val)			REG_FIELD_PREP(ALPM_CTL_ALPM_ENTRY_CHECK_MASK, val)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK		REG_GENMASK(13, 8)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+
+#define _ALPM_CTL2_A	0x60950
+#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, 8)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
+#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
+
+#define _PORT_ALPM_CTL_A			0x16fa2c
+#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
+#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	BIT(31)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
+
+#define _PORT_ALPM_LFPS_CTL_A					0x16fa30
+#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)
+#define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			BIT(31)
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+
+#define _ALPM_CTL2_A	0x60950
+#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, 8)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
+#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
+
+#define _PORT_ALPM_CTL_A			0x16fa2c
+#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+
+#define _ALPM_CTL2_A	0x60950
+#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, 8)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
+#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		BIT(4)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
+
+#define _PORT_ALPM_CTL_A			0x16fa2c
+#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(20, 16)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(12, 8)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(4, 0)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+
 #endif /* __INTEL_PSR_REGS_H__ */
-- 
2.34.1

