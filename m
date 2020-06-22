Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFA3203F18
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 20:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B4036E303;
	Mon, 22 Jun 2020 18:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C30B26E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 18:25:10 +0000 (UTC)
IronPort-SDR: 5pESzhDefk2Hdlg9AxgZk6SIhhDcf+TJ6WgEvUNcrRBcYgcxcLuaO8g0BMbA/6X+njdxO3M3b1
 9K/kxPnQWNKw==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="124116915"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="124116915"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 11:25:09 -0700
IronPort-SDR: 2EheGwQHllIFnLWD9OHTvklHNWmGzu5z8nbDzniWWKYNsfaXoTgsvDHS989YZdakaapF02SZMg
 65fDUbNSv4zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="353545228"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga001.jf.intel.com with ESMTP; 22 Jun 2020 11:25:08 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 11:25:08 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.234]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.53]) with mapi id 14.03.0439.000;
 Mon, 22 Jun 2020 23:55:05 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v3 6/8] drm/i915/display: Implement infoframes readback for
 LSPCON
Thread-Index: AQHWP1bx/wUxv0hg90aV/S8mR5DuTqjTNCkAgAAEAwCABvGl8P//qRaAgABdDwCACmMGkIAAAAkAgABeCKD//6yBAIAAZ7ow
Date: Mon, 22 Jun 2020 18:25:04 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8256D4B7@BGSMSX104.gar.corp.intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
 <20200610191232.11620-7-uma.shankar@intel.com>
 <20200611154650.GB6112@intel.com> <20200611160112.GC6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F3E0@BGSMSX104.gar.corp.intel.com>
 <20200615205233.GS6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F444@BGSMSX104.gar.corp.intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8256CDCF@BGSMSX104.gar.corp.intel.com>
 <20200622170246.GP6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8256D2B9@BGSMSX104.gar.corp.intel.com>
 <20200622174028.GR6112@intel.com>
In-Reply-To: <20200622174028.GR6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, June 22, 2020 11:10 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com; Mun, Gw=
an-
> gyeong <gwan-gyeong.mun@intel.com>
> Subject: Re: [v3 6/8] drm/i915/display: Implement infoframes readback for
> LSPCON
> =

> On Mon, Jun 22, 2020 at 05:17:50PM +0000, Shankar, Uma wrote:
> >
> > > > > > > > -----Original Message-----
> > > > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > > Sent: Thursday, June 11, 2020 9:31 PM
> > > > > > > > To: Shankar, Uma <uma.shankar@intel.com>
> > > > > > > > Cc: intel-gfx@lists.freedesktop.org;
> > > > > > > > jani.nikula@linux.intel.com; Mun, Gwan- gyeong
> > > > > > > > <gwan-gyeong.mun@intel.com>
> > > > > > > > Subject: Re: [v3 6/8] drm/i915/display: Implement
> > > > > > > > infoframes readback for LSPCON
> > > > > > > >
> > > > > > > > On Thu, Jun 11, 2020 at 06:46:50PM +0300, Ville Syrj=E4l=E4=
 wrote:
> > > > > > > > > On Thu, Jun 11, 2020 at 12:42:30AM +0530, Uma Shankar wro=
te:
> > > > > > > > > > Implemented Infoframes enabled readback for LSPCON devi=
ces.
> > > > > > > > > > This will help align the implementation with state
> > > > > > > > > > readback infrastructure.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > > > > > > > ---
> > > > > > > > > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 63
> > > > > > > > > > ++++++++++++++++++++-
> > > > > > > > > >  1 file changed, 61 insertions(+), 2 deletions(-)
> > > > > > > > > >
> > > > > > > > > > diff --git
> > > > > > > > > > a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > > > > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > > > > > index 9034ce6f20b9..0ebe9a700291 100644
> > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > > > > > @@ -576,11 +576,70 @@ void
> > > > > > > > > > lspcon_set_infoframes(struct intel_encoder
> > > > > > > > *encoder,
> > > > > > > > > >  				  buf, ret);
> > > > > > > > > >  }
> > > > > > > > > >
> > > > > > > > > > +static bool
> > > > > > > > > > +_lspcon_read_avi_infoframe_enabled_mca(struct
> > > > > > > > > > +drm_dp_aux *aux) {
> > > > > > > > > > +	int ret;
> > > > > > > > > > +	u32 val =3D 0;
> > > > > > > > > > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > > > > > > > > > +
> > > > > > > > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > > > > > > > +	if (ret < 0) {
> > > > > > > > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n",
> reg);
> > > > > > > > > > +		return false;
> > > > > > > > > > +	}
> > > > > > > > > > +
> > > > > > > > > > +	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
> > > > > > > > > > +		return true;
> > > > > > > > > > +
> > > > > > > > > > +	return false;
> > > > > > > > >
> > > > > > > > > return val & ...;
> > > > > > > > >
> > > > > > > > > > +}
> > > > > > > > > > +
> > > > > > > > > > +static bool
> > > > > > > > > > +_lspcon_read_avi_infoframe_enabled_parade(struct
> > > > > > > > > > +drm_dp_aux *aux) {
> > > > > > > > > > +	int ret;
> > > > > > > > > > +	u32 val =3D 0;
> > > > > > > > > > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > > > > > > > > > +
> > > > > > > > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > > > > > > > +	if (ret < 0) {
> > > > > > > > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n",
> reg);
> > > > > > > > > > +		return false;
> > > > > > > > > > +	}
> > > > > > > > > > +
> > > > > > > > > > +	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
> > > > > > > > > > +		return true;
> > > > > > > > > > +
> > > > > > > > > > +	return false;
> > > > > > > > > > +}
> > > > > > > > > > +
> > > > > > > > > >  u32 lspcon_infoframes_enabled(struct intel_encoder *en=
coder,
> > > > > > > > > >  			      const struct intel_crtc_state
> *pipe_config)  {
> > > > > > > > > > -	/* FIXME actually read this from the hw */
> > > > > > > > > > -	return 0;
> > > > > > > > > > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder=
);
> > > > > > > > > > +	struct intel_lspcon *lspcon =3D
> enc_to_intel_lspcon(encoder);
> > > > > > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder-
> >base.dev);
> > > > > > > > > > +	bool infoframes_enabled;
> > > > > > > > > > +	u32 mask =3D 0;
> > > > > > > > > > +	u32 val;
> > > > > > > > > > +
> > > > > > > > > > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > > > > > > > > > +		infoframes_enabled =3D
> > > > > > > > _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > > > > > > > > > +	else
> > > > > > > > > > +		infoframes_enabled =3D
> > > > > > > > > > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->
> > > > > > > > > > +aux)
> > > > > > > > > > +;
> > > > > > > > > > +
> > > > > > > > > > +	if (infoframes_enabled)
> > > > > > > > > > +		return true;
> > > > > > > > >
> > > > > > > > > This is supposed to return a bitmask of all enabled infof=
rames.
> > > > > > >
> > > > > > > > Actually since we're dealing with both the LSPCON specific
> > > > > > > > stuff and DIP stuff for the DRM infoframe I think we
> > > > > > > > should stop using using intel_hdmi_infoframes_enabled(),
> > > > > > > > and instead provide a LSPCON specific replacement for it.
> > > > > > > > That way we can directly return the abstract bitmask
> > > > > > > > instead of pretending to return a bitmask of
> > > > > the DIP bits.
> > > >
> > > > We have DP (VSC etc) packets also managed as HDMI infoframes only.
> > > > We can keep the same with bitmask as VIDEO_DIP_ENABLE_AVI_HSW for
> > > > AVI and similarly VIDEO_DIP_ENABLE_GMP_HSW for DRM (HDR metadata).
> > > > This will
> > > help all the helper align appropriately even in the intel_dump_pipe_c=
onfig.
> > >
> > > intel_dump_infoframe() does not use any platform specific bitmasks.
> > > So I don't understand what you're talking about here.
> >
> > What I meant is that if we continue to use the existing values and
> > bitmask, we can have lspcon infoframes_enabled return the appropriate
> > type of infoframe which is active (as you suggested) and later with
> > intel_dump_pipe_config when it checks for intel_hdmi_infoframe_enable, =
we
> will get a matching value in pipe_config->infoframes.enable and be able t=
o dump
> them as well. Hope I am on same page with you here.
> =

> Still don't really get  what you're saying.
> =

> What I am saying is we have something like:
> =

> intel_lspcon_infoframes_enabled()
> {
> 	u32 enabled =3D 0;
> =

> 	if (lspcon_avi_enabled)
> 		enabled |=3D
> intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> =

> 	if (dip_gmp_enabled)
> 		enabled |=3D
> intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> =

> 	return enabled;
> }
> =

> Or I suppose we could even do something like:
> =

> intel_lspcon_infoframes_enabled()
> {
> 	u32 enabled =3D intel_hdmi_infoframes_enabled();
> =

> 	if (lspcon_avi_enabled)
> 		enabled |=3D
> intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> =

> 	return enabled;
> }
> =

> which would be more future proof if we start to use any other DIP stuff.

Got the point now, thanks Ville for patiently clarifying. Will incorporate =
this and send out
the next version.

Regards,
Uma Shankar

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
