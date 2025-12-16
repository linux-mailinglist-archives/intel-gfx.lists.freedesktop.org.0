Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C53CC1BE8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 10:22:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8735410E7DC;
	Tue, 16 Dec 2025 09:22:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="lYlDSiYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E8410E7AD;
 Tue, 16 Dec 2025 09:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765876953;
 bh=2aCiPoFqv7jsKoKMUTTeKMoP2aYeHLiqbGHc/wFB9+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lYlDSiYwNuxANzt4cTr7aes+pLux/GX9WhMtbb1WofCyP/ObZUjrOn57Yl0PGVeSP
 mMGkn7yaBtcZKZ3EsCaJwgk4IU+0w81Txg8ZOLSIoaubfWrfLBdINFWtBEnaw/n+oR
 CJVfx1JW+JK+8t6+/EeRZBc1gjdnjjIDACilxxr5rT4Sru8XWQqDfx8S7J3gRGZqor
 i8P548MpmPR58tlWbKmQd1c0eJEv3z9VVvFRjEreXwz8NGgpDL/fHgOFM7ztlkqfUY
 FOWDsZfKpnieXqZf0ylFsFp3KPXouP9YbcrRJ7JX+NfCLZU5ic9caPjpoiK2uhhl+I
 7oenkqbrwAo/w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: [i915-rt v2 04/16] drm/i915/display: Make set_pipeconf use the fw
 variants
Date: Tue, 16 Dec 2025 10:22:31 +0100
Message-ID: <20251216092226.1777909-22-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251216092226.1777909-18-dev@lankhorst.se>
References: <20251216092226.1777909-18-dev@lankhorst.se>
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

The calls are used inside the critical section when updating
the gamma mode, and thus should use the _fw variants to prevent
locks.

Fixes following splat:
| BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
| in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 2115, name: modprobe
| preempt_count: 0, expected: 0
| RCU nest depth: 0, expected: 0
| 4 locks held by modprobe/2115:
|  #0: ffff99b9425161a0 (&dev->mutex){....}-{4:4}, at: __driver_attach+0xaf/0x1c0
|  #1: ffffaa224810f6c0 (crtc_ww_class_acquire){+.+.}-{0:0}, at: intel_initial_commit+0x4c/0x200 [i915]
|  #2: ffffaa224810f6e8 (crtc_ww_class_mutex){+.+.}-{4:4}, at: intel_initial_commit+0x4c/0x200 [i915]
|  #3: ffff99b94a6c9030 (&uncore->lock){+.+.}-{3:3}, at: gen6_write32+0x50/0x290 [i915]
| irq event stamp: 513344
| hardirqs last  enabled at (513343): [<ffffffff8ba8d84c>] _raw_spin_unlock_irqrestore+0x4c/0x60
| hardirqs last disabled at (513344): [<ffffffffc1543646>] intel_pipe_update_start+0x216/0x2c0 [i915]
| softirqs last  enabled at (512766): [<ffffffff8af045cf>] __local_bh_enable_ip+0x10f/0x170
| softirqs last disabled at (512712): [<ffffffffc14dfb6a>] __i915_request_queue+0x3a/0x70 [i915]
| CPU: 3 UID: 0 PID: 2115 Comm: modprobe Tainted: G        W           6.18.0-rc1+ #17 PREEMPT_{RT,(lazy)}
| Tainted: [W]=WARN
| Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68 Pro3-M, BIOS P2.30 06/29/2012
| Call Trace:
|  <TASK>
|  dump_stack_lvl+0x68/0x90
|  __might_resched.cold+0xf0/0x12b
|  rt_spin_lock+0x5f/0x200
|  gen6_write32+0x50/0x290 [i915]
|  ilk_set_pipeconf+0x12d/0x230 [i915]
|  ilk_color_commit_arm+0x2d/0x70 [i915]
|  intel_update_crtc+0x15b/0x690 [i915]
|  intel_commit_modeset_enables+0xa6/0xd0 [i915]
|  intel_atomic_commit_tail+0xd55/0x19a0 [i915]
|  intel_atomic_commit+0x25d/0x2a0 [i915]
|  drm_atomic_commit+0xad/0xe0 [drm]
|  intel_initial_commit+0x16c/0x200 [i915]
|  intel_display_driver_probe+0x2e/0x80 [i915]
|  i915_driver_probe+0x791/0xc10 [i915]
|  i915_pci_probe+0xd7/0x190 [i915]

Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04e14eaeacdb2..58b42e09907f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3013,8 +3013,9 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 
-	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
-	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
+	intel_de_write_fw(display, TRANSCONF(display, cpu_transcoder), val);
+	/* posting read */
+	intel_de_read_fw(display, TRANSCONF(display, cpu_transcoder));
 }
 
 static enum intel_output_format
@@ -3209,8 +3210,9 @@ void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	val |= TRANSCONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
 	val |= TRANSCONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
 
-	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
-	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
+	intel_de_write_fw(display, TRANSCONF(display, cpu_transcoder), val);
+	/* posting read */
+	intel_de_read_fw(display, TRANSCONF(display, cpu_transcoder));
 }
 
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
-- 
2.51.0

