Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C273214B102
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 09:38:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033BA6ED0D;
	Tue, 28 Jan 2020 08:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A042A6ED0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 08:38:54 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 09:38:51 +0100
Message-Id: <20200128083851.2566893-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move cec_notifier to intel_connector
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

This fixes the following KASAN splash on module reload:
[  145.136327] ==================================================================
[  145.136502] BUG: KASAN: use-after-free in intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136514] Read of size 8 at addr ffff888216641830 by task kworker/1:1/134

[  145.136535] CPU: 1 PID: 134 Comm: kworker/1:1 Tainted: G     U          T 5.5.0-rc7-valkyria+ #5783
[  145.136539] Hardware name: GIGABYTE GB-BKi3A-7100/MFLP3AP-00, BIOS F1 07/27/2016
[  145.136546] Workqueue: events drm_connector_free_work_fn
[  145.136551] Call Trace:
[  145.136560]  dump_stack+0xa1/0xe0
[  145.136571]  print_address_description.constprop.0+0x1e/0x210
[  145.136639]  ? intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136703]  ? intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136710]  __kasan_report.cold+0x1b/0x37
[  145.136790]  ? intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136863]  ? intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136870]  kasan_report+0x27/0x30
[  145.136881]  __asan_report_load8_noabort+0x1c/0x20
[  145.136946]  intel_hdmi_destroy+0x74/0x80 [i915]
[  145.136954]  drm_connector_free_work_fn+0xd1/0x100
[  145.136967]  process_one_work+0x86e/0x1610
[  145.136987]  ? pwq_dec_nr_in_flight+0x2f0/0x2f0
[  145.137004]  ? move_linked_works+0x128/0x2c0
[  145.137021]  worker_thread+0x63e/0xc90
[  145.137048]  kthread+0x2f6/0x3f0
[  145.137054]  ? calculate_sigpending+0x81/0xa0
[  145.137059]  ? process_one_work+0x1610/0x1610
[  145.137064]  ? kthread_bind+0x40/0x40
[  145.137075]  ret_from_fork+0x24/0x30

[  145.137111] Allocated by task 0:
[  145.137119] (stack is not available)

[  145.137137] Freed by task 5053:
[  145.137147]  save_stack+0x28/0x90
[  145.137152]  __kasan_slab_free+0x136/0x180
[  145.137157]  kasan_slab_free+0x26/0x30
[  145.137161]  kfree+0xe6/0x350
[  145.137242]  intel_ddi_encoder_destroy+0x60/0x80 [i915]
[  145.137252]  drm_mode_config_cleanup+0x11d/0x8f0
[  145.137329]  intel_modeset_driver_remove+0x1f5/0x350 [i915]
[  145.137403]  i915_driver_remove+0xc4/0x130 [i915]
[  145.137482]  i915_pci_remove+0x3e/0x90 [i915]
[  145.137489]  pci_device_remove+0x108/0x2d0
[  145.137494]  device_release_driver_internal+0x1e6/0x4a0
[  145.137499]  driver_detach+0xcb/0x198
[  145.137503]  bus_remove_driver+0xde/0x204
[  145.137508]  driver_unregister+0x6d/0xa0
[  145.137513]  pci_unregister_driver+0x2e/0x230
[  145.137576]  i915_exit+0x1f/0x26 [i915]
[  145.137157]  kasan_slab_free+0x26/0x30
[  145.137161]  kfree+0xe6/0x350
[  145.137242]  intel_ddi_encoder_destroy+0x60/0x80 [i915]
[  145.137252]  drm_mode_config_cleanup+0x11d/0x8f0
[  145.137329]  intel_modeset_driver_remove+0x1f5/0x350 [i915]
[  145.137403]  i915_driver_remove+0xc4/0x130 [i915]
[  145.137482]  i915_pci_remove+0x3e/0x90 [i915]
[  145.137489]  pci_device_remove+0x108/0x2d0
[  145.137494]  device_release_driver_internal+0x1e6/0x4a0
[  145.137499]  driver_detach+0xcb/0x198
[  145.137503]  bus_remove_driver+0xde/0x204
[  145.137508]  driver_unregister+0x6d/0xa0
[  145.137513]  pci_unregister_driver+0x2e/0x230
[  145.137576]  i915_exit+0x1f/0x26 [i915]
[  145.137581]  __x64_sys_delete_module+0x35b/0x470
[  145.137586]  do_syscall_64+0x99/0x4e0
[  145.137591]  entry_SYSCALL_64_after_hwframe+0x49/0xbe

[  145.137606] The buggy address belongs to the object at ffff888216640000
                which belongs to the cache kmalloc-8k of size 8192
[  145.137618] The buggy address is located 6192 bytes inside of
                8192-byte region [ffff888216640000, ffff888216642000)
[  145.137630] The buggy address belongs to the page:
[  145.137640] page:ffffea0008599000 refcount:1 mapcount:0 mapping:ffff888107c02a80 index:0xffff888216644000 compound_mapcount: 0
[  145.137647] raw: 0200000000010200 0000000000000000 0000000100000001 ffff888107c02a80
[  145.137652] raw: ffff888216644000 0000000080020001 00000001ffffffff 0000000000000000
[  145.137656] page dumped because: kasan: bad access detected

[  145.137668] Memory state around the buggy address:
[  145.137678]  ffff888216641700: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[  145.137687]  ffff888216641780: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[  145.137697] >ffff888216641800: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[  145.137706]                                      ^
[  145.137715]  ffff888216641880: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[  145.137724]  ffff888216641900: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
[  145.137733] ==================================================================
[  145.137742] Disabling lock debugging due to kernel taint

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_connector.c    |  2 +
 .../drm/i915/display/intel_display_types.h    |  3 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 63 +++++++++----------
 3 files changed, 32 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 54891a4ed2f3..28ac292d3455 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -99,6 +99,8 @@ void intel_connector_destroy(struct drm_connector *connector)
 	if (!IS_ERR_OR_NULL(intel_connector->edid))
 		kfree(intel_connector->edid);
 
+	cec_notifier_conn_unregister(intel_connector->cec_notifier);
+
 	intel_panel_fini(&intel_connector->panel);
 
 	drm_connector_cleanup(connector);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 33ba93863488..231077b883cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -434,6 +434,8 @@ struct intel_connector {
 	struct work_struct modeset_retry_work;
 
 	struct intel_hdcp hdcp;
+
+	struct cec_notifier *cec_notifier;
 };
 
 struct intel_digital_connector_state {
@@ -1181,7 +1183,6 @@ struct intel_hdmi {
 	bool has_hdmi_sink;
 	bool has_audio;
 	struct intel_connector *attached_connector;
-	struct cec_notifier *cec_notifier;
 };
 
 struct intel_dp_mst_encoder;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index ab13cf834cc4..730a0241434c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2504,9 +2504,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 }
 
 static void
-intel_hdmi_unset_edid(struct drm_connector *connector)
+intel_hdmi_unset_edid(struct intel_connector *connector)
 {
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 
 	intel_hdmi->has_hdmi_sink = false;
 	intel_hdmi->has_audio = false;
@@ -2514,15 +2514,15 @@ intel_hdmi_unset_edid(struct drm_connector *connector)
 	intel_hdmi->dp_dual_mode.type = DRM_DP_DUAL_MODE_NONE;
 	intel_hdmi->dp_dual_mode.max_tmds_clock = 0;
 
-	kfree(to_intel_connector(connector)->detect_edid);
-	to_intel_connector(connector)->detect_edid = NULL;
+	kfree(connector->detect_edid);
+	connector->detect_edid = NULL;
 }
 
 static void
-intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
+intel_hdmi_dp_dual_mode_detect(struct intel_connector *connector, bool has_edid)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
 	enum port port = hdmi_to_dig_port(hdmi)->base.port;
 	struct i2c_adapter *adapter =
 		intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
@@ -2544,7 +2544,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 		/* An overridden EDID imply that we want this port for testing.
 		 * Make sure not to set limits for that port.
 		 */
-		if (has_edid && !connector->override_edid &&
+		if (has_edid && !connector->base.override_edid &&
 		    intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
 			DRM_DEBUG_KMS("Assuming DP dual mode adaptor presence based on VBT\n");
 			type = DRM_DP_DUAL_MODE_TYPE1_DVI;
@@ -2566,10 +2566,10 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 }
 
 static bool
-intel_hdmi_set_edid(struct drm_connector *connector)
+intel_hdmi_set_edid(struct intel_connector *connector)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 	intel_wakeref_t wakeref;
 	struct edid *edid;
 	bool connected = false;
@@ -2579,12 +2579,12 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 
 	i2c = intel_gmbus_get_adapter(dev_priv, intel_hdmi->ddc_bus);
 
-	edid = drm_get_edid(connector, i2c);
+	edid = drm_get_edid(&connector->base, i2c);
 
 	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
 		DRM_DEBUG_KMS("HDMI GMBUS EDID read failed, retry using GPIO bit-banging\n");
 		intel_gmbus_force_bit(i2c, true);
-		edid = drm_get_edid(connector, i2c);
+		edid = drm_get_edid(&connector->base, i2c);
 		intel_gmbus_force_bit(i2c, false);
 	}
 
@@ -2592,7 +2592,7 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
 
-	to_intel_connector(connector)->detect_edid = edid;
+	connector->detect_edid = edid;
 	if (edid && edid->input & DRM_EDID_INPUT_DIGITAL) {
 		intel_hdmi->has_audio = drm_detect_monitor_audio(edid);
 		intel_hdmi->has_hdmi_sink = drm_detect_hdmi_monitor(edid);
@@ -2600,22 +2600,23 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 		connected = true;
 	}
 
-	cec_notifier_set_phys_addr_from_edid(intel_hdmi->cec_notifier, edid);
+	cec_notifier_set_phys_addr_from_edid(connector->cec_notifier, edid);
 
 	return connected;
 }
 
 static enum drm_connector_status
-intel_hdmi_detect(struct drm_connector *connector, bool force)
+intel_hdmi_detect(struct drm_connector *_connector, bool force)
 {
 	enum drm_connector_status status = connector_status_disconnected;
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 	intel_wakeref_t wakeref;
 
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+		      connector->base.base.id, connector->base.name);
 
 	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
 
@@ -2632,7 +2633,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
 
 	if (status != connector_status_connected)
-		cec_notifier_phys_addr_invalidate(intel_hdmi->cec_notifier);
+		cec_notifier_phys_addr_invalidate(connector->cec_notifier);
 
 	/*
 	 * Make sure the refs for power wells enabled during detect are
@@ -2644,14 +2645,15 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 }
 
 static void
-intel_hdmi_force(struct drm_connector *connector)
+intel_hdmi_force(struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
-		      connector->base.id, connector->name);
+		      connector->base.base.id, connector->base.name);
 
 	intel_hdmi_unset_edid(connector);
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return;
 
 	intel_hdmi_set_edid(connector);
@@ -2824,15 +2826,6 @@ intel_hdmi_connector_register(struct drm_connector *connector)
 	return ret;
 }
 
-static void intel_hdmi_destroy(struct drm_connector *connector)
-{
-	struct cec_notifier *n = intel_attached_hdmi(to_intel_connector(connector))->cec_notifier;
-
-	cec_notifier_conn_unregister(n);
-
-	intel_connector_destroy(connector);
-}
-
 static void intel_hdmi_connector_unregister(struct drm_connector *connector)
 {
 	intel_hdmi_remove_i2c_symlink(connector);
@@ -2848,7 +2841,7 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = intel_hdmi_connector_register,
 	.early_unregister = intel_hdmi_connector_unregister,
-	.destroy = intel_hdmi_destroy,
+	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
@@ -3204,10 +3197,10 @@ void intel_hdmi_init_connector(struct intel_digital_port *intel_dig_port,
 
 	cec_fill_conn_info_from_drm(&conn_info, connector);
 
-	intel_hdmi->cec_notifier =
+	intel_connector->cec_notifier =
 		cec_notifier_conn_register(dev->dev, port_identifier(port),
 					   &conn_info);
-	if (!intel_hdmi->cec_notifier)
+	if (!intel_connector->cec_notifier)
 		DRM_DEBUG_KMS("CEC notifier get failed\n");
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
