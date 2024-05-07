Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3118BE18F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 14:04:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E0D10F978;
	Tue,  7 May 2024 12:04:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=suse.de header.i=@suse.de header.b="0lwnL+AI";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="EJnCZukJ";
	dkim=pass (1024-bit key) header.d=suse.de header.i=@suse.de header.b="doFlmKtr";
	dkim=permerror (0-bit key) header.d=suse.de header.i=@suse.de header.b="Zm2wS/c5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E1610F572;
 Tue,  7 May 2024 12:04:29 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 6C6C82094E;
 Tue,  7 May 2024 12:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715083467; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=m7N8+ycSGh+WsISx3NYRvY+kK7uy1rVJQgQxE9Y2Reo=;
 b=0lwnL+AIJ6P6F6vmREOB0jDiyFPeivwdO6BS+Py506gDHdM2xuhyijLtmL/7ETu74bKz0T
 FIw6rH6PPO0dC7Nss3EMSqkURPodkFE5W4NsVj8XI2jFUdwComEdRd76GPIb/tOYCjAt8b
 erw2brtZqZaLnXDqrrvQaBNM/pWvGmc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715083467;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=m7N8+ycSGh+WsISx3NYRvY+kK7uy1rVJQgQxE9Y2Reo=;
 b=EJnCZukJPRXKcVUI/sfpFWRad6GX4NdO6afh2Fk2gD9pM0Vc+B6qyzfwWEb297TvdpI+Ia
 VgHEipWwAx3HZLCQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.de header.s=susede2_rsa header.b=doFlmKtr;
 dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b="Zm2wS/c5"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1715083466; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=m7N8+ycSGh+WsISx3NYRvY+kK7uy1rVJQgQxE9Y2Reo=;
 b=doFlmKtrdQUfOmNWfftqivYqv2fz6AR3P+pIwzTgm3BfJmB5BS2+juz/X8tO/ybbg149Go
 5GxdsKGJOprFbO3D7I2DowN7Ny84WVyAc+Q6M/Tgo30eSbtcgpwk0jpYu4OvmMBF3eSQYK
 Da/eut+4Ud6IKa/mJ5+eJ3qBUdJAuIU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1715083466;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version: content-transfer-encoding:content-transfer-encoding;
 bh=m7N8+ycSGh+WsISx3NYRvY+kK7uy1rVJQgQxE9Y2Reo=;
 b=Zm2wS/c5Ael5BLgGJCfJLlYtMbV0lrEUxVFT2M89iR/3zuSPj7yqsBaXbUI4tQ7TQju2pD
 cuVMWSAXsinTLJAg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A2D8B13A2D;
 Tue,  7 May 2024 12:04:25 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id NBNbJskYOmZDCgAAD6G6ig
 (envelope-from <tzimmermann@suse.de>); Tue, 07 May 2024 12:04:25 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: javierm@redhat.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, linux@armlinux.org.uk, krzk@kernel.org,
 alim.akhtar@samsung.com, patrik.r.jakobsson@gmail.com,
 jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, robdclark@gmail.com,
 quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
 marijn.suijten@somainline.org, tomi.valkeinen@ideasonboard.com,
 alexander.deucher@amd.com, christian.koenig@amd.com, Xinhui.Pan@amd.com,
 thierry.reding@gmail.com, mperttunen@nvidia.com, jonathanh@nvidia.com
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 00/11] drm: Provide common fbdev client helpers
Date: Tue,  7 May 2024 13:58:21 +0200
Message-ID: <20240507120422.25492-1-tzimmermann@suse.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Level: 
X-Spamd-Result: default: False [-2.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; MID_CONTAINS_FROM(1.00)[];
 DWL_DNSWL_LOW(-1.00)[suse.de:dkim];
 NEURAL_HAM_LONG(-1.00)[-1.000]; R_MISSING_CHARSET(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[31];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_TO(0.00)[redhat.com,ffwll.ch,linux.intel.com,kernel.org,samsung.com,armlinux.org.uk,gmail.com,intel.com,ursulin.net,quicinc.com,linaro.org,poorly.run,somainline.org,ideasonboard.com,amd.com,nvidia.com];
 ARC_NA(0.00)[];
 DKIM_SIGNED(0.00)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
 FUZZY_BLOCKED(0.00)[rspamd.com]; RCVD_TLS_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.de:+];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 RCVD_COUNT_TWO(0.00)[2]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.de:dkim,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
 TAGGED_RCPT(0.00)[];
 RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
 R_RATELIMIT(0.00)[to_ip_from(RL346nweebskz488kew7dz74ge)];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 6C6C82094E
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spam-Flag: NO
X-Spam-Score: -2.51
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

All fbdev emulation has finally been converted to use struct
drm_client. Put the common client code into shared helpers.

There are three callbacks in struct drm_client_funcs, unregister,
restore and hotplug, which have similar implementations among the
various drivers. This can all be shared. i915 is slightly different,
but can still use some of the helper code.

Fbdev support for VGA switcheroo and non-atomic mode setting is now
entirely implemented in the fbdev helpers.

Thomas Zimmermann (11):
  drm/fb-helper: Add helpers for struct drm_client_funcs
  drm/fbdev-dma: Use fbdev client helpers
  drm/fbdev-shmem: Use fbdev client helpers
  drm/fbdev-ttm: Use fbdev client helpers
  drm/armada: Use fbdev client helpers
  drm/exynos: Use fbdev client helpers
  drm/gma500: Use fbdev client helpers
  drm/i915: Use drm_fbdev_helper_client_unregister()
  drm/msm: Use fbdev client helpers
  drm/omapdrm: Use fbdev client helpers
  drm/tegra: Use fbdev client helpers

 drivers/gpu/drm/armada/armada_fbdev.c      |  58 +-----------
 drivers/gpu/drm/drm_fb_helper.c            | 103 +++++++++++++++++++++
 drivers/gpu/drm/drm_fbdev_dma.c            |  56 +----------
 drivers/gpu/drm/drm_fbdev_shmem.c          |  56 +----------
 drivers/gpu/drm/drm_fbdev_ttm.c            |  58 +-----------
 drivers/gpu/drm/exynos/exynos_drm_fbdev.c  |  58 +-----------
 drivers/gpu/drm/gma500/fbdev.c             |  58 +-----------
 drivers/gpu/drm/i915/display/intel_fbdev.c |  21 +----
 drivers/gpu/drm/msm/msm_fbdev.c            |  58 +-----------
 drivers/gpu/drm/omapdrm/omap_fbdev.c       |  55 +----------
 drivers/gpu/drm/radeon/radeon_fbdev.c      |  66 +------------
 drivers/gpu/drm/tegra/fbdev.c              |  58 +-----------
 include/drm/drm_fb_helper.h                |  19 ++++
 13 files changed, 154 insertions(+), 570 deletions(-)


base-commit: 980de4c8f9c4fc65bd51d355372e06dc576c3ea7
-- 
2.44.0

