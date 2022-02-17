Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7D84B9E71
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 12:16:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A62F10E846;
	Thu, 17 Feb 2022 11:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802FE10E70F;
 Thu, 17 Feb 2022 11:16:55 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 25CC01F383;
 Thu, 17 Feb 2022 11:16:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1645096614; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IdCkGEe5ZqGrkp2ZHYJA6ao+ejPpzlXkrH9wuHzh2p4=;
 b=vDqgHlBGTXedmhUOyHzh+BbXnst0fhqujuG9egy0NMt0vhYjdHLyButfqIZKPCXUJ/5+Bo
 QbJq7o4McPpAbAs3soXH32x2Ni4z2NYSqet57arc/KXAUO1BF4XJ9WQ4cD6ORjQH3bp/1a
 zkRBzukDpSyKdG1vGS9amCdjoctBBHc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1645096614;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=IdCkGEe5ZqGrkp2ZHYJA6ao+ejPpzlXkrH9wuHzh2p4=;
 b=CzSb6+aan2lgfKUJhTqytHO2xY6ACr/IxsX0+ALmhNY6qGPWVFCdAMk6IytMnkJ2OR43Qj
 RTlw5ZN56ComiyDA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DC18E13BBF;
 Thu, 17 Feb 2022 11:16:53 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id OMeNNKUuDmJPVwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 17 Feb 2022 11:16:53 +0000
Date: Thu, 17 Feb 2022 12:16:52 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Yg4mzQALMX69UmA3@linux-uq9g>
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

here's drm-misc-fixes for this week.

Best regards
Thomas

drm-misc-fixes-2022-02-17:
 * drm/cma-helper: Set VM_DONTEXPAND
 * drm/atomic: Fix error handling in drm_atomic_set_mode_for_crtc()
The following changes since commit 9da1e9ab82c92d0e89fe44cad2cd7c2d18d64070:

  drm/rockchip: vop: Correct RK3399 VOP register fields (2022-02-08 18:10:36 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-02-17

for you to fetch changes up to 439cf34c8e0a8a33d8c15a31be1b7423426bc765:

  drm/atomic: Don't pollute crtc_state->mode_blob with error pointers (2022-02-16 12:32:07 +0200)

----------------------------------------------------------------
 * drm/cma-helper: Set VM_DONTEXPAND
 * drm/atomic: Fix error handling in drm_atomic_set_mode_for_crtc()

----------------------------------------------------------------
Robin Murphy (1):
      drm/cma-helper: Set VM_DONTEXPAND for mmap

Ville Syrjälä (1):
      drm/atomic: Don't pollute crtc_state->mode_blob with error pointers

 drivers/gpu/drm/drm_atomic_uapi.c    | 14 ++++++++------
 drivers/gpu/drm/drm_gem_cma_helper.c |  1 +
 2 files changed, 9 insertions(+), 6 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
