Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6076E1456
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 20:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5635B10EBD8;
	Thu, 13 Apr 2023 18:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2277210EBD6;
 Thu, 13 Apr 2023 18:42:39 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id E42892188E;
 Thu, 13 Apr 2023 18:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1681411354; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=9W8cUGB/vWOEzNwf16BdukGhmNFV1Fxps0rf4s+k33k=;
 b=IJXzPrFiq/8/0IkENzmFiu6BPFs9FG5hToN3yJWNPshAiSKJGKHqDPCwOOD1RxfMGlHXt0
 TBtgGA5h4d6Gc/1zXGEywhP1SSXrhcUKy4IcZe1ha4I4OGMvACJCyF3HOeQDT7A6K2Ej/r
 037E9f98Gr+7yAwYmLei9DUXUzPTIWI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1681411354;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=9W8cUGB/vWOEzNwf16BdukGhmNFV1Fxps0rf4s+k33k=;
 b=b/p0ndmD01KTPfcGA/oRarmkWHxiGcmLsCUH7IYOvpI14f047Qb1pzLEkziLHIJNhmsp1G
 a9R6EjgdSuIY2rCQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 9150A13421;
 Thu, 13 Apr 2023 18:42:34 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id dVlPIhpNOGRlNgAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 13 Apr 2023 18:42:34 +0000
Date: Thu, 13 Apr 2023 20:42:33 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20230413184233.GA8148@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

this is the PR for drm-misc-fixes for this week.

Best regards
Thomas

drm-misc-fixes-2023-04-13:
Short summary of fixes pull:

 * armada: Fix double free
 * fb: Clear FB_ACTIVATE_KD_TEXT in ioctl
 * nouveau: Add missing callbacks
 * scheduler: Fix use-after-free error
The following changes since commit 09a9639e56c01c7a00d6c0ca63f4c7c41abe075d:

  Linux 6.3-rc6 (2023-04-09 11:15:57 -0700)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2023-04-13

for you to fetch changes up to 5603effb8295ada8419408d038a34ca89d658229:

  Merge remote-tracking branch 'drm/drm-fixes' into drm-misc-fixes (2023-04-12 12:01:32 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * armada: Fix double free
 * fb: Clear FB_ACTIVATE_KD_TEXT in ioctl
 * nouveau: Add missing callbacks
 * scheduler: Fix use-after-free error

----------------------------------------------------------------
Asahi Lina (1):
      drm/scheduler: Fix UAF race in drm_sched_entity_push_job()

Christophe JAILLET (1):
      drm/armada: Fix a potential double free in an error handling path

Daniel Vetter (1):
      fbmem: Reject FB_ACTIVATE_KD_TEXT from userspace

Karol Herbst (1):
      drm/nouveau/fb: add missing sysmen flush callbacks

Maarten Lankhorst (1):
      Merge remote-tracking branch 'drm/drm-fixes' into drm-misc-fixes

 drivers/gpu/drm/armada/armada_drv.c            |  1 -
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/gf108.c |  1 +
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk104.c |  1 +
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/gk110.c |  1 +
 drivers/gpu/drm/nouveau/nvkm/subdev/fb/gm107.c |  1 +
 drivers/gpu/drm/scheduler/sched_entity.c       | 11 +++++++++--
 drivers/video/fbdev/core/fbmem.c               |  2 ++
 7 files changed, 15 insertions(+), 3 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
