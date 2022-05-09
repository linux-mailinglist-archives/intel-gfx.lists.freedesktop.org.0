Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0720751FAFF
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 13:10:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6BE10E69D;
	Mon,  9 May 2022 11:10:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3060710E69D
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 11:10:08 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id k2so10679439qtp.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 May 2022 04:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YJI36OKAwgB1mK1gHlKjL8l0MCxQtnfQ0oREGaYdnd8=;
 b=f6byV48k/D3GdjKOlPDvR//C54JZPVBKIHTFJqq8FfVfjKeW/3Kwzm8Dm5C43WPWsf
 AHdNG72QEPWiGhb+lRmRUko0b/sPrObXCqGMJB962rTkBODgO2DgO6jKfj+OdnoA9STQ
 l1/r9YKEAL/4qiMcASCnmgh6jMpggPjvszcgkg+VCllygBp+9T67oO2ZrLOqhhOTt72d
 Z1Dxu6EPqzEwR+S9SHt/KKgId53NVve0CXRSQqnjgRWdKIKenblfk4U7W16zowwZ5ZDj
 QSEflaADP9W6OWmKwHhfh20zf0BRB8x7h3EJfKmuffQ6Zk19gZa5IPT4AcSX7+pZ2FGI
 7WeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YJI36OKAwgB1mK1gHlKjL8l0MCxQtnfQ0oREGaYdnd8=;
 b=FINIkpWmu3eWDg3LBfeOc6HvHYAEO8iX2PAw8RQ1dpDKDNVu+9cp7ErQwaKrTyEPKO
 4U/0F7Xb3JM810QFuuIuTYRgCj0p0yljCWwzKrTmG+M1M6Sq4fp71imyH6+PiWv33hBz
 BDWgCbMQp7C2i4JmitX0oC7zXuM7G0/YuNyV618/BNi0OFux/JXByW1PhmjEdm+43d+s
 JjvWZhxTjbsi8ARIFKGX+p5JNMge9Yhz+RQoYYI8yjajGeUSK1YXmvOMCcvzZWIBBvK0
 wZD9/AhOYy5zUHit5QxaVnDexEg9aAr2Rq9klEygNOHrNyj4NRNiZbCmZghShnG8VJQU
 YPsQ==
X-Gm-Message-State: AOAM5330CTpU8PnakFdp4j161b8tQ0GUosRMZUJfTmBJrDOLnW3NdJtT
 0uWXLboAd9W/ArsXxE56oMYe36dL3bLexECiEWQjdfgpBAY=
X-Google-Smtp-Source: ABdhPJxNZSuzhMlHPzXxZh5tMcAnP9dwt44uLOq6BGF1VpqAb2uHZx8YjE6CpXMPD743mQywWyajLxJ4LkmM6jcGkdE=
X-Received: by 2002:a05:622a:110f:b0:2f3:c9f1:ada4 with SMTP id
 e15-20020a05622a110f00b002f3c9f1ada4mr12900013qty.197.1652094607289; Mon, 09
 May 2022 04:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220507132850.10272-1-jose.souza@intel.com>
In-Reply-To: <20220507132850.10272-1-jose.souza@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 9 May 2022 12:09:40 +0100
Message-ID: <CAM0jSHP30-kpt-QMyY6Y7s=z81AnDWyniec6ZRHAF9QFTzUS4g@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: Drop has_llc from device
 info
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, 7 May 2022 at 14:29, Jos=C3=A9 Roberto de Souza <jose.souza@intel.c=
om> wrote:
>
> This feature is supported in graphics version 6 and newer in all
> integrated GPUs not including VLC and CHV, so we can drop this flag
> for a not so complicated macro check.

s/VLC/VLV/ ?

There are also some gen9/10 platforms that only have snooping.

>
> For this flag we were lucky as XE_HP_FEATURES was setting it to true
> while DGFX_FEATURES was setting it to false and xehpsdv and DG2 were
> using those macros in this givin order if it was the other way around,
> some code paths would follow the HAS_LLC path while LLC is not
> available in hardware and was not initialized in software.
>
> As a side effect of the of removal this flag, it will not be printed
> in dmesg during driver load anymore and developers will have to rely
> on to check the macro and compare with platform being used and IP
> versions of it.
>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_llc.c      | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h          | 5 ++++-
>  drivers/gpu/drm/i915/i915_pci.c          | 4 ----
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  4 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/g=
t/intel_llc.c
> index 40e2e28ee6c75..ffcff51ee6e47 100644
> --- a/drivers/gpu/drm/i915/gt/intel_llc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_llc.c
> @@ -52,7 +52,7 @@ static bool get_ia_constants(struct intel_llc *llc,
>         struct drm_i915_private *i915 =3D llc_to_gt(llc)->i915;
>         struct intel_rps *rps =3D &llc_to_gt(llc)->rps;
>
> -       if (!HAS_LLC(i915) || IS_DGFX(i915))
> +       if (!HAS_LLC(i915))
>                 return false;
>
>         if (rps->max_freq <=3D rps->min_freq)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 6dfaf7fce9156..fd5269845e9ad 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1236,7 +1236,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915=
,
>   */
>  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) =3D=3D 7)
>
> -#define HAS_LLC(dev_priv)      (INTEL_INFO(dev_priv)->has_llc)
> +#define HAS_LLC(dev_priv)      (!IS_DGFX(dev_priv) && (GRAPHICS_VER(dev_=
priv) >=3D 8 || \
> +                                                       IS_HASWELL(dev_pr=
iv) || \
> +                                                       IS_IVYBRIDGE(dev_=
priv) || \
> +                                                       IS_SANDYBRIDGE(de=
v_priv)))
>  #define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
>  #define HAS_SNOOP(dev_priv)    (INTEL_INFO(dev_priv)->has_snoop)
>  #define HAS_EDRAM(dev_priv)    ((dev_priv)->edram_size_mb)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 799573a5e5a6f..30a32a5d0e3c9 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -404,7 +404,6 @@ static const struct intel_device_info ilk_m_info =3D =
{
>         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
>         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>         .has_coherent_ggtt =3D true, \
> -       .has_llc =3D 1, \
>         .has_rc6p =3D 1, \
>         .has_rps =3D true, \
>         .dma_mask_size =3D 40, \
> @@ -454,7 +453,6 @@ static const struct intel_device_info snb_m_gt2_info =
=3D {
>         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
>         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>         .has_coherent_ggtt =3D true, \
> -       .has_llc =3D 1, \
>         .has_rc6p =3D 1, \
>         .has_rps =3D true, \
>         .dma_mask_size =3D 40, \
> @@ -878,7 +876,6 @@ static const struct intel_device_info rkl_info =3D {
>
>  #define DGFX_FEATURES \
>         .memory_regions =3D REGION_SMEM | REGION_LMEM | REGION_STOLEN_LME=
M, \
> -       .has_llc =3D 0, \
>         .has_pxp =3D 0, \
>         .has_snoop =3D 1, \
>         .is_dgfx =3D 1, \
> @@ -985,7 +982,6 @@ static const struct intel_device_info adl_p_info =3D =
{
>         .has_64bit_reloc =3D 1, \
>         .has_flat_ccs =3D 1, \
>         .has_global_mocs =3D 1, \
> -       .has_llc =3D 1, \
>         .has_logical_ring_contexts =3D 1, \
>         .has_mslices =3D 1, \
>         .has_rps =3D 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index a2e53b8683285..e8d53c7a1bd83 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -149,7 +149,6 @@ enum intel_ppgtt_type {
>         func(has_heci_gscfi); \
>         func(has_guc_deprivilege); \
>         func(has_l3_dpf); \
> -       func(has_llc); \
>         func(has_logical_ring_contexts); \
>         func(has_mslices); \
>         func(has_pooled_eu); \
> --
> 2.36.0
>
