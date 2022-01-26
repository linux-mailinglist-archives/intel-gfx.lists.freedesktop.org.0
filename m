Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C20149D20E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:51:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB7410E3D3;
	Wed, 26 Jan 2022 18:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D382410E3D3;
 Wed, 26 Jan 2022 18:51:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0C69A00E8;
 Wed, 26 Jan 2022 18:51:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 26 Jan 2022 18:51:09 -0000
Message-ID: <164322306983.25407.508585882713912944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GuC_Error_Capture_Support_=28rev5=29?=
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

Series: Add GuC Error Capture Support (rev5)
URL   : https://patchwork.freedesktop.org/series/97187/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
233b325e5a87 drm/i915/guc: Update GuC ADS size for error capture lists
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:307: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'regslist' - possible side-effects?
#307: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:60:
+#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
+	{ \
+		.list = regslist, \
+		.num_regs = ARRAY_SIZE(regslist), \
+		.owner = TO_GCAP_DEF_OWNER(regsowner), \
+		.type = TO_GCAP_DEF_TYPE(regstype), \
+		.engine = class, \
+	}

-:356: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#356: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:109:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

total: 0 errors, 2 warnings, 1 checks, 681 lines checked
34501e7d2c33 drm/i915/guc: Add XE_LP registers for GuC error state capture.
-:37: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:22:
+#define COMMON_GEN12BASE_GLOBAL() \
+	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
+	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}, \
+	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
+	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
+	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}

-:45: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#45: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:30:
+#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
+	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
+	{RING_ESR(0),              0,      0, "RING_ESR"}, \
+	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \
+	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UP32"}, \
+	{RING_IPEIR(0),            0,      0, "RING_IPEIR"}, \
+	{RING_IPEHR(0),            0,      0, "RING_IPEHR"}, \
+	{RING_INSTPS(0),           0,      0, "RING_INSTPS"}, \
+	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
+	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
+	{RING_BBSTATE(0),          0,      0, "RING_BBSTATE"}, \
+	{CCID(0),                  0,      0, "CCID"}, \
+	{RING_ACTHD(0),            0,      0, "RING_ACTHD_LOW32"}, \
+	{RING_ACTHD_UDW(0),        0,      0, "RING_ACTHD_UP32"}, \
+	{RING_INSTPM(0),           0,      0, "RING_INSTPM"}, \
+	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
+	{RING_START(0),            0,      0, "RING_START"}, \
+	{RING_HEAD(0),             0,      0, "RING_HEAD"}, \
+	{RING_TAIL(0),             0,      0, "RING_TAIL"}, \
+	{RING_CTL(0),              0,      0, "RING_CTL"}, \
+	{RING_MI_MODE(0),          0,      0, "RING_MI_MODE"}, \
+	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
+	{RING_INSTDONE(0),         0,      0, "RING_INSTDONE"}, \
+	{RING_HWS_PGA(0),          0,      0, "RING_HWS_PGA"}, \
+	{RING_MODE_GEN7(0),        0,      0, "RING_MODE_GEN7"}, \
+	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "GEN8_RING_PDP0_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "GEN8_RING_PDP0_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "GEN8_RING_PDP1_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "GEN8_RING_PDP1_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "GEN8_RING_PDP2_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "GEN8_RING_PDP2_UDW"}, \
+	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "GEN8_RING_PDP3_LDW"}, \
+	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "GEN8_RING_PDP3_UDW"}

-:82: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#82: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:67:
+#define COMMON_GEN12BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}

-:87: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#87: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:72:
+#define COMMON_GEN12BASE_VEC() \
+	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}

-:179: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#179: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:155:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

total: 4 errors, 1 warnings, 0 checks, 310 lines checked
e267d6f56a70 drm/i915/guc: Add DG2 registers for GuC error state capture.
-:79: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ext' - possible side-effects?
#79: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:231:
+#define POPULATE_NEXT_EXTREG(ext, list, idx, slicenum, subslicenum) \
+	{ \
+		(ext)->reg = list[idx].reg; \
+		(ext)->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slicenum); \
+		(ext)->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslicenum); \
+		(ext)->regname = xelpd_extregs[i].name; \
+		++(ext); \
+	}

total: 0 errors, 0 warnings, 1 checks, 100 lines checked
5f79985dd3d6 drm/i915/guc: Add Gen9 registers for GuC error state capture.
-:22: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#22: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:25:
+#define COMMON_GEN9BASE_GLOBAL() \
+	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
+	{GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1"}, \
+	{ERROR_GEN6,               0,      0, "ERROR_GEN6"}, \
+	{DONE_REG,                 0,      0, "DONE_REG"}, \
+	{HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN"}

-:38: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#38: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:39:
+#define COMMON_BASE_ENGINE_INSTANCE() \
 	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
 	{RING_ESR(0),              0,      0, "RING_ESR"}, \
 	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \

total: 2 errors, 0 warnings, 0 checks, 138 lines checked
82ae5e0bde63 drm/i915/guc: Add GuC's error state capture output structures.
a31eff00312f drm/i915/guc: Update GuC's log-buffer-state access for error capture.
-:191: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#191: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:218:
+	log_buf_state = src_data = log->buf_addr;

total: 0 errors, 0 warnings, 1 checks, 436 lines checked
41c83070d184 drm/i915/guc: Extract GuC error capture lists on G2H notification.
-:318: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#318: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:868:
+				if (n->reginfo[i].regs)
+					kfree(n->reginfo[i].regs);

-:346: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#346: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:896:
+				if (found->reginfo[i].regs)
+					kfree(found->reginfo[i].regs);

-:406: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#406: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:956:
+		if (new->reginfo[i].regs)
+			kfree(new->reginfo[i].regs);

-:495: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#495: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1045:
+	while (numlists--) {
+

-:588: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#588: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1138:
+		if (node)
+			kfree(node);

total: 0 errors, 4 warnings, 1 checks, 741 lines checked
f91d07f2eeea drm/i915/guc: Plumb GuC-capture into gpu_coredump
-:103: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#103: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1237:
+		if (ee->guc_capture_node->reginfo[i].regs)
+			kfree(ee->guc_capture_node->reginfo[i].regs);

total: 0 errors, 1 warnings, 0 checks, 689 lines checked
5d218e0455a0 drm/i915/guc: Follow legacy register names
63ae1e872f0e drm/i915/guc: Print the GuC error capture output register list.
-:103: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#103: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1261:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		drm_warn(a, __VA_ARGS__); \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:110: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#110: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1268:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1287:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1287:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:129: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'eng' - possible side-effects?
#129: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1287:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", \
+		      (eng)->name); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&(i915)->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#139: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1297:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, node) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		PRINT(&(i915)->drm, (ebuf), "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#139: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1297:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, node) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		PRINT(&(i915)->drm, (ebuf), "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)

-:139: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'node' - possible side-effects?
#139: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:1297:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, node) \
+	do { \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (node)->eng_inst); \
+		PRINT(&(i915)->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (node)->guc_id); \
+		PRINT(&(i915)->drm, (ebuf), "    LRCA: 0x%08x\n", (node)->lrca); \
+	} while (0)

total: 0 errors, 0 warnings, 8 checks, 270 lines checked


