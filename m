Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE66E2FF83F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0CC8923A;
	Thu, 21 Jan 2021 22:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58E2D8923A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:57:46 +0000 (UTC)
IronPort-SDR: /l4k1QvBngTSDSTUQ+S0czB6lrFLIyyTdwktEwRjNxwe7PCimX/+SHMm7AvZfiW9+nXmQUhZx8
 ogiuLIEnBXAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="179444715"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="179444715"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:57:45 -0800
IronPort-SDR: FDptebDaO/BE2fuVLfhruDcSeYHwmdO2TvpPJNKv7gkWw74SqqmfBEQcenadXXHvwwe8Rj3KKR
 JzA/9SFHuiyA==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="385497349"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:57:45 -0800
Date: Thu, 21 Jan 2021 15:02:13 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121230213.GD26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-17-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-17-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 16/18] drm/i915: Add vrr state dump
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 13, 2021 at 02:09:33PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Dump vrr state alongside everything else.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a1c011033803..4ed279f034be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12371,6 +12371,13 @@ static void intel_dump_pipe_config(const struct =
intel_crtc_state *pipe_config,
>  	    intel_hdmi_infoframe_enable(DP_SDP_VSC))
>  		intel_dump_dp_vsc_sdp(dev_priv, &pipe_config->infoframes.vsc);
>  =

> +	drm_dbg_kms(&dev_priv->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full=
: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +		    yesno(pipe_config->vrr.enable),
> +		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
> +		    pipe_config->vrr.pipeline_full, pipe_config->vrr.flipline,
> +		    intel_vrr_vmin_vblank_start(pipe_config),
> +		    intel_vrr_vmax_vblank_start(pipe_config));
> +
>  	drm_dbg_kms(&dev_priv->drm, "requested mode:\n");
>  	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
>  	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
