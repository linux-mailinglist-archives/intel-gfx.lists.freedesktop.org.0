Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id S8CcCYPKAWqbjwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:24:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0EE50D9B5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1BC10E6EC;
	Mon, 11 May 2026 12:24:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="OxbVFp+o";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="bKTz+jP8";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="OxbVFp+o";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="bKTz+jP8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22BBD89369
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2026 12:24:26 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id ABF896B8CC;
 Mon, 11 May 2026 12:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778502264; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y8wfNNjm4i9r8GtfyBbZs0VUjeP7LrjfrNBh2349GDE=;
 b=OxbVFp+oTMH9+QD5Eb9Kf8kDjmVxGoUScTldO4QeCdA8Jlp6xFl9BSwIPEEHRcLu0YXVh9
 t24txUmz3juC5bKxl8GDseLhpEAgslJMRSnZgppnKc+O0sqDbROCFCGvAuIk5m69XgWJEq
 aiK58OIqRRn44FIQxaCarRLLMLjwqcE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778502264;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y8wfNNjm4i9r8GtfyBbZs0VUjeP7LrjfrNBh2349GDE=;
 b=bKTz+jP8dtoMHsEcW9WczsSbMhcYr6VPnPJ2HlCqI5uxHQTJYpoVghSPkDpNxANhNvUWMH
 6AeaGJtUOfwUjcBw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778502264; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y8wfNNjm4i9r8GtfyBbZs0VUjeP7LrjfrNBh2349GDE=;
 b=OxbVFp+oTMH9+QD5Eb9Kf8kDjmVxGoUScTldO4QeCdA8Jlp6xFl9BSwIPEEHRcLu0YXVh9
 t24txUmz3juC5bKxl8GDseLhpEAgslJMRSnZgppnKc+O0sqDbROCFCGvAuIk5m69XgWJEq
 aiK58OIqRRn44FIQxaCarRLLMLjwqcE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778502264;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=Y8wfNNjm4i9r8GtfyBbZs0VUjeP7LrjfrNBh2349GDE=;
 b=bKTz+jP8dtoMHsEcW9WczsSbMhcYr6VPnPJ2HlCqI5uxHQTJYpoVghSPkDpNxANhNvUWMH
 6AeaGJtUOfwUjcBw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4209D593A3;
 Mon, 11 May 2026 12:24:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id AuumDnjKAWolYwAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Mon, 11 May 2026 12:24:24 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: mripard@kernel.org, maarten.lankhorst@linux.intel.com, airlied@redhat.com,
 airlied@gmail.com, simona@ffwll.ch, admin@kodeit.net,
 gargaditya08@proton.me, paul@crapouillou.net, zack.rusin@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
Cc: dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-mips@vger.kernel.org, virtualization@lists.linux.dev,
 Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v2 00/10] drm: Improve logic behind damage handling
Date: Mon, 11 May 2026 14:22:24 +0200
Message-ID: <20260511122421.114014-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -2.80
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
X-Rspamd-Queue-Id: EF0EE50D9B5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:mripard@kernel.org,m:maarten.lankhorst@linux.intel.com,m:airlied@redhat.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:admin@kodeit.net,m:gargaditya08@proton.me,m:paul@crapouillou.net,m:zack.rusin@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:dri-devel@lists.freedesktop.org,m:linux-hyperv@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:linux-mips@vger.kernel.org,m:virtualization@lists.linux.dev,m:tzimmermann@suse.de,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linux.intel.com,redhat.com,gmail.com,ffwll.ch,kodeit.net,proton.me,crapouillou.net,broadcom.com];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[suse.de:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[tzimmermann@suse.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.988];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:mid,suse.de:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

DRM clients can supply information on framebuffer areas to update as
part of each page flip, called damage clipping rectangles. But DRM's
processing of this information is inconsistent and prone to errors.

- There are multiple fields and tests that decide if damage clips
should be taken or ignored.

- Sometimes damage clips are removed behind the back of the DRM client.

- Atomic helpers evaluate damage clipping in the middle of the atomic
check: after connectors and encoders, but before planes and CRTCs. Hence
pipeline stages have an inconsistent view.

- Which leads to drivers (ingenic) doing a re-evaluation if necessary.

- Tests of plane source coordinates only happen during commits. At this
point, the driver should already know if damage clips are to be taken or
not. Because of this, some drivers (appletbdrm) might operate on incorrect
damage information for their internal workings. This also leads to excessive
use of the old plane state.

Got through DRM helpers and drivers to fix up the logic.

- Run all of the atomic checks with the damage information supplied by
DRM clients. Afterwards evaluate plane and CRTC states on whether to
take or ignore damage clips. Do all related tests in a single atomic
helper.

- Do not discard damage clips. Set ignore_damage_clips in struct
drm_plane_state instead. This includes changes to plane source-coordinates.
The damage iterator now only has to look at this flag to detect if it
should use the damage clips. 

- Go over drivers and fix up the damage handling in the plane's
atomic_update helpers. Most drivers no longer need the old plane state
in their update.

- The appletbdrm driver require a fix in how it uses damage information.
Ingenic and vmwgfx can be simplified. These changes make the drivers better
structured.

- Kunit tests require some changes. Drop some obsolete tests and add a new
one for ignore_damage_flags.

Tested with bochs, mgag200, Kunit tests.

v2:
- rebase on latest upstream

Thomas Zimmermann (10):
  drm/damage-helper: Do not alter damage clips on modeset, but ignore
    them
  drm/atomic-helpers: Evaluate plane damage after atomic_check
  drm/ingenic: Remove calls to drm_atomic_helper_check_plane_damage()
  drm/damage-helper: Test src coord in
    drm_atomic_helper_check_plane_damage()
  drm/appletbdrm: Allocate request/response buffers in begin_fb_access
  drm/damage-helper: Remove old state from
    drm_atomic_helper_damage_iter_init()
  drm/damage-helper: Remove old state from
    drm_atomic_helper_damage_merged()
  drm/atomic_helper: Do not evaluate plane damage before atomic_check
  drm/damage-helper: Rename state parameters in damage helpers
  drm/vmwgfx: Remove unused field struct
    vmwgfx_du_update_plane.old_state

 drivers/gpu/drm/ast/ast_cursor.c              |   3 +-
 drivers/gpu/drm/ast/ast_mode.c                |   2 +-
 drivers/gpu/drm/drm_atomic_helper.c           |   6 +-
 drivers/gpu/drm/drm_atomic_state_helper.c     |   1 +
 drivers/gpu/drm/drm_damage_helper.c           |  44 ++--
 drivers/gpu/drm/drm_fb_dma_helper.c           |   2 +-
 drivers/gpu/drm/drm_mipi_dbi.c                |   3 +-
 drivers/gpu/drm/gud/gud_pipe.c                |   3 +-
 drivers/gpu/drm/hyperv/hyperv_drm_modeset.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_plane.c    |  11 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   3 +-
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c     |   3 -
 drivers/gpu/drm/ingenic/ingenic-ipu.c         |   8 +-
 drivers/gpu/drm/mgag200/mgag200_mode.c        |   3 +-
 drivers/gpu/drm/sitronix/st7571.c             |   3 +-
 drivers/gpu/drm/sitronix/st7586.c             |   3 +-
 drivers/gpu/drm/sitronix/st7920.c             |   3 +-
 drivers/gpu/drm/solomon/ssd130x.c             |   9 +-
 drivers/gpu/drm/sysfb/drm_sysfb_modeset.c     |   3 +-
 .../gpu/drm/tests/drm_damage_helper_test.c    | 200 +++---------------
 drivers/gpu/drm/tiny/appletbdrm.c             |  56 +++--
 drivers/gpu/drm/tiny/bochs.c                  |   3 +-
 drivers/gpu/drm/tiny/cirrus-qemu.c            |   2 +-
 drivers/gpu/drm/tiny/gm12u320.c               |   2 +-
 drivers/gpu/drm/tiny/ili9225.c                |   3 +-
 drivers/gpu/drm/tiny/repaper.c                |   2 +-
 drivers/gpu/drm/tiny/sharp-memory.c           |   3 +-
 drivers/gpu/drm/udl/udl_modeset.c             |   3 +-
 drivers/gpu/drm/virtio/virtgpu_plane.c        |   2 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c           |   5 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.h           |   2 -
 drivers/gpu/drm/vmwgfx/vmwgfx_scrn.c          |  12 +-
 drivers/gpu/drm/vmwgfx/vmwgfx_stdu.c          |  15 +-
 include/drm/drm_damage_helper.h               |   9 +-
 34 files changed, 124 insertions(+), 311 deletions(-)


base-commit: 680a4832a8182b13ac5d55ab0c03c54ebc2baadd
-- 
2.54.0

