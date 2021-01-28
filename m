Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B0E307779
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 14:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19817898E4;
	Thu, 28 Jan 2021 13:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740ED898E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 13:54:52 +0000 (UTC)
IronPort-SDR: 2qw7bF+wF1AkKwhWh4gVs/yGFrnLvNKOLG0KqRPCJ9H6kPwvNnNVBzk9e/lnfkEWyUAeMDdrBK
 nUVA6DNKtQoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="199067611"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="199067611"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 05:54:52 -0800
IronPort-SDR: Mm7gPm0MgWf1yF3EZk6YLHaX8IuWruvEpl/GRxggb2XEWeGhyBGOJctEDA5ZSQZpJ7tc+OqB8T
 K66iI/tjg17g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="363737732"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 28 Jan 2021 05:54:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 15:54:48 +0200
Date: Thu, 28 Jan 2021 15:54:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YBLCKKLil4zto+U7@intel.com>
References: <20210125173636.1733812-1-imre.deak@intel.com>
 <20210125173636.1733812-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125173636.1733812-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the MST PBN divider
 calculation
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
Cc: intel-gfx@lists.freedesktop.org, Ville Syrjala <ville.syrjala@intel.com>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 07:36:36PM +0200, Imre Deak wrote:
> Atm the driver will calculate a wrong MST timeslots/MTP (aka time unit)
> value for MST streams if the link parameters (link rate or lane count)
> are limited in a way independent of the sink capabilities (reported by
> DPCD).
> =

> One example of such a limitation is when a MUX between the sink and
> source connects only a limited number of lanes to the display and
> connects the rest of the lanes to other peripherals (USB).
> =

> Another issue is that atm MST core calculates the divider based on the
> backwards compatible DPCD (at address 0x0000) vs. the extended
> capability info (at address 0x2200). This can result in leaving some
> part of the MST BW unused (For instance in case of the WD19TB dock).
> =

> Fix the above two issues by calculating the PBN divider value based on
> the rate and lane count link parameters that the driver uses for all
> other computation.
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/-/issues/2977
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Ville Syrjala <ville.syrjala@intel.com>
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Looks all right to fix some of the immediate problems.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index d6a1b961a0e8..b4621ed0127e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -68,7 +68,9 @@ static int intel_dp_mst_compute_link_config(struct inte=
l_encoder *encoder,
>  =

>  		slots =3D drm_dp_atomic_find_vcpi_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
> -						      crtc_state->pbn, 0);
> +						      crtc_state->pbn,
> +						      drm_dp_get_vc_payload_bw(crtc_state->port_clock,
> +									       crtc_state->lane_count));
>  		if (slots =3D=3D -EDEADLK)
>  			return slots;
>  		if (slots >=3D 0)
> -- =

> 2.25.1
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
