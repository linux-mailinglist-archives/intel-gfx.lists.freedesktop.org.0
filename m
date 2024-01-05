Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5728257C8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 17:10:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB60210E625;
	Fri,  5 Jan 2024 16:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51EA510E624;
 Fri,  5 Jan 2024 16:10:50 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_ALPM_AUX_Wake_Config?=
 =?utf-8?q?uration_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Date: Fri, 05 Jan 2024 16:10:50 -0000
Message-ID: <170447105033.40815.12942729531547147845@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
In-Reply-To: <20240105141504.2808991-1-jouni.hogander@intel.com>
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

Series: ALPM AUX Wake Configuration (rev2)
URL   : https://patchwork.freedesktop.org/series/127954/
State : warning

== Summary ==

Error: dim checkpatch failed
b9c0b09fc5df drm/i915/alpm: Add ALPM register definitions
-:38: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#38: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:304:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 0)

-:39: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#39: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:305:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_128_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 1)

-:40: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#40: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:306:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_256_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 2)

-:41: WARNING:LONG_LINE: line length of 113 exceeds 100 columns
#41: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:307:
+#define  ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_512_SYMBOLS	REG_FIELD_PREP(ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_MASK, 3)

-:44: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#44: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:310:
+#define  ALPM_CTL_ALPM_ENTRY_CHECK(val)			REG_FIELD_PREP(ALPM_CTL_ALPM_ENTRY_CHECK_MASK, val)

-:47: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#47: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:313:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:49: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:315:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:54: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#54: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:320:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:56: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#56: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:322:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:58: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#58: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:324:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:60: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:326:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:63: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#63: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:329:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:69: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#69: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:335:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)

-:71: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#71: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:337:
+#define  PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_HOLD_MASK, val)

-:73: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#73: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:339:
+#define  PORT_ALPM_CTL_SILENCE_PERIOD(val)	REG_FIELD_PREP(PORT_ALPM_CTL_SILENCE_PERIOD_MASK, val)

-:76: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#76: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:342:
+#define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)

-:80: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#80: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:346:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:82: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#82: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:348:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:87: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#87: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:353:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:89: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#89: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:355:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:91: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#91: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:357:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:93: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#93: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:359:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:96: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#96: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:362:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:101: WARNING:LONG_LINE: line length of 158 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:367:
+#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)

-:103: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#103: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:369:
+#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)

-:108: WARNING:LONG_LINE: line length of 124 exceeds 100 columns
#108: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:374:
+#define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)

-:110: WARNING:LONG_LINE: line length of 128 exceeds 100 columns
#110: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:376:
+#define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION(val)		REG_FIELD_PREP(ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK, val)

-:112: WARNING:LONG_LINE: line length of 115 exceeds 100 columns
#112: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:378:
+#define  ALPM_CTL2_NUMBER_OF_LTTPR(val)				REG_FIELD_PREP(ALPM_CTL2_NUMBER_OF_LTTPR_MASK, val)

-:114: WARNING:LONG_LINE: line length of 130 exceeds 100 columns
#114: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:380:
+#define  ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME(val)		REG_FIELD_PREP(ALPM_CTL2_LTTPR_AUX_LESS_SLEEP_HOLD_TIME_MASK, val)

-:117: WARNING:LONG_LINE: line length of 138 exceeds 100 columns
#117: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:383:
+#define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)

-:122: WARNING:LONG_LINE: line length of 169 exceeds 100 columns
#122: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:388:
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)

-:124: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#124: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:390:
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:126: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#126: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:392:
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

-:128: WARNING:LONG_LINE: line length of 133 exceeds 100 columns
#128: FILE: drivers/gpu/drm/i915/display/intel_psr_regs.h:394:
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)

total: 0 errors, 34 warnings, 0 checks, 107 lines checked
477e883f0cc9 drm/i915/psr: Add alpm_parameters struct
75ce0887cd1d drm/i915/alpm: Calculate ALPM Entry check
8f84c9560452 drm/i915/alpm: Alpm aux wake configuration for lnl


