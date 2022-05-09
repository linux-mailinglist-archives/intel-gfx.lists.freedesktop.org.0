Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448E051FD0B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 14:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A8110E424;
	Mon,  9 May 2022 12:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FB5B10E424
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 12:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652099941; x=1683635941;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:from:subject:message-id:date;
 bh=MzaW3YZnjy6yh2FmhqgEA++j/zyZxTbQ9Ij7w/jND0Y=;
 b=caZ6l8/CubWJeD582yV/MN9CDmrQe68bcuwdjKZKht/7BAJzyAVnJXqv
 4kzDVXJzNmGxan9MNjJOPP6/CdQBhlS2RNoi9FMYR3YnJd5nlGL0qgdcF
 7SpOL0YJyRtqPgdRKwdP08REXv1sXjG35ZXWr07OHR737DjasS7Hzux/u
 ZaeMzBqzgSdmba3kBITO3lUyXFxptKteX8c3Bh34TqwuX0r1/czdtLi0Q
 6lNTmSvMs75ESovQaNbiLMlA2P42SusiT3SCzveXd3mdI//9v5ATFl6lZ
 x+pkLGIq2RHRVjQUvNdFXFZwd8teMERsAJQxTGyj/b1dOadqb8yiBFp6w Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="267876449"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="267876449"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:39:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; d="scan'208";a="592166243"
Received: from hanwarx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.34.137])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 05:38:59 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220507132850.10272-16-jose.souza@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
 <20220507132850.10272-16-jose.souza@intel.com>
To: José Roberto de Souza <jose.souza@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <165209993727.58716.2402465688742600537@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Mon, 09 May 2022 15:38:57 +0300
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db
 from device info
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

Quoting Jos=C3=A9 Roberto de Souza (2022-05-07 16:28:50)
> No need to have this parameter in intel_device_info struct
> as this feature is supported by Broadwell, Haswell all platforms with
> display version 9 or newer.

This is opposite of the direction we want to move to.

We want to embrace the has_xyz flags, instead of the macro trickery.

> As a side effect of the of removal this flag, it will not be printed
> in dmesg during driver load anymore and developers will have to rely
> on to check the macro and compare with platform being used and IP
> versions of it.

This is not a very good rationale. If the platform has something, but it
becomes disabled in runtime, then we should add an another print after
the runtime sanitization has been done.

Regards, Joonas

>=20
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 3 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 4b1025dbaab2a..4a1edf48d37b9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1306,7 +1306,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>                                           IS_BROADWELL(dev_priv) || \
>                                           IS_HASWELL(dev_priv))
>  #define HAS_DP_MST(dev_priv)            (HAS_DDI(dev_priv))
> -#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.=
has_fpga_dbg)
> +#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (DISPLAY_VER(dev_priv) >=3D 9 |=
| \
> +                                         IS_BROADWELL(dev_priv) || \
> +                                         IS_HASWELL(dev_priv))
>  #define HAS_PSR(dev_priv)               (DISPLAY_VER(dev_priv) >=3D 9)
>  #define HAS_PSR2_SEL_FETCH(dev_priv)    (DISPLAY_VER(dev_priv) >=3D 12)
>  #define HAS_TRANSCODER(dev_priv, trans)         ((INTEL_INFO(dev_priv)->=
display.cpu_transcoder_mask & BIT(trans)) !=3D 0)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 5a42acb162a15..6a5b70b3ea2d7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -523,7 +523,6 @@ static const struct intel_device_info vlv_info =3D {
>         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT=
(VECS0), \
>         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCOD=
ER_B) | \
>                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> -       .display.has_fpga_dbg =3D 1, \
>         HSW_PIPE_OFFSETS
> =20
>  #define HSW_PLATFORM \
> @@ -657,7 +656,6 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCOD=
ER_B) | \
>                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>                 BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
> -       .display.has_fpga_dbg =3D 1, \
>         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
>         .display.has_hdcp =3D 1, \
>         .display.has_dmc =3D 1, \
> @@ -894,7 +892,6 @@ static const struct intel_device_info adl_s_info =3D {
>         .display.has_dmc =3D 1,                                          =
         \
>         .display.has_dsc =3D 1,                                          =
         \
>         .display.fbc_mask =3D BIT(INTEL_FBC_A),                          =
         \
> -       .display.has_fpga_dbg =3D 1,                                     =
         \
>         .display.has_hdcp =3D 1,                                         =
         \
>         .display.has_hotplug =3D 1,                                      =
         \
>         .display.ver =3D 13,                                             =
         \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 7581ef4a68f94..e61a334b611ac 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -157,7 +157,6 @@ enum intel_ppgtt_type {
>         func(has_cdclk_crawl); \
>         func(has_dmc); \
>         func(has_dsc); \
> -       func(has_fpga_dbg); \
>         func(has_gmch); \
>         func(has_hdcp); \
>         func(has_hotplug); \
> --=20
> 2.36.0
>=20
