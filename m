Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 664A31CCA9F
	for <lists+intel-gfx@lfdr.de>; Sun, 10 May 2020 13:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E285B6E15A;
	Sun, 10 May 2020 11:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511ED6E15A
 for <intel-gfx@lists.freedesktop.org>; Sun, 10 May 2020 11:54:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21155331-1500050 
 for multiple; Sun, 10 May 2020 12:54:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 10 May 2020 12:54:13 +0100
Message-Id: <20200510115413.3666-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Mark the GGTT as closed upon driver
 removal
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We do not want to add any more VMA into the GGTT [accidentally] after we
start removing the device, so mark it as closed. Similarly make sure
that all remaining user mmaps are revoked.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 12 ++++++++++--
 drivers/gpu/drm/i915/gt/intel_gtt.h  |  1 +
 drivers/gpu/drm/i915/i915_drv.c      |  1 +
 3 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index dfc979a24450..53cf7a93f363 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -682,8 +682,6 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 {
 	struct i915_vma *vma, *vn;
 
-	atomic_set(&ggtt->vm.open, 0);
-
 	rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
 	flush_workqueue(ggtt->vm.i915->wq);
 
@@ -710,6 +708,16 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 		io_mapping_fini(&ggtt->iomap);
 }
 
+void i915_ggtt_driver_remove(struct drm_i915_private *i915)
+{
+	struct i915_ggtt *ggtt = &i915->ggtt;
+
+	atomic_set(&ggtt->vm.open, 0);
+
+	/* And revoke *all* residual GGTT mmaps */
+	unmap_mapping_range(i915->drm.anon_inode->i_mapping, 0, -1, 1);
+}
+
 /**
  * i915_ggtt_driver_release - Clean up GGTT hardware initialization
  * @i915: i915 device
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index 773fc76dfa1b..0e0b38e3a3f4 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -503,6 +503,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915);
 void i915_ggtt_enable_guc(struct i915_ggtt *ggtt);
 void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
 int i915_init_ggtt(struct drm_i915_private *i915);
+void i915_ggtt_driver_remove(struct drm_i915_private *i915);
 void i915_ggtt_driver_release(struct drm_i915_private *i915);
 
 static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 34ee12f3f02d..d7026be4b10d 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -768,6 +768,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 
 	i915_perf_fini(dev_priv);
 
+	i915_ggtt_driver_remove(dev_priv);
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
