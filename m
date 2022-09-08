Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E3A5B1D41
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 14:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD8F10E9BD;
	Thu,  8 Sep 2022 12:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8084E10E9D5;
 Thu,  8 Sep 2022 12:38:03 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 3CD27227F0;
 Thu,  8 Sep 2022 12:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1662640682; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nZ6EPoj1+R/6M3ceqrHxhqfIWpL/O1EJr+OCSwqEZJk=;
 b=idDkOFLLjvMQuL12hgAP55bhl4AUp4iYxbFMhNf0r3mBCIjjTnfsuwn9xa/ChSkDJdYTm/
 xIRQjz19VHunBNAYjYVXiEgdQPzPRMUB0erbXjSGE6bZ8xsSFlE49Tei06G69csHz5oDua
 6dMP7Iwar3uZFCGjNUYIFT4zIGne6tA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1662640682;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nZ6EPoj1+R/6M3ceqrHxhqfIWpL/O1EJr+OCSwqEZJk=;
 b=NeO3duJ05QwOgT1x6/lOiQayUHd2YEdn/dX+x8W5un2GXLn2NeHrsLhikeH2DPwgI/LO+t
 glwHph+wZbqfAoBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 012EB1322C;
 Thu,  8 Sep 2022 12:38:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id DlpvOiniGWOyJQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 08 Sep 2022 12:38:01 +0000
Date: Thu, 8 Sep 2022 14:38:00 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YxniKN4rK4qPp+J9@linux-uq9g>
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

this is the weekly PR for drm-misc-fixes.

Best regards
Thomas

drm-misc-fixes-2022-09-08:
Short summary of fixes pull:

 * edid: Fix EDID 1.4 range-descriptor parsing
 * panfrost: Fix devfreq OPP
 * ttm: Fix ghost-object bulk moves
The following changes since commit a3f7c10a269d5b77dd5822ade822643ced3057f0:

  dma-buf/dma-resv: check if the new fence is really later (2022-08-25 13:10:30 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-09-08

for you to fetch changes up to d76034a427a2660b080bc155e4fd8f6393eefb48:

  drm/panfrost: devfreq: set opp to the recommended one to configure regulator (2022-09-08 11:03:52 +0100)

----------------------------------------------------------------
Short summary of fixes pull:

 * edid: Fix EDID 1.4 range-descriptor parsing
 * panfrost: Fix devfreq OPP
 * ttm: Fix ghost-object bulk moves

----------------------------------------------------------------
Christian König (1):
      drm/ttm: cleanup the resource of ghost objects after locking them

Clément Péron (1):
      drm/panfrost: devfreq: set opp to the recommended one to configure regulator

Ville Syrjälä (1):
      drm/edid: Handle EDID 1.4 range descriptor h/vfreq offsets

ZhenGuo Yin (1):
      drm/ttm: update bulk move object of ghost BO

 drivers/gpu/drm/drm_debugfs.c               |  4 ++--
 drivers/gpu/drm/drm_edid.c                  | 24 ++++++++++++++++++------
 drivers/gpu/drm/panfrost/panfrost_devfreq.c | 11 +++++++++++
 drivers/gpu/drm/ttm/ttm_bo_util.c           | 13 ++++++++-----
 include/drm/drm_connector.h                 |  4 ++--
 include/drm/drm_edid.h                      |  5 +++++
 6 files changed, 46 insertions(+), 15 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
