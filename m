Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E28842260
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 12:12:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32E37112F8D;
	Tue, 30 Jan 2024 11:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5275810F895
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 11:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706613109; x=1738149109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GXe6nMMHwx27toClXq5RHUm0F4Q+M22PbAkikXDGSg0=;
 b=QXej1X+oxfhonXzbVdV0EZULUdvPXrVCGPqyLKj8lZg5O09ZxyvFGjA9
 hOE6bEfg4BYbXNdlovrKUbJ1ZVKXd1fYZYqpqUcJXYMQLbeStKiIDEEaV
 GLROGiPj+Yit7HzAJLtY3QIcxgdoh0XcKDOUnODdg+V8IrFZKouxWelQq
 53jHyqY8lG3cfQ5/l54J7Je6mVXVbuj/9amCMJ/lLcooEDVTHw9PY0MsA
 EWFI7rX3+asQMMYEjNtiyuHkWZ5s7lg2I2dkIdBHghuDyGIBnJtJlw5mH
 Tslmv+y90PkAbZT79AgD1Qv2YjikN8+h/qcmWu9PuP4D2anNd7RMalqcy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="402877162"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="402877162"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858461185"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858461185"
Received: from swilyman-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.41.112])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 03:11:46 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 1/4] drm/i915/alpm: Add ALPM register definitions
Date: Tue, 30 Jan 2024 13:11:27 +0200
Message-Id: <20240130111130.3298779-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240130111130.3298779-1-jouni.hogander@intel.com>
References: <20240130111130.3298779-1-jouni.hogander@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add ALPM register definitions for Lunar Lake.

v3:
  - Fix ALPM_CTL2_A address
  - Remove duplicate defines
v2:
  - Use REG_BIT instead of BIT
  - Add commit message

Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index bc252f38239e..8427a736f639 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -296,4 +296,61 @@
 						  _SEL_FETCH_PLANE_OFFSET_1_A - \
 						  _SEL_FETCH_PLANE_BASE_1_A)
 
+#define _ALPM_CTL_A	0x60950
+#define ALPM_CTL(tran)	_MMIO_TRANS2(tran, _ALPM_CTL_A)
+#define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
+#define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			REG_BIT(30)
+#define  ALPM_CTL_LOBF_ENABLE				REG_BIT(29)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_ENABLE		REG_BIT(28)
+#define  ALPM_CTL_KEEP_FEC_ENABLE_FOR_AUX_WAKE_SLEEP	REG_BIT(27)
+#define  ALPM_CTL_RESTORE_OCCURED			REG_BIT(26)
+#define  ALPM_CTL_RESTORE_TO_SLEEP			REG_BIT(25)
+#define  ALPM_CTL_RESTORE_TO_DEEP_SLEEP			REG_BIT(24)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(23, 21)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 0)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_128_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 1)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_256_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 2)
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_512_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 3)
+#define  ALPM_CTL_AUX_WAKE_SLEEP_HOLD_ENABLE		REG_BIT(20)
+#define  ALPM_CTL_ALPM_ENTRY_CHECK_MASK			REG_GENMASK(19, 16)
+#define  ALPM_CTL_ALPM_ENTRY_CHECK(val)			REG_FIELD_PREP(ALPM_CTL_ALPM_ENTRY_CHECK_MASK, val)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK		REG_GENMASK(13, 8)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+
+#define _ALPM_CTL2_A	0x60954
+#define ALPM_CTL2(tran)	_MMIO_TRANS2(tran, _ALPM_CTL2_A)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR_MASK				REG_GENMASK(15, 12)
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK		REG_GENMASK(10, 8)
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)
+#define  ALPM_CTL2_FEC_DECODE_EN_POSITION_AFTER_WAKE_SR		REG_BIT(4)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK	REG_GENMASK(2, 0)
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
+
+#define _PORT_ALPM_CTL_A			0x16fa2c
+#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(tran, _PORT_ALPM_CTL_A)
+#define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK	REG_GENMASK(19, 16)
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD_MASK	REG_GENMASK(7, 0)
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)
+
+#define _PORT_ALPM_LFPS_CTL_A					0x16fa30
+#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)
+#define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+
 #endif /* __INTEL_PSR_REGS_H__ */
-- 
2.34.1

