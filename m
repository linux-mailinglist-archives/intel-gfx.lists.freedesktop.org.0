Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAD448AF62
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 15:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB87410E25A;
	Tue, 11 Jan 2022 14:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3ED3C10E1CC;
 Tue, 11 Jan 2022 14:21:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 374A7AA914;
 Tue, 11 Jan 2022 14:21:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 11 Jan 2022 14:21:35 -0000
Message-ID: <164191089518.24978.9790661818127471249@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220111093018.610582-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GuC_Error_Capture_Support_=28rev3=29?=
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

Series: Add GuC Error Capture Support (rev3)
URL   : https://patchwork.freedesktop.org/series/97187/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c3c2aef23926 drm/i915/guc: Add basic support for error capture lists
0fe87e1f9ad7 drm/i915/guc: Update GuC ADS size for error capture lists
-:32: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#32: 
new file mode 100644

-:304: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'regslist' - possible side-effects?
#304: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:60:
+#define MAKE_REGLIST(regslist, regsowner, regstype, class) \
+	{ \
+		.list = regslist, \
+		.num_regs = ARRAY_SIZE(regslist), \
+		.owner = TO_GCAP_DEF_OWNER(regsowner), \
+		.type = TO_GCAP_DEF_TYPE(regstype), \
+		.engine = class, \
+	}

-:353: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#353: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:109:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

total: 0 errors, 2 warnings, 1 checks, 678 lines checked
a322828d8363 drm/i915/guc: Populate XE_LP register lists for GuC error state capture.
-:37: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#37: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:22:
+#define COMMON_GEN12BASE_GLOBAL() \
+	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
+	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}, \
+	{DERRMR,                   0,      0, "DERRMR"}, \
+	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
+	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
+	{GEN11_GUC_SG_INTR_ENABLE, 0,      0, "GEN11_GUC_SG_INTR_ENABLE"}, \
+	{GEN11_CRYPTO_RSVD_INTR_ENABLE, 0, 0, "GEN11_CRYPTO_RSVD_INTR_ENABLE"}, \
+	{GEN11_GUNIT_CSME_INTR_ENABLE, 0,  0, "GEN11_GUNIT_CSME_INTR_ENABLE"}, \
+	{GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0, 0, "GEN11_GPM_WGBOXPERF_INTR_ENABLE"}, \
+	{GEN8_DE_MISC_IER,         0,      0, "GEN8_DE_MISC_IER"}, \
+	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}

-:51: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#51: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:36:
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

-:88: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#88: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:73:
+#define COMMON_GEN12BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}

-:93: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#93: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:78:
+#define COMMON_GEN12BASE_VEC() \
+	{GEN11_VCS_VECS_INTR_ENABLE, 0,    0, "GEN11_VCS_VECS_INTR_ENABLE"}, \
+	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}

-:180: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (16, 16)
#180: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:166:
+		if (reglists[i].owner == owner && reglists[i].type == type &&
[...]
+		return &reglists[i];

total: 4 errors, 1 warnings, 0 checks, 309 lines checked
3a30601021be drm/i915/guc: Add GuC's error state capture output structures.
d8f6847b9f81 drm/i915/guc: Update GuC's log-buffer-state access for error capture.
-:191: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#191: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.c:232:
+	log_buf_state = src_data = log->buf_addr;

total: 0 errors, 0 warnings, 1 checks, 436 lines checked
662c1b9d4d6f drm/i915/guc: Copy new GuC error capture logs upon G2H notification.
06170708edbf drm/i915/guc: Print the GuC error capture output register list.
-:226: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#226: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:835:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		drm_warn(a, __VA_ARGS__); \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:233: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#233: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:842:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:864:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", (eng)->name); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:255: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#255: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:864:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", (eng)->name); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:864:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", (eng)->name); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:255: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'eng' - possible side-effects?
#255: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:864:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Name: %s command stream\n", (eng)->name); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Class: 0x%02x\n", (eng)->class); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-Inst-Id: 0x%02x\n", (eng)->instance); \
+		PRINT(&i915->drm, (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", \
+		      (eng)->logical_mask); \
+	} while (0)

-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:873:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (uint32_t)FIELD_GET(CAP_HDR_ENGINE_INSTANCE, (hdr).info)); \
+		PRINT(&i915->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (hdr).guc_id); \
+		PRINT(&i915->drm, (ebuf), "    LRCA: 0x%08x\n", (hdr).lrca); \
+	} while (0)

-:264: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:873:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (uint32_t)FIELD_GET(CAP_HDR_ENGINE_INSTANCE, (hdr).info)); \
+		PRINT(&i915->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (hdr).guc_id); \
+		PRINT(&i915->drm, (ebuf), "    LRCA: 0x%08x\n", (hdr).lrca); \
+	} while (0)

-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:873:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (uint32_t)FIELD_GET(CAP_HDR_ENGINE_INSTANCE, (hdr).info)); \
+		PRINT(&i915->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (hdr).guc_id); \
+		PRINT(&i915->drm, (ebuf), "    LRCA: 0x%08x\n", (hdr).lrca); \
+	} while (0)

-:264: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'hdr' - possible side-effects?
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:873:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, hdr) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    GuC-Engine-Inst-Id: 0x%08x\n", \
+		      (uint32_t)FIELD_GET(CAP_HDR_ENGINE_INSTANCE, (hdr).info)); \
+		PRINT(&i915->drm, (ebuf), "    GuC-Context-Id: 0x%08x\n", (hdr).guc_id); \
+		PRINT(&i915->drm, (ebuf), "    LRCA: 0x%08x\n", (hdr).lrca); \
+	} while (0)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:881:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-GuC-Id: 0x%016x\n", (ce)->guc_id.id); \
+	} while (0)

-:272: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:881:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-GuC-Id: 0x%016x\n", (ce)->guc_id.id); \
+	} while (0)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:881:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-GuC-Id: 0x%016x\n", (ce)->guc_id.id); \
+	} while (0)

-:272: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ce' - possible side-effects?
#272: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:881:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	do { \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+		PRINT(&i915->drm, (ebuf), "    i915-Ctx-GuC-Id: 0x%016x\n", (ce)->guc_id.id); \
+	} while (0)

-:278: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#278: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:887:
+#define GCAP_PRINT_BATCH(i915, ebuf, ee, batch) \
+	do { \
+		batch = intel_gpu_error_find_batch(ee); \
+		if (batch) { \
+			u64 start = batch->gtt_offset; \
+			u64 end = start + batch->gtt_size; \
+			PRINT(&i915->drm, (ebuf), "  batch: [0x%08x_%08x, 0x%08x_%08x]\n", \
+			   upper_32_bits(start), lower_32_bits(start), \
+			   upper_32_bits(end), lower_32_bits(end)); \
+		} \
+	} while (0)

-:278: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'batch' - possible side-effects?
#278: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:887:
+#define GCAP_PRINT_BATCH(i915, ebuf, ee, batch) \
+	do { \
+		batch = intel_gpu_error_find_batch(ee); \
+		if (batch) { \
+			u64 start = batch->gtt_offset; \
+			u64 end = start + batch->gtt_size; \
+			PRINT(&i915->drm, (ebuf), "  batch: [0x%08x_%08x, 0x%08x_%08x]\n", \
+			   upper_32_bits(start), lower_32_bits(start), \
+			   upper_32_bits(end), lower_32_bits(end)); \
+		} \
+	} while (0)

-:290: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:290: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:290: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:290: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ebuf' may be better as '(ebuf)' to avoid precedence issues
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:290: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx' - possible side-effects?
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:290: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'ctx' may be better as '(ctx)' to avoid precedence issues
#290: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:899:
+#define GCAP_PRINT_CONTEXT(i915, ebuf, ctx) \
+	do { \
+		const u32 period = to_gt(ebuf->i915)->clock_period_ns; \
+		PRINT(&i915->drm, (ebuf), "  Active context: %s[%d] prio %d, guilty %d " \
+		      "active %d, runtime total %lluns, avg %lluns\n", \
+		      ctx->comm, ctx->pid, ctx->sched_attr.priority, \
+		      ctx->guilty, ctx->active, \
+		      ctx->total_runtime * period, \
+		      mul_u32_u32(ctx->avg_runtime, period)); \
+	} while (0)

-:384: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#384: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:993:
+		guc_gucid = guc_lrca = 0;

total: 0 errors, 0 warnings, 23 checks, 678 lines checked


