Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF1B742509
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 13:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96A210E164;
	Thu, 29 Jun 2023 11:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B31C210E156;
 Thu, 29 Jun 2023 11:38:19 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id D2EE71F8C2;
 Thu, 29 Jun 2023 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1688038695; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1gbWZyTdA6MKn6rkpQxBAfq32MNcc6SRve+UKkcnXTs=;
 b=KwXakjw6HrM/PJAEOH4GZ6fykn2qXtJVoY1dP/bnohTaYOVz8JVMzpqBR+9Dfi2Q0hZ+rx
 xFjPRjRxjx1YAbTlzj7Q3yp8MVpGDKG136mVmTBSoVlgXNBf3A5gdWq13za/e9IxYSkD4M
 d71hKebsuJEhr7smGo5r0sV04mUXPUU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1688038695;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=1gbWZyTdA6MKn6rkpQxBAfq32MNcc6SRve+UKkcnXTs=;
 b=LEJENkEJ/Twp4JPTM9trKtLKgKb3HYS2Z1r0wfoL/BMZml9fGSGjkVwzFuEK6HwTkl6Yec
 EzHaopqJa/FdvVCQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 93CE813905;
 Thu, 29 Jun 2023 11:38:15 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id KzIaIydtnWTOPwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 29 Jun 2023 11:38:15 +0000
Date: Thu, 29 Jun 2023 13:38:14 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20230629113814.GA10448@linux-uq9g>
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

only one trivial bugfix this week.

Best regards
Thomas

drm-misc-next-fixes-2023-06-29:
Short summary of fixes pull:

 * fbdev: Fix module infos on sparc
The following changes since commit cf683e8870bd4be0fd6b98639286700a35088660:

  fbdev: Use /* */ comment in initializer macro (2023-06-15 10:45:17 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2023-06-29

for you to fetch changes up to 861c249cd782cb9f2d5a881bbb32e8da7f0c1192:

  arch/sparc: Add module license and description for fbdev helpers (2023-06-29 13:30:02 +0200)

----------------------------------------------------------------
Short summary of fixes pull:

 * fbdev: Fix module infos on sparc

----------------------------------------------------------------
Thomas Zimmermann (1):
      arch/sparc: Add module license and description for fbdev helpers

 arch/sparc/video/fbdev.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
