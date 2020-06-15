Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 453961FA205
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 22:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BA96E506;
	Mon, 15 Jun 2020 20:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 675C16E506
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 20:52:38 +0000 (UTC)
IronPort-SDR: mGuRBuWRCsQ58jyimBoj+q+HPKX91pFplYanyobchEZTffbBEthty/0sbMvzEgvevuH96j881Y
 DoL7MnkDG/JA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 13:52:37 -0700
IronPort-SDR: n8P9tPaaUSvSn+1zxVQqymKiCV3mYRglMpSjhJKF8ZZM28XEZwotSYnlbZvU5ceQLjUeWMKQH/
 MqXL1VXGNi1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,516,1583222400"; d="scan'208";a="261916239"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 15 Jun 2020 13:52:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 15 Jun 2020 23:52:33 +0300
Date: Mon, 15 Jun 2020 23:52:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20200615205233.GS6112@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
 <20200610191232.11620-7-uma.shankar@intel.com>
 <20200611154650.GB6112@intel.com> <20200611160112.GC6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F3E0@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F3E0@BGSMSX104.gar.corp.intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 15, 2020 at 08:39:55PM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Thursday, June 11, 2020 9:31 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Mun, =
Gwan-
> > gyeong <gwan-gyeong.mun@intel.com>
> > Subject: Re: [v3 6/8] drm/i915/display: Implement infoframes readback f=
or
> > LSPCON
> > =

> > On Thu, Jun 11, 2020 at 06:46:50PM +0300, Ville Syrj=E4l=E4 wrote:
> > > On Thu, Jun 11, 2020 at 12:42:30AM +0530, Uma Shankar wrote:
> > > > Implemented Infoframes enabled readback for LSPCON devices.
> > > > This will help align the implementation with state readback
> > > > infrastructure.
> > > >
> > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 63
> > > > ++++++++++++++++++++-
> > > >  1 file changed, 61 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > index 9034ce6f20b9..0ebe9a700291 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > @@ -576,11 +576,70 @@ void lspcon_set_infoframes(struct intel_encod=
er
> > *encoder,
> > > >  				  buf, ret);
> > > >  }
> > > >
> > > > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct
> > > > +drm_dp_aux *aux) {
> > > > +	int ret;
> > > > +	u32 val =3D 0;
> > > > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > > > +
> > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > +	if (ret < 0) {
> > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > > +		return false;
> > > > +	}
> > > > +
> > > > +	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
> > > > +		return true;
> > > > +
> > > > +	return false;
> > >
> > > return val & ...;
> > >
> > > > +}
> > > > +
> > > > +static bool _lspcon_read_avi_infoframe_enabled_parade(struct
> > > > +drm_dp_aux *aux) {
> > > > +	int ret;
> > > > +	u32 val =3D 0;
> > > > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > > > +
> > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > +	if (ret < 0) {
> > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > > +		return false;
> > > > +	}
> > > > +
> > > > +	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
> > > > +		return true;
> > > > +
> > > > +	return false;
> > > > +}
> > > > +
> > > >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > > >  			      const struct intel_crtc_state *pipe_config)  {
> > > > -	/* FIXME actually read this from the hw */
> > > > -	return 0;
> > > > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > > +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > > +	bool infoframes_enabled;
> > > > +	u32 mask =3D 0;
> > > > +	u32 val;
> > > > +
> > > > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > > > +		infoframes_enabled =3D
> > _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > > > +	else
> > > > +		infoframes_enabled =3D
> > > > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
> > > > +
> > > > +	if (infoframes_enabled)
> > > > +		return true;
> > >
> > > This is supposed to return a bitmask of all enabled infoframes.
> =

> > Actually since we're dealing with both the LSPCON specific stuff and DI=
P stuff for
> > the DRM infoframe I think we should stop using using
> > intel_hdmi_infoframes_enabled(), and instead provide a LSPCON specific
> > replacement for it. That way we can directly return the abstract bitmas=
k instead
> > of pretending to return a bitmask of the DIP bits.
> =

> Sure,  will fix this and resend the next version.
> =

> > >
> > > Also my question "how do we turn off infoframes once enabled?"
> > > from
> > > https://patchwork.freedesktop.org/patch/351719/?series=3D72928&rev=3D1
> > > still remains unanswered...
> =

> For the AVI infoframe we generally compute and change the respective valu=
es. If no change is
> requested and computed we can let the existing infoframes be transmitted.=
 AFAIK there is no
> mechanism called out, to explicitly disable this on Lspcon. Have not seen=
 any issues due to this,
> so hoping that it may be safe even if they are enabled.

It's not valid to transmit infoframes to DVI sinks.

> =

> I am planning to take your patch from the series and float along with thi=
s series, adding check for DRM
> Infoframes also. Hope that is ok ?
> =

> Thanks Ville for your feedback.
> =

> Regards,
> Uma Shankar
> =

> > > > +
> > > > +	if (lspcon->hdr_supported) {
> > > > +		val =3D intel_de_read(dev_priv,
> > > > +				    HSW_TVIDEO_DIP_CTL(pipe_config-
> > >cpu_transcoder));
> > > > +		mask |=3D VIDEO_DIP_ENABLE_GMP_HSW;
> > > > +
> > > > +		if (val & mask)
> > > > +			return val & mask;
> > > > +	}
> > > > +
> > > > +	return false;
> > > >  }
> > > >
> > > >  void lspcon_resume(struct intel_lspcon *lspcon)
> > > > --
> > > > 2.22.0
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
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
