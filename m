Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A441D8531
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 20:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17BA4896C4;
	Mon, 18 May 2020 18:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501C8896D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 18:17:50 +0000 (UTC)
IronPort-SDR: LAlI+ycwTSsIIwo/cAuP5FldrT8KRY457cAd06XfT7dWQryC4uKuB/EtWrZ4cBNmp+eZchj6DQ
 tpIs+6Hx44xQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:50 -0700
IronPort-SDR: SaEhro75nk5XdA/nbmwPNpSkb/G2U4AZ/Jzz3LvizJRLQiNK4Oa9nGpjUU2YLo1Thh6dfTl5iW
 tVZ4u+iXVbzQ==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439318288"
Received: from jkrzyszt-desk.ger.corp.intel.com (HELO
 jkrzyszt-desk.igk.intel.com) ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 11:17:49 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 20:17:18 +0200
Message-Id: <20200518181720.14625-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
References: <20200518181720.14625-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 2/4] drm/i915: Release GT resources on
 driver remove
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

GT scratch page is now released and its DMA mappings revoked on driver
release.  If a device is removed while its file descriptor is still
open, the driver is not released until last device file descriptor
closure.  In that case intel-iommu code may judge late DMA unmapping as
a bug and kernel panic may occur.

Since DMA mapped address space may be no longer usable after device
removal, release GT resources including scratch page as well as a
reference to its address space on driver remove.  Implement that by
just calling intel_gt_driver_release() on GT remove as that function
has been already made safe to be called again on driver release even if
already called before, e.g. on GEM initialization failure.

<4> [39.201062] ------------[ cut here ]------------
<2> [39.201074] kernel BUG at drivers/iommu/intel-iommu.c:3717!
<4> [39.201154] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
<4> [39.201162] CPU: 6 PID: 7 Comm: kworker/u16:0 Tainted: G     U  W         5.7.0-rc5-CI-CI_DRM_8485+ #1
<4> [39.201172] Hardware name: Intel Corporation Ice Lake Client Platform/IceLake U DDR4 SODIMM PD RVP, BIOS ICLSFWR1.R00.3175.A00.1904261428 04/26/2019
<4> [39.201243] Workqueue: i915 __i915_gem_free_work [i915]
<4> [39.201252] RIP: 0010:intel_unmap+0x1f5/0x230
<4> [39.201260] Code: 01 e8 9f bc a9 ff 85 c0 74 09 80 3d df 60 09 01 00 74 19 65 ff 0d 13 12 97 7e 0f 85 fc fe ff ff e8 82 b0 95 ff e9 f2 fe ff ff <0f> 0b e8 d4 bd a9 ff 85 c0 75 de 48 c7 c2 10 84 2c 82 be 54 00 00
<4> [39.201278] RSP: 0018:ffffc900000dbc98 EFLAGS: 00010246
<4> [39.201285] RAX: 0000000000000000 RBX: 0000000000000000 RCX: ffffea0021d30000
<4> [39.201293] RDX: 000000000005f000 RSI: 00000000fed00000 RDI: ffff888889eec000
<4> [39.201301] RBP: ffff888889eec0b0 R08: 0000000000000000 R09: 00000000fffffffe
<4> [39.201309] R10: 00000000458139fc R11: 00000000f6c6d8b2 R12: 0000000000000025
<4> [39.201318] R13: 00000000fed00000 R14: 000000000005f000 R15: 0000000000000025
<4> [39.201326] FS:  0000000000000000(0000) GS:ffff888890100000(0000) knlGS:0000000000000000
<4> [39.201335] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [39.201342] CR2: 0000560f1308e148 CR3: 0000000881972002 CR4: 0000000000760ee0
<4> [39.201350] PKRU: 55555554
<4> [39.201355] Call Trace:
<4> [39.201361]  intel_unmap_sg+0x7b/0x180
<4> [39.201412]  shmem_put_pages+0x43/0x250 [i915]
<4> [39.201472]  ? __i915_gem_object_unset_pages.part.12+0x11b/0x1d0 [i915]
<4> [39.201531]  ? __i915_gem_object_unset_pages.part.12+0x133/0x1d0 [i915]
<4> [39.201590]  __i915_gem_object_put_pages+0x81/0xc0 [i915]
<4> [39.201646]  __i915_gem_free_objects.isra.21+0x1a7/0x4b0 [i915]
<4> [39.201658]  process_one_work+0x268/0x600
<4> [39.201666]  ? __schedule+0x307/0x8d0
<4> [39.201675]  worker_thread+0x1d0/0x380
<4> [39.201682]  ? process_one_work+0x600/0x600
<4> [39.201689]  kthread+0x140/0x160
<4> [39.201695]  ? kthread_park+0x80/0x80
<4> [39.201703]  ret_from_fork+0x24/0x50
<4> [39.201712] Modules linked in: snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic i915 mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel snd_intel_dspcfg snd_hda_codec e1000e ax88179_178a usbnet snd_hwdep mii snd_hda_core ghash_clmulni_intel snd_pcm ptp pps_core mei_me mei intel_lpss_pci prime_numbers
<4> [39.201764] ---[ end trace f3ec1bae3de04509 ]---

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f069551e412f..5771e80e85a6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -599,6 +599,8 @@ void intel_gt_driver_remove(struct intel_gt *gt)
 	intel_uc_driver_remove(&gt->uc);
 
 	intel_engines_release(gt);
+
+	intel_gt_driver_release(gt);
 }
 
 void intel_gt_driver_unregister(struct intel_gt *gt)
-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
