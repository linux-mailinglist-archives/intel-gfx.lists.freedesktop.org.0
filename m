Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOy9BYE5GWpVtAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 09:00:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B9F5FE41B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 09:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EC9410F9BA;
	Fri, 29 May 2026 07:00:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="Pbw5qjbh";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="2WtQQmzb";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="DKi3DUJM";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="c5ZrqV52";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9076110F9BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2026 07:00:12 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id DE43E66F6B;
 Fri, 29 May 2026 07:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780038011; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sx9uZgU6Uf5r1hE2m5Qd8QDIOswHFAw99qCVgtc8iOg=;
 b=Pbw5qjbhZLsOyurQeGfy6zSuE1SXyryJ3sDKq6Hv99W3OK3g18YYE1JpvzAWkFIYzOF4o3
 4RA0ut1ZsnGXCUMe2i00WuWp/2jCgSwaPXeesvfwdiry25TKkYAP27DR7P++tN4WJfJann
 1P80dxyasSBo1F7j7J2lp+byqn5Ty4o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780038011;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sx9uZgU6Uf5r1hE2m5Qd8QDIOswHFAw99qCVgtc8iOg=;
 b=2WtQQmzbD1kpH1nyFsBY9Ya+6whC8HoUYbFjOHbKFMwIPvrNIIfJfqiISkPL6v3tTUtEJG
 rk/MI73iTTbdYgBQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1780038010; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sx9uZgU6Uf5r1hE2m5Qd8QDIOswHFAw99qCVgtc8iOg=;
 b=DKi3DUJMfMnYYHqcrklnHcBuT2on5KiA3EPygTMgg0dZYUDq+agB8GgQPPqIsPi2wli9xw
 /60aH86tP4ftm0Y2ZpR70G6tDQyZMuCS+fMkUqcw1NLh/WgNoANtMyXMQEmTMvK5UVaQSe
 tTdtWvYEan6K1wW4/tmIVSNzUxIrcRo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1780038010;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=sx9uZgU6Uf5r1hE2m5Qd8QDIOswHFAw99qCVgtc8iOg=;
 b=c5ZrqV52gn7zdAgtlYBcKJ7OSoFDWXh2aCzb4a239EZveAiisGU08P2hfmBrGGmsi9mEf+
 nxYMnAOXplz8nzCw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 73F1F5B1EF;
 Fri, 29 May 2026 07:00:10 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id gjHaGno5GWoEPgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Fri, 29 May 2026 07:00:10 +0000
Date: Fri, 29 May 2026 09:00:09 +0200
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
Subject: [PULL] drm-misc-fixes
Message-ID: <20260529070009.GA313534@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spam-Score: -4.30
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:airlied@gmail.com,m:simona.vetter@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:tursulin@ursulin.net,m:rodrigo.vivi@intel.com,m:tzimmermann@suse.de,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:matthew.brost@intel.com,m:thomas.hellstrom@linux.intel.com,m:ogabbay@kernel.org,m:dri-devel@lists.freedesktop.org,m:intel-xe@lists.freedesktop.org,m:dim-tools@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,suse.de:dkim]
X-Rspamd-Queue-Id: B9B9F5FE41B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

here is this week's PR from drm-misc-fixes. There's one cross-subsys
commit to the dma-buf code. Commit 5ab62dd3687b ("drm: prevent integer
overflows in dumb buffer creation helpers") has not Link tag because
it went through the security list.

Best regards
Thomas

drm-misc-fixes-2026-05-29:
Short summary of fixes pull:

amdxdna:
- require IOMMU on AIE2

dumb-buffer:
- prevent overflows in dumb-buffer creation

dma-buf:
- fix UAF in dma_buf_fd() tracepoint

hyperv:
- improve protocol validation

ivpu:
- test write offset in debugfs

rocket:
- fix UAF in bo creation
The following changes since commit 9af1b6e175c82daf4b423da339a722d8e67a735a:

  drm/virtio: use uninterruptible resv lock for plane updates (2026-05-20 18:12:11 +0300)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-05-29

for you to fetch changes up to 5ab62dd3687bcc2cc542b99385aabac5c996db6f:

  drm: prevent integer overflows in dumb buffer creation helpers (2026-05-29 08:30:47 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

amdxdna:
- require IOMMU on AIE2

dumb-buffer:
- prevent overflows in dumb-buffer creation

dma-buf:
- fix UAF in dma_buf_fd() tracepoint

hyperv:
- improve protocol validation

ivpu:
- test write offset in debugfs

rocket:
- fix UAF in bo creation

----------------------------------------------------------------
Berkant Koc (2):
      drm/hyperv: validate resolution_count and fix WIN8 fallback
      drm/hyperv: validate VMBus packet size in receive callback

Dan Carpenter (1):
      accel/ivpu: prevent uninitialized data bug in debugfs

David Carlier (1):
      dma-buf: fix UAF in dma_buf_fd() tracepoint

Dhabaleshwar Das (1):
      accel/rocket: fix UAF via dangling GEM handle in create_bo

Lizhi Hou (1):
      accel/amdxdna: Block running when IOMMU is off

Rajat Gupta (1):
      drm: prevent integer overflows in dumb buffer creation helpers

 drivers/accel/amdxdna/aie2_pci.c          |   5 ++
 drivers/accel/ivpu/ivpu_debugfs.c         |   2 +-
 drivers/accel/rocket/rocket_gem.c         |  17 +++--
 drivers/dma-buf/dma-buf.c                 |   6 +-
 drivers/gpu/drm/drm_dumb_buffers.c        |  14 +++-
 drivers/gpu/drm/hyperv/hyperv_drm_proto.c | 113 +++++++++++++++++++++++++-----
 6 files changed, 132 insertions(+), 25 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
