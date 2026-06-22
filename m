Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 24cPE7x6OWrsuAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5C86B1B86
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 20:11:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=jZptyMoP;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E385910E820;
	Mon, 22 Jun 2026 18:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C2C10E7F8;
 Mon, 22 Jun 2026 18:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1782151846;
 bh=r10AAnKUQPrCjn4nwCrtFvliOfdGv8y4HVOMxu4pQsU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jZptyMoP/cJOJwQ+W4RmPcTaw7iB3t8chnOYhAtjqnUsn9KbOjI+J3018W8Y2/Tdm
 t7RUyVQZ+Jg95mg2H2x72fhhgfu88kMCkRfsd1m8AnCwu1scLwnUMuAoLv/enmHlIm
 Beko5vAnZJp+sXFYSPgCghiYkrzKtqoYrnlBGJ1n+g12wkpfmn9oPvW2EvXavM9Ukr
 gIEIMkb7o5n8z8lALBIBfYmHsZIH1JbWjPYy8V78TalxqdJcAad7Qq8Sxv2/EJ336z
 UsCkJ/MWjpNl4Ki0BCqtX0v11lHiYZYmdUISF/X3cC0d63j7D9+5SZX4lETZdRShHl
 hjvaztl4/Zg5w==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v9 20/30] drm/i915/display: Remove uncore lock from
 vlv_atomic_update_fifo
Date: Mon, 22 Jun 2026 20:10:33 +0200
Message-ID: <20260622181044.39335-21-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 1B5C86B1B86

TODO: Grab uncore lock during entire vblank evasion before disabling
interrupts, and check what breaks?

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 86d1c9f7f0ff0..e07303f0b3cc4 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1863,7 +1863,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -1892,7 +1891,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	 * intel_pipe_update_start() has already disabled interrupts
 	 * for us, so a plain spin_lock() is sufficient here.
 	 */
-	spin_lock(&uncore->lock);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
@@ -1951,8 +1949,6 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 	}
 
 	intel_de_read_fw(display, DSPARB(display));
-
-	spin_unlock(&uncore->lock);
 }
 
 #undef VLV_FIFO
-- 
2.53.0

