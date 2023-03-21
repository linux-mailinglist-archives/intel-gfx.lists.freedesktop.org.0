Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 495C96C3EA8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 00:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E05010E0A7;
	Tue, 21 Mar 2023 23:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3ABED10E0A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679441933; x=1710977933;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QyMwH+TpTkKRII7zXw6wfHJaKJbJT+IwvyS0aWpk6So=;
 b=jKObHg6JGwhin2O+u2uKi1TQMsIIjIVQTARC/5NX9uTxvf8p8jF3+w+m
 R766w/TWmo8v7CBcz14a4vToGaFcezyJr3BRbprvqvbKaZQ9yxRet2vMN
 Q6cfUE2pNmxpSIW8y8u0owjXM45lldpQQErRNFcz49XEt1OKfLqEFBt9s
 n2/iGWfuhmwPSl0GXFLWsU7G60qxpsyouvTLgxDVPGMp7X0QilJMWv/gd
 UeHCnBWn1NFEtpAGLxNRuBqpd/RNnOVy7DubfJfJT8i5PIlVpiv64sJRN
 eF9gFWZf04YXUEpd51KC8FrUKimy+XmTEAF6x/tjVuORW8VgWIw6f9Pct g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="322926128"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="322926128"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 16:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="770840396"
X-IronPort-AV: E=Sophos;i="5.98,280,1673942400"; d="scan'208";a="770840396"
Received: from linux.intel.com ([10.54.29.200])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Mar 2023 16:38:52 -0700
Received: from debox1-desk4.intel.com (unknown [10.251.1.45])
 by linux.intel.com (Postfix) with ESMTP id A9C495805CB;
 Tue, 21 Mar 2023 16:38:51 -0700 (PDT)
From: "David E. Box" <david.e.box@linux.intel.com>
To: david.e.box@linux.intel.com, ville.syrjala@linux.intel.com,
 nirmal.patel@linux.intel.com, jonathan.derrick@linux.dev,
 lorenzo.pieralisi@arm.com, hch@infradead.org, kw@linux.com,
 robh@kernel.org, bhelgaas@google.com, michael.a.bottini@intel.com,
 rafael@kernel.org
Date: Tue, 21 Mar 2023 16:38:49 -0700
Message-Id: <20230321233849.3408339-1-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] PCI/ASPM: pci_enable_link_state: Add argument
 to acquire bus lock
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
Cc: me@adhityamohan.in, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The VMD driver calls pci_enabled_link_state as a callback from
pci_bus_walk. Both will acquire the pci_bus_sem lock leading to a lockdep
warning. Add an argument to pci_enable_link_state to set whether the lock
should be acquired. In the VMD driver, set the argument to false since the
lock will already be obtained by pci_bus_walk.

Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Fixes: de82f60f9c86 ("PCI/ASPM: Add pci_enable_link_state()")
Link: https://lore.kernel.org/linux-pci/ZBjko%2FifunIwsK2v@intel.com/
Signed-off-by: David E. Box <david.e.box@linux.intel.com>
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
index fafd8020c6d7..a6f9f24b39fd 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -1707,7 +1707,7 @@ extern bool pcie_ports_native;
 #ifdef CONFIG_PCIEASPM
 int pci_disable_link_state(struct pci_dev *pdev, int state);
 int pci_disable_link_state_locked(struct pci_dev *pdev, int state);
-int pci_enable_link_state(struct pci_dev *pdev, int state);
+int pci_enable_link_state(struct pci_dev *pdev, int state, bool sem);
 void pcie_no_aspm(void);
 bool pcie_aspm_support_enabled(void);
 bool pcie_aspm_enabled(struct pci_dev *pdev);
@@ -1716,7 +1716,8 @@ static inline int pci_disable_link_state(struct pci_dev *pdev, int state)
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
2.34.1

