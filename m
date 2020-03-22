Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B639C18EB75
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Mar 2020 19:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3CF6E0E6;
	Sun, 22 Mar 2020 18:19:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D376E0E6
 for <intel-gfx@lists.freedesktop.org>; Sun, 22 Mar 2020 18:19:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20653560-1500050 
 for multiple; Sun, 22 Mar 2020 18:19:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Mar 2020 18:19:46 +0000
Message-Id: <20200322181946.22059-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Mark timeline->cacheline as
 destroyed after rcu grace period
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

Since we take advantage of RCU for some i915_active objects, like the
intel_timeline_cacheline, we need to delay the i915_active_fini until
after the RCU grace period and we perform the kfree -- that is until
after all RCU protected readers.

<3> [108.204873] ODEBUG: assert_init not available (active state 0) object type: i915_active hint: __cacheline_active+0x0/0x80 [i915]
<4> [108.207377] WARNING: CPU: 3 PID: 2342 at lib/debugobjects.c:488 debug_print_object+0x67/0x90
<4> [108.207400] Modules linked in: vgem snd_hda_codec_hdmi x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul snd_hda_intel ghash_clmulni_intel snd_intel_dspcfg snd_hda_codec ax88179_178a snd_hwdep usbnet btusb snd_hda_core btrtl mii btbcm btintel snd_pcm bluetooth ecdh_generic ecc i915 i2c_hid pinctrl_sunrisepoint pinctrl_intel intel_lpss_pci prime_numbers
<4> [108.207587] CPU: 3 PID: 2342 Comm: gem_exec_parall Tainted: G     U            5.6.0-rc6-CI-Patchwork_17047+ #1
<4> [108.207609] Hardware name: Google Soraka/Soraka, BIOS MrChromebox-4.10 08/25/2019
<4> [108.207639] RIP: 0010:debug_print_object+0x67/0x90
<4> [108.207668] Code: 83 c2 01 8b 4b 14 4c 8b 45 00 89 15 87 d2 8a 02 8b 53 10 4c 89 e6 48 c7 c7 38 2b 32 82 48 8b 14 d5 80 2f 07 82 e8 49 d5 b7 ff <0f> 0b 5b 83 05 c3 f6 22 01 01 5d 41 5c c3 83 05 b8 f6 22 01 01 c3
<4> [108.207692] RSP: 0018:ffffc90000e7f890 EFLAGS: 00010282
<4> [108.207723] RAX: 0000000000000000 RBX: ffffc90000e7f8b0 RCX: 0000000000000001
<4> [108.207747] RDX: 0000000080000001 RSI: ffff88817ada8cb8 RDI: 00000000ffffffff
<4> [108.207770] RBP: ffffffffa0341cc0 R08: ffff88816b5a8948 R09: 0000000000000000
<4> [108.207792] R10: 0000000000000000 R11: 0000000000000000 R12: ffffffff82322d54
<4> [108.207814] R13: ffffffffa0341cc0 R14: ffffffff83df9568 R15: ffff88816064f400
<4> [108.207839] FS:  00007f437d753700(0000) GS:ffff88817ad80000(0000) knlGS:0000000000000000
<4> [108.207863] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [108.207887] CR2: 00007f2ad1fb5000 CR3: 00000001725d8004 CR4: 00000000003606e0
<4> [108.207907] Call Trace:
<4> [108.207959]  debug_object_assert_init+0x15c/0x180
<4> [108.208475]  ? i915_active_acquire_if_busy+0x10/0x50 [i915]
<4> [108.208513]  ? rcu_read_lock_held+0x4d/0x60
<4> [108.208970]  i915_active_acquire_if_busy+0x10/0x50 [i915]
<4> [108.209380]  intel_timeline_read_hwsp+0x81/0x540 [i915]
<4> [108.210262]  __emit_semaphore_wait+0x45/0x1b0 [i915]
<4> [108.210726]  ? i915_request_await_dma_fence+0x143/0x560 [i915]
<4> [108.211156]  i915_request_await_dma_fence+0x28a/0x560 [i915]
<4> [108.211633]  i915_request_await_object+0x24a/0x3f0 [i915]
<4> [108.212102]  eb_submit.isra.47+0x58f/0x920 [i915]
<4> [108.212622]  i915_gem_do_execbuffer+0x1706/0x2c70 [i915]
<4> [108.213071]  ? i915_gem_execbuffer2_ioctl+0xc0/0x470 [i915]

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 91debbc97c9a..3779c2ae0d65 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -119,6 +119,15 @@ static void __idle_hwsp_free(struct intel_timeline_hwsp *hwsp, int cacheline)
 	spin_unlock_irqrestore(&gt->hwsp_lock, flags);
 }
 
+static void __rcu_cacheline_free(struct rcu_head *rcu)
+{
+	struct intel_timeline_cacheline *cl =
+		container_of(rcu, typeof(*cl), rcu);
+
+	i915_active_fini(&cl->active);
+	kfree(cl);
+}
+
 static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
 {
 	GEM_BUG_ON(!i915_active_is_idle(&cl->active));
@@ -127,8 +136,7 @@ static void __idle_cacheline_free(struct intel_timeline_cacheline *cl)
 	i915_vma_put(cl->hwsp->vma);
 	__idle_hwsp_free(cl->hwsp, ptr_unmask_bits(cl->vaddr, CACHELINE_BITS));
 
-	i915_active_fini(&cl->active);
-	kfree_rcu(cl, rcu);
+	call_rcu(&cl->rcu, __rcu_cacheline_free);
 }
 
 __i915_active_call
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
