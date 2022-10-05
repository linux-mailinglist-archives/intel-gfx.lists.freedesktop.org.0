Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 267ED5F57F1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 18:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B242C89B99;
	Wed,  5 Oct 2022 16:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC5910E292
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Oct 2022 16:03:28 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id s10so19234635ljp.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Oct 2022 09:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=XhvUyRQPgmHDhtgvqC4UqfEaCMnjhxy0ylgR8KcFyRU=;
 b=bVdx5iMN8VV6W3XIGEc6lUI61bPiCxLJnF9M149Vy9aEttTd5mMlRoeg5nodte/0uI
 kgTomloC2AbHfjDMRWNSTpPBhksBWy3hwscc57dLFjpaMdptG9jtApjRfWrBeVAuci+N
 zb9RGkx7Fw4kU2Lpi7/l197K7d3xItpggUnA+B9nBdhxBiLAolaTBDmPg5zuMb5ISsGy
 RKMw9LANXV+QGUr4M4sp8NW/7B0Xr4C2v8wLnDKubmlP0OrLX8AUHgluY6FaGHFmQebb
 49SOqzUNu2C+rRCbImfEKeoJgKpaDgGTPZchbWQ06uoZnMinZO9uWVd5EkcNWXNbRHix
 4/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=XhvUyRQPgmHDhtgvqC4UqfEaCMnjhxy0ylgR8KcFyRU=;
 b=RXj/zUmPsWOR3Nl7KKRU7eBs5yLf2RDo+DcFIYG0yjQrAAwBv06wcTdMe7Y3/Pzv/+
 awpSL1AXQ7ozJ92hBROl8XQ/t6l9cC0aUYuMD6e8fhBY1RLqQp+APDoy/nwmQvZ8RkWv
 5K3i40jiQ8PRfbqablqzAIOKsl9WE4edb4Dh+XrJlGAjqkBztrLuUdpCE8iL8Lzivqwt
 xe3n+L04u/sMiNNTTns8sbmPBvAuT3bXEU3qgREmdtfCBk3pTlEd/gvPsHxQI824GjBp
 LAmavw/ATOviFaPKCXHAjG7IqeJZ5ZfnFtswN6ufsyyXghae/AcS1C17rlFZk5ZN2n8q
 yqjw==
X-Gm-Message-State: ACrzQf1kayCRMNH6V9dyD6HhhCNfWI+NRLlGodahk6Sdlt1cSvteCt1S
 /WWIL3qQjrYd2yyIew/ScU5JvzsHRC3/uIWiPwDGKuOV0m4=
X-Google-Smtp-Source: AMsMyM6soZTSLUmT33n1DtWRb8L6UWj8CXDUg62O29WU+fWXgkkZY5XNJ6rfUUejbMIp1/+GhDtnbXsiPlMerGHkCUM=
X-Received: by 2002:a05:651c:19a6:b0:26c:4a66:aa42 with SMTP id
 bx38-20020a05651c19a600b0026c4a66aa42mr131184ljb.231.1664985806833; Wed, 05
 Oct 2022 09:03:26 -0700 (PDT)
MIME-Version: 1.0
References: <20221005154159.18750-1-ville.syrjala@linux.intel.com>
 <20221005154159.18750-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20221005154159.18750-2-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 5 Oct 2022 17:02:58 +0100
Message-ID: <CAM0jSHOZ9qLDneXRcgDnKqH0AN4i8LuY4uE8HRvh-StMYKTSGw@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Name our BARs based on the
 spec
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 5 Oct 2022 at 16:42, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We use all kinds of weird names for our base address registers.
> Take the names from the spec and stick to them to avoid confusing
> everyone.
>
> The only exceptions are IOBAR and LMEMBAR since naming them
> IOBAR_BAR and LMEMBAR_BAR looks too funny, and yet I think
> that adding the _BAR to GTTMMADR & co. (which don't have one
> in the spec name) does make it more clear what they are.
> And IOBAR vs. GTTMMADR_BAR also looks a bit too inconsistent
> for my taste.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_lpe_audio.c    |  4 ++--
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 12 +++++-----
>  drivers/gpu/drm/i915/gvt/cfg_space.c          |  2 +-
>  drivers/gpu/drm/i915/intel_pci_config.h       | 23 +++++++++++++------
>  4 files changed, 25 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu=
/drm/i915/display/intel_lpe_audio.c
> index dca6003ccac8..389ccdc46a1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -101,9 +101,9 @@ lpe_audio_platdev_create(struct drm_i915_private *dev=
_priv)
>         rsc[0].flags    =3D IORESOURCE_IRQ;
>         rsc[0].name     =3D "hdmi-lpe-audio-irq";
>
> -       rsc[1].start    =3D pci_resource_start(pdev, GTTMMADR_BAR) +
> +       rsc[1].start    =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
>                 I915_HDMI_LPE_AUDIO_BASE;
> -       rsc[1].end      =3D pci_resource_start(pdev, GTTMMADR_BAR) +
> +       rsc[1].end      =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
>                 I915_HDMI_LPE_AUDIO_BASE + I915_HDMI_LPE_AUDIO_SIZE - 1;
>         rsc[1].flags    =3D IORESOURCE_MEM;
>         rsc[1].name     =3D "hdmi-lpe-audio-mmio";
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index b31fe0fb013f..668131c25da7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -871,8 +871,8 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, =
u64 size)
>         u32 pte_flags;
>         int ret;
>
> -       GEM_WARN_ON(pci_resource_len(pdev, GTTMMADR_BAR) !=3D gen6_gttmma=
dr_size(i915));
> -       phys_addr =3D pci_resource_start(pdev, GTTMMADR_BAR) + gen6_gttad=
r_offset(i915);
> +       GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=3D gen6_g=
ttmmadr_size(i915));
> +       phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_=
gttadr_offset(i915);
>
>         /*
>          * On BXT+/ICL+ writes larger than 64 bit to the GTT pagetable ra=
nge
> @@ -932,10 +932,10 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>         u16 snb_gmch_ctl;
>
>         if (!HAS_LMEM(i915) && !HAS_BAR2_SMEM_STOLEN(i915)) {
> -               if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
> +               if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
>                         return -ENXIO;
>
> -               ggtt->gmadr =3D pci_resource(pdev, GTT_APERTURE_BAR);
> +               ggtt->gmadr =3D pci_resource(pdev, GEN4_GMADR_BAR);
>                 ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>         }
>
> @@ -1089,10 +1089,10 @@ static int gen6_gmch_probe(struct i915_ggtt *ggtt=
)
>         unsigned int size;
>         u16 snb_gmch_ctl;
>
> -       if (!i915_pci_resource_valid(pdev, GTT_APERTURE_BAR))
> +       if (!i915_pci_resource_valid(pdev, GEN4_GMADR_BAR))
>                 return -ENXIO;
>
> -       ggtt->gmadr =3D pci_resource(pdev, GTT_APERTURE_BAR);
> +       ggtt->gmadr =3D pci_resource(pdev, GEN4_GMADR_BAR);
>         ggtt->mappable_end =3D resource_size(&ggtt->gmadr);
>
>         /*
> diff --git a/drivers/gpu/drm/i915/gvt/cfg_space.c b/drivers/gpu/drm/i915/=
gvt/cfg_space.c
> index eef3bba8a41b..19a663f6504f 100644
> --- a/drivers/gpu/drm/i915/gvt/cfg_space.c
> +++ b/drivers/gpu/drm/i915/gvt/cfg_space.c
> @@ -356,7 +356,7 @@ void intel_vgpu_init_cfg_space(struct intel_vgpu *vgp=
u,
>         vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_GTTMMIO].size =3D
>                 pci_resource_len(pdev, GTTMMADR_BAR);
>         vgpu->cfg_space.bar[INTEL_GVT_PCI_BAR_APERTURE].size =3D
> -               pci_resource_len(pdev, GTT_APERTURE_BAR);
> +               pci_resource_len(pdev, GMADR_BAR);

Hmm, where is that defined? Typo?
