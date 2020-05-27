Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDAA1E3B2C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 10:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C528979D;
	Wed, 27 May 2020 08:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8F389780;
 Wed, 27 May 2020 08:01:27 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 11D92AB87;
 Wed, 27 May 2020 08:01:28 +0000 (UTC)
Date: Wed, 27 May 2020 10:01:23 +0200
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200527080123.GA8186@linux-uq9g>
MIME-Version: 1.0
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
 Maxime Ripard <mripard@kernel.org>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's the pull request for the current drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2020-05-27:
Short summary of fixes pull (less than what git shortlog provides):

There's a fix for panel brighness on Lenovo X13 Yoga devices and a fix for
-Wformat warnings on architectures where atomic-64 counters are not of
type unsigned long long.
The following changes since commit 152cce0006abf7e17dfb7dc94896b044bda4e588:

  drm/bridge: analogix_dp: Split bind() into probe() and real bind() (2020-04-09 10:29:35 +0200)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2020-05-27

for you to fetch changes up to 6f27e4c287d7bdcad1f24efcaace044617aac2f3:

  drm/vblank: Fix -Wformat compile warnings on some arches (2020-05-22 14:22:00 -0400)

----------------------------------------------------------------
Short summary of fixes pull (less than what git shortlog provides):

There's a fix for panel brighness on Lenovo X13 Yoga devices and a fix for
-Wformat warnings on architectures where atomic-64 counters are not of
type unsigned long long.

----------------------------------------------------------------
Lyude Paul (1):
      drm/vblank: Fix -Wformat compile warnings on some arches

Mark Pearson (1):
      drm/dp: Lenovo X13 Yoga OLED panel brightness fix

 drivers/gpu/drm/drm_dp_helper.c | 1 +
 drivers/gpu/drm/drm_vblank.c    | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
