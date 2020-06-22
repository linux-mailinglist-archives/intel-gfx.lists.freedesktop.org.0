Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCD920360C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 13:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC90F6E0A6;
	Mon, 22 Jun 2020 11:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B516E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 11:45:04 +0000 (UTC)
IronPort-SDR: 4lQksS6QWjXkw5iXuzFhtNONOP8FQo5DHn+ddxsIiaJjdbiw3sMh2GeuNOWo4e5n3cAb4uBcAk
 7GhDf4jvvTTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="141238987"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="141238987"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 04:45:02 -0700
IronPort-SDR: KbT+zbm3BpskDkr9F/c6OcXpedIk1ji4mU1Po2dk77X/BsrdwdZQ57NRStk6ww+AtMeMDrm/04
 qti9LojjLuPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="310090966"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 22 Jun 2020 04:45:01 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 04:45:01 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 22 Jun 2020 04:45:01 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.234]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.185]) with mapi id 14.03.0439.000;
 Mon, 22 Jun 2020 17:14:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v3 6/8] drm/i915/display: Implement infoframes readback for
 LSPCON
Thread-Index: AQHWP1bx/wUxv0hg90aV/S8mR5DuTqjTNCkAgAAEAwCABvGl8P//qRaAgABdDwCACmMGkA==
Date: Mon, 22 Jun 2020 11:44:58 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8256CDCF@BGSMSX104.gar.corp.intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
 <20200610191232.11620-7-uma.shankar@intel.com>
 <20200611154650.GB6112@intel.com> <20200611160112.GC6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F3E0@BGSMSX104.gar.corp.intel.com>
 <20200615205233.GS6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F444@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F8255F444@BGSMSX104.gar.corp.intel.com>
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


> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Sent: Thursday, June 11, 2020 9:31 PM
> > > > To: Shankar, Uma <uma.shankar@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; jani.nikula@linux.intel.com;
> > > > Mun, Gwan- gyeong <gwan-gyeong.mun@intel.com>
> > > > Subject: Re: [v3 6/8] drm/i915/display: Implement infoframes
> > > > readback for LSPCON
> > > >
> > > > On Thu, Jun 11, 2020 at 06:46:50PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > > On Thu, Jun 11, 2020 at 12:42:30AM +0530, Uma Shankar wrote:
> > > > > > Implemented Infoframes enabled readback for LSPCON devices.
> > > > > > This will help align the implementation with state readback
> > > > > > infrastructure.
> > > > > >
> > > > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_lspcon.c | 63
> > > > > > ++++++++++++++++++++-
> > > > > >  1 file changed, 61 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > index 9034ce6f20b9..0ebe9a700291 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> > > > > > @@ -576,11 +576,70 @@ void lspcon_set_infoframes(struct
> > > > > > intel_encoder
> > > > *encoder,
> > > > > >  				  buf, ret);
> > > > > >  }
> > > > > >
> > > > > > +static bool _lspcon_read_avi_infoframe_enabled_mca(struct
> > > > > > +drm_dp_aux *aux) {
> > > > > > +	int ret;
> > > > > > +	u32 val =3D 0;
> > > > > > +	u16 reg =3D LSPCON_MCA_AVI_IF_CTRL;
> > > > > > +
> > > > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > > > +	if (ret < 0) {
> > > > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > > > > +		return false;
> > > > > > +	}
> > > > > > +
> > > > > > +	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
> > > > > > +		return true;
> > > > > > +
> > > > > > +	return false;
> > > > >
> > > > > return val & ...;
> > > > >
> > > > > > +}
> > > > > > +
> > > > > > +static bool _lspcon_read_avi_infoframe_enabled_parade(struct
> > > > > > +drm_dp_aux *aux) {
> > > > > > +	int ret;
> > > > > > +	u32 val =3D 0;
> > > > > > +	u16 reg =3D LSPCON_PARADE_AVI_IF_CTRL;
> > > > > > +
> > > > > > +	ret =3D drm_dp_dpcd_read(aux, reg, &val, 1);
> > > > > > +	if (ret < 0) {
> > > > > > +		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
> > > > > > +		return false;
> > > > > > +	}
> > > > > > +
> > > > > > +	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
> > > > > > +		return true;
> > > > > > +
> > > > > > +	return false;
> > > > > > +}
> > > > > > +
> > > > > >  u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
> > > > > >  			      const struct intel_crtc_state *pipe_config)  {
> > > > > > -	/* FIXME actually read this from the hw */
> > > > > > -	return 0;
> > > > > > +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > > > > > +	struct intel_lspcon *lspcon =3D enc_to_intel_lspcon(encoder);
> > > > > > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.d=
ev);
> > > > > > +	bool infoframes_enabled;
> > > > > > +	u32 mask =3D 0;
> > > > > > +	u32 val;
> > > > > > +
> > > > > > +	if (lspcon->vendor =3D=3D LSPCON_VENDOR_MCA)
> > > > > > +		infoframes_enabled =3D
> > > > _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
> > > > > > +	else
> > > > > > +		infoframes_enabled =3D
> > > > > > +_lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
> > > > > > +
> > > > > > +	if (infoframes_enabled)
> > > > > > +		return true;
> > > > >
> > > > > This is supposed to return a bitmask of all enabled infoframes.
> > >
> > > > Actually since we're dealing with both the LSPCON specific stuff
> > > > and DIP stuff for the DRM infoframe I think we should stop using
> > > > using intel_hdmi_infoframes_enabled(), and instead provide a
> > > > LSPCON specific replacement for it. That way we can directly
> > > > return the abstract bitmask instead of pretending to return a bitma=
sk of
> the DIP bits.

We have DP (VSC etc) packets also managed as HDMI infoframes only. We can k=
eep the
same with bitmask as VIDEO_DIP_ENABLE_AVI_HSW for AVI and similarly VIDEO_D=
IP_ENABLE_GMP_HSW
for DRM (HDR metadata). This will help all the helper align appropriately e=
ven in the intel_dump_pipe_config.

Will fix this accordingly and send the next version. Hope this is ok.

> > > Sure,  will fix this and resend the next version.
> > >
> > > > >
> > > > > Also my question "how do we turn off infoframes once enabled?"
> > > > > from
> > > > > https://patchwork.freedesktop.org/patch/351719/?series=3D72928&rev
> > > > > =3D1
> > > > > still remains unanswered...
> > >
> > > For the AVI infoframe we generally compute and change the respective
> > > values. If no change is requested and computed we can let the
> > > existing infoframes be transmitted. AFAIK there is no mechanism
> > > called out, to explicitly disable this on Lspcon. Have not seen any
> > > issues due to this, so
> > hoping that it may be safe even if they are enabled.
> >
> > It's not valid to transmit infoframes to DVI sinks.
> =

> With your fix, we won't be enabling or setting the infoframe on DVI sinks.
> If I understand correctly, we may have issue if we connect HDMI (where we
> would have sent the infoframe) and later unplug and plug a DVI sink. With
> unplug if Lspcon is not resetting this internally then this will be a pro=
blem. I will
> try to get this information on Lspcon behavior.

Hi Ville,
Searched various docs on LSPCON and couldn't find any mention of disabling =
infoframe.
Reached out to few folks who were interfacing with Lspcon vendors and got t=
his finally
clarified.  The expectation is that LSPCON will reset stuff on unplug and w=
ill not send infoframes to DVI sink,
so from source side we don't need to explicitly disable them. Lspcon will t=
ake care of this, this was
tested for compliance as well by them.

I will share the updated series adding your patch stopping infoframes to be=
 sent to DVI sinks.
Please review the same.

Thank & Regards,
Uma Shankar
 =

> > >
> > > I am planning to take your patch from the series and float along
> > > with this series, adding check for DRM Infoframes also. Hope that is =
ok ?
> > >
> > > Thanks Ville for your feedback.
> > >
> > > Regards,
> > > Uma Shankar
> > >
> > > > > > +
> > > > > > +	if (lspcon->hdr_supported) {
> > > > > > +		val =3D intel_de_read(dev_priv,
> > > > > > +				    HSW_TVIDEO_DIP_CTL(pipe_config-
> > > > >cpu_transcoder));
> > > > > > +		mask |=3D VIDEO_DIP_ENABLE_GMP_HSW;
> > > > > > +
> > > > > > +		if (val & mask)
> > > > > > +			return val & mask;
> > > > > > +	}
> > > > > > +
> > > > > > +	return false;
> > > > > >  }
> > > > > >
> > > > > >  void lspcon_resume(struct intel_lspcon *lspcon)
> > > > > > --
> > > > > > 2.22.0
> > > > >
> > > > > --
> > > > > Ville Syrj=E4l=E4
> > > > > Intel
> > > >
> > > > --
> > > > Ville Syrj=E4l=E4
> > > > Intel
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
