Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2259461596
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 13:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0362E6FCAF;
	Mon, 29 Nov 2021 12:56:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7D4776FCB1;
 Mon, 29 Nov 2021 12:56:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76568A363D;
 Mon, 29 Nov 2021 12:56:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Mon, 29 Nov 2021 12:56:28 -0000
Message-ID: <163819058848.16118.6888376095866877343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211129123832.105196-1-zhi.a.wang@intel.com>
In-Reply-To: <20211129123832.105196-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/2=5D_i915/gvt=3A_Introduce_t?=
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

Series: series starting with [v4,1/2] i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/97369/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
20204614807c i915/gvt: Introduce the mmio_info_table.c to support VFIO new mdev API
-:219: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#219: FILE: drivers/gpu/drm/i915/gvt/handlers.c:57:
+static int setup_mmio_handler(struct intel_gvt *gvt,
+		u32 offset, u32 size, u32 device,

-:250: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#250: FILE: drivers/gpu/drm/i915/gvt/handlers.c:76:
+			WARN(1, "assign a handler to a non-tracked mmio %x\n",
+				i);

-:274: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#274: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2072:
+#define MMIO_F(reg, s, d, r, w) do { \
+	ret = setup_mmio_handler(gvt, i915_mmio_reg_offset(reg), \
+		s, d, r, w); \
 	if (ret) \
 		return ret; \
 } while (0)

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:306: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'w' - possible side-effects?
#306: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2082:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:2095: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2095: 
new file mode 100644

-:2100: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2100: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:1:
+/*

-:2162: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2162: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:63:
+bool intel_gvt_match_device(struct intel_gvt *gvt,
+		unsigned long device)

-:2179: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2179: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:80:
+struct intel_gvt_mmio_info *intel_gvt_find_mmio_info(struct intel_gvt *gvt,
+						  unsigned int offset)

-:2191: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2191: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:92:
+static int new_mmio_info(struct intel_gvt *gvt,
+		u32 offset, u16 flags, u32 size,

-:2215: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2215: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:116:
+			WARN(1, "dup mmio definition offset %x\n",
+				info->offset);

-:2235: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#2235: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:136:
+#define MMIO_F(reg, s, f, am, rm, d) do { \
+	ret = new_mmio_info(gvt, i915_mmio_reg_offset(reg), \
+		f, s, am, rm, d); \
+	if (ret) \
+		return ret; \
+} while (0)

-:2251: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2251: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:152:
+#define MMIO_RO(reg, d, f, rm) \
+	MMIO_F(reg, 4, F_RO | f, 0, rm, d)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'am' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rm' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2254: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#2254: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:155:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2275: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2275: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:176:
+#define MMIO_RING_RO(prefix, d, f, rm) \
+	MMIO_RING_F(prefix, 4, F_RO | f, 0, rm, d)

-:2319: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2319: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:220:
+	MMIO_RING_DF(RING_REG, D_ALL,
+		F_MODE_MASK | F_CMD_ACCESS | F_CMD_WRITE_PATCH);

-:3018: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3018: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:919:
+	MMIO_RING_F(RING_REG, 4, F_RO, 0,
+		~_MASKED_BIT_ENABLE(RESET_CTL_REQUEST_RESET), D_BDW_PLUS);

-:3083: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3083: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.c:984:
+	MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
+		D_BDW_PLUS);

-:3567: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3567: FILE: drivers/gpu/drm/i915/gvt/mmio_info_table.h:1:
+/*

-:3663: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*gvt)...) over kzalloc(sizeof(struct intel_gvt)...)
#3663: FILE: drivers/gpu/drm/i915/intel_gvt.c:136:
+	gvt = kzalloc(sizeof(struct intel_gvt), GFP_KERNEL);

total: 0 errors, 5 warnings, 23 checks, 3600 lines checked
45c6c722d2fc i915/gvt: save the MMIO snapshot in the early init of GVT-g
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


