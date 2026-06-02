Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id APliCJ6GHmqhkQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:30:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8314A629B78
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 09:30:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B02113899;
	Tue,  2 Jun 2026 07:30:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="BTJYK8Ao";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="0E89DKlf";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="0GdDlpn2";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="qrPcLgnx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E0DF11389B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jun 2026 07:30:35 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 6F91B68473;
 Tue,  2 Jun 2026 07:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780385433; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=s/75GimBigkxhsh+VnHz8Wg6OaoHBP1HNwvMdh08414=;
 b=BTJYK8AovGHx1pALR4/+91YUvNeRgWrNRlVgnyVqZJq9rYwuE9YyFz1izdNFqM2IHinsO+
 74LKAbRJ6Nj1Rw8gxgkyYinsLCPRhWvKMe5E02H9uJWQ4PQY65yzXXbZWtk5sZIAE1VYfx
 J4jamPBDKIC6xbJH7tBjKcYzhROEaLk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780385433;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=s/75GimBigkxhsh+VnHz8Wg6OaoHBP1HNwvMdh08414=;
 b=0E89DKlfBTv9kp18urJ8lhAWbjVJm+D4DMVNINaoTfnkVjZKaJFXRj0OlT89wVFS+51FXV
 jxe7QEwUbakJ8dBw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=0GdDlpn2;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=qrPcLgnx
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780385432; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=s/75GimBigkxhsh+VnHz8Wg6OaoHBP1HNwvMdh08414=;
 b=0GdDlpn2aIzQaASOFAqIMWqDb6BvU/MdSY5D8vaQnzVHiA1qPrHklcU+mpWpAJqcfLEqMl
 x47VnCuErPBN44IfmtfikDla2i70fOT1qF8mRPf1BPQh0oSviuR2rQBpokNYDxG50KFiRE
 4bXL4cT+mBxYXgN9p5zw7IvodVW2GgU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780385432;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=s/75GimBigkxhsh+VnHz8Wg6OaoHBP1HNwvMdh08414=;
 b=qrPcLgnxHDcxrwJCo84V1SuQVskbV9v7HHhgi4bmj8wKza+gnp5rBF0Y7itHp66/QFI54q
 8aCh5+3PU2z+k4CQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1CD67779A7;
 Tue,  2 Jun 2026 07:30:32 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id RSmNBZiGHmq/VwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 02 Jun 2026 07:30:32 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: rajat.gupta@oss.qualcomm.com, jani.nikula@linux.intel.com,
 jani.saarinen@intel.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH] drm/dumb-buffers: Increase size limits to match current
 devices
Date: Tue,  2 Jun 2026 09:30:14 +0200
Message-ID: <20260602073027.192758-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Level: 
X-Spam-Score: -3.01
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:rajat.gupta@oss.qualcomm.com,m:jani.nikula@linux.intel.com,m:jani.saarinen@intel.com,m:simona@ffwll.ch,m:airlied@gmail.com,m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:tzimmermann@suse.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,linux.intel.com,intel.com,ffwll.ch,gmail.com,kernel.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:email,suse.de:mid,suse.de:dkim,intel.com:email,qualcomm.com:email]
X-Rspamd-Queue-Id: 8314A629B78
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Increase the limits for dumb-buffer arguments to sizes of 16384x16384
at 64 bpp. Such buffer sizes are still within 32-bit unsigned limits.
Fixes CI and high-end devices.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Fixes: 5ab62dd3687b ("drm: prevent integer overflows in dumb buffer creation helpers")
Reported-by: Jani Nikula <jani.nikula@linux.intel.com>
Closes: https://lore.kernel.org/dri-devel/ddf0233e50044059c85279f928661563ef6a55bf@intel.com/
Cc: Rajat Gupta <rajat.gupta@oss.qualcomm.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_dumb_buffers.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/drm_dumb_buffers.c
index e60130b2bb0c..9c4cfb3210aa 100644
--- a/drivers/gpu/drm/drm_dumb_buffers.c
+++ b/drivers/gpu/drm/drm_dumb_buffers.c
@@ -201,11 +201,12 @@ int drm_mode_create_dumb(struct drm_device *dev,
 	if (!args->width || !args->height || !args->bpp)
 		return -EINVAL;
 
-	/* Reject unreasonable inputs early.  Dumb buffers are for software
-	 * rendering; nothing legitimate needs more than 8192x8192 at 32bpp.
-	 * This prevents overflows in downstream alignment helpers.
+	/*
+	 * Reject unreasonable inputs early. Dumb buffers are for software
+	 * rendering; nothing legitimate needs more than 16384x16384 at
+	 * 64 bpp. This prevents overflows in downstream alignment helpers.
 	 */
-	if (args->width >= 8192 || args->height >= 8192 || args->bpp > 32)
+	if (args->width > 16384 || args->height > 16384 || args->bpp > 64)
 		return -EINVAL;
 
 	/* overflow checks for 32bit size calculations */

base-commit: a980196655477a8f5067112946401fe52e510664
-- 
2.54.0

