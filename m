Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C39B4D12A3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 09:48:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EDC10E3F2;
	Tue,  8 Mar 2022 08:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE8F410E3ED;
 Tue,  8 Mar 2022 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646729314; x=1678265314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r1LDJSaDU4GcLONkLJ7D5SZr98D6UorBA/fj33q4T30=;
 b=SS/wxQCJJtEOxV4VloOCZ5vltRoe8Xjs8DUDnjXFiSYUof8uvo0Q9kAK
 0E9rEn3YKHBVCcr+8Kz9u7WZ5o5dEqzC59WS91LoC2d6VlZIp8JD9jyO2
 yajLIIqEyV6khf25+bjcw8J8Y8ur7DIkosGAjneLqq0JpzoiMDvrNm6nE
 ZTHHubhD2W3lbVuzk/YIEpY+ZRiB6WyIuihNaS7FFAqe2fCoUFhutxhCJ
 DyUHqjwuL+QUCjZulv5lp8CsGg803yp+V5LzwSYvCQmWwAM/4S0tL8+Gc
 OTvkab6QYoiUwFlv0EL1Ag8tzqxyfqICMR4aLAKLY0UnsUUeSjefKHLhn w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="252204301"
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="252204301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 00:48:33 -0800
X-IronPort-AV: E=Sophos;i="5.90,164,1643702400"; d="scan'208";a="537487602"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.26.79])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 00:48:30 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  8 Mar 2022 09:48:17 +0100
Message-Id: <20220308084817.403812-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] lib/intel_mmio: Fix mmapped resources not
 unmapped on fini
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
again.

Fix it, and also provide intel_mmio_unmap_*() counterparts to public
functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().

v2: apply last minute fixes, cached but unfortunately not committed before
    sending
v3: use .pci_device_id field content as an indicator of arg initialization
    via intel_register_access_init(),
  - improve checks of argument initialization status,
  - shorten warning messages (Kamil),
  - don't fill .mmio_size field until initialization succeeds (Kamil)
v4: fix condition of forcewake release, broken in v3,
  - improve comments and warning messages (Kamil)

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 lib/intel_io.h   |  4 +++
 lib/intel_mmio.c | 64 +++++++++++++++++++++++++++++++++++++++++++++---
 2 files changed, 65 insertions(+), 3 deletions(-)

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
index 667a69f5aa..10b07aabe1 100644
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
@@ -99,11 +101,32 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
 	igt_fail_on_f(mmio_data->igt_mmio == MAP_FAILED,
 		      "Couldn't mmap %s\n", file);
 
+	mmio_data->mmio_size = st.st_size;
 	igt_global_mmio = mmio_data->igt_mmio;
 
 	close(fd);
 }
 
+/**
+ * intel_mmio_unmap_dump_file:
+ * @mmio_data:  mmio structure initialized with intel_mmio_use_dump_file()
+ *
+ * Unmaps a dump file mmapped with intel_mmio_use_dump_file()
+ */
+void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data)
+{
+	if (igt_warn_on_f(mmio_data->dev,
+			  "test bug: arg initialized with a method other than intel_mmio_use_dump_file()\n"))
+		return;
+	if (igt_warn_on_f(!mmio_data->mmio_size,
+			  "test bug: arg not initialized\n"))
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
@@ -112,6 +135,8 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
  * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
  *
  * @pci_dev can be obtained from intel_get_pci_device().
+ *
+ * Users are expected to call intel_mmio_unmap_pci_bar() after use.
  */
 void
 intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev)
@@ -141,10 +166,34 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci
 				      PCI_DEV_MAP_FLAG_WRITABLE,
 				      &mmio_data->igt_mmio);
 
-	igt_global_mmio = mmio_data->igt_mmio;
-
 	igt_fail_on_f(error != 0,
 		      "Couldn't map MMIO region\n");
+
+	mmio_data->mmio_size = mmio_size;
+	mmio_data->dev = pci_dev;
+	igt_global_mmio = mmio_data->igt_mmio;
+}
+
+/**
+ * intel_mmio_unmap_pci_bar:
+ * @mmio_data:  mmio structure initialized with intel_mmio_use_pci_bar()
+ *
+ * Unmaps a PCI BAR region mmapped with intel_mmio_use_pci_bar()
+ */
+void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data)
+{
+	if (igt_warn_on_f(mmio_data->pci_device_id,
+			  "test bug: arg initialized with a method other than intel_mmio_use_pci_bar()\n"))
+		return;
+	if (igt_warn_on_f(!mmio_data->dev,
+			  "test bug: arg not initialized with intel_mmio_use_pci_bar()\n"))
+		return;
+
+	igt_global_mmio = NULL;
+	igt_debug_on(pci_device_unmap_range(mmio_data->dev,
+					    mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
+	mmio_data->dev = NULL;
+	mmio_data->mmio_size = 0;
 }
 
 static void
@@ -166,6 +215,8 @@ release_forcewake_lock(int fd)
  * It also initializes mmio_data->igt_mmio like intel_mmio_use_pci_bar().
  *
  * @pci_dev can be obtained from intel_get_pci_device().
+ *
+ * Users are expected to call intel_register_access_fini() after use.
  */
 int
 intel_register_access_init(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev, int safe, int fd)
@@ -214,7 +265,7 @@ int intel_register_access_needs_fakewake(struct intel_mmio_data *mmio_data)
 
 /**
  * intel_register_access_fini:
- * @mmio_data:  mmio structure for IO operations
+ * @mmio_data:  mmio structure initialized with intel_register_access_init()
  *
  * Clean up the register access helper initialized with
  * intel_register_access_init().
@@ -222,8 +273,15 @@ int intel_register_access_needs_fakewake(struct intel_mmio_data *mmio_data)
 void
 intel_register_access_fini(struct intel_mmio_data *mmio_data)
 {
+	if (igt_warn_on_f(!mmio_data->pci_device_id,
+			  "test bug: arg not initialized with intel_register_access_init()\n"))
+		return;
+
 	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
 		release_forcewake_lock(mmio_data->key);
+
+	mmio_data->pci_device_id = 0;
+	intel_mmio_unmap_pci_bar(mmio_data);
 }
 
 /**
-- 
2.25.1

