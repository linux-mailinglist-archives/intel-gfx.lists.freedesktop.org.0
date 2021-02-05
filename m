Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5076A311244
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 21:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A46976F4C3;
	Fri,  5 Feb 2021 20:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06A46F4C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 20:22:48 +0000 (UTC)
IronPort-SDR: KA1T+rmw7kXWHwrT0/JmayoXxbp1Popr3miPGu5Sr8WDWBrIz2pjVoZFB+0ukOtAo0TRhKgTwn
 cX+yedetpSyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="178924876"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="178924876"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 12:22:47 -0800
IronPort-SDR: QJUYTNd6A8j8PcrVPQWzsrZa011qEXfPVTZ6R582j6nrJQ/nt3dFsR/D4lIpqaxmE9Ti43XvrL
 5kNIqRhoEasg==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="484449687"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 12:22:46 -0800
Date: Fri, 5 Feb 2021 12:27:41 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Message-ID: <20210205202741.GB969@labuser-Z97X-UD5H>
References: <20210205064531.3158292-1-khaled.almahallawy@intel.com>
 <20210205190936.3172458-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205190936.3172458-1-khaled.almahallawy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add link rate and lane count
 to i915_display_info
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

On Fri, Feb 05, 2021 at 11:09:36AM -0800, Khaled Almahallawy wrote:
> Link rate and lane count information are more easier and faster to check =
in i915_display_info
> than checking kernel logs for people not familiar with i915 in the follow=
ing scenarios:
> * Debugging DP tunnel bandwidth usage in Thunderbolt driver.
> * In USB4 certification, it is a requirement to know which link rate used=
 by
>   monitor to prove that DP tunnel handle up to HBR3
> * In PHY Compliance, when the connector propes are not mounted correctly,
>   some display lanes will not show up in the DP Oscilloscope and will fai=
l CTS.
>   Just give the tester an easy way to identify where the problem is.
> =

> v2(Ville): Uniform style for '=3D' and use 'port clock' instead of 'link =
rate'

Yes this is really good, having this as part of display_info.
I am just wondering if this makes sense to be part of connector_info or crt=
c_info
What would be more readable and intuitive. But again since its part
of crtc_state, may be easier to be part of crtc_info.

Manasi


> =

> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> CC: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index d62b18d5ecd8..cb088a0a26f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -990,9 +990,10 @@ static void intel_crtc_info(struct seq_file *m, stru=
ct intel_crtc *crtc)
>  			   yesno(crtc_state->hw.active),
>  			   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
>  =

> -		seq_printf(m, "\tpipe src size=3D%dx%d, dither=3D%s, bpp=3D%d\n",
> +		seq_printf(m, "\tpipe src size=3D%dx%d, dither=3D%s, bpp=3D%d, port cl=
ock=3D%d, lane count=3D%d\n",
>  			   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
> -			   yesno(crtc_state->dither), crtc_state->pipe_bpp);
> +			   yesno(crtc_state->dither), crtc_state->pipe_bpp,
> +			   crtc_state->port_clock, crtc_state->lane_count);
>  =

>  		intel_scaler_info(m, crtc);
>  	}
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
