Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PSTwNTNeMGq7SAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6660E689BFF
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:18:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=pBEbIxTC;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A01D10E66B;
	Mon, 15 Jun 2026 20:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D058110E667;
 Mon, 15 Jun 2026 20:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554720;
 bh=c5WwYceJ/Me/WEkSegyrLxEzlFQlEcK0WSULqH68ZIc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pBEbIxTC2Q6ojNK9mwv9vcr6HautU93GGfo/ZFLXVyDKaiMGy330+1U3i+PYNZ5bh
 BtM7M7FTCGkwC6wPZk8BTQTblyMpQ045IpfP9fBpq/UhDTKPJ4iwMouftAwXSI44Vk
 +Q1xnqI5t537voxVqwPGHhv8n5QuoZfm6wlBQtWDjf4FO/9iRgO6i7HncQhXothRKQ
 z7oAY6fLhtogHUTW1rQAPRfZQY2aGDFWAuNwD5kEoZ8frZAsuk4p9Ujr3d2MY71w0U
 G9hq289f8nnP6XLzrKXbj5rgCLU5KXxKHgg5zerz6sPwB+Tg6YXRsTnu+sSDspaTGm
 +D/CYb3JgSzNQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v8 13/27] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Date: Mon, 15 Jun 2026 22:18:31 +0200
Message-ID: <20260615201846.307297-14-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6660E689BFF

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
 drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_vrr.c     | 18 ++++-----
 2 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e2e4b00a8fa99..2e3ade44f28ee 100644
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
@@ -2601,14 +2601,14 @@ void intel_set_m_n(struct intel_display *display,
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
@@ -2795,9 +2795,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	}
 
 	if (DISPLAY_VER(display) >= 13) {
-		intel_de_write(display,
-			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_state->set_context_latency);
+		intel_de_write_fw(display,
+				  TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
+				  crtc_state->set_context_latency);
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2813,9 +2813,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
 	 * But let's write it anyway to keep the state checker happy.
 	 */
-	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
-		       VBLANK_START(crtc_vblank_start - 1) |
-		       VBLANK_END(crtc_vblank_end - 1));
+	intel_de_write_fw(display, TRANS_VBLANK(display, cpu_transcoder),
+			  VBLANK_START(crtc_vblank_start - 1) |
+			  VBLANK_END(crtc_vblank_end - 1));
 
 	/*
 	 * DP doesn't have vertical sync, so TRANS_VSYNC only affects
@@ -2823,9 +2823,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * using the VRR timing generator!). Thus updating TRANS_VSYNC
 	 * here seems fine even if it isn't double buffered.
 	 */
-	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
-		       VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
-		       VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
+	intel_de_write_fw(display, TRANS_VSYNC(display, cpu_transcoder),
+			  VSYNC_START(adjusted_mode->crtc_vsync_start - 1) |
+			  VSYNC_END(adjusted_mode->crtc_vsync_end - 1));
 	/*
 	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 	 * bits are not required. Since the support for these bits is going to
@@ -2839,9 +2839,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	 * The double buffer latch point for TRANS_VTOTAL
 	 * is the transcoder's undelayed vblank.
 	 */
-	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
-		       VACTIVE(crtc_vdisplay - 1) |
-		       VTOTAL(crtc_vtotal - 1));
+	intel_de_write_fw(display, TRANS_VTOTAL(display, cpu_transcoder),
+			  VACTIVE(crtc_vdisplay - 1) |
+			  VTOTAL(crtc_vtotal - 1));
 
 	intel_vrr_set_fixed_rr_timings(crtc_state);
 	intel_vrr_transcoder_enable(crtc_state);
@@ -2858,8 +2858,8 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
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
index e03b5daac5be0..735d5da1326a3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -326,12 +326,12 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
-	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
-		       intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_VMIN(display, cpu_transcoder),
+			  intel_vrr_fixed_rr_hw_vmin(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_VMAX(display, cpu_transcoder),
+			  intel_vrr_fixed_rr_hw_vmax(crtc_state) - 1);
+	intel_de_write_fw(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
+			  intel_vrr_fixed_rr_hw_flipline(crtc_state) - 1);
 }
 
 static
@@ -916,8 +916,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 vrr_ctl;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       trans_vrr_push(crtc_state, false));
+	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder),
+			  trans_vrr_push(crtc_state, false));
 
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
@@ -929,7 +929,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
-- 
2.53.0

