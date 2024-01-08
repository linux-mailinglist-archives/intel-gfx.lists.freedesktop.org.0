Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F5827B3F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAA810E33B;
	Mon,  8 Jan 2024 23:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8933010E332
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YpyaSVcJasafGxU3ZWnce6FGKzMmIX7ZEjVpt2zsgxw=;
 b=bdJTGf5bNEE8vl3HML2XiabL1S2OIzo/a9BjPiCT17QSLpdjhRDRk0f8
 hGEp9x0pkqNtIW22ltO11bbsFfH0p2jYCt3AyCyyPcUBSCZ3Fo6e+rjBR
 49ditZzjXZT6uTC4mpplEIuy18z4vXS4KBVAOSljmOqjTg8bQdCPe3/4d
 X4uD1JW3kd4JEUdnMYVuLSPAyx2t82svQU8EAqv+36x9rT5LY6bIgLCT8
 5VB2z6GUg+r6TbizHzB764cvxWjd0AWCqQIx07hydR2v9HX+uRC+sb8yV
 7CfA/zibR81Akc6SDn4eMo1uCCbJnZO2lBZ/j8F4Tjw2dO5yE1Bkn+pV/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514123"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514123"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647088"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647088"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 05/15] drm/i915: Init vbt fields when read from oprom/spi
Date: Mon,  8 Jan 2024 15:05:07 -0800
Message-Id: <20240108230517.1497504-6-radhakrishna.sripada@intel.com>
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

For some platforms where vbt does not reside in opregion,
vbt needs to be cached for debug purposes. Cache them for
future usage.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0e09454ba79c..0944802ecbd5 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2994,6 +2994,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
 		goto err_free_vbt;
 
+	i915->display.vbt.vbt = vbt;
+	i915->display.vbt.vbt_size = vbt_size;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
 
 	return (struct vbt_header *)vbt;
@@ -3053,6 +3055,8 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	pci_unmap_rom(pdev, oprom);
 
+	i915->display.vbt.vbt = vbt;
+	i915->display.vbt.vbt_size = vbt_size;
 	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
 
 	return vbt;
@@ -3134,8 +3138,6 @@ void intel_bios_init(struct drm_i915_private *i915)
 	/* Further processing on pre-parsed or generated child device data */
 	parse_sdvo_device_mapping(i915);
 	parse_ddi_ports(i915);
-
-	kfree(oprom_vbt);
 }
 
 static void intel_bios_init_panel(struct drm_i915_private *i915,
@@ -3207,6 +3209,9 @@ void intel_bios_driver_remove(struct drm_i915_private *i915)
 		list_del(&entry->node);
 		kfree(entry);
 	}
+
+	/* FIXME: Handle vbt free in opregion case. */
+	kfree(vbt->vbt);
 }
 
 void intel_bios_fini_panel(struct intel_panel *panel)
-- 
2.34.1

