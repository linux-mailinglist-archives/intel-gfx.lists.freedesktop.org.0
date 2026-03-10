Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOaENDMHsGlregIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D91724BD6B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C77B10E6AE;
	Tue, 10 Mar 2026 11:57:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="pHfwCOO1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2228010E6AB;
 Tue, 10 Mar 2026 11:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1773143846;
 bh=JjuQlSBJtcs1s4HB+nRnZWBHE+LnWcQ0BbXuil+tJMU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pHfwCOO1VL3GW8G3oRUxzBGgCkggHNMv7MI+NlgHFEBgm1zXYNx42t0L7xmTmLSt3
 z60dGC5wCgdKfgzqsLZ3QgxvqdWWfZ7tS6FGJlLWt2pU3CTbJee1Z7/WtRccULpY3C
 lWdA0ywFilVk9fu6Aawhe2JFn8s8/pi3pZDu/EBrk7Yd95lJoDEWoSeh0azNUZsmE+
 hoHXidgpmgbwj0gT9jwgXbSaiqQbdDYDZJ1wTB5rKe3KrmHwsE4MDgrlHLpLyQ3h8H
 QuQ7vRnIRwYWPHOMtcdFX7/ntkt64b5/avn2g0Vb9Ld1UUskNtxmgb8A5Tqdtksk3h
 wRQKgwsOz/ZJA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH v7 07/26] drm/i915/display: Handle vlv dsi workaround in
 scanline_in_safe_range too
Date: Tue, 10 Mar 2026 12:56:49 +0100
Message-ID: <20260310115709.2276203-8-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260310115709.2276203-1-dev@lankhorst.se>
References: <20260310115709.2276203-1-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 8D91724BD6B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email]
X-Rspamd-Action: no action

Now that we have a macro, might as well handle the VLV dsi workaround
too.

This makes the vblank evasion code slightly more deterministic, by not
looping with interrupts disabled.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 36 ++++++++++-----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 73676d8ccec8b..3eb6418723a84 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -739,6 +739,24 @@ static bool scanline_in_safe_range(struct intel_vblank_evade_ctx *evade, int *sc
 	else
 		*scanline = __intel_get_crtc_scanline(evade->crtc);
 
+	/*
+	 * On VLV/CHV DSI the scanline counter would appear to
+	 * increment approx. 1/3 of a scanline before start of vblank.
+	 * The registers still get latched at start of vblank however.
+	 * This means we must not write any registers on the first
+	 * line of vblank (since not the whole line is actually in
+	 * vblank). And unfortunately we can't use the interrupt to
+	 * wait here since it will fire too soon. We could use the
+	 * frame start interrupt instead since it will fire after the
+	 * critical scanline, but that would require more changes
+	 * in the interrupt code. So for now we'll just do the nasty
+	 * thing and poll for the bad scanline to pass us by.
+	 *
+	 * FIXME figure out if BXT+ DSI suffers from this as well
+	 */
+	if (evade->need_vlv_dsi_wa && *scanline == evade->vblank_start)
+		return false;
+
 	return *scanline < evade->min || *scanline > evade->max;
 }
 
@@ -769,24 +787,6 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 		local_irq_disable();
 	}
 
-	/*
-	 * On VLV/CHV DSI the scanline counter would appear to
-	 * increment approx. 1/3 of a scanline before start of vblank.
-	 * The registers still get latched at start of vblank however.
-	 * This means we must not write any registers on the first
-	 * line of vblank (since not the whole line is actually in
-	 * vblank). And unfortunately we can't use the interrupt to
-	 * wait here since it will fire too soon. We could use the
-	 * frame start interrupt instead since it will fire after the
-	 * critical scanline, but that would require more changes
-	 * in the interrupt code. So for now we'll just do the nasty
-	 * thing and poll for the bad scanline to pass us by.
-	 *
-	 * FIXME figure out if BXT+ DSI suffers from this as well
-	 */
-	while (evade->need_vlv_dsi_wa && scanline == evade->vblank_start)
-		scanline = intel_get_crtc_scanline(crtc);
-
 	return scanline;
 }
 
-- 
2.51.0

