Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C165A39EB
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Aug 2022 21:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1146810ED49;
	Sat, 27 Aug 2022 19:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056DE10ED59;
 Sat, 27 Aug 2022 19:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661629643; x=1693165643;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ijPo7sOzKShDQRx15h0/00BZUprjnkb58iou/GJOEnM=;
 b=ngUajDfhrPkKtqRh9ZPQZ5WwKma+APmYo0Tqak7Znegz7i/HrHNrWEoV
 S1/wnwPKjVSe1e0tfLBowQp2sZirF8tJF4rITOOEqDRvx09ZGyhHHR1JP
 Apq2uPYl2klC9/9/nwdS+L5UDgpLMSlRcbYLHMlwue6ZAJ9QuyM+Pdu4j
 TNIuM+Bj6Jhm/pfQGxQk9/7qtLxJ5UeGIODl1+AELOngrRnZSTNSKmQaw
 eLBVZQNX21C++Baum528DPUYLyLFt8f50EzUhhpyStghmFHy8qGdOjFS6
 N2ml/o+5+rukYcK0Xy26Acu1XPhw+kd1WHE1lFF9Vd/sSJM+b90D75jRN g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10452"; a="274437151"
X-IronPort-AV: E=Sophos;i="5.93,269,1654585200"; d="scan'208";a="274437151"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2022 12:46:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,269,1654585200"; d="scan'208";a="700172613"
Received: from hluxenbu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.44.75])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2022 12:46:29 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 27 Aug 2022 21:43:57 +0200
Message-Id: <20220827194403.6495-12-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220827194403.6495-1-andi.shyti@linux.intel.com>
References: <20220827194403.6495-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH v3 11/17] drm/i915: Add
 i915_vma_is_bind_complete()
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
Cc: Ramalingam C <ramalingampc2008@gmail.com>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

Add i915_vma_is_bind_complete() to check if the binding of a
of the VM of a specific VMA is complete.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 28 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_vma.h |  1 +
 2 files changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 6ca37ce2b35a8..4b8ae58cd886b 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -406,6 +406,34 @@ int i915_vma_sync(struct i915_vma *vma)
 	return i915_vm_sync(vma->vm);
 }
 
+/**
+ * i915_vma_is_bind_complete() - Checks if the binding of the VM is complete
+ * @vma: virtual address where the virtual memory that is being checked for
+ * binding completion
+ *
+ * Returns true if the binding is complete, otherwise false.
+ */
+bool i915_vma_is_bind_complete(struct i915_vma *vma)
+{
+	/* Ensure vma bind is initiated */
+	if (!i915_vma_is_bound(vma, I915_VMA_BIND_MASK))
+		return false;
+
+	/* Ensure any binding started is complete */
+	if (rcu_access_pointer(vma->active.excl.fence)) {
+		struct dma_fence *fence;
+
+		rcu_read_lock();
+		fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
+		rcu_read_unlock();
+		if (fence) {
+			dma_fence_put(fence);
+			return false;
+		}
+	}
+	return true;
+}
+
 /**
  * i915_vma_verify_bind_complete() - Check for the vm_bind completion of the vma
  * @vma: vma submitted for vm_bind
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index bf0b5b4abd919..9f8c369c3b466 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -444,6 +444,7 @@ void i915_vma_make_purgeable(struct i915_vma *vma);
 int i915_vma_wait_for_bind(struct i915_vma *vma);
 int i915_vma_verify_bind_complete(struct i915_vma *vma);
 int i915_vma_sync(struct i915_vma *vma);
+bool i915_vma_is_bind_complete(struct i915_vma *vma);
 
 /**
  * i915_vma_get_current_resource - Get the current resource of the vma
-- 
2.34.1

