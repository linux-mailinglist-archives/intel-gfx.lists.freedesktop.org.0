Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D3258EA91
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 12:42:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81BBFB1318;
	Wed, 10 Aug 2022 10:41:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19429AD5AE;
 Wed, 10 Aug 2022 10:41:06 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 5580F3815E;
 Wed, 10 Aug 2022 10:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1660128064; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fMk2jYEsKDQZ2EDn27lBra6IWzULgLYAr5fxCVpn5dI=;
 b=sH/UFpyD7u2ouD4Rd6td+MNU1csqdYsS5UvO7GE6sD1LdKYl7dytsNApimOqAbTk05Bb9e
 sdtVJ+jBJu6imdk8fbm3IF/yjZrkMbR1TQP9VFi5umq3zoEz8bvHHSWkx/yexMxtD2og6S
 3Jr4lsTA1zwxZyCRi01l1Ooi7R/4EYA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1660128064;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fMk2jYEsKDQZ2EDn27lBra6IWzULgLYAr5fxCVpn5dI=;
 b=WAWxIcuitFFLSDQNGCW179yzHmBJgm+KIveLs/qj/jVKjx64cjRworSAK+d0caHplh/FCF
 eQAQk0sDB8O8mRCA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 16B7713A7E;
 Wed, 10 Aug 2022 10:41:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id wV9+BECL82JwQQAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Wed, 10 Aug 2022 10:41:04 +0000
Date: Wed, 10 Aug 2022 12:41:02 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YvOLPpufsvOJHiNY@linux-uq9g>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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

here's the weekly PR for drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2022-08-10:
Short summary of fixes pull:

 * gem: Annotate WW context in error paths
 * shmem-helper: Add missing vunmap in error paths
The following changes since commit 6f2c8d5f16594a13295d153245e0bb8166db7ac9:

  drm/amdgpu: Fix for drm buddy memory corruption (2022-07-15 15:41:51 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2022-08-10

for you to fetch changes up to 2939deac1fa220bc82b89235f146df1d9b52e876:

  drm/gem: Properly annotate WW context on drm_gem_lock_reservations() error (2022-08-09 18:43:28 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * gem: Annotate WW context in error paths
 * shmem-helper: Add missing vunmap in error paths

----------------------------------------------------------------
Dmitry Osipenko (2):
      drm/shmem-helper: Add missing vunmap on error
      drm/gem: Properly annotate WW context on drm_gem_lock_reservations() error

 drivers/gpu/drm/drm_gem.c              | 4 ++--
 drivers/gpu/drm/drm_gem_shmem_helper.c | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
