Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52124459884
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:44:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B239A89E5A;
	Mon, 22 Nov 2021 23:44:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF11089E5A;
 Mon, 22 Nov 2021 23:44:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8E8EA9932;
 Mon, 22 Nov 2021 23:44:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Mon, 22 Nov 2021 23:44:08 -0000
Message-ID: <163762464867.5693.12757561706719071692@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_GuC_Error_Capture_Support?=
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

Series: Add GuC Error Capture Support
URL   : https://patchwork.freedesktop.org/series/97187/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3b28aa6f3791 drm/i915/guc: Add basic support for error capture lists
-:101: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#101: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc.h:396:
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					 const u32 *msg, u32 len);

-:244: ERROR:OPEN_BRACE: open brace '{' following enum go on the same line
#244: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h:289:
+enum
+{

-:340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#340: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:4001:
+int intel_guc_error_capture_process_msg(struct intel_guc *guc,
+					 const u32 *msg, u32 len)

total: 1 errors, 0 warnings, 2 checks, 289 lines checked
5d7b43376e65 drm/i915/guc: Update GuC ADS size for error capture lists
-:315: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#315: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 578 lines checked
55daaa2dfbb8 drm/i915/guc: Populate XE_LP register lists for GuC error state capture.
-:35: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#35: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:22:
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
+	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}

-:47: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#47: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:34:
+#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
+	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
+	{RING_ESR(0),              0,      0, "RING_ESR"}, \
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

-:85: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#85: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:72:
+#define COMMON_GEN12BASE_RENDER() \
+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}

-:90: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#90: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:77:
+#define COMMON_GEN12BASE_VEC() \
+	{GEN11_VCS_VECS_INTR_ENABLE, 0,    0, "GEN11_VCS_VECS_INTR_ENABLE"}, \
+	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
+	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
+	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
+	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}

-:174: CHECK:LINE_SPACING: Please don't use multiple blank lines
#174: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:147:
+
+

-:228: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#228: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:151:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_rc_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_RENDER_CLASS),

-:229: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#229: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:152:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_rc_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_RENDER_CLASS),

-:230: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#230: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:153:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_vd_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_VIDEO_CLASS),

-:231: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#231: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:154:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_vd_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_VIDEO_CLASS),

-:232: WARNING:LONG_LINE: line length of 109 exceeds 100 columns
#232: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:155:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_vec_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),

-:233: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#233: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:156:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_vec_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),

-:234: WARNING:LONG_LINE: line length of 104 exceeds 100 columns
#234: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:157:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_blt_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_BLITTER_CLASS),

-:235: WARNING:LONG_LINE: line length of 106 exceeds 100 columns
#235: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:158:
+	MAKE_GCAP_REGLIST_DESCR(gen12lp_blt_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_BLITTER_CLASS),

-:243: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#243: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:165:
+guc_capture_get_ext_list_ptr(struct __guc_mmio_reg_descr_group * lists, u32 owner, u32 type, u32 class)

-:243: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#243: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:165:
+guc_capture_get_ext_list_ptr(struct __guc_mmio_reg_descr_group * lists, u32 owner, u32 type, u32 class)

-:245: ERROR:SPACING: space required before the open brace '{'
#245: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:167:
+	while(lists->list){

-:245: ERROR:SPACING: space required before the open parenthesis '('
#245: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:167:
+	while(lists->list){

-:253: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around lists->ext
#253: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:175:
+	return &(lists->ext);

-:256: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#256: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:178:
+void guc_capture_clear_ext_regs(struct __guc_mmio_reg_descr_group * lists)

-:258: ERROR:SPACING: space required before the open brace '{'
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:180:
+	while(lists->list){

-:258: ERROR:SPACING: space required before the open parenthesis '('
#258: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:180:
+	while(lists->list){

-:260: WARNING:NEEDLESS_IF: kfree(NULL) is safe and this check is probably not required
#260: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:182:
+		if (lists->ext) {
+			kfree(lists->ext);

-:266: WARNING:RETURN_VOID: void function return statements are not generally useful
#266: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:188:
+	return;
+}

-:270: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#270: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:192:
+			     struct __guc_mmio_reg_descr_group * lists)

-:323: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#323: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:244:
+		/*
+		* For certain engine classes, there are slice and subslice

-:350: ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
#350: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h:29:
+	struct __guc_mmio_reg_descr * ext;

total: 12 errors, 12 warnings, 2 checks, 335 lines checked
f20287422c25 drm/i915/guc: Add GuC's error state capture output structures.
-:24: WARNING:LONG_LINE_COMMENT: line length of 101 exceeds 100 columns
#24: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h:35:
+		#define GUC_CAPTURE_DATAHDR_SRC_TYPE GENMASK(3, 0) /* as per enum guc_capture_type */

-:25: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#25: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h:36:
+		#define GUC_CAPTURE_DATAHDR_SRC_CLASS GENMASK(7, 4) /* as per GUC_MAX_ENGINE_CLASSES */

total: 0 errors, 2 warnings, 0 checks, 41 lines checked
c9432d4f7471 drm/i915/guc: Update GuC's log-buffer-state access for error capture.
f56313a6f708 drm/i915/guc: Copy new GuC error capture logs upon G2H notification.
-:224: WARNING:OOM_MESSAGE: Possible unnecessary 'out of memory' message
#224: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:567:
+	if (!guc->capture.out_store.addr) {
+		drm_warn(&dev_priv->drm, "GuC-capture interim-store populated at init!\n");

-:357: ERROR:TRAILING_WHITESPACE: trailing whitespace
#357: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.h:71:
+ $

-:357: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#357: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_log.h:71:
+ $

total: 1 errors, 2 warnings, 0 checks, 347 lines checked
cd819348e021 drm/i915/guc: Print the GuC error capture output register list.
-:128: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 20)
#128: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:500:
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(group, (store->addr + store->tail), fullsize);

-:154: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 20)
#154: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:526:
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(data, (store->addr + store->tail), fullsize);

-:183: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (8, 20)
#183: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:555:
+	if (CIRC_CNT_TO_END(store->head, store->tail, store->size) >= fullsize) {
+		    memcpy(reg, (store->addr + store->tail), fullsize);

-:210: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#210: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:582:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		drm_warn(a, __VA_ARGS__); \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:217: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'b' - possible side-effects?
#217: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:589:
+#define guc_capt_err_print(a, b, ...) \
+	do { \
+		if (b) \
+			i915_error_printf(b, __VA_ARGS__); \
+	} while (0)

-:257: CHECK:LINE_SPACING: Please don't use multiple blank lines
#257: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:629:
+
+

-:261: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#261: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:633:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#261: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:633:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:261: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#261: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:633:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#261: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:633:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:261: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'eng' - possible side-effects?
#261: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:633:
+#define GCAP_PRINT_INTEL_ENG_INFO(i915, ebuf, eng) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:262: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#262: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:634:
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Name: %s\n", (eng)->name); \

-:263: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#263: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:635:
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Class: 0x%02x\n", (eng)->class); \

-:264: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#264: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:636:
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-Inst: 0x%02x\n", (eng)->instance); \

-:265: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#265: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:637:
+	PRINT(&(i915->drm), (ebuf), "    i915-Eng-LogicalMask: 0x%08x\n", (eng)->logical_mask)

-:267: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:267: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:267: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'data' - possible side-effects?
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:267: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#267: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:639:
+#define GCAP_PRINT_GUC_INST_INFO(i915, ebuf, data) \
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:268: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#268: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:640:
+	PRINT(&(i915->drm), (ebuf), "    LRCA: 0x%08x\n", (data).lrca); \

-:269: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#269: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:641:
+	PRINT(&(i915->drm), (ebuf), "    GuC-ContextID: 0x%08x\n", (data).guc_ctx_id); \

-:270: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#270: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:642:
+	PRINT(&(i915->drm), (ebuf), "    GuC-Engine-Instance: 0x%08x\n", \

-:271: CHECK:SPACING: No space is necessary after a cast
#271: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:643:
+	      (uint32_t) FIELD_GET(GUC_CAPTURE_DATAHDR_SRC_INSTANCE, (data).info));

-:273: ERROR:MULTISTATEMENT_MACRO_USE_DO_WHILE: Macros with multiple statements should be enclosed in a do - while loop
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'i915' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:273: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'i915' may be better as '(i915)' to avoid precedence issues
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ebuf' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:273: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ce' - possible side-effects?
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:273: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#273: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:645:
+#define GCAP_PRINT_INTEL_CTX_INFO(i915, ebuf, ce) \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:274: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#274: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:646:
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-Flags: 0x%016lx\n", (ce)->flags); \

-:275: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around i915->drm
#275: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:647:
+	PRINT(&(i915->drm), (ebuf), "    i915-Ctx-GuC-ID: 0x%016x\n", (ce)->guc_id.id);

-:368: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#368: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:740:
+				if (eng) {
[...]
+				} else {
[...]

-:374: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#374: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:746:
+				if (ce) {
[...]
+				} else {
[...]

-:398: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#398: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:770:
+
+		}

-:401: WARNING:LINE_SPACING: Missing a blank line after declarations
#401: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:773:
+			const struct intel_engine_coredump *ee;
+			for (ee = gt->engine; ee; ee = ee->next) {

-:403: WARNING:LINE_SPACING: Missing a blank line after declarations
#403: FILE: drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c:775:
+				const struct i915_vma_coredump *vma;
+				if (ee->engine == eng) {

-:522: CHECK:BRACES: Unbalanced braces around else statement
#522: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:779:
+	else {

total: 3 errors, 9 warnings, 27 checks, 562 lines checked


