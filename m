Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A5B48D347F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 12:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A829E10E478;
	Wed, 29 May 2024 10:23:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MiNe409V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B175410E470
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 10:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716978224; x=1748514224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iE49K89VaN2Dsapr3HOeTko0Vx/yc1m1dKUMdhXsdGE=;
 b=MiNe409V5x3QIOTEGbE9da6r2KFBstRmG7oHJbY1tuUWQ7qQsRlqDw4E
 53nWn2iVUkZidjPMWuvA25hKi2z+HJwloI1N6TGyOkVWyJsPRJIYeMlch
 rOgDh6VR7xgSUGLNCO3yLjfiuSR/483jRbjKmiCzQElKCNcTyXZN8DUFW
 KSf/jphBzSnPnzRGy/bIxkhNoc1CDPx9V9S+M9mKKeiRTS2La16olvnlQ
 V9ZpsNhvdlIPa3LlR6wUZhda6cS75wqjjoH+ZbK5LTHWK6+GT8U5TqRnh
 EDC5+Giu3z+aVG8dKmc9Kpwbg1fcWTQL/7dNd6CCRWtxrW3SbZlv7/VJQ Q==;
X-CSE-ConnectionGUID: xTa11Vj+RXWq1D53ndJG6Q==
X-CSE-MsgGUID: Dew3g8PDTN2eTzOKmZckHQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23981301"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="23981301"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 03:23:42 -0700
X-CSE-ConnectionGUID: ElX1kWMQShmo6w3Yw768AA==
X-CSE-MsgGUID: zCuRYoSbS0mDYxDOKdzYXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="40236058"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 03:23:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [core-for-CI PATCH] PCI: Fix missing lockdep annotation for
 pci_cfg_access_trylock()
Date: Wed, 29 May 2024 13:23:41 +0300
Message-Id: <20240529102341.3928968-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Alex reports a new vfio-pci lockdep warning resulting from the
cfg_access_lock lock_map added recently.

Add the missing annotation to pci_cfg_access_trylock() and adjust the
lock_map acquisition to be symmetrical relative to pci_lock.

Fixes: 7e89efc6e9e4 ("PCI: Lock upstream bridge for pci_reset_function()")
Reported-by: Alex Williamson <alex.williamson@redhat.com>
Closes: http://lore.kernel.org/r/20240523131005.5578e3de.alex.williamson@redhat.com
Tested-by: Alex Williamson <alex.williamson@redhat.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/pci/access.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/access.c b/drivers/pci/access.c
index 30f031de9cfe..3595130ff719 100644
--- a/drivers/pci/access.c
+++ b/drivers/pci/access.c
@@ -289,11 +289,10 @@ void pci_cfg_access_lock(struct pci_dev *dev)
 {
 	might_sleep();
 
-	lock_map_acquire(&dev->cfg_access_lock);
-
 	raw_spin_lock_irq(&pci_lock);
 	if (dev->block_cfg_access)
 		pci_wait_cfg(dev);
+	lock_map_acquire(&dev->cfg_access_lock);
 	dev->block_cfg_access = 1;
 	raw_spin_unlock_irq(&pci_lock);
 }
@@ -315,8 +314,10 @@ bool pci_cfg_access_trylock(struct pci_dev *dev)
 	raw_spin_lock_irqsave(&pci_lock, flags);
 	if (dev->block_cfg_access)
 		locked = false;
-	else
+	else {
+		lock_map_acquire(&dev->cfg_access_lock);
 		dev->block_cfg_access = 1;
+	}
 	raw_spin_unlock_irqrestore(&pci_lock, flags);
 
 	return locked;
@@ -342,11 +343,10 @@ void pci_cfg_access_unlock(struct pci_dev *dev)
 	WARN_ON(!dev->block_cfg_access);
 
 	dev->block_cfg_access = 0;
+	lock_map_release(&dev->cfg_access_lock);
 	raw_spin_unlock_irqrestore(&pci_lock, flags);
 
 	wake_up_all(&pci_cfg_wait);
-
-	lock_map_release(&dev->cfg_access_lock);
 }
 EXPORT_SYMBOL_GPL(pci_cfg_access_unlock);
 
-- 
2.39.2

