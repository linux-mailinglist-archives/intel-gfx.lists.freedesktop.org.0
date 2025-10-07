Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC4EBC2A42
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 22:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E87A10E383;
	Tue,  7 Oct 2025 20:25:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VSNnoWXE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6516410E383
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 20:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759868721; x=1791404721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qb4Fe30kKDtu+MM/KpYlWQbjCZkd9/TKOPSsTI/HDsk=;
 b=VSNnoWXEhZHWWPx+aUM2pDbmI0oQkE4CbrTM4ad04Sn7qDINwCntOAR4
 qkolnGeNiklCN6LIs41Cc6qwm12LOkGZk/dczO3Y1YiRGOzxWme8V5Y4e
 6XFXil5uEFVizFJGXHr2KEstME8+hYMDUOyYCsX45MvMGmSXURA5wzN3q
 CwiNNP2gzM4+m2uPcHTxAbo84syevmEPI53IiCImJua2Vl+H00tkCjcTJ
 AAE/hs4v6vHmsUDokp17Gi0OyHLB8QihzfxlXsuDO3IkmObPn+T0v/hNu
 U3CoCGQiuGXH+fl6V1FmDxjQsP2fZDHQ0cF7gJX3vEV+hwTX4J67Iamna g==;
X-CSE-ConnectionGUID: 0oJwwebaQV+o95F9ugXM1Q==
X-CSE-MsgGUID: z+b21OKmRoe4duYbfoYhUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="61265631"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="61265631"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 13:25:20 -0700
X-CSE-ConnectionGUID: iSGznkGETd2se2vn2/HMQg==
X-CSE-MsgGUID: jJd7shdQQN6Xgl2+R5xY+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180291363"
Received: from osgcshtiger.sh.intel.com ([10.239.70.161])
 by orviesa008.jf.intel.com with ESMTP; 07 Oct 2025 13:25:19 -0700
From: Jia Yao <jia.yao@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jia Yao <jia.yao@intel.com>, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>,
 Askar Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Date: Tue,  7 Oct 2025 20:25:14 +0000
Message-Id: <20251007202514.1661491-1-jia.yao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251007180634.912006-1-jia.yao@intel.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
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

Make i915's PCI device management more robust by always setting/clearing
the memory access bit when enabling/disabling the device, and by
consolidating this logic into helper functions.

It fixes kexec reboot issue by disabling memory access before shutting
down the device, which can block unsafe and unwanted access from DMA.

v2:
  - follow brace style

Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
Cc: Alex Zuo <alex.zuo@intel.com>
Cc: Shuicheng Lin <shuicheng.lin@intel.com>
Cc: Askar Safin <safinaskar@gmail.com>
Cc: Pingfan Liu <piliu@redhat.com>
Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Jia Yao <jia.yao@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 35 +++++++++++++++++++++++++++---
 1 file changed, 32 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b46cb54ef5dc..766f85726b67 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -118,6 +118,33 @@
 
 static const struct drm_driver i915_drm_driver;
 
+static int i915_enable_device(struct pci_dev *pdev)
+{
+	u32 cmd;
+	int ret;
+
+	ret = pci_enable_device(pdev);
+	if (ret)
+		return ret;
+
+	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
+	if (!(cmd & PCI_COMMAND_MEMORY))
+		pci_write_config_dword(pdev, PCI_COMMAND, cmd | PCI_COMMAND_MEMORY);
+
+	return 0;
+}
+
+static void i915_disable_device(struct pci_dev *pdev)
+{
+	u32 cmd;
+
+	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
+	if (cmd & PCI_COMMAND_MEMORY)
+		pci_write_config_dword(pdev, PCI_COMMAND, cmd & ~PCI_COMMAND_MEMORY);
+
+	pci_disable_device(pdev);
+}
+
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
 {
 	/*
@@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	struct intel_display *display;
 	int ret;
 
-	ret = pci_enable_device(pdev);
+	ret = i915_enable_device(pdev);
 	if (ret) {
 		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
 		return ret;
@@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 	i915 = i915_driver_create(pdev, ent);
 	if (IS_ERR(i915)) {
-		pci_disable_device(pdev);
+		i915_disable_device(pdev);
 		return PTR_ERR(i915);
 	}
 
@@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 	i915_driver_late_release(i915);
 out_pci_disable:
-	pci_disable_device(pdev);
+	i915_disable_device(pdev);
 	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
 	return ret;
 }
@@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	intel_dmc_suspend(display);
 
+	intel_pxp_fini(i915);
 	i915_gem_suspend(i915);
 
 	/*
@@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
+	i915_disable_device(to_pci_dev(i915->drm.dev));
 }
 
 static bool suspend_to_idle(struct drm_i915_private *dev_priv)
-- 
2.34.1

