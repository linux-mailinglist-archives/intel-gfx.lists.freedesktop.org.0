Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8153045EDD1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 13:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0B36E4AD;
	Fri, 26 Nov 2021 12:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 03CA46E4AD;
 Fri, 26 Nov 2021 12:25:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E05FAAA917;
 Fri, 26 Nov 2021 12:25:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Fri, 26 Nov 2021 12:25:11 -0000
Message-ID: <163792951188.11080.11834948659359584292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211126114623.88739-1-zhi.a.wang@intel.com>
In-Reply-To: <20211126114623.88739-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv3=2C1/2=5D_i915/gvt=3A_Introduce_t?=
 =?utf-8?q?he_mmio=5Finfo=5Ftable=2Ec_to_support_VFIO_new_mdev_API?=
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

Series: series starting with [v3,1/2] i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/97323/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
cc176fe57a84 i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API
-:9: WARNING:TYPO_SPELLING: 'seperated' may be misspelled - perhaps 'separated'?
#9: 
initialization path has to be seperated into two phases:
                              ^^^^^^^^^

-:14: WARNING:TYPO_SPELLING: 'inital' may be misspelled - perhaps 'initial'?
#14: 
Mostly it's because the inital clean HW state needs to be saved before
                        ^^^^^^

-:215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#215: FILE: drivers/gpu/drm/i915/gvt/handlers.c:57:
+static int setup_mmio_handler(struct intel_gvt *gvt,
+		u32 offset, u32 size, u32 device,

-:246: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#246: FILE: drivers/gpu/drm/i915/gvt/handlers.c:76:
+			WARN(1, "assign a handler to a non-tracked mmio %x\n",
+				i);

-:270: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#270: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2072:
+#define MMIO_F(reg, s, d, r, w) do { \
+	ret = setup_mmio_handler(gvt, i915_mmio_reg_offset(reg), \
+		s, d, r, w); \
 	if (ret) \
 		return ret; \
 } while (0)

-:302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#302: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#302: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#302: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#302: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:302: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'w' - possible side-effects?
#302: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:2091: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2091: 
new file mode 100644

-:2096: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2096: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:1:
+/*

-:2158: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2158: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:63:
+bool intel_gvt_match_device(struct intel_gvt *gvt,
+		unsigned long device)

-:2175: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2175: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:80:
+struct intel_gvt_mmio_info *intel_gvt_find_mmio_info(struct intel_gvt *gvt,
+						  unsigned int offset)

-:2187: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2187: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:92:
+static int new_mmio_info(struct intel_gvt *gvt,
+		u32 offset, u16 flags, u32 size,

-:2211: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2211: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:116:
+			WARN(1, "dup mmio definition offset %x\n",
+				info->offset);

-:2231: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#2231: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:136:
+#define MMIO_F(reg, s, f, am, rm, d) do { \
+	ret = new_mmio_info(gvt, i915_mmio_reg_offset(reg), \
+		f, s, am, rm, d); \
+	if (ret) \
+		return ret; \
+} while (0)

-:2247: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2247: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:152:
+#define MMIO_RO(reg, d, f, rm) \
+	MMIO_F(reg, 4, F_RO | f, 0, rm, d)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'am' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rm' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2250: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#2250: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2271: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2271: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:176:
+#define MMIO_RING_RO(prefix, d, f, rm) \
+	MMIO_RING_F(prefix, 4, F_RO | f, 0, rm, d)

-:2315: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2315: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:220:
+	MMIO_RING_DF(RING_REG, D_ALL,
+		F_MODE_MASK | F_CMD_ACCESS | F_CMD_WRITE_PATCH);

-:3014: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3014: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:919:
+	MMIO_RING_F(RING_REG, 4, F_RO, 0,
+		~_MASKED_BIT_ENABLE(RESET_CTL_REQUEST_RESET), D_BDW_PLUS);

-:3079: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3079: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:984:
+	MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
+		D_BDW_PLUS);

-:3563: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3563: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.h:1:
+/*

-:3659: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*gvt)...) over kzalloc(sizeof(struct intel_gvt)...)
#3659: FILE: drivers/gpu/drm/i915/intel_gvt.c:136:
+	gvt = kzalloc(sizeof(struct intel_gvt), GFP_KERNEL);

total: 0 errors, 7 warnings, 23 checks, 3600 lines checked
293556a047ea i915/gvt: save the MMIO snapshot in the early init of GVT-g
-:195: ERROR:OPEN_BRACE: that open brace { should be on the previous line
#195: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:1421:
+int intel_gvt_for_each_tracked_mmio(struct intel_gvt *gvt,
+	int (*handler)(struct intel_gvt *gvt, u32 offset, void *data),
+	void *data)
+{

-:196: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#196: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:1422:
+int intel_gvt_for_each_tracked_mmio(struct intel_gvt *gvt,
+	int (*handler)(struct intel_gvt *gvt, u32 offset, void *data),

-:274: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#274: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.h:33:
+int intel_gvt_for_each_tracked_mmio(struct intel_gvt *gvt,
+	int (*handler)(struct intel_gvt *gvt, u32 offset, void *data),

total: 1 errors, 0 warnings, 2 checks, 229 lines checked


