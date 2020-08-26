Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B03252FCF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 15:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B9836EA78;
	Wed, 26 Aug 2020 13:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0413F6EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:28:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22244733-1500050 
 for multiple; Wed, 26 Aug 2020 14:28:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 14:27:41 +0100
Message-Id: <20200826132811.17577-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200826132811.17577-1-chris@chris-wilson.co.uk>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/39] drm/i915/gem: Hold request reference for
 canceling an active context
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

We have to be very careful while walking the timeline->requests list
under the RCU guard, as the requests (and so rq->link) use
SLAB_TYPESAFE_BY_RCU and so the requests may be reallocated within an
rcu grace period. As the requests are reallocated, they are removed from
one list and placed on another, and if we are iterating over that
request at that moment, the list iteration jumps from one list to the
next and promptly gets confused. Verify we hold the request reference
to ensure that the request is not added to a new list behind our backs.

<4> [582.745252] general protection fault, probably for non-canonical address 0xcccccccccccccd5c: 0000 [#1] PREEMPT SMP PTI
<4> [582.745297] CPU: 0 PID: 1475 Comm: gem_ctx_persist Not tainted 5.9.0-rc1-CI-CI_DRM_8908+ #1
<4> [582.745304] Hardware name: Intel Corporation NUC7CJYH/NUC7JYB, BIOS JYGLKCPX.86A.0027.2018.0125.1347 01/25/2018
<4> [582.745317] RIP: 0010:__lock_acquire+0x2c3/0x1f40
<4> [582.745323] Code: 00 65 8b 05 c7 8a ef 7e 85 c0 0f 85 b4 07 00 00 44 8b 9d c4 08 00 00 45 85 db 0f 84 0f 01 00 00 ba 05 00 00 00 e9 c8 06 00 00 <48> 81 3f c0 89 c7 82 b8 00 00 00 00 41 0f 45 c0 83 fe 01 41 89 c3
<4> [582.745334] RSP: 0018:ffffc9000461bc40 EFLAGS: 00010002
<4> [582.745340] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
<4> [582.745345] RDX: 0000000000000000 RSI: 0000000000000000 RDI: cccccccccccccd5c
<4> [582.745350] RBP: ffff8881ec4a2880 R08: 0000000000000001 R09: 0000000000000001
<4> [582.745356] R10: 0000000000000001 R11: 0000000000000001 R12: 0000000000000000
<4> [582.745361] R13: 0000000000000000 R14: 0000000000000000 R15: cccccccccccccd5c
<4> [582.745367] FS:  00007fb44da78e40(0000) GS:ffff888278000000(0000) knlGS:0000000000000000
<4> [582.745373] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [582.745378] CR2: 00007fb44daad040 CR3: 0000000268428000 CR4: 0000000000350ef0
<4> [582.745383] Call Trace:
<4> [582.745390]  ? __lock_acquire+0x913/0x1f40
<4> [582.745397]  lock_acquire+0xb5/0x3c0
<4> [582.745526]  ? kill_engines+0x19a/0x4b0 [i915]
<4> [582.745533]  ? find_held_lock+0x2d/0x90
<4> [582.745541]  _raw_spin_lock_irq+0x30/0x40
<4> [582.745635]  ? kill_engines+0x19a/0x4b0 [i915]
<4> [582.745727]  kill_engines+0x19a/0x4b0 [i915]
<4> [582.745820]  context_close+0x195/0x410 [i915]
<4> [582.745912]  i915_gem_context_close+0x5b/0x160 [i915]
<4> [582.745994]  i915_driver_postclose+0x14/0x40 [i915]
<4> [582.746003]  drm_file_free.part.13+0x240/0x290
<4> [582.746009]  drm_release_noglobal+0x16/0x50
<4> [582.746016]  __fput+0xa5/0x250
<4> [582.746021]  task_work_run+0x6e/0xb0
<4> [582.746028]  exit_to_user_mode_prepare+0x178/0x180
<4> [582.746034]  syscall_exit_to_user_mode+0x36/0x220
<4> [582.746040]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
<4> [582.746045] RIP: 0033:0x7fb44d1dc421
<4> [582.746050] Code: f7 d8 64 89 02 48 c7 c0 ff ff ff ff c3 66 2e 0f 1f 84 00 00 00 00 00 66 90 8b 05 ea cf 20 00 85 c0 75 16 b8 03 00 00 00 0f 05 <48> 3d 00 f0 ff ff 77 3f f3 c3 0f 1f 44 00 00 53 89 fb 48 83 ec 10
<4> [582.746062] RSP: 002b:00007ffed2e83818 EFLAGS: 00000246 ORIG_RAX: 0000000000000003
<4> [582.746069] RAX: 0000000000000000 RBX: 0000556410bfe840 RCX: 00007fb44d1dc421
<4> [582.746075] RDX: 000000000000000a RSI: 00000000c0406469 RDI: 0000000000000008
<4> [582.746080] RBP: 0000000000000008 R08: 00007fb44d1c51cc R09: 00007fb44d1c5240
<4> [582.746086] R10: 0000000000000001 R11: 0000000000000246 R12: 00000000fffffffb
<4> [582.746091] R13: 0000000000000006 R14: 0000000000000000 R15: 000000000000000a
<4> [582.746099] Modules linked in: vgem mei_hdcp snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic ledtrig_audio btusb btrtl btbcm btintel x86_pkg_temp_thermal coretemp crct10dif_pclmul crc32_pclmul bluetooth ghash_clmulni_intel ecdh_generic ecc i915 r8169 realtek mei_me mei snd_hda_intel i2c_hid snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm pinctrl_geminilake pinctrl_intel prime_numbers [last unloaded: test_drm_mm]

Fixes: 09a3054f38db ("drm/i915/gem: Reduce context termination list iteration guard to RCU")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 25 ++++++++++++++++-----
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index cf5ecbde9e06..a548626fa8bc 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -460,8 +460,8 @@ __active_engine(struct i915_request *rq, struct intel_engine_cs **active)
 		spin_lock(&locked->active.lock);
 	}
 
-	if (!i915_request_completed(rq)) {
-		if (i915_request_is_active(rq) && rq->fence.error != -EIO)
+	if (i915_request_is_active(rq)) {
+		if (!i915_request_completed(rq))
 			*active = locked;
 		ret = true;
 	}
@@ -479,13 +479,26 @@ static struct intel_engine_cs *active_engine(struct intel_context *ce)
 	if (!ce->timeline)
 		return NULL;
 
+	/*
+	 * rq->link is only SLAB_TYPESAFE_BY_RCU, we need to hold a reference
+	 * to the request to prevent it being transferred to a new timeline
+	 * (and onto a new timeline->requests list).
+	 */
 	rcu_read_lock();
-	list_for_each_entry_rcu(rq, &ce->timeline->requests, link) {
-		if (i915_request_is_active(rq) && i915_request_completed(rq))
-			continue;
+	list_for_each_entry_reverse(rq, &ce->timeline->requests, link) {
+		bool found;
+
+		/* timeline is already completed upto this point? */
+		if (!i915_request_get_rcu(rq))
+			break;
 
 		/* Check with the backend if the request is inflight */
-		if (__active_engine(rq, &engine))
+		found = true;
+		if (likely(rcu_access_pointer(rq->timeline) == ce->timeline))
+			found = __active_engine(rq, &engine);
+
+		i915_request_put(rq);
+		if (found)
 			break;
 	}
 	rcu_read_unlock();
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
