Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BEB78F8D7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 09:01:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49ED310E72B;
	Fri,  1 Sep 2023 07:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5186C10E72B;
 Fri,  1 Sep 2023 07:01:26 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id ECF342185A;
 Fri,  1 Sep 2023 07:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1693551684; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=eWYQTQYPQFCeELExOFLjfgwK+p4sbVfb0MrjScug2OU=;
 b=2TnJE9LSalLhP3iTpaFyatyPqQPaGAimhgm1V9IctvAawOOJpKszrT1CZNo0/20MSUGkHv
 WR7dHUT0NmF93daEVsHLvSo7BwoSzbonTWkXMDHRVAaDdw5ooTuzWlGslQmQFWxYg09OFF
 5ZCxGZq+7PFFaONpQVAksb+aAGZmqgM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1693551684;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type;
 bh=eWYQTQYPQFCeELExOFLjfgwK+p4sbVfb0MrjScug2OU=;
 b=D+4/M9n9yeseeNAwiFMNJBM+evT3MdXgR5yE+ATlxWuBjOJcUCqAnHyHPy6TSOcI2xTlaC
 HLEyko5pRWK4odBw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A461513582;
 Fri,  1 Sep 2023 07:01:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id wVMjJ0SM8WTycQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Fri, 01 Sep 2023 07:01:24 +0000
Date: Fri, 1 Sep 2023 09:01:23 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20230901070123.GA6987@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [PULL] drm-misc-next-fixes
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

here are two more fixes that have been sitting in drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2023-09-01:
Short summary of fixes pull:

 * ivpu: Replace strncpy
 * nouveau: Fix fence state in nouveau_fence_emit()
The following changes since commit cdf4100eaa1f4107fcf7c95b5eccca96cca6c777:

  drm/gpuva_mgr: remove unused prev pointer in __drm_gpuva_sm_map() (2023-08-24 14:27:14 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2023-09-01

for you to fetch changes up to 978474dc8278f661930e02e08d292a45a45fa01a:

  drm/nouveau: fence: fix undefined fence state after emit (2023-08-31 00:46:23 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * ivpu: Replace strncpy
 * nouveau: Fix fence state in nouveau_fence_emit()

----------------------------------------------------------------
Danilo Krummrich (1):
      drm/nouveau: fence: fix undefined fence state after emit

Justin Stitt (1):
      accel/ivpu: refactor deprecated strncpy

 drivers/accel/ivpu/ivpu_jsm_msg.c       |  3 +--
 drivers/gpu/drm/nouveau/dispnv04/crtc.c |  9 +--------
 drivers/gpu/drm/nouveau/nouveau_bo.c    |  8 +-------
 drivers/gpu/drm/nouveau/nouveau_chan.c  |  6 ++----
 drivers/gpu/drm/nouveau/nouveau_dmem.c  |  9 +++------
 drivers/gpu/drm/nouveau/nouveau_exec.c  | 11 ++++++++---
 drivers/gpu/drm/nouveau/nouveau_fence.c | 32 ++++++++++++++++++++++++++------
 drivers/gpu/drm/nouveau/nouveau_fence.h |  5 +++--
 drivers/gpu/drm/nouveau/nouveau_gem.c   |  5 +----
 9 files changed, 46 insertions(+), 42 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Frankenstrasse 146, 90461 Nuernberg, Germany
GF: Ivo Totev, Andrew Myers, Andrew McDonald, Boudien Moerman
HRB 36809 (AG Nuernberg)
