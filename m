Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061183B286D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 09:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6933E6EA41;
	Thu, 24 Jun 2021 07:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34BCC6EA32;
 Thu, 24 Jun 2021 07:17:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C3D1A41FB;
 Thu, 24 Jun 2021 07:17:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 24 Jun 2021 07:17:15 -0000
Message-ID: <162451903517.1852.1773214721452379438@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210624070516.21893-1-matthew.brost@intel.com>
In-Reply-To: <20210624070516.21893-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_GuC_submission_support?=
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

Series: GuC submission support
URL   : https://patchwork.freedesktop.org/series/91840/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a582e9c666ff drm/i915/guc: Relax CTB response timeout
743d703ec315 drm/i915/guc: Improve error message for unsolicited CT response
beb15fc92c92 drm/i915/guc: Increase size of CTB buffers
3d4dab7e7c81 drm/i915/guc: Add non blocking CTB send function
c0779d6fc3b7 drm/i915/guc: Add stall timer to non blocking CTB send function
2c9efd827987 drm/i915/guc: Optimize CTB writes and reads
-:112: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#112: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:528:
+		CT_ERROR(ct, "Corrupted descriptor head=%u tail=%u size=%u\n",
+			  ctb->desc->head, ctb->desc->tail, ctb->size);

total: 0 errors, 0 warnings, 1 checks, 184 lines checked
28324246d8aa drm/i915/guc: Module load failure test for CT buffer creation
-:38: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 20 lines checked
071d7fa76a91 drm/i915/guc: Add new GuC interface defines and structures
-:98: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#98: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:275:
+	 * reset. (in micro seconds). */

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
9cc26b390c65 drm/i915/guc: Remove GuC stage descriptor, add lrc descriptor
-:120: WARNING:PREFER_DEFINED_ATTRIBUTE_MACRO: __always_unused or __maybe_unused is preferred over __attribute__((__unused__))
#120: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:69:
+__attribute__ ((unused))

total: 0 errors, 1 warnings, 0 checks, 208 lines checked
dbd8df00f28f drm/i915/guc: Add lrc descriptor context lookup array
0478ac5fcc47 drm/i915/guc: Implement GuC submission tasklet
86db42bdbf1a drm/i915/guc: Add bypass tasklet submission path to GuC
b9faec389671 drm/i915/guc: Implement GuC context operations for new inteface
-:109: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#109: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:113:
+static inline int intel_guc_send_busy_loop(struct intel_guc* guc,

-:117: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#117: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:121:
+	might_sleep_if(loop && (!in_atomic() && !irqs_disabled()));

-:122: ERROR:IN_ATOMIC: do not use in_atomic in drivers
#122: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:126:
+		if (likely(!in_atomic() && !irqs_disabled()))

-:551: WARNING:REPEATED_WORD: Possible repeated word: 'from'
#551: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:784:
+	 * could be regisgered either the guc_id has been stole from from

-:789: WARNING:ONE_SEMICOLON: Statements terminations use 1 semicolon
#789: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:985:
+		return ret;;

total: 3 errors, 2 warnings, 0 checks, 887 lines checked
0ddf4a0e5ead drm/i915/guc: Insert fence on context when deregistering
-:7: WARNING:REPEATED_WORD: Possible repeated word: 'before'
#7: 
registered with the GuC. In this a case deregister must be before before

total: 0 errors, 1 warnings, 0 checks, 113 lines checked
53890c0d5072 drm/i915/guc: Defer context unpin until scheduling is disabled
9e9fc047e7c1 drm/i915/guc: Disable engine barriers with GuC during unpin
e7452c180185 drm/i915/guc: Extend deregistration fence to schedule disable
195129a34fbe drm/i915: Disable preempt busywait when using GuC scheduling
e53180c87b60 drm/i915/guc: Ensure request ordering via completion fences
-:90: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#90: FILE: drivers/gpu/drm/i915/i915_request.c:1675:
+		if ((!uses_guc && is_power_of_2(READ_ONCE(prev->engine)->mask | rq->engine->mask)) ||

total: 0 errors, 1 warnings, 0 checks, 64 lines checked
59c796b965e6 drm/i915/guc: Disable semaphores when using GuC scheduling
588df5bce44c drm/i915/guc: Ensure G2H response has space in buffer
-:22: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'len' - possible side-effects?
#22: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:100:
+#define MAKE_SEND_FLAGS(len) \
+	({GEM_BUG_ON(!FIELD_FIT(INTEL_GUC_SEND_G2H_DW_MASK, len)); \
+	(FIELD_PREP(INTEL_GUC_SEND_G2H_DW_MASK, len) | INTEL_GUC_SEND_NB);})

-:24: ERROR:SPACING: space required after that ';' (ctx:VxV)
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:102:
+	(FIELD_PREP(INTEL_GUC_SEND_G2H_DW_MASK, len) | INTEL_GUC_SEND_NB);})
 	                                                                 ^

-:202: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#202: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:597:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

-:202: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#202: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c:597:
+#define G2H_LEN_DW(f) \
+	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) ? \
+	FIELD_GET(INTEL_GUC_SEND_G2H_DW_MASK, f) + GUC_CTB_HXG_MSG_MIN_LEN : 0

total: 2 errors, 0 warnings, 2 checks, 296 lines checked
a03438ead8d3 drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC
-:218: ERROR:POINTER_LOCATION: "foo* bar" should be "foo *bar"
#218: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:257:
+static int guc_submission_busy_loop(struct intel_guc* guc,

total: 1 errors, 0 warnings, 0 checks, 333 lines checked
c84dc5dbebea drm/i915/guc: Update GuC debugfs to support new GuC
4adb7ce61e5f drm/i915/guc: Add several request trace points
37ebee77b9c2 drm/i915: Add intel_context tracing
-:152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#152: FILE: drivers/gpu/drm/i915/i915_trace.h:909:
+DECLARE_EVENT_CLASS(intel_context,
+	    TP_PROTO(struct intel_context *ce),

-:155: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#155: FILE: drivers/gpu/drm/i915/i915_trace.h:912:
+	    TP_STRUCT__entry(

-:162: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#162: FILE: drivers/gpu/drm/i915/i915_trace.h:919:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 3 checks, 264 lines checked
351767d30288 drm/i915/guc: GuC virtual engines
-:122: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#122: FILE: drivers/gpu/drm/i915/gt/intel_engine.h:285:
+		return intel_guc_virtual_engine_has_heartbeat(engine);
+	else

-:847: CHECK:LINE_SPACING: Please don't use multiple blank lines
#847: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1894:
+
+

total: 0 errors, 1 warnings, 1 checks, 785 lines checked
5ca8f1a503a8 drm/i915: Track 'serial' counts for virtual engines
81e0788642e7 drm/i915: Hold reference to intel_context over life of i915_request
2fca6597dcd8 drm/i915/guc: Disable bonding extension with GuC submission
7ae740c21ec4 drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
-:346: ERROR:CODE_INDENT: code indent should use tabs where possible
#346: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1411:
+        * In GuC submission mode we do not know which physical engine a request$

-:347: ERROR:CODE_INDENT: code indent should use tabs where possible
#347: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1412:
+        * will be scheduled on, this creates a problem because the breadcrumb$

-:348: ERROR:CODE_INDENT: code indent should use tabs where possible
#348: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1413:
+        * interrupt is per physical engine. To work around this we attach$

-:349: ERROR:CODE_INDENT: code indent should use tabs where possible
#349: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1414:
+        * requests and direct all breadcrumb interrupts to the first instance$

-:350: ERROR:CODE_INDENT: code indent should use tabs where possible
#350: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1415:
+        * of an engine per class. In addition all breadcrumb interrupts are$

-:352: ERROR:CODE_INDENT: code indent should use tabs where possible
#352: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:1417:
+        */$

total: 6 errors, 0 warnings, 0 checks, 329 lines checked
3c79abc34b26 drm/i915/guc: Reset implementation for new GuC interface
-:306: CHECK:LINE_SPACING: Please don't use multiple blank lines
#306: FILE: drivers/gpu/drm/i915/gt/mock_engine.c:266:
+
+

-:390: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "guc->lrc_desc_pool_vaddr"
#390: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:250:
+	return guc->lrc_desc_pool_vaddr != NULL;

-:545: ERROR:SPACING: spaces required around that '||' (ctx:VxW)
#545: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:540:
+			if (pending_enable|| deregister)
 			                  ^

-:585: WARNING:MEMORY_BARRIER: memory barrier without comment
#585: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:580:
+	wmb();

-:637: ERROR:CODE_INDENT: code indent should use tabs where possible
#637: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:622:
+ ^I */$

-:637: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#637: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:622:
+ ^I */$

-:1294: CHECK:LINE_SPACING: Please don't use multiple blank lines
#1294: FILE: drivers/gpu/drm/i915/gt/uc/intel_uc.c:568:
 
+

total: 2 errors, 2 warnings, 3 checks, 1301 lines checked
848ca056fc3e drm/i915: Reset GPU immediately if submission is disabled
-:93: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#93: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:223:
+
+}

total: 0 errors, 0 warnings, 1 checks, 181 lines checked
17b20c0c8bd7 drm/i915/guc: Add disable interrupts to guc sanitize
-:11: ERROR:BAD_SIGN_OFF: Unrecognized email address: 'Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com'
#11: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com

total: 1 errors, 0 warnings, 0 checks, 70 lines checked
345f1eca0a86 drm/i915/guc: Suspend/resume implementation for new interface
a921fc062048 drm/i915/guc: Handle context reset notification
5560a36d3f00 drm/i915/guc: Handle engine reset failure notification
ee41dea700c0 drm/i915/guc: Enable the timer expired interrupt for GuC
adcd1418b513 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
-:355: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#355: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:212:
+	temp_set.registers = kmalloc_array(temp_set.size,
+					  sizeof(*temp_set.registers),

-:384: CHECK:SPACING: No space is necessary after a cast
#384: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:241:
+	temp_set.registers = (struct guc_mmio_reg *) (((u8 *) blob) + offset);

total: 0 errors, 0 warnings, 2 checks, 400 lines checked
b7f2c290b8da drm/i915/guc: Don't complain about reset races
cf156af71348 drm/i915/guc: Enable GuC engine reset
d43f902c9f69 drm/i915/guc: Capture error state on context reset
c24a302b3409 drm/i915/guc: Fix for error capture after full GPU reset with GuC
-:119: CHECK:BRACES: braces {} should be used on all arms of this statement
#119: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1701:
+	if (guc) {
[...]
+	} else
[...]

-:123: CHECK:BRACES: Unbalanced braces around else statement
#123: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:1705:
+	} else

-:408: ERROR:OPEN_BRACE: open brace '{' following enum go on the same line
#408: FILE: drivers/gpu/drm/i915/i915_request.h:655:
+enum i915_request_state
+{

-:418: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 1 errors, 1 warnings, 2 checks, 348 lines checked
2529cfc15930 drm/i915/guc: Hook GuC scheduling policies up
-:80: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#80: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:113:
+		return -ENOTSUPP;

-:148: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 0 errors, 2 warnings, 0 checks, 113 lines checked
055c438902ea drm/i915/guc: Connect reset modparam updates to GuC policy flags
-:49: WARNING:LONG_LINE: line length of 107 exceeds 100 columns
#49: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:14:
+#define MATCH_DEBUGFS_NODE_NAME(_file, _name)	(strcmp((_file)->f_path.dentry->d_name.name, (_name)) == 0)

-:51: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#51: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:16:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while(0)

-:54: CHECK:SPACING: No space is necessary after a cast
#54: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:19:
+		params = container_of(((void *) (ptr)), typeof(*params), name);	\

-:56: ERROR:SPACING: space required before the open parenthesis '('
#56: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:21:
+	} while(0)

-:103: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 1 errors, 2 warnings, 2 checks, 68 lines checked
9bedfd84c9e8 drm/i915/guc: Include scheduling policies in the debugfs state dump
-:72: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: John Harrison <John.C.Harrison@Intel.com>' != 'Signed-off-by: John Harrison <john.c.harrison@intel.com>'

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
b49edbcc9280 drm/i915/guc: Add golden context to GuC ADS
-:254: CHECK:SPACING: No space is necessary after a cast
#254: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:453:
+	ptr = ((u8 *) blob) + offset;

-:279: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#279: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:470:
+			drm_err(&gt->i915->drm, "No engine state recorded for class %d!\n", engine_class);

total: 0 errors, 1 warnings, 1 checks, 342 lines checked
8a320e973471 drm/i915/guc: Unblock GuC submission on Gen11+


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
