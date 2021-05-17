Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A44382472
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 08:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF0C6E040;
	Mon, 17 May 2021 06:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5421C6E040
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 06:35:37 +0000 (UTC)
IronPort-SDR: FhoEc9U6Jx0ZVUG9gzr9sZcPVHaMl7ISSnO75og6PP7fys5hJY44N6QMmhI4JYgt4DvwvmanLW
 dozvk0ZOQDQw==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="200446206"
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="200446206"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2021 23:35:35 -0700
IronPort-SDR: XkeRvVE8n0GMGgG580+TlcHqP7KV7JCYnrUoTXV4Vzssks/wzmrkb7G0L0CZC0uVW94T9Dp2Vl
 4RQM1qAEL7fQ==
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="472225147"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2021 23:35:34 -0700
Date: Mon, 17 May 2021 09:38:48 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210517063848.GA17398@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-13-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-13-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 12/23] drm/i915: Introduce MBUS relative
 dbuf offsets
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

On Fri, May 14, 2021 at 08:10:24PM -0700, Matt Roper wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The dbuf slices are going to be split across several MBUS units.
> The actual dbuf programming will use offsets relative to the
> MBUS unit. To accommodate that we shall store the MBUS relative
> offsets into the dbuf_state->ddb[] and crtc_state->plane_ddb*[].
> =

> For crtc_state->wm.skl.ddb however we want to stick to global
> offsets as we use this to sanity check that the ddb allocations
> don't overlap between pipes.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 40 ++++++++++++++++++++++++++++-----
>  1 file changed, 34 insertions(+), 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 411ec468d02a..cbbd966f710e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4057,6 +4057,20 @@ skl_ddb_entry_for_slices(struct drm_i915_private *=
dev_priv, u8 slice_mask,
>  	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->dbuf.size);
>  }
>  =

> +static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 sl=
ice_mask)
> +{
> +	struct skl_ddb_entry ddb;
> +
> +	if (slice_mask & (BIT(DBUF_S1) | BIT(DBUF_S2)))
> +		slice_mask =3D BIT(DBUF_S1);
> +	else if (slice_mask & (BIT(DBUF_S3) | BIT(DBUF_S4)))
> +		slice_mask =3D BIT(DBUF_S3);
> +
> +	skl_ddb_entry_for_slices(i915, slice_mask, &ddb);
> +
> +	return ddb.start;
> +}
> +
>  u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
>  			    const struct skl_ddb_entry *entry)
>  {
> @@ -4149,6 +4163,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *st=
ate, struct intel_crtc *crtc)
>  	struct intel_crtc_state *crtc_state;
>  	struct skl_ddb_entry ddb_slices;
>  	enum pipe pipe =3D crtc->pipe;
> +	unsigned int mbus_offset;
>  	u32 ddb_range_size;
>  	u32 dbuf_slice_mask;
>  	u32 start, end;
> @@ -4163,6 +4178,7 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *st=
ate, struct intel_crtc *crtc)
>  	dbuf_slice_mask =3D new_dbuf_state->slices[pipe];
>  =

>  	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
> +	mbus_offset =3D mbus_ddb_offset(dev_priv, dbuf_slice_mask);
>  	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
>  =

>  	intel_crtc_dbuf_weights(new_dbuf_state, pipe,
> @@ -4171,11 +4187,11 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *=
state, struct intel_crtc *crtc)
>  	start =3D ddb_range_size * weight_start / weight_total;
>  	end =3D ddb_range_size * weight_end / weight_total;
>  =

> -	new_dbuf_state->ddb[pipe].start =3D ddb_slices.start + start;
> -	new_dbuf_state->ddb[pipe].end =3D ddb_slices.start + end;
> -
> +	new_dbuf_state->ddb[pipe].start =3D ddb_slices.start - mbus_offset + st=
art;
> +	new_dbuf_state->ddb[pipe].end =3D ddb_slices.start - mbus_offset + end;
>  out:
> -	if (skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
> +	if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe] &&
> +	    skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
>  				&new_dbuf_state->ddb[pipe]))
>  		return 0;
>  =

> @@ -4187,7 +4203,12 @@ skl_crtc_allocate_ddb(struct intel_atomic_state *s=
tate, struct intel_crtc *crtc)
>  	if (IS_ERR(crtc_state))
>  		return PTR_ERR(crtc_state);
>  =

> -	crtc_state->wm.skl.ddb =3D new_dbuf_state->ddb[pipe];
> +	/*
> +	 * Used for checking overlaps, so we need absolute
> +	 * offsets instead of MBUS relative offsets.
> +	 */
> +	crtc_state->wm.skl.ddb.start =3D mbus_offset + new_dbuf_state->ddb[pipe=
].start;
> +	crtc_state->wm.skl.ddb.end =3D mbus_offset + new_dbuf_state->ddb[pipe].=
end;
>  =

>  	drm_dbg_kms(&dev_priv->drm,
>  		    "[CRTC:%d:%s] dbuf slices 0x%x -> 0x%x, ddb (%d - %d) -> (%d - %d)=
, active pipes 0x%x -> 0x%x\n",
> @@ -6416,6 +6437,7 @@ void skl_wm_get_hw_state(struct drm_i915_private *d=
ev_priv)
>  		struct intel_crtc_state *crtc_state =3D
>  			to_intel_crtc_state(crtc->base.state);
>  		enum pipe pipe =3D crtc->pipe;
> +		unsigned int mbus_offset;
>  		enum plane_id plane_id;
>  =

>  		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> @@ -6441,7 +6463,13 @@ void skl_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>  =

>  		dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(crtc_state);
>  =

> -		crtc_state->wm.skl.ddb =3D dbuf_state->ddb[pipe];
> +		/*
> +		 * Used for checking overlaps, so we need absolute
> +		 * offsets instead of MBUS relative offsets.
> +		 */
> +		mbus_offset =3D mbus_ddb_offset(dev_priv, dbuf_state->slices[pipe]);
> +		crtc_state->wm.skl.ddb.start =3D mbus_offset + dbuf_state->ddb[pipe].s=
tart;
> +		crtc_state->wm.skl.ddb.end =3D mbus_offset + dbuf_state->ddb[pipe].end;
>  =

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\=
n",
> -- =

> 2.25.4
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
