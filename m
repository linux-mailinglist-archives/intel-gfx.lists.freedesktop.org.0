Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DB31F0FFA
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jun 2020 23:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673976E0B7;
	Sun,  7 Jun 2020 21:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6876E0B7;
 Sun,  7 Jun 2020 21:25:29 +0000 (UTC)
IronPort-SDR: AUcy4zek1upvualNQuwztIW4MYZqSMyxYnuIaL+qGXFA9Id/HO4qrQZOR87mUdwEg7iILcJX4H
 YNUAtMfb2OcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2020 14:25:28 -0700
IronPort-SDR: SmnAHvw9l+jvzaBdh3BczrDKs8dLSbTDUNpLYM5MTNMCHIEt+cdbk9DpzbxOeBZFpS5VnZOK9I
 twGEyIP/pz1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,485,1583222400"; d="scan'208";a="270317161"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2020 14:25:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jun 2020 00:25:20 +0300
Message-Id: <20200607212522.16935-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/dp_mst: Fix the DDC I2C device
 unregistration of an MST port
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
Cc: stable@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The WARN below triggers during the removal of an MST port. The problem
is that the parent device's (the connector's kdev) sysfs directory is
removed recursively when the connector is unregistered (even though the
I2C device holds a reference on the parent device). To fix this set
first the Peer Device Type to none which will remove the I2C device.

Note that atm, inconsistently, the parent of the I2C device is initially set to
the DRM kdev and after a Connection Status Notification the parent may be reset
to be the connector's kdev. This problem is addressed by the next patch.

[ 4462.989299] ------------[ cut here ]------------
[ 4463.014940] sysfs group 'power' not found for kobject 'i2c-24'
[ 4463.034664] WARNING: CPU: 0 PID: 970 at fs/sysfs/group.c:281 sysfs_remove_group+0x71/0x80
[ 4463.044357] Modules linked in: snd_hda_intel i915 drm_kms_helper(O) drm netconsole snd_hda_codec_hdmi mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul snd_intel_dspcf
g crc32_pclmul snd_hda_codec snd_hwdep ghash_clmulni_intel snd_hda_core asix usbnet kvm_intel mii i2c_algo_bit snd_pcm syscopyarea sysfillrect e1000e sysimgblt fb_sys_fops prim
e_numbers ptp pps_core i2c_i801 r8169 mei_me realtek mei [last unloaded: drm]
[ 4463.044399] CPU: 0 PID: 970 Comm: kworker/0:2 Tainted: G           O      5.7.0+ #172
[ 4463.044402] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP
[ 4463.044423] Workqueue: events drm_dp_delayed_destroy_work [drm_kms_helper]
[ 4463.044428] RIP: 0010:sysfs_remove_group+0x71/0x80
[ 4463.044431] Code: 48 89 df 5b 5d 41 5c e9 cd b6 ff ff 48 89 df e8 95 b4 ff ff eb cb 49 8b 14 24 48 8b 75 00 48 c7 c7 20 0f 3f 82 e8 9f c5 d7 ff <0f> 0b 5b 5d 41 5c c3 0f 1f
84 00 00 00 00 00 48 85 f6 74 31 41 54
[ 4463.044433] RSP: 0018:ffffc900018bfbf0 EFLAGS: 00010282
[ 4463.044436] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000001
[ 4463.044439] RDX: 0000000080000001 RSI: ffff88849e828f38 RDI: 00000000ffffffff
[ 4463.052970] [drm:drm_atomic_get_plane_state [drm]] Added [PLANE:100:plane 2B] 00000000c2160caa state to 00000000d172564a
[ 4463.070533] RBP: ffffffff820cea20 R08: ffff88847f4b8958 R09: 0000000000000000
[ 4463.070535] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88848a725018
[ 4463.070537] R13: 0000000000000000 R14: ffffffff827090e0 R15: 0000000000000002
[ 4463.070539] FS:  0000000000000000(0000) GS:ffff88849e800000(0000) knlGS:0000000000000000
[ 4463.070541] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[ 4463.070543] CR2: 00007fdf8a756538 CR3: 0000000489684001 CR4: 0000000000760ef0
[ 4463.070545] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
[ 4463.070547] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
[ 4463.070549] PKRU: 55555554
[ 4463.070551] Call Trace:
[ 4463.070560]  device_del+0x84/0x400
[ 4463.070571]  cdev_device_del+0x10/0x30
[ 4463.070578]  put_i2c_dev+0x69/0x80
[ 4463.070584]  i2cdev_detach_adapter+0x2e/0x60
[ 4463.070591]  notifier_call_chain+0x34/0x90
[ 4463.070599]  blocking_notifier_call_chain+0x3f/0x60
[ 4463.070606]  device_del+0x7c/0x400
[ 4463.087817]  ? lockdep_init_map_waits+0x57/0x210
[ 4463.087825]  device_unregister+0x11/0x60
[ 4463.087829]  i2c_del_adapter+0x249/0x310
[ 4463.087846]  drm_dp_port_set_pdt+0x6b/0x2c0 [drm_kms_helper]
[ 4463.087862]  drm_dp_delayed_destroy_work+0x2af/0x350 [drm_kms_helper]
[ 4463.087876]  process_one_work+0x268/0x600
[ 4463.105438]  ? __schedule+0x30c/0x920
[ 4463.105451]  worker_thread+0x37/0x380
[ 4463.105457]  ? process_one_work+0x600/0x600
[ 4463.105462]  kthread+0x140/0x160
[ 4463.105466]  ? kthread_park+0x80/0x80
[ 4463.105474]  ret_from_fork+0x24/0x50

Cc: <stable@vger.kernel.org>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/drm_dp_mst_topology.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index 2a309fb2c4cc..02c800b8199f 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -4669,12 +4669,13 @@ static void drm_dp_tx_work(struct work_struct *work)
 static inline void
 drm_dp_delayed_destroy_port(struct drm_dp_mst_port *port)
 {
+	drm_dp_port_set_pdt(port, DP_PEER_DEVICE_NONE, port->mcs);
+
 	if (port->connector) {
 		drm_connector_unregister(port->connector);
 		drm_connector_put(port->connector);
 	}
 
-	drm_dp_port_set_pdt(port, DP_PEER_DEVICE_NONE, port->mcs);
 	drm_dp_mst_put_port_malloc(port);
 }
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
