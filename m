Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F83427D375
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95906E544;
	Tue, 29 Sep 2020 16:18:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410386E544
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:18:26 +0000 (UTC)
IronPort-SDR: DGKWp0vwDDgSp8oMPzWr/64BfjYHRa3Z9jMstNn/tkPO+HrtB3SJtc5PvgGsaLb6Wtj94PGBIL
 u5tbuAq8eVxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="150007592"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="150007592"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:18:25 -0700
IronPort-SDR: /rCmI7Uu+lxBoC4Zgq4E/7oJtaGqql4Ie3aijvUzxo5zpYBYtTDhFc9RULclU+jIhZ86ompCFx
 rcYeG7DricFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="293717547"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 29 Sep 2020 09:18:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:18:20 +0300
Date: Tue, 29 Sep 2020 19:18:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929161820.GB6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-5-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-5-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 04/11] drm/i915/display: Enable BT2020 for HDR
 on LSPCON devices
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

On Tue, Sep 15, 2020 at 02:30:40AM +0530, Uma Shankar wrote:
> Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
> data for HDR using AVI infoframe. LSPCON firmware expects this and though
> SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
> which transfers the same to HDMI sink.
> =

> v2: Dropped state managed in drm core as per Jani Nikula's suggestion.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index fd05210f4405..b0ca494f1110 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -507,6 +507,11 @@ void lspcon_read_infoframe(struct intel_encoder *enc=
oder,
>  	/* FIXME implement this */
>  }
>  =

> +/* HDMI HDR Colorspace Spec Definitions */
> +#define NORMAL_COLORIMETRY_MASK		0x3
> +#define EXTENDED_COLORIMETRY_MASK	0x7
> +#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
> +
>  void lspcon_set_infoframes(struct intel_encoder *encoder,
>  			   bool enable,
>  			   const struct intel_crtc_state *crtc_state,
> @@ -551,6 +556,19 @@ void lspcon_set_infoframes(struct intel_encoder *enc=
oder,
>  					   HDMI_QUANTIZATION_RANGE_LIMITED :
>  					   HDMI_QUANTIZATION_RANGE_FULL);
>  =

> +	/*
> +	 * Set BT2020 colorspace if driving HDR data
> +	 * ToDo: Make this generic and expose all colorspaces for lspcon
> +	 */
> +	if (lspcon->active && lspcon->hdr_supported) {
> +		frame.avi.colorimetry =3D
> +				HDMI_COLORIMETRY_BT2020_YCC &
> +				NORMAL_COLORIMETRY_MASK;
> +		frame.avi.extended_colorimetry =3D
> +				(HDMI_COLORIMETRY_BT2020_YCC >> 2) &
> +				 EXTENDED_COLORIMETRY_MASK;
> +	}

drm_hdmi_avi_infoframe_colorspace().

Also pls try to match intel_hdmi_compute_avi_infoframe() as
closesly as possible if we can't just outright reuse it. That
will make it easier to spot differences between the two.

> +
>  	ret =3D hdmi_infoframe_pack(&frame, buf, sizeof(buf));
>  	if (ret < 0) {
>  		DRM_ERROR("Failed to pack AVI IF\n");
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
