Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8071F6BC5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 18:01:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8116E8CF;
	Thu, 11 Jun 2020 16:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829BB6E83E
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 16:01:19 +0000 (UTC)
IronPort-SDR: KykXP0KXPbXAG6CBE/1gjghXApYmHkDICRZG+/i0zGW9nRGYWqF9CmnP0yXQ2FJdJS8f5UYlaV
 wIofbn/2+wPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 09:01:18 -0700
IronPort-SDR: J6k6gczstKBJxePPmJDiSYC8Y5lb4ouA2Veq7qQf97QfkXY+Zt+t8Bd+XsFlVykYd2vE/EaHhb
 M3y0NQh50bpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="275376912"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Jun 2020 09:01:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Jun 2020 19:01:12 +0300
Date: Thu, 11 Jun 2020 19:01:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20200611160112.GC6112@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
 <20200610191232.11620-7-uma.shankar@intel.com>
 <20200611154650.GB6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611154650.GB6112@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v3 6/8] drm/i915/display: Implement infoframes
 readback for LSPCON
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

On Thu, Jun 11, 2020 at 06:46:50PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Jun 11, 2020 at 12:42:30AM +0530, Uma Shankar wrote:
> > Implemented Infoframes enabled readback for LSPCON devices.
> > This will help align the implementation with state readback
> > infrastructure.
> > =

> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_lspcon.c | 63 ++++++++++++++++++++-
> >  1 file changed, 61 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/=
drm/i915/display/intel_lspcon.c
> > index 9034ce6f20b9..0ebe9a700291 100644
> > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > @@ -576,11 +576,70 @@ void lspcon_set_infoframes(struct intel_encoder *=
encoder,
> >  				  buf, ret);
> >  }
> >  =

> > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux *=
aux)
> > +{
> > +	int ret;
> > +	u32 val =3D 0;
> > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > +
> > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > +	if (ret < 0) {
> > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > +		return false;
> > +	}
> > +
> > +	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
> > +		return true;
> > +
> > +	return false;
> =

> return val & ...;
> =

> > +}
> > +
> > +static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_au=
x *aux)
> > +{
> > +	int ret;
> > +	u32 val =3D 0;
> > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > +
> > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > +	if (ret < 0) {
> > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > +		return false;
> > +	}
> > +
> > +	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
> > +		return true;
> > +
> > +	return false;
> > +}
> > +
> >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> >  			      const struct intel_crtc_state *pipe_config)
> >  {
> > -	/* FIXME actually read this from the hw */
> > -	return 0;
> > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	bool infoframes_enabled;
> > +	u32 mask =3D 0;
> > +	u32 val;
> > +
> > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_mca(&intel=
_dp->aux);
> > +	else
> > +		infoframes_enabled =3D _lspcon_read_avi_infoframe_enabled_parade(&in=
tel_dp->aux);
> > +
> > +	if (infoframes_enabled)
> > +		return true;
> =

> This is supposed to return a bitmask of all enabled infoframes.

Actually since we're dealing with both the LSPCON specific stuff and
DIP stuff for the DRM infoframe I think we should stop using using
intel_hdmi_infoframes_enabled(), and instead provide a LSPCON specific
replacement for it. That way we can directly return the abstract
bitmask instead of pretending to return a bitmask of the DIP bits.

> =

> Also my question "how do we turn off infoframes once enabled?"
> from https://patchwork.freedesktop.org/patch/351719/?series=3D72928&rev=
=3D1
> still remains unanswered...
> =

> > +
> > +	if (lspcon->hdr_supported) {
> > +		val =3D intel_de_read(dev_priv,
> > +				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
> > +		mask |=3D VIDEO_DIP_ENABLE_GMP_HSW;
> > +
> > +		if (val & mask)
> > +			return val & mask;
> > +	}
> > +
> > +	return false;
> >  }
> >  =

> >  void lspcon_resume(struct intel_lspcon *lspcon)
> > -- =

> > 2.22.0
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
