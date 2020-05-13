Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD14D1D0FE1
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 12:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CE476E892;
	Wed, 13 May 2020 10:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521EB6E892;
 Wed, 13 May 2020 10:32:39 +0000 (UTC)
IronPort-SDR: a0iQN0e+bmO9OYW/Guzs5voODajihQv9ZDCD6q04UxvSw7nadragUThEOn82cFHIJCUx57RH+F
 xOoYHcI8eFSA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2020 03:32:38 -0700
IronPort-SDR: Hvv4InNJGc7fHnyB8SLK88DtnDdJpIDRTXFIvd/L4yRlczBHHJmc8srE4vV6AEx2BLRfvbzlry
 2uaQo/yz9Kmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,387,1583222400"; d="scan'208";a="262438024"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 13 May 2020 03:32:36 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Wed, 13 May 2020 13:31:55 +0300
Message-Id: <20200513103155.12336-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/dp_mst: Fix timeout handling of MST down
 messages
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
Cc: stable@vger.kernel.org, Wayne Lin <Wayne.Lin@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This fixes the following use-after-free problem in case an MST down
message times out, while waiting for the response for it:

[  449.022841] [drm:drm_dp_mst_wait_tx_reply.isra.26] timedout msg send 0000000080ba7fa2 2 0
[  449.022898] ------------[ cut here ]------------
[  449.022903] list_add corruption. prev->next should be next (ffff88847dae32c0), but was 6b6b6b6b6b6b6b6b. (prev=ffff88847db1c140).
[  449.022931] WARNING: CPU: 2 PID: 22 at lib/list_debug.c:28 __list_add_valid+0x4d/0x70
[  449.022935] Modules linked in: asix usbnet mii snd_hda_codec_hdmi mei_hdcp i915 x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep e1000e snd_hda_core ptp snd_pcm pps_core mei_me mei intel_lpss_pci prime_numbers
[  449.022966] CPU: 2 PID: 22 Comm: kworker/2:0 Not tainted 5.7.0-rc3-CI-Patchwork_17536+ #1
[  449.022970] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLSFWI1.R00.2457.A16.1912270059 12/27/2019
[  449.022976] Workqueue: events_long drm_dp_mst_link_probe_work
[  449.022982] RIP: 0010:__list_add_valid+0x4d/0x70
[  449.022987] Code: c3 48 89 d1 48 c7 c7 f0 e7 32 82 48 89 c2 e8 3a 49 b7 ff 0f 0b 31 c0 c3 48 89 c1 4c 89 c6 48 c7 c7 40 e8 32 82 e8 23 49 b7 ff <0f> 0b 31 c0 c3 48 89 f2 4c 89 c1 48 89 fe 48 c7 c7 90 e8 32 82 e8
[  449.022991] RSP: 0018:ffffc900001abcb0 EFLAGS: 00010286
[  449.022995] RAX: 0000000000000000 RBX: ffff88847dae2d58 RCX: 0000000000000001
[  449.022999] RDX: 0000000080000001 RSI: ffff88849d914978 RDI: 00000000ffffffff
[  449.023002] RBP: ffff88847dae32c0 R08: ffff88849d914978 R09: 0000000000000000
[  449.023006] R10: ffffc900001abcb8 R11: 0000000000000000 R12: ffff888490d98400
[  449.023009] R13: ffff88847dae3230 R14: ffff88847db1c140 R15: ffff888490d98540
[  449.023013] FS:  0000000000000000(0000) GS:ffff88849ff00000(0000) knlGS:0000000000000000
[  449.023017] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  449.023021] CR2: 00007fb96fafdc63 CR3: 0000000005610004 CR4: 0000000000760ee0
[  449.023025] PKRU: 55555554
[  449.023028] Call Trace:
[  449.023034]  drm_dp_queue_down_tx+0x59/0x110
[  449.023041]  ? rcu_read_lock_sched_held+0x4d/0x80
[  449.023050]  ? kmem_cache_alloc_trace+0x2a6/0x2d0
[  449.023060]  drm_dp_send_link_address+0x74/0x870
[  449.023065]  ? __slab_free+0x3e1/0x5c0
[  449.023071]  ? lockdep_hardirqs_on+0xe0/0x1c0
[  449.023078]  ? lockdep_hardirqs_on+0xe0/0x1c0
[  449.023097]  drm_dp_check_and_send_link_address+0x9a/0xc0
[  449.023106]  drm_dp_mst_link_probe_work+0x9e/0x160
[  449.023117]  process_one_work+0x268/0x600
[  449.023124]  ? __schedule+0x307/0x8d0
[  449.023139]  worker_thread+0x37/0x380
[  449.023149]  ? process_one_work+0x600/0x600
[  449.023153]  kthread+0x140/0x160
[  449.023159]  ? kthread_park+0x80/0x80
[  449.023169]  ret_from_fork+0x24/0x50

Fixes: d308a881a591 ("drm/dp_mst: Kill the second sideband tx slot, save the world")
Cc: Lyude Paul <lyude@redhat.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Wayne Lin <Wayne.Lin@amd.com>
Cc: <stable@vger.kernel.org> # v3.17+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/drm_dp_mst_topology.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
index 2d4132e0a98f..70455e304a26 100644
--- a/drivers/gpu/drm/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/drm_dp_mst_topology.c
@@ -1197,7 +1197,8 @@ static int drm_dp_mst_wait_tx_reply(struct drm_dp_mst_branch *mstb,
 
 		/* remove from q */
 		if (txmsg->state == DRM_DP_SIDEBAND_TX_QUEUED ||
-		    txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND)
+		    txmsg->state == DRM_DP_SIDEBAND_TX_START_SEND ||
+		    txmsg->state == DRM_DP_SIDEBAND_TX_SENT)
 			list_del(&txmsg->next);
 	}
 out:
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
