Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C33B969E0E5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 13:57:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0AE810E7F9;
	Tue, 21 Feb 2023 12:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11D110E7F6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 12:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676984261; x=1708520261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=x9PvU/X8hD6XPWxTneAo88GTKGZHzJxWZsGs7LQ4ND0=;
 b=Lkzp7MHH8dYleKxbc8QBXQHJaC9cf4Xr6rn85q96sn0qscBnanVv7azZ
 RrPRnRG8rA4P7lQFyAxyZ61hJ02TItlJ/LRRsM3Xly1atXZ+99i3J7vXL
 bDiH5jnHkk+te6NGWnulEJkBfadIrGtjH06Dxjhp98vQY6IDMXRPw7Vs4
 lFJMWmkmxWevKeAsHllYJwCoJN3WBMvfaDoznChv/wVmULzZQmcLJ2zq+
 bwngpCFX2B2j9yRVGp+kdOfOyfTC4UhQdarOtyHqyWs1rKjyMLdhAebGn
 F9U26EsMgxKOFAg21vYgE9K/RAfi5WGD3/WSI86lbVdWcPwsZMfynsv/O w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="395103815"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395103815"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="795512824"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="795512824"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 14:57:35 +0200
Message-Id: <20230221125737.1813187-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230221125737.1813187-1-imre.deak@intel.com>
References: <20230221125737.1813187-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/opregion: Cleanup opregion after
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up the opregion state if something fails after
intel_opregion_setup() is called.

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
index e3244972521cb..471a2db70d69c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -532,7 +532,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	ret = i915_pcode_init(dev_priv);
 	if (ret)
-		goto err_msi;
+		goto err_opregion;
 
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
@@ -553,6 +553,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 
 	return 0;
 
+err_opregion:
+	intel_opregion_cleanup(dev_priv);
 err_msi:
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
@@ -578,6 +580,8 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 
 	i915_perf_fini(dev_priv);
 
+	intel_opregion_cleanup(dev_priv);
+
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
 
-- 
2.37.1

