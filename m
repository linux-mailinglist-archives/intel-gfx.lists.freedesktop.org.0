Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABC984940E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 07:55:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CB621123E4;
	Mon,  5 Feb 2024 06:55:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyKg6oky";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E9B1123E4
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 06:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707116135; x=1738652135;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V+OQQND8EfGszRHhG597lpXEf3IWF4ojHfZD9c5+Y7w=;
 b=AyKg6okyhKxpr9dWXqOcGmXF3p2c7tC4Pr9E97dJ8iTZSR3/aoV9jfuv
 p8gRdI8e+hSwSyw6H8bycXQFS/PEJMiZBRp43lFVLLdKGAMuqCJuYFEhW
 4rrGToJbCc7dqrgv9ehAE8a4KchM6YOtDwMeSLpW0vQSW+zT8eIwqQ40z
 p7po43O51Nutd0gHcOr+MLLbJ4K+UFORjLZffu0lObkJzCRIuLfrhHgdx
 wXMWJx2u1m8f9msa8hLFD7wfY4V+/dMIaPO6f+nhbgk2vrlOdi+Kqzz4S
 TGkCFAWlXGBuoDSHIzWq8h8dHFBjpgY9wfiZuVnFI7986dFyESQx8D6s5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10974"; a="11819711"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="11819711"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 22:55:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; d="scan'208";a="31438012"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa002.jf.intel.com with ESMTP; 04 Feb 2024 22:55:33 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 6/6] drm/i915: do not defer cleanup work
Date: Mon,  5 Feb 2024 12:18:36 +0530
Message-Id: <20240205064836.3645402-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
References: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

After we move the cursor fb unpin to a vblank work, we encounter
race conditions between the vblank work and the atomic clean up
work leading to dump stacks[1]. Let's serialize the clean up
to avoid theses races.

[1]

   [  278.748767] Workqueue: events_highpri intel_atomic_cleanup_work [i915]
   [  278.749115] RIP: 0010:intel_display_rps_mark_interactive+0x4/0x40 [i915]
   [  278.749425] Code: 92 cb 20 e1 e9 49 ff ff ff 5b 48 89 ef 5d 41 5c e9 11 23 44 e1 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66 0f 1f 00 <38> 96 a5 05 00 00 74 2a 55 48 89 f5 0f b6 f2 53 48 8b bf 40 37 00
   [  278.749428] RSP: 0018:ffffc9000029fdc8 EFLAGS: 00010246
   [  278.749433] RAX: 0000000000000060 RBX: 0000000000000000 RCX: 0000000000000000
   [  278.749435] RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffff888124d70000
   [  278.749438] RBP: ffff88810394c000 R08: 0000000000000000 R09: ffffc9000029fc80
   [  278.749441] R10: 0000000000f6d950 R11: 0000000000f6da18 R12: ffff888124d70000
   [  278.749443] R13: ffff88814c952000 R14: ffff8881000aac05 R15: ffff8881059baf10
   [  278.749446] FS:  0000000000000000(0000) GS:ffff88817bd80000(0000) knlGS:0000000000000000
   [  278.749449] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
   [  278.749452] CR2: 00000000000005a5 CR3: 0000000104078000 CR4: 0000000000350ef0
   [  278.749454] Call Trace:
   [  278.749458]  <TASK>
   [  278.749461]  ? __die_body+0x1a/0x60
   [  278.749469]  ? page_fault_oops+0x156/0x450
   [  278.749474]  ? do_user_addr_fault+0x65/0x9e0
   [  278.749479]  ? exc_page_fault+0x68/0x1a0
   [  278.749486]  ? asm_exc_page_fault+0x26/0x30
   [  278.749494]  ? intel_display_rps_mark_interactive+0x4/0x40 [i915]
   [  278.749802]  intel_cleanup_plane_fb+0x6f/0xc0 [i915]
   [  278.750114]  drm_atomic_helper_cleanup_planes+0x42/0x60
   [  278.750122]  intel_atomic_cleanup_work+0x70/0xc0 [i915]
   [  278.750433]  ? process_scheduled_works+0x264/0x530
   [  278.750438]  process_scheduled_works+0x2db/0x530
   [  278.750444]  ? __pfx_worker_thread+0x10/0x10
   [  278.750448]  worker_thread+0x18c/0x350
   [  278.750452]  ? __pfx_worker_thread+0x10/0x10
   [  278.750455]  kthread+0xfe/0x130
   [  278.750460]  ? __pfx_kthread+0x10/0x10
   [  278.750464]  ret_from_fork+0x2c/0x50
   [  278.750468]  ? __pfx_kthread+0x10/0x10
   [  278.750472]  ret_from_fork_asm+0x1b/0x30

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bf684c4d1732..b0e89036508e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7006,10 +7006,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
 	}
 }
 
-static void intel_atomic_cleanup_work(struct work_struct *work)
+static void intel_atomic_cleanup_work(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state =
-		container_of(work, struct intel_atomic_state, base.commit_work);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
@@ -7283,8 +7281,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * schedule point (cond_resched()) here anyway to keep latencies
 	 * down.
 	 */
-	INIT_WORK(&state->base.commit_work, intel_atomic_cleanup_work);
-	queue_work(system_highpri_wq, &state->base.commit_work);
+
+	intel_atomic_cleanup_work(state);
 }
 
 static void intel_atomic_commit_work(struct work_struct *work)
-- 
2.25.1

