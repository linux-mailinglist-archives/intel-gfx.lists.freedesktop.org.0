Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C034752BB54
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48B510ED89;
	Wed, 18 May 2022 13:07:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D0810ED89
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879271; x=1684415271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8BlmBu7KXr8XiL6TmFdz3zj2E4GErws4EeI6kT0w8MI=;
 b=O+vfUwGMX4YIXbVlE6yrgnjTIZVY6ONj9vBHevdWg3fDlAzXeROVKNEF
 lRD34oy7eBx7Cg9P75W4gYgeQjoa4YBDfU1AVVA9ke1P7CLs6W9nJBoqe
 Hygcuu7S2JZrvQolk13Q4JLvkBTNJ6MlbYaIeQCdl03MIhDHSVV5EVb+B
 60KvD6Zd8x9+wDU9YKxha/DX8/Lgrztf11C7+xJWfHmiZr29JM2JKgQEa
 UfnSmeGILWzz4/aJ4xRr5blLv3xCfUchtIxKnei7hYlkmGsb83nLKQeB1
 Y8B/UW32hovQ5rqs4EBnvTC9ZzZxtOwdIIfsTTQ40/OoCH1zK38GCfU8t Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071708"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071708"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:36 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314285"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:33 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:12 +0530
Message-Id: <20220518130716.10936-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/dg2: DG2 MBD config
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add DG2 Motherboard Down Config check support.

BSpec: 44477
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 2 ++
 drivers/gpu/drm/i915/i915_drv.h               | 9 +++++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 3dcd54517b89..dec7628522c5 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1271,6 +1271,8 @@ intel_opregion_vram_sr_required(struct drm_i915_private *i915)
 
 	if (IS_DG1(i915))
 		return intel_opregion_dg1_mbd_config(i915);
+	else if (IS_DG2_MBD(i915))
+		return true;
 
 	return false;
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 10f273800645..c5ecc490dced 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1071,6 +1071,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+/*
+ * FIXME: Need to define a new SUBPLATFORM INTEL_SUBPLATFORM_DG2_MBD
+ * for PCI id range 5690..5695, but G10, G11 SUBPLATFROM conflicts
+ * with those pci id range.
+ */
+#define DG2_MBD_CONFIG_MASK	GENMASK(7, 4)
+#define DG2_MBD_CONFIG_VAL	FIELD_PREP(DG2_MBD_CONFIG_MASK, 9)
+#define IS_DG2_MBD(dev_priv) (IS_DG2(dev_priv) && \
+			      (INTEL_DEVID(dev_priv) & DG2_MBD_CONFIG_MASK) == DG2_MBD_CONFIG_VAL)
 #define IS_ADLS_RPLS(dev_priv) \
 	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ADLP_N(dev_priv) \
-- 
2.26.2

