Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73E33C6C24
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 10:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 717FF6E055;
	Tue, 13 Jul 2021 08:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7726E055;
 Tue, 13 Jul 2021 08:44:09 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id BE0C420073;
 Tue, 13 Jul 2021 08:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1626165847; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1exm4l6U2kJHiZVh226rGL/jTQ7ULcjDyKBV5rewpTw=;
 b=kBH5sd45CoIRlpKQ0w5gbKftOyiX200tvgnR7bLTrnXhpyD8cz8MFYOGtgBFR4XRYI3dnF
 0+anIoDnslM17uEKr+uzkxcuPScq0VKaGBm10H/jZqf9aMsOo9VCcvdW/gxA/YCrGwC9nc
 V6wsJvA+qJNt7UXn6rbnBUpV0dLf6cg=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1626165847;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1exm4l6U2kJHiZVh226rGL/jTQ7ULcjDyKBV5rewpTw=;
 b=2YY4iGX6wJxDP+HK6yjBYgpDxyz6nrnRvmz125t50aM1lzB94lIHC0rHMrBy8kzYmpQ2Hh
 Ksy8xumY5EMw2mAw==
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id 72D6813959;
 Tue, 13 Jul 2021 08:44:07 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap1.suse-dmz.suse.de with ESMTPSA id NGdRGldS7WCaDgAAGKfGzw
 (envelope-from <tzimmermann@suse.de>); Tue, 13 Jul 2021 08:44:07 +0000
Date: Tue, 13 Jul 2021 10:44:05 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YO07pEfweKVO+7y0@linux-uq9g>
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

these two fixes in drm-misc-fixes got lost during last cycle. Sending them
now.

Best regards
Thomas

drm-misc-fixes-2021-07-13:
Short summary of fixes pull:

 * dma-buf: Fix fence leak in sync_file_merge() error code
 * drm/panel: nt35510: Don't fail on DSI reads
The following changes since commit d330099115597bbc238d6758a4930e72b49ea9ba:

  drm/nouveau: fix dma_address check for CPU/GPU sync (2021-06-24 15:40:44 =
+0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2021-07-13

for you to fetch changes up to ffe000217c5068c5da07ccb1c0f8cce7ad767435:

  dma-buf/sync_file: Don't leak fences on merge failure (2021-07-12 13:34:4=
9 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * dma-buf: Fix fence leak in sync_file_merge() error code
 * drm/panel: nt35510: Don't fail on DSI reads

----------------------------------------------------------------
Jason Ekstrand (1):
      dma-buf/sync_file: Don't leak fences on merge failure

Linus Walleij (1):
      drm/panel: nt35510: Do not fail if DSI read fails

 drivers/dma-buf/sync_file.c                   | 13 +++++++------
 drivers/gpu/drm/panel/panel-novatek-nt35510.c |  4 +---
 2 files changed, 8 insertions(+), 9 deletions(-)

--
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=FCrnberg, Germany
(HRB 36809, AG N=FCrnberg)
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer

-- =

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
