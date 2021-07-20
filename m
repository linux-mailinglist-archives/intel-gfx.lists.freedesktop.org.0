Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79373D049F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 00:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF5B6E402;
	Tue, 20 Jul 2021 22:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A44076E0EB;
 Tue, 20 Jul 2021 22:30:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C36BA00C9;
 Tue, 20 Jul 2021 22:30:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 20 Jul 2021 22:30:01 -0000
Message-ID: <162682020160.12851.7436567518813050328@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210720223921.56160-1-matthew.brost@intel.com>
In-Reply-To: <20210720223921.56160-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Series_to_merge_a_subset_of_GuC_submission?=
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

Series: Series to merge a subset of GuC submission
URL   : https://patchwork.freedesktop.org/series/92791/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ec53f1834fea drm/i915/guc: Add new GuC interface defines and structures
-:99: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#99: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:275:
+	 * reset. (in micro seconds). */

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
7e036ee5f85e drm/i915/guc: Remove GuC stage descriptor, add LRC descriptor
-:125: WARNING:PREFER_DEFINED_ATTRIBUTE_MACRO: __always_unused or __maybe_unused is preferred over __attribute__((__unused__))
#125: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:69:
+__attribute__ ((unused))

total: 0 errors, 1 warnings, 0 checks, 208 lines checked
722a3e5a4415 drm/i915/guc: Add LRC descriptor context lookup array
9d1be7a2819b drm/i915/guc: Implement GuC submission tasklet
2234dab12cac drm/i915/guc: Add bypass tasklet submission path to GuC
f02a6e7e28bc drm/i915/guc: Implement GuC context operations for new inteface
-:139: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#139: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:113:
+static inline int intel_guc_send_busy_loop(struct intel_guc* guc,

-:146: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#146: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:120:
+	bool not_atomic = !in_atomic() && !irqs_disabled();

-:587: WARNING:REPEATED_WORD: Possible repeated word: 'from'
#587: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:785:
+	 * could be registered either the guc_id has been stolen from from

total: 2 errors, 1 warnings, 0 checks, 902 lines checked
5c25a79e0e15 drm/i915/guc: Insert fence on context when deregistering
1b654aaa7260 drm/i915/guc: Defer context unpin until scheduling is disabled
efc0364130bb drm/i915/guc: Disable engine barriers with GuC during unpin
a9c371205bcc drm/i915/guc: Extend deregistration fence to schedule disable
9911672af3c3 drm/i915: Disable preempt busywait when using GuC scheduling
62126880619a drm/i915/guc: Ensure request ordering via completion fences
-:66: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#66: FILE: drivers/gpu/drm/i915/i915_request.c:1642:
+		if ((!uses_guc && is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask)) ||

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
bfce77d80f9f drm/i915/guc: Disable semaphores when using GuC scheduling
dbe4a36fbe4e drm/i915/guc: Ensure G2H response has space in buffer
-:215: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#215: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:619:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

-:215: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#215: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:619:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_CT_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

-:329: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'len' - possible side-effects?
#329: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:104:
+#define MAKE_SEND_FLAGS(len) \
+	({GEM_BUG_ON(!FIELD_FIT(INTEL_GUC_CT_SEND_G2H_DW_MASK, len)); \
+	(FIELD_PREP(INTEL_GUC_CT_SEND_G2H_DW_MASK, len) | INTEL_GUC_CT_SEND_NB);})

-:331: ERROR:SPACING: space required after that ';' (ctx:VxV)
#331: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h:106:
+	(FIELD_PREP(INTEL_GUC_CT_SEND_G2H_DW_MASK, len) | INTEL_GUC_CT_SEND_NB);})
 	                                                                       ^

total: 2 errors, 0 warnings, 2 checks, 337 lines checked
e21fad90cbba drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC
-:216: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#216: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:255:
+static int guc_submission_send_busy_loop(struct intel_guc* guc,

total: 1 errors, 0 warnings, 0 checks, 313 lines checked
26cd4897ed36 drm/i915/guc: Update GuC debugfs to support new GuC
67fb3ed8ac4e drm/i915/guc: Add trace point for GuC submit
eff5ff5cddbd drm/i915: Add intel_context tracing
-:142: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#142: FILE: drivers/gpu/drm/i915/i915_trace.h:899:
+DECLARE_EVENT_CLASS(intel_context,
+	    TP_PROTO(struct intel_context *ce),

-:145: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#145: FILE: drivers/gpu/drm/i915/i915_trace.h:902:
+	    TP_STRUCT__entry(

-:152: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#152: FILE: drivers/gpu/drm/i915/i915_trace.h:909:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 3 checks, 254 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
