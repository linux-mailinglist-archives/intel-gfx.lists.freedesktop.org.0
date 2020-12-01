Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E343E2CA487
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 14:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A046E530;
	Tue,  1 Dec 2020 13:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D3D6E530
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 13:56:18 +0000 (UTC)
IronPort-SDR: rEoxg2M+sMUZ2upmx1myQLimb/MYkNnLMiefKLwdZ5mcNTEVuYot7RwbfjYt96qPRVwyTJLsoS
 0DcvDTwhPhOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="169325708"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="169325708"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 05:56:16 -0800
IronPort-SDR: AtXqXuAS5GunQsBOFQ1+d05OLItahicUwVJnayl+Yl39m1NK/czOoZracnSZOPq+yCxkzHJfLW
 Bm10swu3R6+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="315673164"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2020 05:56:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 05:56:15 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 05:56:14 -0800
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 19:26:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWvqZlzf9/toWNQU6wsFKZ16yEg6nXgc6AgAExwYCAABpVAIAC8JWAgAaXQNA=
Date: Tue, 1 Dec 2020 13:56:12 +0000
Message-ID: <00f629426908447d9014ecec641ae8c2@intel.com>
References: <20201119155050.20328-2-uma.shankar@intel.com>
 <20201119193614.25914-1-uma.shankar@intel.com>
 <d5698ec6956ff3f0df5d3bcce9b836fcd06ef7d0.camel@intel.com>
 <20201125161755.GN6112@intel.com>
 <ae57f8e2ddc7a2bda0d6f741d411c2a0b59efa80.camel@intel.com>
 <20201127144545.GN6112@intel.com>
In-Reply-To: <20201127144545.GN6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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
> Sent: Friday, November 27, 2020 8:16 PM
> To: Souza, Jose <jose.souza@intel.com>
> Cc: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with =
PSR2
> =

> On Wed, Nov 25, 2020 at 05:52:10PM +0000, Souza, Jose wrote:
> > On Wed, 2020-11-25 at 18:17 +0200, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Nov 24, 2020 at 10:03:35PM +0000, Souza, Jose wrote:
> > > > On Fri, 2020-11-20 at 01:06 +0530, Uma Shankar wrote:
> > > > > There are some corner cases wrt underrun when we enable FBC with
> > > > > PSR2 on TGL. Recommendation from hardware is to keep this
> > > > > combination disabled.
> > > > >
> > > > > Bspec: 50422 HSD: 14010260002
> > > > >
> > > > > v2: Added psr2 enabled check from crtc_state (Anshuman) Added
> > > > > Bspec link and HSD referneces (Jose)
> > > > >
> > > > > v3: Moved the logic to disable fbc to
> > > > > intel_fbc_update_state_cache and removed the crtc->config usages,=
 as
> per Ville's recommendation.
> > > > >
> > > > > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > > > > ---
> > > > > =A0drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
> > > > > =A01 file changed, 9 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > index a5b072816a7b..cb29c6f068f9 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > > > @@ -701,6 +701,15 @@ static void intel_fbc_update_state_cache(str=
uct
> intel_crtc *crtc,
> > > > > =A0	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > > > >
> > > > >
> > > > >
> > > > >
> > > > > =A0	cache->plane.visible =3D plane_state->uapi.visible;
> > > > > +
> > > > > +	/*
> > > > > +	 * Tigerlake is not supporting FBC with PSR2.
> > > > > +	 * Recommendation is to keep this combination disabled
> > > > > +	 * Bspec: 50422 HSD: 14010260002
> > > > > +	 */
> > > > > +	if (crtc_state->has_psr2 && IS_TIGERLAKE(dev_priv))
> > > > > +		cache->plane.visible =3D false;
> > > >
> > > > Looks like a hack to me, would be better add a psr2 variable in
> intel_fbc_state_cache.
> > >
> > > The plan is to remove most things from that cache anyway since it's
> > > mostly pointless stuff that should just be handled directly via the
> > > plane/crtc states. Not really convinced it makes sense to add more
> > > crap to it at this time. So IMO this is good enough for now.
> >
> > When this will happen? if soon okay.
> > If there is no ETA IMHO is better do the right thing.
> =

> I was hoping to get back to it soon, but looks like there's quite a bit m=
ore urgent
> work ahead for the moment. So don't know when I'll get back to this.
> =

> So I guess path of least resitance would be for Uma to respin with your
> suggested approach. It was one of the solutions I also suggested original=
ly, but I
> did also suggest this simpler version Uma actually did.

Ok, let me send out a version with psr2 variable in state cache. Please rev=
iew if that looks
better.

Regards,
Uma Shankar

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
