Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AC23FBA16
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 18:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36EB789CA2;
	Mon, 30 Aug 2021 16:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D100B89CA2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 16:26:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10092"; a="279318036"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="279318036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 09:26:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="497802540"
Received: from ayazahma-nuc8i7beh.iind.intel.com ([10.145.162.59])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2021 09:26:02 -0700
From: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 30 Aug 2021 21:52:35 +0530
Message-Id: <20210830162240.3891502-4-ayaz.siddiqui@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V3 3/8] drm/i915/gt: Set CMD_CCTL to UC for
 Gen12 Onward
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

Cache-control registers for Command Stream(CMD_CCTL) are used
to set catchability for memory writes and reads outputted by
Command Streamers on Gen12 onward platforms.

These registers need to point un-cached(UC) MOCS index.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_mocs.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_reg.h      | 16 ++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index c52640523c218..403bd48362b19 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -386,6 +386,17 @@ add_aux_reg(struct drm_i915_aux_table *aux,
 	return x;
 }
 
+static struct drm_i915_aux_table *
+add_cmd_cctl_override(struct drm_i915_aux_table *aux, u8 idx)
+{
+	return add_aux_reg(aux,
+			   REG_ENGINE,
+			   "CMD_CCTL",
+			   RING_CMD_CCTL(0),
+			   CMD_CCTL_MOCS_OVERRIDE(idx, idx),
+			   CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK);
+}
+
 static const struct drm_i915_aux_table *
 build_aux_regs(const struct intel_engine_cs *engine,
 	       const struct drm_i915_mocs_table *mocs)
@@ -400,6 +411,7 @@ build_aux_regs(const struct intel_engine_cs *engine,
 		 * UC MOCS index. We need to call add_aux_reg() to add
 		 * a entry in drm_i915_aux_table link list.
 		 */
+		aux = add_cmd_cctl_override(aux, mocs->uc_index);
 	}
 	return aux;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8d4cf1e203ab7..df7a4550fb50f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2551,6 +2551,22 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define RING_HWS_PGA(base)	_MMIO((base) + 0x80)
 #define RING_ID(base)		_MMIO((base) + 0x8c)
 #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
+
+#define RING_CMD_CCTL(base)	_MMIO((base) + 0xc4)
+/*
+ * CMD_CCTL read/write fields take a MOCS value and _not_ a table index.
+ * The lsb of each can be considered a separate enabling bit for encryption.
+ * 6:0 == default MOCS value for reads  =>  6:1 == table index for reads.
+ * 13:7 == default MOCS value for writes => 13:8 == table index for writes.
+ * 15:14 == Reserved => 31:30 are set to 0.
+ */
+#define CMD_CCTL_WRITE_OVERRIDE_MASK REG_GENMASK(13, 7)
+#define CMD_CCTL_READ_OVERRIDE_MASK REG_GENMASK(6, 0)
+#define CMD_CCTL_MOCS_OVERRIDE(write, read)					\
+	_MASKED_FIELD(CMD_CCTL_WRITE_OVERRIDE_MASK | CMD_CCTL_READ_OVERRIDE_MASK, \
+		      REG_FIELD_PREP(CMD_CCTL_WRITE_OVERRIDE_MASK, (write) << 1) | \
+		      REG_FIELD_PREP(CMD_CCTL_READ_OVERRIDE_MASK, (read) << 1))
+
 #define RING_RESET_CTL(base)	_MMIO((base) + 0xd0)
 #define   RESET_CTL_CAT_ERROR	   REG_BIT(2)
 #define   RESET_CTL_READY_TO_RESET REG_BIT(1)
-- 
2.26.2

