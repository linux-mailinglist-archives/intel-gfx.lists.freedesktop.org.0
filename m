Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 520462E0E96
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Dec 2020 20:13:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A9D6E16D;
	Tue, 22 Dec 2020 19:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF4C6E16D;
 Tue, 22 Dec 2020 19:13:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id C7147ABA1;
 Tue, 22 Dec 2020 19:13:40 +0000 (UTC)
Date: Tue, 22 Dec 2020 20:13:38 +0100
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <X+JFYlW1SEZa6ShA@linux-uq9g>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dave and Daniel,

here's this week's PR for drm-misc-next-fixes.

Best regards
Thomas

drm-misc-next-fixes-2020-12-22:
Short summary of fixes pull:

 * dma-buf: Include <linux/vmalloc.h> for building on MIPS
 * komeda: Fix order of operation in commit tail; Fix NULL-pointer and
           out-of-bounds access; Cleanups
 * ttm: Fix an unused-function warning
The following changes since commit ee46d16d2e40bebc2aa790fd7b6a056466ff895c:

  drm: mxsfb: Silence -EPROBE_DEFER while waiting for bridge (2020-12-15 11=
:01:10 +0100)

are available in the Git repository at:

  git://anongit.freedesktop.org/drm/drm-misc tags/drm-misc-next-fixes-2020-=
12-22

for you to fetch changes up to be3e477effba636ad25dcd244db264c6cd5c1f36:

  drm/komeda: Fix bit check to import to value of proper type (2020-12-18 1=
6:36:00 +0000)

----------------------------------------------------------------
Short summary of fixes pull:

 * dma-buf: Include <linux/vmalloc.h> for building on MIPS
 * komeda: Fix order of operation in commit tail; Fix NULL-pointer and
           out-of-bounds access; Cleanups
 * ttm: Fix an unused-function warning

----------------------------------------------------------------
Arnd Bergmann (1):
      drm/ttm: fix unused function warning

Carsten Haitzler (3):
      drm/komeda: Remove useless variable assignment
      drm/komeda: Handle NULL pointer access code path in error case
      drm/komeda: Fix bit check to import to value of proper type

Christian K=F6nig (1):
      drm/qxl: don't allocate a dma_address array

James Qian Wang (1):
      drm/komeda: Correct the sequence of hw_done() and flip_done()

John Stultz (1):
      dma-buf: cma_heap: Include linux/vmalloc.h to fix build failures on M=
IPS

 drivers/dma-buf/heaps/cma_heap.c                   |  1 +
 drivers/gpu/drm/arm/display/komeda/komeda_dev.c    |  1 -
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c    |  4 +--
 .../gpu/drm/arm/display/komeda/komeda_pipeline.c   |  3 ++-
 .../drm/arm/display/komeda/komeda_pipeline_state.c |  4 +--
 drivers/gpu/drm/qxl/qxl_ttm.c                      |  2 +-
 drivers/gpu/drm/ttm/ttm_pool.c                     | 29 +++++++++++-------=
----
 7 files changed, 22 insertions(+), 22 deletions(-)

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
