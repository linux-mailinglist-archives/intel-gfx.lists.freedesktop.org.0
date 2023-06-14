Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCA072F0D8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 02:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7671B10E3FB;
	Wed, 14 Jun 2023 00:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18E0710E3F5;
 Wed, 14 Jun 2023 00:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686701681; x=1718237681;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BQsiLSd1yDDVv6RdfdeyBb30Zc+s7uOo5fE0O0XSSO4=;
 b=N4O30U8N4VKUuym+y21oHStfNjvXTaQZ5H9GaOuby2YNoUIUOwk7zH52
 7nLSgYu6BxSJq19LxRdmCxcIgw7IdouBZnzIhAWwJQMJXRmoq3xNMbISU
 UB3xbOG4CjAXfJ6MXvy6hmGY459s8vm/VW5OF0QEXLR+wID3ZQXAD9IhW
 lUEgcVdIrlvVdq2ivzDqismJhm9jPG46rG9ZxbBaPPo9YRqG17NiwBP1Z
 OaHv5uIxJmT8Reqm6iK80rue+Vfqe7JBfQuMUkJiNld3dSIPUMQP3lPF2
 NvhWLDUv0D1CTU4MIrlCjFLzT9I6kDXbpKzUiXx2imQzrjdTASqm+OlM8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="338836097"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="338836097"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="711842225"
X-IronPort-AV: E=Sophos;i="6.00,241,1681196400"; d="scan'208";a="711842225"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 17:14:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Tue, 13 Jun 2023 17:13:14 -0700
Message-Id: <20230614001315.1552497-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
References: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/2] drm/xe: Move mmio read/write functions to
 xe_mmio.c
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the register read/write apis to xe_mmio.c to prepare for
adding tracing infrastructure for the same. Adding tracing support
in xe_mmio.h messes with the compilation of the display code.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/xe/xe_mmio.c | 113 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/xe/xe_mmio.h | 129 ++++-------------------------------
 2 files changed, 128 insertions(+), 114 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
index 475b14fe4356..70ad1b6a17a0 100644
--- a/drivers/gpu/drm/xe/xe_mmio.c
+++ b/drivers/gpu/drm/xe/xe_mmio.c
@@ -435,6 +435,119 @@ static const struct xe_reg mmio_read_whitelist[] = {
 	RING_TIMESTAMP(RENDER_RING_BASE),
 };
 
+inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	return readb(tile->mmio.regs + reg.addr);
+}
+
+inline void xe_mmio_write32(struct xe_gt *gt,
+			    struct xe_reg reg, u32 val)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	writel(val, tile->mmio.regs + reg.addr);
+}
+
+inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	return readl(tile->mmio.regs + reg.addr);
+}
+
+inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
+			 u32 set)
+{
+	u32 old, reg_val;
+
+	old = xe_mmio_read32(gt, reg);
+	reg_val = (old & ~clr) | set;
+	xe_mmio_write32(gt, reg, reg_val);
+
+	return old;
+}
+
+inline void xe_mmio_write64(struct xe_gt *gt,
+			    struct xe_reg reg, u64 val)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	writeq(val, tile->mmio.regs + reg.addr);
+}
+
+inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
+{
+	struct xe_tile *tile = gt_to_tile(gt);
+
+	if (reg.addr < gt->mmio.adj_limit)
+		reg.addr += gt->mmio.adj_offset;
+
+	return readq(tile->mmio.regs + reg.addr);
+}
+
+inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
+				      struct xe_reg reg, u32 val,
+				      u32 mask, u32 eval)
+{
+	u32 reg_val;
+
+	xe_mmio_write32(gt, reg, val);
+	reg_val = xe_mmio_read32(gt, reg);
+
+	return (reg_val & mask) != eval ? -EINVAL : 0;
+}
+
+inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
+			  u32 mask, u32 timeout_us, u32 *out_val,
+			  bool atomic)
+{
+	ktime_t cur = ktime_get_raw();
+	const ktime_t end = ktime_add_us(cur, timeout_us);
+	int ret = -ETIMEDOUT;
+	s64 wait = 10;
+	u32 read;
+
+	for (;;) {
+		read = xe_mmio_read32(gt, reg);
+		if ((read & mask) == val) {
+			ret = 0;
+			break;
+		}
+
+		cur = ktime_get_raw();
+		if (!ktime_before(cur, end))
+			break;
+
+		if (ktime_after(ktime_add_us(cur, wait), end))
+			wait = ktime_us_delta(end, cur);
+
+		if (atomic)
+			udelay(wait);
+		else
+			usleep_range(wait, wait << 1);
+		wait <<= 1;
+	}
+
+	if (out_val)
+		*out_val = read;
+
+	return ret;
+}
+
 int xe_mmio_ioctl(struct drm_device *dev, void *data,
 		  struct drm_file *file)
 {
diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
index 3c547d78afba..2aa2c01e60dd 100644
--- a/drivers/gpu/drm/xe/xe_mmio.h
+++ b/drivers/gpu/drm/xe/xe_mmio.h
@@ -20,120 +20,21 @@ struct xe_device;
 #define GEN12_LMEM_BAR		2
 
 int xe_mmio_init(struct xe_device *xe);
-
-static inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
-{
-	struct xe_tile *tile = gt_to_tile(gt);
-
-	if (reg.addr < gt->mmio.adj_limit)
-		reg.addr += gt->mmio.adj_offset;
-
-	return readb(tile->mmio.regs + reg.addr);
-}
-
-static inline void xe_mmio_write32(struct xe_gt *gt,
-				   struct xe_reg reg, u32 val)
-{
-	struct xe_tile *tile = gt_to_tile(gt);
-
-	if (reg.addr < gt->mmio.adj_limit)
-		reg.addr += gt->mmio.adj_offset;
-
-	writel(val, tile->mmio.regs + reg.addr);
-}
-
-static inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
-{
-	struct xe_tile *tile = gt_to_tile(gt);
-
-	if (reg.addr < gt->mmio.adj_limit)
-		reg.addr += gt->mmio.adj_offset;
-
-	return readl(tile->mmio.regs + reg.addr);
-}
-
-static inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
-				u32 set)
-{
-	u32 old, reg_val;
-
-	old = xe_mmio_read32(gt, reg);
-	reg_val = (old & ~clr) | set;
-	xe_mmio_write32(gt, reg, reg_val);
-
-	return old;
-}
-
-static inline void xe_mmio_write64(struct xe_gt *gt,
-				   struct xe_reg reg, u64 val)
-{
-	struct xe_tile *tile = gt_to_tile(gt);
-
-	if (reg.addr < gt->mmio.adj_limit)
-		reg.addr += gt->mmio.adj_offset;
-
-	writeq(val, tile->mmio.regs + reg.addr);
-}
-
-static inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
-{
-	struct xe_tile *tile = gt_to_tile(gt);
-
-	if (reg.addr < gt->mmio.adj_limit)
-		reg.addr += gt->mmio.adj_offset;
-
-	return readq(tile->mmio.regs + reg.addr);
-}
-
-static inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
-					     struct xe_reg reg, u32 val,
-					     u32 mask, u32 eval)
-{
-	u32 reg_val;
-
-	xe_mmio_write32(gt, reg, val);
-	reg_val = xe_mmio_read32(gt, reg);
-
-	return (reg_val & mask) != eval ? -EINVAL : 0;
-}
-
-static inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
-				 u32 mask, u32 timeout_us, u32 *out_val,
-				 bool atomic)
-{
-	ktime_t cur = ktime_get_raw();
-	const ktime_t end = ktime_add_us(cur, timeout_us);
-	int ret = -ETIMEDOUT;
-	s64 wait = 10;
-	u32 read;
-
-	for (;;) {
-		read = xe_mmio_read32(gt, reg);
-		if ((read & mask) == val) {
-			ret = 0;
-			break;
-		}
-
-		cur = ktime_get_raw();
-		if (!ktime_before(cur, end))
-			break;
-
-		if (ktime_after(ktime_add_us(cur, wait), end))
-			wait = ktime_us_delta(end, cur);
-
-		if (atomic)
-			udelay(wait);
-		else
-			usleep_range(wait, wait << 1);
-		wait <<= 1;
-	}
-
-	if (out_val)
-		*out_val = read;
-
-	return ret;
-}
-
+inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg);
+inline void xe_mmio_write32(struct xe_gt *gt,
+			    struct xe_reg reg, u32 val);
+inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg);
+inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
+			 u32 set);
+inline void xe_mmio_write64(struct xe_gt *gt,
+			    struct xe_reg reg, u64 val);
+inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg);
+inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
+				      struct xe_reg reg, u32 val,
+				      u32 mask, u32 eval);
+inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val,
+			  u32 mask, u32 timeout_us, u32 *out_val,
+			  bool atomic);
 int xe_mmio_ioctl(struct drm_device *dev, void *data,
 		  struct drm_file *file);
 
-- 
2.34.1

