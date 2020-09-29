Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C7A27D385
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 18:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92556E55E;
	Tue, 29 Sep 2020 16:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11AD06E550
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 16:22:56 +0000 (UTC)
IronPort-SDR: a+2Q1Bu2dQE8M9Pc6eUonv6VkOrWj9ZUcxBQe4dDKugjVvHh20prd699yV6G2lt73G/BsaQN+6
 FyVN2/hia46Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="163102887"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="163102887"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 09:22:55 -0700
IronPort-SDR: HxUR0JS+Vm2eqaGJiJYcdctCt4TJo8uEp+gXU/puOX8qXW8xVJaaBmoYF98FjtjtMD9WxAU0Hx
 wd3VFhJQTNOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="340905951"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 29 Sep 2020 09:22:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Sep 2020 19:22:52 +0300
Date: Tue, 29 Sep 2020 19:22:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200929162252.GE6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-8-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914210047.11972-8-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 07/11] drm/i915/display: Implement DRM
 infoframe read for LSPCON
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

On Tue, Sep 15, 2020 at 02:30:43AM +0530, Uma Shankar wrote:
> Implement Read back of HDR metadata infoframes i.e Dynamic Range
> and Mastering Infoframe for LSPCON devices.
> =

> v2: Added proper bitmask of enabled infoframes as per Ville's
> recommendation.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.c |  6 +++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  4 ++++
>  3 files changed, 19 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 1e40ed473fb9..02b0b5921bed 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -600,6 +600,16 @@ void lspcon_drm_write_infoframe(struct intel_encoder=
 *encoder,
>  	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
>  }
>  =

> +void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state,
> +			       unsigned int type,
> +			       void *frame, ssize_t len)
> +{
> +	drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");
> +	/* It uses the legacy hsw implementation for the same */
> +	hsw_read_infoframe(encoder, crtc_state, type, frame, len);
> +}

Another pointless wrapper.

> +
>  static const u8 infoframe_type_to_idx[] =3D {
>  	HDMI_PACKET_TYPE_GENERAL_CONTROL,
>  	HDMI_PACKET_TYPE_GAMUT_METADATA,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index 565913b8e656..ee77a5381cb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -501,7 +501,11 @@ void lspcon_read_infoframe(struct intel_encoder *enc=
oder,
>  			   unsigned int type,
>  			   void *frame, ssize_t len)
>  {
> -	/* FIXME implement this */
> +	/* FIXME implement for AVI Infoframe as well */
> +	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA)
> +		lspcon_drm_read_infoframe(encoder, crtc_state,
> +					  HDMI_PACKET_TYPE_GAMUT_METADATA,
> +					  frame, VIDEO_DIP_DATA_SIZE);

Again I'd just pass the params through.

>  }
>  =

>  /* HDMI HDR Colorspace Spec Definitions */
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index 3fac05535731..1b9fb531128e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -38,4 +38,8 @@ void lspcon_drm_write_infoframe(struct intel_encoder *e=
ncoder,
>  				const struct intel_crtc_state *crtc_state,
>  				unsigned int type,
>  				const void *frame, ssize_t len);
> +void lspcon_drm_read_infoframe(struct intel_encoder *encoder,
> +			       const struct intel_crtc_state *crtc_state,
> +			       unsigned int type,
> +			       void *frame, ssize_t len);
>  #endif /* __INTEL_LSPCON_H__ */
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
