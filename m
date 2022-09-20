Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0415BE86A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 16:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2816110E6D2;
	Tue, 20 Sep 2022 14:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C3B10E6D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 14:17:00 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id 125so3545288ybt.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 07:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=mqYUTy7s8ydeDp5ffTv+LyK6bjlQmHOYBVaWKaUD6IM=;
 b=DfCw9F8yEqPTF6DDgQgYCLlvsXNVEm/GslhJFolZlBlJW0+QriE1OdNMRrCqrme6FC
 5dMaYVGxe+59eckit3mv3D4LITiwwVEGxNRlNhXBrpaVVmKI7kxV/gBf4cXs697b7dCu
 8MCU8Sv8aCtlawaC+/QQUfIO7ZZOXR6eCmXFO/ncuvg14xgcp0mSecb061l4Afxlkt9Z
 BzjL+os5FY8yFh2XxPh5M7Oodgm+IqNp8bWsJdPCrrN9518MAewO0bXUewoLcs6liQZt
 FbBJEnv5eYEhjvKAZkWsnzYUyCX5rZwHgWqUfEcPzZvMRnHUxWAFKbhwWsAfauNqatXG
 CeaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=mqYUTy7s8ydeDp5ffTv+LyK6bjlQmHOYBVaWKaUD6IM=;
 b=MclLHQ0i+cv/5vNRIjcDmYG2FnU0FWy+1Wb6bGbTN4nhBiHC6OdfWU5zBs04RoEsXk
 6kEoWHLXLbJdH99M0ST2Dgx0rinQwLveN74CE5tPt0KbxvMETuvEvnIvxgOzIuz9OfIu
 q4KLoRHEdJG9MGw8um677uUa1VJAQPSfcOr+0tEZuIEx9xfYKBgc1SczQZ1ySOh8pWBf
 /rCdWDtQsPqr8R2pr18rGyencNbTczRdHgdbTpXSbBJBuJgHJAAfSnMk1YcHVzyBrb95
 RFU/Yflq+KHqCyVui2fvmX3QYOdHS8O5L6Eg4oeHR/UMwrT3qKDcFK5x84XPWJCzoM4F
 xtoQ==
X-Gm-Message-State: ACrzQf0CXZW8OHI3MoUi4Ov3WIfXWaEOT5zUn3fnu38+6h9uuCJCf/AY
 u8EdAOvys2MLXEAkPYVEqtIYmqY5WmXfKTOsISRPmA==
X-Google-Smtp-Source: AMsMyM5RpSmvD8e3124dTg40XtMvNBTEUj3umY5uQd2VhI8a1Dn6ImuEaOiG27KjLiE3viwVbP56uDAE1BId+VUikXs=
X-Received: by 2002:a25:4cb:0:b0:6b0:923:a96 with SMTP id
 194-20020a2504cb000000b006b009230a96mr21001190ybe.475.1663683419568; 
 Tue, 20 Sep 2022 07:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220913192757.37727-1-dmitry.osipenko@collabora.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 20 Sep 2022 19:46:46 +0530
Message-ID: <CAO_48GGxF0x7LKdQ+Az6YbY9uy394croggbPVfhPqQJ+paXAXg@mail.gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v5 00/21] Move all drivers to a common
 dma-buf locking convention
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
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <digetx@gmail.com>,
 kernel@collabora.com, Marek Szyprowski <m.szyprowski@samsung.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Leon Romanovsky <leon@kernel.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Daniel Stone <daniel@fooishbar.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 virtualization@lists.linux-foundation.org, Chia-I Wu <olvaffe@gmail.com>,
 linux-media@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Juergen Gross <jgross@suse.com>,
 Daniel Almeida <daniel.almeida@collabora.com>, amd-gfx@lists.freedesktop.org,
 Tomi Valkeinen <tomba@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Gert Wollny <gert.wollny@collabora.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Qiang Yu <yuq825@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Amol Maheshwari <amahesh@qti.qualcomm.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dmitry,


On Wed, 14 Sept 2022 at 00:58, Dmitry Osipenko
<dmitry.osipenko@collabora.com> wrote:
>
> Hello,
>
> This series moves all drivers to a dynamic dma-buf locking specification.
> From now on all dma-buf importers are made responsible for holding
> dma-buf's reservation lock around all operations performed over dma-bufs
> in accordance to the locking specification. This allows us to utilize
> reservation lock more broadly around kernel without fearing of a potentia=
l
> deadlocks.
Thank you for the excellent work on this series - apart from a minor
nit in patch 15, please feel free to add my:
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>
for the relevant dma-buf patches (1, 2, 15-19, 21).

Best regards,
Sumit.

>
> This patchset passes all i915 selftests. It was also tested using VirtIO,
> Panfrost, Lima, Tegra, udmabuf, AMDGPU and Nouveau drivers. I tested case=
s
> of display+GPU, display+V4L and GPU+V4L dma-buf sharing (where appropriat=
e),
> which covers majority of kernel drivers since rest of the drivers share
> same or similar code paths.
>
> Changelog:
>
> v5: - Added acks and r-bs that were given to v4.
>
>     - Changed i915 preparation patch like was suggested by Michael Ruhl.
>       The scope of reservation locking is smaller now.
>
> v4: - Added dma_buf_mmap() to the "locking convention" documentation,
>       which was missed by accident in v3.
>
>     - Added acks from Christian K=C3=B6nig, Tomasz Figa and Hans Verkuil =
that
>       they gave to couple v3 patches.
>
>     - Dropped the "_unlocked" postfix from function names that don't have
>       the locked variant, as was requested by Christian K=C3=B6nig.
>
>     - Factored out the per-driver preparations into separate patches
>       to ease reviewing of the changes, which is now doable without the
>       global dma-buf functions renaming.
>
>     - Factored out the dynamic locking convention enforcements into separ=
ate
>       patches which add the final dma_resv_assert_held(dmabuf->resv) to t=
he
>       dma-buf API functions.
>
> v3: - Factored out dma_buf_mmap_unlocked() and attachment functions
>       into aseparate patches, like was suggested by Christian K=C3=B6nig.
>
>     - Corrected and factored out dma-buf locking documentation into
>       a separate patch, like was suggested by Christian K=C3=B6nig.
>
>     - Intel driver dropped the reservation locking fews days ago from
>       its BO-release code path, but we need that locking for the imported
>       GEMs because in the end that code path unmaps the imported GEM.
>       So I added back the locking needed by the imported GEMs, updating
>       the "dma-buf attachment locking specification" patch appropriately.
>
>     - Tested Nouveau+Intel dma-buf import/export combo.
>
>     - Tested udmabuf import to i915/Nouveau/AMDGPU.
>
>     - Fixed few places in Etnaviv, Panfrost and Lima drivers that I misse=
d
>       to switch to locked dma-buf vmapping in the drm/gem: Take reservati=
on
>       lock for vmap/vunmap operations" patch. In a result invalidated the
>       Christian's r-b that he gave to v2.
>
>     - Added locked dma-buf vmap/vunmap functions that are needed for fixi=
ng
>       vmappping of Etnaviv, Panfrost and Lima drivers mentioned above.
>       I actually had this change stashed for the drm-shmem shrinker patch=
set,
>       but then realized that it's already needed by the dma-buf patches.
>       Also improved my tests to better cover these code paths.
>
> v2: - Changed locking specification to avoid problems with a cross-driver
>       ww locking, like was suggested by Christian K=C3=B6nig. Now the att=
ach/detach
>       callbacks are invoked without the held lock and exporter should tak=
e the
>       lock.
>
>     - Added "locking convention" documentation that explains which dma-bu=
f
>       functions and callbacks are locked/unlocked for importers and expor=
ters,
>       which was requested by Christian K=C3=B6nig.
>
>     - Added ack from Tomasz Figa to the V4L patches that he gave to v1.
>
> Dmitry Osipenko (21):
>   dma-buf: Add unlocked variant of vmapping functions
>   dma-buf: Add unlocked variant of attachment-mapping functions
>   drm/gem: Take reservation lock for vmap/vunmap operations
>   drm/prime: Prepare to dynamic dma-buf locking specification
>   drm/armada: Prepare to dynamic dma-buf locking specification
>   drm/i915: Prepare to dynamic dma-buf locking specification
>   drm/omapdrm: Prepare to dynamic dma-buf locking specification
>   drm/tegra: Prepare to dynamic dma-buf locking specification
>   drm/etnaviv: Prepare to dynamic dma-buf locking specification
>   RDMA/umem: Prepare to dynamic dma-buf locking specification
>   misc: fastrpc: Prepare to dynamic dma-buf locking specification
>   xen/gntdev: Prepare to dynamic dma-buf locking specification
>   media: videobuf2: Prepare to dynamic dma-buf locking specification
>   media: tegra-vde: Prepare to dynamic dma-buf locking specification
>   dma-buf: Move dma_buf_vmap() to dynamic locking specification
>   dma-buf: Move dma_buf_attach() to dynamic locking specification
>   dma-buf: Move dma_buf_map_attachment() to dynamic locking
>     specification
>   dma-buf: Move dma_buf_mmap() to dynamic locking specification
>   dma-buf: Document dynamic locking convention
>   media: videobuf2: Stop using internal dma-buf lock
>   dma-buf: Remove obsoleted internal lock
>
>  Documentation/driver-api/dma-buf.rst          |   6 +
>  drivers/dma-buf/dma-buf.c                     | 211 +++++++++++++++---
>  drivers/gpu/drm/armada/armada_gem.c           |   8 +-
>  drivers/gpu/drm/drm_client.c                  |   4 +-
>  drivers/gpu/drm/drm_gem.c                     |  24 ++
>  drivers/gpu/drm/drm_gem_dma_helper.c          |   6 +-
>  drivers/gpu/drm/drm_gem_framebuffer_helper.c  |   6 +-
>  drivers/gpu/drm/drm_gem_ttm_helper.c          |   9 +-
>  drivers/gpu/drm/drm_prime.c                   |   6 +-
>  drivers/gpu/drm/etnaviv/etnaviv_gem_prime.c   |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c    |   2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    |  14 ++
>  .../drm/i915/gem/selftests/i915_gem_dmabuf.c  |  16 +-
>  drivers/gpu/drm/lima/lima_sched.c             |   4 +-
>  drivers/gpu/drm/omapdrm/omap_gem_dmabuf.c     |   4 +-
>  drivers/gpu/drm/panfrost/panfrost_dump.c      |   4 +-
>  drivers/gpu/drm/panfrost/panfrost_perfcnt.c   |   6 +-
>  drivers/gpu/drm/qxl/qxl_object.c              |  17 +-
>  drivers/gpu/drm/qxl/qxl_prime.c               |   4 +-
>  drivers/gpu/drm/tegra/gem.c                   |  17 +-
>  drivers/infiniband/core/umem_dmabuf.c         |   7 +-
>  .../common/videobuf2/videobuf2-dma-contig.c   |  22 +-
>  .../media/common/videobuf2/videobuf2-dma-sg.c |  19 +-
>  .../common/videobuf2/videobuf2-vmalloc.c      |  17 +-
>  .../platform/nvidia/tegra-vde/dmabuf-cache.c  |   6 +-
>  drivers/misc/fastrpc.c                        |   6 +-
>  drivers/xen/gntdev-dmabuf.c                   |   8 +-
>  include/drm/drm_gem.h                         |   3 +
>  include/linux/dma-buf.h                       |  17 +-
>  29 files changed, 320 insertions(+), 155 deletions(-)
>
> --
> 2.37.3
>


--
Thanks and regards,

Sumit Semwal (he / him)
Tech Lead - LCG, Vertical Technologies
Linaro.org =E2=94=82 Open source software for ARM SoCs
