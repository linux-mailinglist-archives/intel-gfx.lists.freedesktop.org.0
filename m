Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE61E81827F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 08:44:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F56610E27D;
	Tue, 19 Dec 2023 07:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A8DBB10E27D;
 Tue, 19 Dec 2023 07:44:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A480EA7E03;
 Tue, 19 Dec 2023 07:44:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX_Wake_Config?=
 =?utf-8?q?uration?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Tue, 19 Dec 2023 07:44:35 -0000
Message-ID: <170297187566.17582.17212949990880613636@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231219063221.505982-1-jouni.hogander@intel.com>
In-Reply-To: <20231219063221.505982-1-jouni.hogander@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: ALPM AUX Wake Configuration
URL   : https://patchwork.freedesktop.org/series/127954/
State : warning

== Summary ==

Error: dim checkpatch failed
a8f0d5148cb5 drm/i915/alpm: Add ALPM register definitions
-:10: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:30: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#30: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:304:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 0)

-:31: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#31: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:305:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_128_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 1)

-:32: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#32: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:306:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_256_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 2)

-:33: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#33: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:307:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_512_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 3)

-:36: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#36: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:310:
+#define  ALPM_CTL_ALPM_ENTRY_CHECK(val)			REG_FIELD_PREP(ALPM_CTL_ALPM_ENTRY_CHECK_MASK, val)

-:39: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:313:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:41: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:315:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:46: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#46: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:320:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:48: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#48: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:322:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:50: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#50: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:324:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:52: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#52: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:326:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:55: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#55: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:329:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:61: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#61: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:335:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:63: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:337:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)

-:65: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#65: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:339:
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)

-:68: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#68: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:342:
+#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)

-:72: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#72: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:346:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:74: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#74: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:348:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:79: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#79: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:353:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:81: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#81: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:355:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:83: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#83: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:357:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:85: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#85: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:359:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:88: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#88: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:362:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:93: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:367:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:95: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#95: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:369:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:100: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#100: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:374:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:102: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:376:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:104: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#104: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:378:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:106: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#106: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:380:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:109: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#109: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:383:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:114: WARNING:LONG_LINE: line length of 169 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:388:
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)

-:116: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#116: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:390:
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:118: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#118: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:392:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:120: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#120: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:394:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 35 warnings, 0 checks, 107 lines checked
206198444c0f drm/i915/psr: Add alpm_parameters struct
0af30d6837c5 drm/i915/alpm: Calculate ALPM Entry check
6261745568a1 drm/i915/alpm: Alpm aux wake configuration for lnl


