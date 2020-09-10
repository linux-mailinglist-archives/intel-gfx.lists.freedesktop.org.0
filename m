Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99104264796
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 15:59:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA616E933;
	Thu, 10 Sep 2020 13:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B94136E933
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 13:59:32 +0000 (UTC)
IronPort-SDR: ZFMx7UpkCEB+UdqrqxTwywZcFALvxIfX2G32onCS/74RWho5sc6WtFhZT+OEX4a8Y7PN8a9rWy
 NfvbgkQMctnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="176593740"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="176593740"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 06:59:29 -0700
IronPort-SDR: 7SYeKF2fZlps0F6L54/XZixW+CBNBkSezdQzeVeHO/eYbvW1MEL+JNEOPFz2PII+liHhdxnEZv
 gARcUv7FxTQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; d="scan'208";a="285236240"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 10 Sep 2020 06:59:29 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Sep 2020 06:59:28 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 10 Sep 2020 19:29:26 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Thu, 10 Sep 2020 19:29:26 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for FBC
 activation within same frame
Thread-Index: AQHWh2aYSvfsowFXwEGJujjDCGi3X6lhgwuAgABeDwD//6cIAIAAXMiQ
Date: Thu, 10 Sep 2020 13:59:26 +0000
Message-ID: <f7c958a0ed294bae9023d1e650505bbb@intel.com>
References: <20200910121153.6749-1-uma.shankar@intel.com>
 <878sdh21tq.fsf@intel.com> <fb5bd141583a40c3a33869da70e6ef2e@intel.com>
 <20200910135206.GY6112@intel.com>
In-Reply-To: <20200910135206.GY6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for FBC
 activation within same frame
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
> Sent: Thursday, September 10, 2020 7:22 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedeskto=
p.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait for =
FBC
> activation within same frame
> =

> On Thu, Sep 10, 2020 at 01:42:23PM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Jani Nikula <jani.nikula@linux.intel.com>
> > > Sent: Thursday, September 10, 2020 7:04 PM
> > > To: Shankar, Uma <uma.shankar@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a vblank wait
> > > for FBC activation within same frame
> > >
> > > On Thu, 10 Sep 2020, Uma Shankar <uma.shankar@intel.com> wrote:
> > > > Add a vblank wait when fbc activation request comes for the same
> > > > frame on TGL. This helps fix underrun related to fbc.
> > > >
> > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_fbc.c | 13 +++++++++++--
> > > >  1 file changed, 11 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > index 135f5e8a4d70..3e1d715e4a4e 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > @@ -1055,6 +1055,7 @@ static void __intel_fbc_post_update(struct
> > > > intel_crtc *crtc)  {
> > > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > >  	struct intel_fbc *fbc =3D &dev_priv->fbc;
> > > > +	static u32 old_frame_cnt, new_frame_cnt;
> > >
> > > In the strongest terms, do not add static data. These would be
> > > shared across devices, which is certainly a bug.
> >
> > Oh ok, yeah will remove this. I guess adding them to intel_fbc should b=
e ok
> right ?
> =

> I didn't think we found what's really going on here. So this still seems =
like
> random duct tape which just changs some timings.

Yeah Ville, this still is a WA to avoid multiple FBC activation within fram=
e. Adding the frame counter checks
to avoid waits on all updates.

More analysis still ongoing and issue is raised with hw team as well for fu=
rther analysis.
My idea was to get the health of this WA on CI and general feedback if this=
 can be considered as a
fallback option.

Regards,
Uma Shankar

 > > >
> > > >  	drm_WARN_ON(&dev_priv->drm, !mutex_is_locked(&fbc->lock));
> > > >
> > > > @@ -1075,10 +1076,18 @@ static void __intel_fbc_post_update(struct
> > > intel_crtc *crtc)
> > > >  	if (!intel_fbc_can_activate(crtc))
> > > >  		return;
> > > >
> > > > -	if (!fbc->busy_bits)
> > > > +	old_frame_cnt =3D new_frame_cnt;
> > > > +	new_frame_cnt =3D intel_crtc_get_vblank_counter(crtc);
> > > > +	if (!fbc->busy_bits) {
> > > > +		if (IS_TIGERLAKE(dev_priv) &&
> > > > +		    old_frame_cnt =3D=3D new_frame_cnt) {
> > > > +			drm_dbg_kms(&dev_priv->drm, "Wait for vblank before
> > > Activating FBC");
> > > > +			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
> > > > +		}
> > > >  		intel_fbc_hw_activate(dev_priv);
> > > > -	else
> > > > +	} else {
> > > >  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> > > > +	}
> > > >  }
> > > >
> > > >  void intel_fbc_post_update(struct intel_atomic_state *state,
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
