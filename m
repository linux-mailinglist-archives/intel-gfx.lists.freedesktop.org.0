Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B08D848A711
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jan 2022 06:16:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0406A11221D;
	Tue, 11 Jan 2022 05:16:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B22A10FF49
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jan 2022 05:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641878166; x=1673414166;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E3FXG1FJ4RoiaCtOJDkHOh3Ze4cV30OqIERfzf+G4VA=;
 b=hqoVApRKKSJK/i3C5pHVZcAiAD0naz1ReyYhPiFtbEwPcwIfotpcV8aU
 t0Ko6RVXiZ7yLoTvsLwyLoW5SCe/kI5JJbJkdQkYiniS1DxKhXSUTWRBj
 lPyxBzx9bdF4u3BTFuzEMiof0DXp65KKRxNShJprhIAuvkKBbcMN9IdKz
 MV+x8kss5dEDIoCDmlzsTjVlXeUKcrU6Lzsad0gx0V/q/+0v2gT/BEpl6
 fZfFQp9Lku600wpZs/0VfH4baGussOd54YpkjVckJ8PrGpSg9h+2Qo/7t
 lh1Mzif171+ne+cXygDCbLq8qetXeHh7r7rVIe0snZiCFBu8JJTW5O/Aa A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10223"; a="243358343"
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="243358343"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
X-IronPort-AV: E=Sophos;i="5.88,279,1635231600"; d="scan'208";a="474399163"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 21:16:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jan 2022 21:15:56 -0800
Message-Id: <20220111051600.3429104-8-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111051600.3429104-1-matthew.d.roper@intel.com>
References: <20220111051600.3429104-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 07/11] drm/i915/gt: Move engine registers to
 their own header
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

Let's start breaking up and cleaning up the massive i915_reg.h file.
We'll start by moving all registers that are defined in relation to an
engine base to their own header.

There are probably a bunch of other "engine registers" that we haven't
moved yet (especially those that belong to the render engine in the
0x2??? range), but this is a relatively straightforward first step.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_engine_cs.c      |   1 +
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
 drivers/gpu/drm/i915/gt/intel_engine_regs.h   | 197 ++++++++++++++++++
 .../drm/i915/gt/intel_execlists_submission.c  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |  15 --
 drivers/gpu/drm/i915/gt/intel_rc6.c           |   1 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   1 +
 drivers/gpu/drm/i915/gt/intel_ring.c          |   1 +
 .../gpu/drm/i915/gt/intel_ring_submission.c   |   1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c   |   1 +
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c  |   1 +
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c      |   1 +
 drivers/gpu/drm/i915/gt/selftest_rps.c        |   1 +
 drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c    |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   3 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
 drivers/gpu/drm/i915/gvt/mmio_context.c       |   1 +
 drivers/gpu/drm/i915/gvt/mmio_context.h       |   1 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |   1 +
 drivers/gpu/drm/i915/i915_gpu_error.c         |   1 +
 drivers/gpu/drm/i915/i915_perf.c              |   1 +
 drivers/gpu/drm/i915/i915_pmu.c               |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 179 +---------------
 drivers/gpu/drm/i915/i915_request.c           |   1 +
 drivers/gpu/drm/i915/intel_pm.c               |   1 +
 drivers/gpu/drm/i915/intel_uncore.c           |   2 +-
 31 files changed, 228 insertions(+), 194 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_engine_regs.h

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 61383830505e..e0e8d228b31f 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -6,6 +6,7 @@
 #include "gen2_engine_cs.h"
 #include "i915_drv.h"
 #include "intel_engine.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
index b388ceeeb1c9..5e65550b4dfb 100644
--- a/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen6_engine_cs.c
@@ -5,6 +5,7 @@
 
 #include "gen6_engine_cs.h"
 #include "intel_engine.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
diff --git a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
index 6e9292918bfc..56999186830b 100644
--- a/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/gen6_ppgtt.c
@@ -9,6 +9,7 @@
 #include "i915_scatterlist.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
+#include "intel_engine_regs.h"
 #include "intel_gt.h"
 
 /* Write pde (index) from the page directory @pd to the page table @pt */
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 548d599c09dc..30c199bb6ce5 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -13,6 +13,7 @@
 #include "intel_context.h"
 #include "intel_engine.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_engine_user.h"
 #include "intel_execlists_submission.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
new file mode 100644
index 000000000000..60511f310767
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -0,0 +1,197 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_ENGINE_REGS__
+#define __INTEL_ENGINE_REGS__
+
+#include "i915_reg_defs.h"
+
+#define RING_TAIL(base)				_MMIO((base) + 0x30)
+#define   TAIL_ADDR				0x001FFFF8
+#define RING_HEAD(base)				_MMIO((base) + 0x34)
+#define   HEAD_WRAP_COUNT			0xFFE00000
+#define   HEAD_WRAP_ONE				0x00200000
+#define   HEAD_ADDR				0x001FFFFC
+#define RING_START(base)			_MMIO((base) + 0x38)
+#define RING_CTL(base)				_MMIO((base) + 0x3c)
+#define   RING_CTL_SIZE(size)			((size) - PAGE_SIZE) /* in bytes -> pages */
+#define   RING_NR_PAGES				0x001FF000
+#define   RING_REPORT_MASK			0x00000006
+#define   RING_REPORT_64K			0x00000002
+#define   RING_REPORT_128K			0x00000004
+#define   RING_NO_REPORT			0x00000000
+#define   RING_VALID_MASK			0x00000001
+#define   RING_VALID				0x00000001
+#define   RING_INVALID				0x00000000
+#define   RING_WAIT_I8XX			(1 << 0) /* gen2, PRBx_HEAD */
+#define   RING_WAIT				(1 << 11) /* gen3+, PRBx_CTL */
+#define   RING_WAIT_SEMAPHORE			(1 << 10) /* gen6+ */
+#define RING_SYNC_0(base)			_MMIO((base) + 0x40)
+#define RING_SYNC_1(base)			_MMIO((base) + 0x44)
+#define RING_SYNC_2(base)			_MMIO((base) + 0x48)
+#define GEN6_RVSYNC				(RING_SYNC_0(RENDER_RING_BASE))
+#define GEN6_RBSYNC				(RING_SYNC_1(RENDER_RING_BASE))
+#define GEN6_RVESYNC				(RING_SYNC_2(RENDER_RING_BASE))
+#define GEN6_VBSYNC				(RING_SYNC_0(GEN6_BSD_RING_BASE))
+#define GEN6_VRSYNC				(RING_SYNC_1(GEN6_BSD_RING_BASE))
+#define GEN6_VVESYNC				(RING_SYNC_2(GEN6_BSD_RING_BASE))
+#define GEN6_BRSYNC				(RING_SYNC_0(BLT_RING_BASE))
+#define GEN6_BVSYNC				(RING_SYNC_1(BLT_RING_BASE))
+#define GEN6_BVESYNC				(RING_SYNC_2(BLT_RING_BASE))
+#define GEN6_VEBSYNC				(RING_SYNC_0(VEBOX_RING_BASE))
+#define GEN6_VERSYNC				(RING_SYNC_1(VEBOX_RING_BASE))
+#define GEN6_VEVSYNC				(RING_SYNC_2(VEBOX_RING_BASE))
+#define RING_PSMI_CTL(base)			_MMIO((base) + 0x50)
+#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
+#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
+#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
+#define   GEN6_BSD_GO_INDICATOR			REG_BIT(4)
+#define   GEN6_BSD_SLEEP_INDICATOR		REG_BIT(3)
+#define   GEN6_BSD_SLEEP_FLUSH_DISABLE		REG_BIT(2)
+#define   GEN6_PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
+#define RING_MAX_IDLE(base)			_MMIO((base) + 0x54)
+#define  PWRCTX_MAXCNT(base)			_MMIO((base) + 0x54)
+#define    IDLE_TIME_MASK			0xFFFFF
+#define RING_ACTHD_UDW(base)			_MMIO((base) + 0x5c)
+#define RING_DMA_FADD_UDW(base)			_MMIO((base) + 0x60) /* gen8+ */
+#define RING_IPEIR(base)			_MMIO((base) + 0x64)
+#define RING_IPEHR(base)			_MMIO((base) + 0x68)
+#define RING_INSTDONE(base)			_MMIO((base) + 0x6c)
+#define RING_INSTPS(base)			_MMIO((base) + 0x70)
+#define RING_DMA_FADD(base)			_MMIO((base) + 0x78)
+#define RING_ACTHD(base)			_MMIO((base) + 0x74)
+#define RING_HWS_PGA(base)			_MMIO((base) + 0x80)
+#define RING_CMD_BUF_CCTL(base)			_MMIO((base) + 0x84)
+#define IPEIR(base)				_MMIO((base) + 0x88)
+#define IPEHR(base)				_MMIO((base) + 0x8c)
+#define RING_ID(base)				_MMIO((base) + 0x8c)
+#define RING_NOPID(base)			_MMIO((base) + 0x94)
+#define RING_HWSTAM(base)			_MMIO((base) + 0x98)
+#define RING_MI_MODE(base)			_MMIO((base) + 0x9c)
+#define RING_IMR(base)				_MMIO((base) + 0xa8)
+#define RING_EIR(base)				_MMIO((base) + 0xb0)
+#define RING_EMR(base)				_MMIO((base) + 0xb4)
+#define RING_ESR(base)				_MMIO((base) + 0xb8)
+#define RING_INSTPM(base)			_MMIO((base) + 0xc0)
+#define RING_CMD_CCTL(base)			_MMIO((base) + 0xc4)
+#define ACTHD(base)				_MMIO((base) + 0xc8)
+#define RING_RESET_CTL(base)			_MMIO((base) + 0xd0)
+#define   RESET_CTL_CAT_ERROR			REG_BIT(2)
+#define   RESET_CTL_READY_TO_RESET		REG_BIT(1)
+#define   RESET_CTL_REQUEST_RESET		REG_BIT(0)
+#define DMA_FADD_I8XX(base)			_MMIO((base) + 0xd0)
+#define RING_BBSTATE(base)			_MMIO((base) + 0x110)
+#define   RING_BB_PPGTT				(1 << 5)
+#define RING_SBBADDR(base)			_MMIO((base) + 0x114) /* hsw+ */
+#define RING_SBBSTATE(base)			_MMIO((base) + 0x118) /* hsw+ */
+#define RING_SBBADDR_UDW(base)			_MMIO((base) + 0x11c) /* gen8+ */
+#define RING_BBADDR(base)			_MMIO((base) + 0x140)
+#define RING_BBADDR_UDW(base)			_MMIO((base) + 0x168) /* gen8+ */
+#define CCID(base)				_MMIO((base) + 0x180)
+#define   CCID_EN				BIT(0)
+#define   CCID_EXTENDED_STATE_RESTORE		BIT(2)
+#define   CCID_EXTENDED_STATE_SAVE		BIT(3)
+#define RING_BB_PER_CTX_PTR(base)		_MMIO((base) + 0x1c0) /* gen8+ */
+#define RING_INDIRECT_CTX(base)			_MMIO((base) + 0x1c4) /* gen8+ */
+#define RING_INDIRECT_CTX_OFFSET(base)		_MMIO((base) + 0x1c8) /* gen8+ */
+#define ECOSKPD(base)				_MMIO((base) + 0x1d0)
+#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
+#define   ECO_GATING_CX_ONLY			REG_BIT(3)
+#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
+#define   ECO_FLIP_DONE				REG_BIT(0)
+#define   GEN6_BLITTER_LOCK_SHIFT		16
+
+#define BLIT_CCTL(base)				_MMIO((base) + 0x204)
+#define   BLIT_CCTL_DST_MOCS_MASK		REG_GENMASK(14, 8)
+#define   BLIT_CCTL_SRC_MOCS_MASK		REG_GENMASK(6, 0)
+#define   BLIT_CCTL_MASK (BLIT_CCTL_DST_MOCS_MASK | \
+			  BLIT_CCTL_SRC_MOCS_MASK)
+#define   BLIT_CCTL_MOCS(dst, src)				       \
+		(REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (dst) << 1) | \
+		 REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (src) << 1))
+
+/*
+ * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
+ * The lsb of each can be considered a separate enabling bit for encryption.
+ * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
+ * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
+ * 15:14 == Reserved => 31:30 are set to 0.
+ */
+#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7)
+#define CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
+#define CMD_CCTL_MOCS_MASK (CMD_CCTL_WRITE_OVERRIDE_MASK | \
+			    CMD_CCTL_READ_OVERRIDE_MASK)
+#define CMD_CCTL_MOCS_OVERRIDE(write, read)				      \
+		(REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
+		 REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
+
+#define RING_PP_DIR_DCLV(base)			_MMIO((base) + 0x220)
+#define   PP_DIR_DCLV_2G			0xffffffff
+#define RING_PP_DIR_BASE(base)			_MMIO((base) + 0x228)
+#define RING_ELSP(base)				_MMIO((base) + 0x230)
+#define RING_EXECLIST_STATUS_LO(base)		_MMIO((base) + 0x234)
+#define RING_EXECLIST_STATUS_HI(base)		_MMIO((base) + 0x234 + 4)
+#define RING_CONTEXT_CONTROL(base)		_MMIO((base) + 0x244)
+#define	  CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT	REG_BIT(0)
+#define   CTX_CTRL_RS_CTX_ENABLE		REG_BIT(1)
+#define	  CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT	REG_BIT(2)
+#define	  CTX_CTRL_INHIBIT_SYN_CTX_SWITCH	REG_BIT(3)
+#define	  GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE	REG_BIT(8)
+#define RING_SEMA_WAIT_POLL(base)		_MMIO((base) + 0x24c)
+#define GEN8_RING_PDP_UDW(base, n)		_MMIO((base) + 0x270 + (n) * 8 + 4)
+#define GEN8_RING_PDP_LDW(base, n)		_MMIO((base) + 0x270 + (n) * 8)
+#define RING_MODE_GEN7(base)			_MMIO((base) + 0x29c)
+#define   GFX_RUN_LIST_ENABLE			(1 << 15)
+#define   GFX_INTERRUPT_STEERING		(1 << 14)
+#define   GFX_TLB_INVALIDATE_EXPLICIT		(1 << 13)
+#define   GFX_SURFACE_FAULT_ENABLE		(1 << 12)
+#define   GFX_REPLAY_MODE			(1 << 11)
+#define   GFX_PSMI_GRANULARITY			(1 << 10)
+#define   GFX_PPGTT_ENABLE			(1 << 9)
+#define   GEN8_GFX_PPGTT_48B			(1 << 7)
+#define   GFX_FORWARD_VBLANK_MASK		(3 << 5)
+#define   GFX_FORWARD_VBLANK_NEVER		(0 << 5)
+#define   GFX_FORWARD_VBLANK_ALWAYS		(1 << 5)
+#define   GFX_FORWARD_VBLANK_COND		(2 << 5)
+#define   GEN11_GFX_DISABLE_LEGACY_MODE		(1 << 3)
+#define RING_TIMESTAMP(base)			_MMIO((base) + 0x358)
+#define RING_TIMESTAMP_UDW(base)		_MMIO((base) + 0x358 + 4)
+#define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
+#define RING_CTX_TIMESTAMP(base)		_MMIO((base) + 0x3a8) /* gen8+ */
+#define RING_FORCE_TO_NONPRIV(base, i)		_MMIO(((base) + 0x4D0) + (i) * 4)
+#define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
+#define   RING_FORCE_TO_NONPRIV_ACCESS_RW	(0 << 28)    /* CFL+ & Gen11+ */
+#define   RING_FORCE_TO_NONPRIV_ACCESS_RD	(1 << 28)
+#define   RING_FORCE_TO_NONPRIV_ACCESS_WR	(2 << 28)
+#define   RING_FORCE_TO_NONPRIV_ACCESS_INVALID	(3 << 28)
+#define   RING_FORCE_TO_NONPRIV_ACCESS_MASK	(3 << 28)
+#define   RING_FORCE_TO_NONPRIV_RANGE_1		(0 << 0)     /* CFL+ & Gen11+ */
+#define   RING_FORCE_TO_NONPRIV_RANGE_4		(1 << 0)
+#define   RING_FORCE_TO_NONPRIV_RANGE_16	(2 << 0)
+#define   RING_FORCE_TO_NONPRIV_RANGE_64	(3 << 0)
+#define   RING_FORCE_TO_NONPRIV_RANGE_MASK	(3 << 0)
+#define   RING_FORCE_TO_NONPRIV_MASK_VALID	\
+	(RING_FORCE_TO_NONPRIV_RANGE_MASK | RING_FORCE_TO_NONPRIV_ACCESS_MASK)
+#define   RING_MAX_NONPRIV_SLOTS  12
+
+#define RING_EXECLIST_SQ_CONTENTS(base)		_MMIO((base) + 0x510)
+#define RING_PP_DIR_BASE_READ(base)		_MMIO((base) + 0x518)
+#define RING_EXECLIST_CONTROL(base)		_MMIO((base) + 0x550)
+#define	  EL_CTRL_LOAD				REG_BIT(0)
+
+/* There are 16 64-bit CS General Purpose Registers per-engine on Gen8+ */
+#define GEN8_RING_CS_GPR(base, n)		_MMIO((base) + 0x600 + (n) * 8)
+#define GEN8_RING_CS_GPR_UDW(base, n)		_MMIO((base) + 0x600 + (n) * 8 + 4)
+
+#define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
+
+#define VDBOX_CGCTL3F10(base)			_MMIO((base) + 0x3f10)
+#define   IECPUNIT_CLKGATE_DIS			REG_BIT(22)
+
+#define VDBOX_CGCTL3F18(base)			_MMIO((base) + 0x3f18)
+#define   ALNUNIT_CLKGATE_DIS			REG_BIT(13)
+
+
+#endif /* __INTEL_ENGINE_REGS__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index be56d0b41892..960a9aaf4f3a 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -116,6 +116,7 @@
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_engine_stats.h"
 #include "intel_execlists_submission.h"
 #include "intel_gt.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 298ff32c8d0c..622cdfed8a8b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -11,6 +11,7 @@
 #include "gem/i915_gem_lmem.h"
 #include "i915_drv.h"
 #include "intel_context.h"
+#include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_buffer_pool.h"
 #include "intel_gt_clock_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 84456ffeb4cd..89a95a125fc8 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 #include "i915_perf.h"
 #include "intel_engine.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_lrc.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
index f785d0ed238f..304000c7e345 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
+++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
@@ -53,21 +53,6 @@
 #define GEN8_EXECLISTS_STATUS_BUF 0x370
 #define GEN11_EXECLISTS_STATUS_BUF2 0x3c0
 
-/* Execlists regs */
-#define RING_ELSP(base)				_MMIO((base) + 0x230)
-#define RING_EXECLIST_STATUS_LO(base)		_MMIO((base) + 0x234)
-#define RING_EXECLIST_STATUS_HI(base)		_MMIO((base) + 0x234 + 4)
-#define RING_CONTEXT_CONTROL(base)		_MMIO((base) + 0x244)
-#define	  CTX_CTRL_ENGINE_CTX_RESTORE_INHIBIT	REG_BIT(0)
-#define   CTX_CTRL_RS_CTX_ENABLE		REG_BIT(1)
-#define	  CTX_CTRL_ENGINE_CTX_SAVE_INHIBIT	REG_BIT(2)
-#define	  CTX_CTRL_INHIBIT_SYN_CTX_SWITCH	REG_BIT(3)
-#define	  GEN12_CTX_CTRL_OAR_CONTEXT_ENABLE	REG_BIT(8)
-#define RING_CONTEXT_STATUS_PTR(base)		_MMIO((base) + 0x3a0)
-#define RING_EXECLIST_SQ_CONTENTS(base)		_MMIO((base) + 0x510)
-#define RING_EXECLIST_CONTROL(base)		_MMIO((base) + 0x550)
-#define	  EL_CTRL_LOAD				REG_BIT(0)
-
 /*
  * The docs specify that the write pointer wraps around after 5h, "After status
  * is written out to the last available status QW at offset 5h, this pointer
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 45891e6f0b98..31ebe3f1765d 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -7,6 +7,7 @@
 
 #include "i915_drv.h"
 #include "i915_vgpu.h"
+#include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_pcode.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index a75ef7bf36c3..6f2821cca409 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -16,6 +16,7 @@
 #include "i915_irq.h"
 #include "intel_breadcrumbs.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_pm.h"
 #include "intel_gt_requests.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
index 2fdd52b62092..723055340c9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring.c
@@ -9,6 +9,7 @@
 #include "i915_drv.h"
 #include "i915_vma.h"
 #include "intel_engine.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_ring.h"
 #include "intel_timeline.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 56c009ecfdf2..a2b7be1d4f5c 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -11,6 +11,7 @@
 #include "i915_mitigations.h"
 #include "intel_breadcrumbs.h"
 #include "intel_context.h"
+#include "intel_engine_regs.h"
 #include "intel_gt.h"
 #include "intel_gt_irq.h"
 #include "intel_reset.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 895939a941d6..6a4372c3a3c5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "intel_context.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_ring.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 8af261831470..0dcb3ed44a73 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -6,6 +6,7 @@
 #include <linux/sort.h>
 
 #include "i915_selftest.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt_clock_utils.h"
 #include "selftest_engine.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index 8bf62a5826cc..be94f863bdef 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -5,6 +5,7 @@
 
 #include <linux/sort.h>
 
+#include "intel_engine_regs.h"
 #include "intel_gt_clock_utils.h"
 
 #include "selftest_llc.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 7ee2513e15f9..bd170ba1cf00 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -8,6 +8,7 @@
 
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt_clock_utils.h"
 #include "intel_gt_pm.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index e2eb686a9763..0410c402f2a3 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -8,6 +8,7 @@
 #include "intel_context.h"
 #include "intel_engine_heartbeat.h"
 #include "intel_engine_pm.h"
+#include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
 #include "intel_gt.h"
 #include "intel_gt_requests.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index 1a1edae67e4e..93a975597b4d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -5,6 +5,7 @@
 
 #include <linux/bsearch.h>
 
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_lrc.h"
 #include "gt/shmem_utils.h"
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9989d121127d..c4f9f051a695 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -9,8 +9,9 @@
 #include "gt/gen8_engine_cs.h"
 #include "gt/intel_breadcrumbs.h"
 #include "gt/intel_context.h"
-#include "gt/intel_engine_pm.h"
 #include "gt/intel_engine_heartbeat.h"
+#include "gt/intel_engine_pm.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_clock_utils.h"
diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index c4118b808268..733e68ea210a 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -37,6 +37,7 @@
 #include <linux/slab.h>
 
 #include "i915_drv.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_lrc.h"
 #include "gt/intel_ring.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index abc81cdc9e5d..99d3534d2bd8 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -35,6 +35,7 @@
 
 #include "i915_drv.h"
 #include "gt/intel_context.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_ring.h"
 #include "gvt.h"
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
index b6b69777af49..128fd7f4d509 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.h
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
@@ -38,6 +38,7 @@
 
 #include <linux/types.h>
 
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_types.h"
 #include "gt/intel_lrc_reg.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index a804373bcd17..96c398051084 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -26,6 +26,7 @@
  */
 
 #include "gt/intel_engine.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 
 #include "i915_cmd_parser.h"
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 5ae812d60abe..edcc2ae6d66c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -41,6 +41,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gem/i915_gem_lmem.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_pm.h"
 
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 298857b69180..14bf1b67aa43 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -197,6 +197,7 @@
 
 #include "gem/i915_gem_context.h"
 #include "gt/intel_engine_pm.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_execlists_submission.h"
 #include "gt/intel_gpu_commands.h"
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index ea655161793e..bf93f9720e0a 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -8,6 +8,7 @@
 
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_pm.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_engine_user.h"
 #include "gt/intel_gt_pm.h"
 #include "gt/intel_rc6.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index b7e03b6e886d..b504d67c2752 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -272,14 +272,6 @@
 #define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
 #define GEN12_SFC_DONE_MAX		4
 
-#define RING_PP_DIR_BASE(base)		_MMIO((base) + 0x228)
-#define RING_PP_DIR_BASE_READ(base)	_MMIO((base) + 0x518)
-#define RING_PP_DIR_DCLV(base)		_MMIO((base) + 0x220)
-#define   PP_DIR_DCLV_2G		0xffffffff
-
-#define GEN8_RING_PDP_UDW(base, n)	_MMIO((base) + 0x270 + (n) * 8 + 4)
-#define GEN8_RING_PDP_LDW(base, n)	_MMIO((base) + 0x270 + (n) * 8)
-
 #define GEN8_R_PWR_CLK_STATE		_MMIO(0x20C8)
 #define   GEN8_RPCS_ENABLE		(1 << 31)
 #define   GEN8_RPCS_S_CNT_ENABLE	(1 << 18)
@@ -2206,71 +2198,8 @@
 #define XEHP_VEBOX3_RING_BASE		0x1e8000
 #define XEHP_VEBOX4_RING_BASE		0x1f8000
 #define BLT_RING_BASE		0x22000
-#define RING_TAIL(base)		_MMIO((base) + 0x30)
-#define RING_HEAD(base)		_MMIO((base) + 0x34)
-#define RING_START(base)	_MMIO((base) + 0x38)
-#define RING_CTL(base)		_MMIO((base) + 0x3c)
-#define   RING_CTL_SIZE(size)	((size) - PAGE_SIZE) /* in bytes -> pages */
-#define RING_SYNC_0(base)	_MMIO((base) + 0x40)
-#define RING_SYNC_1(base)	_MMIO((base) + 0x44)
-#define RING_SYNC_2(base)	_MMIO((base) + 0x48)
-#define GEN6_RVSYNC	(RING_SYNC_0(RENDER_RING_BASE))
-#define GEN6_RBSYNC	(RING_SYNC_1(RENDER_RING_BASE))
-#define GEN6_RVESYNC	(RING_SYNC_2(RENDER_RING_BASE))
-#define GEN6_VBSYNC	(RING_SYNC_0(GEN6_BSD_RING_BASE))
-#define GEN6_VRSYNC	(RING_SYNC_1(GEN6_BSD_RING_BASE))
-#define GEN6_VVESYNC	(RING_SYNC_2(GEN6_BSD_RING_BASE))
-#define GEN6_BRSYNC	(RING_SYNC_0(BLT_RING_BASE))
-#define GEN6_BVSYNC	(RING_SYNC_1(BLT_RING_BASE))
-#define GEN6_BVESYNC	(RING_SYNC_2(BLT_RING_BASE))
-#define GEN6_VEBSYNC	(RING_SYNC_0(VEBOX_RING_BASE))
-#define GEN6_VERSYNC	(RING_SYNC_1(VEBOX_RING_BASE))
-#define GEN6_VEVSYNC	(RING_SYNC_2(VEBOX_RING_BASE))
-#define GEN6_NOSYNC	INVALID_MMIO_REG
-#define RING_PSMI_CTL(base)	_MMIO((base) + 0x50)
-#define   GEN8_RC_SEMA_IDLE_MSG_DISABLE		REG_BIT(12)
-#define   GEN8_FF_DOP_CLOCK_GATE_DISABLE	REG_BIT(10)
-#define   GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE REG_BIT(7)
-#define   GEN6_BSD_GO_INDICATOR			REG_BIT(4)
-#define   GEN6_BSD_SLEEP_INDICATOR		REG_BIT(3)
-#define   GEN6_BSD_SLEEP_FLUSH_DISABLE		REG_BIT(2)
-#define   GEN6_PSMI_SLEEP_MSG_DISABLE		REG_BIT(0)
-#define RING_MAX_IDLE(base)	_MMIO((base) + 0x54)
-#define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
-#define RING_ID(base)		_MMIO((base) + 0x8c)
-#define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
-
-#define RING_CMD_CCTL(base)	_MMIO((base) + 0xc4)
-/*
- * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
- * The lsb of each can be considered a separate enabling bit for encryption.
- * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
- * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
- * 15:14 == Reserved => 31:30 are set to 0.
- */
-#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7)
-#define CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
-#define CMD_CCTL_MOCS_MASK (CMD_CCTL_WRITE_OVERRIDE_MASK | \
-			    CMD_CCTL_READ_OVERRIDE_MASK)
-#define CMD_CCTL_MOCS_OVERRIDE(write, read)				      \
-		(REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
-		 REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
-
-#define BLIT_CCTL(base) _MMIO((base) + 0x204)
-#define   BLIT_CCTL_DST_MOCS_MASK       REG_GENMASK(14, 8)
-#define   BLIT_CCTL_SRC_MOCS_MASK       REG_GENMASK(6, 0)
-#define   BLIT_CCTL_MASK (BLIT_CCTL_DST_MOCS_MASK | \
-			  BLIT_CCTL_SRC_MOCS_MASK)
-#define   BLIT_CCTL_MOCS(dst, src)				       \
-		(REG_FIELD_PREP(BLIT_CCTL_DST_MOCS_MASK, (dst) << 1) | \
-		 REG_FIELD_PREP(BLIT_CCTL_SRC_MOCS_MASK, (src) << 1))
-
-#define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
-#define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
-#define   RESET_CTL_READY_TO_RESET REG_BIT(1)
-#define   RESET_CTL_REQUEST_RESET  REG_BIT(0)
-
-#define RING_SEMA_WAIT_POLL(base) _MMIO((base) + 0x24c)
+
+
 
 #define HSW_GTT_CACHE_EN	_MMIO(0x4024)
 #define   GTT_CACHE_EN_ALL	0xF0007FFF
@@ -2325,52 +2254,9 @@
 #define   AUX_INV		REG_BIT(0)
 #define BLT_HWS_PGA_GEN7	_MMIO(0x04280)
 #define VEBOX_HWS_PGA_GEN7	_MMIO(0x04380)
-#define RING_ACTHD(base)	_MMIO((base) + 0x74)
-#define RING_ACTHD_UDW(base)	_MMIO((base) + 0x5c)
-#define RING_NOPID(base)	_MMIO((base) + 0x94)
-#define RING_IMR(base)		_MMIO((base) + 0xa8)
-#define RING_HWSTAM(base)	_MMIO((base) + 0x98)
-#define RING_TIMESTAMP(base)		_MMIO((base) + 0x358)
-#define RING_TIMESTAMP_UDW(base)	_MMIO((base) + 0x358 + 4)
-#define   TAIL_ADDR		0x001FFFF8
-#define   HEAD_WRAP_COUNT	0xFFE00000
-#define   HEAD_WRAP_ONE		0x00200000
-#define   HEAD_ADDR		0x001FFFFC
-#define   RING_NR_PAGES		0x001FF000
-#define   RING_REPORT_MASK	0x00000006
-#define   RING_REPORT_64K	0x00000002
-#define   RING_REPORT_128K	0x00000004
-#define   RING_NO_REPORT	0x00000000
-#define   RING_VALID_MASK	0x00000001
-#define   RING_VALID		0x00000001
-#define   RING_INVALID		0x00000000
-#define   RING_WAIT_I8XX	(1 << 0) /* gen2, PRBx_HEAD */
-#define   RING_WAIT		(1 << 11) /* gen3+, PRBx_CTL */
-#define   RING_WAIT_SEMAPHORE	(1 << 10) /* gen6+ */
 
 #define GUCPMTIMESTAMP          _MMIO(0xC3E8)
 
-/* There are 16 64-bit CS General Purpose Registers per-engine on Gen8+ */
-#define GEN8_RING_CS_GPR(base, n)	_MMIO((base) + 0x600 + (n) * 8)
-#define GEN8_RING_CS_GPR_UDW(base, n)	_MMIO((base) + 0x600 + (n) * 8 + 4)
-
-#define RING_FORCE_TO_NONPRIV(base, i) _MMIO(((base) + 0x4D0) + (i) * 4)
-#define   RING_FORCE_TO_NONPRIV_ADDRESS_MASK	REG_GENMASK(25, 2)
-#define   RING_FORCE_TO_NONPRIV_ACCESS_RW	(0 << 28)    /* CFL+ & Gen11+ */
-#define   RING_FORCE_TO_NONPRIV_ACCESS_RD	(1 << 28)
-#define   RING_FORCE_TO_NONPRIV_ACCESS_WR	(2 << 28)
-#define   RING_FORCE_TO_NONPRIV_ACCESS_INVALID	(3 << 28)
-#define   RING_FORCE_TO_NONPRIV_ACCESS_MASK	(3 << 28)
-#define   RING_FORCE_TO_NONPRIV_RANGE_1		(0 << 0)     /* CFL+ & Gen11+ */
-#define   RING_FORCE_TO_NONPRIV_RANGE_4		(1 << 0)
-#define   RING_FORCE_TO_NONPRIV_RANGE_16	(2 << 0)
-#define   RING_FORCE_TO_NONPRIV_RANGE_64	(3 << 0)
-#define   RING_FORCE_TO_NONPRIV_RANGE_MASK	(3 << 0)
-#define   RING_FORCE_TO_NONPRIV_MASK_VALID	\
-					(RING_FORCE_TO_NONPRIV_RANGE_MASK \
-					| RING_FORCE_TO_NONPRIV_ACCESS_MASK)
-#define   RING_MAX_NONPRIV_SLOTS  12
-
 #define GEN7_TLB_RD_ADDR	_MMIO(0x4700)
 
 #define GEN9_GAMT_ECO_REG_RW_IA _MMIO(0x4ab0)
@@ -2414,23 +2300,11 @@
 #define   GEN11_MCR_SLICE_MASK		GEN11_MCR_SLICE(0xf)
 #define   GEN11_MCR_SUBSLICE(subslice)	(((subslice) & 0x7) << 24)
 #define   GEN11_MCR_SUBSLICE_MASK	GEN11_MCR_SUBSLICE(0x7)
-#define RING_IPEIR(base)	_MMIO((base) + 0x64)
-#define RING_IPEHR(base)	_MMIO((base) + 0x68)
-#define RING_EIR(base)		_MMIO((base) + 0xb0)
-#define RING_EMR(base)		_MMIO((base) + 0xb4)
-#define RING_ESR(base)		_MMIO((base) + 0xb8)
 /*
  * On GEN4, only the render ring INSTDONE exists and has a different
  * layout than the GEN7+ version.
  * The GEN2 counterpart of this register is GEN2_INSTDONE.
  */
-#define RING_INSTDONE(base)	_MMIO((base) + 0x6c)
-#define RING_INSTPS(base)	_MMIO((base) + 0x70)
-#define RING_DMA_FADD(base)	_MMIO((base) + 0x78)
-#define RING_DMA_FADD_UDW(base)	_MMIO((base) + 0x60) /* gen8+ */
-#define RING_INSTPM(base)	_MMIO((base) + 0xc0)
-#define RING_MI_MODE(base)	_MMIO((base) + 0x9c)
-#define RING_CMD_BUF_CCTL(base) _MMIO((base) + 0x84)
 #define INSTPS		_MMIO(0x2070) /* 965+ only */
 #define GEN4_INSTDONE1	_MMIO(0x207c) /* 965+ only, aka INSTDONE_2 on SNB */
 #define ACTHD_I965	_MMIO(0x2074)
@@ -2439,29 +2313,9 @@
 #define HWS_START_ADDRESS_SHIFT	4
 #define PWRCTXA		_MMIO(0x2088) /* 965GM+ only */
 #define   PWRCTX_EN	(1 << 0)
-#define IPEIR(base)	_MMIO((base) + 0x88)
-#define IPEHR(base)	_MMIO((base) + 0x8c)
 #define GEN2_INSTDONE	_MMIO(0x2090)
 #define NOPID		_MMIO(0x2094)
 #define HWSTAM		_MMIO(0x2098)
-#define DMA_FADD_I8XX(base)	_MMIO((base) + 0xd0)
-#define RING_BBSTATE(base)	_MMIO((base) + 0x110)
-#define   RING_BB_PPGTT		(1 << 5)
-#define RING_SBBADDR(base)	_MMIO((base) + 0x114) /* hsw+ */
-#define RING_SBBSTATE(base)	_MMIO((base) + 0x118) /* hsw+ */
-#define RING_SBBADDR_UDW(base)	_MMIO((base) + 0x11c) /* gen8+ */
-#define RING_BBADDR(base)	_MMIO((base) + 0x140)
-#define RING_BBADDR_UDW(base)	_MMIO((base) + 0x168) /* gen8+ */
-#define RING_BB_PER_CTX_PTR(base)	_MMIO((base) + 0x1c0) /* gen8+ */
-#define RING_INDIRECT_CTX(base)		_MMIO((base) + 0x1c4) /* gen8+ */
-#define RING_INDIRECT_CTX_OFFSET(base)	_MMIO((base) + 0x1c8) /* gen8+ */
-#define RING_CTX_TIMESTAMP(base)	_MMIO((base) + 0x3a8) /* gen8+ */
-
-#define VDBOX_CGCTL3F10(base)		_MMIO((base) + 0x3f10)
-#define   IECPUNIT_CLKGATE_DIS		REG_BIT(22)
-
-#define VDBOX_CGCTL3F18(base)		_MMIO((base) + 0x3f18)
-#define   ALNUNIT_CLKGATE_DIS		REG_BIT(13)
 
 #define ERROR_GEN6	_MMIO(0x40a0)
 #define GEN7_ERR_INT	_MMIO(0x44040)
@@ -2583,22 +2437,6 @@
 	 GEN9_STATE_ACK_TDL1 | GEN9_STATE_ACK_TDL0)
 
 #define GFX_MODE	_MMIO(0x2520)
-#define RING_MODE_GEN7(base)	_MMIO((base) + 0x29c)
-#define   GFX_RUN_LIST_ENABLE		(1 << 15)
-#define   GFX_INTERRUPT_STEERING	(1 << 14)
-#define   GFX_TLB_INVALIDATE_EXPLICIT	(1 << 13)
-#define   GFX_SURFACE_FAULT_ENABLE	(1 << 12)
-#define   GFX_REPLAY_MODE		(1 << 11)
-#define   GFX_PSMI_GRANULARITY		(1 << 10)
-#define   GFX_PPGTT_ENABLE		(1 << 9)
-#define   GEN8_GFX_PPGTT_48B		(1 << 7)
-
-#define   GFX_FORWARD_VBLANK_MASK	(3 << 5)
-#define   GFX_FORWARD_VBLANK_NEVER	(0 << 5)
-#define   GFX_FORWARD_VBLANK_ALWAYS	(1 << 5)
-#define   GFX_FORWARD_VBLANK_COND	(2 << 5)
-
-#define   GEN11_GFX_DISABLE_LEGACY_MODE	(1 << 3)
 
 #define VLV_GU_CTL0	_MMIO(VLV_DISPLAY_BASE + 0x2030)
 #define VLV_GU_CTL1	_MMIO(VLV_DISPLAY_BASE + 0x2034)
@@ -2639,7 +2477,6 @@
 #define   INSTPM_FORCE_ORDERING				(1 << 7) /* GEN6+ */
 #define   INSTPM_TLB_INVALIDATE	(1 << 9)
 #define   INSTPM_SYNC_FLUSH	(1 << 5)
-#define ACTHD(base)	_MMIO((base) + 0xc8)
 #define MEM_MODE	_MMIO(0x20cc)
 #define   MEM_DISPLAY_B_TRICKLE_FEED_DISABLE (1 << 3) /* 830 only */
 #define   MEM_DISPLAY_A_TRICKLE_FEED_DISABLE (1 << 2) /* 830/845 only */
@@ -2778,12 +2615,6 @@
 #define GFX_FLSH_CNTL	_MMIO(0x2170) /* 915+ only */
 #define GFX_FLSH_CNTL_GEN6	_MMIO(0x101008)
 #define   GFX_FLSH_CNTL_EN	(1 << 0)
-#define ECOSKPD(base)		_MMIO((base) + 0x1d0)
-#define   ECO_CONSTANT_BUFFER_SR_DISABLE	REG_BIT(4)
-#define   ECO_GATING_CX_ONLY			REG_BIT(3)
-#define   GEN6_BLITTER_FBC_NOTIFY		REG_BIT(3)
-#define   ECO_FLIP_DONE				REG_BIT(0)
-#define   GEN6_BLITTER_LOCK_SHIFT		16
 
 #define CACHE_MODE_0_GEN7	_MMIO(0x7000) /* IVB+ */
 #define RC_OP_FLUSH_ENABLE (1 << 0)
@@ -3846,10 +3677,6 @@
 /*
  * Logical Context regs
  */
-#define CCID(base)			_MMIO((base) + 0x180)
-#define   CCID_EN			BIT(0)
-#define   CCID_EXTENDED_STATE_RESTORE	BIT(2)
-#define   CCID_EXTENDED_STATE_SAVE	BIT(3)
 /*
  * Notes on SNB/IVB/VLV context size:
  * - Power context is saved elsewhere (LLC or stolen)
@@ -8954,8 +8781,6 @@ enum {
 #define	   RC6_CTX_IN_DRAM			(1 << 0)
 #define  RC6_CTX_BASE				_MMIO(0xD48)
 #define    RC6_CTX_BASE_MASK			0xFFFFFFF0
-#define  PWRCTX_MAXCNT(base)			_MMIO((base) + 0x54)
-#define    IDLE_TIME_MASK			0xFFFFF
 #define  FORCEWAKE				_MMIO(0xA18C)
 #define  FORCEWAKE_VLV				_MMIO(0x1300b0)
 #define  FORCEWAKE_ACK_VLV			_MMIO(0x1300b4)
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 76cf5ac91e94..5d94f86940f7 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -36,6 +36,7 @@
 #include "gt/intel_context.h"
 #include "gt/intel_engine.h"
 #include "gt/intel_engine_heartbeat.h"
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_gpu_commands.h"
 #include "gt/intel_reset.h"
 #include "gt/intel_ring.h"
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 710dee28a014..4ecd995c5cc7 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -43,6 +43,7 @@
 #include "display/intel_sprite.h"
 #include "display/skl_universal_plane.h"
 
+#include "gt/intel_engine_regs.h"
 #include "gt/intel_llc.h"
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index fc25ebf1a593..41d082213e81 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -23,7 +23,7 @@
 
 #include <linux/pm_runtime.h>
 
-#include "gt/intel_lrc_reg.h" /* for shadow reg list */
+#include "gt/intel_engine_regs.h"
 
 #include "i915_drv.h"
 #include "i915_iosf_mbi.h"
-- 
2.34.1

