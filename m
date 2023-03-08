Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA60F6B0E9B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:25:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2BE310E677;
	Wed,  8 Mar 2023 16:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F26710E656
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678292708; x=1709828708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cx1RnSevfUWpMp0d/XRHzM7RsgMe9lk4ADcbk8VXoLo=;
 b=ONWWjdspzYMrKSPTflvZ28D+u8ZQINPcoC/sRBQK8DziNbECgosUDdM7
 P7lueqwixQz2Z81h4ELBERAjTI1E6zvCwtiiaX5QsyNcFV1FC62r3X4VY
 vwMSGzgmUOKZcsZEpYjHEkVRfyexRyVDvRyltx/om0nvYXprvq/3SRG/2
 /B0a0Y2FQFNzizochg7YNDVtxPdV7Sbes2jWUu6gDvogMrVUM5nwwx+D1
 aLuP0AeS1gUZYgEeL7oMA20NHXFGvwZnK40QRwZOYGZwNpSstVxvv+N1N
 oAHEv3UV5oKJGFDmP7UDz/QHgJBTqr5YJFRiuHgkeaJHCnxnZv5d9K3B+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422471586"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422471586"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="626976789"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="626976789"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:25:06 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 18:25:02 +0200
Message-Id: <20230308162503.3219200-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230308162503.3219200-1-imre.deak@intel.com>
References: <20230308162503.3219200-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/3] drm/i915/opregion: Cleanup opregion after
 errors during driver loading
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up the opregion state if something fails after
intel_opregion_setup() is called.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h | 1 +
 drivers/gpu/drm/i915/i915_driver.c            | 6 +++++-
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index bbcc2142d7df5..b7973a05d022d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1237,6 +1237,14 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 		unregister_acpi_notifier(&opregion->acpi_notifier);
 		opregion->acpi_notifier.notifier_call = NULL;
 	}
+}
+
+void intel_opregion_cleanup(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->display.opregion;
+
+	if (!opregion->header)
+		return;
 
 	/* just clear all opregion memory pointers now */
 	memunmap(opregion->header);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index d02e6696a050e..181eb3e9abbf3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -60,6 +60,7 @@ struct intel_opregion {
 #ifdef CONFIG_ACPI
 
 int intel_opregion_setup(struct drm_i915_private *dev_priv);
+void intel_opregion_cleanup(struct drm_i915_private *i915);
 
 void intel_opregion_register(struct drm_i915_private *dev_priv);
 void intel_opregion_unregister(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a53fd339e2cc9..da249337c23bd 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -535,7 +535,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	ret = i915_pcode_init(dev_priv);
 	if (ret)
-		goto err_msi;
+		goto err_opregion;
 
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
@@ -556,6 +556,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	return 0;
 
+err_opregion:
+	intel_opregion_cleanup(dev_priv);
 err_msi:
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
@@ -581,6 +583,8 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 
 	i915_perf_fini(dev_priv);
 
+	intel_opregion_cleanup(dev_priv);
+
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
 
-- 
2.37.1

