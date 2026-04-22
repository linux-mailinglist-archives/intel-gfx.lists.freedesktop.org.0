Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCeVE+N56GlCKwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:33:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF35D442F7E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:33:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AE4289664;
	Wed, 22 Apr 2026 07:33:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="D8zd0JSp";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="MDByX061";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="D8zd0JSp";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="MDByX061";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CAC510E152
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2026 07:33:52 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 4C4955BCF8;
 Wed, 22 Apr 2026 07:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776843231; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Z2i92acCwV7lRHLkbzIbG7MkBYcVJ2vf9FUEdie5ERE=;
 b=D8zd0JSp0MKRgKRDGe7EYaBkM7xJwN/s/ersLmefQkztJFQ/GJ1tWEhqcRs2/4ajRCHZ/+
 oNI9OxGV/eMgCjYBhp2i09KMbHoEwDMyCsB7Els13vxkQ07z2uk73+FlqxSv0Qm32yqZlG
 DlEv9A8HfzL83tS0Vhs62D3+H9bSlHs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776843231;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Z2i92acCwV7lRHLkbzIbG7MkBYcVJ2vf9FUEdie5ERE=;
 b=MDByX061HW/b2Kz+bo4WcTku3HMq+kmr+bn+Q1x91IOSdETkAn84+QoTjbsRbbrlAFprWY
 13LInDCyMKenh/Ag==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776843231; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Z2i92acCwV7lRHLkbzIbG7MkBYcVJ2vf9FUEdie5ERE=;
 b=D8zd0JSp0MKRgKRDGe7EYaBkM7xJwN/s/ersLmefQkztJFQ/GJ1tWEhqcRs2/4ajRCHZ/+
 oNI9OxGV/eMgCjYBhp2i09KMbHoEwDMyCsB7Els13vxkQ07z2uk73+FlqxSv0Qm32yqZlG
 DlEv9A8HfzL83tS0Vhs62D3+H9bSlHs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776843231;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Z2i92acCwV7lRHLkbzIbG7MkBYcVJ2vf9FUEdie5ERE=;
 b=MDByX061HW/b2Kz+bo4WcTku3HMq+kmr+bn+Q1x91IOSdETkAn84+QoTjbsRbbrlAFprWY
 13LInDCyMKenh/Ag==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id B62ED593AF;
 Wed, 22 Apr 2026 07:33:50 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 6uwpKt556GmPRQAAD6G6ig
 (envelope-from <pjakobsson@suse.de>); Wed, 22 Apr 2026 07:33:50 +0000
From: Patrik Jakobsson <pjakobsson@suse.de>
To: dri-devel@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/i915/display: Add quirk for interlane align bit on CH7511
Date: Wed, 22 Apr 2026 09:33:38 +0200
Message-ID: <20260422073339.27947-1-pjakobsson@suse.de>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Score: -2.80
X-Spam-Level: 
X-Spam-Flag: NO
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:jani.nikula@linux.intel.com,m:rodrigo.vivi@intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:ville.syrjala@linux.intel.com,m:imre.deak@intel.com,m:intel-xe@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[pjakobsson@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[pjakobsson@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,suse.de:email,suse.de:dkim,suse.de:mid]
X-Rspamd-Queue-Id: AF35D442F7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When disabling pattern training after successful link training the
CH7511 bridge incorrectly clears the INTERLANE_ALIGN_DONE bit. This is
interpreted as link failure when rechecking the link status and triggers
an endless loop of retraining sequences.

This patch adds a quirk to pretend the bit is still set and no
retraining is needed.

Fixes: 3b3be899fc81 ("drm/i915/dp: Recheck link state after modeset")
Signed-off-by: Patrik Jakobsson <pjakobsson@suse.de>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_quirks.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
 3 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..27aedb18f761 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5715,6 +5715,15 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_dp->link.seq_train_failures)
 		return true;
 
+	/*
+	 * The CH7511 bridge incorrectly clears the INTERLANE_ALIGN_DONE bit
+	 * when disabling training pattern.
+	 */
+	if (intel_has_dpcd_quirk(intel_dp, QUIRK_IGNORE_INTERLANE_ALIGN_BIT)) {
+		link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] |=
+			DP_INTERLANE_ALIGN_DONE;
+	}
+
 	/* Retrain if link not ok */
 	return !intel_dp_link_ok(intel_dp, link_status) &&
 		!intel_psr_link_ok(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 883f297d4b83..1c305e861c86 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -94,6 +94,14 @@ static void quirk_disable_edp_panel_replay(struct intel_dp *intel_dp)
 	drm_info(display->drm, "Applying disable Panel Replay quirk\n");
 }
 
+static void quirk_ignore_interlane_align_bit(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	intel_set_dpcd_quirk(intel_dp, QUIRK_IGNORE_INTERLANE_ALIGN_BIT);
+	drm_info(display->drm, "Applying ignore interlane align bit quirk\n");
+}
+
 struct intel_quirk {
 	int device;
 	int subsystem_vendor;
@@ -269,6 +277,15 @@ static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
 		.sink_oui = SINK_OUI(0x00, 0x22, 0xb9),
 		.hook = quirk_disable_edp_panel_replay,
 	},
+	/* Nodka TPC6000-C152 */
+	{
+		.device = 0x0f31,
+		.subsystem_vendor = 0x8086,
+		.subsystem_device = 0x0f31,
+		.sink_oui = SINK_OUI(0x2b, 0x02, 0xf0),
+		.sink_device_id = SINK_DEVICE_ID('C', 'H', '7', '5', '1', '1'),
+		.hook = quirk_ignore_interlane_align_bit,
+	},
 };
 
 void intel_init_quirks(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 83214eb94b0c..424462fd4a83 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -22,6 +22,7 @@ enum intel_quirk_id {
 	QUIRK_FW_SYNC_LEN,
 	QUIRK_EDP_LIMIT_RATE_HBR2,
 	QUIRK_DISABLE_EDP_PANEL_REPLAY,
+	QUIRK_IGNORE_INTERLANE_ALIGN_BIT,
 };
 
 void intel_init_quirks(struct intel_display *display);
-- 
2.53.0

