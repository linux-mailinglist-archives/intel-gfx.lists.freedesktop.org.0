Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1AD2A7CD1
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 12:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084FB6E20E;
	Thu,  5 Nov 2020 11:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A546E20E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 11:22:08 +0000 (UTC)
IronPort-SDR: ODBRPA40vD+JYk3lw+uOcxmj9nzX3CyCATSLSCXZLi0n9ceWEwIpntuwJz4lBR31Gk7Z6F3oDO
 8xc2cWYiyvbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="156356695"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="156356695"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:22:08 -0800
IronPort-SDR: bZFEUtgvtlSMRPuS6LSHy8V5VgQZkrVy2ZHjmUNHWAf/6XVa41jGIX99zniDItvX5yTVqgfcPa
 ONdVjpBFJoWg==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="471608651"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 03:22:07 -0800
Date: Thu, 5 Nov 2020 13:22:42 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201105112242.GB27558@intel.com>
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
 <20201027203955.28032-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027203955.28032-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 4/8] drm/i915: Introduce
 skl_ddb_entry_for_slices()
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

On Tue, Oct 27, 2020 at 10:39:51PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Generalize icl_get_first_dbuf_slice_offset() into something that
> just gives us the start+end of the dbuf chunk covered by the
> specified slices as a standard ddb entry. Initial idea was to use
> it during readout as well, but we shall see.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 55 +++++++++++----------------------
>  1 file changed, 18 insertions(+), 37 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 8083785237ba..e4917454ec07 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4042,25 +4042,23 @@ static int intel_dbuf_slice_size(struct drm_i915_=
private *dev_priv)
>  		INTEL_INFO(dev_priv)->num_supported_dbuf_slices;
>  }
>  =

> -/*
> - * Calculate initial DBuf slice offset, based on slice size
> - * and mask(i.e if slice size is 1024 and second slice is enabled
> - * offset would be 1024)
> - */
> -static unsigned int
> -icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
> -				u32 slice_size,
> -				u32 ddb_size)
> +static void
> +skl_ddb_entry_for_slices(struct drm_i915_private *dev_priv, u8 slice_mas=
k,
> +			 struct skl_ddb_entry *ddb)
>  {
> -	unsigned int offset =3D 0;
> +	int slice_size =3D intel_dbuf_slice_size(dev_priv);
>  =

> -	if (!dbuf_slice_mask)
> -		return 0;
> +	if (!slice_mask) {
> +		ddb->start =3D 0;
> +		ddb->end =3D 0;
> +		return;
> +	}
>  =

> -	offset =3D (ffs(dbuf_slice_mask) - 1) * slice_size;
> +	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> +	ddb->end =3D fls(slice_mask) * slice_size;
>  =

> -	WARN_ON(offset >=3D ddb_size);
> -	return offset;
> +	WARN_ON(ddb->start >=3D ddb->end);
> +	WARN_ON(ddb->end > intel_dbuf_size(dev_priv));
>  }
>  =

>  u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> @@ -4131,12 +4129,10 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	const struct intel_dbuf_state *old_dbuf_state =3D
>  		intel_atomic_get_old_dbuf_state(intel_state);
>  	u8 active_pipes =3D new_dbuf_state->active_pipes;
> -	u16 ddb_size;
> +	struct skl_ddb_entry ddb_slices;
>  	u32 ddb_range_size;
>  	u32 i;
>  	u32 dbuf_slice_mask;
> -	u32 offset;
> -	u32 slice_size;
>  	u32 total_slice_mask;
>  	u32 start, end;
>  	int ret;
> @@ -4149,9 +4145,6 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  		return 0;
>  	}
>  =

> -	ddb_size =3D intel_dbuf_size(dev_priv);
> -	slice_size =3D intel_dbuf_slice_size(dev_priv);
> -
>  	/*
>  	 * If the state doesn't change the active CRTC's or there is no
>  	 * modeset request, then there's no need to recalculate;
> @@ -4177,20 +4170,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	 */
>  	dbuf_slice_mask =3D skl_compute_dbuf_slices(for_crtc, active_pipes);
>  =

> -	/*
> -	 * Figure out at which DBuf slice we start, i.e if we start at Dbuf S2
> -	 * and slice size is 1024, the offset would be 1024
> -	 */
> -	offset =3D icl_get_first_dbuf_slice_offset(dbuf_slice_mask,
> -						 slice_size, ddb_size);
> -
> -	/*
> -	 * Figure out total size of allowed DBuf slices, which is basically
> -	 * a number of allowed slices for that pipe multiplied by slice size.
> -	 * Inside of this
> -	 * range ddb entries are still allocated in proportion to display width.
> -	 */
> -	ddb_range_size =3D hweight8(dbuf_slice_mask) * slice_size;
> +	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
> +	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
>  =

>  	total_slice_mask =3D dbuf_slice_mask;
>  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state, i) {
> @@ -4247,8 +4228,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  	start =3D ddb_range_size * weight_before_pipe / total_weight;
>  	end =3D ddb_range_size * (weight_before_pipe + pipe_weight) / total_wei=
ght;
>  =

> -	alloc->start =3D offset + start;
> -	alloc->end =3D offset + end;
> +	alloc->start =3D ddb_slices.start + start;
> +	alloc->end =3D ddb_slices.start + end;
>  =

>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\n=
",
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
