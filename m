Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C93E2EF80B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 20:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DAE6E8A7;
	Fri,  8 Jan 2021 19:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8C206E8A7;
 Fri,  8 Jan 2021 19:23:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E2C84A47DB;
 Fri,  8 Jan 2021 19:23:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 08 Jan 2021 19:23:24 -0000
Message-ID: <161013380490.332.2319380897667240675@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1610127741.git.jani.nikula@intel.com>
In-Reply-To: <cover.1610127741.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/dp=3A_split_out_pps_and_aux_=28rev2=29?=
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

Series: drm/i915/dp: split out pps and aux (rev2)
URL   : https://patchwork.freedesktop.org/series/85167/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d7a1bfde18c drm/i915/pps: abstract panel power sequencer from intel_dp.c
-:1082: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1082: FILE: drivers/gpu/drm/i915/display/intel_dp.c:2552:
 
+

-:1623: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1623: 
new file mode 100644

-:2073: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2073: FILE: drivers/gpu/drm/i915/display/intel_pps.c:446:
+#define IDLE_ON_MASK		(PP_ON | PP_SEQUENCE_MASK | 0                     | PP_SEQUENCE_STATE_MASK)

-:2074: WARNING:LONG_LINE: line length of 110 exceeds 100 columns
#2074: FILE: drivers/gpu/drm/i915/display/intel_pps.c:447:
+#define IDLE_ON_VALUE   	(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)

-:2074: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#2074: FILE: drivers/gpu/drm/i915/display/intel_pps.c:447:
+#define IDLE_ON_VALUE   ^I(PP_ON | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_ON_IDLE)$

-:2079: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#2079: FILE: drivers/gpu/drm/i915/display/intel_pps.c:452:
+#define IDLE_CYCLE_MASK		(PP_ON | PP_SEQUENCE_MASK | PP_CYCLE_DELAY_ACTIVE | PP_SEQUENCE_STATE_MASK)

-:2080: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#2080: FILE: drivers/gpu/drm/i915/display/intel_pps.c:453:
+#define IDLE_CYCLE_VALUE	(0     | PP_SEQUENCE_NONE | 0                     | PP_SEQUENCE_STATE_OFF_IDLE)

-:2085: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2085: FILE: drivers/gpu/drm/i915/display/intel_pps.c:458:
+static void wait_panel_status(struct intel_dp *intel_dp,
+				       u32 mask,

-:2139: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2139: FILE: drivers/gpu/drm/i915/display/intel_pps.c:512:
+	 * and then make panel wait for t11_t12 if needed. */

-:2141: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2141: FILE: drivers/gpu/drm/i915/display/intel_pps.c:514:
+	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->panel_power_off_time);

-:2144: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2144: FILE: drivers/gpu/drm/i915/display/intel_pps.c:517:
+	 * wait. */

-:2147: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#2147: FILE: drivers/gpu/drm/i915/display/intel_pps.c:520:
+				       intel_dp->panel_power_cycle_delay - panel_power_off_duration);

-:2147: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2147: FILE: drivers/gpu/drm/i915/display/intel_pps.c:520:
+		wait_remaining_ms_from_jiffies(jiffies,
+				       intel_dp->panel_power_cycle_delay - panel_power_off_duration);

-:2441: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2441: FILE: drivers/gpu/drm/i915/display/intel_pps.c:814:
+	 * panels get very unhappy and cease to work. */

-:2790: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2790: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1163:
+	 * too. */

-:2794: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2794: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1167:
+	 * our hw here, which are all in 100usec. */

-:2802: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2802: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1175:
+	 * too. */

-:2808: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2808: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1181:
+	 * unset, fall back to the spec limits. */

-:2809: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#2809: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1182:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2809: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'field' - possible side-effects?
#2809: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1182:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2809: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field' may be better as '(field)' to avoid precedence issues
#2809: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1182:
+#define assign_final(field)	final->field = (max(cur.field, vbt.field) == 0 ? \
+				       spec.field : \
+				       max(cur.field, vbt.field))

-:2819: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'field' may be better as '(field)' to avoid precedence issues
#2819: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1192:
+#define get_delay(field)	(DIV_ROUND_UP(final->field, 10))

-:2902: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#2902: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1275:
+	 * power sequencer any more. */

-:2932: WARNING:LONG_LINE: line length of 176 exceeds 100 columns
#2932: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1305:
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));

-:2938: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#2938: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1311:
+		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));

-:2989: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dp' - possible side-effects?
#2989: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_pps_lock(dp, wf)						\
+	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))

-:2989: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#2989: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_pps_lock(dp, wf)						\
+	for ((wf) = pps_lock(dp); (wf); (wf) = pps_unlock((dp), (wf)))

total: 1 errors, 18 warnings, 8 checks, 2953 lines checked
84bd85deaf0b drm/i915/pps: rename pps_{, un}lock -> intel_pps_{, un}lock
-:216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dp' - possible side-effects?
#216: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_intel_pps_lock(dp, wf)						\
+	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))

-:216: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'wf' - possible side-effects?
#216: FILE: drivers/gpu/drm/i915/display/intel_pps.h:22:
+#define with_intel_pps_lock(dp, wf)						\
+	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))

total: 0 errors, 0 warnings, 2 checks, 176 lines checked
9de69e6f8cbd drm/i915/pps: rename intel_edp_backlight_* to intel_pps_backlight_*
67bedb793872 drm/i915/pps: rename intel_edp_panel_* to intel_pps_*
4c39d047e6a5 drm/i915/pps: rename edp_panel_* to intel_pps_*_unlocked
13979e877fa3 drm/i915/pps: abstract intel_pps_vdd_off_sync
b0c7e08de7bc drm/i915/pps: add higher level intel_pps_init() call
fcd60022bd6d drm/i915/pps: abstract intel_pps_encoder_reset()
46024084caf5 drm/i915/pps: rename intel_dp_check_edp to intel_pps_check_power_unlocked
4c5d95f01d72 drm/i915/pps: rename intel_power_sequencer_reset to intel_pps_reset_all
cb6cf18c5623 drm/i915/pps: add locked intel_pps_wait_power_cycle
eaad3ef82888 drm/i915/pps: rename vlv_init_panel_power_sequencer to vlv_pps_init
ca6b78cc5788 drm/i915/pps: rename intel_dp_init_panel_power_sequencer* functions
f57fa5d3bb5d drm/i915/pps: refactor init abstractions
d50dad330043 drm/i915/pps: move pps code over from intel_display.c and refactor
d7a14085a159 drm/i915/dp: abstract struct intel_dp pps members to a sub-struct
-:346: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#346: FILE: drivers/gpu/drm/i915/display/intel_pps.c:509:
+	panel_power_off_duration = ktime_ms_delta(panel_power_on_time, intel_dp->pps.panel_power_off_time);

-:354: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#354: FILE: drivers/gpu/drm/i915/display/intel_pps.c:515:
+				       intel_dp->pps.panel_power_cycle_delay - panel_power_off_duration);

total: 0 errors, 2 warnings, 0 checks, 632 lines checked
d6be48f10987 drm/i915/dp: split out aux functionality to intel_dp_aux.c
-:728: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#728: 
new file mode 100644

-:760: WARNING:LINE_SPACING: Missing a blank line after declarations
#760: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:28:
+	int i;
+	if (dst_bytes > 4)

-:763: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#763: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:31:
+		dst[i] = src >> ((3-i) * 8);
 		                   ^

-:775: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#775: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:43:
+#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)

-:965: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#965: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:233:
+		msleep(1);

-:1055: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#1055: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:323:
+	 * "normal" -- don't fill the kernel log with these */

-:1203: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1203: FILE: drivers/gpu/drm/i915/display/intel_dp_aux.c:471:
+
+

total: 0 errors, 5 warnings, 2 checks, 1410 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
