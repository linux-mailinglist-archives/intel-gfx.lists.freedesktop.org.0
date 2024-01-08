Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09E2827B3C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E86A710E326;
	Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E73F10E339
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wSGDiievd/X/Jxgdi/vRrkQqpkIxcyeD+/GL2g85RjY=;
 b=DKC+8vd2402HMYxmvx8zUcrG2L/tGMM0IYVAGaw4x7WgYxENPVVjFi4L
 MKiiwifCzsm45MC5y0fj4Lynjpmit6J4LIpabt8sYfHr0pdHfYjxejhoU
 UORzrPzatldZvkSTK93wNQfbawMMIqrxFp3gCk4vbO8SrTrrcL0d55UXf
 52lyaiVbwlrYN8443zoXa/BDSXBW1OMgpwt6RSjKQ6m6RPcuqghdcy3UW
 8gjRio3sxg6XeGBSMR4qX1tiXQb/NDeb+/JWQ/jVxvFujdM0NsrBr0zPL
 JDo5Zxmldq0qSmlBu+W1O5zAUBp6HT3i0do+VI9Fa0te1AaOEQGMv3gp2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514130"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514130"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647109"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647109"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 12/15] drm/i915: Make spi_oprom_get_vbt operate on intel_vbt
Date: Mon,  8 Jan 2024 15:05:14 -0800
Message-Id: <20240108230517.1497504-13-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
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

intel_vbt newly introduced, should be used to cache in the vbt
read from spi. Pass intel_vbt to spi read variant to cache intel_vbt
for future reference.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 32 +++++++++++------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 31183ac36c57..5a06879d6825 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2997,13 +2997,14 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
 }
 
-static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
+static void spi_oprom_get_vbt(struct drm_i915_private *i915,
+			      struct intel_vbt *vbt)
 {
 	u32 count, data, found, store = 0;
 	u32 static_region, oprom_offset;
 	u32 oprom_size = 0x200000;
 	u16 vbt_size;
-	u32 *vbt;
+	u32 *header;
 
 	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
 	static_region &= OPTIONROM_SPI_REGIONID_MASK;
@@ -3028,27 +3029,29 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 				  found + offsetof(struct vbt_header, vbt_size));
 	vbt_size &= 0xffff;
 
-	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
-	if (!vbt)
+	header = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
+	if (!header)
 		goto err_not_found;
 
 	for (count = 0; count < vbt_size; count += 4)
-		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
+		*(header + store++) = intel_spi_read(&i915->uncore, found + count);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(header, vbt_size))
 		goto err_free_vbt;
 
-	i915->display.vbt.vbt = vbt;
-	i915->display.vbt.vbt_size = vbt_size;
-	i915->display.vbt.type = I915_VBT_SPI;
+	vbt->vbt = header;
+	vbt->vbt_size = vbt_size;
+	vbt->type = I915_VBT_SPI;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
 
-	return (struct vbt_header *)vbt;
+	return;
 
 err_free_vbt:
 	kfree(vbt);
 err_not_found:
-	return NULL;
+	vbt->vbt = NULL;
+
+	return;
 }
 
 static void oprom_get_vbt(struct drm_i915_private *i915,
@@ -3129,7 +3132,6 @@ void intel_bios_init(struct drm_i915_private *i915)
 {
 	struct intel_vbt *vbt = &i915->display.vbt;
 	struct intel_opregion *opregion = &i915->display.opregion;
-	struct vbt_header *oprom_vbt = NULL;
 	struct vbt_header *header = NULL;
 	const struct bdb_header *bdb;
 	const char * const vbt_type[] = {
@@ -3159,10 +3161,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
 	 * PCI mapping
 	 */
-	if (!vbt->vbt && IS_DGFX(i915)) {
-		oprom_vbt = spi_oprom_get_vbt(i915);
-		vbt->vbt = oprom_vbt;
-	}
+	if (!vbt->vbt && IS_DGFX(i915))
+		spi_oprom_get_vbt(i915, vbt);
 
 	if (!vbt->vbt)
 		oprom_get_vbt(i915, vbt);
-- 
2.34.1

