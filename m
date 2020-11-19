Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C062B9AF1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667846E7DA;
	Thu, 19 Nov 2020 18:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06B96E5D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:10 +0000 (UTC)
IronPort-SDR: zicJEVg7+Kg4onXlygeoOo1WQ7O8Pt1VkXgLiqJBYvp8nonYcDCyAa2mlm7SbcsSqp37OOgNr0
 02gVyU4kA+pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="168771146"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="168771146"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:10 -0800
IronPort-SDR: Hw/nERWLyR0gyVuOBuoMZLR82YEmafPulRjf0mHundne81wJD1VbaGPfsOGllMkxhN374CEF5s
 4Eb0dLUm0DeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="326078572"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2020 10:54:09 -0800
Received: from bgsmsx605.gar.corp.intel.com (10.67.234.7) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 10:54:09 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX605.gar.corp.intel.com (10.67.234.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 20 Nov 2020 00:24:06 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Fri, 20 Nov 2020 00:24:06 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v2 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWvobqtPudLRdO2kir4EnbPGLElqnPO94AgACQ7LA=
Date: Thu, 19 Nov 2020 18:54:06 +0000
Message-ID: <37c8e201b92b4f4e9015d4a289f39e40@intel.com>
References: <20201119155050.20328-1-uma.shankar@intel.com>
 <20201119155050.20328-2-uma.shankar@intel.com>
 <20201119154218.GJ6112@intel.com>
In-Reply-To: <20201119154218.GJ6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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
> Sent: Thursday, November 19, 2020 9:12 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [v2 1/2] drm/i915/display/tgl: Disable FBC with PSR2
> =

> On Thu, Nov 19, 2020 at 09:20:49PM +0530, Uma Shankar wrote:
> > There are some corner cases wrt underrun when we enable FBC with PSR2
> > on TGL. Recommendation from hardware is to keep this combination
> > disabled.
> >
> > Bspec: 50422 HSD: 14010260002
> >
> > v2: Added psr2 enabled check from crtc_state (Anshuman) Added Bspec
> > link and HSD referneces (Jose)
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index a5b072816a7b..c64ed1cd29b1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -799,6 +799,17 @@ static bool intel_fbc_can_activate(struct intel_cr=
tc
> *crtc)
> >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> >  	struct intel_fbc_state_cache *cache =3D &fbc->state_cache;
> >
> > +	/*
> > +	 * Tigerlake is not supporting FBC with PSR2.
> > +	 * Recommendation is to keep this combination disabled
> > +	 * Bspec: 50422 HSD: 14010260002
> > +	 */
> > +	if (crtc->config && crtc->config->has_psr2 &&
> =

> Please don't add more crtc->config usages. After several years we've almo=
st
> reached the point where we can finally remove it.
> I should porbably take a look at how much work would be required to at le=
ast
> make it always NULL on g4x+.
> =

> The fbc state tracking is a total mess atm, but I think you can stuff thi=
s into
> intel_fbc_update_state_cache() and either just set cache->plane.visible=
=3Dfalse
> (which is a bit of a lie but would work), or add a new thing into the
> params/cache.

Ok sure, so I hope below logic will keep this disabled:
  if (crtc_state->has_psr2 && IS_TIGERLAKE(dev_priv))
                cache->plane.visible =3D false;

        if (!cache->plane.visible)
                return;

Will update and re-send the patch.

Thanks & Regards,
Uma Shankar

> My plan is to eliminate most of the this params/cache mess and just cache=
 the
> things fbc really needs for hw activate/deactivate. I do have a wip branc=
h but
> haven't had time recently to continue the work.
> =

> > +	    IS_TIGERLAKE(dev_priv)) {
> > +		fbc->no_fbc_reason =3D "not supported with PSR2";
> > +		return false;
> > +	}
> > +
> >  	if (!intel_fbc_can_enable(dev_priv))
> >  		return false;
> >
> > --
> > 2.26.2
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
