Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA56439038
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 09:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50DF989D8A;
	Mon, 25 Oct 2021 07:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 497B889C69
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 07:19:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10147"; a="227037260"
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="227037260"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 00:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,179,1631602800"; d="scan'208";a="496659730"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga008.jf.intel.com with ESMTP; 25 Oct 2021 00:19:44 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Oct 2021 12:43:17 +0530
Message-Id: <20211025071317.3393329-3-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211025071317.3393329-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
References: <20211025071317.3393329-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V2 2/2] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

selftest --r live shows failure in suspend tests when
RPM wakelock is not acquired during suspend.

This changes addresses below error :
<4> [154.177535] RPM wakelock ref not held during HW access
<4> [154.177575] WARNING: CPU: 4 PID: 5772 at
drivers/gpu/drm/i915/intel_runtime_pm.h:113
fwtable_write32+0x240/0x320 [i915]
<4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper
fuse snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp
snd_pcm prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci
btusb btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: i915]
<4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
U            5.15.0-rc6-CI-Patchwork_21432+ #1
<4> [154.178154] Hardware name: ASUS System Product Name/TUF GAMING
Z590-PLUS WIFI, BIOS 0811 04/06/2021
<4> [154.178160] RIP: 0010:fwtable_write32+0x240/0x320 [i915]
<4> [154.178604] Code: 15 7b e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
00 00 00 48
<4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286
<4> [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
RCX: 0000000000000001
<4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
RDI: 00000000ffffffff
<4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
R09: c0000000ffffcd5a
<4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
R12: 0000000000000000
<4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
R15: 0000000000000000
<4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
knlGS:0000000000000000
<4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
CR4: 0000000000770ee0
<4> [154.178682] PKRU: 55555554
<4> [154.178687] Call Trace:
<4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915]
<4> [154.179284]  intel_pxp_suspend+0x1f/0x30 [i915]
<4> [154.179807]  live_gt_resume+0x5b/0x90 [i915]

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index 524eaf678790..65535f459f9b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -298,10 +298,14 @@ static void wait_for_suspend(struct intel_gt *gt)
 
 void intel_gt_suspend_prepare(struct intel_gt *gt)
 {
+	intel_wakeref_t wakeref;
+
 	user_forcewake(gt, true);
 	wait_for_suspend(gt);
 
-	intel_pxp_suspend(&gt->pxp, false);
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
+		intel_pxp_suspend(&gt->pxp, false);
+	}
 }
 
 static suspend_state_t pm_suspend_target(void)
-- 
2.31.1

