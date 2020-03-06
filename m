Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA8117BC1C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 12:49:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BEE6ECE7;
	Fri,  6 Mar 2020 11:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 562826ECE7
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 11:49:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 03:49:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="320513609"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 06 Mar 2020 03:49:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 13:49:31 +0200
Date: Fri, 6 Mar 2020 13:49:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Message-ID: <20200306114931.GQ13686@intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-2-ville.syrjala@linux.intel.com>
 <e845752d-ab24-baa9-af4a-449e7a63e369@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e845752d-ab24-baa9-af4a-449e7a63e369@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915: Polish CHV CGM CSC loading
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

On Fri, Mar 06, 2020 at 02:14:15PM +0530, Sharma, Swati2 wrote:
> =

> =

> On 03-Mar-20 11:03 PM, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Only load the CGM CSC based on the cgm_mode bit like we
> > do with the gamma/degamma LUTs. And make the function
> > naming and arguments consistent as well.
> > =

> > TODO: the code to convert the coefficients look totally
> > bogus. IIRC CHV uses two's complement format but the code
> > certainly doesn't generate that, so probably negative
> > coefficients are totally busted.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 69 +++++++++++-----------
> >   1 file changed, 35 insertions(+), 34 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/d=
rm/i915/display/intel_color.c
> > index 98aefeebda28..444980fdeda6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -348,48 +348,43 @@ static void icl_load_csc_matrix(const struct inte=
l_crtc_state *crtc_state)
> >   		       crtc_state->csc_mode);
> >   }
> >   =

> > -/*
> > - * Set up the pipe CSC unit on CherryView.
> > - */
> > -static void cherryview_load_csc_matrix(const struct intel_crtc_state *=
crtc_state)
> > +static void chv_load_cgm_csc(struct intel_crtc *crtc,
> > +			     const struct drm_property_blob *blob)
> Nitpick: Spacing?

I think it's just the use of tabs and the diff's '+' making it look off.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
