Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A83883375D1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 15:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032D26ED42;
	Thu, 11 Mar 2021 14:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F196ED42
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 14:33:48 +0000 (UTC)
IronPort-SDR: 0KokRUkzSK383CcDlaAZQK0F5G9Gp2TVKl+s7oWOvjOFkYyFQmVkJO7eaduc17iEfEHmXVfjxn
 pedNwUt1cHaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186294972"
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="186294972"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 06:33:48 -0800
IronPort-SDR: vRNqm0YtXbVQP0OYg/mBBIqhbtrmM+c2uYUBbsQoHrixLEHMYkIkoOiXhl0pLOMuEd2Tk+zpUx
 80hFkE+zNoGg==
X-IronPort-AV: E=Sophos;i="5.81,240,1610438400"; d="scan'208";a="404088734"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 06:33:47 -0800
Date: Thu, 11 Mar 2021 16:36:05 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210311143605.GA8577@intel.com>
References: <20210305153610.12177-1-ville.syrjala@linux.intel.com>
 <20210305153610.12177-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305153610.12177-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Tighten SAGV constraint for
 pre-tgl
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

On Fri, Mar 05, 2021 at 05:36:06PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Say we have two planes enabled with watermarks configured
> as follows:
> plane A: wm0=3Denabled/can_sagv=3Dfalse, wm1=3Denabled/can_sagv=3Dtrue
> plane B: wm0=3Denabled/can_sagv=3Dtrue,  wm1=3Ddisabled

Was thinking about this, always thought its not possible, i.e
wm1 kinda requires more resources, so if we can do wm1, should
always be able to do wm0..

> =

> This is possible since the latency we use to calculate
> can_sagv may not be the same for both planes due to
> skl_needs_memory_bw_wa().

The current code, which I see in internal at least looks like this:

/*
 * FIXME: We still don't have the proper code detect if we need to apply th=
e WA,
 * so assume we'll always need it in order to avoid underruns.
 */
static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
{
      return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
}

i.e I think it will return same latency for all planes.

Or am I missing something?..


Stan

> =

> In this case skl_crtc_can_enable_sagv() will see that
> both planes have enabled at least one watermark level
> with can_sagv=3D=3Dtrue, and thus proceeds to allow SAGV.
> However, since plane B does not have wm1 enabled
> plane A can't actually use it either. Thus we are
> now running with SAGV enabled, but plane A can't
> actually tolerate the extra latency it imposes.
> =

> To remedy this only allow SAGV on if the highest common
> enabled watermark level for all active planes can tolerate
> the extra SAGV latency.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 854ffecd98d9..b6e34d1701a0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3876,6 +3876,7 @@ static bool skl_crtc_can_enable_sagv(const struct i=
ntel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum plane_id plane_id;
> +	int max_level =3D INT_MAX;
>  =

>  	if (!intel_has_sagv(dev_priv))
>  		return false;
> @@ -3900,12 +3901,23 @@ static bool skl_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state)
>  		     !wm->wm[level].plane_en; --level)
>  		     { }
>  =

> +		/* Highest common enabled wm level for all planes */
> +		max_level =3D min(level, max_level);
> +	}
> +
> +	/* No enabled planes? */
> +	if (max_level =3D=3D INT_MAX)
> +		return true;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
>  		/*
> -		 * If any of the planes on this pipe don't enable wm levels that
> -		 * incur memory latencies higher than sagv_block_time_us we
> -		 * can't enable SAGV.
> +		 * All enabled planes must have enabled a common wm level that
> +		 * can tolerate memory latencies higher than sagv_block_time_us
>  		 */
> -		if (!wm->wm[level].can_sagv)
> +		if (wm->wm[0].plane_en && !wm->wm[max_level].can_sagv)
>  			return false;
>  	}
>  =

> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
