Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE5AE6D30
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEAE310E606;
	Tue, 24 Jun 2025 17:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cq0l/OFF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A09710E606;
 Tue, 24 Jun 2025 17:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784463; x=1782320463;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9kuMgsdrOioIDvS6rzaAVKc71B4qZ8GXI99HYGeyX7Y=;
 b=Cq0l/OFFZJE/8pQYAbuMw2hvPnrnhjUpLA6NWGXSLPSzIiRT2DqJhDES
 gb4YrkQJo2sflTKs8KO2F6YiX/s4P+3xlLTWDyFMJ7XCrVVmG5pUupPo3
 eeXkXOETBQjQLKOwnT2Qx6ssTlKObog8DA2TxXgMXDbCe8ZX7nRBUG4Xj
 nJ7vSBWOV9aJOmOa38+h2b8JObPsJNLhRUOTH/lwMaJQOw0NRyH8vCPXB
 7P63DdTwFILAcKuyQOwaRDU3UTEvBtE8UDUp5Jx4Ga6W60dq8leVCH4Z5
 i0ugf8HsQpVlM6N0RXdj/Vm7hQp2PiAkR8tshE0/7UKbGJzLdr19+0IJC Q==;
X-CSE-ConnectionGUID: 0SfKrmrJTPyxTjmMKbEaQA==
X-CSE-MsgGUID: 6zu80EeqTJeiWUlZlP8FGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820870"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820870"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:01:02 -0700
X-CSE-ConnectionGUID: pxrYkbrtQfiHnDogd10LKA==
X-CSE-MsgGUID: EiLG6wx4RKKYanZiad7vXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749615"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:01:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:00:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v5 3/9] drm/i915/dmc: Define flip queue related PIPEDMC
 registers
Date: Tue, 24 Jun 2025 20:00:43 +0300
Message-ID: <20250624170049.27284-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add the register definitions for a bunch of flip queue related
PIPEDMC registers.

v2: The layout of flip queue entries changed on PTL
    Bump the DMC_FQ_W2_PTS_CFG_SEL bitfields sizes (Uma)
    Reduce the scanlines to 21 bits for now (Uma)
v3: Also define some undocumented DMC variables we need on PTL
v3: Drop PIPEDMC_FQ_CTRL_BUSY as it seems to no longer exist
    on LNL+
    Fix up some typos

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 190 ++++++++++++++++++
 1 file changed, 190 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index 6f406315dd65..c5aa49921cb9 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -287,6 +287,17 @@ enum pipedmc_event_id {
 #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
 #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
 
+#define _PIPEDMC_LOAD_HTP_A		0x5f000
+#define _PIPEDMC_LOAD_HTP_B		0x5f400
+#define PIPEDMC_LOAD_HTP(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_LOAD_HTP_A, _PIPEDMC_LOAD_HTP_B)
+
+#define _PIPEDMC_CTL_A		0x5f064
+#define _PIPEDMC_CTL_B		0x5f464
+#define PIPEDMC_CTL(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_CTL_A, _PIPEDMC_CTL_B)
+#define   PIPEDMC_HALT			REG_BIT(31)
+#define   PIPEDMC_STEP			REG_BIT(27)
+#define   PIPEDMC_CLOCKGATE		REG_BIT(23)
+
 #define _PIPEDMC_STATUS_A		0x5f06c
 #define _PIPEDMC_STATUS_B		0x5f46c
 #define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_STATUS_A, _PIPEDMC_STATUS_B)
@@ -298,6 +309,138 @@ enum pipedmc_event_id {
 #define   PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE		REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0xff) /* Wa_16018781658:lnl[a0] */
 #define   PIPEDMC_EVT_PENDING		REG_GENMASK(7, 0)
 
+#define _PIPEDMC_FQ_CTRL_A		0x5f078
+#define _PIPEDMC_FQ_CTRL_B		0x5f478
+#define PIPEDMC_FQ_CTRL(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FQ_CTRL_A, _PIPEDMC_FQ_CTRL_B)
+#define   PIPEDMC_FQ_CTRL_ENABLE	REG_BIT(31)
+#define   PIPEDMC_FQ_CTRL_ASYNC		REG_BIT(29)
+#define   PIPEDMC_FQ_CTRL_PREEMPT	REG_BIT(0)
+
+#define _PIPEDMC_FQ_STATUS_A		0x5f098
+#define _PIPEDMC_FQ_STATUS_B		0x5f498
+#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)
+#define   PIPEDMC_FQ_STATUS_BUSY		REG_BIT(31)
+#define   PIPEDMC_FQ_STATUS_W2_LIVE_STATUS	REG_BIT(1)
+#define   PIPEDMC_FQ_STATUS_W1_LIVE_STATUS	REG_BIT(0)
+
+#define _PIPEDMC_FPQ_ATOMIC_TP_A	0x5f0a0
+#define _PIPEDMC_FPQ_ATOMIC_TP_B	0x5f4a0
+#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)
+#define   PIPEDMC_FPQ_PLANEQ_3_TP_MASK	REG_GENMASK(31, 26)
+#define   PIPEDMC_FPQ_PLANEQ_3_TP(tail)	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_3_TP_MASK, (tail))
+#define   PIPEDMC_FPQ_PLANEQ_2_TP_MASK	REG_GENMASK(24, 19)
+#define   PIPEDMC_FPQ_PLANEQ_2_TP(tail)	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_2_TP_MASK, (tail))
+#define   PIPEDMC_FPQ_PLANEQ_1_TP_MASK	REG_GENMASK(17, 12)
+#define   PIPEDMC_FPQ_PLANEQ_1_TP(tail)	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_1_TP_MASK, (tail))
+#define   PIPEDMC_FPQ_FASTQ_TP_MASK	REG_GENMASK(10, 6)
+#define   PIPEDMC_FPQ_FASTQ_TP(tail)	REG_FIELD_PREP(PIPEDMC_FPQ_FASTQ_TP_MASK, (tail))
+#define   PIPEDMC_FPQ_GENERALQ_TP_MASK	REG_GENMASK(4, 0)
+#define   PIPEDMC_FPQ_GENERALQ_TP(tail)	REG_FIELD_PREP(PIPEDMC_FPQ_GENERALQ_TP_MASK, (tail))
+
+#define _PIPEDMC_FPQ_LINES_TO_W1_A	0x5f0a4
+#define _PIPEDMC_FPQ_LINES_TO_W1_B	0x5f4a4
+#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)
+
+#define _PIPEDMC_FPQ_LINES_TO_W2_A	0x5f0a8
+#define _PIPEDMC_FPQ_LINES_TO_W2_B	0x5f4a8
+#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)
+
+#define _PIPEDMC_SCANLINECMP_A		0x5f11c
+#define _PIPEDMC_SCANLINECMP_B		0x5f51c
+#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)
+#define   PIPEDMC_SCANLINECMP_EN	REG_BIT(31)
+#define   PIPEDMC_SCANLINE_NUMBER	REG_GENMASK(20, 0)
+
+#define _PIPEDMC_SCANLINECMPLOWER_A	0x5f120
+#define _PIPEDMC_SCANLINECMPLOWER_B	0x5f520
+#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)
+#define   PIPEDMC_SCANLINEINRANGECMP_EN		REG_BIT(31)
+#define   PIPEDMC_SCANLINEOUTRANGECMP_EN	REG_BIT(30)
+#define   PIPEDMC_SCANLINE_LOWER_MASK		REG_GENMASK(20, 0)
+#define   PIPEDMC_SCANLINE_LOWER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))
+
+#define _PIPEDMC_SCANLINECMPUPPER_A	0x5f124
+#define _PIPEDMC_SCANLINECMPUPPER_B	0x5f524
+#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)
+#define   PIPEDMC_SCANLINE_UPPER_MASK		REG_GENMASK(20, 0)
+#define   PIPEDMC_SCANLINE_UPPER(scanline)	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))
+
+#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
+			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
+			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
+	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
+				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
+				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
+				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
+				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))
+
+#define _PIPEDMC_FPQ1_HP_A		0x5f128
+#define _PIPEDMC_FPQ2_HP_A		0x5f138
+#define _PIPEDMC_FPQ3_HP_A		0x5f168
+#define _PIPEDMC_FPQ4_HP_A		0x5f174
+#define _PIPEDMC_FPQ5_HP_A		0x5f180
+#define _PIPEDMC_FPQ1_HP_B		0x5f528
+#define _PIPEDMC_FPQ2_HP_B		0x5f538
+#define _PIPEDMC_FPQ3_HP_B		0x5f568
+#define _PIPEDMC_FPQ4_HP_B		0x5f574
+#define _PIPEDMC_FPQ5_HP_B		0x5f580
+#define PIPEDMC_FPQ_HP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
+							  _PIPEDMC_FPQ1_HP_A, _PIPEDMC_FPQ2_HP_A, \
+							  _PIPEDMC_FPQ3_HP_A, _PIPEDMC_FPQ4_HP_A, \
+							  _PIPEDMC_FPQ1_HP_B, _PIPEDMC_FPQ2_HP_B, \
+							  _PIPEDMC_FPQ3_HP_B, _PIPEDMC_FPQ4_HP_B)
+
+#define _PIPEDMC_FPQ1_TP_A		0x5f12c
+#define _PIPEDMC_FPQ2_TP_A		0x5f13c
+#define _PIPEDMC_FPQ3_TP_A		0x5f16c
+#define _PIPEDMC_FPQ4_TP_A		0x5f178
+#define _PIPEDMC_FPQ5_TP_A		0x5f184
+#define _PIPEDMC_FPQ1_TP_B		0x5f52c
+#define _PIPEDMC_FPQ2_TP_B		0x5f53c
+#define _PIPEDMC_FPQ3_TP_B		0x5f56c
+#define _PIPEDMC_FPQ4_TP_B		0x5f578
+#define _PIPEDMC_FPQ5_TP_B		0x5f584
+#define PIPEDMC_FPQ_TP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
+							  _PIPEDMC_FPQ1_TP_A, _PIPEDMC_FPQ2_TP_A, \
+							  _PIPEDMC_FPQ3_TP_A, _PIPEDMC_FPQ4_TP_A, \
+							  _PIPEDMC_FPQ1_TP_B, _PIPEDMC_FPQ2_TP_B, \
+							  _PIPEDMC_FPQ3_TP_B, _PIPEDMC_FPQ4_TP_B)
+
+#define _PIPEDMC_FPQ1_CHP_A		0x5f130
+#define _PIPEDMC_FPQ2_CHP_A		0x5f140
+#define _PIPEDMC_FPQ3_CHP_A		0x5f170
+#define _PIPEDMC_FPQ4_CHP_A		0x5f17c
+#define _PIPEDMC_FPQ5_CHP_A		0x5f188
+#define _PIPEDMC_FPQ1_CHP_B		0x5f530
+#define _PIPEDMC_FPQ2_CHP_B		0x5f540
+#define _PIPEDMC_FPQ3_CHP_B		0x5f570
+#define _PIPEDMC_FPQ4_CHP_B		0x5f57c
+#define _PIPEDMC_FPQ5_CHP_B		0x5f588
+#define PIPEDMC_FPQ_CHP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
+							  _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \
+							  _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \
+							  _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \
+							  _PIPEDMC_FPQ3_CHP_B, _PIPEDMC_FPQ4_CHP_B)
+
+#define _PIPEDMC_FPQ_TS_A		0x5f134
+#define _PIPEDMC_FPQ_TS_B		0x5f534
+#define PIPEDMC_FPQ_TS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_TS_A, _PIPEDMC_FPQ_TS_B)
+
+#define _PIPEDMC_SCANLINE_RO_A		0x5f144
+#define _PIPEDMC_SCANLINE_RO_B		0x5f544
+#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)
+
+#define _PIPEDMC_FPQ_CTL1_A		0x5f160
+#define _PIPEDMC_FPQ_CTL1_B		0x5f560
+#define PIPEDMC_FPQ_CTL1(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_CTL1_A, _PIPEDMC_FPQ_CTL1_B)
+#define   PIPEDMC_SW_DMC_WAKE		REG_BIT(0)
+
+#define _PIPEDMC_FPQ_CTL2_A		0x5f164
+#define _PIPEDMC_FPQ_CTL2_B		0x5f564
+#define PIPEDMC_FPQ_CTL2(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_FPQ_CTL2_A, _PIPEDMC_FPQ_CTL2_B)
+#define   PIPEDMC_DMC_INT_AT_DELAYED_VBLANK	REG_BIT(1)
+#define   PIPEDMC_W1_DMC_WAKE			REG_BIT(0)
+
 #define _PIPEDMC_INTERRUPT_A		0x5f190 /* lnl+ */
 #define _PIPEDMC_INTERRUPT_B		0x5f590 /* lnl+ */
 #define PIPEDMC_INTERRUPT(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_INTERRUPT_A, _PIPEDMC_INTERRUPT_B)
@@ -394,4 +537,51 @@ enum pipedmc_event_id {
 #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
 #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
 
+#define DMC_FQ_W2_PTS_CFG_SEL	_MMIO(0x8f240)
+#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK	REG_GENMASK(26, 24)
+#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))
+#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK	REG_GENMASK(18, 16)
+#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))
+#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK	REG_GENMASK(10, 8)
+#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))
+#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK	REG_GENMASK(2, 0)
+#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK, (pipe))
+
+/* plane/general flip queue entries */
+#define PIPEDMC_FQ_RAM(start_mmioaddr, i)	_MMIO((start_mmioaddr) + (i) * 4)
+/* LNL */
+/* DW0 pts */
+/* DW1 head */
+/* DW2 size/etc. */
+#define LNL_FQ_INTERRUPT	REG_BIT(31)
+#define LNL_FQ_DSB_ID_MASK	REG_GENMASK(30, 29)
+#define LNL_FQ_DSB_ID(dsb_id)	REG_FIELD_PREP(LNL_FQ_DSB_ID_MASK, (dsb_id))
+#define LNL_FQ_EXECUTED		REG_BIT(28)
+#define LNL_FQ_DSB_SIZE_MASK	REG_GENMASK(15, 0)
+#define LNL_FQ_DSB_SIZE(size)	REG_FIELD_PREP(LNL_FQ_DSB_SIZE_MASK, (size))
+/* DW3 reserved (plane queues) */
+/* DW3 second DSB head (general queue) */
+/* DW4 second DSB size/etc. (general queue) */
+/* DW5 reserved (general queue) */
+
+/* PTL+ */
+/* DW0 pts */
+/* DW1 reserved */
+/* DW2 size/etc. */
+#define PTL_FQ_INTERRUPT	REG_BIT(31)
+#define PTL_FQ_NEED_PUSH	REG_BIT(30)
+#define PTL_FQ_BLOCK_PUSH	REG_BIT(29)
+#define PTL_FQ_EXECUTED		REG_BIT(28)
+#define PTL_FQ_DSB_ID_MASK	REG_GENMASK(25, 24)
+#define PTL_FQ_DSB_ID(dsb_id)	REG_FIELD_PREP(PTL_FQ_DSB_ID_MASK, (dsb_id))
+#define PTL_FQ_DSB_SIZE_MASK	REG_GENMASK(15, 0)
+#define PTL_FQ_DSB_SIZE(size)	REG_FIELD_PREP(PTL_FQ_DSB_SIZE_MASK, (size))
+/* DW3 head */
+/* DW4 second DSB size/etc. (general queue) */
+/* DW5 second DSB head (general queue) */
+
+/* undocumented magic DMC variables */
+#define PTL_PIPEDMC_EXEC_TIME_LINES(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6b8)
+#define PTL_PIPEDMC_END_OF_EXEC_GB(start_mmioaddr) _MMIO((start_mmioaddr) + 0x6c0)
+
 #endif /* __INTEL_DMC_REGS_H__ */
-- 
2.49.0

