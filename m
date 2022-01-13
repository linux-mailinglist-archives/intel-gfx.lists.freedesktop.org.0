Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B9548D39B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 09:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0D1F10E713;
	Thu, 13 Jan 2022 08:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A4310E713;
 Thu, 13 Jan 2022 08:29:54 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 2C7371F3A8;
 Thu, 13 Jan 2022 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
 t=1642062593; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=it5g+eNVwHnyAdGM9w/RSUnnpaD6cC1qQg9SBdba3E0=;
 b=Yzv6E0+f9sLnyeE+3iSQ7Ga/pqYBKu/I3dCKMo1/nvcXZJrlONqDHVEBaTJ6K9iFlLqT+p
 y9qxFa3eY32MVvq6dpqo6TNbI/RArsfZFHP23NN4ru6HZq9pFJ3urkFxIK9HQu9Z0j+2w0
 M76Z42EEv6qHz+ZXFZeLp5EV5LKdB10=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
 s=susede2_ed25519; t=1642062593;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=it5g+eNVwHnyAdGM9w/RSUnnpaD6cC1qQg9SBdba3E0=;
 b=cSBEq9p/11/u3FOCuQ+kNF48SQw6m8rxtQb3fdHhqEKh+pMPNT+xx9anXZeI+TNfQJ6aKs
 yI4dm461wJueCLBg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id EA0DE13B83;
 Thu, 13 Jan 2022 08:29:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id QroGOADj32GyTwAAMHmgww
 (envelope-from <tzimmermann@suse.de>); Thu, 13 Jan 2022 08:29:52 +0000
Date: Thu, 13 Jan 2022 09:29:51 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <Yd/i/zj9vEHisSSB@linux-uq9g>
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
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's this week's PR for drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2022-01-13:
 * Fix use of CRTC state's active vs enable in atomic helper
The following changes since commit 5da8b49de472c1da8658466d4f63ef8d9251a819:

  dt-bindings: display: bridge: lvds-codec: Fix duplicate key (2021-12-22 14:02:04 -0400)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2022-01-13

for you to fetch changes up to 69e630016ef4e4a1745310c446f204dc6243e907:

  drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode (2022-01-11 10:37:15 -0500)

----------------------------------------------------------------
 * Fix use of CRTC state's active vs enable in atomic helper

----------------------------------------------------------------
Liu Ying (1):
      drm/atomic: Check new_crtc_state->active to determine if CRTC needs disable in self refresh mode

 drivers/gpu/drm/drm_atomic_helper.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
(HRB 36809, AG Nürnberg)
Geschäftsführer: Felix Imendörffer
