Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FPGC9PP4WnQyQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 08:14:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB0FA4174ED
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2026 08:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E283310E68E;
	Fri, 17 Apr 2026 06:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="sdLPT/2K";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Wb8MY+Dw";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="sdLPT/2K";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Wb8MY+Dw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22ACE10E68E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2026 06:14:34 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id ABEBB5BD5B;
 Fri, 17 Apr 2026 06:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776406472; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nAteDtSBABAjwPYln+NRUdcZJNqgs01f4/BUOe0/cg4=;
 b=sdLPT/2K+2UtHi5FpR7WIL8GV6RjTirE5y4/xix0QNLNYCIBhznjryjyehXYJ98a4hluzn
 ZT4Ac5e2idYFEcw5MW+pmVQo3YaFjhxiQxAFw+ccAI0n/aRAb/DZLwf7JMhfs3BuBULwIF
 WPy+zg75wJV6TVH76/amBDHjy47dBk0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776406472;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nAteDtSBABAjwPYln+NRUdcZJNqgs01f4/BUOe0/cg4=;
 b=Wb8MY+Dw6VzccVsa0LV+R1UqtpU4P/vAVTAMQEZCRvoBEma9aNkeI/0Jdp7vGXBLcc7cLW
 OoS7VjWIDqmvnTCQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b="sdLPT/2K";
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=Wb8MY+Dw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1776406472; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nAteDtSBABAjwPYln+NRUdcZJNqgs01f4/BUOe0/cg4=;
 b=sdLPT/2K+2UtHi5FpR7WIL8GV6RjTirE5y4/xix0QNLNYCIBhznjryjyehXYJ98a4hluzn
 ZT4Ac5e2idYFEcw5MW+pmVQo3YaFjhxiQxAFw+ccAI0n/aRAb/DZLwf7JMhfs3BuBULwIF
 WPy+zg75wJV6TVH76/amBDHjy47dBk0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1776406472;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nAteDtSBABAjwPYln+NRUdcZJNqgs01f4/BUOe0/cg4=;
 b=Wb8MY+Dw6VzccVsa0LV+R1UqtpU4P/vAVTAMQEZCRvoBEma9aNkeI/0Jdp7vGXBLcc7cLW
 OoS7VjWIDqmvnTCQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4880A593AE;
 Fri, 17 Apr 2026 06:14:32 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id lyODEMjP4WkrOQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 17 Apr 2026 06:14:32 +0000
Date: Fri, 17 Apr 2026 08:14:30 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Matthew Brost <matthew.brost@intel.com>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-next-fixes
Message-ID: <20260417061430.GA11880@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -4.51
X-Spam-Level: 
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[suse.de:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,suse.com:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.fritz.box:mid]
X-Rspamd-Queue-Id: AB0FA4174ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

this is the PR from drm-misc-next-fixes. It's only a very simple fix to the
documentation.

Best regards
Thomas

drm-misc-next-fixes-2026-04-17:
Short summary of fixes pull:

dma-buf:
- fix documentation formatting
The following changes since commit 4aa0deae1070690d08c1f47c489f8b5ce3f6ea6d:

  drm/vram: remove DRM_VRAM_MM_FILE_OPERATIONS from docs (2026-04-09 09:34:28 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-next-fixes-2026-04-17

for you to fetch changes up to dc6d51959ec0c08366d5aaeb5b8fb02d814d1e4b:

  dma-buf: fix htmldocs error for dma_buf_attach_revocable (2026-04-10 19:22:02 +0530)

----------------------------------------------------------------
Short summary of fixes pull:

dma-buf:
- fix documentation formatting

----------------------------------------------------------------
Sumit Semwal (1):
      dma-buf: fix htmldocs error for dma_buf_attach_revocable

 drivers/dma-buf/dma-buf.c | 1 +
 1 file changed, 1 insertion(+)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
