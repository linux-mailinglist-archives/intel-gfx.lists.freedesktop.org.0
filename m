Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFQrMIj68mnxwAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 08:45:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C13649E335
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 08:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0499F10F214;
	Thu, 30 Apr 2026 06:45:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="oxx8+QbW";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="+EgL3tFe";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="X49V+yD7";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="3gMVT/m2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7819D10F216
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Apr 2026 06:45:24 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id DC3955BD70;
 Thu, 30 Apr 2026 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1777531523; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xRE7UVjujoUmBJVmUi3xYYjT8iJlV9tALry80/foyNE=;
 b=oxx8+QbW68S/gzE83Z702vPYBLSP9k4KB0GcshagxCG51mVUe8IvvgKICiWg6J3+WDs0Ox
 7cEGL0dRqN8NpVZKYauvghpElAI1YQXl/g8SccNxiVGvi0/caaqCObNMQ2kH5INqtmFOA7
 13tvdvUzIKJBVYMyspMF3XctKawQ/1A=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1777531523;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xRE7UVjujoUmBJVmUi3xYYjT8iJlV9tALry80/foyNE=;
 b=+EgL3tFeejl7nC1llfqwGQijRn+LuN0nXA6XP8FvM69cYhElgKNUadIYJjR3o9fpDwqKRk
 O1AZEeJ3KK8qXhDQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1777531522; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xRE7UVjujoUmBJVmUi3xYYjT8iJlV9tALry80/foyNE=;
 b=X49V+yD7xvLP7dH1UoZgRGL0rXGr2PlQqfEE745mzJceePstH9d66IN/A78yFj7O5gRvAf
 RFq1zTtCYKINVL7G4euuDag1szIgW9jwM8PczhMor/BxyErugVyGXtUYVNFR5rBQxv04mt
 aHW8R26o3bpb9/zvVklOmLAKOzP+J1o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1777531522;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=xRE7UVjujoUmBJVmUi3xYYjT8iJlV9tALry80/foyNE=;
 b=3gMVT/m2pd0i+6OxwoZVY36/QLL8VbjBxU8TpJo+m0KHfqd/zPMqif4dgFf2Nt+dj0JwKZ
 NcRfxKFjf6/a1gAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7C3FB593B0;
 Thu, 30 Apr 2026 06:45:22 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id T4z9HIL68mnXHgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 30 Apr 2026 06:45:22 +0000
Date: Thu, 30 Apr 2026 08:45:21 +0200
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
Message-ID: <20260430064521.GA14957@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -4.30
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
X-Rspamd-Queue-Id: 2C13649E335
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,linux.fritz.box:mid,gitlab.freedesktop.org:url]

Hi Dave, Sima,

this is the first drm-misc-fixes for the new v7.0 kernel.

Best regards
Thomas

drm-misc-fixes-2026-04-30:
Short summary of fixes pull:

DRM core and helpers:
- calculate framebuffer geometry with format helpers
- fix docs

appletbdrm:
- allocate protocol buffers with kvzalloc()

dma-buf:
- fix docs

imagination:
- avoid segfault in debugfs

ofdrm:
- put PCI device reference on errors

udl:
- increase USB timeout
The following changes since commit 254f49634ee16a731174d2ae34bc50bd5f45e731:

  Linux 7.1-rc1 (2026-04-26 14:19:00 -0700)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-04-30

for you to fetch changes up to ac2c996675755c725a0065dbe3e2ebffded9080b:

  drm/udl: Increase GET_URB_TIMEOUT (2026-04-28 10:50:41 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

DRM core and helpers:
- calculate framebuffer geometry with format helpers
- fix docs

appletbdrm:
- allocate protocol buffers with kvzalloc()

dma-buf:
- fix docs

imagination:
- avoid segfault in debugfs

ofdrm:
- put PCI device reference on errors

udl:
- increase USB timeout

----------------------------------------------------------------
Aditya Garg (1):
      MAINTAINERS, mailmap: update Aditya Garg's email address

Ashutosh Desai (1):
      drm/gem: Fix inconsistent plane dimension calculation in drm_gem_fb_init_with_funcs()

Brajesh Gupta (1):
      drm/imagination: Fix segfault when updating ftrace mask

Geert Uytterhoeven (1):
      drm/color-mgmt: Typo s/R332/RGB332/

Maxime Ripard (1):
      Merge drm/drm-fixes into drm-misc-fixes

Sasha Finkelstein (1):
      drm/appletbdrm: Use kvzalloc for big allocations

Shixiong Ou (1):
      drm/udl: Increase GET_URB_TIMEOUT

Thomas Zimmermann (1):
      Merge drm/drm-fixes into drm-misc-fixes

Xiang Gao (1):
      dma-buf: fix stale @lock references in struct dma_buf documentation

Yuho Choi (1):
      drm/sysfb: ofdrm: fix PCI device reference leaks

 .mailmap                                     | 1 +
 MAINTAINERS                                  | 2 +-
 drivers/gpu/drm/drm_color_mgmt.c             | 2 +-
 drivers/gpu/drm/drm_gem_framebuffer_helper.c | 4 ++--
 drivers/gpu/drm/imagination/pvr_fw_trace.c   | 2 +-
 drivers/gpu/drm/sysfb/ofdrm.c                | 2 ++
 drivers/gpu/drm/tiny/appletbdrm.c            | 4 ++--
 drivers/gpu/drm/udl/udl_main.c               | 3 +--
 drivers/gpu/drm/udl/udl_modeset.c            | 5 ++++-
 include/linux/dma-buf.h                      | 4 ++--
 10 files changed, 17 insertions(+), 12 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
