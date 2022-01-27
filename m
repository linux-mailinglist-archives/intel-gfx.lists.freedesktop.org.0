Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9096A49ED63
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 22:28:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E3510E21B;
	Thu, 27 Jan 2022 21:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF2610E21B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 21:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643318920; x=1674854920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Vhk7JKRL/EQTCv4I2zrm1J66BrdezMxmrjIV+mTIqZE=;
 b=NapDLeW5vQJZK+YnEYrJ9B5m728ozEAp7DZH72kILdD0TfUyTpQ3fPsy
 QCGX+WwOR+efujtujO4bWq+DQidocRSLg122FfJMXW6QLpRmFPRKcQwK2
 WAUs/oxK3YNI/mGLBJt8kpyUS24EyGxZzvX6XJSw0bxW/FNFz8d8gBw0B
 tMzyNPcFwsxBkJGzEaESGzADoS0+BMz89XKPSafsM36vchqGNAaGMxHd2
 AaEB6vzTRuPGhagAQppMVoYlAKiljNSgqme/gKsZ1dPZa131vL08uFSYE
 pZUawHcdYC8ImK2pGacJ8CDq7OnQs0CfIbM4dU9Kzs14CdtqScDR1Ftfb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="227641722"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="227641722"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 13:28:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="478028356"
Received: from orsosgc001.jf.intel.com (HELO orsosgc001.ra.intel.com)
 ([10.165.21.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 13:28:39 -0800
Date: Thu, 27 Jan 2022 13:28:39 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220127212839.GG6489@orsosgc001.ra.intel.com>
References: <20220125020826.2693097-1-matthew.d.roper@intel.com>
 <20220125020826.2693097-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220125020826.2693097-3-matthew.d.roper@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915/perf: Express OA register
 ranges with i915_range
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 24, 2022 at 06:08:22PM -0800, Matt Roper wrote:
>Let's use 'struct i915_range' to express sets of b-counter and mux
>registers in the perf code.  This makes the code more similar to how we
>handle things like multicast register ranges, forcewake tables, shadow
>tables, etc. and also lets us avoid needing symbolic register name
>definitions for the various range end points.  With this change, many of
>the OA register definitions are no longer used in the code, so we can
>drop their #define's for simplicity.
>
>v2:  Drop 'inline' from reg_in_range_table().  (Jani)
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c         | 120 +++++---
> drivers/gpu/drm/i915/i915_perf_oa_regs.h | 360 -----------------------
> 2 files changed, 77 insertions(+), 403 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 20af83517cb1..804e87b6ed0c 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -3864,80 +3864,114 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> 	return false;
> }
>
>-#define ADDR_IN_RANGE(addr, start, end) \
>-	((addr) >= (start) && \
>-	 (addr) <= (end))
>+static bool reg_in_range_table(u32 addr, const struct i915_range *table) {
>+	while (table->start || table->end) {
>+		if (addr >= table->start && addr <= table->end)
>+			return true;
>+
>+		table++;
>+	}
>
>-#define REG_IN_RANGE(addr, start, end) \
>-	((addr) >= i915_mmio_reg_offset(start) && \
>-	 (addr) <= i915_mmio_reg_offset(end))
>+	return false;
>+}
>
> #define REG_EQUAL(addr, mmio) \
> 	((addr) == i915_mmio_reg_offset(mmio))
>
>-static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>-{
>-	return REG_IN_RANGE(addr, OASTARTTRIG1, OASTARTTRIG8) ||
>-	       REG_IN_RANGE(addr, OAREPORTTRIG1, OAREPORTTRIG8) ||
>-	       REG_IN_RANGE(addr, OACEC0_0, OACEC7_1);
>-}
>+static const struct i915_range gen7_oa_b_counters[] = {
>+	{ .start = 0x2710, .end = 0x272c },	/* OASTARTTRIG[1-8] */
>+	{ .start = 0x2740, .end = 0x275c },	/* OAREPORTTRIG[1-8] */
>+	{ .start = 0x2770, .end = 0x27ac },	/* OACEC[0-7][0-1] */
>+	{}
>+};
>+
>+static const struct i915_range gen12_oa_b_counters[] = {
>+	{ .start = 0x2b2c, .end = 0x2b2c },	/* GEN12_OAG_OA_PESS */
>+	{ .start = 0xd900, .end = 0xd91c },	/* GEN12_OAG_OASTARTTRIG[1-8] */
>+	{ .start = 0xd920, .end = 0xd93c },	/* GEN12_OAG_OAREPORTTRIG1[1-8] */
>+	{ .start = 0xd940, .end = 0xd97c },	/* GEN12_OAG_CEC[0-7][0-1] */
>+	{ .start = 0xdc00, .end = 0xdc3c },	/* GEN12_OAG_SCEC[0-7][0-1] */
>+	{ .start = 0xdc40, .end = 0xdc40 },	/* GEN12_OAG_SPCTR_CNF */
>+	{ .start = 0xdc44, .end = 0xdc44 },	/* GEN12_OAA_DBG_REG */
>+	{}
>+};
>+
>+static const struct i915_range gen7_oa_mux_regs[] = {
>+	{ .start = 0x91b8, .end = 0x91cc },	/* OA_PERFCNT[1-2], OA_PERFMATRIX */
>+	{ .start = 0x9800, .end = 0x9888 },	/* MICRO_BP0_0 - NOA_WRITE */
>+	{ .start = 0xe180, .end = 0xe180 },	/* HALF_SLICE_CHICKEN2 */
>+	{}
>+};
>
>-static bool gen7_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>+static const struct i915_range hsw_oa_mux_regs[] = {
>+	{ .start = 0x09e80, .end = 0x09ea4 }, /* HSW_MBVID2_NOA[0-9] */
>+	{ .start = 0x09ec0, .end = 0x09ec0 }, /* HSW_MBVID2_MISR0 */
>+	{ .start = 0x25100, .end = 0x2ff90 },
>+	{}
>+};
>+
>+static const struct i915_range chv_oa_mux_regs[] = {
>+       { .start = 0x182300, .end = 0x1823a4 },
>+       {}
>+};
>+
>+static const struct i915_range gen8_oa_mux_regs[] = {
>+	{ .start = 0x0d00, .end = 0x0d2c },	/* RPM_CONFIG[0-1], NOA_CONFIG[0-8] */
>+	{ .start = 0x20cc, .end = 0x20cc },	/* WAIT_FOR_RC6_EXIT */
>+	{}
>+};
>+
>+static const struct i915_range gen11_oa_mux_regs[] = {
>+	{ .start = 0x91c8, .end = 0x91dc },	/* OA_PERFCNT[3-4] */
>+	{}
>+};
>+
>+static const struct i915_range gen12_oa_mux_regs[] = {
>+	{ .start = 0x0d00, .end = 0x0d2c },	/* RPM_CONFIG[0-1], NOA_CONFIG[0-8] */

The earlier code does not whitelist 0xd08, so I think we need to split the above.

	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */

Everything else lgtm, With the above, this is

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks,
Umesh

>+	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
>+	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
>+	{ .start = 0x20cc, .end = 0x20cc },	/* WAIT_FOR_RC6_EXIT */
>+	{}
>+};
>+
>+static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> {
>-	return REG_EQUAL(addr, HALF_SLICE_CHICKEN2) ||
>-	       REG_IN_RANGE(addr, MICRO_BP0_0, NOA_WRITE) ||
>-	       REG_IN_RANGE(addr, OA_PERFCNT1_LO, OA_PERFCNT2_HI) ||
>-	       REG_IN_RANGE(addr, OA_PERFMATRIX_LO, OA_PERFMATRIX_HI);
>+	return reg_in_range_table(addr, gen7_oa_b_counters);
> }
>
> static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return gen7_is_valid_mux_addr(perf, addr) ||
>-	       REG_EQUAL(addr, WAIT_FOR_RC6_EXIT) ||
>-	       REG_IN_RANGE(addr, RPM_CONFIG0, NOA_CONFIG(8));
>+	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
>+		reg_in_range_table(addr, gen8_oa_mux_regs);
> }
>
> static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return gen8_is_valid_mux_addr(perf, addr) ||
>-	       REG_EQUAL(addr, GEN10_NOA_WRITE_HIGH) ||
>-	       REG_IN_RANGE(addr, OA_PERFCNT3_LO, OA_PERFCNT4_HI);
>+	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
>+		reg_in_range_table(addr, gen8_oa_mux_regs) ||
>+		reg_in_range_table(addr, gen11_oa_mux_regs);
> }
>
> static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return gen7_is_valid_mux_addr(perf, addr) ||
>-	       ADDR_IN_RANGE(addr, 0x25100, 0x2FF90) ||
>-	       REG_IN_RANGE(addr, HSW_MBVID2_NOA0, HSW_MBVID2_NOA9) ||
>-	       REG_EQUAL(addr, HSW_MBVID2_MISR0);
>+	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
>+		reg_in_range_table(addr, hsw_oa_mux_regs);
> }
>
> static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return gen7_is_valid_mux_addr(perf, addr) ||
>-	       ADDR_IN_RANGE(addr, 0x182300, 0x1823A4);
>+	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
>+		reg_in_range_table(addr, chv_oa_mux_regs);
> }
>
> static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> {
>-	return REG_IN_RANGE(addr, GEN12_OAG_OASTARTTRIG1, GEN12_OAG_OASTARTTRIG8) ||
>-	       REG_IN_RANGE(addr, GEN12_OAG_OAREPORTTRIG1, GEN12_OAG_OAREPORTTRIG8) ||
>-	       REG_IN_RANGE(addr, GEN12_OAG_CEC0_0, GEN12_OAG_CEC7_1) ||
>-	       REG_IN_RANGE(addr, GEN12_OAG_SCEC0_0, GEN12_OAG_SCEC7_1) ||
>-	       REG_EQUAL(addr, GEN12_OAA_DBG_REG) ||
>-	       REG_EQUAL(addr, GEN12_OAG_OA_PESS) ||
>-	       REG_EQUAL(addr, GEN12_OAG_SPCTR_CNF);
>+	return reg_in_range_table(addr, gen12_oa_b_counters);
> }
>
> static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> {
>-	return REG_EQUAL(addr, NOA_WRITE) ||
>-	       REG_EQUAL(addr, GEN10_NOA_WRITE_HIGH) ||
>-	       REG_EQUAL(addr, GDT_CHICKEN_BITS) ||
>-	       REG_EQUAL(addr, WAIT_FOR_RC6_EXIT) ||
>-	       REG_EQUAL(addr, RPM_CONFIG0) ||
>-	       REG_EQUAL(addr, RPM_CONFIG1) ||
>-	       REG_IN_RANGE(addr, NOA_CONFIG(0), NOA_CONFIG(8));
>+	return reg_in_range_table(addr, gen12_oa_mux_regs);
> }
>
> static u32 mask_reg_value(u32 reg, u32 val)
>diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>index 5896ed43f5c4..f31c9f13a9fc 100644
>--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
>@@ -131,367 +131,7 @@
> #define  GEN12_OAG_OASTATUS_BUFFER_OVERFLOW  (1 << 1)
> #define  GEN12_OAG_OASTATUS_REPORT_LOST      (1 << 0)
>
>-/*
>- * OA Boolean state
>- */
>-
>-#define OASTARTTRIG1 _MMIO(0x2710)
>-#define OASTARTTRIG1_THRESHOLD_COUNT_MASK_MBZ 0xffff0000
>-#define OASTARTTRIG1_THRESHOLD_MASK	      0xffff
>-
>-#define OASTARTTRIG2 _MMIO(0x2714)
>-#define OASTARTTRIG2_INVERT_A_0 (1 << 0)
>-#define OASTARTTRIG2_INVERT_A_1 (1 << 1)
>-#define OASTARTTRIG2_INVERT_A_2 (1 << 2)
>-#define OASTARTTRIG2_INVERT_A_3 (1 << 3)
>-#define OASTARTTRIG2_INVERT_A_4 (1 << 4)
>-#define OASTARTTRIG2_INVERT_A_5 (1 << 5)
>-#define OASTARTTRIG2_INVERT_A_6 (1 << 6)
>-#define OASTARTTRIG2_INVERT_A_7 (1 << 7)
>-#define OASTARTTRIG2_INVERT_A_8 (1 << 8)
>-#define OASTARTTRIG2_INVERT_A_9 (1 << 9)
>-#define OASTARTTRIG2_INVERT_A_10 (1 << 10)
>-#define OASTARTTRIG2_INVERT_A_11 (1 << 11)
>-#define OASTARTTRIG2_INVERT_A_12 (1 << 12)
>-#define OASTARTTRIG2_INVERT_A_13 (1 << 13)
>-#define OASTARTTRIG2_INVERT_A_14 (1 << 14)
>-#define OASTARTTRIG2_INVERT_A_15 (1 << 15)
>-#define OASTARTTRIG2_INVERT_B_0 (1 << 16)
>-#define OASTARTTRIG2_INVERT_B_1 (1 << 17)
>-#define OASTARTTRIG2_INVERT_B_2 (1 << 18)
>-#define OASTARTTRIG2_INVERT_B_3 (1 << 19)
>-#define OASTARTTRIG2_INVERT_C_0 (1 << 20)
>-#define OASTARTTRIG2_INVERT_C_1 (1 << 21)
>-#define OASTARTTRIG2_INVERT_D_0 (1 << 22)
>-#define OASTARTTRIG2_THRESHOLD_ENABLE	    (1 << 23)
>-#define OASTARTTRIG2_START_TRIG_FLAG_MBZ    (1 << 24)
>-#define OASTARTTRIG2_EVENT_SELECT_0  (1 << 28)
>-#define OASTARTTRIG2_EVENT_SELECT_1  (1 << 29)
>-#define OASTARTTRIG2_EVENT_SELECT_2  (1 << 30)
>-#define OASTARTTRIG2_EVENT_SELECT_3  (1 << 31)
>-
>-#define OASTARTTRIG3 _MMIO(0x2718)
>-#define OASTARTTRIG3_NOA_SELECT_MASK	   0xf
>-#define OASTARTTRIG3_NOA_SELECT_8_SHIFT    0
>-#define OASTARTTRIG3_NOA_SELECT_9_SHIFT    4
>-#define OASTARTTRIG3_NOA_SELECT_10_SHIFT   8
>-#define OASTARTTRIG3_NOA_SELECT_11_SHIFT   12
>-#define OASTARTTRIG3_NOA_SELECT_12_SHIFT   16
>-#define OASTARTTRIG3_NOA_SELECT_13_SHIFT   20
>-#define OASTARTTRIG3_NOA_SELECT_14_SHIFT   24
>-#define OASTARTTRIG3_NOA_SELECT_15_SHIFT   28
>-
>-#define OASTARTTRIG4 _MMIO(0x271c)
>-#define OASTARTTRIG4_NOA_SELECT_MASK	    0xf
>-#define OASTARTTRIG4_NOA_SELECT_0_SHIFT    0
>-#define OASTARTTRIG4_NOA_SELECT_1_SHIFT    4
>-#define OASTARTTRIG4_NOA_SELECT_2_SHIFT    8
>-#define OASTARTTRIG4_NOA_SELECT_3_SHIFT    12
>-#define OASTARTTRIG4_NOA_SELECT_4_SHIFT    16
>-#define OASTARTTRIG4_NOA_SELECT_5_SHIFT    20
>-#define OASTARTTRIG4_NOA_SELECT_6_SHIFT    24
>-#define OASTARTTRIG4_NOA_SELECT_7_SHIFT    28
>-
>-#define OASTARTTRIG5 _MMIO(0x2720)
>-#define OASTARTTRIG5_THRESHOLD_COUNT_MASK_MBZ 0xffff0000
>-#define OASTARTTRIG5_THRESHOLD_MASK	      0xffff
>-
>-#define OASTARTTRIG6 _MMIO(0x2724)
>-#define OASTARTTRIG6_INVERT_A_0 (1 << 0)
>-#define OASTARTTRIG6_INVERT_A_1 (1 << 1)
>-#define OASTARTTRIG6_INVERT_A_2 (1 << 2)
>-#define OASTARTTRIG6_INVERT_A_3 (1 << 3)
>-#define OASTARTTRIG6_INVERT_A_4 (1 << 4)
>-#define OASTARTTRIG6_INVERT_A_5 (1 << 5)
>-#define OASTARTTRIG6_INVERT_A_6 (1 << 6)
>-#define OASTARTTRIG6_INVERT_A_7 (1 << 7)
>-#define OASTARTTRIG6_INVERT_A_8 (1 << 8)
>-#define OASTARTTRIG6_INVERT_A_9 (1 << 9)
>-#define OASTARTTRIG6_INVERT_A_10 (1 << 10)
>-#define OASTARTTRIG6_INVERT_A_11 (1 << 11)
>-#define OASTARTTRIG6_INVERT_A_12 (1 << 12)
>-#define OASTARTTRIG6_INVERT_A_13 (1 << 13)
>-#define OASTARTTRIG6_INVERT_A_14 (1 << 14)
>-#define OASTARTTRIG6_INVERT_A_15 (1 << 15)
>-#define OASTARTTRIG6_INVERT_B_0 (1 << 16)
>-#define OASTARTTRIG6_INVERT_B_1 (1 << 17)
>-#define OASTARTTRIG6_INVERT_B_2 (1 << 18)
>-#define OASTARTTRIG6_INVERT_B_3 (1 << 19)
>-#define OASTARTTRIG6_INVERT_C_0 (1 << 20)
>-#define OASTARTTRIG6_INVERT_C_1 (1 << 21)
>-#define OASTARTTRIG6_INVERT_D_0 (1 << 22)
>-#define OASTARTTRIG6_THRESHOLD_ENABLE	    (1 << 23)
>-#define OASTARTTRIG6_START_TRIG_FLAG_MBZ    (1 << 24)
>-#define OASTARTTRIG6_EVENT_SELECT_4  (1 << 28)
>-#define OASTARTTRIG6_EVENT_SELECT_5  (1 << 29)
>-#define OASTARTTRIG6_EVENT_SELECT_6  (1 << 30)
>-#define OASTARTTRIG6_EVENT_SELECT_7  (1 << 31)
>-
>-#define OASTARTTRIG7 _MMIO(0x2728)
>-#define OASTARTTRIG7_NOA_SELECT_MASK	   0xf
>-#define OASTARTTRIG7_NOA_SELECT_8_SHIFT    0
>-#define OASTARTTRIG7_NOA_SELECT_9_SHIFT    4
>-#define OASTARTTRIG7_NOA_SELECT_10_SHIFT   8
>-#define OASTARTTRIG7_NOA_SELECT_11_SHIFT   12
>-#define OASTARTTRIG7_NOA_SELECT_12_SHIFT   16
>-#define OASTARTTRIG7_NOA_SELECT_13_SHIFT   20
>-#define OASTARTTRIG7_NOA_SELECT_14_SHIFT   24
>-#define OASTARTTRIG7_NOA_SELECT_15_SHIFT   28
>-
>-#define OASTARTTRIG8 _MMIO(0x272c)
>-#define OASTARTTRIG8_NOA_SELECT_MASK	   0xf
>-#define OASTARTTRIG8_NOA_SELECT_0_SHIFT    0
>-#define OASTARTTRIG8_NOA_SELECT_1_SHIFT    4
>-#define OASTARTTRIG8_NOA_SELECT_2_SHIFT    8
>-#define OASTARTTRIG8_NOA_SELECT_3_SHIFT    12
>-#define OASTARTTRIG8_NOA_SELECT_4_SHIFT    16
>-#define OASTARTTRIG8_NOA_SELECT_5_SHIFT    20
>-#define OASTARTTRIG8_NOA_SELECT_6_SHIFT    24
>-#define OASTARTTRIG8_NOA_SELECT_7_SHIFT    28
>-
>-#define OAREPORTTRIG1 _MMIO(0x2740)
>-#define OAREPORTTRIG1_THRESHOLD_MASK 0xffff
>-#define OAREPORTTRIG1_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
>-
>-#define OAREPORTTRIG2 _MMIO(0x2744)
>-#define OAREPORTTRIG2_INVERT_A_0  (1 << 0)
>-#define OAREPORTTRIG2_INVERT_A_1  (1 << 1)
>-#define OAREPORTTRIG2_INVERT_A_2  (1 << 2)
>-#define OAREPORTTRIG2_INVERT_A_3  (1 << 3)
>-#define OAREPORTTRIG2_INVERT_A_4  (1 << 4)
>-#define OAREPORTTRIG2_INVERT_A_5  (1 << 5)
>-#define OAREPORTTRIG2_INVERT_A_6  (1 << 6)
>-#define OAREPORTTRIG2_INVERT_A_7  (1 << 7)
>-#define OAREPORTTRIG2_INVERT_A_8  (1 << 8)
>-#define OAREPORTTRIG2_INVERT_A_9  (1 << 9)
>-#define OAREPORTTRIG2_INVERT_A_10 (1 << 10)
>-#define OAREPORTTRIG2_INVERT_A_11 (1 << 11)
>-#define OAREPORTTRIG2_INVERT_A_12 (1 << 12)
>-#define OAREPORTTRIG2_INVERT_A_13 (1 << 13)
>-#define OAREPORTTRIG2_INVERT_A_14 (1 << 14)
>-#define OAREPORTTRIG2_INVERT_A_15 (1 << 15)
>-#define OAREPORTTRIG2_INVERT_B_0  (1 << 16)
>-#define OAREPORTTRIG2_INVERT_B_1  (1 << 17)
>-#define OAREPORTTRIG2_INVERT_B_2  (1 << 18)
>-#define OAREPORTTRIG2_INVERT_B_3  (1 << 19)
>-#define OAREPORTTRIG2_INVERT_C_0  (1 << 20)
>-#define OAREPORTTRIG2_INVERT_C_1  (1 << 21)
>-#define OAREPORTTRIG2_INVERT_D_0  (1 << 22)
>-#define OAREPORTTRIG2_THRESHOLD_ENABLE	    (1 << 23)
>-#define OAREPORTTRIG2_REPORT_TRIGGER_ENABLE (1 << 31)
>-
>-#define OAREPORTTRIG3 _MMIO(0x2748)
>-#define OAREPORTTRIG3_NOA_SELECT_MASK	    0xf
>-#define OAREPORTTRIG3_NOA_SELECT_8_SHIFT    0
>-#define OAREPORTTRIG3_NOA_SELECT_9_SHIFT    4
>-#define OAREPORTTRIG3_NOA_SELECT_10_SHIFT   8
>-#define OAREPORTTRIG3_NOA_SELECT_11_SHIFT   12
>-#define OAREPORTTRIG3_NOA_SELECT_12_SHIFT   16
>-#define OAREPORTTRIG3_NOA_SELECT_13_SHIFT   20
>-#define OAREPORTTRIG3_NOA_SELECT_14_SHIFT   24
>-#define OAREPORTTRIG3_NOA_SELECT_15_SHIFT   28
>-
>-#define OAREPORTTRIG4 _MMIO(0x274c)
>-#define OAREPORTTRIG4_NOA_SELECT_MASK	    0xf
>-#define OAREPORTTRIG4_NOA_SELECT_0_SHIFT    0
>-#define OAREPORTTRIG4_NOA_SELECT_1_SHIFT    4
>-#define OAREPORTTRIG4_NOA_SELECT_2_SHIFT    8
>-#define OAREPORTTRIG4_NOA_SELECT_3_SHIFT    12
>-#define OAREPORTTRIG4_NOA_SELECT_4_SHIFT    16
>-#define OAREPORTTRIG4_NOA_SELECT_5_SHIFT    20
>-#define OAREPORTTRIG4_NOA_SELECT_6_SHIFT    24
>-#define OAREPORTTRIG4_NOA_SELECT_7_SHIFT    28
>-
>-#define OAREPORTTRIG5 _MMIO(0x2750)
>-#define OAREPORTTRIG5_THRESHOLD_MASK 0xffff
>-#define OAREPORTTRIG5_EDGE_LEVEL_TRIGGER_SELECT_MASK 0xffff0000 /* 0=level */
>-
>-#define OAREPORTTRIG6 _MMIO(0x2754)
>-#define OAREPORTTRIG6_INVERT_A_0  (1 << 0)
>-#define OAREPORTTRIG6_INVERT_A_1  (1 << 1)
>-#define OAREPORTTRIG6_INVERT_A_2  (1 << 2)
>-#define OAREPORTTRIG6_INVERT_A_3  (1 << 3)
>-#define OAREPORTTRIG6_INVERT_A_4  (1 << 4)
>-#define OAREPORTTRIG6_INVERT_A_5  (1 << 5)
>-#define OAREPORTTRIG6_INVERT_A_6  (1 << 6)
>-#define OAREPORTTRIG6_INVERT_A_7  (1 << 7)
>-#define OAREPORTTRIG6_INVERT_A_8  (1 << 8)
>-#define OAREPORTTRIG6_INVERT_A_9  (1 << 9)
>-#define OAREPORTTRIG6_INVERT_A_10 (1 << 10)
>-#define OAREPORTTRIG6_INVERT_A_11 (1 << 11)
>-#define OAREPORTTRIG6_INVERT_A_12 (1 << 12)
>-#define OAREPORTTRIG6_INVERT_A_13 (1 << 13)
>-#define OAREPORTTRIG6_INVERT_A_14 (1 << 14)
>-#define OAREPORTTRIG6_INVERT_A_15 (1 << 15)
>-#define OAREPORTTRIG6_INVERT_B_0  (1 << 16)
>-#define OAREPORTTRIG6_INVERT_B_1  (1 << 17)
>-#define OAREPORTTRIG6_INVERT_B_2  (1 << 18)
>-#define OAREPORTTRIG6_INVERT_B_3  (1 << 19)
>-#define OAREPORTTRIG6_INVERT_C_0  (1 << 20)
>-#define OAREPORTTRIG6_INVERT_C_1  (1 << 21)
>-#define OAREPORTTRIG6_INVERT_D_0  (1 << 22)
>-#define OAREPORTTRIG6_THRESHOLD_ENABLE	    (1 << 23)
>-#define OAREPORTTRIG6_REPORT_TRIGGER_ENABLE (1 << 31)
>-
>-#define OAREPORTTRIG7 _MMIO(0x2758)
>-#define OAREPORTTRIG7_NOA_SELECT_MASK	    0xf
>-#define OAREPORTTRIG7_NOA_SELECT_8_SHIFT    0
>-#define OAREPORTTRIG7_NOA_SELECT_9_SHIFT    4
>-#define OAREPORTTRIG7_NOA_SELECT_10_SHIFT   8
>-#define OAREPORTTRIG7_NOA_SELECT_11_SHIFT   12
>-#define OAREPORTTRIG7_NOA_SELECT_12_SHIFT   16
>-#define OAREPORTTRIG7_NOA_SELECT_13_SHIFT   20
>-#define OAREPORTTRIG7_NOA_SELECT_14_SHIFT   24
>-#define OAREPORTTRIG7_NOA_SELECT_15_SHIFT   28
>-
>-#define OAREPORTTRIG8 _MMIO(0x275c)
>-#define OAREPORTTRIG8_NOA_SELECT_MASK	    0xf
>-#define OAREPORTTRIG8_NOA_SELECT_0_SHIFT    0
>-#define OAREPORTTRIG8_NOA_SELECT_1_SHIFT    4
>-#define OAREPORTTRIG8_NOA_SELECT_2_SHIFT    8
>-#define OAREPORTTRIG8_NOA_SELECT_3_SHIFT    12
>-#define OAREPORTTRIG8_NOA_SELECT_4_SHIFT    16
>-#define OAREPORTTRIG8_NOA_SELECT_5_SHIFT    20
>-#define OAREPORTTRIG8_NOA_SELECT_6_SHIFT    24
>-#define OAREPORTTRIG8_NOA_SELECT_7_SHIFT    28
>-
>-/* Same layout as OASTARTTRIGX */
>-#define GEN12_OAG_OASTARTTRIG1 _MMIO(0xd900)
>-#define GEN12_OAG_OASTARTTRIG2 _MMIO(0xd904)
>-#define GEN12_OAG_OASTARTTRIG3 _MMIO(0xd908)
>-#define GEN12_OAG_OASTARTTRIG4 _MMIO(0xd90c)
>-#define GEN12_OAG_OASTARTTRIG5 _MMIO(0xd910)
>-#define GEN12_OAG_OASTARTTRIG6 _MMIO(0xd914)
>-#define GEN12_OAG_OASTARTTRIG7 _MMIO(0xd918)
>-#define GEN12_OAG_OASTARTTRIG8 _MMIO(0xd91c)
>-
>-/* Same layout as OAREPORTTRIGX */
>-#define GEN12_OAG_OAREPORTTRIG1 _MMIO(0xd920)
>-#define GEN12_OAG_OAREPORTTRIG2 _MMIO(0xd924)
>-#define GEN12_OAG_OAREPORTTRIG3 _MMIO(0xd928)
>-#define GEN12_OAG_OAREPORTTRIG4 _MMIO(0xd92c)
>-#define GEN12_OAG_OAREPORTTRIG5 _MMIO(0xd930)
>-#define GEN12_OAG_OAREPORTTRIG6 _MMIO(0xd934)
>-#define GEN12_OAG_OAREPORTTRIG7 _MMIO(0xd938)
>-#define GEN12_OAG_OAREPORTTRIG8 _MMIO(0xd93c)
>-
>-/* CECX_0 */
>-#define OACEC_COMPARE_LESS_OR_EQUAL	6
>-#define OACEC_COMPARE_NOT_EQUAL		5
>-#define OACEC_COMPARE_LESS_THAN		4
>-#define OACEC_COMPARE_GREATER_OR_EQUAL	3
>-#define OACEC_COMPARE_EQUAL		2
>-#define OACEC_COMPARE_GREATER_THAN	1
>-#define OACEC_COMPARE_ANY_EQUAL		0
>-
>-#define OACEC_COMPARE_VALUE_MASK    0xffff
>-#define OACEC_COMPARE_VALUE_SHIFT   3
>-
>-#define OACEC_SELECT_NOA	(0 << 19)
>-#define OACEC_SELECT_PREV	(1 << 19)
>-#define OACEC_SELECT_BOOLEAN	(2 << 19)
>-
>-/* 11-bit array 0: pass-through, 1: negated */
>-#define GEN12_OASCEC_NEGATE_MASK  0x7ff
>-#define GEN12_OASCEC_NEGATE_SHIFT 21
>-
>-/* CECX_1 */
>-#define OACEC_MASK_MASK		    0xffff
>-#define OACEC_CONSIDERATIONS_MASK   0xffff
>-#define OACEC_CONSIDERATIONS_SHIFT  16
>-
>-#define OACEC0_0 _MMIO(0x2770)
>-#define OACEC0_1 _MMIO(0x2774)
>-#define OACEC1_0 _MMIO(0x2778)
>-#define OACEC1_1 _MMIO(0x277c)
>-#define OACEC2_0 _MMIO(0x2780)
>-#define OACEC2_1 _MMIO(0x2784)
>-#define OACEC3_0 _MMIO(0x2788)
>-#define OACEC3_1 _MMIO(0x278c)
>-#define OACEC4_0 _MMIO(0x2790)
>-#define OACEC4_1 _MMIO(0x2794)
>-#define OACEC5_0 _MMIO(0x2798)
>-#define OACEC5_1 _MMIO(0x279c)
>-#define OACEC6_0 _MMIO(0x27a0)
>-#define OACEC6_1 _MMIO(0x27a4)
>-#define OACEC7_0 _MMIO(0x27a8)
>-#define OACEC7_1 _MMIO(0x27ac)
>-
>-/* Same layout as CECX_Y */
>-#define GEN12_OAG_CEC0_0 _MMIO(0xd940)
>-#define GEN12_OAG_CEC0_1 _MMIO(0xd944)
>-#define GEN12_OAG_CEC1_0 _MMIO(0xd948)
>-#define GEN12_OAG_CEC1_1 _MMIO(0xd94c)
>-#define GEN12_OAG_CEC2_0 _MMIO(0xd950)
>-#define GEN12_OAG_CEC2_1 _MMIO(0xd954)
>-#define GEN12_OAG_CEC3_0 _MMIO(0xd958)
>-#define GEN12_OAG_CEC3_1 _MMIO(0xd95c)
>-#define GEN12_OAG_CEC4_0 _MMIO(0xd960)
>-#define GEN12_OAG_CEC4_1 _MMIO(0xd964)
>-#define GEN12_OAG_CEC5_0 _MMIO(0xd968)
>-#define GEN12_OAG_CEC5_1 _MMIO(0xd96c)
>-#define GEN12_OAG_CEC6_0 _MMIO(0xd970)
>-#define GEN12_OAG_CEC6_1 _MMIO(0xd974)
>-#define GEN12_OAG_CEC7_0 _MMIO(0xd978)
>-#define GEN12_OAG_CEC7_1 _MMIO(0xd97c)
>-
>-/* Same layout as CECX_Y + negate 11-bit array */
>-#define GEN12_OAG_SCEC0_0 _MMIO(0xdc00)
>-#define GEN12_OAG_SCEC0_1 _MMIO(0xdc04)
>-#define GEN12_OAG_SCEC1_0 _MMIO(0xdc08)
>-#define GEN12_OAG_SCEC1_1 _MMIO(0xdc0c)
>-#define GEN12_OAG_SCEC2_0 _MMIO(0xdc10)
>-#define GEN12_OAG_SCEC2_1 _MMIO(0xdc14)
>-#define GEN12_OAG_SCEC3_0 _MMIO(0xdc18)
>-#define GEN12_OAG_SCEC3_1 _MMIO(0xdc1c)
>-#define GEN12_OAG_SCEC4_0 _MMIO(0xdc20)
>-#define GEN12_OAG_SCEC4_1 _MMIO(0xdc24)
>-#define GEN12_OAG_SCEC5_0 _MMIO(0xdc28)
>-#define GEN12_OAG_SCEC5_1 _MMIO(0xdc2c)
>-#define GEN12_OAG_SCEC6_0 _MMIO(0xdc30)
>-#define GEN12_OAG_SCEC6_1 _MMIO(0xdc34)
>-#define GEN12_OAG_SCEC7_0 _MMIO(0xdc38)
>-#define GEN12_OAG_SCEC7_1 _MMIO(0xdc3c)
>-
>-/* OA perf counters */
>-#define OA_PERFCNT1_LO      _MMIO(0x91B8)
>-#define OA_PERFCNT1_HI      _MMIO(0x91BC)
>-#define OA_PERFCNT2_LO      _MMIO(0x91C0)
>-#define OA_PERFCNT2_HI      _MMIO(0x91C4)
>-#define OA_PERFCNT3_LO      _MMIO(0x91C8)
>-#define OA_PERFCNT3_HI      _MMIO(0x91CC)
>-#define OA_PERFCNT4_LO      _MMIO(0x91D8)
>-#define OA_PERFCNT4_HI      _MMIO(0x91DC)
>-
>-#define OA_PERFMATRIX_LO    _MMIO(0x91C8)
>-#define OA_PERFMATRIX_HI    _MMIO(0x91CC)
>-
>-/* NOA (HSW) */
>-#define HSW_MBVID2_NOA0		_MMIO(0x9E80)
>-#define HSW_MBVID2_NOA1		_MMIO(0x9E84)
>-#define HSW_MBVID2_NOA2		_MMIO(0x9E88)
>-#define HSW_MBVID2_NOA3		_MMIO(0x9E8C)
>-#define HSW_MBVID2_NOA4		_MMIO(0x9E90)
>-#define HSW_MBVID2_NOA5		_MMIO(0x9E94)
>-#define HSW_MBVID2_NOA6		_MMIO(0x9E98)
>-#define HSW_MBVID2_NOA7		_MMIO(0x9E9C)
>-#define HSW_MBVID2_NOA8		_MMIO(0x9EA0)
>-#define HSW_MBVID2_NOA9		_MMIO(0x9EA4)
>-
>-#define HSW_MBVID2_MISR0	_MMIO(0x9EC0)
>-
>-/* NOA (Gen8+) */
>-#define NOA_CONFIG(i)	    _MMIO(0x0D0C + (i) * 4)
>-
>-#define GEN12_OAA_DBG_REG _MMIO(0xdc44)
>-#define GEN12_OAG_OA_PESS _MMIO(0x2b2c)
>-#define GEN12_OAG_SPCTR_CNF _MMIO(0xdc40)
>-
> #define GDT_CHICKEN_BITS    _MMIO(0x9840)
> #define   GT_NOA_ENABLE	    0x00000080
>
>-#define NOA_DATA	    _MMIO(0x986C)
>-#define NOA_WRITE	    _MMIO(0x9888)
>-#define GEN10_NOA_WRITE_HIGH _MMIO(0x9884)
>-
> #endif /* __INTEL_PERF_OA_REGS__ */
>-- 
>2.34.1
>
