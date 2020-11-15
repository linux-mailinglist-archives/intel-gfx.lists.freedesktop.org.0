Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C49212B3912
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 21:24:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463E589FA5;
	Sun, 15 Nov 2020 20:23:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C5C189F08
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 20:23:48 +0000 (UTC)
IronPort-SDR: xGpkpHg60LMvHrwK4rjjmHNk/RaKV4X4krSITv62SeODWQBjYEFIPWdBedz1FLFDlOPPtjNqog
 vmBgVqCCxizg==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="167165303"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="167165303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 12:23:48 -0800
IronPort-SDR: svyXYghFq60nDt+JpqFersPlXOFcFCjB3+PDruqTO9/WWZTT8H3j0iZ76kK2TU/49ItoAuJ7A9
 qx5gdq5QTP4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430005343"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 12:23:47 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 12:23:27 -0800
Message-Id: <20201115202347.29224-7-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115202347.29224-1-sean.z.huang@intel.com>
References: <20201115202347.29224-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 07/27] drm/i915/pxp: Add PXP-related registers
 into allowlist
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add several PXP-related reg into allowlist to allow
ring3 driver to read the those register values.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h     |  8 ++++
 drivers/gpu/drm/i915/intel_uncore.c | 57 +++++++++++++++++++++--------
 2 files changed, 50 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index faf6b06145fa..5c51c9df8b28 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12419,4 +12419,12 @@ enum skl_power_gate {
 #define TGL_ROOT_DEVICE_SKU_ULX		0x2
 #define TGL_ROOT_DEVICE_SKU_ULT		0x4
 
+/* Registers for passlist check */
+#define PXP_REG_01_LOWERBOUND		_MMIO(0x32260)
+#define PXP_REG_01_UPPERBOUND		_MMIO(0x32268)
+#define PXP_REG_02_LOWERBOUND		_MMIO(0x32670)
+#define PXP_REG_02_UPPERBOUND		_MMIO(0x32678)
+#define PXP_REG_03_LOWERBOUND		_MMIO(0x32860)
+#define PXP_REG_03_UPPERBOUND		_MMIO(0x32c7c)
+
 #endif /* _I915_REG_H_ */
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index c9ef0025c60e..670856e095c4 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1990,16 +1990,41 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
 }
 
 static const struct reg_allowlist {
-	i915_reg_t offset_ldw;
+	i915_reg_t offset_ldw_lowerbound;
+	i915_reg_t offset_ldw_upperbound;
 	i915_reg_t offset_udw;
 	u16 gen_mask;
 	u8 size;
-} reg_read_allowlist[] = { {
-	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
+} reg_read_allowlist[] = {
+	{
+	.offset_ldw_lowerbound = RING_TIMESTAMP(RENDER_RING_BASE),
+	.offset_ldw_upperbound = RING_TIMESTAMP(RENDER_RING_BASE),
 	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
 	.gen_mask = INTEL_GEN_MASK(4, 12),
 	.size = 8
-} };
+	},
+	{
+	.offset_ldw_lowerbound = PXP_REG_01_LOWERBOUND,
+	.offset_ldw_upperbound = PXP_REG_01_UPPERBOUND,
+	.offset_udw = {0},
+	.gen_mask = INTEL_GEN_MASK(4, 12),
+	.size = 4
+	},
+	{
+	.offset_ldw_lowerbound = PXP_REG_02_LOWERBOUND,
+	.offset_ldw_upperbound = PXP_REG_02_UPPERBOUND,
+	.offset_udw = {0},
+	.gen_mask = INTEL_GEN_MASK(4, 12),
+	.size = 4
+	},
+	{
+	.offset_ldw_lowerbound = PXP_REG_03_LOWERBOUND,
+	.offset_ldw_upperbound = PXP_REG_03_UPPERBOUND,
+	.offset_udw = {0},
+	.gen_mask = INTEL_GEN_MASK(4, 12),
+	.size = 4
+	}
+};
 
 int i915_reg_read_ioctl(struct drm_device *dev,
 			void *data, struct drm_file *file)
@@ -2012,18 +2037,22 @@ int i915_reg_read_ioctl(struct drm_device *dev,
 	unsigned int flags;
 	int remain;
 	int ret = 0;
+	i915_reg_t offset_ldw;
 
 	entry = reg_read_allowlist;
 	remain = ARRAY_SIZE(reg_read_allowlist);
 	while (remain) {
-		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
+		u32 entry_offset_lb = i915_mmio_reg_offset(entry->offset_ldw_lowerbound);
+		u32 entry_offset_ub = i915_mmio_reg_offset(entry->offset_ldw_upperbound);
 
 		GEM_BUG_ON(!is_power_of_2(entry->size));
 		GEM_BUG_ON(entry->size > 8);
-		GEM_BUG_ON(entry_offset & (entry->size - 1));
+		GEM_BUG_ON(entry_offset_lb & (entry->size - 1));
+		GEM_BUG_ON(entry_offset_ub & (entry->size - 1));
 
 		if (INTEL_INFO(i915)->gen_mask & entry->gen_mask &&
-		    entry_offset == (reg->offset & -entry->size))
+		    entry_offset_lb <= (reg->offset & -entry->size) &&
+		    (reg->offset & -entry->size) <= entry_offset_ub)
 			break;
 		entry++;
 		remain--;
@@ -2033,23 +2062,21 @@ int i915_reg_read_ioctl(struct drm_device *dev,
 		return -EINVAL;
 
 	flags = reg->offset & (entry->size - 1);
+	offset_ldw = _MMIO(reg->offset - flags);
 
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		if (entry->size == 8 && flags == I915_REG_READ_8B_WA)
 			reg->val = intel_uncore_read64_2x32(uncore,
-							    entry->offset_ldw,
+							    offset_ldw,
 							    entry->offset_udw);
 		else if (entry->size == 8 && flags == 0)
-			reg->val = intel_uncore_read64(uncore,
-						       entry->offset_ldw);
+			reg->val = intel_uncore_read64(uncore, offset_ldw);
 		else if (entry->size == 4 && flags == 0)
-			reg->val = intel_uncore_read(uncore, entry->offset_ldw);
+			reg->val = intel_uncore_read(uncore, offset_ldw);
 		else if (entry->size == 2 && flags == 0)
-			reg->val = intel_uncore_read16(uncore,
-						       entry->offset_ldw);
+			reg->val = intel_uncore_read16(uncore, offset_ldw);
 		else if (entry->size == 1 && flags == 0)
-			reg->val = intel_uncore_read8(uncore,
-						      entry->offset_ldw);
+			reg->val = intel_uncore_read8(uncore, offset_ldw);
 		else
 			ret = -EINVAL;
 	}
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
