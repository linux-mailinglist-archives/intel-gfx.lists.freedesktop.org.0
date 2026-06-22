Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HcfRKa16OWrGuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:10:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B26B1B27
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:10:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=KCqG2GVI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6450D10E7FF;
	Mon, 22 Jun 2026 18:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F5D10E7F0;
 Mon, 22 Jun 2026 18:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151839;
 bh=07jvFRigIF4c2WP1/tQ0UqgvxYpJAG8Jfl5912+WIUE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KCqG2GVI3BoAST8/HF/tyssQnkYEAMJ48qo0ESxCLEaksY0q+GONeHJVCsgDjS20n
 5cjrqK37qPw5hnB2u841BEr3fZAeRWyJztulKovnXQyIkmAr20mqrmfqrvSyE/J3ZB
 HAFdiw3eaHo78kJWAT5wYsjryAGqDvHWVvuN6lNW3vZxlZ2XJlqRQ03f3aX2qG49P2
 v//AJUE0g/r245BU6mGdLtIGqJsf1VzHRwPImXda8grGPGhPul3++0kMT2OsAZ8M3g
 5nxhUOizcyJK5OEdgQ0lo/UAw032ai0Mode0X4dPqdGFMxQYMSbik3AOs2QLjRMnsw
 UrhM0WU/vy3Uw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 09/30] drm/i915/display: Make get_vblank_counter use
 intel_de_read_fw()
Date: Mon, 22 Jun 2026 20:10:22 +0200
Message-ID: <20260622181044.39335-10-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 768B26B1B27

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
index 07dca05332e5b..c0cc0a4c25dbe 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -132,7 +132,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
 	if (!vblank->max_vblank_count)
 		return 0;
 
-	return intel_de_read(display, PIPE_FRMCOUNT_G4X(display, pipe));
+	return intel_de_read_fw(display, PIPE_FRMCOUNT_G4X(display, pipe));
 }
 
 static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
-- 
2.53.0

