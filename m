Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B1E27045A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Sep 2020 20:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535A16ED76;
	Fri, 18 Sep 2020 18:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8C56ED76
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Sep 2020 18:49:29 +0000 (UTC)
IronPort-SDR: 9E8RCe9k1IJpT9FF9kc8Wj8qluMf7QDoKSGpvpJ8vmXmlzdiiYAAJnlSyGFyjRd5I0csrQuEtv
 1oTQ26qhAzwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="139505670"
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="139505670"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 11:49:15 -0700
IronPort-SDR: 8eX0n91tz2nVHEg48YCjsppGZtSe82YWONzEd0RdqWdjY9b1WNdhNzr8SVGqXk0oqrKAWtEw9V
 4Q8TVZ5MFm4A==
X-IronPort-AV: E=Sophos;i="5.77,274,1596524400"; d="scan'208";a="288065865"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 11:49:14 -0700
Date: Fri, 18 Sep 2020 11:49:59 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200918184959.GA31748@labuser-Z97X-UD5H>
References: <20200917214335.3569-1-ville.syrjala@linux.intel.com>
 <20200917235709.GA27525@labuser-Z97X-UD5H>
 <20200918103945.GF6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200918103945.GF6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Extract
 intel_dp_output_format()
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

On Fri, Sep 18, 2020 at 01:39:45PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Sep 17, 2020 at 04:57:09PM -0700, Navare, Manasi wrote:
> > On Fri, Sep 18, 2020 at 12:43:33AM +0300, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > =

> > > Refactor the output_format calculation into a helper so that
> > > we can reuse it for mode validation as well.
> > > =

> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp.c | 32 +++++++++++++++--------=
--
> > >  1 file changed, 20 insertions(+), 12 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/dr=
m/i915/display/intel_dp.c
> > > index bf1e9cf1c0f3..ad9b8b16fadb 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -592,6 +592,22 @@ static u8 intel_dp_dsc_get_slice_count(struct in=
tel_dp *intel_dp,
> > >  	return 0;
> > >  }
> > >  =

> > > +static enum intel_output_format
> > > +intel_dp_output_format(struct drm_connector *connector,
> > > +		       const struct drm_display_mode *mode)
> > > +{
> > > +	struct intel_dp *intel_dp =3D intel_attached_dp(to_intel_connector(=
connector));
> > > +	const struct drm_display_info *info =3D &connector->display_info;
> > > +
> > > +	if (!drm_mode_is_420_only(info, mode))
> > > +		return INTEL_OUTPUT_FORMAT_RGB;
> > > +
> > > +	if (intel_dp->dfp.ycbcr_444_to_420)
> > > +		return INTEL_OUTPUT_FORMAT_YCBCR444;
> > > +	else
> > > +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> > > +}
> > > +
> > >  static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
> > >  				  int hdisplay)
> > >  {
> > > @@ -2430,27 +2446,20 @@ intel_dp_compute_link_config(struct intel_enc=
oder *encoder,
> > >  }
> > >  =

> > >  static int
> > > -intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
> > > -			 struct intel_crtc_state *crtc_state,
> > > +intel_dp_ycbcr420_config(struct intel_crtc_state *crtc_state,
> > >  			 const struct drm_connector_state *conn_state)
> > >  {
> > >  	struct drm_connector *connector =3D conn_state->connector;
> > > -	const struct drm_display_info *info =3D &connector->display_info;
> > >  	const struct drm_display_mode *adjusted_mode =3D
> > >  		&crtc_state->hw.adjusted_mode;
> > >  =

> > >  	if (!connector->ycbcr_420_allowed)
> > >  		return 0;
> > >  =

> > > -	if (!drm_mode_is_420_only(info, adjusted_mode))
> > > -		return 0;
> > > +	crtc_state->output_format =3D intel_dp_output_format(connector, adj=
usted_mode);
> > =

> > So by default if its not 420_only then we set it to RGB?
> =

> Yes. The code is still a bit messy because we have three places where
> we set this. Probably will try to unify it a bit more, and try to get
> the lspcon stuff looking more like any other protocol converter.
> =

> Actually IIRC I noticed that some lspcon chips seem to have some
> of the 1.3 protocol converter registers even though they only
> advertise DPCD 1.2. Not yet sure how to handle that in the
> cleanest way possible...

But if DPCD says only 1.2 then we shouldnt be reading 1.3 specific registers
and support it as 1.2 IMO

Manasi
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
