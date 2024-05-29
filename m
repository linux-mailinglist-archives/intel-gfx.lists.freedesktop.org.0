Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF5F8D35CA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 13:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B9710E3B3;
	Wed, 29 May 2024 11:49:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ac/jPgI1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C9310E3B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 11:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716983338; x=1748519338;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zXMGeVK/0YtD74DudHZSVp1kV2DiNmrVP2XmjPTLQZg=;
 b=Ac/jPgI1wQC+91ndEB5rt15FfMaFBze/qJn9rIIu/m9h13CpNhUgzpC0
 FZGjmhbDMgxN7mOK4tLmoqZvUn55o3QiaC+W3pSyLUEnoG2H/mTGPEEbN
 59h7v7qOg9zwagffUeq3XlXQ5P0jaHjCjGSpkIlxUvSC3PIUgQz9bJJ48
 0K6/moGHmWcteCDEgRBTkOamYiO3KQnvSTf+4VcWc/MrHK8NB1xYHNmFH
 sjYhZpUOIsSOJqXoiVfjuOg9NrEDCTZRXre1UID3DqQUOCB+Wp2niuzvb
 PATXxkJB8TscrfOG0QVNhhBl9pd2pLbHJLdybBKWr50UfVClJwlE+CJyu A==;
X-CSE-ConnectionGUID: tcZSd1ZNTZ6lDXBRsbz+nw==
X-CSE-MsgGUID: 6ynAzTQlQMaliq/TqHEFbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13202152"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="13202152"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:48:57 -0700
X-CSE-ConnectionGUID: 9tjwZmZ/RguCM5rwwdvveg==
X-CSE-MsgGUID: 7R6gF2UeTmGAKpVOtOrVeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="35951140"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:48:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dan Williams <dan.j.williams@intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>
Subject: [core-for-CI PATCH] PCI: Make PCI cfg_access_lock lockdep key a
 singleton
Date: Wed, 29 May 2024 14:49:01 +0300
Message-ID: <20240529114901.344655-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.43.3
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

From: Dan Williams <dan.j.williams@intel.com>

The new lockdep annotation for cfg_access_lock naively registered a new
key per device. This is overkill and leads to warnings on hash
collisions at dynamic registration time:

 WARNING: CPU: 0 PID: 1 at kernel/locking/lockdep.c:1226 lockdep_register_key+0xb0/0x240
 RIP: 0010:lockdep_register_key+0xb0/0x240
 [..]
 Call Trace:
  <TASK>
  ? __warn+0x8c/0x190
  ? lockdep_register_key+0xb0/0x240
  ? report_bug+0x1f8/0x200
  ? handle_bug+0x3c/0x70
  ? exc_invalid_op+0x18/0x70
  ? asm_exc_invalid_op+0x1a/0x20
  ? lockdep_register_key+0xb0/0x240
  pci_device_add+0x14b/0x560
  ? pci_setup_device+0x42e/0x6a0
  pci_scan_single_device+0xa7/0xd0
  p2sb_scan_and_cache_devfn+0xc/0x90
  p2sb_fs_init+0x15f/0x170

Switch to a shared static key for all instances.

Fixes: 7e89efc6e9e4 ("PCI: Lock upstream bridge for pci_reset_function()")
Reported-by: Jani Saarinen <jani.saarinen@intel.com>
Closes: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14834/bat-apl-1/boot0.txt
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/pci/probe.c | 7 ++++---
 include/linux/pci.h | 1 -
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 8e696e547565c..15168881ec941 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2533,6 +2533,8 @@ static void pci_set_msi_domain(struct pci_dev *dev)
 	dev_set_msi_domain(&dev->dev, d);
 }
 
+static struct lock_class_key cfg_access_key;
+
 void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
 {
 	int ret;
@@ -2546,9 +2548,8 @@ void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
 	dev->dev.dma_mask = &dev->dma_mask;
 	dev->dev.dma_parms = &dev->dma_parms;
 	dev->dev.coherent_dma_mask = 0xffffffffull;
-	lockdep_register_key(&dev->cfg_access_key);
-	lockdep_init_map(&dev->cfg_access_lock, dev_name(&dev->dev),
-			 &dev->cfg_access_key, 0);
+	lockdep_init_map(&dev->cfg_access_lock, "&dev->cfg_access_lock",
+			 &cfg_access_key, 0);
 
 	dma_set_max_seg_size(&dev->dev, 65536);
 	dma_set_seg_boundary(&dev->dev, 0xffffffff);
diff --git a/include/linux/pci.h b/include/linux/pci.h
index fb004fd4e8890..5bece7fd11f88 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -413,7 +413,6 @@ struct pci_dev {
 	struct resource driver_exclusive_resource;	 /* driver exclusive resource ranges */
 
 	bool		match_driver;		/* Skip attaching driver */
-	struct lock_class_key cfg_access_key;
 	struct lockdep_map cfg_access_lock;
 
 	unsigned int	transparent:1;		/* Subtractive decode bridge */
-- 
2.43.3

