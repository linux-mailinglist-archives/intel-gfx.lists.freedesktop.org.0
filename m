Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6AA6BD18E
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095F210ECFF;
	Thu, 16 Mar 2023 13:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2232710ED00
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974943; x=1710510943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=09XZI25nJwbNtBjHZHJ+F2nR+3SBt21jOrvgVF8enlc=;
 b=J7crPMePcmoJeb27epjVpOostkO5d7VOlQBLh5laNDB88Sy2qCzH3rw7
 EzKPV9jolCcK9zznI/TNIxFbbkvSvrVd6hvOXoY5t+s51s9ZA1pfzSK1e
 +KGjDUNbEqdk77lLOpJnzONMamxv3aATcE7RIF28kdOUZKntQhyvl+3c2
 Nw6wBj3ERgQKYvYEdYAwsv8Moz5eQeE54oB5mTBYiyGDU8p6aKrMtwjyz
 ejbo+lm4IiMeFWj1aLx8eMzVgDRg5aRZeCnGyWykPru2RpKvh9XKdx9Ug
 HzyD6D87p9RRmSKLPxCC4oa5lmI7U/E7RcGE1u8M/F/DnDXni4TBnoCpu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="402872213"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="402872213"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="710113885"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710113885"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.158])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:30:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:29:36 +0200
Message-Id: <d74b3c564b2d080bf689b3360f1a5e62e47f2e7c.1678973283.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1678973282.git.jani.nikula@intel.com>
References: <cover.1678973282.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/dsb: split out DSB regs to a
 separate file
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up i915_reg.h by splitting out DSB regs to
display/intel_dsb_regs.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 67 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 56 ----------------
 3 files changed, 68 insertions(+), 56 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dsb_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 19e422da57dc..bed058d2c3ac 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -11,6 +11,7 @@
 #include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsb.h"
+#include "intel_dsb_regs.h"
 
 struct i915_vma;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
new file mode 100644
index 000000000000..12535d478775
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2023 Intel Corporation
+ */
+
+#ifndef __INTEL_DSB_REGS_H__
+#define __INTEL_DSB_REGS_H__
+
+#include "intel_display_reg_defs.h"
+
+/* This register controls the Display State Buffer (DSB) engines. */
+#define _DSBSL_INSTANCE_BASE		0x70B00
+#define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \
+					 (pipe) * 0x1000 + (id) * 0x100)
+#define DSB_HEAD(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x0)
+#define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x4)
+#define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x8)
+#define   DSB_ENABLE			REG_BIT(31)
+#define   DSB_BUF_REITERATE		REG_BIT(29)
+#define   DSB_WAIT_FOR_VBLANK		REG_BIT(28)
+#define   DSB_WAIT_FOR_LINE_IN		REG_BIT(27)
+#define   DSB_HALT			REG_BIT(16)
+#define   DSB_NON_POSTED		REG_BIT(8)
+#define   DSB_STATUS_BUSY		REG_BIT(0)
+#define DSB_MMIOCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xc)
+#define   DSB_MMIO_DEAD_CLOCKS_ENABLE	REG_BIT(31)
+#define   DSB_MMIO_DEAD_CLOCKS_COUNT_MASK	REG_GENMASK(15, 8)
+#define   DSB_MMIO_DEAD_CLOCKS_COUNT(x)	REG_FIELD_PREP(DSB_MMIO_DEAD_CLOCK_COUNT_MASK, (x))
+#define   DSB_MMIO_CYCLES_MASK		REG_GENMASK(7, 0)
+#define   DSB_MMIO_CYCLES(x)		REG_FIELD_PREP(DSB_MMIO_CYCLES_MASK, (x))
+#define DSB_POLLFUNC(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x10)
+#define   DSB_POLL_ENABLE		REG_BIT(31)
+#define   DSB_POLL_WAIT_MASK		REG_GENMASK(30, 23)
+#define   DSB_POLL_WAIT(x)		REG_FIELD_PREP(DSB_POLL_WAIT_MASK, (x)) /* usec */
+#define   DSB_POLL_COUNT_MASK		REG_GENMASK(22, 15)
+#define   DSB_POLL_COUNT(x)		REG_FIELD_PREP(DSB_POLL_COUNT_MASK, (x))
+#define DSB_DEBUG(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x14)
+#define DSB_POLLMASK(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x1c)
+#define DSB_STATUS(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x24)
+#define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
+#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
+#define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
+#define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
+#define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
+#define   DSB_PROG_INT_EN		REG_BIT(16)
+#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4)
+#define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
+#define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
+#define   DSB_POLL_ERR_INT_STATUS	REG_BIT(1)
+#define   DSB_PROG_INT_STATUS		REG_BIT(0)
+#define DSB_CURRENT_HEAD(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x2c)
+#define DSB_RM_TIMEOUT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x30)
+#define   DSB_RM_CLAIM_TIMEOUT		REG_BIT(31)
+#define   DSB_RM_READY_TIMEOUT		REG_BIT(30)
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT_MASK	REG_GENMASK(23, 16)
+#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /* clocks */
+#define   DSB_RM_READY_TIMEOUT_VALUE_MASK	REG_GENMASK(15, 0)
+#define   DSB_RM_READY_TIMEOUT_VALUE(x)	REG_FIELD_PREP(DSB_RM_READY_TIMEOUT_VALUE, (x)) /* usec */
+#define DSB_RMTIMEOUTREG_CAPTURE(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x34)
+#define DSB_PMCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x38)
+#define DSB_PMCTRL_2(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x3c)
+#define DSB_PF_LN_LOWER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x40)
+#define DSB_PF_LN_UPPER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x44)
+#define DSB_BUFRPT_CNT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x48)
+#define DSB_CHICKEN(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xf0)
+
+#endif /* __INTEL_DSB_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ae6e0b012250..8c763bf84ab1 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6454,62 +6454,6 @@ enum skl_power_gate {
 #define OROM_OFFSET				_MMIO(0x1020c0)
 #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
 
-/* This register controls the Display State Buffer (DSB) engines. */
-#define _DSBSL_INSTANCE_BASE		0x70B00
-#define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \
-					 (pipe) * 0x1000 + (id) * 0x100)
-#define DSB_HEAD(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x0)
-#define DSB_TAIL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x4)
-#define DSB_CTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x8)
-#define   DSB_ENABLE			REG_BIT(31)
-#define   DSB_BUF_REITERATE		REG_BIT(29)
-#define   DSB_WAIT_FOR_VBLANK		REG_BIT(28)
-#define   DSB_WAIT_FOR_LINE_IN		REG_BIT(27)
-#define   DSB_HALT			REG_BIT(16)
-#define   DSB_NON_POSTED		REG_BIT(8)
-#define   DSB_STATUS_BUSY		REG_BIT(0)
-#define DSB_MMIOCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xc)
-#define   DSB_MMIO_DEAD_CLOCKS_ENABLE	REG_BIT(31)
-#define   DSB_MMIO_DEAD_CLOCKS_COUNT_MASK	REG_GENMASK(15, 8)
-#define   DSB_MMIO_DEAD_CLOCKS_COUNT(x)	REG_FIELD_PREP(DSB_MMIO_DEAD_CLOCK_COUNT_MASK, (x))
-#define   DSB_MMIO_CYCLES_MASK		REG_GENMASK(7, 0)
-#define   DSB_MMIO_CYCLES(x)		REG_FIELD_PREP(DSB_MMIO_CYCLES_MASK, (x))
-#define DSB_POLLFUNC(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x10)
-#define   DSB_POLL_ENABLE		REG_BIT(31)
-#define   DSB_POLL_WAIT_MASK		REG_GENMASK(30, 23)
-#define   DSB_POLL_WAIT(x)		REG_FIELD_PREP(DSB_POLL_WAIT_MASK, (x)) /* usec */
-#define   DSB_POLL_COUNT_MASK		REG_GENMASK(22, 15)
-#define   DSB_POLL_COUNT(x)		REG_FIELD_PREP(DSB_POLL_COUNT_MASK, (x))
-#define DSB_DEBUG(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x14)
-#define DSB_POLLMASK(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x1c)
-#define DSB_STATUS(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x24)
-#define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
-#define   DSB_ATS_FAULT_INT_EN		REG_BIT(20)
-#define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
-#define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
-#define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
-#define   DSB_PROG_INT_EN		REG_BIT(16)
-#define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4)
-#define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
-#define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
-#define   DSB_POLL_ERR_INT_STATUS	REG_BIT(1)
-#define   DSB_PROG_INT_STATUS		REG_BIT(0)
-#define DSB_CURRENT_HEAD(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x2c)
-#define DSB_RM_TIMEOUT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x30)
-#define   DSB_RM_CLAIM_TIMEOUT		REG_BIT(31)
-#define   DSB_RM_READY_TIMEOUT		REG_BIT(30)
-#define   DSB_RM_CLAIM_TIMEOUT_COUNT_MASK	REG_GENMASK(23, 16)
-#define   DSB_RM_CLAIM_TIMEOUT_COUNT(x)	REG_FIELD_PREP(DSB_RM_CLAIM_TIMEOUT_COUNT_MASK, (x)) /* clocks */
-#define   DSB_RM_READY_TIMEOUT_VALUE_MASK	REG_GENMASK(15, 0)
-#define   DSB_RM_READY_TIMEOUT_VALUE(x)	REG_FIELD_PREP(DSB_RM_READY_TIMEOUT_VALUE, (x)) /* usec */
-#define DSB_RMTIMEOUTREG_CAPTURE(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x34)
-#define DSB_PMCTRL(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x38)
-#define DSB_PMCTRL_2(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x3c)
-#define DSB_PF_LN_LOWER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x40)
-#define DSB_PF_LN_UPPER(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x44)
-#define DSB_BUFRPT_CNT(pipe, id)	_MMIO(DSBSL_INSTANCE(pipe, id) + 0x48)
-#define DSB_CHICKEN(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0xf0)
-
 #define CLKREQ_POLICY			_MMIO(0x101038)
 #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
 
-- 
2.39.2

