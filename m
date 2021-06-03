Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 494F7399D05
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13C8C6F450;
	Thu,  3 Jun 2021 08:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F486F450
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 08:47:19 +0000 (UTC)
IronPort-SDR: htmAHbh5OzB3Re4HzlvaYQN/TGwrhBWW5yCmH6So9sWh646NGqCy3czt3Crb/9Y12Tqz2f+G5n
 a32P2FBOJdXg==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="289629287"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="289629287"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2021 01:47:09 -0700
IronPort-SDR: NsdVrmkwqAZALIAoo0KC4kmZPZRFqS5og8XKjzS8IVlmvkSpB3THT0oxefYaWjM5nkFJ07iAni
 8bR3zKK8sH5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="400399187"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga006.jf.intel.com with ESMTP; 03 Jun 2021 01:47:09 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 09:47:07 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 14:17:05 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEerkFFEh6R0kUCekRWWk2uIg6sBidmAgABuaXA=
Date: Thu, 3 Jun 2021 08:47:05 +0000
Message-ID: <1e70025aa4e04a5396721ad4e7609340@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
In-Reply-To: <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Saarinen, Jani <jani.saarinen@intel.com>
> Sent: Thursday, June 3, 2021 1:07 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
> DSC disable
> =

> Hi,
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Vandita Kulkarni
> > Sent: torstai 3. kes=E4kuuta 2021 9.54
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
> > DSC disable
> >
> > There can be a chance that pre os has enabled DSC and driver's compute
> > config would not need dsc to be enabled, in such case if we check on
> > compute config's compression state to disable, we might end up in state
> mismatch.
> =

> I assume this fixes real gitlab issue too?
Okay, will add the tag =

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537

Thanks,
Vandita
> =

> >
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 4 ----
> >  1 file changed, 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 19cd9531c115..b05a96011d93 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -1161,10 +1161,6 @@ void intel_dsc_disable(const struct
> > intel_crtc_state
> > *old_crtc_state)
> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >
> > -	if (!(old_crtc_state->dsc.compression_enable &&
> > -	      old_crtc_state->bigjoiner))
> > -		return;
> > -
> >  	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> >  	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);  }
> > --
> > 2.21.0.5.gaeb582a
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
