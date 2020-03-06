Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5074217C1DE
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 16:32:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935536ED40;
	Fri,  6 Mar 2020 15:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65AD36ED40
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 15:32:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 07:32:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="234882557"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 06 Mar 2020 07:32:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Mar 2020 17:32:05 +0200
Date: Fri, 6 Mar 2020 17:32:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>
Message-ID: <20200306153205.GT13686@intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-6-ville.syrjala@linux.intel.com>
 <1e21a038-1881-449f-8a73-c0af623d7728@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e21a038-1881-449f-8a73-c0af623d7728@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/9] drm/i915:
 s/chv_read_cgm_lut/chv_read_cgm_gamma/
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

On Fri, Mar 06, 2020 at 08:48:42PM +0530, Sharma, Swati2 wrote:
> =

> =

> On 03-Mar-20 11:03 PM, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > chv_read_cgm_lut() specifically reads the CGM _gamma_ LUT so
> > let's rename it to reflect that fact. This also mirrors
> > the other direction's chv_load_cgm_gamma().
> =

> At present, since all the readouts are only gamma luts so should we =

> rename all the readouts like chv_read_gamma_lut()?

No, the names are chosen based on the HW LUT we read not the SW LUT.

> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/d=
rm/i915/display/intel_color.c
> > index f90f113355bc..ab23b24e7be3 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1780,7 +1780,7 @@ static void i965_read_luts(struct intel_crtc_stat=
e *crtc_state)
> >   }
> >   =

> >   static struct drm_property_blob *
> > -chv_read_cgm_lut(const struct intel_crtc_state *crtc_state)
> > +chv_read_cgm_gamma(const struct intel_crtc_state *crtc_state)
> >   {
> >   	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >   	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > @@ -1816,7 +1816,7 @@ chv_read_cgm_lut(const struct intel_crtc_state *c=
rtc_state)
> >   static void chv_read_luts(struct intel_crtc_state *crtc_state)
> >   {
> >   	if (crtc_state->cgm_mode & CGM_PIPE_MODE_GAMMA)
> > -		crtc_state->hw.gamma_lut =3D chv_read_cgm_lut(crtc_state);
> > +		crtc_state->hw.gamma_lut =3D chv_read_cgm_gamma(crtc_state);
> >   	else
> >   		i965_read_luts(crtc_state);
> >   }
> > =

> =

> -- =

> ~Swati Sharma

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
