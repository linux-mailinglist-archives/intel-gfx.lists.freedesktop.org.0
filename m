Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oA2PBONREGrgWAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9245A5B48D5
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 14:53:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113AC10F5BF;
	Fri, 22 May 2026 12:53:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=mariushoch.de header.i=@mariushoch.de header.b="EXuGrg2m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E6310E1C9;
 Thu, 21 May 2026 18:27:03 +0000 (UTC)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4gLxhP28rTz9vLF;
 Thu, 21 May 2026 20:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mariushoch.de;
 s=MBO0001; t=1779388021;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=GYkf84zKQ1koXdJ8sJbWorRHXORylD9/JuNrnSRVhMk=;
 b=EXuGrg2mnXNU2e83JRMVB5I2K3ncTReK933T4sXH6nAcQLJ+oDRgYS9VRO5qcCohfvUsHV
 9QdC39z76pint1GOoMOjOmwPjupiX6Y0aSyap+yX5LUcchK2Lx8dGBCipWJ2PkcJj81+vN
 TBxmNdbCldjXqXxXb3+/LPpmqt7XpGpO+9k1w7p0RCnhEeCrgWpXDZlkM0rqQSRme4G5wR
 sy+B6gohE941vLOREpIsnqZRvEVQtzy+tTko9hTLjnn6lQbmbNv8NSaB+Htf65RP+tGs+g
 8rCNO7jjrOHdqJpu2huEPhGKvurez37TrzVB/RvXGPKe2kuvTwus3osZZRMtOQ==
From: Marius Hoch <mail@mariushoch.de>
To: linux-kernel@vger.kernel.org
Cc: Marius Hoch <mail@mariushoch.de>, stable@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Joe Perches <joe@perches.com>,
 Mika Kahola <mika.kahola@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/i915: Don't set min_cdclk in the initial crtc_state
Date: Thu, 21 May 2026 20:07:12 +0200
Message-ID: <20260521180722.328317-2-mail@mariushoch.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 22 May 2026 12:53:52 +0000
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
X-Spamd-Result: default: False [0.69 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[mariushoch.de:s=MBO0001];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[mariushoch.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[mariushoch.de,vger.kernel.org,linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,perches.com,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mail@mariushoch.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[mariushoch.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,mariushoch.de:email,mariushoch.de:mid,mariushoch.de:dkim]
X-Rspamd-Queue-Id: 9245A5B48D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Setting the min_cdclk this early means that intel_cdclk_atomic_check
(called via intel_atomic_check) will not pick up the initial min_cdclk, as
there is no change between the old and new atomic states. This is
problematic, especially on Gemini Lake, where the picture gets unstable if
the CDCLK is too low (see vlv_dsi_min_cdclk).

This was introduced in 7a8d9cfa6db0, which states that the min_cdclk must
be set before calling intel_compute_global_watermarks. However, as the
only place that calls intel_compute_global_watermarks is
intel_atomic_check, right after setting the min_cdclk on new_crtc_state,
there is no need to set the min_cdclk initially.

This surfaced as a bug on my IdeaPad Duet 3 after ba91b9eecb47, leading
to the screen output being completely garbled initially (when asking for
the dm-crypt passphrase). It recovers after the passphrase prompt, as this
only affects the initial state.

Tested on an IdeaPad Duet 3 10IGL5-LTE (with UHD Graphics 605).

Cc: stable@vger.kernel.org
Fixes: 7a8d9cfa6db0 ("drm/i915: Compute per-crtc min_cdclk earlier")
Signed-off-by: Marius Hoch <mail@mariushoch.de>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4086f16a12bf..9278856375e9 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -865,11 +865,6 @@ static void intel_modeset_readout_hw_state(struct intel_display *display)
 				    crtc_state->plane_min_cdclk[plane->id]);
 		}
 
-		crtc_state->min_cdclk = intel_crtc_min_cdclk(crtc_state);
-
-		drm_dbg_kms(display->drm, "[CRTC:%d:%s] min_cdclk %d kHz\n",
-			    crtc->base.base.id, crtc->base.name, crtc_state->min_cdclk);
-
 		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
 						 crtc_state->port_clock);
 	}
-- 
2.54.0

