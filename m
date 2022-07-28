Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0E9583652
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3217010E28F;
	Thu, 28 Jul 2022 01:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077AE10EC9F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qr+HVqSiyghPYGbvsw6FCZsfinNUy3W4c/bsMIMTU4A=;
 b=EYMV416F8068ITqB2N8FE6zoopx+eY1ufxNoXqeex82gYuNTflrfzlCT
 /ZOdy+cElgG5yoQ7d+uKEA2Qh3XR8eZgJ1M+ECqQLWa9K4jUtFgaSyMyy
 rHR5coYfeLqCikuaKixTFjtRiptMGuFVlXJUe7t59ehVn3GWI/vkn00Ql
 igTfIhuQSw32EBYpEqGn+jR5snWEJwxoSVaICyDWKIHJ0LKv12Bc2wy/O
 sCYFuntNUb5NzMnKLnOZm5KeZggzZQHFqAzXIrTy1b6Bee3jLDIbgZBUC
 EavnzwmJPN7OA3T28gk3EPAXYhhfMH89UF/7psDSM1hnk3kLDNwqBvmij w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693654"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693654"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456976"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:03 -0700
Message-Id: <20220728013420.3750388-7-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/23] drm/i915/mtl: Add PCH support
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

Add support for Meteorpoint(MTP) PCH used with Meteorlake.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_pch.c | 9 ++++++++-
 drivers/gpu/drm/i915/intel_pch.h | 4 ++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 0fec25be146a..ba9843cb1b13 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -138,6 +138,11 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
 			    !IS_ALDERLAKE_P(dev_priv));
 		return PCH_ADP;
+	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
+	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
+		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
+		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
+		return PCH_MTP;
 	default:
 		return PCH_NONE;
 	}
@@ -166,7 +171,9 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
 
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (IS_METEORLAKE(dev_priv))
+		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
+	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
 		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
 	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 7c8ce9781d1a..32aff5a70d04 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -25,6 +25,7 @@ enum intel_pch {
 	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
 	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
 	PCH_ADP,	/* Alder Lake PCH */
+	PCH_MTP,	/* Meteor Lake PCH */
 
 	/* Fake PCHs, functionality handled on the same PCI dev */
 	PCH_DG1 = 1024,
@@ -57,12 +58,15 @@ enum intel_pch {
 #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
 #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
 #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
+#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
+#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
 #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
 
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
 #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
+#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
 #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-- 
2.25.1

