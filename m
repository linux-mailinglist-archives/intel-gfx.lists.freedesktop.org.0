Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pJNYJ7t6OWrpuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABEB6B1B79
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=kz1N3e0U;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 832C410E81A;
	Mon, 22 Jun 2026 18:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8BA810E7E8;
 Mon, 22 Jun 2026 18:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151841;
 bh=DjQ7Mk/ZHw3GzaAD/ang1bM0qcToSh+uSjHLb5rR6bM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kz1N3e0UN1vQFFusFoxKLsbHIr0P8btdC2fInq83TyTzcSJrGXPBm2LSlMoiei/Lv
 dO3gc+H7QAFxD8Y3JZGaa3fTEQk48dNefXkNvCRCQefIsVv5jQry6f4gdq6I3H8O+k
 WvEdw41NNNPt8XZ0augPqS/RGgfCXKzKliA+14Z9OnO43ZyTewkxp2FrYyasCsMJEM
 q4zh9Z/5iMyQCRN+pBSZ7/ZtKrDdzxx1QCG9QmYUJ8iB6x5n2IPvV5U/Q9AlGkQYdT
 JGGm/0DCZYto8djNl/pL7LcNB7goVUIyaHf4LyYgVp5aaCdFS7JcHqDYua6wJiBUue
 gXm2x7eyYH9Ug==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 13/30] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Date: Mon, 22 Jun 2026 20:10:26 +0200
Message-ID: <20260622181044.39335-14-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260622181044.39335-1-dev@lankhorst.se>
References: <20260622181044.39335-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4ABEB6B1B79

intel_set_pipe_src_size(), hsw_set_linetime_wm(),
intel_cpu_transcoder_set_m1_n1() and intel_set_transcoder_timings_lrr()
are called from an atomic context on PREEMPT_RT, and should be using the
_fw functions.

This likely prevents a deadlock on i915.

Again noticed when trying to disable preemption in vblank evasion:
<3> BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
<3> in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1505, name: kms_cursor_lega
<3> preempt_count: 1, expected: 0
<3> RCU nest depth: 0, expected: 0
<4> 4 locks held by kms_cursor_lega/1505:
<4>  #0: ffffc90003c6f988 (crtc_ww_class_acquire){+.+.}-{0:0}, at: drm_mode_atomic_ioctl+0x13b/0xe90
<4>  #1: ffffc90003c6f9b0 (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_mode_atomic_ioctl+0x13b/0xe90
<4>  #2: ffff888135b838b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at: intel_psr_lock+0xc5/0xf0 [xe]
<4>  #3: ffff88812607bbc0 (&wl->lock){+.+.}-{2:2}, at: intel_dmc_wl_get+0x3c/0x140 [xe]
<4> CPU: 6 UID: 0 PID: 1505 Comm: kms_cursor_lega Tainted: G     U              6.18.0-rc3-lgci-xe-xe-pw-156729v1+ #1 PREEMPT_{RT,(lazy)}
<4> Tainted: [U]=USER
<4> Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH LP5 T3 RVP1, BIOS PTLPFWI1.R00.3383.D02.2509240621 09/24/2025
<4> Call Trace:
<4>  <TASK>
<4>  dump_stack_lvl+0xc1/0xf0
<4>  dump_stack+0x10/0x20
<4>  __might_resched+0x174/0x260
<4>  rt_spin_lock+0x63/0x200
<4>  ? intel_dmc_wl_get+0x3c/0x140 [xe]
<4>  intel_dmc_wl_get+0x3c/0x140 [xe]
<4>  intel_set_pipe_src_size+0x89/0xe0 [xe]
<4>  intel_update_crtc+0x3c1/0x950 [xe]
<4>  ? intel_pre_update_crtc+0x258/0x400 [xe]
<4>  skl_commit_modeset_enables+0x217/0x720 [xe]
<4>  intel_atomic_commit_tail+0xd4e/0x1af0 [xe]
<4>  ? lock_release+0xce/0x2a0
<4>  intel_atomic_commit+0x2e5/0x330 [xe]
<4>  ? intel_atomic_commit+0x2e5/0x330 [xe]
<4>  drm_atomic_commit+0xaf/0xf0
<4>  ? __pfx___drm_printfn_info+0x10/0x10
<4>  drm_mode_atomic_ioctl+0xbd5/0xe90
<4>  ? lock_acquire+0xc4/0x2e0
<4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
<4>  drm_ioctl_kernel+0xb6/0x120
<4>  drm_ioctl+0x2d7/0x5a0
<4>  ? __pfx_drm_mode_atomic_ioctl+0x10/0x10
<4>  ? rt_spin_unlock+0xa0/0x140
<4>  ? __pm_runtime_resume+0x53/0x90
<4>  xe_drm_ioctl+0x56/0x90 [xe]
<4>  __x64_sys_ioctl+0xa8/0x110
<4>  ? lock_acquire+0xc4/0x2e0
<4>  x64_sys_call+0x1144/0x26a0
<4>  do_syscall_64+0x93/0xae0
<4>  ? lock_release+0xce/0x2a0
<4>  ? __task_pid_nr_ns+0xd9/0x270
<4>  ? do_syscall_64+0x1b7/0xae0
<4>  ? find_held_lock+0x31/0x90
<4>  ? __task_pid_nr_ns+0xcf/0x270
<4>  ? __lock_acquire+0x43e/0x2860
<4>  ? __task_pid_nr_ns+0xd9/0x270
<4>  ? lock_acquire+0xc4/0x2e0
<4>  ? find_held_lock+0x31/0x90
<4>  ? __task_pid_nr_ns+0xcf/0x270
<4>  ? lock_release+0xce/0x2a0
<4>  ? __task_pid_nr_ns+0xd9/0x270
<4>  ? do_syscall_64+0x1b7/0xae0
<4>  ? do_syscall_64+0x1b7/0xae0
<4>  entry_SYSCALL_64_after_hwframe+0x76/0x7e

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_cmtg.c    |  6 +--
 drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++-----
 3 files changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 6da28c1850802..387d90df144da 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -326,7 +326,7 @@ void intel_cmtg_set_vrr_ctl(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->cmrr.enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
+	intel_de_write_fw(display, TRANS_VRR_CTL(display, cmtg_transcoder), vrr_ctl);
 }
 
 void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
@@ -338,8 +338,8 @@ void intel_cmtg_set_m_n(const struct intel_crtc_state *crtc_state)
 	if (!intel_cmtg_is_allowed(crtc_state))
 		return;
 
-	intel_de_write(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
-	intel_de_write(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
+	intel_de_write_fw(display, PIPE_LINK_M1(display, cmtg_transcoder), m_n->link_m);
+	intel_de_write_fw(display, PIPE_LINK_N1(display, cmtg_transcoder), m_n->link_n);
 }
 
 static void intel_cmtg_enable_sync(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 805066b02aaaf..1d36bde149627 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1605,9 +1605,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	intel_de_write(display, WM_LINETIME(crtc->pipe),
-		       HSW_LINETIME(crtc_state->linetime) |
-		       HSW_IPS_LINETIME(crtc_state->ips_linetime));
+	intel_de_write_fw(display, WM_LINETIME(crtc->pipe),
+			  HSW_LINETIME(crtc_state->linetime) |
+			  HSW_IPS_LINETIME(crtc_state->ips_linetime));
 }
 
 static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
@@ -2607,14 +2607,14 @@ void intel_set_m_n(struct intel_display *display,
 		   intel_reg_t data_m_reg, intel_reg_t data_n_reg,
 		   intel_reg_t link_m_reg, intel_reg_t link_n_reg)
 {
-	intel_de_write(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
-	intel_de_write(display, data_n_reg, m_n->data_n);
-	intel_de_write(display, link_m_reg, m_n->link_m);
+	intel_de_write_fw(display, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
+	intel_de_write_fw(display, data_n_reg, m_n->data_n);
+	intel_de_write_fw(display, link_m_reg, m_n->link_m);
 	/*
 	 * On BDW+ writing LINK_N arms the double buffered update
 	 * of all the M/N registers, so it must be written last.
 	 */
-	intel_de_write(display, link_n_reg, m_n->link_n);
+	intel_de_write_fw(display, link_n_reg, m_n->link_n);
 }
 
 bool intel_cpu_transcoder_has_m2_n2(struct intel_display *display,
@@ -2794,9 +2794,9 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
 	}
 
 	if (DISPLAY_VER(display) >= 13) {
-		intel_de_write(display,
-			       TRANS_SET_CONTEXT_LATENCY(display, transcoder),
-			       crtc_state->set_context_latency);
+		intel_de_write_fw(display,
+				  TRANS_SET_CONTEXT_LATENCY(display, transcoder),
+				  crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2812,9 +2812,9 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
 	 */
-	intel_de_write(display, TRANS_VBLANK(display, transcoder),
-		       VBLANK_START(crtc_vblank_start - 1) |
-		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write_fw(display, TRANS_VBLANK(display, transcoder),
+		          VBLANK_START(crtc_vblank_start - 1) |
+		          VBLANK_END(crtc_vblank_end - 1));
 
 	/*
 	 * DP doesn't have vertical sync, so TRANS_VSYNC only affects
@@ -2822,17 +2822,17 @@ void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state,
 	 * using the VRR timing generator!). Thus updating TRANS_VSYNC
 	 * here seems fine even if it isn't double buffered.
 	 */
-	intel_de_write(display, TRANS_VSYNC(display, transcoder),
-		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
-		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	intel_de_write_fw(display, TRANS_VSYNC(display, transcoder),
+			  VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 
 	/*
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(display, TRANS_VTOTAL(display, transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_de_write_fw(display, TRANS_VTOTAL(display, transcoder),
+			  VACTIVE(crtc_vdisplay - 1) |
+			  VTOTAL(crtc_vtotal - 1));
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
@@ -2846,8 +2846,8 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
 	/* pipesrc controls the size that is scaled from, which should
 	 * always be the user's requested size.
 	 */
-	intel_de_write(display, PIPESRC(display, pipe),
-		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
+	intel_de_write_fw(display, PIPESRC(display, pipe),
+			  PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
 }
 
 static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5d9b11185296f..ef94bf5d9c5f5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -328,12 +328,12 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state,
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_VMIN(display, transcoder),
-		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_VMAX(display, transcoder),
-		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_FLIPLINE(display, transcoder),
-		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_VMIN(display, transcoder),
+			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_VMAX(display, transcoder),
+			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display, transcoder),
+			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
 static
@@ -919,8 +919,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 vrr_ctl;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       trans_vrr_push(crtc_state, false));
+	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
+			  trans_vrr_push(crtc_state, false));
 
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
@@ -932,7 +932,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 
 	intel_cmtg_set_vrr_ctl(crtc_state);
 }
-- 
2.53.0

