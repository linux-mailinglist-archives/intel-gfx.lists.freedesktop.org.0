Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D99227B7F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 11:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF43F89F01;
	Tue, 21 Jul 2020 09:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7B689F01
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 09:19:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21882397-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 10:19:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jul 2020 10:19:09 +0100
Message-Id: <20200721091909.20671-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] HAX sched/core: Paper over the ttwu() race [take
 two]
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

On all Core platforms we see

<4> [181.766629] WARNING: CPU: 0 PID: 1524 at kernel/sched/core.c:2388 ttwu_queue_wakelist+0xbc/0xd0
<4> [181.766637] Modules linked in: i915(+) vgem snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio amdgpu mei_hdcp x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul btusb btrtl btbcm btintel bluetooth snd_hda_codec_hdmi ghash_clmulni_intel e1000e ecdh_generic snd_intel_dspcfg ecc igb snd_hda_codec ptp pps_core snd_hwdep snd_hda_core snd_pcm mei_me gpu_sched ttm mei intel_lpss_pci prime_numbers pinctrl_sunrisepoint pinctrl_intel [last unloaded: i915]
<4> [181.766685] CPU: 0 PID: 1524 Comm: igt/4 Tainted: G     U            5.8.0-rc4-gb182a04c513e3-drmtip_541+ #1
<4> [181.766694] Hardware name: Intel Corporation NUC8i7HVK/NUC8i7HVB, BIOS HNKBLi70.86A.0047.2018.0718.1706 07/18/2018
<4> [181.766705] RIP: 0010:ttwu_queue_wakelist+0xbc/0xd0
<4> [181.766710] Code: 00 00 00 5b 5d 41 5c 41 5d c3 31 c0 5b 5d 41 5c 41 5d c3 31 c0 f6 c3 08 74 f2 48 c7 c2 00 ad 03 00 83 7c 11 40 01 77 e4 eb 80 <0f> 0b 31 c0 eb dc 0f 1f 40 00 66 2e 0f 1f 84 00 00 00 00 00 bf 17
<4> [181.766726] RSP: 0018:ffffc90000003e08 EFLAGS: 00010046
<4> [181.766733] RAX: 0000000000000000 RBX: 00000000ffffffff RCX: ffff888276a00000
<4> [181.766740] RDX: 000000000003ad00 RSI: ffffffff8232045b RDI: ffffffff8233103e
<4> [181.766747] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000001
<4> [181.766754] R10: 00000000d3fa25c3 R11: 0000000053712267 R12: ffff88825b912940
<4> [181.766761] R13: 0000000000000000 R14: 0000000000000087 R15: 000000000003ad00
<4> [181.766769] FS:  0000000000000000(0000) GS:ffff888276a00000(0000) knlGS:0000000000000000
<4> [181.766777] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [181.766783] CR2: 000055b8245814e0 CR3: 0000000005610003 CR4: 00000000003606f0
<4> [181.766790] Call Trace:
<4> [181.766794]  <IRQ>
<4> [181.766798]  try_to_wake_up+0x21b/0x690
<4> [181.766805]  autoremove_wake_function+0xc/0x50
<4> [181.766858]  __i915_sw_fence_complete+0x1ee/0x250 [i915]
<4> [181.766912]  dma_i915_sw_fence_wake+0x2d/0x40 [i915]
<4> [181.766962]  signal_irq_work+0x38b/0x530 [i915]
<4> [181.766971]  irq_work_single+0x44/0x80
<4> [181.766977]  irq_work_run_list+0x28/0x40
<4> [181.766982]  irq_work_run+0x26/0x40
<4> [181.766988]  __sysvec_irq_work+0x3f/0x1d0
<4> [181.766993]  asm_call_on_stack+0x12/0x20
<4> [181.766997]  </IRQ>
<4> [181.767000]  sysvec_irq_work+0xdd/0x100
<4> [181.767005]  asm_sysvec_irq_work+0x12/0x20
<4> [181.767009] RIP: 0010:_raw_spin_unlock_irqrestore+0x49/0x60

about 90% of the time.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2110
References: b6e13e85829f ("sched/core: Fix ttwu() race")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 kernel/sched/core.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 6148aa6ff26d..a7bfc57efce5 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -2378,9 +2378,6 @@ static inline bool ttwu_queue_cond(int cpu, int wake_flags)
 
 static bool ttwu_queue_wakelist(struct task_struct *p, int cpu, int wake_flags)
 {
-	if (!p->on_cpu)
-		return false;
-
 	if (sched_feat(TTWU_QUEUE) && ttwu_queue_cond(cpu, wake_flags)) {
 		if (WARN_ON_ONCE(cpu == smp_processor_id()))
 			return false;
@@ -2641,8 +2638,9 @@ try_to_wake_up(struct task_struct *p, unsigned int state, int wake_flags)
 	 * to ensure we observe the correct CPU on which the task is currently
 	 * scheduling.
 	 */
-	if (smp_load_acquire(&p->on_cpu) &&
-	    ttwu_queue_wakelist(p, task_cpu(p), wake_flags | WF_ON_CPU))
+	cpu = smp_load_acquire(&p->on_cpu) ? task_cpu(p) : -1;
+	if (cpu != -1 &&
+	    ttwu_queue_wakelist(p, cpu, wake_flags | WF_ON_CPU))
 		goto unlock;
 
 	/*
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
