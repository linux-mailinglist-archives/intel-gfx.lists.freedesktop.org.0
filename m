Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J+gK/x8/Gl0QgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:52:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACD64E7C44
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 13:52:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0219910F05B;
	Thu,  7 May 2026 11:52:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="dho6Eakv";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="D7bpLThL";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="zGFDhazQ";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="CwhEcVW8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32B710F059
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 11:52:17 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 0AC725D93F;
 Thu,  7 May 2026 11:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778154736; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BI0h7K7D7RBhJ4C/LfArVtjppHL+7fmlkKWVzAzvlx4=;
 b=dho6Eakvt61Udn9fgyn8IztUU/E8RDDsPrrDy0QGBLAYPWBKpNdAOtk0UdMZt53gGFPjbk
 /+w73bP7TTbqasFkOGw1Yh/lpS65ZH6U4jV1nnONursgQKhGn+WpZJCUMZ5i3i69FOWSez
 0p0emQXnEe+OvnL4RtdeKUMtOfQDcwk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778154736;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BI0h7K7D7RBhJ4C/LfArVtjppHL+7fmlkKWVzAzvlx4=;
 b=D7bpLThLo0+NaB+WsR9HWMOehGYX8zG6kkc6h0xMxB5ZrVi/r8Hsn+ZTeycqGc2n+3nKiK
 PacaS/HJtlX+eVAw==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=zGFDhazQ;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=CwhEcVW8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1778154735; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BI0h7K7D7RBhJ4C/LfArVtjppHL+7fmlkKWVzAzvlx4=;
 b=zGFDhazQR4LiJVbj2C7iq/IfHNKzCDR6xZVl53YZI7GgRto3/NrnnSwPTO7T7Pz44K4AAM
 aGZC22Ez1esbg1dGl3h2KWfHDGZZ5OYkcqQ4Qv9H2Euj5tWRsaLBt265kPwOklUKKsCZ9R
 O+A+ewjI+nrNSD030knZtzcKM6DsowE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1778154735;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=BI0h7K7D7RBhJ4C/LfArVtjppHL+7fmlkKWVzAzvlx4=;
 b=CwhEcVW8iEzqUxrQtX/0naGYeYb2xEfSU6zhtoqU+AUuWwfdNbZChlLn6C4UFMbpzZH1oP
 m5mHGLjxuk1h6PAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 91F52593A7;
 Thu,  7 May 2026 11:52:14 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id CopcIu58/GnbFQAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Thu, 07 May 2026 11:52:14 +0000
Date: Thu, 7 May 2026 13:52:13 +0200
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
Message-ID: <20260507115213.GA206508@linux.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.51
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
X-Rspamd-Queue-Id: 3ACD64E7C44
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:url,suse.de:dkim,linux.fritz.box:mid]
X-Rspamd-Action: no action

Hi Dave, Sima, 

here's the (rather large) PR from drm-misc-fixes for this week.

Best regards
Thomas

drm-misc-fixes-2026-05-07:
Short summary of fixes pull:

bochs:
- fix managed cleanup

bridge:
- tda998x: fix sparse warnings on type correctness

etnaviv:
- schedule armed jobs

exynos:
- managed bridge cleanup

fb-helper:
- fix clipping

ivpu:
- disallow reexport of GEM buffer objects

noveau:
- revert support for GA100

panel:
- boe-tv101wum-nl16: use correct MIPI_DSI mode
- feyjang-fy07024di26a30d: fix error reporting
- himax-hx83102: use correct MIPI_DSI mode
- himax-hx83121a: fix error checks
- himax-hx83121a: select DRM_DISPLAY_DSC_HELPER

qaic:
- fix RAS message handling

qxl:
- clean up polling

sti:
- managed bridge cleanup

ttm:
- update GPU MM stats on pool shrinking
The following changes since commit ac2c996675755c725a0065dbe3e2ebffded9080b:

  drm/udl: Increase GET_URB_TIMEOUT (2026-04-28 10:50:41 +0200)

are available in the Git repository at:

  https://gitlab.freedesktop.org/drm/misc/kernel.git tags/drm-misc-fixes-2026-05-07

for you to fetch changes up to b15838b03cd0c6cf35651cfde62d17f14bb1d566:

  drm/bochs: Drop manual put on probe error path (2026-05-07 10:51:18 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

bochs:
- fix managed cleanup

bridge:
- tda998x: fix sparse warnings on type correctness

etnaviv:
- schedule armed jobs

exynos:
- managed bridge cleanup

fb-helper:
- fix clipping

ivpu:
- disallow reexport of GEM buffer objects

noveau:
- revert support for GA100

panel:
- boe-tv101wum-nl16: use correct MIPI_DSI mode
- feyjang-fy07024di26a30d: fix error reporting
- himax-hx83102: use correct MIPI_DSI mode
- himax-hx83121a: fix error checks
- himax-hx83121a: select DRM_DISPLAY_DSC_HELPER

qaic:
- fix RAS message handling

qxl:
- clean up polling

sti:
- managed bridge cleanup

ttm:
- update GPU MM stats on pool shrinking

----------------------------------------------------------------
Alok Tiwari (1):
      accel/qaic: fix incorrect counter check in RAS message decode

Arnd Bergmann (1):
      drm/panel: hx83121a: select DRM_DISPLAY_DSC_HELPER

Chen Ni (1):
      drm/panel: himax-hx83121a: Fix incorrect error check for devm_drm_panel_alloc()

Christian Van (1):
      drm/panel: feiyang-fy07024di26a30d: return display-on error

Francesco Lavra (1):
      drm/fb-helper: Fix clipping when damage area spans a single scanline

Icenowy Zheng (2):
      drm/panel: boe-tv101wum-nl6: restore MODE_LPM after sending disable cmds
      drm/panel: himax-hx83102: restore MODE_LPM after sending disable cmds

Karol Wachowski (1):
      accel/ivpu: Disallow re-exporting imported GEM objects

Kory Maincent (TI) (2):
      drm/bridge: tda998x: Use __be32 for audio port OF property pointer
      drm/bridge: tda998x: Return NULL instead of 0 in tda998x_edid_read()

Matthew Brost (1):
      drm/ttm: Fix GPU MM stats during pool shrinking

Maíra Canal (1):
      drm/etnaviv: Fix armed job not being pushed to the DRM scheduler

Myeonghun Pak (2):
      drm/qxl: Fix missing KMS poll cleanup
      drm/bochs: Drop manual put on probe error path

Osama Abdelkader (2):
      drm/sti: remove bridge when sti_hda component_add fails
      drm/exynos: remove bridge when component_add fails

Timur Tabi (1):
      Revert "drm/nouveau/gsp: add support for GA100"

 drivers/accel/ivpu/ivpu_drv.c                       | 21 +++++++++++++++++++++
 drivers/accel/qaic/qaic_ras.c                       |  4 ++--
 drivers/gpu/drm/bridge/tda998x_drv.c                |  4 ++--
 drivers/gpu/drm/drm_fb_helper.c                     |  2 +-
 drivers/gpu/drm/etnaviv/etnaviv_sched.c             | 16 +++++++++-------
 drivers/gpu/drm/exynos/exynos_drm_mic.c             |  8 +++-----
 drivers/gpu/drm/nouveau/nvkm/engine/device/base.c   | 11 +++++++++--
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/ga100.c     |  4 ++++
 drivers/gpu/drm/nouveau/nvkm/subdev/gsp/tu102.c     | 18 +++++-------------
 drivers/gpu/drm/panel/Kconfig                       |  1 +
 drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c      |  2 ++
 .../gpu/drm/panel/panel-feiyang-fy07024di26a30d.c   |  4 +---
 drivers/gpu/drm/panel/panel-himax-hx83102.c         |  2 ++
 drivers/gpu/drm/panel/panel-himax-hx83121a.c        |  4 ++--
 drivers/gpu/drm/qxl/qxl_drv.c                       |  6 ++++--
 drivers/gpu/drm/sti/sti_hda.c                       |  8 ++++----
 drivers/gpu/drm/tiny/bochs.c                        | 10 +++-------
 drivers/gpu/drm/ttm/ttm_pool.c                      | 18 ++++++++++++------
 18 files changed, 87 insertions(+), 56 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstr. 146, 90461 Nürnberg, Germany, www.suse.com
GF: Jochen Jaser, Andrew McDonald, Werner Knoblich, (HRB 36809, AG Nürnberg)
