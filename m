Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A48023A486A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 20:06:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B34D6E081;
	Fri, 11 Jun 2021 18:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ECF96E081
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 18:06:11 +0000 (UTC)
IronPort-SDR: m2RbugAalnSG1cN3gj9l9GqMyk1ANYP4pN5O5smQxpM79KLwONEnPsGK8CXNrlyG2L0zv+wAyO
 bm9u/m3Y5t3Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="185270627"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="185270627"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 11:06:10 -0700
IronPort-SDR: FqPNrg+RSiiov8/VG9YeJmsaQm303Psw+Cwvc/KRgyC2SZbGWvBA6bOUrZmuhMGhUbaf4fEny/
 FNeqME5HzpSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="483351045"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 11 Jun 2021 11:06:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Jun 2021 21:06:07 +0300
Date: Fri, 11 Jun 2021 21:06:07 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Message-ID: <YMOmDyjjhbiIIuZ5@intel.com>
References: <20210611143409.827727-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210611143409.827727-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: use ffs for minconfig
 slice/subslice
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 11, 2021 at 08:04:09PM +0530, Tejas Upadhyay wrote:
> w/a on gen11 platforms not working as expected and causing
> more harm on the RC6 flow. Because of subslice steering
> disturbance w/a read is failing. By using ffs we can default
> steering of slice/sublice to minconfig hence w/a will pass
> and any warns will go away.
> =

> Fixes: fb899dd8ea9c ("drm/i915: Apply Wa_1406680159:icl,ehl as an engine =
workaround")
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.c=
om>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 +++++++++++---
>  drivers/gpu/drm/i915/intel_pm.c             | 10 +++++++---
>  2 files changed, 18 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index b62d1e31a645..68b14141088a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -991,13 +991,21 @@ wa_init_mcr(struct drm_i915_private *i915, struct i=
915_wa_list *wal)
>  		l3_en =3D ~0;
>  	}
>  =

> -	slice =3D fls(sseu->slice_mask) - 1;
> -	subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> +	if (GRAPHICS_VER(i915) =3D=3D 11) {
> +		slice =3D ffs(sseu->slice_mask) - 1;
> +		subslice =3D ffs(l3_en & intel_sseu_get_subslices(sseu, slice));
> +	} else {
> +		slice =3D fls(sseu->slice_mask) - 1;
> +		subslice =3D fls(l3_en & intel_sseu_get_subslices(sseu, slice));
> +	}
>  	if (!subslice) {
>  		drm_warn(&i915->drm,
>  			 "No common index found between subslice mask %x and L3 bank mask %x!=
\n",
>  			 intel_sseu_get_subslices(sseu, slice), l3_en);
> -		subslice =3D fls(l3_en);
> +		if (GRAPHICS_VER(i915) =3D=3D 11)
> +			subslice =3D ffs(l3_en);
> +		else
> +			subslice =3D fls(l3_en);
>  		drm_WARN_ON(&i915->drm, !subslice);
>  	}
>  	subslice--;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 45fefa0ed160..d1352ec3546a 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4049,9 +4049,13 @@ skl_ddb_entry_for_slices(struct drm_i915_private *=
dev_priv, u8 slice_mask,
>  		ddb->end =3D 0;
>  		return;
>  	}
> -
> -	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> -	ddb->end =3D fls(slice_mask) * slice_size;
> +	if (GRAPHICS_VER(dev_priv) =3D=3D 11) {
> +		ddb->start =3D (fls(slice_mask) - 1) * slice_size;
> +		ddb->end =3D ffs(slice_mask) * slice_size;
> +	} else {
> +		ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> +		ddb->end =3D fls(slice_mask) * slice_size;
> +	}

This code has nothing to do with GT slices.

>  =

>  	WARN_ON(ddb->start >=3D ddb->end);
>  	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
