Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448B615AA79
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 14:54:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D046EABA;
	Wed, 12 Feb 2020 13:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCC8C6EABA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 13:54:47 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 14:54:45 +0100
Message-Id: <20200212135445.1469133-1-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.25.0.24.g3f081b084b0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Move cec_notifier to
 intel_hdmi_connector_unregister, v2.
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
Cc: stable@vger.kernel.org
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

Changes since v1:
- Add fixes tags.
- Use early unregister.

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Fixes: 9c229127aee2 ("drm/i915: hdmi: add CEC notifier to intel_hdmi")
Cc: <stable@vger.kernel.org> # v4.19+
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index e68bafb76cb1..34ee75fdaaf9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2830,19 +2830,13 @@ intel_hdmi_connector_register(struct drm_connector *connector)
 	return ret;
 }
 
-static void intel_hdmi_destroy(struct drm_connector *connector)
+static void intel_hdmi_connector_unregister(struct drm_connector *connector)
 {
 	struct cec_notifier *n = intel_attached_hdmi(to_intel_connector(connector))->cec_notifier;
 
 	cec_notifier_conn_unregister(n);
 
-	intel_connector_destroy(connector);
-}
-
-static void intel_hdmi_connector_unregister(struct drm_connector *connector)
-{
 	intel_hdmi_remove_i2c_symlink(connector);
-
 	intel_connector_unregister(connector);
 }
 
@@ -2854,7 +2848,7 @@ static const struct drm_connector_funcs intel_hdmi_connector_funcs = {
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
 	.late_register = intel_hdmi_connector_register,
 	.early_unregister = intel_hdmi_connector_unregister,
-	.destroy = intel_hdmi_destroy,
+	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = intel_digital_connector_duplicate_state,
 };
-- 
2.25.0.24.g3f081b084b0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
