Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 253862F3130
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 14:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6C26E21A;
	Tue, 12 Jan 2021 13:21:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53DD06E215;
 Tue, 12 Jan 2021 13:21:36 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id D7723ACB0;
 Tue, 12 Jan 2021 13:21:34 +0000 (UTC)
Date: Tue, 12 Jan 2021 14:21:32 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <X/2iXO4ofFSZ39/v@linux-uq9g>
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

here's this week's PR for drm-misc-fixes.

Best regards
Thomas

drm-misc-fixes-2021-01-12:
 * dma-buf: Fix a memory leak in CMAV heap
 * drm: Fix format check for legacy pageflips
 * ttm: Pass correct address to dma_mapping_error(); Use mutex in pool
   shrinker
The following changes since commit a73858ef4d5e1d425e171f0f6a52864176a6a979:

  drm/ttm: unexport ttm_pool_init/fini (2021-01-07 14:25:43 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-fixes-2021-01-12

for you to fetch changes up to bb52cb0dec8d2fecdb22843a805131478a180728:

  drm/ttm: make the pool shrinker lock a mutex (2021-01-12 14:02:08 +0100)

----------------------------------------------------------------
Short summary of fixes pull:

 * dma-buf: Fix a memory leak in CMAV heap
 * drm: Fix format check for legacy pageflips
 * ttm: Pass correct address to dma_mapping_error(); Use mutex in pool
   shrinker

----------------------------------------------------------------
Bas Nieuwenhuizen (1):
      drm: Check actual format for legacy pageflip.

Christian K=F6nig (1):
      drm/ttm: make the pool shrinker lock a mutex

Jeremy Cline (1):
      drm/ttm: Fix address passed to dma_mapping_error() in ttm_pool_map()

John Stultz (1):
      dma-buf: cma_heap: Fix memory leak in CMA heap

 drivers/dma-buf/heaps/cma_heap.c |  3 +++
 drivers/gpu/drm/drm_plane.c      |  9 ++++++++-
 drivers/gpu/drm/ttm/ttm_pool.c   | 22 +++++++++++-----------
 3 files changed, 22 insertions(+), 12 deletions(-)

--
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
