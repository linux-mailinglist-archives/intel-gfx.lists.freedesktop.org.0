Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF62A6D0460
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 14:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5961C10E2C2;
	Thu, 30 Mar 2023 12:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40B910E2C2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 12:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680178143; x=1711714143;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=otjwcWhAo2B/wjSxhKXaL+9S3AiqtJvIzEtDckDaZak=;
 b=blgLlPaQ+0MOxkJdgwhyVpslUOHsdQgCxFtE7SD6mfoKuAuNWJZByj1g
 9Ga0oO4w8HAYYep/aGomAB5UccDcFo4oljuVdLpCGpUDrT0529Y7saQjC
 layp/tnyDVHywaoOHx2Va//uOHdg+NUfuCfyZpElDbkQpWcOj45ES3R81
 JnX2byDXfRhH/dkvayBm79wmMIAX4ugWJktscmcnaDUYZBHqpBglheMb5
 Wnfe2XsRmG2GB1JBFB1Q66ySbWB32KHGyJs2vpSAhZf0WQl3YbwWamE7O
 7vSTxmLbdEMXmO9oeHM//j6x8Q6L8aqAU9D8pxl0S1B/TGlAMCN3SkPh0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="368929362"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="368929362"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 05:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="714954056"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="714954056"
Received: from srr4-3-linux-118-swatish2.iind.intel.com ([10.223.34.130])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 05:08:59 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Mar 2023 17:41:35 +0530
Message-Id: <20230330121135.15414-1-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] [topic/core-for-CI] PCI/ASPM:
 pci_enable_link_state: Add argument to acquire bus lock
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
Cc: jani.nikula@intel.com, "David E. Box" <david.e.box@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: "David E. Box" <david.e.box@linux.intel.com>

The VMD driver calls pci_enabled_link_state as a callback from
pci_bus_walk. Both will acquire the pci_bus_sem lock leading to a lockdep
warning. Add an argument to pci_enable_link_state to set whether the lock
should be acquired. In the VMD driver, set the argument to false since the
lock will already be obtained by pci_bus_walk.

Still, review comments needs to be addressed. However, this fix
is helping to unblock CI execution for now.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/8316
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: de82f60f9c86 ("PCI/ASPM: Add pci_enable_link_state()")
Link: https://lore.kernel.org/linux-pci/ZBjko%2FifunIwsK2v@intel.com/
Signed-off-by: David E. Box <david.e.box@linux.intel.com>
Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/pci/controller/vmd.c | 2 +-
 drivers/pci/pcie/aspm.c      | 9 ++++++---
 include/linux/pci.h          | 5 +++--
 3 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/vmd.c b/drivers/pci/controller/vmd.c
index 990630ec57c6..45aa35744eae 100644
--- a/drivers/pci/controller/vmd.c
+++ b/drivers/pci/controller/vmd.c
@@ -737,7 +737,7 @@ static int vmd_pm_enable_quirk(struct pci_dev *pdev, void *userdata)
 	if (!(features & VMD_FEAT_BIOS_PM_QUIRK))
 		return 0;
 
-	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL);
+	pci_enable_link_state(pdev, PCIE_LINK_STATE_ALL, false);
 
 	pos = pci_find_ext_capability(pdev, PCI_EXT_CAP_ID_LTR);
 	if (!pos)
diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
index 66d7514ca111..5b5a600bb864 100644
--- a/drivers/pci/pcie/aspm.c
+++ b/drivers/pci/pcie/aspm.c
@@ -1147,8 +1147,9 @@ EXPORT_SYMBOL(pci_disable_link_state);
  *
  * @pdev: PCI device
  * @state: Mask of ASPM link states to enable
+ * @sem: Boolean to acquire/release pci_bus_sem
  */
-int pci_enable_link_state(struct pci_dev *pdev, int state)
+int pci_enable_link_state(struct pci_dev *pdev, int state, bool sem)
 {
 	struct pcie_link_state *link = pcie_aspm_get_link(pdev);
 
@@ -1165,7 +1166,8 @@ int pci_enable_link_state(struct pci_dev *pdev, int state)
 		return -EPERM;
 	}
 
-	down_read(&pci_bus_sem);
+	if (sem)
+		down_read(&pci_bus_sem);
 	mutex_lock(&aspm_lock);
 	link->aspm_default = 0;
 	if (state & PCIE_LINK_STATE_L0S)
@@ -1186,7 +1188,8 @@ int pci_enable_link_state(struct pci_dev *pdev, int state)
 	link->clkpm_default = (state & PCIE_LINK_STATE_CLKPM) ? 1 : 0;
 	pcie_set_clkpm(link, policy_to_clkpm_state(link));
 	mutex_unlock(&aspm_lock);
-	up_read(&pci_bus_sem);
+	if (sem)
+		up_read(&pci_bus_sem);
 
 	return 0;
 }
diff --git a/include/linux/pci.h b/include/linux/pci.h
index b50e5c79f7e3..1fe4557e87b9 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1708,7 +1708,7 @@ extern bool pcie_ports_native;
 #ifdef CONFIG_PCIEASPM
 int pci_disable_link_state(struct pci_dev *pdev, int state);
 int pci_disable_link_state_locked(struct pci_dev *pdev, int state);
-int pci_enable_link_state(struct pci_dev *pdev, int state);
+int pci_enable_link_state(struct pci_dev *pdev, int state, bool sem);
 void pcie_no_aspm(void);
 bool pcie_aspm_support_enabled(void);
 bool pcie_aspm_enabled(struct pci_dev *pdev);
@@ -1717,7 +1717,8 @@ static inline int pci_disable_link_state(struct pci_dev *pdev, int state)
 { return 0; }
 static inline int pci_disable_link_state_locked(struct pci_dev *pdev, int state)
 { return 0; }
-static inline int pci_enable_link_state(struct pci_dev *pdev, int state)
+static inline int
+pci_enable_link_state(struct pci_dev *pdev, int state, bool sem)
 { return 0; }
 static inline void pcie_no_aspm(void) { }
 static inline bool pcie_aspm_support_enabled(void) { return false; }
-- 
2.25.1

