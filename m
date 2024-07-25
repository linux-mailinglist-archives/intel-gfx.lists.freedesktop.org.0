Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B6C93C288
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 14:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF83D10E278;
	Thu, 25 Jul 2024 12:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hGgvo5eV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768B310E266;
 Thu, 25 Jul 2024 12:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721912214; x=1753448214;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IbZlyS8/H0KWbHF8ybUR+8pf4cpL7M8wb6d8x4797ZQ=;
 b=hGgvo5eVMWY1XgKosToxRlcShxDZ/aAzWGhzWcTNEgYZ8+LJZbMP0RHB
 SuzSBlk91KT44S4xcvlvYBJfAxubaadBxu2EDKHClYdcBNdssz3wLCDOk
 fNljgDZYg7CUajOk5GoLVRFXpehER/ohWytPvNh0jlTcXAUamNvjg3ZSj
 pFX6rCR7IffTgMjOiGrQ5x5tqDL7EgzkRlkN819mgbqyKrhEUTEu/AvM4
 0rp0fJgHH412r5uXpSdNBgwJfk8Nh0dSf0sx3XUNKsYDoPkJxbD0Y+qUw
 mKJmrKNATQLwnFzKi872P00vCsrcFXuJujHUajhZy1sgBvOYvdpeh2ybf Q==;
X-CSE-ConnectionGUID: +eBvoOGbSuGwG3q5rIrhNQ==
X-CSE-MsgGUID: 01zrlbv9Q0+6XV0XFsVKbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30313838"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="30313838"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 05:56:54 -0700
X-CSE-ConnectionGUID: pc8IbjpeT5aT+j39bcqXNA==
X-CSE-MsgGUID: rmTfcz07QBiAqMsRLAfi4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57728025"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 25 Jul 2024 05:56:53 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/bmg: Read display register timeout
Date: Thu, 25 Jul 2024 18:27:35 +0530
Message-ID: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
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

Log the address of the register that caused the timeout
interrupt by reading RMTIMEOUTREG_CAPTURE

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 7 ++++++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..8e22f7ac3db0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -905,6 +905,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 			intel_pmdemand_irq_handler(dev_priv);
 			found = true;
+		} else if (iir & GEN8_DE_RM_TIMEOUT) {
+			u32 val = intel_uncore_read(&dev_priv->uncore,
+						    RMTIMEOUTREG_CAPTURE);
+			drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
+			found = true;
 		}
 	} else if (iir & GEN8_DE_MISC_GSE) {
 		intel_opregion_asle_intr(dev_priv);
@@ -1710,7 +1715,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
-				  XELPDP_PMDEMAND_RSP;
+				  XELPDP_PMDEMAND_RSP | GEN8_DE_RM_TIMEOUT;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0e3d79227e3c..858ce8a5d929 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2396,6 +2396,7 @@
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
+#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420E0)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
 
 /* interrupts */
@@ -2574,6 +2575,7 @@
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
 #define GEN8_DE_MISC_IER _MMIO(0x4446c)
+#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
 #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
-- 
2.45.2

