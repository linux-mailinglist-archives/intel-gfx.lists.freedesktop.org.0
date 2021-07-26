Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E46693D6788
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C66696ECD8;
	Mon, 26 Jul 2021 19:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DD506EC07;
 Mon, 26 Jul 2021 19:34:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E070A0118;
 Mon, 26 Jul 2021 19:34:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Mon, 26 Jul 2021 19:34:46 -0000
Message-ID: <162732808653.2616.6798077094204684787@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Enable_GuC_based_power_management_feat?=
 =?utf-8?q?ures?=
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

Series: drm/i915/guc/slpc: Enable GuC based power management features
URL   : https://patchwork.freedesktop.org/series/93026/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e739b51dc573 drm/i915/guc: SQUASHED PATCH - DO NOT REVIEW
-:54: WARNING:BAD_SIGN_OFF: Duplicate signature
#54: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:74: WARNING:BAD_SIGN_OFF: Duplicate signature
#74: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:83: WARNING:BAD_SIGN_OFF: Duplicate signature
#83: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:84: WARNING:BAD_SIGN_OFF: Duplicate signature
#84: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:99: WARNING:BAD_SIGN_OFF: Duplicate signature
#99: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:101: WARNING:BAD_SIGN_OFF: Duplicate signature
#101: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:111: WARNING:BAD_SIGN_OFF: Duplicate signature
#111: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:112: WARNING:BAD_SIGN_OFF: Duplicate signature
#112: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:121: WARNING:BAD_SIGN_OFF: Duplicate signature
#121: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:122: WARNING:BAD_SIGN_OFF: Duplicate signature
#122: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:150: WARNING:BAD_SIGN_OFF: Duplicate signature
#150: 
Cc: John Harrison <john.c.harrison@intel.com>

-:151: WARNING:BAD_SIGN_OFF: Duplicate signature
#151: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:159: WARNING:BAD_SIGN_OFF: Duplicate signature
#159: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:160: WARNING:BAD_SIGN_OFF: Duplicate signature
#160: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:168: WARNING:BAD_SIGN_OFF: Duplicate signature
#168: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:169: WARNING:BAD_SIGN_OFF: Duplicate signature
#169: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:170: WARNING:BAD_SIGN_OFF: Duplicate signature
#170: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:191: WARNING:BAD_SIGN_OFF: Duplicate signature
#191: 
Cc: John Harrison <john.c.harrison@intel.com>

-:192: WARNING:BAD_SIGN_OFF: Duplicate signature
#192: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:194: WARNING:BAD_SIGN_OFF: Duplicate signature
#194: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:211: WARNING:BAD_SIGN_OFF: Duplicate signature
#211: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:212: WARNING:BAD_SIGN_OFF: Duplicate signature
#212: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:213: WARNING:BAD_SIGN_OFF: Duplicate signature
#213: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:225: WARNING:BAD_SIGN_OFF: Duplicate signature
#225: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:227: WARNING:BAD_SIGN_OFF: Duplicate signature
#227: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:234: WARNING:BAD_SIGN_OFF: Duplicate signature
#234: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:235: WARNING:BAD_SIGN_OFF: Duplicate signature
#235: 
CC: John Harrison <John.C.Harrison@Intel.com>

-:236: WARNING:BAD_SIGN_OFF: Duplicate signature
#236: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:250: WARNING:BAD_SIGN_OFF: Duplicate signature
#250: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:251: WARNING:BAD_SIGN_OFF: Duplicate signature
#251: 
Signed-off-by: Fernando Pacheco <fernando.pacheco@intel.com>

-:252: WARNING:BAD_SIGN_OFF: Duplicate signature
#252: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:253: WARNING:BAD_SIGN_OFF: Duplicate signature
#253: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:255: WARNING:BAD_SIGN_OFF: Duplicate signature
#255: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:265: WARNING:BAD_SIGN_OFF: Duplicate signature
#265: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:266: WARNING:BAD_SIGN_OFF: Duplicate signature
#266: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:267: WARNING:BAD_SIGN_OFF: Duplicate signature
#267: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:274: WARNING:BAD_SIGN_OFF: Duplicate signature
#274: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:275: WARNING:BAD_SIGN_OFF: Duplicate signature
#275: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:276: WARNING:BAD_SIGN_OFF: Duplicate signature
#276: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:290: WARNING:BAD_SIGN_OFF: Duplicate signature
#290: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:291: WARNING:BAD_SIGN_OFF: Duplicate signature
#291: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:308: WARNING:BAD_SIGN_OFF: Duplicate signature
#308: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:309: WARNING:BAD_SIGN_OFF: Duplicate signature
#309: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:310: WARNING:BAD_SIGN_OFF: Duplicate signature
#310: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:321: WARNING:BAD_SIGN_OFF: Duplicate signature
#321: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:322: WARNING:BAD_SIGN_OFF: Duplicate signature
#322: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:323: WARNING:BAD_SIGN_OFF: Duplicate signature
#323: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:341: WARNING:BAD_SIGN_OFF: Duplicate signature
#341: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:342: WARNING:BAD_SIGN_OFF: Duplicate signature
#342: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:343: WARNING:BAD_SIGN_OFF: Duplicate signature
#343: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:350: WARNING:BAD_SIGN_OFF: Duplicate signature
#350: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:351: WARNING:BAD_SIGN_OFF: Duplicate signature
#351: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:352: WARNING:BAD_SIGN_OFF: Duplicate signature
#352: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:366: WARNING:BAD_SIGN_OFF: Duplicate signature
#366: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:367: WARNING:BAD_SIGN_OFF: Duplicate signature
#367: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:368: WARNING:BAD_SIGN_OFF: Duplicate signature
#368: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:375: WARNING:BAD_SIGN_OFF: Duplicate signature
#375: 
Cc: John Harrison <John.C.Harrison@Intel.com>

-:376: WARNING:BAD_SIGN_OFF: Duplicate signature
#376: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:377: WARNING:BAD_SIGN_OFF: Duplicate signature
#377: 
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

-:400: WARNING:BAD_SIGN_OFF: Duplicate signature
#400: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:401: WARNING:BAD_SIGN_OFF: Duplicate signature
#401: 
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

-:409: WARNING:BAD_SIGN_OFF: Duplicate signature
#409: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:410: WARNING:BAD_SIGN_OFF: Duplicate signature
#410: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:411: WARNING:BAD_SIGN_OFF: Duplicate signature
#411: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:412: WARNING:BAD_SIGN_OFF: Duplicate signature
#412: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:421: WARNING:BAD_SIGN_OFF: Duplicate signature
#421: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:422: WARNING:BAD_SIGN_OFF: Duplicate signature
#422: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:423: WARNING:BAD_SIGN_OFF: Duplicate signature
#423: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:424: WARNING:BAD_SIGN_OFF: Duplicate signature
#424: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:425: WARNING:BAD_SIGN_OFF: Duplicate signature
#425: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:433: WARNING:BAD_SIGN_OFF: Duplicate signature
#433: 
Signed-off-by: Rahul Kumar Singh <rahul.kumar.singh@intel.com>

-:434: WARNING:BAD_SIGN_OFF: Duplicate signature
#434: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:435: WARNING:BAD_SIGN_OFF: Duplicate signature
#435: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:436: WARNING:BAD_SIGN_OFF: Duplicate signature
#436: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:437: WARNING:BAD_SIGN_OFF: Duplicate signature
#437: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:438: WARNING:BAD_SIGN_OFF: Duplicate signature
#438: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:445: WARNING:BAD_SIGN_OFF: Duplicate signature
#445: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:470: WARNING:BAD_SIGN_OFF: Duplicate signature
#470: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:471: WARNING:BAD_SIGN_OFF: Duplicate signature
#471: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:472: WARNING:BAD_SIGN_OFF: Duplicate signature
#472: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:473: WARNING:BAD_SIGN_OFF: Duplicate signature
#473: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:474: WARNING:BAD_SIGN_OFF: Duplicate signature
#474: 
Cc: Matthew Brost <matthew.brost@intel.com>

-:494: WARNING:BAD_SIGN_OFF: Duplicate signature
#494: 
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>

-:495: WARNING:BAD_SIGN_OFF: Duplicate signature
#495: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:496: WARNING:BAD_SIGN_OFF: Duplicate signature
#496: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:497: WARNING:BAD_SIGN_OFF: Duplicate signature
#497: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:526: WARNING:BAD_SIGN_OFF: Duplicate signature
#526: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:527: WARNING:BAD_SIGN_OFF: Duplicate signature
#527: 
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:528: WARNING:BAD_SIGN_OFF: Duplicate signature
#528: 
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

-:539: WARNING:BAD_SIGN_OFF: Duplicate signature
#539: 
Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

-:541: WARNING:BAD_SIGN_OFF: Duplicate signature
#541: 
Signed-off-by: Matthew Brost <matthew.brost@intel.com>

-:542: WARNING:BAD_SIGN_OFF: Duplicate signature
#542: 
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

-:3292: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#3292: FILE: drivers/gpu/drm/i915/gt/selftest_workarounds.c:814:
+								   SELFTEST_SCHEDULER_MODIFY_FAST_RESET);

-:4544: CHECK:BRACES: braces {} should be used on all arms of this statement
#4544: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:545:
+		if (unlikely(ret == -EPIPE))
[...]
+		else if (ret == -EBUSY) {
[...]

-:6683: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#6683: FILE: drivers/gpu/drm/i915/i915_debugfs_params.c:17:
+#define GET_I915(i915, name, ptr)	\
+	do {	\
+		struct i915_params *params;	\
+		params = container_of(((void *)(ptr)), typeof(*params), name);	\
+		(i915) = container_of(params, typeof(*(i915)), params);	\
+	} while (0)

-:7322: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#7322: 
new file mode 100644

total: 0 errors, 94 warnings, 2 checks, 6414 lines checked
b1eed2ee0dd1 drm/i915/guc/slpc: Initial definitions for SLPC
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
template for SLPC structure in intel_guc_slpc_types.h. Fix copyright (Michal W)

-:26: WARNING:BAD_SIGN_OFF: Duplicate signature
#26: 
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

-:27: WARNING:BAD_SIGN_OFF: Duplicate signature
#27: 
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>

-:91: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#91: 
new file mode 100644

total: 0 errors, 4 warnings, 0 checks, 167 lines checked
9f75f622e733 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
c60f3b51410d drm/i915/guc/slpc: Adding SLPC communication interfaces
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:101: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#101: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:66:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)

-:101: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:66:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                            ^

-:101: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#101: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:66:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                                                             ^

-:219: WARNING:SPACING: space prohibited before semicolon
#219: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:184:
+	struct slpc_override_params override_params ;

-:266: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#266: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:231:
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_n_EVENT_DATAn	GUC_HXG_REQUEST_MSG_n_DATAn

-:309: ERROR:SPACING: space required after that ',' (ctx:VxV)
#309: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:146:
+#define SLPC_EVENT(id,c) (\
                      ^

-:311: ERROR:SPACING: space prohibited before that close parenthesis ')'
#311: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:148:
+FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ARGC, c ) \

total: 2 errors, 3 warnings, 3 checks, 276 lines checked
dfa70375b4e0 drm/i915/guc/slpc: Allocate, initialize and release SLPC
b263a074ec5f drm/i915/guc/slpc: Enable SLPC and add related H2G events
-:32: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#32: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:49:
+static void slpc_mem_set_param(struct slpc_shared_data *data,
+				u32 id, u32 value)

-:44: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#44: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:61:
+static void slpc_mem_set_enabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:55: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#55: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:72:
+static void slpc_mem_set_disabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:93: ERROR:CODE_INDENT: code indent should use tabs where possible
#93: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:93: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#93: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:93: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#93: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:121:
+ ^I^ISLPC_EVENT(SLPC_EVENT_QUERY_TASK_STATE, 2),$

-:114: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#114: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:142:
+		drm_err(&i915->drm, "Query task state data returned (%pe)\n",
+				ERR_PTR(ret));

-:187: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#187: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:215:
+			drm_err(&i915->drm, "SLPC not enabled! State = %s\n",
+				  slpc_get_state_string(slpc));

-:208: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#208: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:236:
+	return	DIV_ROUND_CLOSEST(

-:210: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#210: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:238:
+		REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:220: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#220: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:248:
+	return	DIV_ROUND_CLOSEST(

-:222: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#222: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:250:
+		REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:254: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#254: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:282:
+	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
+				SLPC_PARAM_TASK_DISABLE_GTPERF);

-:257: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#257: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:285:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+				SLPC_PARAM_TASK_DISABLE_BALANCER);

-:260: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#260: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:288:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+				SLPC_PARAM_TASK_DISABLE_DCC);

-:265: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#265: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:293:
+		drm_err(&i915->drm, "SLPC Reset event returned (%pe)\n",
+				ERR_PTR(ret));

-:275: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#275: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:303:
+	drm_info(&i915->drm, "SLPC min freq: %u Mhz, max is %u Mhz\n",
+			slpc_decode_min_freq(slpc),

-:278: CHECK:LINE_SPACING: Please don't use multiple blank lines
#278: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:306:
+
+

total: 1 errors, 2 warnings, 15 checks, 283 lines checked
c60c975349d2 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
ab9599b22ee7 drm/i915/guc/slpc: Add methods to set min/max frequency
-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:296:
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,

-:120: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#120: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:328:
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,

total: 0 errors, 0 warnings, 2 checks, 120 lines checked
9fda8c1773ef drm/i915/guc/slpc: Add get max/min freq hooks
8772da814cc8 drm/i915/guc/slpc: Add debugfs for SLPC info
-:88: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:469:
+			drm_printf(p, "\tGTPERF task active: %s\n",
+				yesno(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:471:
+			drm_printf(p, "\tMax freq: %u MHz\n",
+					slpc_decode_max_freq(slpc));

-:92: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#92: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:473:
+			drm_printf(p, "\tMin freq: %u MHz\n",
+					slpc_decode_min_freq(slpc));

total: 0 errors, 0 warnings, 3 checks, 95 lines checked
98238144dd09 drm/i915/guc/slpc: Enable ARAT timer interrupt
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:406:
+	intel_uncore_rmw(gt->uncore,
+			   GEN6_PMINTRMSK, pm_intrmsk_mbz, 0);

total: 0 errors, 0 warnings, 1 checks, 61 lines checked
edec3303a3f8 drm/i915/guc/slpc: Cache platform frequency limits
-:47: CHECK:LINE_SPACING: Please don't use multiple blank lines
#47: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:141:
+
+

-:56: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#56: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:189:
+static int slpc_unset_param(struct intel_guc_slpc *slpc,
+				u8 id)

-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:446:
+		ret = intel_guc_slpc_set_max_freq(slpc,
+					slpc->max_freq_softlimit);

-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:452:
+		ret = intel_guc_slpc_set_min_freq(slpc,
+					slpc->min_freq_softlimit);

-:100: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#100: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:462:
+		slpc_set_param(slpc,
+		   SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY,

-:103: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#103: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:465:
+		slpc_set_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,

-:107: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#107: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:469:
+		slpc_unset_param(slpc,
+		   SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY);

-:109: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#109: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:471:
+		slpc_unset_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ);

-:117: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#117: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:479:
+	slpc_set_param(slpc,
+	   SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,

-:152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#152: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:554:
+		drm_err(&i915->drm, "Failed to set SLPC softlimits (%pe)\n",
+					ERR_PTR(ret));

total: 0 errors, 0 warnings, 10 checks, 164 lines checked
8ed3bd759132 drm/i915/guc/slpc: Sysfs hooks for SLPC
-:134: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#134: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:2060:
+		drm_dbg(&i915->drm, "User requested overclocking to %d\n",
+			  intel_gpu_freq(rps, val));

-:235: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq'
#235: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:319:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:235: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->rp0_freq'
#235: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:319:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:235: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq_softlimit'
#235: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:319:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq'
#256: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:385:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->rp0_freq'
#256: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:385:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:256: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->max_freq_softlimit'
#256: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:385:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:294: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#294: FILE: drivers/gpu/drm/i915/i915_reg.h:9243:
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT ^I23$

total: 0 errors, 1 warnings, 7 checks, 371 lines checked
025f555a3e2e drm/i915/guc/slpc: Add SLPC selftest
-:30: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#30: 
new file mode 100644

-:66: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#66: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:32:
+		pr_err("Could not set maximum frequency [%u]\n",
+			freq);

-:128: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#128: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:94:
+			rq = igt_spinner_create_request(&spin,
+					engine->kernel_context,

-:140: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#140: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:106:
+				pr_err("%s: Spinner did not start\n",
+					engine->name);

-:156: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#156: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:122:
+			if (req_freq < (min_freq - 50/3)) {
 			                             ^

-:158: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#158: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:124:
+				pr_err("SWReq is %d, should be at least %d\n", req_freq,
+					min_freq - 50/3);

-:158: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#158: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:124:
+					min_freq - 50/3);
 					             ^

-:174: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#174: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:140:
+		pr_info("Max actual frequency for %s was %d\n",
+				engine->name, max_act_freq);

-:259: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#259: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:225:
+			rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,

-:285: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#285: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:251:
+			if (req_freq > (max_freq + 50/3)) {
 			                             ^

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:253:
+				pr_err("SWReq is %d, should be at most %d\n", req_freq,
+					max_freq + 50/3);

-:287: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#287: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:253:
+					max_freq + 50/3);
 					             ^

-:306: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#306: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:272:
+		pr_info("Max actual frequency for %s was %d\n",
+				engine->name, max_act_freq);

total: 0 errors, 1 warnings, 12 checks, 334 lines checked
bd5302518b8e drm/i915/guc/rc: Setup and enable GUCRC feature
-:124: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#124: 
new file mode 100644

-:182: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#182: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c:54:
+		return -ENOTSUPP;

-:195: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#195: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c:67:
+	drm_info(&gt->i915->drm, "GuC RC: %s\n",
+		enableddisabled(enable));

total: 0 errors, 2 warnings, 1 checks, 199 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
