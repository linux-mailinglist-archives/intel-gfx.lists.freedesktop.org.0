Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9C79D4D9A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 14:18:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C70610E952;
	Thu, 21 Nov 2024 13:18:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="ceWtK439";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="rvRemHBd";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="ceWtK439";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="rvRemHBd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA68110E942;
 Thu, 21 Nov 2024 13:18:13 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 1AFB521A0B;
 Thu, 21 Nov 2024 13:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1732195092; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=tDGR2/fvbh2DPeK7oawXV7qiE2TNgjoh/HhzsBJ/Dgk=;
 b=ceWtK439rlZY0HYOj1e0liOQo9JtPk0wlVvSLOUAjNlycs9VCuWGbDBMzHihd1lpbB0jxs
 sj7FWN0W6oRi8sbMhUuyLv3kdXMTpWR74Whw5jzyzlNhG1gwuOjbq1vQ5G6JzVev2GwIDV
 TI3pFn1X9wErZgyy3uieLqIR0Mxk6TE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1732195092;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=tDGR2/fvbh2DPeK7oawXV7qiE2TNgjoh/HhzsBJ/Dgk=;
 b=rvRemHBdbxlzHn8igLRuO5DzStibcgcCMO0BA7+/quZVRGhTCDtxXaSZ3kH9VWZnsvPCGA
 rpe2F4Wg1v3vjyAA==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=ceWtK439;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=rvRemHBd
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1732195092; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=tDGR2/fvbh2DPeK7oawXV7qiE2TNgjoh/HhzsBJ/Dgk=;
 b=ceWtK439rlZY0HYOj1e0liOQo9JtPk0wlVvSLOUAjNlycs9VCuWGbDBMzHihd1lpbB0jxs
 sj7FWN0W6oRi8sbMhUuyLv3kdXMTpWR74Whw5jzyzlNhG1gwuOjbq1vQ5G6JzVev2GwIDV
 TI3pFn1X9wErZgyy3uieLqIR0Mxk6TE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1732195092;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=tDGR2/fvbh2DPeK7oawXV7qiE2TNgjoh/HhzsBJ/Dgk=;
 b=rvRemHBdbxlzHn8igLRuO5DzStibcgcCMO0BA7+/quZVRGhTCDtxXaSZ3kH9VWZnsvPCGA
 rpe2F4Wg1v3vjyAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id AE20C137CF;
 Thu, 21 Nov 2024 13:18:11 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 4VlKKRMzP2eIJAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 21 Nov 2024 13:18:11 +0000
Date: Thu, 21 Nov 2024 14:18:10 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Simona Vetter <simona.vetter@ffwll.ch>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dim-tools@lists.freedesktop.org
Subject: [PULL] drm-misc-fixes
Message-ID: <20241121131810.GA54208@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Rspamd-Queue-Id: 1AFB521A0B
X-Spam-Score: -4.51
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 NEURAL_HAM_SHORT(-0.20)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 MIME_GOOD(-0.10)[text/plain]; MX_GOOD(-0.01)[];
 FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MISSING_XM_UA(0.00)[];
 ARC_NA(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 MIME_TRACE(0.00)[0:+]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; RCVD_TLS_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+]
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
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

Hi Dave, Sima,

only two patches in this week's drm-misc-fixes PR.

Best regards
Thomas

drm-misc-fixes-2024-11-21:
Short summary of fixes pull:

dma-fence:
- Fix reference leak on fence-merge failure path
- Simplify fence merging with kernel's sort()
The following changes since commit 32c4514455b2b8fde506f8c0962f15c7e4c26f1d:

  drm/bridge: tc358768: Fix DSI command tx (2024-11-14 11:29:42 +0100)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2024-11-21

for you to fetch changes up to fe52c649438b8489c9456681d93a9b3de3d38263:

  dma-fence: Use kernel's sort for merging fences (2024-11-15 13:10:24 +0100)

----------------------------------------------------------------
Short summary of fixes pull:

dma-fence:
- Fix reference leak on fence-merge failure path
- Simplify fence merging with kernel's sort()

----------------------------------------------------------------
Tvrtko Ursulin (2):
      dma-fence: Fix reference leak on fence merge failure path
      dma-fence: Use kernel's sort for merging fences

 drivers/dma-buf/dma-fence-unwrap.c | 126 ++++++++++++++++++-------------------
 1 file changed, 61 insertions(+), 65 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)
