Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6144219FE4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:20:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9A96EA5A;
	Thu,  9 Jul 2020 12:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D37A6E42E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:20:12 +0000 (UTC)
IronPort-SDR: wnEMPOros+pHF0Pslo4BNddlZDH6gI4vhOunVzmHd70ar/x34+2/9Ly7i4Kl13ITR19d5r/FKA
 dEf0j4qbtPAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="127567086"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="127567086"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 05:20:11 -0700
IronPort-SDR: t89akfUBR9HSeVj2/nmqjYhFZVsOSXDEX9LKbzUOh6zgfbEqVXlvXLOsUmEV9aahEd8N9Urfgp
 05PlojiQftmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="298054102"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Jul 2020 05:20:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 15:20:08 +0300
Date: Thu, 9 Jul 2020 15:20:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200709122008.GZ6112@intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-7-ville.syrjala@linux.intel.com>
 <20200709114710.GD16776@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709114710.GD16776@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/sdvo: Make SDVO deal with HDMI
 pixel repeat
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

On Thu, Jul 09, 2020 at 02:47:10PM +0300, Imre Deak wrote:
> On Wed, Jan 08, 2020 at 08:12:40PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > With SDVO the pipe config pixel_multiplier only concerns itself with the
> > data on the SDVO bus. Any HDMI specific pixel repeat must be handled by
> > the SDVO device itself. To do that simply configure the SDVO pixel
> > replication factor appropriately. We already set up the infoframe PRB
> > values correctly via the infoframe helpers.
> > =

> > There is no cap we can check for this. The spec says that 1X,2X,4X are
> > mandatory, anything else is optional. 1X and 2X are all we need so
> > we should be able to assume they work.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Imre Deak <imre.deak@intel.com>
> =

> Shouldn't DRM_MODE_FLAG_DBLCLK be set for the read-out mode in
> intel_sdvo_get_config()?

Apparently we don't do that for HDMI either, and we don't check
it it in intel_pipe_config_compare() either. I guess we could add
the readout+check. =


Although I've been actually tempted to just remove this flag
entirely since it only really should be set to boost the clock
above the magic 25MHz limit. Hmm, now I wonder if that limit
is about the TMDS clock or the dotclock actually. Would need to
read the spec once again. Anyways, the reason why I haven't
deprecated this flag yet is that IIRC some other drivers was
also  using it for other purposes, and I was too lazy to figure
out what's going on there.

> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_sdvo.c | 27 +++++++++++++++++++----
> >  1 file changed, 23 insertions(+), 4 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/dr=
m/i915/display/intel_sdvo.c
> > index a0bbd728aa54..34d5bd750de8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> > @@ -943,6 +943,13 @@ static bool intel_sdvo_set_colorimetry(struct inte=
l_sdvo *intel_sdvo,
> >  	return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_COLORIMETRY, &mo=
de, 1);
> >  }
> >  =

> > +static bool intel_sdvo_set_pixel_replication(struct intel_sdvo *intel_=
sdvo,
> > +					     u8 pixel_repeat)
> > +{
> > +	return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_PIXEL_REPLI,
> > +				    &pixel_repeat, 1);
> > +}
> > +
> >  static bool intel_sdvo_set_audio_state(struct intel_sdvo *intel_sdvo,
> >  				       u8 audio_state)
> >  {
> > @@ -1493,6 +1500,9 @@ static void intel_sdvo_pre_enable(struct intel_en=
coder *intel_encoder,
> >  					   SDVO_COLORIMETRY_RGB220 :
> >  					   SDVO_COLORIMETRY_RGB256);
> >  		intel_sdvo_set_avi_infoframe(intel_sdvo, crtc_state);
> > +		intel_sdvo_set_pixel_replication(intel_sdvo,
> > +						 !!(adjusted_mode->flags &
> > +						    DRM_MODE_FLAG_DBLCLK));
> >  	} else
> >  		intel_sdvo_set_encode(intel_sdvo, SDVO_ENCODE_DVI);
> >  =

> > @@ -1839,17 +1849,26 @@ intel_sdvo_mode_valid(struct drm_connector *con=
nector,
> >  	struct intel_sdvo_connector *intel_sdvo_connector =3D
> >  		to_intel_sdvo_connector(connector);
> >  	int max_dotclk =3D to_i915(connector->dev)->max_dotclk_freq;
> > +	bool has_hdmi_sink =3D intel_has_hdmi_sink(intel_sdvo, connector->sta=
te);
> > +	int clock =3D mode->clock;
> >  =

> >  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return MODE_NO_DBLESCAN;
> >  =

> > -	if (intel_sdvo->pixel_clock_min > mode->clock)
> > -		return MODE_CLOCK_LOW;
> >  =

> > -	if (intel_sdvo->pixel_clock_max < mode->clock)
> > +	if (clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >  =

> > -	if (mode->clock > max_dotclk)
> > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
> > +		if (!has_hdmi_sink)
> > +			return MODE_CLOCK_LOW;
> > +		clock *=3D 2;
> > +	}
> > +
> > +	if (intel_sdvo->pixel_clock_min > clock)
> > +		return MODE_CLOCK_LOW;
> > +
> > +	if (intel_sdvo->pixel_clock_max < clock)
> >  		return MODE_CLOCK_HIGH;
> >  =

> >  	if (IS_LVDS(intel_sdvo_connector)) {
> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
