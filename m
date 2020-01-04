Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9280312FFE9
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Jan 2020 02:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F956E397;
	Sat,  4 Jan 2020 01:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA816E397
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 Jan 2020 01:13:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 17:13:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,392,1571727600"; d="scan'208";a="222310832"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 03 Jan 2020 17:13:20 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.138) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Jan 2020 17:13:19 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 3 Jan 2020 17:09:25 -0800
Message-ID: <20200104010925.17010-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <f3a97500-7e85-fe0c-e48d-56c93da3dc38@redhat.com>
References: <f3a97500-7e85-fe0c-e48d-56c93da3dc38@redhat.com>
MIME-Version: 1.0
X-Originating-IP: [10.22.254.138]
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from the
 VBT MIPI sequence block (v2)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Parsing the i2c element is mainly done to transfer the payload from the
MIPI sequence block to the relevant slave device. In some cases, the
commands that are part of the payload can be used to turn on the backlight.

This patch is actually a refactored version of this old patch:
https://lists.freedesktop.org/archives/intel-gfx/2014-December/056897.html

In addition to the refactoring, the original patch is augmented by looking up
the i2c bus from ACPI NS instead of relying on the bus number provided
in the VBT.

v2:
- Add DRM_DEV_ERROR for invalid adapter and failed transfer and also
  drop the DRM_DEBUG that existed originally. (Hans)
- Add two gotos instead of one to clean things up properly.

CC: Hans de Goede <hdegoede@redhat.com>
Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Bob Paauwe <bob.j.paauwe@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 99 +++++++++++++++++++-
 2 files changed, 100 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index b15be5814599..5651bc8aa5c2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -68,6 +68,9 @@ struct intel_dsi {
 	/* number of DSI lanes */
 	unsigned int lane_count;
 
+	/* i2c bus associated with the slave device */
+	int i2c_bus_num;
+
 	/*
 	 * video mode pixel format
 	 *
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index f90946c912ee..35fcef7c0d70 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -83,6 +83,12 @@ static struct gpio_map vlv_gpio_table[] = {
 	{ VLV_GPIO_NC_11_PANEL1_BKLTCTL },
 };
 
+struct i2c_adapter_lookup {
+	u16 slave_addr;
+	struct intel_dsi *intel_dsi;
+	acpi_handle dev_handle;
+};
+
 #define CHV_GPIO_IDX_START_N		0
 #define CHV_GPIO_IDX_START_E		73
 #define CHV_GPIO_IDX_START_SW		100
@@ -375,11 +381,98 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	return data;
 }
 
+static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
+{
+	struct i2c_adapter_lookup *lookup = data;
+	struct intel_dsi *intel_dsi = lookup->intel_dsi;
+	struct acpi_resource_i2c_serialbus *sb;
+	struct i2c_adapter *adapter;
+	acpi_handle adapter_handle;
+	acpi_status status;
+
+	if (intel_dsi->i2c_bus_num >= 0 ||
+	    !i2c_acpi_get_i2c_resource(ares, &sb))
+		return 1;
+
+	if (lookup->slave_addr != sb->slave_address)
+		return 1;
+
+	status = acpi_get_handle(lookup->dev_handle,
+				 sb->resource_source.string_ptr,
+				 &adapter_handle);
+	if (ACPI_FAILURE(status))
+		return 1;
+
+	adapter = i2c_acpi_find_adapter_by_handle(adapter_handle);
+	if (adapter)
+		intel_dsi->i2c_bus_num = adapter->nr;
+
+	return 1;
+}
+
 static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	DRM_DEBUG_KMS("Skipping I2C element execution\n");
+	struct drm_device *drm_dev = intel_dsi->base.base.dev;
+	struct device *dev = &drm_dev->pdev->dev;
+	struct i2c_adapter *adapter;
+	struct acpi_device *acpi_dev;
+	struct list_head resource_list;
+	struct i2c_adapter_lookup lookup;
+	struct i2c_msg msg;
+	int ret;
+	u8 vbt_i2c_bus_num = *(data + 2);
+	u16 slave_addr = *(u16 *)(data + 3);
+	u8 reg_offset = *(data + 5);
+	u8 payload_size = *(data + 6);
+	u8 *payload_data;
+
+	if (intel_dsi->i2c_bus_num < 0) {
+		intel_dsi->i2c_bus_num = vbt_i2c_bus_num;
+
+		acpi_dev = ACPI_COMPANION(dev);
+		if (acpi_dev) {
+			memset(&lookup, 0, sizeof(lookup));
+			lookup.slave_addr = slave_addr;
+			lookup.intel_dsi = intel_dsi;
+			lookup.dev_handle = acpi_device_handle(acpi_dev);
+
+			INIT_LIST_HEAD(&resource_list);
+			acpi_dev_get_resources(acpi_dev, &resource_list,
+					       i2c_adapter_lookup,
+					       &lookup);
+			acpi_dev_free_resource_list(&resource_list);
+		}
+	}
 
-	return data + *(data + 6) + 7;
+	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
+	if (!adapter) {
+		DRM_DEV_ERROR(dev, "Cannot find a valid i2c bus for xfer\n");
+		goto err_bus;
+	}
+
+	payload_data = kzalloc(payload_size + 1, GFP_KERNEL);
+	if (!payload_data)
+		goto err_alloc;
+
+	payload_data[0] = reg_offset;
+	memcpy(&payload_data[1], (data + 7), payload_size);
+
+	msg.addr = slave_addr;
+	msg.flags = 0;
+	msg.len = payload_size + 1;
+	msg.buf = payload_data;
+
+	ret = i2c_transfer(adapter, &msg, 1);
+	if (ret < 0)
+		DRM_DEV_ERROR(dev,
+			      "Failed to xfer payload of size (%u) to reg (%u)\n",
+			      payload_size, reg_offset);
+
+	kfree(payload_data);
+err_alloc:
+	i2c_put_adapter(adapter);
+err_bus:
+	return data + payload_size + 7;
 }
 
 static const u8 *mipi_exec_spi(struct intel_dsi *intel_dsi, const u8 *data)
@@ -664,6 +757,8 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	intel_dsi->panel_off_delay = pps->panel_off_delay / 10;
 	intel_dsi->panel_pwr_cycle_delay = pps->panel_power_cycle_delay / 10;
 
+	intel_dsi->i2c_bus_num = -1;
+
 	/* a regular driver would get the device in probe */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		mipi_dsi_attach(intel_dsi->dsi_hosts[port]->device);
-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
