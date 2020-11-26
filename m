Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3806B2C5CE3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:11:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C7FB6E9D1;
	Thu, 26 Nov 2020 20:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD6356E997
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:11:17 +0000 (UTC)
IronPort-SDR: FDjAxJatxYldryUFa6TyU4+COOl2ZZkAarLpRwpliARPkb99m+simueYZ14bcBZbdJotE7u9YE
 Tx+06mquHTcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="172420454"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="172420454"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:11:17 -0800
IronPort-SDR: 9/q8aGgHh72sQQs0BzZmKG54l3srFX3NMx4N1rFaT6unULlMBbBg0TUp50kk1yxQCDtyUPEhXH
 KsVsZEas8yIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="314114212"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 26 Nov 2020 12:11:16 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Nov 2020 12:11:16 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 01:41:13 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 01:41:13 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v11 09/13] drm/i915/display: Implement infoframes readback for
 LSPCON
Thread-Index: AQHWw8eOSstCD7Ei90uQ9M0sgfosAKnaP5MAgAAUPICAAIT+UA==
Date: Thu, 26 Nov 2020 20:11:13 +0000
Message-ID: <72df0b77384e417cb5e2c352e4df1fc2@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
 <20201126081445.29759-10-uma.shankar@intel.com>
 <20201126163202.GI6112@intel.com> <20201126174427.GK6112@intel.com>
In-Reply-To: <20201126174427.GK6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v11 09/13] drm/i915/display: Implement infoframes
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
> Sent: Thursday, November 26, 2020 11:14 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v11 09/13] drm/i915/display: Implement infoframes readback =
for
> LSPCON
> =

> On Thu, Nov 26, 2020 at 06:32:02PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Nov 26, 2020 at 01:44:41PM +0530, Uma Shankar wrote:
> > > Implemented Infoframes enabled readback for LSPCON devices.
> > > This will help align the implementation with state readback
> > > infrastructure.
> > >
> > > v2: Added proper bitmask of enabled infoframes as per Ville's
> > > recommendation.
> > >
> > > v3: Added pcon specific infoframe types instead of using the HSW
> > > one's, as recommended by Ville.
> > >
> > > v4: Addressed Ville's review comment by adding HDMI infoframe
> > > versions directly instead of DIP wrappers.
> > >
> > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 57
> > > ++++++++++++++++++++-
> > >  1 file changed, 55 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > index 1d3dffade168..4f3c4943e918 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > @@ -574,11 +574,64 @@ void lspcon_set_infoframes(struct intel_encoder
> *encoder,
> > >  				  buf, ret);
> > >  }
> > >
> > > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct
> > > +drm_dp_aux *aux) {
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
> _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > > +	else
> > > +		infoframes_enabled =3D
> > > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
> > > +
> > > +	if (infoframes_enabled)
> > > +		val |=3D
> intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_AVI);
> > > +
> > > +	if (lspcon->hdr_supported) {
> > > +		tmp =3D intel_de_read(dev_priv,
> > > +				    HSW_TVIDEO_DIP_CTL(pipe_config-
> >cpu_transcoder));
> > > +		mask =3D VIDEO_DIP_ENABLE_GMP_HSW;
> > > +
> > > +		if (tmp & mask)
> > > +			val |=3D
> intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
> > > +	}
> > > +
> > > +	return val;
> > >  }
> >
> > This seem broken until patch 10 which avoids the
> =

> Actually, make that patch 11

Yeah, Sure will re-order the changes.

> > remapping from DIP bits to the index. With some reordering of the
> > patches this seems good.
> >
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > >  void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
> > > --
> > > 2.26.2
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
