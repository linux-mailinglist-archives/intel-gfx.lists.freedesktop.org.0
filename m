Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8A9949EBA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 06:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E85D710E422;
	Wed,  7 Aug 2024 04:02:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5YzWFRu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB18910E422;
 Wed,  7 Aug 2024 04:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723003338; x=1754539338;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nbwBm0TlZNdZW7MqvV0SBHA2R8g77aeYfGk0prPaCnI=;
 b=g5YzWFRuFEMfi4Ji5OXwwnzQKcxxKMgOXhOOwWswAlZj1QwFbrBDP+Ev
 r0Uw169AfwgdLavoVhReoKeHjb82KkOrxBAiGn2ms9V1mZKf2wCyv58Y+
 iBSZ4ysGBWCRpIcZL+bi/bBLwEnULCEp4hi43yg+65y5ywk3vZe8aG0uX
 qHhs7CPUmk0A+AdMOyaV6wHiHGg/CZJn6pqEDx+FIOHW+EbotMQm3QMGo
 8kz8v1Ll+9VGiJKegF0HUsvKx2/KA0f9iSVuVKMHJR8uHrR3tjWPW8GJw
 GEKUk1aqhBCZajxdSjRZIkLzp9M1yGJrNKAtEV/eo2O2hB0s1KHANhw9f w==;
X-CSE-ConnectionGUID: 6xD+EtiGSbKaqbhzE6XxKg==
X-CSE-MsgGUID: mI31grMTT9mhJrP/uQsasQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="20910166"
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="20910166"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 21:02:18 -0700
X-CSE-ConnectionGUID: ZbnWshjoTq6jJdtF6iIj3w==
X-CSE-MsgGUID: 5ZhEzsBSSNaWxfRjPVEIEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,268,1716274800"; d="scan'208";a="57264437"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa007.jf.intel.com with ESMTP; 06 Aug 2024 21:02:16 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: [PATCH v2] drm/i915/bmg: Read display register timeout
Date: Wed,  7 Aug 2024 09:33:06 +0530
Message-ID: <20240807040307.1246114-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240725125735.105194-1-mitulkumar.ajitkumar.golani@intel.com>
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
index 5219ba295c74..5ebc1fd10a92 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -905,6 +905,11 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 
 			intel_pmdemand_irq_handler(dev_priv);
 			found = true;
+		} else if (iir & GEN8_DE_RM_TIMEOUT) {
+			u32 val = intel_uncore_read(&dev_priv->uncore,
+						    RM_TIMEOUT_REG_CAPTURE);
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
index 0e3d79227e3c..54df05046ad8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2396,6 +2396,7 @@
 
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
+#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
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

