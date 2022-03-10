Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDCA4D3DD7
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18A010E1B7;
	Thu, 10 Mar 2022 00:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA51410E1B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646870724; x=1678406724;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1ZdT2JzqeJ5iyd+Dihmg/GvvXTHn2LLPs1gAkPP/5Zg=;
 b=ecs8QujQIxM1kC00JjC8aZCvIqisEGPR7dOwOP0DgoyQhYzMqrfhazFf
 s9KXgzsDDynmS1iBTsGpoARXnUddK76pWRc3TTUNVVYB92h1ezQ4MGLO1
 AMEvo6V0IDgMDIMESIgKs90KXBpdDo7fJax+3pRQlfLkmKXLEpNnpltmS
 OPMbDAQCFQoskKmuFzgMTj00AKGcdgCKgfszND/LfCX4W/bVBbcsZq+Hy
 P/aYJ2p4VrR6/GTPp/kKHrRGRaRV5qV4qXjjVd3J1+NWkzFqS6vEDsDNo
 f3R1SKlBIAgnWJSIn14Dh+0yOnmFf0iJrhKQXh8rWOhA/QMpdlOIunjfx g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255307170"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="255307170"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:05:24 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="513746970"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:05:23 -0800
Date: Wed, 9 Mar 2022 16:05:23 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220310000523.GB23794@unerlige-ril-10.165.21.154>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-3-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-3-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 02/13] drm/i915/guc: Add XE_LP static
 registers for GuC error capture.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 26, 2022 at 01:55:30AM -0800, Alan Previn wrote:
>Add device specific tables and register lists to cover different engines
>class types for GuC error state capture for XE_LP products.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>

lgtm,
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh

>---
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 116 ++++++++++++++----
> drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   4 +-
> 2 files changed, 97 insertions(+), 23 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 647a118aa3c3..fb3ca734ef97 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -19,43 +19,109 @@
>
> /*
>  * Define all device tables of GuC error capture register lists
>- * NOTE: For engine-registers, GuC only needs the register offsets
>- *       from the engine-mmio-base
>+ * NOTE1: For engine-registers, GuC only needs the register offsets
>+ *        from the engine-mmio-base
>  */
>+#define COMMON_GEN12BASE_GLOBAL() \
>+	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
>+	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
>+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE"}, \
>+	{GEN12_AUX_ERR_DBG,        0,      0, "AUX_ERR_DBG"}, \
>+	{GEN12_GAM_DONE,           0,      0, "GAM_DONE"}, \
>+	{GEN12_RING_FAULT_REG,     0,      0, "FAULT_REG"}
>+
>+#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
>+	{RING_PSMI_CTL(0),         0,      0, "RC PSMI"}, \
>+	{RING_ESR(0),              0,      0, "ESR"}, \
>+	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LDW"}, \
>+	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UDW"}, \
>+	{RING_IPEIR(0),            0,      0, "IPEIR"}, \
>+	{RING_IPEHR(0),            0,      0, "IPEHR"}, \
>+	{RING_INSTPS(0),           0,      0, "INSTPS"}, \
>+	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
>+	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
>+	{RING_BBSTATE(0),          0,      0, "BB_STATE"}, \
>+	{CCID(0),                  0,      0, "CCID"}, \
>+	{RING_ACTHD(0),            0,      0, "ACTHD_LDW"}, \
>+	{RING_ACTHD_UDW(0),        0,      0, "ACTHD_UDW"}, \
>+	{RING_INSTPM(0),           0,      0, "INSTPM"}, \
>+	{RING_INSTDONE(0),         0,      0, "INSTDONE"}, \
>+	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
>+	{RING_START(0),            0,      0, "START"}, \
>+	{RING_HEAD(0),             0,      0, "HEAD"}, \
>+	{RING_TAIL(0),             0,      0, "TAIL"}, \
>+	{RING_CTL(0),              0,      0, "CTL"}, \
>+	{RING_MI_MODE(0),          0,      0, "MODE"}, \
>+	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
>+	{RING_HWS_PGA(0),          0,      0, "HWS"}, \
>+	{RING_MODE_GEN7(0),        0,      0, "GFX_MODE"}, \
>+	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "PDP0_LDW"}, \
>+	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "PDP0_UDW"}, \
>+	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "PDP1_LDW"}, \
>+	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "PDP1_UDW"}, \
>+	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "PDP2_LDW"}, \
>+	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "PDP2_UDW"}, \
>+	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "PDP3_LDW"}, \
>+	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "PDP3_UDW"}
>+
>+#define COMMON_GEN12BASE_HAS_EU() \
>+	{EIR,                      0,      0, "EIR"}
>+
>+#define COMMON_GEN12BASE_RENDER() \
>+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
>+	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
>+	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
>+
>+#define COMMON_GEN12BASE_VEC() \
>+	{GEN12_SFC_DONE(0),        0,      0, "SFC_DONE[0]"}, \
>+	{GEN12_SFC_DONE(1),        0,      0, "SFC_DONE[1]"}, \
>+	{GEN12_SFC_DONE(2),        0,      0, "SFC_DONE[2]"}, \
>+	{GEN12_SFC_DONE(3),        0,      0, "SFC_DONE[3]"}
>+
> /* XE_LPD - Global */
> static const struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
>-	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
>+	COMMON_GEN12BASE_GLOBAL(),
> };
>
> /* XE_LPD - Render / Compute Per-Class */
> static const struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
>-	{EIR,                      0,      0, "EIR"}
>+	COMMON_GEN12BASE_HAS_EU(),
>+	COMMON_GEN12BASE_RENDER(),
> };
>
> /* XE_LPD - Render / Compute Per-Engine-Instance */
> static const struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
>-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> };
>
> /* XE_LPD - Media Decode/Encode Per-Class */
> static const struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
>+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> };
>
> /* XE_LPD - Media Decode/Encode Per-Engine-Instance */
> static const struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
>-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> };
>
> /* XE_LPD - Video Enhancement Per-Class */
> static const struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
>+	COMMON_GEN12BASE_VEC(),
> };
>
> /* XE_LPD - Video Enhancement Per-Engine-Instance */
> static const struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
>-	{RING_HEAD(0),             0,      0, "RING_HEAD"},
>-	{RING_TAIL(0),             0,      0, "RING_TAIL"},
>+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+};
>+
>+/* XE_LPD - Blitter Per-Engine-Instance */
>+static const struct __guc_mmio_reg_descr xe_lpd_blt_inst_regs[] = {
>+	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+};
>+
>+/* XE_LPD - Blitter Per-Class */
>+/* XE_LPD - Media Decode/Encode Per-Class */
>+static const struct __guc_mmio_reg_descr empty_regs_list[] = {
> };
>
> #define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
>@@ -74,10 +140,12 @@ static const struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
> 	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
> 	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
> 	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>-	MAKE_REGLIST(xe_lpd_vd_class_regs, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
> 	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
> 	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> 	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
>+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
>+	MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
> 	{}
> };
>
>@@ -191,20 +259,24 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> 		return -ENODEV;
>
> 	match = guc_capture_get_one_list(reglists, owner, type, classid);
>-	if (match) {
>-		for (i = 0; i < num_entries && i < match->num_regs; ++i) {
>-			ptr[i].offset = match->list[i].reg.reg;
>-			ptr[i].value = 0xDEADF00D;
>-			ptr[i].flags = match->list[i].flags;
>-			ptr[i].mask = match->list[i].mask;
>-		}
>-		return 0;
>+	if (!match) {
>+		guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
>+						classid);
>+		return -ENODATA;
>+	}
>+
>+	for (i = 0; i < num_entries && i < match->num_regs; ++i) {
>+		ptr[i].offset = match->list[i].reg.reg;
>+		ptr[i].value = 0xDEADF00D;
>+		ptr[i].flags = match->list[i].flags;
>+		ptr[i].mask = match->list[i].mask;
> 	}
>
>-	guc_capture_warn_with_list_info(i915, "Missing register list init", owner, type,
>-					classid);
>+	if (i < num_entries)
>+		drm_dbg(&i915->drm, "GuC-capture: Init reglist short %d out %d.\n",
>+			(int)i, (int)num_entries);
>
>-	return -ENODATA;
>+	return 0;
> }
>
> static int
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>index b5f59c6a2424..14ab4c9588ae 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
>@@ -271,10 +271,12 @@ struct guc_mmio_reg {
> 	u32 offset;
> 	u32 value;
> 	u32 flags;
>-	u32 mask;
> #define GUC_REGSET_MASKED		BIT(0)
> #define GUC_REGSET_MASKED_WITH_VALUE	BIT(2)
> #define GUC_REGSET_RESTORE_ONLY		BIT(3)
>+#define GUC_REGSET_STEERING_GROUP       GENMASK(15, 12)
>+#define GUC_REGSET_STEERING_INSTANCE    GENMASK(23, 20)
>+	u32 mask;
> } __packed;
>
> /* GuC register sets */
>-- 
>2.25.1
>
