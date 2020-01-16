Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 238FC13E708
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 18:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8526EE30;
	Thu, 16 Jan 2020 17:23:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9376EE30
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 17:23:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 09:23:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="220439322"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 16 Jan 2020 09:23:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2020 19:23:31 +0200
Date: Thu, 16 Jan 2020 19:23:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200116172331.GJ13686@intel.com>
References: <20200116092214.2342-1-stanislav.lisovskiy@intel.com>
 <20200116092214.2342-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116092214.2342-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v12 4/5] drm/i915: Introduce parameterized
 DBUF_CTL
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

On Thu, Jan 16, 2020 at 11:22:13AM +0200, Stanislav Lisovskiy wrote:
> Now start using parameterized DBUF_CTL instead
> of hardcoded, this would allow shorter access
> functions when reading or storing entire state.
> =

> Tried to implement it in a MMIO_PIPE manner, however
> DBUF_CTL1 address is higher than DBUF_CTL2, which
> implies that we have to now subtract from base
> rather than add.
> =

> v2: - Removed unneeded DBUF_CTL_DIST and DBUF_CTL_ADDR
>       macros. Started to use _PICK construct as suggested
>       by Matt Roper.
> =

> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 19 +++----------------
>  drivers/gpu/drm/i915/i915_reg.h               |  7 ++++---
>  drivers/gpu/drm/i915/intel_pm.c               | 18 ++----------------
>  3 files changed, 9 insertions(+), 35 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 474d6d4f3eb5..4729bcafb937 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4410,22 +4410,9 @@ void icl_dbuf_slices_update(struct drm_i915_privat=
e *dev_priv,
>  	DRM_DEBUG_KMS("Updating dbuf slices to 0x%x\n", req_slices);
>  =

>  	for (i =3D 0; i < max_slices; i++) {
> -		u8 slice_set =3D req_slices & BIT(i);
> -
> -		switch (i) {
> -		case DBUF_S1:
> -			intel_dbuf_slice_set(dev_priv,
> -					     DBUF_CTL_S1,
> -					     slice_set);
> -			break;
> -		case DBUF_S2:
> -			intel_dbuf_slice_set(dev_priv,
> -					     DBUF_CTL_S2,
> -					     slice_set);
> -			break;
> -		default:
> -			MISSING_CASE(i);
> -		}

I think you added this code in one of the previous patches. So would be
better to make this patch the first in the series so you don't end up
adding code only to rewrite it one patch later.

> +		intel_dbuf_slice_set(dev_priv,
> +				     DBUF_CTL_S(i),
> +				     (req_slices & BIT(i)) !=3D 0);
>  	}
>  =

>  	dev_priv->enabled_dbuf_slices_mask =3D req_slices;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index e5071af4a3b3..b3de69a0ea50 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7745,9 +7745,10 @@ enum {
>  #define DISP_ARB_CTL2	_MMIO(0x45004)
>  #define  DISP_DATA_PARTITION_5_6	(1 << 6)
>  #define  DISP_IPC_ENABLE		(1 << 3)
> -#define DBUF_CTL	_MMIO(0x45008)
> -#define DBUF_CTL_S1	_MMIO(0x45008)
> -#define DBUF_CTL_S2	_MMIO(0x44FE8)
> +#define DBUF_CTL_ADDR1			0x45008
> +#define DBUF_CTL_ADDR2			0x44FE8

_DBUF_CTL_S1 etc. is the usual naming pattern for the raw reg offsets.

> +#define DBUF_CTL_S(X)			_MMIO(_PICK(X, DBUF_CTL_ADDR1, DBUF_CTL_ADDR2))

s/X/slice/ perhaps

_PICK_EVEN() will work just fine here.

With those
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Was more or less also expecting to see the enum here, but I guess
that ended up somewhere else?

> +#define DBUF_CTL			DBUF_CTL_S(0)
>  #define  DBUF_POWER_REQUEST		(1 << 31)
>  #define  DBUF_POWER_STATE		(1 << 30)
>  #define GEN7_MSG_CTL	_MMIO(0x45010)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 525578933658..b4b291d4244b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3651,22 +3651,8 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_=
private *dev_priv)
>  	u8 enabled_slices_mask =3D 0;
>  =

>  	for (i =3D 0; i < max_slices; i++) {
> -		u8 slice_bit =3D BIT(i);
> -		bool res;
> -
> -		switch (i) {
> -		case DBUF_S1:
> -			res =3D I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE;
> -			break;
> -		case DBUF_S2:
> -			res =3D I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE;
> -			break;
> -		default:
> -			MISSING_CASE(slice_bit);
> -		}
> -
> -		if (res)
> -			enabled_slices_mask |=3D slice_bit;
> +		if (I915_READ(DBUF_CTL_S(i)) & DBUF_POWER_STATE)
> +			enabled_slices_mask |=3D BIT(i);
>  	}
>  =

>  	return enabled_slices_mask;
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
