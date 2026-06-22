Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VNz/Fa16OWrCuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:10:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 277006B1B20
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:10:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=Ne0HmBcx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CA3910E802;
	Mon, 22 Jun 2026 18:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3BD010E7DC;
 Mon, 22 Jun 2026 18:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151836;
 bh=cQJ+/My1yGCFFoJg8C+cw2ag6ScIvaGNw4in4m2KFus=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ne0HmBcxrndcprIRxeV6SWIsnB4jwjesEmC0efUjkM1WAc+sUb/2hS6Ep2RfeBKKs
 YQF95Dj1eiz9i/JYjTfAoq48ANq6byiGtHV4C8e0+NHCNEPz45s7rwYw+L8AlV9bp+
 KGyVm6Ema3IrbUykRIuXC7jxsHHkDbTfS5Y6dYn4Lw2ROQxULlsAgJYU57Esc0LKxs
 pcJ/TSuFOaWNsgZTAAA4DBkTz6TlzvAO+iMAyHDMBNDfrcWOPWIvDlhrFSk8F/JGDk
 KUJfdtUnEoAnS1TC6m2c4zHBrZh8LhuKmmKP39UG+Fdhyo0RDUaIjpb4yFSUN+jy2Z
 znB6ryqfvjk4w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v9 05/30] drm/i915/display: Move vblank put until after
 critical section
Date: Mon, 22 Jun 2026 20:10:18 +0200
Message-ID: <20260622181044.39335-6-dev@lankhorst.se>
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
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 277006B1B20

drm_crtc_vblank_put may take some locks, this should probably
not be the first thing we do after entering the time sensitive
part.

A better place is after programming is completed. Add a flag
to put the vblank after completion.

In the case of drm_vblank_work_schedule, we may not even need
to disable the vblank interrupt any more if it takes its own
reference.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 88384dea868b4..68b44a00567e4 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -816,6 +816,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_crtc_state *new_crtc_state;
 	struct intel_vblank_evade_ctx evade;
+	bool has_vblank = false;
 	int ret;
 
 	/*
@@ -913,6 +914,8 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 	intel_psr_lock(crtc_state);
 
 	if (!drm_WARN_ON(display->drm, drm_crtc_vblank_get(&crtc->base))) {
+		has_vblank = true;
+
 		/*
 		 * TODO: maybe check if we're still in PSR
 		 * and skip the vblank evasion entirely?
@@ -922,8 +925,6 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		local_irq_disable();
 
 		intel_vblank_evade(&evade);
-
-		drm_crtc_vblank_put(&crtc->base);
 	} else {
 		local_irq_disable();
 	}
@@ -939,6 +940,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_unlock(crtc_state);
 
+	if (has_vblank)
+		drm_crtc_vblank_put(&crtc->base);
+
 	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
 		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
 				     intel_cursor_unpin_work);
-- 
2.53.0

