Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qHdPDvewDmr6AwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 09:15:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B2359FF58
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 09:15:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F4010E460;
	Thu, 21 May 2026 07:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="CO4rzz9O";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="W2m8vZ1Q";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="CO4rzz9O";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="W2m8vZ1Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB17810E465
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2026 07:14:59 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 4B5B76B251;
 Thu, 21 May 2026 07:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779347698; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SaSIERTp3yn7OQ9va/0lj1DC5PxkP2DR5u8ubcmHH44=;
 b=CO4rzz9ORacUxWBa+frxjJZT07Wj3zDB3smtz9Lriw11ANbEBX0LUeZcd3gZNvEmrBq++k
 M8Uc4Rd7XUHiDOXW4hDyAXlQVBlIirHqB9y+O1jOmoMDweZIiLBN/KIHlfy0VdtR+xZ0RD
 0SfxcnstW0G1koFnuxbjhV6OHoC81GM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779347698;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SaSIERTp3yn7OQ9va/0lj1DC5PxkP2DR5u8ubcmHH44=;
 b=W2m8vZ1QmjvcmoHZ843EmjIzpSy8355oCMZG+8D9ODreKPuojXhhyX+sj/oOYPvglmB8/H
 3FqYUJfdunXNSRDQ==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=CO4rzz9O;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=W2m8vZ1Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1779347698; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SaSIERTp3yn7OQ9va/0lj1DC5PxkP2DR5u8ubcmHH44=;
 b=CO4rzz9ORacUxWBa+frxjJZT07Wj3zDB3smtz9Lriw11ANbEBX0LUeZcd3gZNvEmrBq++k
 M8Uc4Rd7XUHiDOXW4hDyAXlQVBlIirHqB9y+O1jOmoMDweZIiLBN/KIHlfy0VdtR+xZ0RD
 0SfxcnstW0G1koFnuxbjhV6OHoC81GM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1779347698;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SaSIERTp3yn7OQ9va/0lj1DC5PxkP2DR5u8ubcmHH44=;
 b=W2m8vZ1QmjvcmoHZ843EmjIzpSy8355oCMZG+8D9ODreKPuojXhhyX+sj/oOYPvglmB8/H
 3FqYUJfdunXNSRDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 1ED0A593AC;
 Thu, 21 May 2026 07:14:58 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id Y5T6BvKwDmokLQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 21 May 2026 07:14:58 +0000
Date: Thu, 21 May 2026 09:14:56 +0200
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
Message-ID: <20260521071456.GA14644@localhost.localdomain>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,localhost.localdomain:mid,gitlab.freedesktop.org:url,suse.de:dkim]
X-Rspamd-Queue-Id: 80B2359FF58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Dave, Sima,

this is this weekly PR for drm-misc-fixes.

Best regards
Thomas

drm-misc-fixes-2026-05-21:
Short summary of fixes pull:

amdxdna:
- remove mmap and export for ubuf

bridge:
- chipone-icn6211: managed bridge cleanup
- lt66121: acquire reset GPIO
- megachips: fix clean up on failed IRQ requests

gem:
- clean up LRU locking

v3d:
- fix UAF in error code paths
- release GEM-object ref on free'd jobs

virtio:
- use uninterruptible resv locking in plane updates
The following changes since commit 0a9c56dd387605d17dabeedd9fdd2c4c1d0bab7b:

  drm/loongson: Use managed KMS polling (2026-05-15 08:50:54 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-05-21

for you to fetch changes up to 9af1b6e175c82daf4b423da339a722d8e67a735a:

  drm/virtio: use uninterruptible resv lock for plane updates (2026-05-20 18:12:11 +0300)

----------------------------------------------------------------
Short summary of fixes pull:

amdxdna:
- remove mmap and export for ubuf

bridge:
- chipone-icn6211: managed bridge cleanup
- lt66121: acquire reset GPIO
- megachips: fix clean up on failed IRQ requests

gem:
- clean up LRU locking

v3d:
- fix UAF in error code paths
- release GEM-object ref on free'd jobs

virtio:
- use uninterruptible resv locking in plane updates

----------------------------------------------------------------
Boris Brezillon (1):
      drm/gem: Make the GEM LRU lock part of drm_device

Deepanshu Kartikey (1):
      drm/virtio: use uninterruptible resv lock for plane updates

Julien Chauveau (1):
      drm/bridge: it66121: acquire reset GPIO in probe

Lizhi Hou (1):
      accel/amdxdna: Remove mmap and export support for ubuf

Maíra Canal (2):
      drm/v3d: Fix use-after-free of CPU job query arrays on error path
      drm/v3d: Release indirect CSD GEM reference on CPU job free

Osama Abdelkader (2):
      drm/bridge: chipone-icn6211: use devm_drm_bridge_add in i2c probe
      drm/bridge: megachips: remove bridge when irq request fails

 drivers/accel/amdxdna/amdxdna_gem.c                |  9 +++-
 drivers/accel/amdxdna/amdxdna_gem.h                |  2 +
 drivers/accel/amdxdna/amdxdna_ubuf.c               | 50 ----------------------
 drivers/gpu/drm/bridge/chipone-icn6211.c           |  4 +-
 drivers/gpu/drm/bridge/ite-it66121.c               |  5 +++
 .../drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c   | 16 ++++---
 drivers/gpu/drm/drm_drv.c                          |  2 +
 drivers/gpu/drm/drm_gem.c                          | 36 +++++++---------
 drivers/gpu/drm/msm/msm_drv.c                      | 11 +++--
 drivers/gpu/drm/msm/msm_drv.h                      |  7 ---
 drivers/gpu/drm/msm/msm_gem.c                      | 33 +++++++-------
 drivers/gpu/drm/msm/msm_gem_shrinker.c             |  4 +-
 drivers/gpu/drm/msm/msm_gem_submit.c               |  6 +--
 drivers/gpu/drm/msm/msm_gem_vma.c                  | 12 +++---
 drivers/gpu/drm/msm/msm_ringbuffer.c               |  6 +--
 drivers/gpu/drm/v3d/v3d_sched.c                    | 16 +------
 drivers/gpu/drm/v3d/v3d_submit.c                   | 22 ++++++++--
 drivers/gpu/drm/virtio/virtgpu_drv.h               |  1 +
 drivers/gpu/drm/virtio/virtgpu_gem.c               | 17 ++++++++
 drivers/gpu/drm/virtio/virtgpu_plane.c             | 10 ++++-
 include/drm/drm_device.h                           |  7 +++
 include/drm/drm_gem.h                              | 20 ++++-----
 22 files changed, 143 insertions(+), 153 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
