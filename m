Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444BA304D59
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jan 2021 00:33:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3886E455;
	Tue, 26 Jan 2021 23:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C24A6E455
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 23:33:22 +0000 (UTC)
IronPort-SDR: 4fVYpNHPNBc+LkAcHgeGxXo6MY1XDYUfqZZUjSSR2Vae2cdIW+tgmDNdEb+JwWST76kxpMajiT
 5DAIDIJb+dRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9876"; a="167659509"
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="167659509"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 15:33:21 -0800
IronPort-SDR: XHEU0+27ZVw2ZkaJo2Bb3G8tMZdzmAtc4kfBkd9V7sJnMyQFEcOvLQvKGxt2o/SGAtsftPrfsx
 QddzX7QzP4Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,377,1602572400"; d="scan'208";a="410328047"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 26 Jan 2021 15:33:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Jan 2021 01:33:18 +0200
Date: Wed, 27 Jan 2021 01:33:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YBCmvqDno7sJm7dU@intel.com>
References: <20210126185224.32340-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126185224.32340-1-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vrr: Skip the VRR HW state
 readout on DSI transcoder
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

On Tue, Jan 26, 2021 at 10:52:24AM -0800, Manasi Navare wrote:
> DSI transcoder does not support VRR and hence skip the HW state
> readout if its a DSI transcoder.
> =

> Fixes: c7f0f4372b30 ("drm/i915/display: Add HW state readout for VRR")
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 65240fa074cc..aea8c5b3a7fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8978,7 +8978,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *=
crtc,
>  		intel_get_transcoder_timings(crtc, pipe_config);
>  	}
>  =

> -	if (HAS_VRR(dev_priv))
> +	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder=
))
>  		intel_vrr_get_config(crtc, pipe_config);
>  =

>  	intel_get_pipe_src_size(crtc, pipe_config);
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
