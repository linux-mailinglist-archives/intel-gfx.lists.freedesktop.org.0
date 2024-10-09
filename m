Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 361A799665F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:04:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8155810E1BE;
	Wed,  9 Oct 2024 10:04:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbsK1Wfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BCCB10E1BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 10:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728468251; x=1760004251;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w3d6b5GA0Se9XM8Y6tK8f49zs+b4llJo9u5GAHfwxlU=;
 b=MbsK1WfjtZ0sArJLMPyDrXWFnL4/Lr5vCJUqOtoO8du7Oj3Kco7hEBtR
 zEGd4z1IxyKCsmyW/f5lM44aoXFOCUWO/0X9cVoJPOwFCuEHSJ/jvlkGF
 9x5b4fRS29TwMqrFuzXcPhtd+CFyr0tDJkHyo52y48lbJxMdZnoQ8cRZJ
 J9MPRKy3JWy865B+p80bKlFjEbNx5VnFE+uBQmOht51ZU0C3TgLxChvjF
 fBM8yaIgD6TQn+IXycw2h1ZC3n7sUoIJbZWW5bX+YijU8vJKdwCcPvfB3
 4oVGhTQCzf+XJqznH3R6baX1Xop+qAgC+ni2bhxuXmDdkaG/vWfL28SoK g==;
X-CSE-ConnectionGUID: wEk3wb1MQGOxu1l1ByEKVQ==
X-CSE-MsgGUID: NJgV5KXCR6iDH7/DXT2kwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="45277628"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="45277628"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:04:06 -0700
X-CSE-ConnectionGUID: 1fL465iCSHmEBimJ2yslGg==
X-CSE-MsgGUID: 8YuE03W0QG6edHnAnap4Dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="99522558"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:04:05 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH] drm/xe/mmap: Add mmap support for PCI memory barrier
Date: Wed,  9 Oct 2024 15:37:25 +0530
Message-Id: <20241009100725.664150-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
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

In order to avoid having userspace to use MI_MEM_FENCE,
we are adding a mechanism for userspace to generate a
PCI memory barrier with low overhead (avoiding IOCTL call).

This is implemented by memory-mapping a page as uncached
that is backed by MMIO on the dGPU and thus allowing userspace
to do memory write to the page without invoking an IOCTL.
We are selecting the MMIO so that it is not accessible from
the PCI bus so that the MMIO writes themselves are ignored,
but the PCI memory barrier will still take action as the MMIO
filtering will happen after the memory barrier effect.

When we detect special defined offset in mmap(), We are mapping
4K page which contains the last of page of doorbell MMIO range
to userspace for same purpose.

Note: Test coverage for this is added by IGT
      https://patchwork.freedesktop.org/patch/618931/  here.

Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 68 +++++++++++++++++++++++++++++++++-
 1 file changed, 67 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index cd241a8e1838..c97a4d1f0a98 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -239,12 +239,78 @@ static long xe_drm_compat_ioctl(struct file *file, unsigned int cmd, unsigned lo
 #define xe_drm_compat_ioctl NULL
 #endif
 
+static void barrier_open(struct vm_area_struct *vma)
+{
+	drm_dev_get(vma->vm_private_data);
+}
+
+static void barrier_close(struct vm_area_struct *vma)
+{
+	drm_dev_put(vma->vm_private_data);
+}
+
+static const struct vm_operations_struct vm_ops_barrier = {
+	.open = barrier_open,
+	.close = barrier_close,
+};
+
+static int xe_pci_barrier_mmap(struct file *filp,
+			       struct vm_area_struct *vma)
+{
+	struct drm_file *priv = filp->private_data;
+	struct drm_device *dev = priv->minor->dev;
+	unsigned long pfn;
+	pgprot_t prot;
+
+	if (vma->vm_end - vma->vm_start > PAGE_SIZE)
+		return -EINVAL;
+
+	if (is_cow_mapping(vma->vm_flags))
+		return -EINVAL;
+
+	if (vma->vm_flags & (VM_READ | VM_EXEC))
+		return -EINVAL;
+
+	vm_flags_clear(vma, VM_MAYREAD | VM_MAYEXEC);
+	vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP | VM_IO);
+
+	prot = vm_get_page_prot(vma->vm_flags);
+#define LAST_DB_PAGE_OFFSET 0x7ff001
+	pfn = PHYS_PFN(pci_resource_start(to_pci_dev(dev->dev), 0) +
+			LAST_DB_PAGE_OFFSET);
+	if (vmf_insert_pfn_prot(vma, vma->vm_start, pfn,
+				pgprot_noncached(prot)) != VM_FAULT_NOPAGE)
+		return -EFAULT;
+
+	vma->vm_ops = &vm_ops_barrier;
+	vma->vm_private_data = dev;
+	drm_dev_get(vma->vm_private_data);
+	return 0;
+}
+
+static int xe_mmap(struct file *filp, struct vm_area_struct *vma)
+{
+	struct drm_file *priv = filp->private_data;
+	struct drm_device *dev = priv->minor->dev;
+
+	if (drm_dev_is_unplugged(dev))
+		return -ENODEV;
+
+#define XE_PCI_BARRIER_MMAP_OFFSET (0x50 << PAGE_SHIFT)
+	switch (vma->vm_pgoff) {
+	case XE_PCI_BARRIER_MMAP_OFFSET >> PAGE_SHIFT:
+		return xe_pci_barrier_mmap(filp, vma);
+	}
+
+	return drm_gem_mmap(filp, vma);
+}
+
 static const struct file_operations xe_driver_fops = {
 	.owner = THIS_MODULE,
 	.open = drm_open,
 	.release = drm_release_noglobal,
 	.unlocked_ioctl = xe_drm_ioctl,
-	.mmap = drm_gem_mmap,
+	.mmap = xe_mmap,
 	.poll = drm_poll,
 	.read = drm_read,
 	.compat_ioctl = xe_drm_compat_ioctl,
-- 
2.34.1

