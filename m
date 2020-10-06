Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E49D2848FD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF7889BE8;
	Tue,  6 Oct 2020 09:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3D989BE8
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:09:18 +0000 (UTC)
IronPort-SDR: f0s5oXhDaPlSWO4OpXddJczzMnR/zar5WckJR7rhe5hJLCPMRHli7wUWZ0D/oVN26NXRHmalwn
 7mpFfrUVqdaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161800677"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="161800677"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:09:18 -0700
IronPort-SDR: NCi3FRdzN+lwAUVObeTCRMvXfyjIeMzImXUGjbk5aDMNxQLInaQuwJo7uTlLvo9lA0vrj+i8gF
 h1p+SuhD8V4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="353393487"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2020 02:09:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Oct 2020 12:09:15 +0300
Date: Tue, 6 Oct 2020 12:09:15 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20201006090915.GU6112@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
 <20200914210047.11972-7-uma.shankar@intel.com>
 <20200929162038.GD6112@intel.com>
 <5b36dcf01f524edd8c95f363478fab20@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b36dcf01f524edd8c95f363478fab20@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v6 06/11] drm/i915/display: Implement infoframes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 05, 2020 at 09:36:35PM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Tuesday, September 29, 2020 9:51 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: Re: [v6 06/11] drm/i915/display: Implement infoframes readback=
 for
> > LSPCON
> > =

> > On Tue, Sep 15, 2020 at 02:30:42AM +0530, Uma Shankar wrote:
> > > Implemented Infoframes enabled readback for LSPCON devices.
> > > This will help align the implementation with state readback
> > > infrastructure.
> > >
> > > v2: Added proper bitmask of enabled infoframes as per Ville's
> > > recommendation.
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 57
> > > ++++++++++++++++++++-
> > >  1 file changed, 55 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > index 60863b825cc5..565913b8e656 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > @@ -576,11 +576,64 @@ void lspcon_set_infoframes(struct intel_encoder
> > *encoder,
> > >  				  buf, ret);
> > >  }
> > >
> > > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux
> > > +*aux) {
> > > +	int ret;
> > > +	u32 val =3D 0;
> > > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > > +
> > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > +	if (ret < 0) {
> > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > +		return false;
> > > +	}
> > > +
> > > +	return val & LSPCON_MCA_AVI_IF_KICKOFF; }
> > > +
> > > +static bool _lspcon_read_avi_infoframe_enabled_parade(struct
> > > +drm_dp_aux *aux) {
> > > +	int ret;
> > > +	u32 val =3D 0;
> > > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > > +
> > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > +	if (ret < 0) {
> > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > +		return false;
> > > +	}
> > > +
> > > +	return val & LSPCON_PARADE_AVI_IF_KICKOFF; }
> > > +
> > >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > >  			      const struct intel_crtc_state *pipe_config)  {
> > > -	/* FIXME actually read this from the hw */
> > > -	return 0;
> > > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +	bool infoframes_enabled;
> > > +	u32 val =3D 0;
> > > +	u32 mask, tmp;
> > > +
> > > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > > +		infoframes_enabled =3D
> > _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > > +	else
> > > +		infoframes_enabled =3D
> > > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
> > > +
> > > +	if (infoframes_enabled)
> > > +		val |=3D VIDEO_DIP_ENABLE_AVI_HSW;
> > =

> > Still not a fan of abusing the HSW specific reg values here.
> =

> I just kept it so that rest of the infrastructure can be re-used easily. =
So the AVI and GMP
> bit fields will get re-used and will not require any separate handling.

Using the abstract infoframe types wouldn't prevent that.

> =

> > > +
> > > +	if (lspcon->hdr_supported) {
> > > +		tmp =3D intel_de_read(dev_priv,
> > > +				    HSW_TVIDEO_DIP_CTL(pipe_config-
> > >cpu_transcoder));
> > > +		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> > > +
> > > +		if (tmp & mask)
> > > +			val |=3D mask;
> > > +	}
> > > +
> > > +	return val;
> > >  }
> > >
> > >  void lspcon_resume(struct intel_lspcon *lspcon)
> > > --
> > > 2.26.2
> > =

> > --
> > Ville Syrj=E4l=E4
> > Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
