Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED18193995
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 08:25:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36EA76E29B;
	Thu, 26 Mar 2020 07:25:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 795AA6E29B
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 07:25:52 +0000 (UTC)
IronPort-SDR: U56t1SgKRZ2Ov/2pIdp0126FBuRX4T9Shp4HHHBZl2xqk305OySR64gZsT4vWQZQdY5cxajxoX
 iqPslWJmYNlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 00:25:52 -0700
IronPort-SDR: F8Plno0dnjrWfU8Z3RMKnjW6P82cGF+svPLvuXRkvtRQyu3wF8m7MkAKWjLfLvLwTbmB4pH1mB
 kbijScBR3lpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="358062200"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 26 Mar 2020 00:25:52 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 00:25:51 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 26 Mar 2020 00:25:51 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.145]) with mapi id 14.03.0439.000;
 Thu, 26 Mar 2020 12:55:47 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RTdJvWeZ84SjEekeReP5HUDGahP7GUAgAEX5XCAADyIAIAAGVEAgASOZ4CAAQLnAIADmHFA
Date: Thu, 26 Mar 2020 07:25:46 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8243C5A7@BGSMSX104.gar.corp.intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
 <20200320152406.GP13686@intel.com>
 <SN6PR11MB313483A95ADC942C6ADB4A23AFF50@SN6PR11MB3134.namprd11.prod.outlook.com>
 <SN6PR11MB3134E738523673EE95DFEE33AFF00@SN6PR11MB3134.namprd11.prod.outlook.com>
 <SN6PR11MB3134C5E30ACA7E579FF18600AFF10@SN6PR11MB3134.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3134C5E30ACA7E579FF18600AFF10@SN6PR11MB3134.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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
> From: Khor, Swee Aun <swee.aun.khor@intel.com>
> Sent: Tuesday, March 24, 2020 11:26 AM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boo=
t for audio
> codec init
> =

> Git diff without debug print. Please review. Thanks.

Will send this as a separate patch as this commit header doesn't hold good =
now.
Please review the change here: https://patchwork.freedesktop.org/series/751=
06/

Thanks Ville, Maarten and Jose for all your inputs. Thanks SweeAun for tryi=
ng this at your end
and confirming the change suggested by Ville works to resolve audio codec i=
ssues.

Regards,
Uma Shankar

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 4d1634ed6a1b..806cf622fb39 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14108,11 +14108,13 @@ static int intel_atomic_check(struct drm_device
> *dev,
>         int ret, i;
>         bool any_ms =3D false;
> =

> +
>         /* Catch I915_MODE_FLAG_INHERITED */
>         for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>                                             new_crtc_state, i) {
> -               if (new_crtc_state->hw.mode.private_flags !=3D
> -                   old_crtc_state->hw.mode.private_flags)
> +
> +               if (new_crtc_state->uapi.mode.private_flags !=3D
> +                   old_crtc_state->uapi.mode.private_flags)
>                         new_crtc_state->uapi.mode_changed =3D true;
>         }
> =

> Regards,
> SweeAun
> =

> -----Original Message-----
> From: Khor, Swee Aun
> Sent: Monday, March 23, 2020 10:29 PM
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Cc: Souza, Jose <jose.souza@intel.com>; 'intel-gfx@lists.freedesktop.org'=
 <intel-
> gfx@lists.freedesktop.org>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boo=
t for audio
> codec init
> =

> Hi Ville,
> =

> You are right, your suggestion will fix this issue.
> =

> #Based on dmesg log, uapi mode private flags change is captured ...
> [   11.404578] fbcon: i915drmfb (fb0) is primary device
> [   11.404743] [drm] SA: intel_atomic_check: uapi change
> [   11.404744] [drm] SA2: intel_atomic_check: new_crtc_state-
> >uapi.mode.private_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D=
 1
> [   11.404744] [drm] SA2: intel_atomic_check: new_crtc_state-
> >uapi.mode.private_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D=
 0
> [   11.404745] [drm] SA2: intel_atomic_check: new_crtc_state-
> >uapi.mode.private_flags=3D 0, old_crtc_state->uapi.mode.private_flags=3D=
 0
> [   11.404799] [drm:intel_atomic_check [i915]] [CONNECTOR:110:HDMI-A-2]
> Limiting display bpp to 24 instead of EDID bpp 24, requested bpp 36, max =
platform
> bpp 36
> [   11.404855] [drm:intel_hdmi_compute_config [i915]] picking 8 bpc for H=
DMI
> output (pipe bpp: 24)
> [   11.404898] [drm:intel_atomic_check [i915]] hw max bpp: 24, pipe bpp: =
24,
> dithering: 0
> ...
> =

> #Here is the git diff
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 4d1634ed6a1b..b5c56cd513d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14108,11 +14108,15 @@ static int intel_atomic_check(struct drm_device
> *dev,  int ret, i;  bool any_ms =3D false;
> =

> +DRM_INFO("SA: intel_atomic_check: uapi change \n");
> +
>  /* Catch I915_MODE_FLAG_INHERITED */
>  for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>      new_crtc_state, i) {
> -if (new_crtc_state->hw.mode.private_flags !=3D
> -    old_crtc_state->hw.mode.private_flags)
> +
> +DRM_INFO("SA2: intel_atomic_check:
> +new_crtc_state->uapi.mode.private_flags=3D %d, old_crtc_state-
> >uapi.mode.private_flags=3D %d  \n", new_crtc_state->uapi.mode.private_fl=
ags,
> old_crtc_state->uapi.mode.private_flags ); if (new_crtc_state-
> >uapi.mode.private_flags !=3D
> +    old_crtc_state->uapi.mode.private_flags)
>  new_crtc_state->uapi.mode_changed =3D true;  }
> =

> Regards,
> SweeAun
> =

> -----Original Message-----
> From: Khor, Swee Aun
> Sent: Saturday, March 21, 2020 12:55 AM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boo=
t for audio
> codec init
> =

> Hi Ville,
> You means this change right? Sure. Will try your suggestion as well.
> By the way, what is different between hw.mode and uapi.mode and how we kn=
ow
> which to be used? It used to only base.mode before hw/uapi split patches.
> =

> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14671,8 +14671,8 @@ static int intel_atomic_check(struct drm_device=
 *dev,
> >         /* Catch I915_MODE_FLAG_INHERITED */
> >         for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >                                             new_crtc_state, i) {
> > -               if (new_crtc_state->hw.mode.private_flags !=3D
> > -                   old_crtc_state->hw.mode.private_flags)
> > +               if (new_crtc_state->uapi.mode.private_flags !=3D
> > +                   old_crtc_state->uapi.mode.private_flags)
> >                         new_crtc_state->uapi.mode_changed =3D true;
> >         }
> >
> > ?
> =

> Regards,
> SweeAun
> =

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, March 20, 2020 11:24 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: Souza, Jose <jose.souza@intel.com>; intel-gfx@lists.freedesktop.org; =
Khor,
> Swee Aun <swee.aun.khor@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boo=
t for audio
> codec init
> =

> On Fri, Mar 20, 2020 at 06:19:37AM +0000, Shankar, Uma wrote:
> >
> >
> > > -----Original Message-----
> > > From: Souza, Jose <jose.souza@intel.com>
> > > Sent: Friday, March 20, 2020 12:36 AM
> > > To: Shankar, Uma <uma.shankar@intel.com>;
> > > intel-gfx@lists.freedesktop.org
> > > Cc: Khor, Swee Aun <swee.aun.khor@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset
> > > at boot for audio codec init
> > >
> > > On Wed, 2020-03-18 at 17:00 +0530, Uma Shankar wrote:
> > > > If external monitors are connected during boot up, driver uses the
> > > > same mode programmed by BIOS and avoids a full modeset.
> > > > This results in display audio codec left uninitialized and display
> > > > audio fails to work till user triggers a modeset.
> > > >
> > > > This patch fixes the same by triggering a modeset at boot.
> > >
> > > We had the same issue for PSR, take a look to the fix:
> > > commit 33e059a2e4df454359f642f2235af39de9d3e914
> > > drm/i915/psr: Force PSR probe only after full initialization
> > >
> > > Maybe make this even more generic.
> >
> > Yeah this looks to dealing with almost a similar need. Thanks for
> > pointing this out, will try to come up with a generalized solution.
> =

> How about just fixing the uapi vs. hw fail I showed instead of adding eve=
n more
> hacks?
> =

> --
> Ville Syrj=E4l=E4
> Intel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
