Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A3A627DEF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A49EF10E0EA;
	Mon, 14 Nov 2022 12:39:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A672010E09F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668429547; x=1699965547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XQGxL2EliopJWxn5TpceLmGMrPaCmGcHx1R1STd3E3M=;
 b=ZzE3m4NNlSf0T9p0WQ+JJNm59c6qBwAPIwLNDLGwcQNswQaGQoh6Icaf
 zdVNLutwGNYmLbhlZ9ac+g+rbnwsPqoJBwZufLZ2XaELL85eZaJYgPWT6
 jbDrrMnupD8cRgNwsHupRqi1Q7nwzRsHkTErFGbXmigNCdMmw2gfAPZNK
 j7pHdLqjh7tupMAk1lWTpRWEEQGxJETKX3vNq0+Y+jhcFsITTNG21QRu3
 X689aGmSTnh2P/R5ki1B2KoXHHDafzNYXCRv8PamXC5BzYp7ZNeCliU87
 HIu+kyjKDau3cXIupcwSfnKtsRvVeUIVCJVybTJiMkn4yjzv+Iad0uIeY A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="299476490"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="299476490"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="701990042"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="701990042"
Received: from anshuma1-desk.iind.intel.com ([10.190.239.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:39:05 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 18:08:43 +0530
Message-Id: <20221114123843.880902-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221114123843.880902-1-anshuman.gupta@intel.com>
References: <20221114123843.880902-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2 3/3] tests/device_reset: Add cold reset
 IGT test
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add cold-reset IGT subtest, IGT subtest will use
/sys/bus/pci/slots/$SUN/power sysfs in order to
initiate a cold reset sequence. $SUN value will be
retrieved from PCIe device ACPI firmware node.

v2:
- %s/igt_require(fd > 0)/igt_assert(errno >0)

Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
---
 lib/igt_pm.c         |  40 ++++++++++++++
 lib/igt_pm.h         |   1 +
 tests/device_reset.c | 124 +++++++++++++++++++++++++++++++++++++++----
 3 files changed, 155 insertions(+), 10 deletions(-)

diff --git a/lib/igt_pm.c b/lib/igt_pm.c
index 4f0cfbdd1..9b7ed4be6 100644
--- a/lib/igt_pm.c
+++ b/lib/igt_pm.c
@@ -877,6 +877,46 @@ static int igt_pm_open_pci_firmware_node(struct pci_device *pci_dev)
 	return dir;
 }
 
+/**
+ * igt_pm_get_pcie_acpihp_slot:
+ * @pci_dev: pci bridge device.
+ * Get pci bridge acpi hotplug slot number, if bridge's ACPI firmware_node
+ * handle supports _SUN method.
+ *
+ * Returns:
+ * PCIe bridge Slot number.
+ * Returns -ENOENT number in case firmware_node/sun is not supported by the
+ * bridge.
+ */
+int igt_pm_get_pcie_acpihp_slot(struct pci_device *pci_dev)
+{
+	int firmware_node_fd, fd, n_read;
+	char sun[8];
+
+	firmware_node_fd = igt_pm_open_pci_firmware_node(pci_dev);
+
+	if (firmware_node_fd < 0 && errno == ENOENT)
+		return -ENOENT;
+
+	igt_require(firmware_node_fd > 0);
+
+	fd = openat(firmware_node_fd, "sun", O_RDONLY);
+	if (fd < 0 && errno == ENOENT) {
+		close(firmware_node_fd);
+		return -ENOENT;
+	}
+
+	igt_assert(errno > 0);
+
+	n_read = read(fd, sun, sizeof(sun));
+	igt_assert(n_read > 0);
+
+	close(firmware_node_fd);
+	close(fd);
+
+	return strtol(sun, NULL, 10);
+}
+
 /**
  * igt_pm_acpi_d3cold_supported:
  * @pci_dev: root port pci_dev.
diff --git a/lib/igt_pm.h b/lib/igt_pm.h
index e81fceb89..f65b960c3 100644
--- a/lib/igt_pm.h
+++ b/lib/igt_pm.h
@@ -73,6 +73,7 @@ bool igt_wait_for_pm_status(enum igt_runtime_pm_status status);
 bool igt_pm_dmc_loaded(int debugfs);
 bool igt_pm_pc8_plus_residencies_enabled(int msr_fd);
 bool i915_output_is_lpsp_capable(int drm_fd, igt_output_t *output);
+int igt_pm_get_pcie_acpihp_slot(struct pci_device *pci_dev);
 bool igt_pm_acpi_d3cold_supported(struct pci_device *pci_dev);
 enum igt_acpi_d_state
 igt_pm_get_acpi_real_d_state(struct pci_device *pci_dev);
diff --git a/tests/device_reset.c b/tests/device_reset.c
index 0c477a02c..427ea0b09 100644
--- a/tests/device_reset.c
+++ b/tests/device_reset.c
@@ -9,6 +9,7 @@
 
 #include "i915/gem.h"
 #include "igt.h"
+#include "igt_device.h"
 #include "igt_device_scan.h"
 #include "igt_sysfs.h"
 #include "igt_kmod.h"
@@ -33,6 +34,7 @@ struct device_fds {
 		int dev;
 		int dev_dir;
 		int drv_dir;
+		int slot_dir; /* pci hotplug slots fd */
 	} fds;
 	char dev_bus_addr[DEV_BUS_ADDR_LEN];
 	bool snd_unload;
@@ -62,6 +64,45 @@ static int open_driver_sysfs_dir(int fd)
 	return __open_sysfs_dir(fd, "device/driver");
 }
 
+static int open_slot_sysfs_dir(int fd)
+{
+	struct pci_device *pci_dev = NULL;
+	int slot_fd = -1, slot;
+	char slot_fd_path[PATH_MAX];
+
+	pci_dev = igt_device_get_pci_device(fd);
+	igt_require(pci_dev);
+
+	while ((pci_dev = pci_device_get_parent_bridge(pci_dev))) {
+		slot = igt_pm_get_pcie_acpihp_slot(pci_dev);
+		if (slot == -ENOENT) {
+			igt_debug("Bridge PCI device %04x:%02x:%02x.%01x does not support acpihp slot\n",
+				  pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func);
+			continue;
+		}
+
+		/*
+		 * Upon getting the valid acpihp slot number break the loop.
+		 * It is the desired acpihp slot for gfx card.
+		 */
+		if (slot > 0) {
+			igt_debug("Bridge PCI device %04x:%02x:%02x.%01x associated acpihp slot %d\n",
+				  pci_dev->domain, pci_dev->bus, pci_dev->dev, pci_dev->func, slot);
+			break;
+		}
+	}
+
+	if (!pci_dev)
+		return slot_fd;
+
+	snprintf(slot_fd_path, PATH_MAX, "/sys/bus/pci/slots/%d", slot);
+	slot_fd = open(slot_fd_path, O_RDONLY);
+	if (slot_fd < 0)
+		return -errno;
+
+	return slot_fd;
+}
+
 /**
  * device_sysfs_path:
  * @fd: opened device file descriptor
@@ -124,6 +165,8 @@ static void init_device_fds(struct device_fds *dev)
 
 	dev->fds.drv_dir = open_driver_sysfs_dir(dev->fds.dev);
 	igt_assert_fd(dev->fds.drv_dir);
+
+	dev->fds.slot_dir = open_slot_sysfs_dir(dev->fds.dev);
 }
 
 static int close_if_opened(int *fd)
@@ -142,6 +185,7 @@ static void cleanup_device_fds(struct device_fds *dev)
 	igt_ignore_warn(close_if_opened(&dev->fds.dev));
 	igt_ignore_warn(close_if_opened(&dev->fds.dev_dir));
 	igt_ignore_warn(close_if_opened(&dev->fds.drv_dir));
+	igt_ignore_warn(close_if_opened(&dev->fds.slot_dir));
 }
 
 /**
@@ -179,6 +223,34 @@ static bool is_sysfs_reset_supported(int fd)
 	return true;
 }
 
+/**
+ * is_sysfs_cold_reset_supported:
+ * @fd: opened device file descriptor
+ *
+ * Check if device supports cold reset based on sysfs file presence.
+ *
+ * Returns:
+ * True if device supports reset, false otherwise.
+ */
+static bool is_sysfs_cold_reset_supported(int slot_fd)
+{
+	struct stat st;
+	int rc;
+	int cold_reset_fd = -1;
+
+	cold_reset_fd = openat(slot_fd, "power", O_WRONLY);
+
+	if (cold_reset_fd < 0)
+		return false;
+
+	rc = fstat(cold_reset_fd, &st);
+	close(cold_reset_fd);
+
+	if (rc || !S_ISREG(st.st_mode))
+		return false;
+
+	return true;
+}
 /* Unbind the driver from the device */
 static void driver_unbind(struct device_fds *dev)
 {
@@ -231,8 +303,12 @@ static void initiate_device_reset(struct device_fds *dev, enum reset type)
 {
 	igt_debug("reset device\n");
 
-	if (type == FLR_RESET)
+	if (type == FLR_RESET) {
 		igt_assert(igt_sysfs_set(dev->fds.dev_dir, "reset", "1"));
+	} else if (type == COLD_RESET) {
+		igt_assert(igt_sysfs_set(dev->fds.slot_dir, "power", "0"));
+		igt_assert(igt_sysfs_set(dev->fds.slot_dir, "power", "1"));
+	}
 
 }
 
@@ -311,17 +387,45 @@ igt_main
 		igt_skip_on(!is_sysfs_reset_supported(dev.fds.dev));
 	}
 
-	igt_describe("Unbinds driver from device, initiates reset"
-		     " then rebinds driver to device");
-	igt_subtest("unbind-reset-rebind") {
-		unbind_reset_rebind(&dev, FLR_RESET);
-		healthcheck(&dev);
+	igt_subtest_group {
+		igt_describe("Unbinds driver from device, initiates reset"
+			     " then rebinds driver to device");
+		igt_subtest("unbind-reset-rebind") {
+			unbind_reset_rebind(&dev, FLR_RESET);
+			healthcheck(&dev);
+		}
+
+		igt_describe("Resets device with bound driver");
+		igt_subtest("reset-bound") {
+			initiate_device_reset(&dev, FLR_RESET);
+			/*
+			 * Cold reset will initiate card boot sequence again,
+			 * therefore let healthcheck() re-epen the dev fd.
+			 */
+			dev.fds.dev = -1;
+			healthcheck(&dev);
+		}
 	}
 
-	igt_describe("Resets device with bound driver");
-	igt_subtest("reset-bound") {
-		initiate_device_reset(&dev, FLR_RESET);
-		healthcheck(&dev);
+	igt_subtest_group {
+		igt_fixture {
+			igt_skip_on_f(dev.fds.slot_dir < 0, "Gfx Card does not support any "
+				      "pcie slot for cold reset\n");
+			igt_skip_on(!is_sysfs_cold_reset_supported(dev.fds.slot_dir));
+		}
+
+		igt_describe("Unbinds driver from device, initiates cold reset"
+			     " then rebinds driver to device");
+		igt_subtest("unbind-cold-reset-rebind") {
+			unbind_reset_rebind(&dev, COLD_RESET);
+			healthcheck(&dev);
+		}
+
+		igt_describe("Cold Resets device with bound driver");
+		igt_subtest("cold-reset-bound") {
+			initiate_device_reset(&dev, COLD_RESET);
+			healthcheck(&dev);
+		}
 	}
 
 	igt_fixture {
-- 
2.25.1

