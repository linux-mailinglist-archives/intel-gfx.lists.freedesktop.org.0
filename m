Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F44E4D5171
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 20:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D35010ECF7;
	Thu, 10 Mar 2022 19:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A114910ECEF;
 Thu, 10 Mar 2022 19:35:10 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 37EF3212B7;
 Thu, 10 Mar 2022 19:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1646940909; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+nwP5XSM20uLQdAaU7RHlsXb87cQNUyLI84W5n7CTxY=;
 b=jsBt9GnZhmiG+q5zw/Q6v0TpQUAi0doHYdxWGnGPBbbAFBSnMwjeK+rgeJO9rULI8uDnZy
 e5xjRUMbf0B34+9K0VLDmetzgXCGyD3A5x12qx0fRVLeguyTpHJylBIOeUYeTjYMbCN8d9
 n+qnhUTKW99yfgk7iDuNSFgdqBkOTTs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1646940909;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=+nwP5XSM20uLQdAaU7RHlsXb87cQNUyLI84W5n7CTxY=;
 b=VemL9i8Tr1SM/9iO/rvxs0sUN00JeclXpuHU8Fpxf11KmDu0F/PEFVi0XP3CSkDhB2tTCI
 LTmH1bzUWHrofUBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E9C7A13A66;
 Thu, 10 Mar 2022 19:35:08 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id wmPzN+xSKmIXXwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 10 Mar 2022 19:35:08 +0000
Date: Thu, 10 Mar 2022 20:35:07 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YipS65Iuu7RMMlAa@linux-uq9g>
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

here's the PR for drm-misc-fixes for this week.

Best regards
Thomas

drm-misc-fixes-2022-03-10:
 * drm/sun4i: Fix P010 and P210 format numbers
The following changes since commit 62929726ef0ec72cbbe9440c5d125d4278b99894:

  drm/vrr: Set VRR capable prop only if it is attached to connector (2022-03-01 11:37:21 -0800)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2022-03-10

for you to fetch changes up to 9470c29faa91c804aa04de4c10634bf02462bfa5:

  drm/sun4i: mixer: Fix P010 and P210 format numbers (2022-03-08 11:54:50 +0100)

----------------------------------------------------------------
 * drm/sun4i: Fix P010 and P210 format numbers

----------------------------------------------------------------
Jernej Skrabec (1):
      drm/sun4i: mixer: Fix P010 and P210 format numbers

 drivers/gpu/drm/sun4i/sun8i_mixer.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
