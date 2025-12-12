Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CFCB8F81
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2A010E8A9;
	Fri, 12 Dec 2025 14:35:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="AMpQxGq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CDA10E8CA;
 Fri, 12 Dec 2025 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765550121;
 bh=sk9duva0XMXxaPdPr6PMHusIKskXWaW2OtNz2MW0fbE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AMpQxGq14SyE7mMFAJnIyeYNxomBwKjel1quPiey6QuWgnaY27hiJk5HeZw5Ll6Wd
 aA5mXVGL44FEOAAlviIORWDF57B6qRkwoGAdNqHbZv13kdFgsnhmbFbaRIeIVdAqQb
 YFDipfaZMiFP85uvmUjarZ3+JabbyLoO0/GJo3wMMEMRFj5kBXFmLEd3PUOiurgxHY
 ij4MOXImZDsAuhbRV7yu6ErHDlygBoCsKtL0cdI+I0s47XDqAebWBfvXEYZ/ePYjT6
 FuqalkD+7BcuugbdmNMqN1DXVLuIPV48rAmqTrgwMEvz/xCuR2LZtnO1bOxmoGn3t9
 sZGIBE5bu/EzQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v2 12/12] drm/i915/display: Use intel_de_read_fw in colorops
Date: Fri, 12 Dec 2025 15:35:16 +0100
Message-ID: <20251212143504.973839-26-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251212143504.973839-14-dev@lankhorst.se>
References: <20251212143504.973839-14-dev@lankhorst.se>
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

This fixes a module load error on PTL:

BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 1335, name: xe_module_load
preempt_count: 0, expected: 0
RCU nest depth: 0, expected: 0
11 locks held by xe_module_load/1335:
 #0: ffff888107e0c1a0 (&dev->mutex){....}-{3:3}, at: __driver_attach+0x104/0x220
 #1: ffff888115388280 (&dev->clientlist_mutex){+.+.}-{3:3}, at: drm_client_register+0x32/0xe0
 #2: ffffffff837f89d8 (registration_lock){+.+.}-{3:3}, at: register_framebuffer+0x1b/0x50
 #3: ffffffff83598620 (console_lock){+.+.}-{0:0}, at: fbcon_fb_registered+0x6f/0x90
 #4: ffff888122775aa0 (&helper->lock){+.+.}-{3:3}, at: __drm_fb_helper_restore_fbdev_mode_unlocked+0x7b/0x110
 #5: ffff888115388158 (&dev->master_mutex){+.+.}-{3:3}, at: drm_master_internal_acquire+0x20/0x50
 #6: ffff888122775888 (&client->modeset_mutex){+.+.}-{3:3}, at: drm_client_modeset_commit_locked+0x2a/0x1b0
 #7: ffffc90003d46e88 (crtc_ww_class_acquire){+.+.}-{0:0}, at: drm_client_modeset_commit_atomic+0x4c/0x2b0
 #8: ffffc90003d46eb0 (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_client_modeset_commit_atomic+0x4c/0x2b0
 #9: ffff888139a0b8b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at: intel_psr_lock+0xc5/0xf0 [xe]
 #10: ffff888127123d30 (&wl->lock){+.+.}-{2:2}, at: intel_dmc_wl_get+0x3c/0x140 [xe]
irq event stamp: 1240122
hardirqs last  enabled at (1240121): [<ffffffff828a2d11>] _raw_spin_unlock_irqrestore+0x51/0x80
hardirqs last disabled at (1240122): [<ffffffffa0d7de9b>] intel_pipe_update_start+0x34b/0x440 [xe]
softirqs last  enabled at (0): [<ffffffff813c291c>] copy_process+0xabc/0x23d0
softirqs last disabled at (0): [<0000000000000000>] 0x0
CPU: 5 UID: 0 PID: 1335 Comm: xe_module_load Tainted: G     U              6.18.0-lgci-xe-xe-pw-158855v1+ #1 PREEMPT_{RT,(lazy)} 
Tainted: [U]=USER
Hardware name: Intel Corporation Panther Lake Client Platform/PTL-UH LP5 T3 RVP1, BIOS PTLPFWI1.R00.3383.D10.2510222219 10/22/2025
Call Trace:
 <TASK>
 dump_stack_lvl+0x91/0xf0
 dump_stack+0x10/0x20
 __might_resched+0x174/0x260
 rt_spin_lock+0x63/0x200
 ? intel_dmc_wl_get+0x3c/0x140 [xe]
 ? __lock_acquire+0x1195/0x2860
 intel_dmc_wl_get+0x3c/0x140 [xe]
 intel_color_plane_commit_arm+0xbc/0x140 [xe]
 icl_plane_update_arm+0x23f/0x280 [xe]
 intel_plane_update_arm+0x74/0x170 [xe]
 intel_crtc_planes_update_arm+0x3cb/0x4c0 [xe]
 intel_update_crtc+0x1c3/0x840 [xe]
 ? intel_pre_update_crtc+0x2ce/0x470 [xe]
 ? intel_enable_crtc+0x123/0x150 [xe]
 skl_commit_modeset_enables+0x4c4/0x720 [xe]
 intel_atomic_commit_tail+0xd9d/0x1b30 [xe]
 intel_atomic_commit+0x2e8/0x330 [xe]
 ? intel_atomic_commit+0x2e8/0x330 [xe]
 drm_atomic_commit+0xaf/0xf0
 ? __pfx___drm_printfn_info+0x10/0x10
 drm_client_modeset_commit_atomic+0x25c/0x2b0

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index e7950655434b8..d15f4e78ffa5e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -4078,7 +4078,7 @@ static void glk_load_lut_3d(struct intel_dsb *dsb,
 	int i, lut_size = drm_color_lut32_size(blob);
 	enum pipe pipe = crtc->pipe;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not loading LUTs\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
@@ -4096,7 +4096,7 @@ static void glk_lut_3d_commit(struct intel_dsb *dsb, struct intel_crtc *crtc, bo
 	enum pipe pipe = crtc->pipe;
 	u32 val = 0;
 
-	if (!dsb && intel_de_read(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
+	if (!dsb && intel_de_read_fw(display, LUT_3D_CTL(pipe)) & LUT_3D_READY) {
 		drm_err(display->drm, "[CRTC:%d:%s] 3D LUT not ready, not committing change\n",
 			crtc->base.base.id, crtc->base.name);
 		return;
-- 
2.51.0

