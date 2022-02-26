Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7DD4C5518
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 11:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992D310EE3F;
	Sat, 26 Feb 2022 10:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 874DF10EE3F;
 Sat, 26 Feb 2022 10:11:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 83173AADD3;
 Sat, 26 Feb 2022 10:11:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Sat, 26 Feb 2022 10:11:48 -0000
Message-ID: <164587030851.9639.6508774741515258978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GuC_Error_Capture_Support_=28rev7=29?=
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

Series: Add GuC Error Capture Support (rev7)
URL   : https://patchwork.freedesktop.org/series/97187/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
fa51e0f956f6 drm/i915/guc: Update GuC ADS size for error capture lists
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:255: ERROR:SPACING: spaces required around that '=' (ctx:VxV)
#255: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:595:
+	u32 null_header[2]={0};
 	                  ^

-:300: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#300: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c:632:
+			if (!info_map_read(&info_map, engine_enabled_masks[j])) {
+

-:468: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'regslist' - possible side-effects?
#468: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:63:
+#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
+	{ \
+		regslist, \
+		ARRAY_SIZE(regslist), \
+		TO_GCAP_DEF_OWNER(regsowner), \
+		TO_GCAP_DEF_TYPE(regstype), \
+		class, \
+	}

-:512: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#512: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:107:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

-:705: WARNING:TYPO_SPELLING: 'cant' may be misspelled - perhaps 'can't'?
#705: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:300:
+		drm_warn(&i915->drm, "GuC-capture: cant create shmem for caplist = 0x%016lx", PTR_ERR(file));
 		                                   ^^^^

-:705: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#705: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:300:
+		drm_warn(&i915->drm, "GuC-capture: cant create shmem for caplist = 0x%016lx", PTR_ERR(file));

total: 1 errors, 4 warnings, 2 checks, 734 lines checked
47efff77442d drm/i915/guc: Add XE_LP static registers for GuC error capture.
-:25: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:25:
+#define COMMON_GEN12BASE_GLOBAL() \
+	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
+	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}, \
+	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
+	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
+	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}

-:33: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#33: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:33:
+#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
+	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
+	{RING_ESR(0),              0,      0, "ESR"}, \
+	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
+	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
+	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
+	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
+	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
+	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
+	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
+	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
+	{CCID(0),                  0,      0, "CCID"}, \
+	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
+	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
+	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
+	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
+	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
+	{RING_START(0),            0,      0, "START"}, \
+	{RING_HEAD(0),             0,      0, "HEAD"}, \
+	{RING_TAIL(0),             0,      0, "TAIL"}, \
+	{RING_CTL(0),              0,      0, "CTL"}, \
+	{RING_MI_MODE(0),          0,      0, "MODE"}, \
+	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
+	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
+	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
+	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}

-:70: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#70: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:70:
+#define COMMON_GEN12BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}

-:75: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#75: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:75:
+#define COMMON_GEN12BASE_VEC() \
+	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}

total: 4 errors, 0 warnings, 0 checks, 180 lines checked
6de0bc96b40d drm/i915/guc: Add XE_LP steered register lists support
-:69: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#69: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:163:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

total: 0 errors, 1 warnings, 0 checks, 259 lines checked
b3559be6c43d drm/i915/guc: Add DG2 registers for GuC error state capture.
630f7006ffde drm/i915/guc: Add Gen9 registers for GuC error state capture.
-:23: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#23: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:28:
+#define COMMON_GEN9BASE_GLOBAL() \
+	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
+	{GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1"}, \
+	{ERROR_GEN6,               0,      0, "ERROR_GEN6"}, \
+	{DONE_REG,                 0,      0, "DONE_REG"}, \
+	{HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN"}

-:39: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#39: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:42:
+#define COMMON_BASE_ENGINE_INSTANCE() \
 	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
 	{RING_ESR(0),              0,      0, "ESR"}, \
 	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \

total: 2 errors, 0 warnings, 0 checks, 146 lines checked
5811889fcbe8 drm/i915/guc: Add GuC's error state capture output structures.
fb2d26808423 drm/i915/guc: Update GuC-log relay function names
ab1d23c2c860 drm/i915/guc: Add capture region into intel_guc_log
-:52: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#52: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:216:
+	log_buf_state = src_data = log->buf_addr;

total: 0 errors, 0 warnings, 1 checks, 155 lines checked
c7f73c19f253 drm/i915/guc: Check sizing of guc_capture output
1ca524a02f27 drm/i915/guc: Extract GuC error capture lists on G2H notification.
-:323: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#323: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:861:
+		if (node->reginfo[i].regs)
+			kfree(node->reginfo[i].regs);

-:422: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#422: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:960:
+		if (new->reginfo[i].regs)
+			kfree(new->reginfo[i].regs);

-:613: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#613: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1151:
+		if (node) /* else free it */
+			kfree(node);

total: 0 errors, 3 warnings, 0 checks, 762 lines checked
ee1209b4b0cb drm/i915/guc: Pre-allocate output nodes for extraction
29b77d53fd35 drm/i915/guc: Plumb GuC-capture into gpu_coredump
-:129: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1391:
+		if (n->eng_inst == GUC_ID_TO_ENGINE_INSTANCE(ee->engine->guc_id) &&
+			n->eng_class == GUC_ID_TO_ENGINE_CLASS(ee->engine->guc_id) &&

total: 0 errors, 0 warnings, 1 checks, 686 lines checked
ba46f0a21c51 drm/i915/guc: Print the GuC error capture output register list.
-:128: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'a' - possible side-effects?
#128: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1402:
+#define __out(a, ...) \
+	do { \
+		drm_warn((&(a)->drm), __VA_ARGS__); \
+		i915_error_printf((a), __VA_ARGS__); \
+	} while (0)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1412:
+#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
+	do { \
+		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:138: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'eng' - possible side-effects?
#138: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1412:
+#define GCAP_PRINT_INTEL_ENG_INFO(ebuf, eng) \
+	do { \
+		__out(ebuf, "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		__out(ebuf, "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		__out(ebuf, "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		__out(ebuf, "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#148: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1422:
+#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
+	do { \
+		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'node' - possible side-effects?
#148: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1422:
+#define GCAP_PRINT_GUC_INST_INFO(ebuf, node) \
+	do { \
+		__out(ebuf, "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		__out(ebuf, "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		__out(ebuf, "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)

total: 0 errors, 0 warnings, 5 checks, 287 lines checked


