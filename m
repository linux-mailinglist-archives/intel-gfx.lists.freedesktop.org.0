Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40A23D22EC
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 13:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE16B6F38F;
	Thu, 22 Jul 2021 11:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232826F389;
 Thu, 22 Jul 2021 11:50:46 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 913F71FD47;
 Thu, 22 Jul 2021 11:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1626954644; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4zXoT3ylB6VKxXeCNbbNcso1YijxYQ+dEHYi0mE1dbo=;
 b=g+wLLtva6y7odNEWxcEUMgEmaxOvYbA2US0h2eDsD1oEFiJ5JdQ8Y+dbg+EAeA6gS0N6Ju
 E1zl0KBxjXZaeF7lvXHUsP+8yj+c9OK0/96v1x5y4qPdXUC+7wqsJjH+Qba4tVXBnlRmFc
 ju7bNW0UoX8P0VjFByWuLkHNtoPBcAo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1626954644;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=4zXoT3ylB6VKxXeCNbbNcso1YijxYQ+dEHYi0mE1dbo=;
 b=Y17V0+TBtq+bdK6vsRdS4wII9+uyJBMawuGTesgq3x9WOT9vavSMs+ZWpoqUjJlz3402ks
 iS95BN8FNYk+93Aw==
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id 5318A13C20;
 Thu, 22 Jul 2021 11:50:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap1.suse-dmz.suse.de with ESMTPSA id FhkNE5Rb+WBrWQAAGKfGzw
 (envelope-from <tzimmermann@suse.de>); Thu, 22 Jul 2021 11:50:44 +0000
Date: Thu, 22 Jul 2021 13:50:42 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YPlbkmH6S4VAHP9j@linux-uq9g.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-fixes
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
Cc: dim-tools@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's the PR for drm-misc-fixes. There's a UAPI change where -ENOTTY is
now being returned for non-DRM ioctls.

Best regards
Thomas

drm-misc-fixes-2021-07-22:
Short summary of fixes pull:

 * Return -ENOTTY for non-DRM ioctls
 * amdgpu: Fix COW checks
 * nouveau: init BO GME fields
 * panel: Avoid double free
 * ttm: Fix refcounting in ttm_global_init(); NULL checks
 * vc4: Fix interrupt handling
The following changes since commit 9e5c772954406829e928dbe59891d08938ead04b:

  drm/ttm: add a check against null pointer dereference (2021-07-14 17:16:1=
6 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2021-07-22

for you to fetch changes up to 7bbcb919e32d776ca8ddce08abb391ab92eef6a9:

  drm/panel: raspberrypi-touchscreen: Prevent double-free (2021-07-22 11:37=
:03 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * Return -ENOTTY for non-DRM ioctls
 * amdgpu: Fix COW checks
 * nouveau: init BO GME fields
 * panel: Avoid double free
 * ttm: Fix refcounting in ttm_global_init(); NULL checks
 * vc4: Fix interrupt handling

----------------------------------------------------------------
Charles Baylis (1):
      drm: Return -ENOTTY for non-drm ioctls

Christian K=F6nig (1):
      drm/nouveau: init the base GEM fields for internal BOs

Felix Kuehling (1):
      drm/amdgpu: workaround failed COW checks for Thunk VMAs

Jason Ekstrand (1):
      drm/ttm: Force re-init if ttm_global_init() fails

Maxime Ripard (2):
      drm/vc4: hdmi: Drop devm interrupt handler for CEC interrupts
      drm/panel: raspberrypi-touchscreen: Prevent double-free

Pavel Skripkin (1):
      drm/ttm: add missing NULL checks

 drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c            |  9 ++++
 drivers/gpu/drm/drm_ioctl.c                        |  3 ++
 drivers/gpu/drm/nouveau/nouveau_bo.c               |  6 +++
 .../gpu/drm/panel/panel-raspberrypi-touchscreen.c  |  1 -
 drivers/gpu/drm/ttm/ttm_bo.c                       |  3 ++
 drivers/gpu/drm/ttm/ttm_bo_util.c                  |  3 ++
 drivers/gpu/drm/ttm/ttm_device.c                   |  2 +
 drivers/gpu/drm/vc4/vc4_hdmi.c                     | 49 +++++++++++++++---=
----
 include/drm/drm_ioctl.h                            |  1 +
 9 files changed, 60 insertions(+), 17 deletions(-)

--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
(HRB 36809, AG N=FCrnberg)
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
