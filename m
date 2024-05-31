Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3058D6903
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 20:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5883C10E15B;
	Fri, 31 May 2024 18:33:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iAmwJxT6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EDC10E15B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2024 18:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717180421; x=1748716421;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PtOPFC3qySxY2D5n+ewTKpEHjqgMcFJUcCpHGinMq+g=;
 b=iAmwJxT6c9e1Wq0uBl4bMCdVTxNK9pLNWYpsykDpUJ1tI3tyYcpMVK13
 m6Zho6E6AqbApfFV4QlisqC2eGfp4Ms2g6W2YC94Wk5caRtWAy0tvhRN0
 roXSF+a3974WisgeZa7OtChT18V37I2UHa2qZ5IdioiZlLOd6UvspPzNA
 IPv8+rZ73CKXCUOIMkv8qEnYGg3mLVe2uFPdV+g20KYME6IBuaQIqlxih
 GAeaw1UFojsV/mgqVcohQkIJwLPh+Ce/a9CeM1bXlP+Q1pSJIMkqyC6xs
 9EUtIPaJ0cKlOqKGbWEqhBYFA+1jmB1VSzm7vcfbBiO7koICE8at5vZ0l Q==;
X-CSE-ConnectionGUID: IsuZEI4FS1+65nGPYEVQFg==
X-CSE-MsgGUID: yLVJFANESPqM538WgT024A==
X-IronPort-AV: E=McAfee;i="6600,9927,11089"; a="24313317"
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="24313317"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 11:33:40 -0700
X-CSE-ConnectionGUID: AxNuBt+jTsO0df6uV/sp9w==
X-CSE-MsgGUID: VR3yw4r8QyOCnpKUbPAs8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,205,1712646000"; d="scan'208";a="41167712"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 11:33:39 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [core-for-CI PATCH] PCI: Revert the cfg_access_lock lockdep mechanism
Date: Fri, 31 May 2024 21:33:45 +0300
Message-ID: <20240531183345.1400330-1-imre.deak@intel.com>
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

While the experiment did reveal that there are additional places that
are missing the lock during secondary bus reset, one of the places that
needs to take cfg_access_lock (pci_bus_lock()) is not prepared for
lockdep annotation.

Specifically, pci_bus_lock() takes pci_dev_lock() recursively and is
currently dependent on the fact that the device_lock() is marked
lockdep_set_novalidate_class(&dev->mutex). Otherwise, without that
annotation, pci_bus_lock() would need to use something like a new
pci_dev_lock_nested() helper, a scheme to track a PCI device's depth in
the topology, and a hope that the depth of a PCI tree never exceeds the
max value for a lockdep subclass.

The alternative to ripping out the lockdep coverage would be to deploy a
dynamic lock key for every PCI device. Unfortunately, there is evidence
that increasing the number of keys that lockdep needs to track to be
per-PCI-device is prohibitively expensive for something like the
cfg_access_lock.

The main motivation for adding the annotation in the first place was to
catch unlocked secondary bus resets, not necessarily catch lock ordering
problems between cfg_access_lock and other locks. Solve that narrower
problem with follow-on patches, and just due to targeted revert for now.

Fixes: 7e89efc6e9e4 ("PCI: Lock upstream bridge for pci_reset_function()")
Reported-by: Imre Deak <imre.deak@intel.com>
Closes: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134186v1/shard-dg2-1/igt@device_reset@unbind-reset-rebind.html
Cc: Jani Saarinen <jani.saarinen@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Dave Jiang <dave.jiang@intel.com>
References: https://lore.kernel.org/all/ZlXP5oTnSApiDbD1@ideak-desk.fi.intel.com
References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11223
Signed-off-by: Imre Deak <imre.deak@intel.com>

---

This patch replaces [1] and [2], those not actually resolving the issue
described in the first References: link.

[1] https://lore.kernel.org/all/20240529102341.3928968-1-jani.nikula@intel.com
[2] https://lore.kernel.org/all/20240529114901.344655-1-imre.deak@intel.com

 drivers/pci/access.c    | 4 ----
 drivers/pci/pci.c       | 1 -
 drivers/pci/probe.c     | 3 ---
 include/linux/lockdep.h | 5 -----
 include/linux/pci.h     | 2 --
 5 files changed, 15 deletions(-)

diff --git a/drivers/pci/access.c b/drivers/pci/access.c
index 30f031de9cfe8..b123da16b63ba 100644
--- a/drivers/pci/access.c
+++ b/drivers/pci/access.c
@@ -289,8 +289,6 @@ void pci_cfg_access_lock(struct pci_dev *dev)
 {
 	might_sleep();
 
-	lock_map_acquire(&dev->cfg_access_lock);
-
 	raw_spin_lock_irq(&pci_lock);
 	if (dev->block_cfg_access)
 		pci_wait_cfg(dev);
@@ -345,8 +343,6 @@ void pci_cfg_access_unlock(struct pci_dev *dev)
 	raw_spin_unlock_irqrestore(&pci_lock, flags);
 
 	wake_up_all(&pci_cfg_wait);
-
-	lock_map_release(&dev->cfg_access_lock);
 }
 EXPORT_SYMBOL_GPL(pci_cfg_access_unlock);
 
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 59e0949fb079d..35fb1f17a589c 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4883,7 +4883,6 @@ void __weak pcibios_reset_secondary_bus(struct pci_dev *dev)
  */
 int pci_bridge_secondary_bus_reset(struct pci_dev *dev)
 {
-	lock_map_assert_held(&dev->cfg_access_lock);
 	pcibios_reset_secondary_bus(dev);
 
 	return pci_bridge_wait_for_secondary_bus(dev, "bus reset");
diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index 8e696e547565c..5fbabb4e3425f 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -2546,9 +2546,6 @@ void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
 	dev->dev.dma_mask = &dev->dma_mask;
 	dev->dev.dma_parms = &dev->dma_parms;
 	dev->dev.coherent_dma_mask = 0xffffffffull;
-	lockdep_register_key(&dev->cfg_access_key);
-	lockdep_init_map(&dev->cfg_access_lock, dev_name(&dev->dev),
-			 &dev->cfg_access_key, 0);
 
 	dma_set_max_seg_size(&dev->dev, 65536);
 	dma_set_seg_boundary(&dev->dev, 0xffffffff);
diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
index 5e51b0de4c4b5..08b0d1d9d78b7 100644
--- a/include/linux/lockdep.h
+++ b/include/linux/lockdep.h
@@ -297,9 +297,6 @@ extern void lock_unpin_lock(struct lockdep_map *lock, struct pin_cookie);
 		.wait_type_inner = _wait_type,		\
 		.lock_type = LD_LOCK_WAIT_OVERRIDE, }
 
-#define lock_map_assert_held(l)		\
-	lockdep_assert(lock_is_held(l) != LOCK_STATE_NOT_HELD)
-
 #else /* !CONFIG_LOCKDEP */
 
 static inline void lockdep_init_task(struct task_struct *task)
@@ -391,8 +388,6 @@ extern int lockdep_is_held(const void *);
 #define DEFINE_WAIT_OVERRIDE_MAP(_name, _wait_type)	\
 	struct lockdep_map __maybe_unused _name = {}
 
-#define lock_map_assert_held(l)			do { (void)(l); } while (0)
-
 #endif /* !LOCKDEP */
 
 #ifdef CONFIG_PROVE_LOCKING
diff --git a/include/linux/pci.h b/include/linux/pci.h
index fb004fd4e8890..cafc5ab1cbcb4 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -413,8 +413,6 @@ struct pci_dev {
 	struct resource driver_exclusive_resource;	 /* driver exclusive resource ranges */
 
 	bool		match_driver;		/* Skip attaching driver */
-	struct lock_class_key cfg_access_key;
-	struct lockdep_map cfg_access_lock;
 
 	unsigned int	transparent:1;		/* Subtractive decode bridge */
 	unsigned int	io_window:1;		/* Bridge has I/O window */
-- 
2.43.3

