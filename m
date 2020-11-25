Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24C12C45E3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DD26E8D1;
	Wed, 25 Nov 2020 16:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C794F6E8D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:50:31 +0000 (UTC)
IronPort-SDR: 1mSBwhbKrj8IaG4bYdGj/Juh0kzWKdA00if2OkZpfWL/AM0/ql+rWA9PqA/wugD9VsGxMSFJVe
 qVqIA/QNTfMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="190305993"
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="190305993"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 08:50:31 -0800
IronPort-SDR: tzFMWZ6G76coh+89Xj+cpOZSMmCF48xF5//1CO8Aw8b6W/90QZCl3+F2ZkezioN8jvbnzEFBw9
 6C94Y/0SL3vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,369,1599548400"; d="scan'208";a="370822212"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 25 Nov 2020 08:50:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Nov 2020 18:50:28 +0200
Date: Wed, 25 Nov 2020 18:50:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20201125165028.GX6112@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
 <20201103152834.12727-10-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201103152834.12727-10-uma.shankar@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v9 09/12] drm/i915/display: Implement DRM
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

On Tue, Nov 03, 2020 at 08:58:31PM +0530, Uma Shankar wrote:
> Implement Read back of HDR metadata infoframes i.e Dynamic Range
> and Mastering Infoframe for LSPCON devices.
> =

> v2: Added proper bitmask of enabled infoframes as per Ville's
> recommendation.
> =

> v3: Dropped a redundant wrapper as per Ville's comment.
> =

> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 7 +++----
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 7 ++++++-
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 4 ++++
>  3 files changed, 13 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index f1a927cdf798..81dabffbb3e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -555,10 +555,9 @@ void hsw_write_infoframe(struct intel_encoder *encod=
er,
>  	intel_de_posting_read(dev_priv, ctl_reg);
>  }
>  =

> -static void hsw_read_infoframe(struct intel_encoder *encoder,
> -			       const struct intel_crtc_state *crtc_state,
> -			       unsigned int type,
> -			       void *frame, ssize_t len)
> +void hsw_read_infoframe(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
> +			unsigned int type, void *frame, ssize_t len)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/dr=
m/i915/display/intel_lspcon.c
> index d83e1d220658..8a4fd8ca8016 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -486,7 +486,12 @@ void lspcon_read_infoframe(struct intel_encoder *enc=
oder,
>  			   unsigned int type,
>  			   void *frame, ssize_t len)
>  {
> -	/* FIXME implement this */
> +	/* FIXME implement for AVI Infoframe as well */
> +	if (type =3D=3D HDMI_PACKET_TYPE_GAMUT_METADATA) {
> +		drm_dbg_kms(encoder->base.dev, "Read HDR metadata for lspcon\n");

Looks like pointless noise in debug logs.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +		hsw_read_infoframe(encoder, crtc_state, type,
> +				   frame, len);
> +	}
>  }
>  =

>  void lspcon_set_infoframes(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/dr=
m/i915/display/intel_lspcon.h
> index 42ccb21c908f..d622156d0c4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -37,5 +37,9 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>  			 const struct intel_crtc_state *crtc_state,
>  			 unsigned int type,
>  			 const void *frame, ssize_t len);
> +void hsw_read_infoframe(struct intel_encoder *encoder,
> +			const struct intel_crtc_state *crtc_state,
> +			unsigned int type,
> +			void *frame, ssize_t len);
>  =

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
