Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9353827B43
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D14A10E33A;
	Mon,  8 Jan 2024 23:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4887E10E33A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B7v0TjVcPwi5JuREYhIZD9/Hvi+6b30DBMIBHaWGh2g=;
 b=gc9Q40czZIcm7fxvdelln3Zn3dzI5dbqMaDAPullg0dd0cULcVbUbyW9
 6Gv9SxH2boL8pN00DeZryB/0/Ycp/RX70CeC4dDzp0U9XmHw45QpfPDd7
 nkh/FosH6EY8bZPurYsd1NeZ32NY/PMx3PgDlU3S9htCItWK4JeQlbJe3
 8D3VNi7AXsdlwA3+ICgTpktaHQ+uMyTLijfSlx6DgYe84leqF6IB89jEL
 UuedvAkUI6pchiZ59C6ny7r/e3R4HyGJBx8/KNnxqRM4GNIGEqZ27Uh/o
 ELizBfyUYc2jiRwg3g3mEm6wSaHXb5FxOdnM7CIJ2P7y//+4Xar2KhoHz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514133"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514133"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647118"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647118"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 15/15] drm/i915: Use vbt type to determine its validity
Date: Mon,  8 Jan 2024 15:05:17 -0800
Message-Id: <20240108230517.1497504-16-radhakrishna.sripada@intel.com>
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

We depend on a non null vbt field in intel_vbt to determine
if a vbt is read from its source. This may not be foolproof
hence rely on vbt->type to determine if vbt is read from a source.
Note that this does not determine the validity of read vbt.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 135a2d5d50b8..0938c9ec8fbe 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3119,6 +3119,11 @@ static void oprom_get_vbt(struct drm_i915_private *i915,
 	return;
 }
 
+static inline bool is_empty_vbt(struct intel_vbt *vbt)
+{
+	return vbt && vbt->type == I915_VBT_NONE;
+}
+
 /**
  * intel_bios_init - find VBT and initialize settings from the BIOS
  * @i915: i915 device instance
@@ -3154,19 +3159,19 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	intel_load_vbt_firmware(i915, vbt);
 
-	if (!vbt->vbt && opregion->asls)
+	if (is_empty_vbt(vbt) && opregion->asls)
 		intel_load_opregion_vbt(i915, opregion, vbt);
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
 	 * PCI mapping
 	 */
-	if (!vbt->vbt && IS_DGFX(i915))
+	if (is_empty_vbt(vbt) && IS_DGFX(i915))
 		spi_oprom_get_vbt(i915, vbt);
 
-	if (!vbt->vbt)
+	if (is_empty_vbt(vbt))
 		oprom_get_vbt(i915, vbt);
 
-	if (!vbt->vbt)
+	if (is_empty_vbt(vbt))
 		goto out;
 
 	header = (struct vbt_header *)vbt->vbt;
-- 
2.34.1

