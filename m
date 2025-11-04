Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66214C2FF40
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 09:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DC510E573;
	Tue,  4 Nov 2025 08:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="d73XRNhF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5823610E562;
 Tue,  4 Nov 2025 08:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762245404;
 bh=AQvvaI8aZQnR3L1P/SOC0a1pgsLF1Ps2+teQouWP36Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d73XRNhFd+ttElJM7xWjJis33Dw+hSeuPuynhuiH0Uv/0XKqR3ejwpQ78zjGSMJG0
 cnbmpBRM/Bf+63NSe1OjITFXhRT7AADC3Xm4VxvZjwS81MxW5oTcjFuKcq1zP/+BTU
 c175806AQpIUtgCKK4uPE2UlBNpt+vZea39HIYWT2qNDGdfiV6rcFllwT2FTZtc46r
 vYiOjbLcUxDWaFbv8yb1zgaFWU/TzOrczTrOwqskN/vsBQiBLG/QzS+vmwbmO1L4Yx
 Gv4uKrhLB2WrFQRk1/zeWuXtm3Hu+M8Z+T8PrzJlGoQlPP1EexG5X8pHq/+eb1Z+pp
 930s/KY5JcEEQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: linux-rt-devel@lists.linux.dev, Maarten Lankhorst <dev@lankhorst.se>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v2 2/7] drm/i915/display: Use intel_de_write_fw in
 intel_pipe_fastset
Date: Tue,  4 Nov 2025 09:36:26 +0100
Message-ID: <20251104083634.670753-3-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251104083634.670753-1-dev@lankhorst.se>
References: <20251104083634.670753-1-dev@lankhorst.se>
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
 drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_vrr.c     | 16 ++++-----
 2 files changed, 26 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 42ec787986666..1bff1148fe9d7 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1573,9 +1573,9 @@ static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
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
@@ -2543,14 +2543,14 @@ void intel_set_m_n(struct intel_display *display,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
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
@@ -2737,9 +2737,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
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
@@ -2755,9 +2755,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
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
 	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
 	 * bits are not required. Since the support for these bits is going to
@@ -2771,9 +2771,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
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
@@ -2790,8 +2790,8 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
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
index 00cbc126fb366..2e19673697fa4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -300,12 +300,12 @@ void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
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
@@ -693,7 +693,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 vrr_ctl;
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
+	intel_de_write_fw(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
 
 	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
 
@@ -705,7 +705,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 	if (cmrr_enable)
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+	intel_de_write_fw(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
 }
 
 static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
-- 
2.51.0

