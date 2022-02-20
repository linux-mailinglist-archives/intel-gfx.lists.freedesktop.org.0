Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 596714BCFE9
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 17:37:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619BC10E230;
	Sun, 20 Feb 2022 16:37:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0A610E230
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Feb 2022 16:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645375068; x=1676911068;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0LI8DHsfbMA9dJOFgIXyQpUGgtLfElXqPtGrXuBHs2Q=;
 b=Zv5Q+BQDNp5H9xQPz4MaOcBYjpI2bRQpLJOVhSHHbDOwDW1oEfUHDXZk
 rfWK9Z2BQxXqU15UeS2cyQZB5YWYrrblWAbwhJanp2P9tm6tyExXBXrxP
 dZC54xKyYTorpKI9XXOr6n1P2XMJyKh4tHNTVWmCBIiS8B+piwYEmxECM
 xFVlmHwq0tTWoUTRLPkeKHHJXuqyZZebqzfnH/3OmmHpwMH7E4e4Lp5eW
 4vTvjxQPImya00WbFTxfaSRGV2GDDcprYjqV/t8GNHIwCGOyI5HzcK2tf
 vFKEoylkVGfzMDRQuxyI40H/F4fuqlorRZNWyPhJWDIR3ULhyOgBZsKF3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314650635"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314650635"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="490199498"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:45 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Feb 2022 22:07:25 +0530
Message-Id: <20220220163730.5021-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220220163730.5021-1-anshuman.gupta@intel.com>
References: <20220220163730.5021-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/6] drm/i915/opregion: Add
 intel_opregion_init() wrapper
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Adding intel_opregion_init() wrapper function, which encapsulates
intel_opregion_setup() and will be used for other opregion specific
initialization.

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 12 +++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..9b56064ddb5d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -873,7 +873,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 	return ret;
 }
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv)
+static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->opregion;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
@@ -1232,3 +1232,13 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
+
+/**
+ * intel_opregion_init() - Init ACPI opregion.
+ * @i915 i915 device priv data.
+ * opregion init wrapper function, which encapsulate intel_opregion_setup.
+ */
+int intel_opregion_init(struct drm_i915_private *i915)
+{
+	return intel_opregion_setup(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 82cc0ba34af7..744d53c804e2 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -59,7 +59,7 @@ struct intel_opregion {
 
 #ifdef CONFIG_ACPI
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv);
+int intel_opregion_init(struct drm_i915_private *i915);
 
 void intel_opregion_register(struct drm_i915_private *dev_priv);
 void intel_opregion_unregister(struct drm_i915_private *dev_priv);
@@ -78,7 +78,7 @@ struct edid *intel_opregion_get_edid(struct intel_connector *connector);
 
 #else /* CONFIG_ACPI*/
 
-static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
+static inline int intel_opregion_init(struct drm_i915_private *i915)
 {
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 62b3f332bbf5..e0b17618d2d2 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -637,7 +637,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
-	intel_opregion_setup(dev_priv);
+	intel_opregion_init(dev_priv);
 
 	ret = intel_pcode_init(dev_priv);
 	if (ret)
-- 
2.26.2

