Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5B63D9916
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3F76EB36;
	Wed, 28 Jul 2021 22:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9AD236E9F7;
 Wed, 28 Jul 2021 22:52:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9376EA73C9;
 Wed, 28 Jul 2021 22:52:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Wed, 28 Jul 2021 22:52:59 -0000
Message-ID: <162751277957.22805.4407653062759807414@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20210728211144.15322-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc/slpc=3A_Enable_GuC_based_power_management_feat?=
 =?utf-8?q?ures_=28rev2=29?=
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

Series: drm/i915/guc/slpc: Enable GuC based power management features (rev2)
URL   : https://patchwork.freedesktop.org/series/93026/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
401fdd8ee148 drm/i915/guc/slpc: Initial definitions for SLPC
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
template for SLPC structure in intel_guc_slpc_types.h. Fix copyright (Michal W)

-:29: WARNING:BAD_SIGN_OFF: Duplicate signature
#29: 
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

-:30: WARNING:BAD_SIGN_OFF: Duplicate signature
#30: 
Signed-off-by: Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>

-:85: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#85: 
new file mode 100644

total: 0 errors, 4 warnings, 0 checks, 163 lines checked
78fd70bae974 drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled
2f422e776ca4 drm/i915/guc/slpc: Adding SLPC communication interfaces
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:102: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#102: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:67:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)

-:102: CHECK:SPACING: spaces preferred around that '-' (ctx:VxV)
#102: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:67:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                            ^

-:102: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#102: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:67:
+		+ (SLPC_CACHELINE_SIZE_BYTES-1)) / SLPC_CACHELINE_SIZE_BYTES)*SLPC_CACHELINE_SIZE_BYTES)
 		                                                             ^

-:220: WARNING:SPACING: space prohibited before semicolon
#220: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:185:
+	struct slpc_override_params override_params ;

-:267: CHECK:CAMELCASE: Avoid CamelCase: <GUC_HXG_REQUEST_MSG_n_DATAn>
#267: FILE: drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h:232:
+#define HOST2GUC_PC_SLPC_REQUEST_MSG_n_EVENT_DATAn	GUC_HXG_REQUEST_MSG_n_DATAn

-:308: ERROR:SPACING: space required after that ',' (ctx:VxV)
#308: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:146:
+#define SLPC_EVENT(id,c) (\
                      ^

-:310: ERROR:SPACING: space prohibited before that close parenthesis ')'
#310: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:148:
+FIELD_PREP(HOST2GUC_PC_SLPC_REQUEST_MSG_1_EVENT_ARGC, c ) \

total: 2 errors, 3 warnings, 3 checks, 275 lines checked
9219a4737eac drm/i915/guc/slpc: Allocate, initialize and release SLPC
be0f6ff88859 drm/i915/guc/slpc: Enable SLPC and add related H2G events
-:36: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#36: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:49:
+static void slpc_mem_set_param(struct slpc_shared_data *data,
+				u32 id, u32 value)

-:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#48: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:61:
+static void slpc_mem_set_enabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:59: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#59: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:72:
+static void slpc_mem_set_disabled(struct slpc_shared_data *data,
+				u8 enable_id, u8 disable_id)

-:118: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#118: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:142:
+		drm_err(&i915->drm, "Failed to query task state (%pe)\n",
+				ERR_PTR(ret));

-:176: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#176: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:200:
+		drm_err(&i915->drm, "SLPC reset action failed (%pe)\n",
+					ERR_PTR(ret));

-:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#183: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:207:
+			drm_err(&i915->drm, "SLPC not enabled! State = %s\n",
+				  slpc_get_state_string(slpc));

-:204: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#204: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:228:
+	return	DIV_ROUND_CLOSEST(

-:206: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#206: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:230:
+		REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:216: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#216: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:240:
+	return	DIV_ROUND_CLOSEST(

-:218: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#218: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:242:
+		REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
+			data->task_state_data.freq) *

-:230: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#230: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:254:
+	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
+				SLPC_PARAM_TASK_DISABLE_GTPERF);

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:257:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
+				SLPC_PARAM_TASK_DISABLE_BALANCER);

-:236: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#236: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:260:
+	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
+				SLPC_PARAM_TASK_DISABLE_DCC);

-:264: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:288:
+		drm_err(&i915->drm, "SLPC Reset event returned (%pe)\n",
+				ERR_PTR(ret));

total: 0 errors, 0 warnings, 14 checks, 281 lines checked
579e6ad12043 drm/i915/guc/slpc: Remove BUG_ON in guc_submission_disable
749c426248ec drm/i915/guc/slpc: Add methods to set min/max frequency
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:175:
+		drm_err(&i915->drm, "Failed to set param %d to %u (%pe)\n",
+				id, value, ERR_PTR(ret));

-:87: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:312:
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,

-:116: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#116: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:341:
+		ret = slpc_set_param(slpc,
+			       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,

total: 0 errors, 0 warnings, 3 checks, 114 lines checked
168aa1ef2826 drm/i915/guc/slpc: Add get max/min freq hooks
8956dd5e22d2 drm/i915/guc/slpc: Add debugfs for SLPC info
-:90: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:460:
+			drm_printf(p, "\tGTPERF task active: %s\n",
+				yesno(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));

-:92: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#92: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:462:
+			drm_printf(p, "\tMax freq: %u MHz\n",
+					slpc_decode_max_freq(slpc));

-:94: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#94: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:464:
+			drm_printf(p, "\tMin freq: %u MHz\n",
+					slpc_decode_min_freq(slpc));

total: 0 errors, 0 warnings, 3 checks, 88 lines checked
470442ee287e drm/i915/guc/slpc: Enable ARAT timer interrupt
-:35: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:418:
+	intel_uncore_rmw(gt->uncore,
+			   GEN6_PMINTRMSK, pm_intrmsk_mbz, 0);

total: 0 errors, 0 warnings, 1 checks, 62 lines checked
6bf4805bca11 drm/i915/guc/slpc: Cache platform frequency limits
-:49: CHECK:LINE_SPACING: Please don't use multiple blank lines
#49: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:141:
+
+

-:58: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#58: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:196:
+static int slpc_unset_param(struct intel_guc_slpc *slpc,
+				u8 id)

-:74: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq'
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:335:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:74: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->rp0_freq'
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:335:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:74: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq_softlimit'
#74: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:335:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))

-:95: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val < slpc->min_freq'
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:398:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:95: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->rp0_freq'
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:398:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:95: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'val > slpc->max_freq_softlimit'
#95: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:398:
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))

-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:473:
+		ret = intel_guc_slpc_set_max_freq(slpc,
+					slpc->max_freq_softlimit);

-:135: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#135: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:479:
+		ret = intel_guc_slpc_set_min_freq(slpc,
+					slpc->min_freq_softlimit);

-:145: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#145: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:489:
+		slpc_set_param(slpc,
+		   SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY,

-:148: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#148: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:492:
+		slpc_set_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,

-:152: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#152: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:496:
+		slpc_unset_param(slpc,
+		   SLPC_PARAM_IGNORE_EFFICIENT_FREQUENCY);

-:154: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#154: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:498:
+		slpc_unset_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ);

-:162: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#162: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:506:
+	slpc_set_param(slpc,
+			SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,

-:197: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#197: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:569:
+		drm_err(&i915->drm, "Failed to set SLPC softlimits (%pe)\n",
+					ERR_PTR(ret));

total: 0 errors, 0 warnings, 16 checks, 193 lines checked
abd9676ae450 drm/i915/guc/slpc: Sysfs hooks for SLPC
-:132: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#132: FILE: drivers/gpu/drm/i915/gt/intel_rps.c:2056:
+		drm_dbg(&i915->drm, "User requested overclocking to %d\n",
+			  intel_gpu_freq(rps, val));

-:261: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#261: FILE: drivers/gpu/drm/i915/i915_reg.h:9244:
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT ^I23$

total: 0 errors, 1 warnings, 1 checks, 356 lines checked
b1da62182976 drm/i915/guc/slpc: Add SLPC selftest
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:30:
+		pr_err("Could not set maximum frequency [%u]\n",
+			freq);

-:127: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#127: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:92:
+			rq = igt_spinner_create_request(&spin,
+					engine->kernel_context,

-:139: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#139: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:104:
+				pr_err("%s: Spinner did not start\n",
+					engine->name);

-:155: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#155: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:120:
+			if (req_freq < (min_freq - 50/3)) {
 			                             ^

-:157: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#157: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:122:
+				pr_err("SWReq is %d, should be at least %d\n", req_freq,
+					min_freq - 50/3);

-:157: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#157: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:122:
+					min_freq - 50/3);
 					             ^

-:173: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#173: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:138:
+		pr_info("Max actual frequency for %s was %d\n",
+				engine->name, max_act_freq);

-:258: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#258: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:223:
+			rq = igt_spinner_create_request(&spin,
+						engine->kernel_context,

-:284: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#284: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:249:
+			if (req_freq > (max_freq + 50/3)) {
 			                             ^

-:286: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#286: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:251:
+				pr_err("SWReq is %d, should be at most %d\n", req_freq,
+					max_freq + 50/3);

-:286: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#286: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:251:
+					max_freq + 50/3);
 					             ^

-:305: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#305: FILE: drivers/gpu/drm/i915/gt/selftest_slpc.c:270:
+		pr_info("Max actual frequency for %s was %d\n",
+				engine->name, max_act_freq);

total: 0 errors, 1 warnings, 12 checks, 320 lines checked
9919902ac42f drm/i915/guc/rc: Setup and enable GuCRC feature
-:162: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#162: 
new file mode 100644

-:220: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#220: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c:54:
+		return -ENOTSUPP;

-:233: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#233: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c:67:
+	drm_info(&gt->i915->drm, "GuC RC: %s\n",
+		enableddisabled(enable));

total: 0 errors, 2 warnings, 1 checks, 234 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
