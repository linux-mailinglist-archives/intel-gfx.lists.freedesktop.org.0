Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396E298E923
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 06:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1394110E7AA;
	Thu,  3 Oct 2024 04:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=broadcom.com header.i=@broadcom.com header.b="HN5wt+Rr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEE3510E7A2
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 04:29:08 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-e260850140fso529256276.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Oct 2024 21:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1727929747; x=1728534547;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uMqAvtI73yUElKgazek5i/6KUqE13IFx9ZfhFVn5Kww=;
 b=HN5wt+Rr3ZUZIm/ZoZInGCYVghRYBEjgQg3B6EIOBMlOfaqs35gsKnRJmlvgU9D4pl
 sTNLArIphOD847BGVlAcgfvlLswJRtaaC4c3Vw4kHoeXoaVUqug0g3UP0A3SCB8pQx7I
 aezu0135VddPqK5XGWESjP1eyhI4vygiOgcHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727929747; x=1728534547;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uMqAvtI73yUElKgazek5i/6KUqE13IFx9ZfhFVn5Kww=;
 b=E0MJU4KvKhPsDQVLy4CKr8zcdOozrvgPewaOgcbUzHQcGnpStVB3ZLN6EF5n67zeNg
 J9aTHLiBopZ6k5ZErPzGxa/9NiNfWottoFC9Fyj8jV3qfJG+ra+TMoZ0IcMZAi/g7dzg
 bzhd31mKh+oUDLLWMRwj1Nq4lszeB80HlSdYm/VU00aJMzZ9okJylUi2OnSaGlfLX+FX
 bkNqtA6szM8JQfK4f2IfwPu9NHPg65rXCxD0XTlErdqAbrCojSBtVmkJUwJJqFxjSeA5
 z8yTNg76xtmYQn+jHOXwVyZlAb31uYvfGdMLHns4qBwNkpMs810V9dkqxY6Iy7Hhx0NE
 dPWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUcaWOrqK1b3PtOb1IVmbLi7MaJEfTpAPWsFpbcKmZd937r0KHgKeLIKfBcqdjAAje7AQheszWWRLE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyS6svsG4L6BKMCs88ICmapSCAUOlVZKyjj9Fh7grwleeCQLti2
 g+CZg+0GPaDH0KIDHRk/y9AO6keLMYk9Am1zHxCiNPFck7lmDqxiGRGT93j1EpgSWt0N8NuqV4b
 bka1bKLFQ5VPboKfPYxr+vh9qUUBb1sL7pyj8
X-Google-Smtp-Source: AGHT+IEkE7GKVFCsrz+c76bXTSRS56SyArv41+CHRCeXuClGSUQIAVAMQfkLMffxiVJzhYMISpu8rxOnY9saDowepjE=
X-Received: by 2002:a05:6902:2204:b0:e28:6c15:ac51 with SMTP id
 3f1490d57ef6-e286c15ad98mr2486629276.53.1727929747529; Wed, 02 Oct 2024
 21:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20241002122422.287276-1-thomas.hellstrom@linux.intel.com>
 <20241002122422.287276-2-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20241002122422.287276-2-thomas.hellstrom@linux.intel.com>
From: Zack Rusin <zack.rusin@broadcom.com>
Date: Thu, 3 Oct 2024 00:28:56 -0400
Message-ID: <CABQX2QNH32HUvE1R5tMzgiEnMtkRQxGV7L1YP4xV8WO2_kon8g@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/ttm: Change ttm_device_init to use a struct
 instead of multiple bools
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, 
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 nouveau@lists.freedesktop.org, spice-devel@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com, 
 Sui Jingfeng <suijingfeng@loongson.cn>, Matthew Brost <matthew.brost@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 2, 2024 at 8:24=E2=80=AFAM Thomas Hellstr=C3=B6m
<thomas.hellstrom@linux.intel.com> wrote:
>
> The ttm_device_init funcition uses multiple bool arguments. That means
> readability in the caller becomes poor, and all callers need to change if
> yet another bool is added.
>
> Instead use a struct with multiple single-bit flags. This addresses both
> problems. Prefer it over using defines or enums with explicit bit shifts,
> since converting to and from these bit values uses logical operations or
> tests which are implicit with the struct usage, and ofc type-checking.
>
> This is in preparation of adding yet another bool flag parameter to the
> function.
>
> Cc: Christian K=C3=B6nig <christian.koenig@amd.com>
> Cc: amd-gfx@lists.freedesktop.org
> Cc: intel-gfx@lists.freedesktop.org
> Cc: nouveau@lists.freedesktop.org
> Cc: spice-devel@lists.freedesktop.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: Zack Rusin <zack.rusin@broadcom.com>
> Cc: <bcm-kernel-feedback-list@broadcom.com>
> Cc: Sui Jingfeng <suijingfeng@loongson.cn>
> Cc: <intel-xe@lists.freedesktop.org>
> Signed-off-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c       |  6 ++++--
>  drivers/gpu/drm/drm_gem_vram_helper.c         |  7 ++++---
>  drivers/gpu/drm/i915/intel_region_ttm.c       |  3 ++-
>  drivers/gpu/drm/loongson/lsdc_ttm.c           |  5 ++++-
>  drivers/gpu/drm/nouveau/nouveau_ttm.c         |  7 +++++--
>  drivers/gpu/drm/qxl/qxl_ttm.c                 |  2 +-
>  drivers/gpu/drm/radeon/radeon_ttm.c           |  6 ++++--
>  drivers/gpu/drm/ttm/tests/ttm_bo_test.c       | 16 +++++++--------
>  .../gpu/drm/ttm/tests/ttm_bo_validate_test.c  |  3 ++-
>  drivers/gpu/drm/ttm/tests/ttm_device_test.c   | 16 ++++++++-------
>  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c | 20 ++++++++-----------
>  drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h |  6 ++----
>  drivers/gpu/drm/ttm/ttm_device.c              |  7 +++----
>  drivers/gpu/drm/vmwgfx/vmwgfx_drv.c           |  4 ++--
>  drivers/gpu/drm/xe/xe_device.c                |  3 ++-
>  include/drm/ttm/ttm_device.h                  | 12 ++++++++++-
>  16 files changed, 71 insertions(+), 52 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/am=
d/amdgpu/amdgpu_ttm.c
> index 74adb983ab03..e43635ac54fd 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> @@ -1853,8 +1853,10 @@ int amdgpu_ttm_init(struct amdgpu_device *adev)
>         r =3D ttm_device_init(&adev->mman.bdev, &amdgpu_bo_driver, adev->=
dev,
>                                adev_to_drm(adev)->anon_inode->i_mapping,
>                                adev_to_drm(adev)->vma_offset_manager,
> -                              adev->need_swiotlb,
> -                              dma_addressing_limited(adev->dev));
> +                              (struct ttm_device_init_flags){
> +                                      .use_dma_alloc =3D adev->need_swio=
tlb,
> +                                      .use_dma32 =3D dma_addressing_limi=
ted(adev->dev)
> +                              });
>         if (r) {
>                 DRM_ERROR("failed initializing buffer object driver(%d).\=
n", r);
>                 return r;
> diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_=
gem_vram_helper.c
> index 22b1fe9c03b8..7c3165b00378 100644
> --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> @@ -931,9 +931,10 @@ static int drm_vram_mm_init(struct drm_vram_mm *vmm,=
 struct drm_device *dev,
>         vmm->vram_size =3D vram_size;
>
>         ret =3D ttm_device_init(&vmm->bdev, &bo_driver, dev->dev,
> -                                dev->anon_inode->i_mapping,
> -                                dev->vma_offset_manager,
> -                                false, true);
> +                             dev->anon_inode->i_mapping,
> +                             dev->vma_offset_manager,
> +                             (struct ttm_device_init_flags)
> +                             {.use_dma32 =3D true});
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/gpu/drm/i915/intel_region_ttm.c b/drivers/gpu/drm/i9=
15/intel_region_ttm.c
> index 04525d92bec5..db34da63814c 100644
> --- a/drivers/gpu/drm/i915/intel_region_ttm.c
> +++ b/drivers/gpu/drm/i915/intel_region_ttm.c
> @@ -34,7 +34,8 @@ int intel_region_ttm_device_init(struct drm_i915_privat=
e *dev_priv)
>
>         return ttm_device_init(&dev_priv->bdev, i915_ttm_driver(),
>                                drm->dev, drm->anon_inode->i_mapping,
> -                              drm->vma_offset_manager, false, false);
> +                              drm->vma_offset_manager,
> +                              (struct ttm_device_init_flags){});
>  }
>
>  /**
> diff --git a/drivers/gpu/drm/loongson/lsdc_ttm.c b/drivers/gpu/drm/loongs=
on/lsdc_ttm.c
> index 2e42c6970c9f..c684f1636f3f 100644
> --- a/drivers/gpu/drm/loongson/lsdc_ttm.c
> +++ b/drivers/gpu/drm/loongson/lsdc_ttm.c
> @@ -544,7 +544,10 @@ int lsdc_ttm_init(struct lsdc_device *ldev)
>
>         ret =3D ttm_device_init(&ldev->bdev, &lsdc_bo_driver, ddev->dev,
>                               ddev->anon_inode->i_mapping,
> -                             ddev->vma_offset_manager, false, true);
> +                             ddev->vma_offset_manager,
> +                             (struct ttm_device_init_flags){
> +                                     .use_dma32 =3D true
> +                             });
>         if (ret)
>                 return ret;
>
> diff --git a/drivers/gpu/drm/nouveau/nouveau_ttm.c b/drivers/gpu/drm/nouv=
eau/nouveau_ttm.c
> index e244927eb5d4..5f89d2b40425 100644
> --- a/drivers/gpu/drm/nouveau/nouveau_ttm.c
> +++ b/drivers/gpu/drm/nouveau/nouveau_ttm.c
> @@ -302,8 +302,11 @@ nouveau_ttm_init(struct nouveau_drm *drm)
>         ret =3D ttm_device_init(&drm->ttm.bdev, &nouveau_bo_driver, drm->=
dev->dev,
>                                   dev->anon_inode->i_mapping,
>                                   dev->vma_offset_manager,
> -                                 drm_need_swiotlb(drm->client.mmu.dmabit=
s),
> -                                 drm->client.mmu.dmabits <=3D 32);
> +                                 (struct ttm_device_init_flags){
> +                                         .use_dma_alloc =3D
> +                                         drm_need_swiotlb(drm->client.mm=
u.dmabits),
> +                                         .use_dma32 =3D (drm->client.mmu=
.dmabits <=3D 32)
> +                                 });
>         if (ret) {
>                 NV_ERROR(drm, "error initialising bo driver, %d\n", ret);
>                 return ret;
> diff --git a/drivers/gpu/drm/qxl/qxl_ttm.c b/drivers/gpu/drm/qxl/qxl_ttm.=
c
> index 765a144cea14..ced4c60c4650 100644
> --- a/drivers/gpu/drm/qxl/qxl_ttm.c
> +++ b/drivers/gpu/drm/qxl/qxl_ttm.c
> @@ -196,7 +196,7 @@ int qxl_ttm_init(struct qxl_device *qdev)
>         r =3D ttm_device_init(&qdev->mman.bdev, &qxl_bo_driver, NULL,
>                             qdev->ddev.anon_inode->i_mapping,
>                             qdev->ddev.vma_offset_manager,
> -                           false, false);
> +                           (struct ttm_device_init_flags){});
>         if (r) {
>                 DRM_ERROR("failed initializing buffer object driver(%d).\=
n", r);
>                 return r;
> diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon=
/radeon_ttm.c
> index 69d0c12fa419..2915473e4956 100644
> --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> @@ -684,8 +684,10 @@ int radeon_ttm_init(struct radeon_device *rdev)
>         r =3D ttm_device_init(&rdev->mman.bdev, &radeon_bo_driver, rdev->=
dev,
>                                rdev_to_drm(rdev)->anon_inode->i_mapping,
>                                rdev_to_drm(rdev)->vma_offset_manager,
> -                              rdev->need_swiotlb,
> -                              dma_addressing_limited(&rdev->pdev->dev));
> +                              (struct ttm_device_init_flags){
> +                                       .use_dma_alloc =3D rdev->need_swi=
otlb,
> +                                       .use_dma32 =3D dma_addressing_lim=
ited(&rdev->pdev->dev)
> +                               });
>         if (r) {
>                 DRM_ERROR("failed initializing buffer object driver(%d).\=
n", r);
>                 return r;
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c b/drivers/gpu/drm/tt=
m/tests/ttm_bo_test.c
> index f0a7eb62116c..8a2ab90c6e8f 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_test.c
> @@ -251,7 +251,7 @@ static void ttm_bo_unreserve_basic(struct kunit *test=
)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -290,7 +290,7 @@ static void ttm_bo_unreserve_pinned(struct kunit *tes=
t)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -342,7 +342,7 @@ static void ttm_bo_unreserve_bulk(struct kunit *test)
>         resv =3D kunit_kzalloc(test, sizeof(*resv), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -394,7 +394,7 @@ static void ttm_bo_put_basic(struct kunit *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -437,7 +437,7 @@ static void ttm_bo_put_shared_resv(struct kunit *test=
)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -477,7 +477,7 @@ static void ttm_bo_pin_basic(struct kunit *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -512,7 +512,7 @@ static void ttm_bo_pin_unpin_resource(struct kunit *t=
est)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> @@ -563,7 +563,7 @@ static void ttm_bo_multiple_pin_one_unpin(struct kuni=
t *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>         priv->ttm_dev =3D ttm_dev;
>
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c b/drivers/g=
pu/drm/ttm/tests/ttm_bo_validate_test.c
> index 1adf18481ea0..c69b9707e6d2 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> @@ -1044,7 +1044,8 @@ static void ttm_bo_validate_busy_domain_evict(struc=
t kunit *test)
>          */
>         ttm_device_fini(priv->ttm_dev);
>
> -       err =3D ttm_device_kunit_init_bad_evict(test->priv, priv->ttm_dev=
, false, false);
> +       err =3D ttm_device_kunit_init_bad_evict(test->priv, priv->ttm_dev=
,
> +                                             (struct ttm_device_init_fla=
gs){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>
>         ttm_mock_manager_init(priv->ttm_dev, mem_type, MANAGER_SIZE);
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_device_test.c b/drivers/gpu/dr=
m/ttm/tests/ttm_device_test.c
> index 1621903818e5..9415c7b76e3b 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_device_test.c
> @@ -25,7 +25,7 @@ static void ttm_device_init_basic(struct kunit *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>
>         KUNIT_EXPECT_PTR_EQ(test, ttm_dev->funcs, &ttm_dev_funcs);
> @@ -55,7 +55,8 @@ static void ttm_device_init_multiple(struct kunit *test=
)
>         KUNIT_ASSERT_NOT_NULL(test, ttm_devs);
>
>         for (i =3D 0; i < num_dev; i++) {
> -               err =3D ttm_device_kunit_init(priv, &ttm_devs[i], false, =
false);
> +               err =3D ttm_device_kunit_init(priv, &ttm_devs[i],
> +                                           (struct ttm_device_init_flags=
){});
>                 KUNIT_ASSERT_EQ(test, err, 0);
>
>                 KUNIT_EXPECT_PTR_EQ(test, ttm_devs[i].dev_mapping,
> @@ -81,7 +82,7 @@ static void ttm_device_fini_basic(struct kunit *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>
>         man =3D ttm_manager_type(ttm_dev, TTM_PL_SYSTEM);
> @@ -109,7 +110,7 @@ static void ttm_device_init_no_vma_man(struct kunit *=
test)
>         vma_man =3D drm->vma_offset_manager;
>         drm->vma_offset_manager =3D NULL;
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_EXPECT_EQ(test, err, -EINVAL);
>
>         /* Bring the manager back for a graceful cleanup */
> @@ -162,9 +163,10 @@ static void ttm_device_init_pools(struct kunit *test=
)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(priv, ttm_dev,
> -                                   params->use_dma_alloc,
> -                                   params->use_dma32);
> +       err =3D ttm_device_kunit_init(priv, ttm_dev, (struct ttm_device_i=
nit_flags){
> +                       .use_dma_alloc =3D params->use_dma_alloc,
> +                       .use_dma32 =3D params->use_dma32
> +               });
>         KUNIT_ASSERT_EQ(test, err, 0);
>
>         pool =3D &ttm_dev->pool;
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c b/drivers/gpu/=
drm/ttm/tests/ttm_kunit_helpers.c
> index b91c13f46225..24706fabb1c9 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> @@ -114,8 +114,7 @@ static void bad_evict_flags(struct ttm_buffer_object =
*bo,
>
>  static int ttm_device_kunit_init_with_funcs(struct ttm_test_devices *pri=
v,
>                                             struct ttm_device *ttm,
> -                                           bool use_dma_alloc,
> -                                           bool use_dma32,
> +                                           const struct ttm_device_init_=
flags flags,
>                                             struct ttm_device_funcs *func=
s)
>  {
>         struct drm_device *drm =3D priv->drm;
> @@ -124,7 +123,7 @@ static int ttm_device_kunit_init_with_funcs(struct tt=
m_test_devices *priv,
>         err =3D ttm_device_init(ttm, funcs, drm->dev,
>                               drm->anon_inode->i_mapping,
>                               drm->vma_offset_manager,
> -                             use_dma_alloc, use_dma32);
> +                             flags);
>
>         return err;
>  }
> @@ -140,11 +139,9 @@ EXPORT_SYMBOL_GPL(ttm_dev_funcs);
>
>  int ttm_device_kunit_init(struct ttm_test_devices *priv,
>                           struct ttm_device *ttm,
> -                         bool use_dma_alloc,
> -                         bool use_dma32)
> +                         const struct ttm_device_init_flags flags)
>  {
> -       return ttm_device_kunit_init_with_funcs(priv, ttm, use_dma_alloc,
> -                                               use_dma32, &ttm_dev_funcs=
);
> +       return ttm_device_kunit_init_with_funcs(priv, ttm, flags, &ttm_de=
v_funcs);
>  }
>  EXPORT_SYMBOL_GPL(ttm_device_kunit_init);
>
> @@ -159,11 +156,10 @@ EXPORT_SYMBOL_GPL(ttm_dev_funcs_bad_evict);
>
>  int ttm_device_kunit_init_bad_evict(struct ttm_test_devices *priv,
>                                     struct ttm_device *ttm,
> -                                   bool use_dma_alloc,
> -                                   bool use_dma32)
> +                                   const struct ttm_device_init_flags fl=
ags)
>  {
> -       return ttm_device_kunit_init_with_funcs(priv, ttm, use_dma_alloc,
> -                                               use_dma32, &ttm_dev_funcs=
_bad_evict);
> +       return ttm_device_kunit_init_with_funcs(priv, ttm, flags,
> +                                               &ttm_dev_funcs_bad_evict)=
;
>  }
>  EXPORT_SYMBOL_GPL(ttm_device_kunit_init_bad_evict);
>
> @@ -249,7 +245,7 @@ struct ttm_test_devices *ttm_test_devices_all(struct =
kunit *test)
>         ttm_dev =3D kunit_kzalloc(test, sizeof(*ttm_dev), GFP_KERNEL);
>         KUNIT_ASSERT_NOT_NULL(test, ttm_dev);
>
> -       err =3D ttm_device_kunit_init(devs, ttm_dev, false, false);
> +       err =3D ttm_device_kunit_init(devs, ttm_dev, (struct ttm_device_i=
nit_flags){});
>         KUNIT_ASSERT_EQ(test, err, 0);
>
>         devs->ttm_dev =3D ttm_dev;
> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h b/drivers/gpu/=
drm/ttm/tests/ttm_kunit_helpers.h
> index c7da23232ffa..fbf0d3984f25 100644
> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.h
> @@ -28,12 +28,10 @@ struct ttm_test_devices {
>  /* Building blocks for test-specific init functions */
>  int ttm_device_kunit_init(struct ttm_test_devices *priv,
>                           struct ttm_device *ttm,
> -                         bool use_dma_alloc,
> -                         bool use_dma32);
> +                         const struct ttm_device_init_flags flags);
>  int ttm_device_kunit_init_bad_evict(struct ttm_test_devices *priv,
>                                     struct ttm_device *ttm,
> -                                   bool use_dma_alloc,
> -                                   bool use_dma32);
> +                                   const struct ttm_device_init_flags fl=
ags);
>  struct ttm_buffer_object *ttm_bo_kunit_init(struct kunit *test,
>                                             struct ttm_test_devices *devs=
,
>                                             size_t size,
> diff --git a/drivers/gpu/drm/ttm/ttm_device.c b/drivers/gpu/drm/ttm/ttm_d=
evice.c
> index e7cc4954c1bc..0c85d10e5e0b 100644
> --- a/drivers/gpu/drm/ttm/ttm_device.c
> +++ b/drivers/gpu/drm/ttm/ttm_device.c
> @@ -174,8 +174,7 @@ EXPORT_SYMBOL(ttm_device_swapout);
>   * @dev: The core kernel device pointer for DMA mappings and allocations=
.
>   * @mapping: The address space to use for this bo.
>   * @vma_manager: A pointer to a vma manager.
> - * @use_dma_alloc: If coherent DMA allocation API should be used.
> - * @use_dma32: If we should use GFP_DMA32 for device memory allocations.
> + * @flags: Flags governing the device behaviour.
>   *
>   * Initializes a struct ttm_device:
>   * Returns:
> @@ -184,7 +183,7 @@ EXPORT_SYMBOL(ttm_device_swapout);
>  int ttm_device_init(struct ttm_device *bdev, const struct ttm_device_fun=
cs *funcs,
>                     struct device *dev, struct address_space *mapping,
>                     struct drm_vma_offset_manager *vma_manager,
> -                   bool use_dma_alloc, bool use_dma32)
> +                   const struct ttm_device_init_flags flags)
>  {
>         struct ttm_global *glob =3D &ttm_glob;
>         int ret, nid;
> @@ -212,7 +211,7 @@ int ttm_device_init(struct ttm_device *bdev, const st=
ruct ttm_device_funcs *func
>         else
>                 nid =3D NUMA_NO_NODE;
>
> -       ttm_pool_init(&bdev->pool, dev, nid, use_dma_alloc, use_dma32);
> +       ttm_pool_init(&bdev->pool, dev, nid, flags.use_dma_alloc, flags.u=
se_dma32);
>
>         bdev->vma_manager =3D vma_manager;
>         spin_lock_init(&bdev->lru_lock);
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c b/drivers/gpu/drm/vmwgfx=
/vmwgfx_drv.c
> index cf7a89d002e4..7ff7e5d7a9f3 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
> @@ -1049,8 +1049,8 @@ static int vmw_driver_load(struct vmw_private *dev_=
priv, u32 pci_id)
>                               dev_priv->drm.dev,
>                               dev_priv->drm.anon_inode->i_mapping,
>                               dev_priv->drm.vma_offset_manager,
> -                             dev_priv->map_mode =3D=3D vmw_dma_alloc_coh=
erent,
> -                             false);
> +                             (struct ttm_device_init_flags)
> +                             {.use_dma_alloc =3D (dev_priv->map_mode =3D=
=3D vmw_dma_alloc_coherent)});
>         if (unlikely(ret !=3D 0)) {
>                 drm_err(&dev_priv->drm,
>                         "Failed initializing TTM buffer object driver.\n"=
);
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_devic=
e.c
> index 09a7ad830e69..f9317f56ff9c 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -320,7 +320,8 @@ struct xe_device *xe_device_create(struct pci_dev *pd=
ev,
>
>         err =3D ttm_device_init(&xe->ttm, &xe_ttm_funcs, xe->drm.dev,
>                               xe->drm.anon_inode->i_mapping,
> -                             xe->drm.vma_offset_manager, false, false);
> +                             xe->drm.vma_offset_manager,
> +                             (struct ttm_device_init_flags){});
>         if (WARN_ON(err))
>                 goto err;
>
> diff --git a/include/drm/ttm/ttm_device.h b/include/drm/ttm/ttm_device.h
> index c22f30535c84..1534bd946c78 100644
> --- a/include/drm/ttm/ttm_device.h
> +++ b/include/drm/ttm/ttm_device.h
> @@ -287,10 +287,20 @@ static inline void ttm_set_driver_manager(struct tt=
m_device *bdev, int type,
>         bdev->man_drv[type] =3D manager;
>  }
>
> +/**
> + * struct ttm_device_init_flags - Flags for ttm device creation
> + */
> +struct ttm_device_init_flags {
> +       /** @use_dma_alloc: Whether coherent DMA allocation API should be=
 used. */
> +       u32 use_dma_alloc : 1;
> +       /** @use_dma32: If we should use GFP_DMA32 for device memory allo=
cations. */
> +       u32 use_dma32 : 1;
> +};
> +
>  int ttm_device_init(struct ttm_device *bdev, const struct ttm_device_fun=
cs *funcs,
>                     struct device *dev, struct address_space *mapping,
>                     struct drm_vma_offset_manager *vma_manager,
> -                   bool use_dma_alloc, bool use_dma32);
> +                   const struct ttm_device_init_flags flags);
>  void ttm_device_fini(struct ttm_device *bdev);
>  void ttm_device_clear_dma_mappings(struct ttm_device *bdev);
>
> --
> 2.46.0
>

FWIW, I like enums a lot better than boolean's in signatures. It just
makes reading the code a lot easier.
Reviewed-by: Zack Rusin <zack.rusin@broadcom.com>

z
