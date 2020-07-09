Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD7D219F92
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 14:04:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C11FC6E090;
	Thu,  9 Jul 2020 12:04:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 640D86E090
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 12:04:43 +0000 (UTC)
IronPort-SDR: lbQSME1LkkC9Ewu9pnbMjL22BDrD4OV7hRFp7HbH/FAc4W9YYCdlALOvW2klIcUKWLdN+GeqKw
 3NKwadS6o0qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="147974507"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="147974507"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 05:04:42 -0700
IronPort-SDR: I9TsmLbFCiVoiMDkAX8i0Y5vPqG7TXZ5klt06n7u+T8IedENjFoN9YnYWOKXMW9N4xh8LzOBvB
 EHBknOqbcxYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="324200331"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 09 Jul 2020 05:04:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jul 2020 15:04:37 +0300
Date: Thu, 9 Jul 2020 15:04:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200709120437.GY6112@intel.com>
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-6-ville.syrjala@linux.intel.com>
 <20200709110119.GC16776@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709110119.GC16776@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Reject DRM_MODE_FLAG_DBLCLK
 with DVI sinks
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

On Thu, Jul 09, 2020 at 02:01:19PM +0300, Imre Deak wrote:
> On Wed, Jan 08, 2020 at 08:12:39PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The code assumes that DRM_MODE_FLAG_DBLCLK means that we enable the
> > pixel repeat feature. That only works with HDMI since it requires
> > AVI infoframe to signal the information to the sink. Hence even if
> > the mode dotclock would be valid we cannot currently assume that
> > we can just ignore the DBLCLK flag. Reject it for DVI sinks.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Imre Deak <imre.deak@intel.com>
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/dr=
m/i915/display/intel_hdmi.c
> > index 85c5f840a0fc..a62dd3348301 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2185,8 +2185,11 @@ intel_hdmi_mode_valid(struct drm_connector *conn=
ector,
> >  	if (clock > max_dotclk)
> >  		return MODE_CLOCK_HIGH;
> >  =

> > -	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
> > +	if (mode->flags & DRM_MODE_FLAG_DBLCLK) {
> > +		if (!has_hdmi_sink)
> > +			return MODE_CLOCK_LOW;
> =

> MODE_H_ILLEGAL is used elsewhere for this case, and also an odd MODE_BAD
> at one place.

Not seeing the MODE_BAD. The MODE_H_ILLEGAL cases are in the DP code.
I think that check is kinda wrong for DP anyway, except possinbly when
driving a HDMI sink via the protocol converter. Can't be sure since
IIRC the DP spec doesn't really say whether protocol converters are
supposed to enable pixel repeat for the HDMI part or not.

I think I migth have had a patch somewhere to ignore this for non-HDMI
sinks in the DP code. Which at least should be safe.

> =

> >  		clock *=3D 2;
> > +	}
> >  =

> >  	if (drm_mode_is_420_only(&connector->display_info, mode))
> >  		clock /=3D 2;
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
