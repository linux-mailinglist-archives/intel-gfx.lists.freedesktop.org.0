Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64EE14AC943
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 20:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF8610E1D1;
	Mon,  7 Feb 2022 19:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1712610E1D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 19:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644261281; x=1675797281;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I6niMHGxkeQinZaKRBNnXxNKpQdN1hBqLjO3ccZrc8o=;
 b=Ka4CZAAUDVfgQ1PnoZm6HwRhw3obSWpUQZ/l3EH/f1LMB+vHvujPFbLe
 YC9p1uSmPVZ3wrOtAvjmK7Gdqcw8jzESuK2BOS2KAsxXbTh+16piIv5R4
 WZXNnswD2oQV8s2OD2hry7n44SqU5vy9F72R5SZCpgtlvJ9CVYprRa95C
 k8dcLzxm9YJuKySt5Lw/ca+rum0sSrAij+fN6Jk3sX6bzMKKZH2yjsDVN
 LvHJzXzXxk4ldE5K8Sxt+MZuHkpWmLzGmrpqbXxfdcXpun1cw5j/JqugL
 W3FKSXGsg0spkBoQh63fByMIqSg5QYR08itWO2sZMPQOJvRjHzO22AYgE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="228760177"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="228760177"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 11:14:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="700575962"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 11:14:40 -0800
Date: Mon, 7 Feb 2022 11:14:40 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220207191440.GG10302@unerlige-ril-10.165.21.154>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-5-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-5-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 04/10] drm/i915/guc: Add Gen9 registers
 for GuC error state capture.
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

lgtm,

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Umesh

On Wed, Jan 26, 2022 at 02:48:16AM -0800, Alan Previn wrote:
>Abstract out a Gen9 register list as the default for all other
>platforms we don't yet formally support GuC submission on.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 74 +++++++++++++++----
> 1 file changed, 58 insertions(+), 16 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index 19719daffed4..70d2ee841289 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -19,15 +19,24 @@
>  * NOTE: For engine-registers, GuC only needs the register offsets
>  *       from the engine-mmio-base
>  */
>+#define COMMON_BASE_GLOBAL() \
>+	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}
>+
>+#define COMMON_GEN9BASE_GLOBAL() \
>+	{GEN8_FAULT_TLB_DATA0,     0,      0, "GEN8_FAULT_TLB_DATA0"}, \
>+	{GEN8_FAULT_TLB_DATA1,     0,      0, "GEN8_FAULT_TLB_DATA1"}, \
>+	{ERROR_GEN6,               0,      0, "ERROR_GEN6"}, \
>+	{DONE_REG,                 0,      0, "DONE_REG"}, \
>+	{HSW_GTT_CACHE_EN,         0,      0, "HSW_GTT_CACHE_EN"}
>+
> #define COMMON_GEN12BASE_GLOBAL() \
> 	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
> 	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
>-	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}, \
> 	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
> 	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
> 	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
>
>-#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
>+#define COMMON_BASE_ENGINE_INSTANCE() \
> 	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
> 	{RING_ESR(0),              0,      0, "RING_ESR"}, \
> 	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \
>@@ -61,11 +70,13 @@
> 	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "GEN8_RING_PDP3_LDW"}, \
> 	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "GEN8_RING_PDP3_UDW"}
>
>-#define COMMON_GEN12BASE_HAS_EU() \
>+#define COMMON_BASE_HAS_EU() \
> 	{EIR,                      0,      0, "EIR"}
>
>+#define COMMON_BASE_RENDER() \
>+	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}
>+
> #define COMMON_GEN12BASE_RENDER() \
>-	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
> 	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
> 	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
>
>@@ -77,23 +88,26 @@
>
> /* XE_LPD - Global */
> static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
>+	COMMON_BASE_GLOBAL(),
>+	COMMON_GEN9BASE_GLOBAL(),
> 	COMMON_GEN12BASE_GLOBAL(),
> };
>
> /* XE_LPD - Render / Compute Per-Class */
> static struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
>-	COMMON_GEN12BASE_HAS_EU(),
>+	COMMON_BASE_HAS_EU(),
>+	COMMON_BASE_RENDER(),
> 	COMMON_GEN12BASE_RENDER(),
> };
>
>-/* XE_LPD - Render / Compute Per-Engine-Instance */
>+/* GEN9/XE_LPD - Render / Compute Per-Engine-Instance */
> static struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
>-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+	COMMON_BASE_ENGINE_INSTANCE(),
> };
>
>-/* XE_LPD - Media Decode/Encode Per-Engine-Instance */
>+/* GEN9/XE_LPD - Media Decode/Encode Per-Engine-Instance */
> static struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
>-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+	COMMON_BASE_ENGINE_INSTANCE(),
> };
>
> /* XE_LPD - Video Enhancement Per-Class */
>@@ -101,18 +115,33 @@ static struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
> 	COMMON_GEN12BASE_VEC(),
> };
>
>-/* XE_LPD - Video Enhancement Per-Engine-Instance */
>+/* GEN9/XE_LPD - Video Enhancement Per-Engine-Instance */
> static struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
>-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+	COMMON_BASE_ENGINE_INSTANCE(),
> };
>
>-/* XE_LPD - Blitter Per-Engine-Instance */
>+/* GEN9/XE_LPD - Blitter Per-Engine-Instance */
> static struct __guc_mmio_reg_descr xe_lpd_blt_inst_regs[] = {
>-	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>+	COMMON_BASE_ENGINE_INSTANCE(),
>+};
>+
>+/* GEN9 - Global */
>+static struct __guc_mmio_reg_descr default_global_regs[] = {
>+	COMMON_BASE_GLOBAL(),
>+	COMMON_GEN9BASE_GLOBAL(),
> };
>
>-/* XE_LPD - Blitter Per-Class */
>-/* XE_LPD - Media Decode/Encode Per-Class */
>+static struct __guc_mmio_reg_descr default_rc_class_regs[] = {
>+	COMMON_BASE_HAS_EU(),
>+	COMMON_BASE_RENDER(),
>+};
>+
>+/*
>+ * Empty lists:
>+ * GEN9/XE_LPD - Blitter-Class
>+ * GEN9/XE_LPD - Media Class
>+ * GEN9 - VEC Class
>+ */
> static struct __guc_mmio_reg_descr empty_regs_list[] = {
> };
>
>@@ -130,6 +159,18 @@ static struct __guc_mmio_reg_descr empty_regs_list[] = {
> 	}
>
> /* List of lists */
>+static struct __guc_mmio_reg_descr_group default_lists[] = {
>+	MAKE_REGLIST(default_global_regs, PF, GLOBAL, 0),
>+	MAKE_REGLIST(default_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>+	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
>+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>+	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
>+	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
>+	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
>+	MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
>+	{}
>+};
> static struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
> 	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
> 	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>@@ -275,7 +316,8 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
> 		return xe_lpd_lists;
> 	}
>
>-	return NULL;
>+	/* if GuC submission is enabled on a non-POR platform, just use a common baseline */
>+	return default_lists;
> }
>
> static const char *
>-- 
>2.25.1
>
