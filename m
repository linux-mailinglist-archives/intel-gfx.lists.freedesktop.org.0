Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 494171B12A4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 19:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A4F6E821;
	Mon, 20 Apr 2020 17:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA0D46E821
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 17:08:59 +0000 (UTC)
IronPort-SDR: +WjmT++B44Q0Op7tLs973RsKSSSx5M2z4ffioVPvHx6tp9AIOOk62sqxXZSeroYB7FfbPRppuB
 jgOV04oMq9RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 10:08:59 -0700
IronPort-SDR: GYpQeBd1ajX0JhIQ4HXBDDlBiNu05WReT5yw9g+N/jsMCW0NYfWmHLoy31TvdH9pOeeeQ6B+MV
 RdN6Zb4O77mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="300336624"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 20 Apr 2020 10:08:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 20:08:56 +0300
Date: Mon, 20 Apr 2020 20:08:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200420170856.GX6112@intel.com>
References: <20200420140438.14672-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420140438.14672-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdmi: remove unused
 intel_hdmi_hdcp2_protocol()
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

On Mon, Apr 20, 2020 at 05:04:37PM +0300, Jani Nikula wrote:
> Unused, hiding from the compiler warnings behind the inline keyword.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 6 ------
>  1 file changed, 6 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 9c058f7aa185..54412f79f0c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1750,12 +1750,6 @@ int intel_hdmi_hdcp2_capable(struct intel_digital_=
port *intel_dig_port,
>  	return ret;
>  }
>  =

> -static inline
> -enum hdcp_wired_protocol intel_hdmi_hdcp2_protocol(void)
> -{
> -	return HDCP_PROTOCOL_HDMI;
> -}
> -
>  static const struct intel_hdcp_shim intel_hdmi_hdcp_shim =3D {
>  	.write_an_aksv =3D intel_hdmi_hdcp_write_an_aksv,
>  	.read_bksv =3D intel_hdmi_hdcp_read_bksv,
> -- =

> 2.20.1
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
