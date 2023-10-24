Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 460717D59FF
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 19:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B19D10E454;
	Tue, 24 Oct 2023 17:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F25110E454
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698170162; x=1729706162;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9fLJZHMQ+IcqRB5XQY1tkLJyIR4loS9KgNTwJCDEYW8=;
 b=CiAJVjETENbv8Kne13QZnddq9lMIlSwMvbcLs4o8CWTs/LWS49Q+8M5V
 /ODstauZpsU+T+OvWn8gn/hMzbjMP2pb8+Woz2vVQOLNozRSvXEreiktd
 KMeVJkLzCks0TwVrkM0492ncP7X3dAeyeyl4UsGEzVR+LjAF5SIfmHX0V
 r/aEuYjJbOdn55OqOOkV7HVxpSktIDPidQiE6hcEmZZl2GzptR3zrRNVX
 hJxpVdmeRphXaapkZobO24fawVNJhyVHOv+wgR0dL+TcyC7hnNWYYtUfD
 mqPZDE4i1BaopQKb0896+ueft5ae8VrZ4l8bZE2Pc7Zxw25JZta4Pb9cG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453596666"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="453596666"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 10:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758560316"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758560316"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga002.jf.intel.com with SMTP; 24 Oct 2023 10:56:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Oct 2023 20:55:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 20:55:52 +0300
Message-ID: <20231024175552.15503-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
References: <20231024175552.15503-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [topic/core-for-CI][PATCH 2/2] Revert "iommu: Remove
 iova cpu hotplugging flushing"
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Should have been fixed by
commit 6d03bbff456b ("hwmon: (coretemp) Simplify platform device handling") ?

This reverts commit c7dec68ee19c4671f0110dfd3e3ff40069f75d66.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/iommu/iova.c       | 28 ++++++++++++++++++++++++++++
 include/linux/cpuhotplug.h |  1 +
 include/linux/iova.h       |  1 +
 3 files changed, 30 insertions(+)

diff --git a/drivers/iommu/iova.c b/drivers/iommu/iova.c
index 6cc35b018f21..10b964600948 100644
--- a/drivers/iommu/iova.c
+++ b/drivers/iommu/iova.c
@@ -31,6 +31,16 @@ unsigned long iova_rcache_range(void)
 	return PAGE_SIZE << (IOVA_RANGE_CACHE_MAX_SIZE - 1);
 }
 
+static int iova_cpuhp_dead(unsigned int cpu, struct hlist_node *node)
+{
+	struct iova_domain *iovad;
+
+	iovad = hlist_entry_safe(node, struct iova_domain, cpuhp_dead);
+
+	free_cpu_cached_iovas(cpu, iovad);
+	return 0;
+}
+
 static void free_global_cached_iovas(struct iova_domain *iovad);
 
 static struct iova *to_iova(struct rb_node *node)
@@ -245,10 +255,21 @@ int iova_cache_get(void)
 {
 	mutex_lock(&iova_cache_mutex);
 	if (!iova_cache_users) {
+		int ret;
+
+		ret = cpuhp_setup_state_multi(CPUHP_IOMMU_IOVA_DEAD, "iommu/iova:dead", NULL,
+					iova_cpuhp_dead);
+		if (ret) {
+			mutex_unlock(&iova_cache_mutex);
+			pr_err("Couldn't register cpuhp handler\n");
+			return ret;
+		}
+
 		iova_cache = kmem_cache_create(
 			"iommu_iova", sizeof(struct iova), 0,
 			SLAB_HWCACHE_ALIGN, NULL);
 		if (!iova_cache) {
+			cpuhp_remove_multi_state(CPUHP_IOMMU_IOVA_DEAD);
 			mutex_unlock(&iova_cache_mutex);
 			pr_err("Couldn't create iova cache\n");
 			return -ENOMEM;
@@ -271,6 +292,7 @@ void iova_cache_put(void)
 	}
 	iova_cache_users--;
 	if (!iova_cache_users) {
+		cpuhp_remove_multi_state(CPUHP_IOMMU_IOVA_DEAD);
 		kmem_cache_destroy(iova_cache);
 	}
 	mutex_unlock(&iova_cache_mutex);
@@ -473,6 +495,8 @@ EXPORT_SYMBOL_GPL(free_iova_fast);
 
 static void iova_domain_free_rcaches(struct iova_domain *iovad)
 {
+	cpuhp_state_remove_instance_nocalls(CPUHP_IOMMU_IOVA_DEAD,
+					    &iovad->cpuhp_dead);
 	free_iova_rcaches(iovad);
 }
 
@@ -730,6 +754,10 @@ int iova_domain_init_rcaches(struct iova_domain *iovad)
 		}
 	}
 
+	ret = cpuhp_state_add_instance_nocalls(CPUHP_IOMMU_IOVA_DEAD,
+					       &iovad->cpuhp_dead);
+	if (ret)
+		goto out_err;
 	return 0;
 
 out_err:
diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
index 82d49ebed7ca..068f7738be22 100644
--- a/include/linux/cpuhotplug.h
+++ b/include/linux/cpuhotplug.h
@@ -95,6 +95,7 @@ enum cpuhp_state {
 	CPUHP_PAGE_ALLOC,
 	CPUHP_NET_DEV_DEAD,
 	CPUHP_PCI_XGENE_DEAD,
+	CPUHP_IOMMU_IOVA_DEAD,
 	CPUHP_LUSTRE_CFS_DEAD,
 	CPUHP_AP_ARM_CACHE_B15_RAC_DEAD,
 	CPUHP_PADATA_DEAD,
diff --git a/include/linux/iova.h b/include/linux/iova.h
index 6fe3374e8dd6..83c00fac2acb 100644
--- a/include/linux/iova.h
+++ b/include/linux/iova.h
@@ -37,6 +37,7 @@ struct iova_domain {
 	struct iova	anchor;		/* rbtree lookup anchor */
 
 	struct iova_rcache	*rcaches;
+	struct hlist_node	cpuhp_dead;
 };
 
 static inline unsigned long iova_size(struct iova *iova)
-- 
2.41.0

