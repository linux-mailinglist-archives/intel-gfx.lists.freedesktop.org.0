Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A19C85CAC8
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 23:33:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9391910E595;
	Tue, 20 Feb 2024 22:33:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDeV0c9o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3BBF10E595
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 22:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708468396; x=1740004396;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RGZyOa8jAkZuIos3TEYhftWLCjool+Aa9oSV9PQY00k=;
 b=RDeV0c9oC3M5cpN/mSFhXGdmY31Hik4LVNS88Gqqf/sBDkM6KS0gXfhS
 jTxYaSzpsamg4mn8Kz2YH/rtXZwW9kc9PJZ2LFaIv38uzASpn/aIT00dX
 6kmeraSaOY+aH5huwtCH5TboShGFXQ+RLqtnB6F+1HrRoZQGNWJfu5Ooy
 VEzsxpzLRZyeIF6saHr/Y+DI5p31A2ZIKcjHl/o38+C5QwCrD9uKq6MmR
 EZtSQ2ii5Y2xU6gpRTdWkROBdsdE4jJ12Ppzo/72HesI3np+MVN5jumZT
 jbYCFDXX1LzEfpsZUMKK5WcM0bVu7ABn5XlgWfme7bjYeegOsNhxbA39k g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="14006864"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="14006864"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:32:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="4869885"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 14:32:57 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/4] drm/i915: Pass size to oprom_get_vbt
Date: Tue, 20 Feb 2024 14:31:26 -0800
Message-Id: <20240220223129.3822480-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
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

oprom_get_vbt will later be used to show the contents of vbt for which
the size of vbt is needed.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fe52c06271ef..ceb6e4145c62 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3008,38 +3008,39 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	return NULL;
 }
 
-static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
+static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
+					size_t *size)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	void __iomem *p = NULL, *oprom;
 	struct vbt_header *vbt;
 	u16 vbt_size;
-	size_t i, size;
+	size_t i;
 
-	oprom = pci_map_rom(pdev, &size);
+	oprom = pci_map_rom(pdev, size);
 	if (!oprom)
 		return NULL;
 
 	/* Scour memory looking for the VBT signature. */
-	for (i = 0; i + 4 < size; i += 4) {
+	for (i = 0; i + 4 < *size; i += 4) {
 		if (ioread32(oprom + i) != *((const u32 *)"$VBT"))
 			continue;
 
 		p = oprom + i;
-		size -= i;
+		*size -= i;
 		break;
 	}
 
 	if (!p)
 		goto err_unmap_oprom;
 
-	if (sizeof(struct vbt_header) > size) {
+	if (sizeof(struct vbt_header) > *size) {
 		drm_dbg(&i915->drm, "VBT header incomplete\n");
 		goto err_unmap_oprom;
 	}
 
 	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
-	if (vbt_size > size) {
+	if (vbt_size > *size) {
 		drm_dbg(&i915->drm,
 			"VBT incomplete (vbt_size overflows)\n");
 		goto err_unmap_oprom;
@@ -3082,6 +3083,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	const struct vbt_header *vbt;
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
+	size_t size;
 
 	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
 	INIT_LIST_HEAD(&i915->display.vbt.bdb_blocks);
@@ -3106,7 +3108,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	}
 
 	if (!vbt) {
-		oprom_vbt = oprom_get_vbt(i915);
+		oprom_vbt = oprom_get_vbt(i915, &size);
 		vbt = oprom_vbt;
 	}
 
-- 
2.34.1

