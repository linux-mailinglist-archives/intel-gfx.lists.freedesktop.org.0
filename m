Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F63E21B480
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B526EC04;
	Fri, 10 Jul 2020 12:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49B8A6EC13
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 12:00:28 +0000 (UTC)
IronPort-SDR: 2jrlji+nem+7waxVTd/YZ2PkbuLT0WTO3i9sM4K/+JMpXrQ6HcB+xTnoWBEVzYc1MY8gQgtN9G
 7k77Z/EESocQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="209716644"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="209716644"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:27 -0700
IronPort-SDR: 0BP7ZcFdD+Nwwi1sKDStOPV/3u8lmcUE2S59bgcrjtnHJC//3+fL5gIgi33ChSACgpkK14EY0G
 NMo89HDkr1HA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257867"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 05:00:25 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:30 +0100
Message-Id: <20200710115757.290984-34-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We need to add support for pwrite'ing an LMEM object.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Steve Hampson <steven.t.hampson@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 86 ++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 9142ba299aa1..e324328639d2 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -94,6 +94,91 @@ static int lmem_pread(struct drm_i915_gem_object *obj,
 	return ret;
 }
 
+static int lmem_pwrite(struct drm_i915_gem_object *obj,
+		       const struct drm_i915_gem_pwrite *arg)
+{
+	struct drm_i915_private *i915 = to_i915(obj->base.dev);
+	struct intel_runtime_pm *rpm = &i915->runtime_pm;
+	intel_wakeref_t wakeref;
+	struct dma_fence *fence;
+	char __user *user_data;
+	unsigned int offset;
+	unsigned long idx;
+	u64 remain;
+	int ret;
+
+	ret = i915_gem_object_wait(obj,
+				   I915_WAIT_INTERRUPTIBLE,
+				   MAX_SCHEDULE_TIMEOUT);
+	if (ret)
+		return ret;
+
+	ret = i915_gem_object_pin_pages(obj);
+	if (ret)
+		return ret;
+
+	i915_gem_object_lock(obj);
+	ret = i915_gem_object_set_to_wc_domain(obj, true);
+	if (ret) {
+		i915_gem_object_unlock(obj);
+		goto out_unpin;
+	}
+
+	fence = i915_gem_object_lock_fence(obj);
+	i915_gem_object_unlock(obj);
+	if (!fence) {
+		ret = -ENOMEM;
+		goto out_unpin;
+	}
+
+	wakeref = intel_runtime_pm_get(rpm);
+
+	remain = arg->size;
+	user_data = u64_to_user_ptr(arg->data_ptr);
+	offset = offset_in_page(arg->offset);
+	for (idx = arg->offset >> PAGE_SHIFT; remain; idx++) {
+		unsigned long unwritten;
+		void __iomem *vaddr;
+		int length;
+
+		length = remain;
+		if (offset + length > PAGE_SIZE)
+			length = PAGE_SIZE - offset;
+
+		vaddr = i915_gem_object_lmem_io_map_page_atomic(obj, idx);
+		if (!vaddr) {
+			ret = -ENOMEM;
+			goto out_put;
+		}
+
+		unwritten = __copy_from_user_inatomic_nocache((void __force*)vaddr + offset,
+							      user_data, length);
+		io_mapping_unmap_atomic(vaddr);
+		if (unwritten) {
+			vaddr = i915_gem_object_lmem_io_map_page(obj, idx);
+			unwritten = copy_from_user((void __force*)vaddr + offset,
+						   user_data, length);
+			io_mapping_unmap(vaddr);
+		}
+		if (unwritten) {
+			ret = -EFAULT;
+			goto out_put;
+		}
+
+		remain -= length;
+		user_data += length;
+		offset = 0;
+	}
+
+out_put:
+	intel_runtime_pm_put(rpm, wakeref);
+	i915_gem_object_unlock_fence(obj, fence);
+out_unpin:
+	i915_gem_object_unpin_pages(obj);
+
+	return ret;
+}
+
 const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
 	.name = "i915_gem_object_lmem",
 	.flags = I915_GEM_OBJECT_HAS_IOMEM,
@@ -103,6 +188,7 @@ const struct drm_i915_gem_object_ops i915_gem_lmem_obj_ops = {
 	.release = i915_gem_object_release_memory_region,
 
 	.pread = lmem_pread,
+	.pwrite = lmem_pwrite,
 };
 
 void __iomem *
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
