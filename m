Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3168C7206
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 09:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3753310E71B;
	Thu, 16 May 2024 07:27:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="rzSSoiud";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="7x41RNZy";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="rzSSoiud";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="7x41RNZy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7364910E26F;
 Thu, 16 May 2024 07:27:02 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 6823C345D3;
 Thu, 16 May 2024 07:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715844420; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=j2V5T8Fq3al7rsXEKdvcAmhsQu6pg7AjupV4Awse8+g=;
 b=rzSSoiudNe26MfyCEKHuNkN/ux7FwFT5XvvwD22ioyDfyYwkNXBoovZAoYyPckYQJ5wSsB
 nwmwPHEdUiLzt9oHNtbmWuSvhJ+RCCfrFLKn+TqtZ28NhuJOpK4IM9KBhkSg3CWofX8OQf
 kdXbZ75nMC9FD8OV6mUIqaPUwLpQ3/4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715844420;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=j2V5T8Fq3al7rsXEKdvcAmhsQu6pg7AjupV4Awse8+g=;
 b=7x41RNZyyZ3oTqdarjYvsWhA06IxkK6mqQMYd36pG56mT1wt0raD6AFjyOfTwk06mHuuXL
 CWERbACSLf4tyLBg==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=rzSSoiud;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=7x41RNZy
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715844420; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=j2V5T8Fq3al7rsXEKdvcAmhsQu6pg7AjupV4Awse8+g=;
 b=rzSSoiudNe26MfyCEKHuNkN/ux7FwFT5XvvwD22ioyDfyYwkNXBoovZAoYyPckYQJ5wSsB
 nwmwPHEdUiLzt9oHNtbmWuSvhJ+RCCfrFLKn+TqtZ28NhuJOpK4IM9KBhkSg3CWofX8OQf
 kdXbZ75nMC9FD8OV6mUIqaPUwLpQ3/4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715844420;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=j2V5T8Fq3al7rsXEKdvcAmhsQu6pg7AjupV4Awse8+g=;
 b=7x41RNZyyZ3oTqdarjYvsWhA06IxkK6mqQMYd36pG56mT1wt0raD6AFjyOfTwk06mHuuXL
 CWERbACSLf4tyLBg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 0041813991;
 Thu, 16 May 2024 07:26:59 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id SYT1OUO1RWahJAAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 16 May 2024 07:26:59 +0000
Date: Thu, 16 May 2024 09:26:58 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
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
Message-ID: <20240516072658.GA8395@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spam-Flag: NO
X-Spam-Score: -6.51
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 6823C345D3
X-Spam-Level: 
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-6.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 DWL_DNSWL_MED(-2.00)[suse.de:dkim];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 ARC_NA(0.00)[]; RCPT_COUNT_TWELVE(0.00)[16];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 MIME_TRACE(0.00)[0:+]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 MISSING_XM_UA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_TLS_ALL(0.00)[]; DKIM_TRACE(0.00)[suse.de:+];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim]
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

Hi Dave, Sima

there's only a single patch in this week's drm-misc-fixes PR.

Best regards
Thomas

drm-misc-fixes-2024-05-16:
Short summary of fixes pull:

nouveau:
- use tile_mode and pte_kind for VM_BIND bo allocations
The following changes since commit 6897204ea3df808d342c8e4613135728bc538bcd:

  drm/connector: Add \n to message about demoting connector force-probes (2024-05-07 09:17:07 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2024-05-16

for you to fetch changes up to aed9a1a4f7106ff99a882ad06318cebfa71016a2:

  drm/nouveau: use tile_mode and pte_kind for VM_BIND bo allocations (2024-05-13 22:17:58 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

nouveau:
- use tile_mode and pte_kind for VM_BIND bo allocations

----------------------------------------------------------------
Mohamed Ahmed (1):
      drm/nouveau: use tile_mode and pte_kind for VM_BIND bo allocations

 drivers/gpu/drm/nouveau/nouveau_abi16.c |  3 +++
 drivers/gpu/drm/nouveau/nouveau_bo.c    | 44 ++++++++++++++-------------------
 include/uapi/drm/nouveau_drm.h          |  7 ++++++
 3 files changed, 29 insertions(+), 25 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)
