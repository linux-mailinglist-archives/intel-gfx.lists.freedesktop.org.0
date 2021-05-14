Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB4380F16
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 19:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7831E6F3D0;
	Fri, 14 May 2021 17:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEA526F3D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 17:36:58 +0000 (UTC)
IronPort-SDR: gHA3tr+GHGauZ4EkXAQ1n9VFB6oCE3xHQGLBpD6Hw8Ob0vcz0k1705FAiiaxpL2VyoNTqiO7y2
 C67q6k9N97dg==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="264135420"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="264135420"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 10:36:57 -0700
IronPort-SDR: PNR+hVbBvujIKyq+XDJ3MFYtBqugd5naXUPa3XsrF1O3dQFLDpne3Mp4oZ8hxcj76kMs51WIjB
 jifhpI2Hz2Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="431800299"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 14 May 2021 10:36:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 20:36:54 +0300
Date: Fri, 14 May 2021 20:36:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YJ61Nhg38iElyPXG@intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
 <20210511160532.21446-6-ville.syrjala@linux.intel.com>
 <b60af898451971c9d4749372889b5b77b3689c18.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b60af898451971c9d4749372889b5b77b3689c18.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Move the TMDS clock division
 into intel_hdmi_mode_clock_valid()
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

On Fri, May 14, 2021 at 05:28:40PM +0000, Souza, Jose wrote:
> On Tue, 2021-05-11 at 19:05 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Now that we have to tell intel_hdmi_mode_clock_valid() whether
> > we're asking about 4:4:4 or 4:2:0 output it can take care of
> > the dotclock->TMDS clock conversion.
> > =

> > Cc: Werner Sembach <wse@tuxedocomputers.com>
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/dr=
m/i915/display/intel_hdmi.c
> > index 874fb897005a..80e2ae652f6e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1907,6 +1907,9 @@ intel_hdmi_mode_clock_valid(struct drm_connector =
*connector, int clock,
> >  	struct intel_hdmi *hdmi =3D intel_attached_hdmi(to_intel_connector(co=
nnector));
> >  	enum drm_mode_status status;
> >  =

> > +	if (ycbcr420_output)
> > +		clock /=3D 2;
> > +
> >  	/* check if we can do 8bpc */
> >  	status =3D hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8=
),
> >  				       true, has_hdmi_sink);
> > @@ -1957,8 +1960,6 @@ intel_hdmi_mode_valid(struct drm_connector *conne=
ctor,
> >  	}
> >  =

> >  	ycbcr_420_only =3D drm_mode_is_420_only(&connector->display_info, mod=
e);
> > -	if (ycbcr_420_only)
> > -		clock /=3D 2;
> >  =

> >  	status =3D intel_hdmi_mode_clock_valid(connector, clock, has_hdmi_sin=
k, ycbcr_420_only);
> >  	if (status !=3D MODE_OK) {
> > @@ -1967,7 +1968,6 @@ intel_hdmi_mode_valid(struct drm_connector *conne=
ctor,
> >  		    !drm_mode_is_420_also(&connector->display_info, mode))
> >  			return status;
> >  =

> > -		clock /=3D 2;
> =

> The clock intel_hdmi_mode_clock_valid() call will be clock/2 not clock/4 =
as previous.

It's never clock/4.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
