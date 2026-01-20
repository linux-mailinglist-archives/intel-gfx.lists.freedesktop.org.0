Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E58D3BE87
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 05:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D7310E187;
	Tue, 20 Jan 2026 04:42:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPPjukLf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE0FA10E187
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 04:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768884127; x=1800420127;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Uw6v+TOaBvWHDp7ds56HuBaVYn+tbN+XWo+V0DLE6g4=;
 b=iPPjukLfqaU2k5APE2DyVpIYrZsQtDSxGojrTCXsWTFE/jhkHRHGTyBm
 G86bjt3xm5r4apqpCku4nJqfE58yxkE6gDtnA0Yssc52YXxpo1HJ4JBeI
 6SjIOAtX4KIRNvpHYemTF7rN1Gjo8oXRKkWMKGcn335eRQhMXeEaHJnUk
 GvhpCOBZoSkMxvHenUBMhGMfIU2eoctlmRrPa4qj81Xq4y5N4QnMtcYow
 7Uempm6EAghoaPhJJexGly0L44Vzpj9SyyKjRq7sZjcy76DlenVT0I20S
 41tdt83fnapXQhWSfphLc1TzWNMn87Vwa7Rexv/5Kl0InTzXh8Mhm0sQY Q==;
X-CSE-ConnectionGUID: ffRow8VDQ1aOLnwhralGzg==
X-CSE-MsgGUID: FdMkLW3FQdGnJmrL3xrorA==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="69286470"
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="69286470"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 20:42:07 -0800
X-CSE-ConnectionGUID: BwVhL+1PT8u4Hl2yWOzBMQ==
X-CSE-MsgGUID: Wpcsi/YEREGSbNitZAapNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="237278400"
Received: from dut6094bmgfrd.fm.intel.com ([10.80.55.45])
 by fmviesa001.fm.intel.com with ESMTP; 19 Jan 2026 20:42:07 -0800
From: Jia Yao <jia.yao@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jia Yao <jia.yao@intel.com>, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>,
 Askar Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Date: Tue, 20 Jan 2026 04:42:03 +0000
Message-ID: <20260120044203.2436044-1-jia.yao@intel.com>
X-Mailer: git-send-email 2.43.0
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

In a kexec reboot scenario, the GPU's Global Graphics Translation Table
(GGTT) retains its previous state after the kernel is reloaded, until i915
reinitializes the GGTT.

The simple-framebuffer driver is initialized before i915 and accesses the
PCIe memory space (GPU aperture) through outdated GGTT entries. This leads
to invalid physical memory accesses, causing GPF or data corruption.

To prevent such issues, the Memory Space Enable (MSE) bit in the PCI Command
Register is cleared during i915_driver_shutdown. This disables all PCIe
memory space access (including MMIO and aperture) at the hardware level.
After the kernel is reloaded, access to the PCIe memory space will be
forbidden until i915 is re-initialized.

Since disabling PCIe memory space affects all MMIO operations, PXP shutdown
needs to be completed before this point. Calls intel_pxp_fini() before
disabling memory space to ensure PXP cleanup can still access MMIO registers.

v2:
  - follow brace style

v3:
  - revise description

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

