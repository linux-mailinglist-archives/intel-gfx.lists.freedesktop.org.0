Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 248374B6DB8
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5F210E4D7;
	Tue, 15 Feb 2022 13:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B43410E4D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932260; x=1676468260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bhwqws2cORQ+tfdG/Pt/djeljkwhK+EcXeFS1GecFbE=;
 b=GoSCqaA/PBJqUdSbQ4PfEaJ4FAmUHaqnij38LqqlAtsvV+Tk58m/yQsD
 3t11H9dThlzH3ZM8YsW4/fD1S/Y0+VALMHGMY926VjpwOJDJhHhE5DaIn
 8BLWbjX0AhM86T5Pcp/xL18wGMqKQoVv34IzVErL2sVIFv8dt7AIgoOhc
 lPOiyoLzC5hcIQsYc7KW0Y8MJsgcrl80bjwYwdbkRiaPNfZaRDFA2XfXI
 2D9q9OjmInYjz98sD8d+VmZbElX8vEWd85PtvqbK8RQsPm1ETwyfU6DlF
 C7mXv+HbGyNaJF6QJpcnjqcTTyrgVBu7QsHSUxcLxsWwu0RACc1RCNO9e g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="313625896"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="313625896"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="603828776"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:37:38 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Feb 2022 19:07:22 +0530
Message-Id: <20220215133727.13450-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220215133727.13450-1-anshuman.gupta@intel.com>
References: <20220215133727.13450-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/6] drm/i915/opregion: Add
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
Cc: jani.nikula@intel.com
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
index 4a41c38cf06f..253e50494f81 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -636,7 +636,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
-	intel_opregion_setup(dev_priv);
+	intel_opregion_init(dev_priv);
 
 	ret = intel_pcode_init(dev_priv);
 	if (ret)
-- 
2.26.2

