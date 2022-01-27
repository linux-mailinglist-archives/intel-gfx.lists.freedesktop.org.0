Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF4149DD42
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F046910EE3E;
	Thu, 27 Jan 2022 09:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE64D10EE3E;
 Thu, 27 Jan 2022 09:04:34 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 5ED2C210FE;
 Thu, 27 Jan 2022 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1643274273; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=17jNw5wbLFUGHDdSU0R7eFS3w9xO0ejKqMgGWTa3C78=;
 b=obkzRu2sQyCnZSeMqWloo5JRvOKsMumn24z5HovoyBFqYCtizPTMha7y2cGLoJex05Qqlu
 1ovoSp3HJANSZKQb3HmzKQTtxrHylAianfXVGIgsHDJvCN5hH+s8WknE8DeWFEjLuujhUa
 TC5NYn1gNMgVVIlZhkn/dODse28tMfU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1643274273;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=17jNw5wbLFUGHDdSU0R7eFS3w9xO0ejKqMgGWTa3C78=;
 b=V0byQkia6QURd2XllSn2ahRyeD/hEGhXHpv2xfzqTYSs4ELGAw7RxZt825PD7JZeVB0T9d
 0nzQYqajLcND10Bw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 1DEB113CFB;
 Thu, 27 Jan 2022 09:04:33 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id QdZEBiFg8mG+FAAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 27 Jan 2022 09:04:33 +0000
Date: Thu, 27 Jan 2022 10:04:31 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YfJgH9fz+oo7YSXd@linux-uq9g.fritz.box>
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
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's this week's PR for drm-misc-fixes. Besides the bug fixes, it
contains a backmerge from drm/drm-fixes to get the tree to v5.17-rc1.

Best regards
Thomas

drm-misc-fixes-2022-01-27:
 * drm/ast: Revert 1600x800 with 108MHz PCLK
 * drm/atomic: fix CRTC handling during modeset
 * drm/privacy-screen: Honor acpi=off
 * drm/ttm: build fix for ARCH=um
The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-01-27

for you to fetch changes up to 7fde14d705985dd933a3d916d39daa72b1668098:

  drm/privacy-screen: honor acpi=off in detect_thinkpad_privacy_screen (2022-01-26 15:25:50 +0100)

----------------------------------------------------------------
 * drm/ast: Revert 1600x800 with 108MHz PCLK
 * drm/atomic: fix CRTC handling during modeset
 * drm/privacy-screen: Honor acpi=off
 * drm/ttm: build fix for ARCH=um

----------------------------------------------------------------
Dave Airlie (1):
      Revert "drm/ast: Support 1600x900 with 108MHz PCLK"

Manasi Navare (1):
      drm/atomic: Add the crtc to affected crtc only if uapi.enable = true

Thomas Zimmermann (1):
      Merge drm/drm-fixes into drm-misc-fixes

Tong Zhang (1):
      drm/privacy-screen: honor acpi=off in detect_thinkpad_privacy_screen

 drivers/gpu/drm/ast/ast_tables.h         |  2 --
 drivers/gpu/drm/drm_atomic.c             | 12 ++++++++----
 drivers/gpu/drm/drm_privacy_screen_x86.c |  3 +++
 3 files changed, 11 insertions(+), 6 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
