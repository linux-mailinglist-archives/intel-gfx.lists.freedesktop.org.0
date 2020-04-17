Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCE71ADA23
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 11:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370A46E3E3;
	Fri, 17 Apr 2020 09:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7CC96E3E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 09:39:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20930465-1500050 
 for multiple; Fri, 17 Apr 2020 10:39:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 10:39:28 +0100
Message-Id: <20200417093928.17822-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417093928.17822-1-chris@chris-wilson.co.uk>
References: <20200417093928.17822-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: Take the engine wakeref
 around __rps_up_interrupt
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since we are touching the device to read the registers, we are required
to ensure the device is awake at the time. Currently, we believe
ourselves to be inside the active request [thus an active engine
wakeref], but since that may be retired in the background, we can
spontaneously lose the wakeref and the ability to probe the HW.

<4> [379.686703] RPM wakelock ref not held during HW access
<4> [379.686805] WARNING: CPU: 7 PID: 4869 at ./drivers/gpu/drm/i915/intel_runtime_pm.h:115 gen12_fwtable_read32+0x233/0x300 [i915]
<4> [379.686808] Modules linked in: i915(+) vgem snd_hda_codec_hdmi mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul ax88179_178a usbnet mii ghash_clmulni_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm e1000e mei_me ptp mei pps_core intel_lpss_pci prime_numbers [last unloaded: i915]
<4> [379.686827] CPU: 7 PID: 4869 Comm: i915_selftest Tainted: G     U            5.7.0-rc1-CI-CI_DRM_8313+ #1
<4> [379.686830] Hardware name: Intel Corporation Tiger Lake Client Platform/TigerLake U DDR4 SODIMM RVP, BIOS TGLSFWI1.R00.2457.A13.1912190237 12/19/2019
<4> [379.686883] RIP: 0010:gen12_fwtable_read32+0x233/0x300 [i915]
<4> [379.686887] Code: d8 ea e0 0f 0b e9 19 fe ff ff 80 3d ad 12 2d 00 00 0f 85 17 fe ff ff 48 c7 c7 b0 32 3e a0 c6 05 99 12 2d 00 01 e8 2d d8 ea e0 <0f> 0b e9 fd fd ff ff 8b 05 c4 75 56 e2 85 c0 0f 85 84 00 00 00 48
<4> [379.686889] RSP: 0018:ffffc90000727970 EFLAGS: 00010286
<4> [379.686892] RAX: 0000000000000000 RBX: ffff88848cc20ee8 RCX: 0000000000000001
<4> [379.686894] RDX: 0000000080000001 RSI: ffff88843b1f0900 RDI: 00000000ffffffff
<4> [379.686896] RBP: 0000000000000000 R08: ffff88843b1f0900 R09: 0000000000000000
<4> [379.686898] R10: 0000000000000000 R11: 0000000000000000 R12: 000000000000a058
<4> [379.686900] R13: 0000000000000001 R14: ffff88848cc2bf30 R15: 00000000ffffffea
<4> [379.686902] FS:  00007f7d63f5e300(0000) GS:ffff8884a0180000(0000) knlGS:0000000000000000
<4> [379.686904] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [379.686907] CR2: 000055e5c30f4988 CR3: 000000042e190002 CR4: 0000000000760ee0
<4> [379.686910] PKRU: 55555554
<4> [379.686911] Call Trace:
<4> [379.686986]  live_rps_interrupt+0xb14/0xc10 [i915]
<4> [379.687051]  ? intel_rps_unpark+0xb0/0xb0 [i915]
<4> [379.687057]  ? __trace_bprintk+0x57/0x80
<4> [379.687143]  __i915_subtests+0xb8/0x210 [i915]
<4> [379.687222]  ? __i915_live_teardown+0x50/0x50 [i915]
<4> [379.687291]  ? __intel_gt_live_setup+0x30/0x30 [i915]
<4> [379.687361]  __run_selftests+0x112/0x170 [i915]
<4> [379.687431]  i915_live_selftests+0x2c/0x60 [i915]
<4> [379.687491]  i915_pci_probe+0x93/0x1b0 [i915]

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/selftest_rps.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
index 199d608aa763..e60600d14937 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rps.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
@@ -39,10 +39,10 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 	if (!intel_engine_can_store_dword(engine))
 		return 0;
 
-	intel_gt_pm_wait_for_idle(engine->gt);
-	GEM_BUG_ON(rps->active);
-
-	rps->cur_freq = rps->min_freq;
+	mutex_lock(&rps->lock);
+	GEM_BUG_ON(!rps->active);
+	intel_rps_set(rps, rps->min_freq);
+	mutex_unlock(&rps->lock);
 
 	rq = igt_spinner_create_request(spin, engine->kernel_context, MI_NOOP);
 	if (IS_ERR(rq))
@@ -105,7 +105,6 @@ static int __rps_up_interrupt(struct intel_rps *rps,
 		return -EINVAL;
 	}
 
-	intel_gt_pm_wait_for_idle(engine->gt);
 	return 0;
 }
 
@@ -195,9 +194,16 @@ int live_rps_interrupt(void *arg)
 	for_each_engine(engine, gt, id) {
 		/* Keep the engine busy with a spinner; expect an UP! */
 		if (pm_events & GEN6_PM_RP_UP_THRESHOLD) {
+			intel_gt_pm_wait_for_idle(engine->gt);
+			GEM_BUG_ON(rps->active);
+
+			intel_engine_pm_get(engine);
 			err = __rps_up_interrupt(rps, engine, &spin);
+			intel_engine_pm_put(engine);
 			if (err)
 				goto out;
+
+			intel_gt_pm_wait_for_idle(engine->gt);
 		}
 
 		/* Keep the engine awake but idle and check for DOWN */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
