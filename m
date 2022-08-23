Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7540C59EEA0
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 00:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C101510E3E3;
	Tue, 23 Aug 2022 22:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C8E610E3E3;
 Tue, 23 Aug 2022 22:07:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6472EAA914;
 Tue, 23 Aug 2022 22:07:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Tue, 23 Aug 2022 22:07:44 -0000
Message-ID: <166129246440.2115.9995062829055624583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_DG2_OA_support_=28rev2=29?=
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

Series: Add DG2 OA support (rev2)
URL   : https://patchwork.freedesktop.org/series/107584/
State : warning

== Summary ==

Error: dim checkpatch failed
52bc7af769a8 drm/i915/perf: Fix OA filtering logic for GuC mode
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
With GuC mode of submission, GuC is in control of defining the context id field

total: 0 errors, 1 warnings, 0 checks, 173 lines checked
8030e7cc5068 drm/i915/perf: Add OA formats for DG2
-:83: CHECK:BRACES: braces {} should be used on all arms of this statement
#83: FILE: drivers/gpu/drm/i915/i915_perf.c:635:
+	if (report_size_partial < report_size) {
[...]
+	} else if (copy_to_user(buf, report, report_size))
[...]

-:84: ERROR:SPACING: space required before the open parenthesis '('
#84: FILE: drivers/gpu/drm/i915/i915_perf.c:636:
+		if(copy_to_user(buf, report, report_size_partial))

-:88: ERROR:SPACING: space required before the open parenthesis '('
#88: FILE: drivers/gpu/drm/i915/i915_perf.c:640:
+		if(copy_to_user(buf, stream->oa_buffer.vaddr,

-:159: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>' != 'Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramampa@intel.com>'

total: 2 errors, 1 warnings, 1 checks, 130 lines checked
0f1d1aa255aa drm/i915/perf: Fix noa wait predication for DG2
eb16b3efd45e drm/i915/perf: Determine gen12 oa ctx offset at runtime
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'x' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/i915_perf.c:1369:
+#define __valid_oactxctrl_offset(x) ((x) && (x) != U32_MAX)

total: 0 errors, 0 warnings, 1 checks, 227 lines checked
094c94d27845 drm/i915/perf: Enable commands per clock reporting in OA
-:58: ERROR:CODE_INDENT: code indent should use tabs where possible
#58: FILE: drivers/gpu/drm/i915/i915_perf.c:2772:
+ ^I/*$

-:58: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#58: FILE: drivers/gpu/drm/i915/i915_perf.c:2772:
+ ^I/*$

-:58: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#58: FILE: drivers/gpu/drm/i915/i915_perf.c:2772:
+ ^I/*$

-:59: ERROR:CODE_INDENT: code indent should use tabs where possible
#59: FILE: drivers/gpu/drm/i915/i915_perf.c:2773:
+ ^I * Initialize Super Queue Internal Cnt Register$

-:59: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#59: FILE: drivers/gpu/drm/i915/i915_perf.c:2773:
+ ^I * Initialize Super Queue Internal Cnt Register$

-:60: ERROR:CODE_INDENT: code indent should use tabs where possible
#60: FILE: drivers/gpu/drm/i915/i915_perf.c:2774:
+ ^I * Set PMON Enable in order to collect valid metrics.$

-:60: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#60: FILE: drivers/gpu/drm/i915/i915_perf.c:2774:
+ ^I * Set PMON Enable in order to collect valid metrics.$

-:62: ERROR:CODE_INDENT: code indent should use tabs where possible
#62: FILE: drivers/gpu/drm/i915/i915_perf.c:2776:
+ ^I */$

-:62: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#62: FILE: drivers/gpu/drm/i915/i915_perf.c:2776:
+ ^I */$

-:88: ERROR:CODE_INDENT: code indent should use tabs where possible
#88: FILE: drivers/gpu/drm/i915/i915_perf.c:2847:
+ ^I/* Reset PMON Enable to save power. */$

-:88: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#88: FILE: drivers/gpu/drm/i915/i915_perf.c:2847:
+ ^I/* Reset PMON Enable to save power. */$

-:88: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#88: FILE: drivers/gpu/drm/i915/i915_perf.c:2847:
+ ^I/* Reset PMON Enable to save power. */$

total: 5 errors, 7 warnings, 0 checks, 79 lines checked
011d3bb3b13a drm/i915/perf: Use helpers to process reports w.r.t. OA buffer size
-:23: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#23: FILE: drivers/gpu/drm/i915/i915_perf.c:388:
+static u32 _oa_taken(struct i915_perf_stream * stream, u32 tail, u32 head)

-:30: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#30: FILE: drivers/gpu/drm/i915/i915_perf.c:395:
+static u32 _rewind_tail(struct i915_perf_stream * stream, u32 relative_hw_tail,

total: 2 errors, 0 warnings, 0 checks, 106 lines checked
706eb71d9849 drm/i915/perf: Simply use stream->ctx
e33a6e0a3b91 drm/i915/perf: Move gt-specific data from i915->perf to gt->perf
-:60: WARNING:AVOID_BUG: Avoid crashing the kernel - try using WARN_ON & recovery code rather than BUG() or BUG_ON()
#60: FILE: drivers/gpu/drm/i915/i915_perf.c:1582:
+	BUG_ON(stream != gt->perf.exclusive_stream);

total: 0 errors, 1 warnings, 0 checks, 357 lines checked
a6af6257d624 drm/i915/perf: Replace gt->perf.lock with stream->lock for file ops
6b6ca4561fa0 drm/i915/perf: Use gt-specific ggtt for OA and noa-wait buffers
2b94ddd53cff drm/i915/perf: Store a pointer to oa_format in oa_buffer
4b075ef6d3c3 drm/i915/perf: Parse 64bit report header formats correctly
0eef5c79db8b drm/i915/perf: Add Wa_16010703925:dg2
-:21: ERROR:CODE_INDENT: code indent should use tabs where possible
#21: FILE: drivers/gpu/drm/i915/i915_perf.c:4745:
+ ^Iif (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {$

-:21: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#21: FILE: drivers/gpu/drm/i915/i915_perf.c:4745:
+ ^Iif (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {$

-:21: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#21: FILE: drivers/gpu/drm/i915/i915_perf.c:4745:
+ ^Iif (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {$

-:24: ERROR:CODE_INDENT: code indent should use tabs where possible
#24: FILE: drivers/gpu/drm/i915/i915_perf.c:4748:
+ ^I}$

-:24: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#24: FILE: drivers/gpu/drm/i915/i915_perf.c:4748:
+ ^I}$

-:24: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#24: FILE: drivers/gpu/drm/i915/i915_perf.c:4748:
+ ^I}$

total: 2 errors, 4 warnings, 0 checks, 11 lines checked
ad8d1018d5c7 drm/i915/perf: Add Wa_1608133521:dg2
b1cdf8bc11ea drm/i915/perf: Add Wa_1508761755:dg2
-:31: ERROR:CODE_INDENT: code indent should use tabs where possible
#31: FILE: drivers/gpu/drm/i915/i915_perf.c:2850:
+ ^I/*$

-:31: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#31: FILE: drivers/gpu/drm/i915/i915_perf.c:2850:
+ ^I/*$

-:31: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#31: FILE: drivers/gpu/drm/i915/i915_perf.c:2850:
+ ^I/*$

-:33: ERROR:CODE_INDENT: code indent should use tabs where possible
#33: FILE: drivers/gpu/drm/i915/i915_perf.c:2852:
+ ^I * EU NOA signals behave incorrectly if EU clock gating is enabled.$

-:33: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#33: FILE: drivers/gpu/drm/i915/i915_perf.c:2852:
+ ^I * EU NOA signals behave incorrectly if EU clock gating is enabled.$

-:34: ERROR:CODE_INDENT: code indent should use tabs where possible
#34: FILE: drivers/gpu/drm/i915/i915_perf.c:2853:
+ ^I * Disable thread stall DOP gating and EU DOP gating.$

-:34: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#34: FILE: drivers/gpu/drm/i915/i915_perf.c:2853:
+ ^I * Disable thread stall DOP gating and EU DOP gating.$

-:35: ERROR:CODE_INDENT: code indent should use tabs where possible
#35: FILE: drivers/gpu/drm/i915/i915_perf.c:2854:
+ ^I */$

-:35: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#35: FILE: drivers/gpu/drm/i915/i915_perf.c:2854:
+ ^I */$

-:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#38: FILE: drivers/gpu/drm/i915/i915_perf.c:2857:
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				_MASKED_BIT_ENABLE(STALL_DOP_GATING_DISABLE));

-:40: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#40: FILE: drivers/gpu/drm/i915/i915_perf.c:2859:
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				_MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/i915_perf.c:2946:
+		intel_uncore_write(uncore, GEN8_ROW_CHICKEN,
+				_MASKED_BIT_DISABLE(STALL_DOP_GATING_DISABLE));

-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/i915_perf.c:2948:
+		intel_uncore_write(uncore, GEN7_ROW_CHICKEN2,
+				_MASKED_BIT_DISABLE(GEN12_DISABLE_DOP_GATING));

total: 4 errors, 5 warnings, 4 checks, 42 lines checked
5c73ed9b4c4a drm/i915/perf: Apply Wa_18013179988
39bef7bd2f84 drm/i915/perf: Save/restore EU flex counters across reset
906505495164 drm/i915/guc: Support OA when Wa_16011777198 is enabled
556ab08afed9 drm/i915/perf: Enable OA for DG2


