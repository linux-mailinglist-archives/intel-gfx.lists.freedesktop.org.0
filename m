Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEE612F1FA
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 01:04:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 463B06E15C;
	Fri,  3 Jan 2020 00:04:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971296E15C
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 00:04:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 16:04:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,388,1571727600"; d="scan'208";a="221499020"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga006.jf.intel.com with ESMTP; 02 Jan 2020 16:04:47 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jan 2020 16:04:47 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Thu, 2 Jan 2020 16:00:50 -0800
Message-ID: <20200103000050.8223-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: Parse the I2C element from the
 VBT MIPI sequence block
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
Cc: Deepak M <m.deepak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Parsing the i2c element is mainly done to transfer the payload from the
MIPI sequence block to the relevant slave device. In some cases, the
commands that are part of the payload can be used to turn on the backlight.

This patch is actually a refactored version of this old patch:
https://lists.freedesktop.org/archives/intel-gfx/2014-December/056897.html

In addition to the refactoring, the old patch is augmented by looking up
the i2c bus from ACPI NS instead of relying on the bus number provided
in the VBT.

Cc: Deepak M <m.deepak@intel.com>
Cc: Nabendu Maiti <nabendu.bikash.maiti@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Bob Paauwe <bob.j.paauwe@intel.com>
Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 93 ++++++++++++++++++++
 2 files changed, 96 insertions(+)

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
index f90946c912ee..60441a5a3dba 100644
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
@@ -375,8 +381,93 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
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
+	struct drm_device *dev = intel_dsi->base.base.dev;
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
+		acpi_dev = ACPI_COMPANION(&dev->pdev->dev);
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
+
+	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
+	if (!adapter)
+		goto out;
+
+	payload_data = kzalloc(payload_size + 1, GFP_KERNEL);
+	if (!payload_data)
+		goto out;
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
+		DRM_ERROR("i2c transfer failed");
+
+	kfree(payload_data);
+	i2c_put_adapter(adapter);
+
+	return data + payload_size + 7;
+out:
 	DRM_DEBUG_KMS("Skipping I2C element execution\n");
 
 	return data + *(data + 6) + 7;
@@ -664,6 +755,8 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
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
