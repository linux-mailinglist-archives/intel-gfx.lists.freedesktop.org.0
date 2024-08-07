Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424B094A9F7
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981AD10E53B;
	Wed,  7 Aug 2024 14:20:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OhSqS3oz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E60510E537;
 Wed,  7 Aug 2024 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723040417; x=1754576417;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wXqsEtts3S3/oVZXwF0k96dr9Hfqud9bJeY00ZXcQ6U=;
 b=OhSqS3oz7v8xlEt/exJBtyiDZnqV9vudAcF6pzYJ1UdFebAi4le0w8Eo
 mT1cQ6z1ho3LiGYJrFSsfhOLJzJ1pzmZLQyX5M2PekS9ftKY9k1rSo/iD
 PpRP4tGX09AmoVtGVkqAWm9L3PIi1K2h2y0gNGL3T1banAsjbkNg2qMmP
 E7TR7I74tLkaNRiiO/qKH/Cw5EczhiQyq5x8FGGqxOoSoSAUKWev0K+NV
 ENm4/v2Ta2LY4w4ITAPOXHVd3slu4T/OqS34EqEa6wkv/564Enl6Ore3S
 Bqac7G9CvA3EtIJiyFefDlETalZi2H3SvjJwHyuRpSELuyieiZGo2nuue w==;
X-CSE-ConnectionGUID: OqhSUrnCQH6PtFcVrQ+F2w==
X-CSE-MsgGUID: aOxlyBaUSWexhE2tyIk7RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="43634563"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="43634563"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:20:16 -0700
X-CSE-ConnectionGUID: aEIsocaGSuWxsm54f/GS2A==
X-CSE-MsgGUID: VvmNkcOpQHC25CRfv8TndQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="57085119"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 07 Aug 2024 07:20:14 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: 
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: [PATCH v3] drm/i915/bmg: Read display register timeout
Date: Wed,  7 Aug 2024 19:51:05 +0530
Message-ID: <20240807142106.1270213-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240807040307.1246114-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240807040307.1246114-1-mitulkumar.ajitkumar.golani@intel.com>
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

--v2:
- Update RMTIMEOUTREG_CAPTURE naming (Suraj)

--v3:
- XeLpdp naming convention.
- Use if condition instead of else if

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 9 ++++++++-
 drivers/gpu/drm/i915/i915_reg.h                  | 2 ++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..9f452d92f6d4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -906,6 +906,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			intel_pmdemand_irq_handler(dev_priv);
 			found = true;
 		}
+
+		if (iir & XELPDP_RM_TIMEOUT) {
+			u32 val = intel_uncore_read(&dev_priv->uncore,
+						    RM_TIMEOUT_REG_CAPTURE);
+			drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
+			found = true;
+		}
 	} else if (iir & GEN8_DE_MISC_GSE) {
 		intel_opregion_asle_intr(dev_priv);
 		found = true;
@@ -1710,7 +1717,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
 		de_misc_masked |= XELPDP_PMDEMAND_RSPTOUT_ERR |
-				  XELPDP_PMDEMAND_RSP;
+				  XELPDP_PMDEMAND_RSP | XELPDP_RM_TIMEOUT;
 	} else if (DISPLAY_VER(dev_priv) >= 11) {
 		enum port port;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0e3d79227e3c..569b461022c5 100644
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
+#define  XELPDP_RM_TIMEOUT		REG_BIT(29)
 #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
 #define  GEN8_DE_MISC_GSE		REG_BIT(27)
 #define  GEN8_DE_EDP_PSR		REG_BIT(19)
-- 
2.45.2

