Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 573EFC2FF20
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 09:36:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF0D10E564;
	Tue,  4 Nov 2025 08:36:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="MN3zDvAb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3987410E552;
 Tue,  4 Nov 2025 08:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1762245404;
 bh=9MHCFxIequ3JUqIgGQhz95QVQawJLEEKvKygoqucuyk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MN3zDvAbi42NsSc2PrHPyLsR/jFKlxyNOBH3/geY14L7swO4ZMC/g53lksZLVH4pR
 ri3ThG47QNkEblocRfgd7W+hepMYCZUkuNxH3b1yXdOaXwlZqKAl2s53QSA1PMqjcM
 R2xbwMj5Q5kHqu92U/AZ86ZuGXD+f2cpLBgpZG2sJbF2RK/xIti2mdM4MbcVS0MrPL
 FObV72rmCbKalgNOi5VsSf1n7Dgh1djXW8z9UhW9D+GYxOVzSwI8k84njQx88A8Z3S
 GgNYN4UViOEqFzqdtADL9LywlVUYMbHbIFn6F2kfydB0SLGPd4qvByj+yjnbM5c+Je
 h8lSN1m8U6NdQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: linux-rt-devel@lists.linux.dev, Maarten Lankhorst <dev@lankhorst.se>,
 Mario Kleiner <mario.kleiner.de@gmail.com>,
 Mike Galbraith <umgwanakikbuti@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <clrkwllms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH v2 1/7] drm/i915/display: Make get_vblank_counter use
 intel_de_read_fw()
Date: Tue,  4 Nov 2025 09:36:25 +0100
Message-ID: <20251104083634.670753-2-dev@lankhorst.se>
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

Fixes the following lockdep splat on PREEMPT_RT:
<3> BUG: sleeping function called from invalid context at kernel/locking/spinlock_rt.c:48
<3> in_atomic(): 1, irqs_disabled(): 0, non_block: 0, pid: 1373, name: xe_module_load
<3> preempt_count: 1, expected: 0
<3> RCU nest depth: 0, expected: 0
<4> 11 locks held by xe_module_load/1373:
<4>  #0: ffff888107b691a0 (&dev->mutex){....}-{3:3}, at: __driver_attach+0x104/0x220
<4>  #1: ffff88813cd30280 (&dev->clientlist_mutex){+.+.}-{3:3}, at: drm_client_register+0x32/0xe0
<4>  #2: ffffffff837f88f8 (registration_lock){+.+.}-{3:3}, at: register_framebuffer+0x1b/0x50
<4>  #3: ffffffff835985e0 (console_lock){+.+.}-{0:0}, at: fbcon_fb_registered+0x6f/0x90
<4>  #4: ffff88812589e6a0 (&helper->lock){+.+.}-{3:3}, at: __drm_fb_helper_restore_fbdev_mode_unlocked+0x7b/0x110
<4>  #5: ffff88813cd30158 (&dev->master_mutex){+.+.}-{3:3}, at: drm_master_internal_acquire+0x20/0x50
<4>  #6: ffff88812589e488 (&client->modeset_mutex){+.+.}-{3:3}, at: drm_client_modeset_commit_locked+0x2a/0x1b0
<4>  #7: ffffc9000031eef0 (crtc_ww_class_acquire){+.+.}-{0:0}, at: drm_client_modeset_commit_atomic+0x4c/0x2b0
<4>  #8: ffffc9000031ef18 (crtc_ww_class_mutex){+.+.}-{3:3}, at: drm_client_modeset_commit_atomic+0x4c/0x2b0
<4>  #9: ffff888114f7b8b8 (&intel_dp->psr.lock){+.+.}-{3:3}, at: intel_psr_lock+0xc5/0xf0 [xe]
<4>  #10: ffff88812a0cbbc0 (&wl->lock){+.+.}-{2:2}, at: intel_dmc_wl_get+0x3c/0x140 [xe]

This splat will happen otherwise on all tracepoints too, for similar reasons.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 671f357c65638..2b106ffa3f5f5 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -133,7 +133,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return intel_de_read(display, PIPE_FRMCOUNT_G4X(display, pipe));
+	return intel_de_read_fw(display, PIPE_FRMCOUNT_G4X(display, pipe));
 }
 
 static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
-- 
2.51.0

