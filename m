Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5098F1444FE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 20:22:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A566B6EE48;
	Tue, 21 Jan 2020 19:22:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F576EE48
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 19:22:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 11:22:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="221007552"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 21 Jan 2020 11:22:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2020 21:22:16 +0200
Date: Tue, 21 Jan 2020 21:22:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200121192216.GC13686@intel.com>
References: <20200120122103.26886-1-stanislav.lisovskiy@intel.com>
 <20200120122103.26886-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120122103.26886-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v15 3/5] drm/i915: Introduce parameterized
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

On Mon, Jan 20, 2020 at 02:21:01PM +0200, Stanislav Lisovskiy wrote:
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

> v3: - DBUF_CTL_S* to _DBUF_CTL_S*, changed X to "slice"
>       in macro(Ville Syrj=E4l=E4)

Still not there :(

>     - Introduced enum for enumerating DBUF slices(Ville Syrj=E4l=E4)
> =

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 30 +++++++++++--------
>  .../drm/i915/display/intel_display_power.h    |  5 ++++
>  drivers/gpu/drm/i915/i915_reg.h               |  7 +++--
>  drivers/gpu/drm/i915/intel_pm.c               |  2 +-
>  4 files changed, 28 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 5e1c601f0f99..08065720391f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4418,9 +4418,11 @@ void icl_dbuf_slices_update(struct drm_i915_privat=
e *dev_priv,
>  		return;
>  =

>  	if (req_slices > hw_enabled_slices)
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, true);
> +		ret =3D intel_dbuf_slice_set(dev_priv,
> +					   DBUF_CTL_S(DBUF_S2), true);
>  	else
> -		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, false);
> +		ret =3D intel_dbuf_slice_set(dev_priv,
> +					   DBUF_CTL_S(DBUF_S2), false);
>  =

>  	if (ret)
>  		dev_priv->enabled_dbuf_slices_num =3D req_slices;
> @@ -4428,14 +4430,16 @@ void icl_dbuf_slices_update(struct drm_i915_priva=
te *dev_priv,
>  =

>  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) | DBUF_POWER_REQUEST);
> -	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) | DBUF_POWER_REQUEST);
> -	POSTING_READ(DBUF_CTL_S2);
> +	I915_WRITE(DBUF_CTL_S(DBUF_S1),
> +		   I915_READ(DBUF_CTL_S(DBUF_S1)) | DBUF_POWER_REQUEST);
> +	I915_WRITE(DBUF_CTL_S(DBUF_S2),
> +		   I915_READ(DBUF_CTL_S(DBUF_S2)) | DBUF_POWER_REQUEST);
> +	POSTING_READ(DBUF_CTL_S(DBUF_S2));
>  =

>  	udelay(10);
>  =

> -	if (!(I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
> -	    !(I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
> +	if (!(I915_READ(DBUF_CTL_S(DBUF_S1)) & DBUF_POWER_STATE) ||
> +	    !(I915_READ(DBUF_CTL_S(DBUF_S2)) & DBUF_POWER_STATE))
>  		DRM_ERROR("DBuf power enable timeout\n");
>  	else
>  		/*
> @@ -4447,14 +4451,16 @@ static void icl_dbuf_enable(struct drm_i915_priva=
te *dev_priv)
>  =

>  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
>  {
> -	I915_WRITE(DBUF_CTL_S1, I915_READ(DBUF_CTL_S1) & ~DBUF_POWER_REQUEST);
> -	I915_WRITE(DBUF_CTL_S2, I915_READ(DBUF_CTL_S2) & ~DBUF_POWER_REQUEST);
> -	POSTING_READ(DBUF_CTL_S2);
> +	I915_WRITE(DBUF_CTL_S(DBUF_S1),
> +		   I915_READ(DBUF_CTL_S(DBUF_S1)) & ~DBUF_POWER_REQUEST);
> +	I915_WRITE(DBUF_CTL_S(DBUF_S2),
> +		   I915_READ(DBUF_CTL_S(DBUF_S2)) & ~DBUF_POWER_REQUEST);
> +	POSTING_READ(DBUF_CTL_S(DBUF_S2));
>  =

>  	udelay(10);
>  =

> -	if ((I915_READ(DBUF_CTL_S1) & DBUF_POWER_STATE) ||
> -	    (I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE))
> +	if ((I915_READ(DBUF_CTL_S(DBUF_S1)) & DBUF_POWER_STATE) ||
> +	    (I915_READ(DBUF_CTL_S(DBUF_S2)) & DBUF_POWER_STATE))
>  		DRM_ERROR("DBuf power disable timeout!\n");
>  	else
>  		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
> index 2608a65af7fa..601e000ffd0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -307,6 +307,11 @@ intel_display_power_put_async(struct drm_i915_privat=
e *i915,
>  }
>  #endif
>  =

> +enum dbuf_slice {
> +	DBUF_S1,
> +	DBUF_S2,
> +};
> +
>  #define with_intel_display_power(i915, domain, wf) \
>  	for ((wf) =3D intel_display_power_get((i915), (domain)); (wf); \
>  	     intel_display_power_put_async((i915), (domain), (wf)), (wf) =3D 0)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index e5071af4a3b3..486816f7b3a9 100644
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
> +#define DBUF_CTL_S(X)			_MMIO(_PICK_EVEN(X, DBUF_CTL_ADDR1, DBUF_CTL_ADD=
R2))
> +#define DBUF_CTL			DBUF_CTL_S(0)
>  #define  DBUF_POWER_REQUEST		(1 << 31)
>  #define  DBUF_POWER_STATE		(1 << 30)
>  #define GEN7_MSG_CTL	_MMIO(0x45010)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8f6f6472626a..f22509f8ac28 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3660,7 +3660,7 @@ u8 intel_enabled_dbuf_slices_num(struct drm_i915_pr=
ivate *dev_priv)
>  	 * only that 1 slice enabled until we have a proper way for on-demand
>  	 * toggling of the second slice.
>  	 */
> -	if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
> +	if (0 && I915_READ(DBUF_CTL_S(DBUF_S2)) & DBUF_POWER_STATE)
>  		enabled_dbuf_slices_num++;
>  =

>  	return enabled_dbuf_slices_num;
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
