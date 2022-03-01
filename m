Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 600DA4C8D53
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 15:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06C710EF30;
	Tue,  1 Mar 2022 14:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD68510EF2E;
 Tue,  1 Mar 2022 14:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646143689; x=1677679689;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=u8aICfWrsm5LsmgGfb1TEqv4Q5B0PJEBRO8v+wBFhxY=;
 b=WecxrMCCXkZiJM6kE4TvZRme/pBm0IjcMlZnfyN81V0NS1owteCDYr0s
 kcGiibMbZy6WqDoJ3VAViOGiVk0koD3ieu0BEUj0+lxrpmgmPq+QOMfsg
 SDKAuC1Ht2bKuTpY+ujpsdDOztDPJNtxp1V48oTOEeIwnu2whmStVuwzh
 7G6cAuVmvxniAVma3ID87pnmrYGy0NeW6krIpluw1F7ybDBT6kjJlDjm9
 wUO9Eu+IaBsbtdXCEeAdTnsEFQcbSpAjfSZcoDTOs93YSHmnTQF5i1Sn9
 tQigoNuQr3GmAmHBKW6Flyoz+uMZLx3GEoiP6fJ6cGvzx2WzoLQi1x521 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="316349562"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="316349562"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 06:08:09 -0800
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="550731614"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.22.166])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 06:08:08 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  1 Mar 2022 15:07:55 +0100
Message-Id: <20220301140755.315472-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t] lib/intel_mmio: Fix mmapped resources
 not unmapped on fini
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 5f3cfa485eb4 ("lib: Use safe wrappers around libpciaccess
initialization functions") took care of not leaking memory allocated by
pci_system_init() but didn't take care of users potentially attempting to
reinitialize global data maintained by libpciaccess.  For example,
intel_register_access_init() mmaps device's PCI BAR0 resource with
pci_device_map_range() but intel_register_access_fini() doesn't unmap it
and next call to intel_register_access_init() fails on attempt to mmap it
again with pci_device_map_range().

Fix it, and also provide intel_mmio_umap_*() counterparts to public
functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().

v2: apply last minute fixes, cached but unfortunately not committed before
    sending

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 lib/intel_io.h   |  4 +++
 lib/intel_mmio.c | 67 ++++++++++++++++++++++++++++++++++++++++++------
 2 files changed, 63 insertions(+), 8 deletions(-)

diff --git a/lib/intel_io.h b/lib/intel_io.h
index 1cfe4fb6b9..ea2649d9bc 100644
--- a/lib/intel_io.h
+++ b/lib/intel_io.h
@@ -49,6 +49,8 @@ struct intel_register_map {
 
 struct intel_mmio_data {
 	void *igt_mmio;
+	size_t mmio_size;
+	struct pci_device *dev;
 	struct intel_register_map map;
 	uint32_t pci_device_id;
 	int key;
@@ -57,7 +59,9 @@ struct intel_mmio_data {
 
 void intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data,
 			    struct pci_device *pci_dev);
+void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data);
 void intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file);
+void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data);
 
 int intel_register_access_init(struct intel_mmio_data *mmio_data,
 			       struct pci_device *pci_dev, int safe, int fd);
diff --git a/lib/intel_mmio.c b/lib/intel_mmio.c
index 667a69f5aa..cb8f9db2e5 100644
--- a/lib/intel_mmio.c
+++ b/lib/intel_mmio.c
@@ -82,6 +82,8 @@ void *igt_global_mmio;
  * Sets also up mmio_data->igt_mmio to point at the data contained
  * in @file. This allows the same code to get reused for dumping and decoding
  * from running hardware as from register dumps.
+ *
+ * Users are expected to call intel_mmio_unmap_dump_file() after use.
  */
 void
 intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
@@ -99,11 +101,29 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
 	igt_fail_on_f(mmio_data->igt_mmio == MAP_FAILED,
 		      "Couldn't mmap %s\n", file);
 
+	mmio_data->mmio_size = st.st_size;
 	igt_global_mmio = mmio_data->igt_mmio;
 
 	close(fd);
 }
 
+/**
+ * intel_mmio_unmap_dump_file:
+ * @mmio_data:  mmio structure for IO operations
+ *
+ * Unmaps a dump file mmapped with intel_mmio_use_dump_file()
+ */
+void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data)
+{
+	if (igt_warn_on_f(!mmio_data->mmio_size || mmio_data->dev,
+			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_mmio_use_dump_file()\n"))
+		return;
+
+	igt_global_mmio = NULL;
+	igt_debug_on(munmap(mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
+	mmio_data->mmio_size = 0;
+}
+
 /**
  * intel_mmio_use_pci_bar:
  * @mmio_data:  mmio structure for IO operations
@@ -112,12 +132,14 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
  * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
  *
  * @pci_dev can be obtained from intel_get_pci_device().
+ *
+ * Users are expected to call intel_mmio_unmap_pci_bar() after use.
  */
 void
 intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev)
 {
 	uint32_t devid, gen;
-	int mmio_bar, mmio_size;
+	int mmio_bar;
 	int error;
 
 	memset(mmio_data, 0, sizeof(struct intel_mmio_data));
@@ -129,22 +151,42 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci
 
 	gen = intel_gen(devid);
 	if (gen < 3)
-		mmio_size = 512*1024;
+		mmio_data->mmio_size = 512*1024;
 	else if (gen < 5)
-		mmio_size = 512*1024;
+		mmio_data->mmio_size = 512*1024;
 	else
-		mmio_size = 2*1024*1024;
+		mmio_data->mmio_size = 2*1024*1024;
 
 	error = pci_device_map_range (pci_dev,
 				      pci_dev->regions[mmio_bar].base_addr,
-				      mmio_size,
+				      mmio_data->mmio_size,
 				      PCI_DEV_MAP_FLAG_WRITABLE,
 				      &mmio_data->igt_mmio);
 
-	igt_global_mmio = mmio_data->igt_mmio;
-
 	igt_fail_on_f(error != 0,
 		      "Couldn't map MMIO region\n");
+
+	mmio_data->dev = pci_dev;
+	igt_global_mmio = mmio_data->igt_mmio;
+}
+
+/**
+ * intel_mmio_unmap_pci_bar:
+ * @mmio_data:  mmio structure for IO operations
+ *
+ * Unmaps a PCI BAR region mmapped with intel_mmio_use_pci_bar()
+ */
+void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data)
+{
+	if (igt_warn_on_f(!mmio_data->dev,
+			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_mmio_use_pci_bar()\n"))
+		return;
+
+	igt_global_mmio = NULL;
+	igt_debug_on(pci_device_unmap_range(mmio_data->dev,
+					    mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
+	mmio_data->dev = NULL;
+	mmio_data->mmio_size = 0;
 }
 
 static void
@@ -166,6 +208,8 @@ release_forcewake_lock(int fd)
  * It also initializes mmio_data->igt_mmio like intel_mmio_use_pci_bar().
  *
  * @pci_dev can be obtained from intel_get_pci_device().
+ *
+ * Users are expected to call intel_register_access_fini() after use.
  */
 int
 intel_register_access_init(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev, int safe, int fd)
@@ -222,8 +266,15 @@ int intel_register_access_needs_fakewake(struct intel_mmio_data *mmio_data)
 void
 intel_register_access_fini(struct intel_mmio_data *mmio_data)
 {
-	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
+	if (igt_warn_on_f(!mmio_data->key,
+			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_register_access_init()\n"))
+		return;
+
+	if (intel_register_access_needs_wake(mmio_data))
 		release_forcewake_lock(mmio_data->key);
+	mmio_data->key = 0;
+
+	intel_mmio_unmap_pci_bar(mmio_data);
 }
 
 /**
-- 
2.25.1

