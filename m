Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7211D853A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:17:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 490476E471;
	Mon, 18 May 2020 18:17:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1736E46D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:17:52 +0000 (UTC)
IronPort-SDR: 24VEfL/uwmM0yXSn/j3nsqibj9sucD/coS/XLKGCaolSg0BJSnqA1BuOuxSE0d8SYsV8c72S4l
 m9QHzV1QJ0+Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:52 -0700
IronPort-SDR: aRNJ1t059QILTwclHsulRYT+CMyUDPgH9AFvQX2rVgOP6CHDlyMJ/1iqKD7QivCM11b8hpCN1z
 tTufsFzeF65g==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439318297"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 20:17:20 +0200
Message-Id: <20200518181720.14625-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 4/4] drm/i915: Move UC firmware cleanup from
 driver_release to _remove
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

UC firmware is stored in a GEM object.  Clean it up on driver remove to
avoid intel-iommu triggered kernel panic on late DMA unmapping or even
an RPM related warning on object late removal in no IOMMU setups.

<4> [93.335282] ------------[ cut here ]------------
<4> [93.335515] pm_runtime_get_sync() failed: -13
<4> [93.336056] WARNING: CPU: 6 PID: 200 at drivers/gpu/drm/i915/intel_runtime_pm.c:361 __intel_runtime_pm_get+0x4d/0x60 [i915]
<4> [93.336104] Modules linked in: snd_hda_codec_hdmi mei_hdcp i915 x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_hda_intel cdc_ether snd_intel_dspcfg usbnet snd_hda_codec mii snd_hwdep snd_hda_core e1000e snd_pcm ptp pps_core mei_me mei intel_lpss_pci prime_numbers
<4> [93.336268] CPU: 6 PID: 200 Comm: kworker/u16:3 Tainted: G     U            5.7.0-rc4-CI-Trybot_6405+ #1
<4> [93.336289] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake Y LPDDR4x T4 Crb, BIOS TGLSFWI1.R00.2457.A16.1912270059 12/27/2019
<4> [93.336811] Workqueue: i915 __i915_gem_free_work [i915]
<4> [93.337296] RIP: 0010:__intel_runtime_pm_get+0x4d/0x60 [i915]
<4> [93.337332] Code: ff ff 48 89 df 5b 5d e9 a1 fa ff ff 80 3d 4b 7a 2e 00 00 75 e1 89 c6 48 c7 c7 a8 2d 40 a0 c6 05 39 7a 2e 00 01 e8 53 fc e9 e0 <0f> 0b eb c8 0f 1f 44 00 00 66 2e 0f 1f 84 00 00 00 00 00 41 57 41
<4> [93.337357] RSP: 0018:ffffc9000144bdd8 EFLAGS: 00010282
<4> [93.337384] RAX: 0000000000000000 RBX: ffff88838ee5bc40 RCX: 0000000000000001
<4> [93.337409] RDX: 0000000080000001 RSI: ffff88839d264928 RDI: 00000000ffffffff
<4> [93.337440] RBP: 0000000000000001 R08: ffff88839d264928 R09: 0000000000000000
<4> [93.337467] R10: 0000000000000000 R11: 0000000000000000 R12: ffff88838ee5bc40
<4> [93.337493] R13: 0000000000000006 R14: ffffffff82769a30 R15: ffff88839376bab0
<4> [93.337515] FS:  0000000000000000(0000) GS:ffff8883a4100000(0000) knlGS:0000000000000000
<4> [93.337542] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [93.337563] CR2: 000055bc19b16ff8 CR3: 00000003a11c4005 CR4: 0000000000760ee0
<4> [93.337583] PKRU: 55555554
<4> [93.337605] Call Trace:
<4> [93.338148]  i915_gem_object_release_mmap+0x23/0x70 [i915]
<4> [93.338665]  __i915_gem_free_objects.isra.21+0x10a/0x4b0 [i915]
<4> [93.338741]  process_one_work+0x268/0x600
<4> [93.338785]  ? __schedule+0x307/0x8d0
<4> [93.338878]  worker_thread+0x37/0x380
<4> [93.338929]  ? process_one_work+0x600/0x600
<4> [93.338963]  kthread+0x140/0x160
<4> [93.339006]  ? kthread_park+0x80/0x80
<4> [93.339057]  ret_from_fork+0x24/0x50
<4> [93.339181] irq event stamp: 204220
<4> [93.339219] hardirqs last  enabled at (204219): [<ffffffff8113399d>] console_unlock+0x4cd/0x5a0
<4> [93.339250] hardirqs last disabled at (204220): [<ffffffff81001d50>] trace_hardirqs_off_thunk+0x1a/0x1c
<4> [93.339277] softirqs last  enabled at (204208): [<ffffffff81e00395>] __do_softirq+0x395/0x49e
<4> [93.339307] softirqs last disabled at (204197): [<ffffffff810bbc9a>] irq_exit+0xba/0xc0
<4> [93.339330] ---[ end trace f066187622b8c484 ]---

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 87d3c4f5b6c6..f9d37c7e6d6f 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1191,6 +1191,8 @@ void i915_gem_driver_remove(struct drm_i915_private *dev_priv)
 
 	i915_gem_driver_remove__contexts(dev_priv);
 
+	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
+
 	i915_gem_drain_freed_objects(dev_priv);
 }
 
@@ -1202,7 +1204,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv)
 
 	intel_wa_list_free(&dev_priv->gt_wa_list);
 
-	intel_uc_cleanup_firmwares(&dev_priv->gt.uc);
 	i915_gem_cleanup_userptr(dev_priv);
 
 	i915_gem_drain_freed_objects(dev_priv);
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
