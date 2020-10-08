Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5B4287536
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 15:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B9E6EA5F;
	Thu,  8 Oct 2020 13:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF4EC6EA5F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 13:23:51 +0000 (UTC)
IronPort-SDR: jCPLgQEFYYCPNWo1o6aaC0kOmPJ/bkbTzb54LX5nY+vG47exZ1+eZfbo5VFPC+tm87bJdRgIcH
 Ui0uCQ3YV2iA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="165392554"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="165392554"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:23:51 -0700
IronPort-SDR: bnaruDKdyD1SRRHLzux5mNq9WfOo9fIkRL/LrEFPtEgvVXYTwL+Oi2/p83cIgLTXa2YIVXhWuZ
 y/5UX2USMKaQ==
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="528492715"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:23:49 -0700
Date: Thu, 8 Oct 2020 16:23:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201008132346.GA1784305@ideak-desk.fi.intel.com>
References: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Set all unused color plane
 offsets to ~0xfff again
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 08, 2020 at 01:16:06PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> When the number of potential color planes grew to 4 we stopped
> setting all unused color plane offsets to ~0xfff. The code
> still tries to do this, but actually does nothing since the
> loop limits are bogus.
> =

> skl_check_main_surface() actually depends on this ~0xfff
> behaviour as it will make sure to move the main surface
> offset below the aux surface offset because the hardware
> AUX_DIST must be a non-negative value [1], and for simplicity
> it doesn't bother checking if the AUX plane is actually
> needed or not. So currently it may end up shuffling the
> main surface around based on some stale leftover AUX offset.
> =

> The skl+ plane code also just blindly calculates the AUX_DIST
> whether or not the AUX plane is actually needed by the hw or
> not, and that too will now potentially use some stale AUX
> surface offset in the calculation. Would seem nicer to
> guarantee a consistent non-negative AUX_DIST always.
> =

> So bring back the original ~0xfff offset behaviour for
> unused color planes. Though it doesn't seem super likely
> that this inconsistency would cause any real issues.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Fixes: 2dfbf9d2873a ("drm/i915/tgl: Gen-12 display can decompress surface=
s compressed by the media engine")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Arg. Yes skl_check_main_surface() adjusts now the address needlessly.
The fix looks ok to me:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 907e1d155443..44fd7059838f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4104,8 +4104,7 @@ static int skl_check_ccs_aux_surface(struct intel_p=
lane_state *plane_state)
>  int skl_check_plane_surface(struct intel_plane_state *plane_state)
>  {
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret;
> -	bool needs_aux =3D false;
> +	int ret, i;
>  =

>  	ret =3D intel_plane_compute_gtt(plane_state);
>  	if (ret)
> @@ -4119,7 +4118,6 @@ int skl_check_plane_surface(struct intel_plane_stat=
e *plane_state)
>  	 * it.
>  	 */
>  	if (is_ccs_modifier(fb->modifier)) {
> -		needs_aux =3D true;
>  		ret =3D skl_check_ccs_aux_surface(plane_state);
>  		if (ret)
>  			return ret;
> @@ -4127,20 +4125,15 @@ int skl_check_plane_surface(struct intel_plane_st=
ate *plane_state)
>  =

>  	if (intel_format_info_is_yuv_semiplanar(fb->format,
>  						fb->modifier)) {
> -		needs_aux =3D true;
>  		ret =3D skl_check_nv12_aux_surface(plane_state);
>  		if (ret)
>  			return ret;
>  	}
>  =

> -	if (!needs_aux) {
> -		int i;
> -
> -		for (i =3D 1; i < fb->format->num_planes; i++) {
> -			plane_state->color_plane[i].offset =3D ~0xfff;
> -			plane_state->color_plane[i].x =3D 0;
> -			plane_state->color_plane[i].y =3D 0;
> -		}
> +	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->color_pl=
ane); i++) {
> +		plane_state->color_plane[i].offset =3D ~0xfff;
> +		plane_state->color_plane[i].x =3D 0;
> +		plane_state->color_plane[i].y =3D 0;
>  	}
>  =

>  	ret =3D skl_check_main_surface(plane_state);
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
