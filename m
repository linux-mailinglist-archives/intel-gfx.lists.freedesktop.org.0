Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AAB67E2D4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:13:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E943C10E462;
	Fri, 27 Jan 2023 11:13:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C904210E45D;
 Fri, 27 Jan 2023 11:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674817979; x=1706353979;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rl0QsDk0kRAIzGw/liTYCZfpI8wU+/W6zi1qDuzXQuc=;
 b=aLcxqeI6yoI3qvP0yUqOx1xipw2t/B/SENONYIsBiXX+BMNnFrlZDvEn
 U8WrqLW9kwAGu+KcsEvv3cudiloX3bbT+TvxBOQBAYTysgRg4OkxAW+Os
 o3XZ2N+SfdnAw4CrmIdMARYTngL25B3GBUvDNIB8K6JzdICP2+6p1fKcQ
 ooLhJ7S9YgkZ+ZSLVezku6DTb/rpfwY6A8UMsOmCifZGMIjziErWMxqj6
 a+wAiSnKp7VqbANUl9Zdl/PynOP4CO6UM/OGoPmuKnyqGwiT6xG7qxVIX
 E7YzWXXvLo1WRa0LB7dDAX5Pa5KMI65R8KUbDmUcdszXGYDjSJyx81Kul w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="328352668"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="328352668"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="908638138"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="908638138"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.233.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:12:57 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 11:12:41 +0000
Message-Id: <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 6/6] lib/igt_device_scan: Improve Intel
 discrete GPU selection
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Now that DRM subsystem can contain PCI cards with the vendor set to Intel
but they are not Intel GPUs, we need a better selection logic than looking
at the vendor. Use the driver name instead.

Caveat that the driver key was on a blacklist so far, and although I can't
imagine it can be slow to probe, this is something to double check.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
---
 lib/igt_device_scan.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
index ed128d24dd10..8b767eed202d 100644
--- a/lib/igt_device_scan.c
+++ b/lib/igt_device_scan.c
@@ -237,6 +237,7 @@ struct igt_device {
 	char *vendor;
 	char *device;
 	char *pci_slot_name;
+	char *driver;
 	int gpu_index; /* For more than one GPU with same vendor and device. */
 
 	char *codename; /* For grouping by codename */
@@ -440,7 +441,6 @@ static bool is_on_blacklist(const char *what)
 				      "resource3", "resource4", "resource5",
 				      "resource0_wc", "resource1_wc", "resource2_wc",
 				      "resource3_wc", "resource4_wc", "resource5_wc",
-				      "driver",
 				      "uevent", NULL};
 	const char *key;
 	int i = 0;
@@ -662,6 +662,8 @@ static struct igt_device *igt_device_new_from_udev(struct udev_device *dev)
 		get_pci_vendor_device(idev, &vendor, &device);
 		idev->codename = __pci_codename(vendor, device);
 		idev->dev_type = __pci_devtype(vendor, device, idev->pci_slot_name);
+		idev->driver = strdup_nullsafe(get_attr(idev, "driver"));
+		igt_assert(idev->driver);
 	}
 
 	return idev;
@@ -776,7 +778,7 @@ static bool __find_first_i915_card(struct igt_device_card *card, bool discrete)
 
 	igt_list_for_each_entry(dev, &igt_devs.all, link) {
 
-		if (!is_pci_subsystem(dev) || !is_vendor_matched(dev, "intel"))
+		if (!is_pci_subsystem(dev) || strcmp(dev->driver, "i915"))
 			continue;
 
 		cmp = strncmp(dev->pci_slot_name, INTEGRATED_I915_GPU_PCI_ID,
@@ -1023,6 +1025,7 @@ static void igt_device_free(struct igt_device *dev)
 	free(dev->drm_render);
 	free(dev->vendor);
 	free(dev->device);
+	free(dev->driver);
 	free(dev->pci_slot_name);
 	g_hash_table_destroy(dev->attrs_ht);
 	g_hash_table_destroy(dev->props_ht);
-- 
2.34.1

