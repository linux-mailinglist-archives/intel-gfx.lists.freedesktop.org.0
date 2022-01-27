Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB94649E5AA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 16:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4786E10F11A;
	Thu, 27 Jan 2022 15:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDCDC10F119;
 Thu, 27 Jan 2022 15:17:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E92DFA00A0;
 Thu, 27 Jan 2022 15:17:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhi Wang" <zhi.wang.linux@gmail.com>
Date: Thu, 27 Jan 2022 15:17:08 -0000
Message-ID: <164329662892.23659.15828438373989926854@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127120508.11330-1-zhi.a.wang@intel.com>
In-Reply-To: <20220127120508.11330-1-zhi.a.wang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_i915/gvt=3A_Introduce_the_mm?=
 =?utf-8?q?io=5Ftable=2Ec_to_support_VFIO_new_mdev_API?=
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

Series: series starting with [1/3] i915/gvt: Introduce the mmio_table.c to support VFIO new mdev API
URL   : https://patchwork.freedesktop.org/series/99420/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
1d24765d58ce i915/gvt: Introduce the mmio_table.c to support VFIO new mdev API
-:214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#214: FILE: drivers/gpu/drm/i915/gvt/handlers.c:76:
+static int setup_mmio_handler(struct intel_gvt *gvt,
+		u32 offset, u32 size, u32 device,

-:245: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#245: FILE: drivers/gpu/drm/i915/gvt/handlers.c:95:
+			WARN(1, "assign a handler to a non-tracked mmio %x\n",
+				i);

-:269: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#269: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2091:
+#define MMIO_F(reg, s, d, r, w) do { \
+	ret = setup_mmio_handler(gvt, i915_mmio_reg_offset(reg), \
+		s, d, r, w); \
 	if (ret) \
 		return ret; \
 } while (0)

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2101:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2101:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2101:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'r' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2101:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:301: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'w' - possible side-effects?
#301: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2101:
+#define MMIO_RING_F(prefix, s, d, r, w) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(BLT_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, d, r, w); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, d, r, w); \
 	if (HAS_ENGINE(gvt->gt, VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, d, r, w); \
 } while (0)

-:2034: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2034: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2407:
+			WARN(1, "dup mmio definition offset %x\n",
+				info->offset);

-:2064: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2064: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2437:
+	ret = krealloc(block,
+			 (gvt->mmio.num_mmio_block + 1) * sizeof(*block),

-:2069: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#2069: FILE: drivers/gpu/drm/i915/gvt/handlers.c:2442:
+	gvt->mmio.mmio_block = block = ret;

-:2213: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#2213: 
new file mode 100644

-:2218: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#2218: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:1:
+/*

-:2291: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#2291: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:74:
+#define MMIO_F(reg, s, f, am, rm, d) do { \
+	if (intel_gvt_get_device_type(iter->i915) & (d)) { \
+		ret = iter->do_mmio(i915_mmio_reg_offset(reg), \
+			f, s, am, rm, d, iter); \
+		if (ret) \
+			return ret; \
+	} \
+} while (0)

-:2291: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#2291: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:74:
+#define MMIO_F(reg, s, f, am, rm, d) do { \
+	if (intel_gvt_get_device_type(iter->i915) & (d)) { \
+		ret = iter->do_mmio(i915_mmio_reg_offset(reg), \
+			f, s, am, rm, d, iter); \
+		if (ret) \
+			return ret; \
+	} \
+} while (0)

-:2309: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2309: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:92:
+#define MMIO_RO(reg, d, f, rm) \
+	MMIO_F(reg, 4, F_RO | f, 0, rm, d)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'prefix' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 's' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'f' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'am' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rm' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2312: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#2312: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:95:
+#define MMIO_RING_F(prefix, s, f, am, rm, d) do { \
+	MMIO_F(prefix(RENDER_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d); \
+	MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d); \
+	if (HAS_ENGINE(to_gt(iter->i915), VCS1)) \
+		MMIO_F(prefix(GEN8_BSD2_RING_BASE), s, f, am, rm, d); \
+} while (0)

-:2333: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'f' may be better as '(f)' to avoid precedence issues
#2333: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:116:
+#define MMIO_RING_RO(prefix, d, f, rm) \
+	MMIO_RING_F(prefix, 4, F_RO | f, 0, rm, d)

-:2377: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2377: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:160:
+	MMIO_RING_DF(RING_REG, D_ALL,
+		F_MODE_MASK | F_CMD_ACCESS | F_CMD_WRITE_PATCH);

-:3076: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3076: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:859:
+	MMIO_RING_F(RING_REG, 4, F_RO, 0,
+		~_MASKED_BIT_ENABLE(RESET_CTL_REQUEST_RESET), D_BDW_PLUS);

-:3141: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3141: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:924:
+	MMIO_F(_MMIO(0x24d0), 48, F_CMD_ACCESS | F_CMD_WRITE_PATCH, 0, 0,
+		D_BDW_PLUS);

-:3527: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'd' - possible side-effects?
#3527: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:1310:
+#define MMIO_BLOCK(reg, s, d) do { \
+	if (intel_gvt_get_device_type(iter->i915) & d) { \
+		ret = iter->do_mmio_block(i915_mmio_reg_offset(reg), s, \
+					  d, iter); \
+		if (ret) \
+			return ret; \
+	} \
+} while (0)

-:3527: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'd' may be better as '(d)' to avoid precedence issues
#3527: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:1310:
+#define MMIO_BLOCK(reg, s, d) do { \
+	if (intel_gvt_get_device_type(iter->i915) & d) { \
+		ret = iter->do_mmio_block(i915_mmio_reg_offset(reg), s, \
+					  d, iter); \
+		if (ret) \
+			return ret; \
+	} \
+} while (0)

-:3527: WARNING:MACRO_WITH_FLOW_CONTROL: Macros with flow control statements should be avoided
#3527: FILE: drivers/gpu/drm/i915/gvt/mmio_table.c:1310:
+#define MMIO_BLOCK(reg, s, d) do { \
+	if (intel_gvt_get_device_type(iter->i915) & d) { \
+		ret = iter->do_mmio_block(i915_mmio_reg_offset(reg), s, \
+					  d, iter); \
+		if (ret) \
+			return ret; \
+	} \
+} while (0)

-:3610: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#3610: FILE: drivers/gpu/drm/i915/gvt/mmio_table.h:1:
+/*

-:3660: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#3660: FILE: drivers/gpu/drm/i915/gvt/mmio_table.h:51:
+	int (*do_mmio_block)(u32 offset, u32 size, u32 device,
+		       struct intel_gvt_mmio_table_iter *iter);

total: 0 errors, 6 warnings, 25 checks, 3580 lines checked
edadf6a1e2bf i915/gvt: save the initial HW state snapshot in i915.
-:6: WARNING:TYPO_SPELLING: 'inital' may be misspelled - perhaps 'initial'?
#6: 
Save the inital HW state snapshot in i915 so that the rest code of GVT-g
         ^^^^^^

-:64: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#64: FILE: drivers/gpu/drm/i915/intel_gvt.c:111:
+		*(u32 *)(mmio + i) = intel_uncore_read_notrace(

-:148: WARNING:TYPO_SPELLING: 'inital' may be misspelled - perhaps 'initial'?
#148: FILE: drivers/gpu/drm/i915/intel_gvt.c:217:
+		drm_dbg(&dev_priv->drm, "Fail to save inital HW state\n");
 		                                      ^^^^^^

-:175: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Zhi Wang <zhi.wang.linux@gmail.com>' != 'Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>'

total: 0 errors, 3 warnings, 1 checks, 143 lines checked
bf04983df313 i915/gvt: Use the initial HW state snapshot saved in i915
-:57: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#57: FILE: drivers/gpu/drm/i915/gvt/firmware.c:97:
+	memcpy(gvt->firmware.cfg_space, i915->vgpu.initial_cfg_space,
+			info->cfg_space_size);

-:65: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#65: FILE: drivers/gpu/drm/i915/gvt/firmware.c:103:
+	memcpy(gvt->firmware.mmio, i915->vgpu.initial_mmio,
+			info->mmio_size);

-:71: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email address mismatch: 'From: Zhi Wang <zhi.wang.linux@gmail.com>' != 'Signed-off-by: Zhi Wang <zhi.a.wang@intel.com>'

total: 0 errors, 1 warnings, 2 checks, 48 lines checked


