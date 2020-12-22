Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E9A2E0CEE
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 16:57:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDD3A6E405;
	Tue, 22 Dec 2020 15:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 107DC6E3FE;
 Tue, 22 Dec 2020 15:57:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 09654A0BA8;
 Tue, 22 Dec 2020 15:57:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 22 Dec 2020 15:57:17 -0000
Message-ID: <160865263701.27826.13262302888578766922@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1608648128.git.jani.nikula@intel.com>
In-Reply-To: <cover.1608648128.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_split_out_pps_and_aux?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/dp: split out pps and aux
URL   : https://patchwork.freedesktop.org/series/85167/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
45bed4116194 drm/i915/pps: abstract panel power sequencer from intel_dp.c
-:1085: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1085: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2525:
 
+

-:1625: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1625: 
new file mode 100644

-:2078: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2078: FILE: drivers/gpu/drm/i915/display/intel_pps.c:449:
+#define IDLE_ON_MASK		(PP_ON | PP_SEQUENCE_MASK | 0                     | PP_SEQUENCE_STATE_MASK)

-:2079: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2079: FILE: drivers/gpu/drm/i915/display/intel_pps.c:450:
+#define IDLE_ON_VALUE   	(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)

-:2079: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#2079: FILE: drivers/gpu/drm/i915/display/intel_pps.c:450:
+#define IDLE_ON_VALUE   ^I(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)$

-:2084: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2084: FILE: drivers/gpu/drm/i915/display/intel_pps.c:455:
+#define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)

-:2085: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#2085: FILE: drivers/gpu/drm/i915/display/intel_pps.c:456:
+#define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)

-:2090: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2090: FILE: drivers/gpu/drm/i915/display/intel_pps.c:461:
+static void wait_panel_status(struct intel_dp *intel_dp,
+				       u32 mask,

-:2144: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2144: FILE: drivers/gpu/drm/i915/display/intel_pps.c:515:
+	 * and then make panel wait for t11_t12 if needed. */

-:2146: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2146: FILE: drivers/gpu/drm/i915/display/intel_pps.c:517:
+	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->panel_power_off_time);

-:2149: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2149: FILE: drivers/gpu/drm/i915/display/intel_pps.c:520:
+	 * wait. */

-:2152: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#2152: FILE: drivers/gpu/drm/i915/display/intel_pps.c:523:
+				       intel_dp->panel_power_cycle_delay - panel_power_off_duration);

-:2152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2152: FILE: drivers/gpu/drm/i915/display/intel_pps.c:523:
+		wait_remaining_ms_from_jiffies(jiffies,
+				       intel_dp->panel_power_cycle_delay - panel_power_off_duration);

-:2446: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2446: FILE: drivers/gpu/drm/i915/display/intel_pps.c:817:
+	 * panels get very unhappy and cease to work. */

-:2795: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2795: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1166:
+	 * too. */

-:2799: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2799: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1170:
+	 * our hw here, which are all in 100usec. */

-:2807: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2807: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1178:
+	 * too. */

-:2813: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2813: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1184:
+	 * unset, fall back to the spec limits. */

-:2814: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2814: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1185:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2814: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field' - possible side-effects?
#2814: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1185:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2814: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field' may be better as '(field)' to avoid precedence issues
#2814: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1185:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2824: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field' may be better as '(field)' to avoid precedence issues
#2824: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1195:
+#define get_delay(field)	(DIV_ROUND_UP(final->field, 10))

-:2907: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2907: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1278:
+	 * power sequencer any more. */

-:2937: WARNING:LONG_LINE: line length of 176 exceeds 100 columns
#2937: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1308:
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));

-:2943: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2943: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1314:
+		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));

-:2994: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dp' - possible side-effects?
#2994: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_pps_lock(dp, wf)						\
+	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))

-:2994: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#2994: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_pps_lock(dp, wf)						\
+	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))

total: 1 errors, 18 warnings, 8 checks, 2961 lines checked
9a2c6754aeaf drm/i915/pps: rename pps_{, un}lock -> intel_pps_{, un}lock
-:214: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dp' - possible side-effects?
#214: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_intel_pps_lock(dp, wf)						\
+	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))

-:214: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#214: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_intel_pps_lock(dp, wf)						\
+	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))

total: 0 errors, 0 warnings, 2 checks, 176 lines checked
2e71006628ff drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
3eb2eaf1f0f6 drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
7ba0bb014e1c drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
dbfb9a73ee69 drm/i915/pps: abstract intel_pps_vdd_off_sync
-:89: WARNING:LINE_SPACING: Missing a blank line after declarations
#89: FILE: drivers/gpu/drm/i915/display/intel_pps.c:688:
+	intel_wakeref_t wakeref;
+	if (!intel_dp_is_edp(intel_dp))

total: 0 errors, 1 warnings, 0 checks, 94 lines checked
857aa036bd25 drm/i915/pps: add higher level intel_pps_init() call
9240c60d4690 drm/i915/pps: abstract intel_pps_reinit()
ae78e7086fd8 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked
21d5787f6bf8 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all
1c7a761d30cc drm/i915/pps: add locked intel_pps_wait_power_cycle
438af86b0216 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
72d1cd923095 drm/i915/dp: split out aux functionality to intel_dp_aux.c
-:724: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#724: 
new file mode 100644

-:756: WARNING:LINE_SPACING: Missing a blank line after declarations
#756: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:28:
+	int i;
+	if (dst_bytes > 4)

-:759: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#759: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:31:
+		dst[i] = src >> ((3-i) * 8);
 		                   ^

-:771: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#771: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:43:
+#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)

-:961: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#961: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:233:
+		msleep(1);

-:1051: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1051: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:323:
+	 * "normal" -- don't fill the kernel log with these */

-:1199: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1199: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:471:
+
+

total: 0 errors, 5 warnings, 2 checks, 1402 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
