Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D510E2466A2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Aug 2020 14:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22B556E0CD;
	Mon, 17 Aug 2020 12:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D2B6E0CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Aug 2020 12:48:32 +0000 (UTC)
IronPort-SDR: e6DRfkILjTPuhYFA0StNxg3RcOXAW5k9Kt0ho2jpa5i16kgjAKzR4KJWx0tYpwsHGG9Wt/4JLo
 Qmu0NWvXDkwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9715"; a="239513305"
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="239513305"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 05:48:32 -0700
IronPort-SDR: 5Ug6YYZbu8hPfK5Zx/pl/1mNtzDJoe+JQQXcOXa/vMiWADQZCrCiGqk24mD8md31Q88Ik5oc0R
 k4jHRR2Mhutg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,322,1592895600"; d="scan'208";a="496997736"
Received: from unknown (HELO fmsmsx606.amr.corp.intel.com) ([10.18.84.216])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2020 05:48:32 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 17 Aug 2020 05:48:31 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 17 Aug 2020 18:18:29 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Mon, 17 Aug 2020 18:18:29 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [v2] drm/i915/display: Add an extra vblank wait
 before fbc activation
Thread-Index: AQHWdISZtxBYaNJUwEmXlICsxErT3Kk73AuAgABiu1A=
Date: Mon, 17 Aug 2020 12:48:28 +0000
Message-ID: <b76e90742647452fb97da180b75cb873@intel.com>
References: <20200817112529.24478-1-uma.shankar@intel.com>
 <20200817121923.GL30770@intel.com>
In-Reply-To: <20200817121923.GL30770@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add an extra vblank wait
 before fbc activation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> Sent: Monday, August 17, 2020 5:49 PM
> To: Shankar, Uma <uma.shankar@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add an extra vblank wait before fbc
> activation
> 
> On 2020-08-17 at 16:55:29 +0530, Uma Shankar wrote:
> > Add an extra vblank before fbc is activated.
> > WA: 1409689360
> > Corruption with FBC around plane 1A enabling. In the Frame Buffer
> > Compression programming sequence "Display Plane Enabling with FBC"
> > add a wait for vblank between plane enabling step 1 and FBC enabling
> > step 2.
> >
> > v2: Add wait only for active crtc
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 2ab32e6532ff..2a9d4796c4a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1085,10 +1085,13 @@ static void __intel_fbc_post_update(struct
> intel_crtc *crtc)
> >  	if (!intel_fbc_can_activate(crtc))
> >  		return;
> >
> > -	if (!fbc->busy_bits)
> > +	if (!fbc->busy_bits) {
> > +		if (IS_TIGERLAKE(dev_priv))
> > +			intel_wait_for_vblank_if_active(dev_priv, crtc->pipe);
> IMHO with this we are also adding a VBLANK wait when fbc is getting enabled
> from frontbuffer flush flow intel_fbc_flush(), i am being afraid if there could be
> unnecessary VBLANK wait here.

This is just ensuring that we let the update happen after vblank go, so that double buffered
registers get latched to the new values of watermarks etc, later the fbc gets activated.

This is a bit delicate I agree, and we need to check for corner cases if this causes any issue.
Best solution for this will be to activate fbc very close to vblank or within the vblank if we want to be
100% sure.

Regards,
Uma Shankar
 
> Thanks,
> Anshuman Gupta.
> >  		intel_fbc_hw_activate(dev_priv);
> > -	else
> > +	} else {
> >  		intel_fbc_deactivate(dev_priv, "frontbuffer write");
> > +	}
> >  }
> >
> >  void intel_fbc_post_update(struct intel_atomic_state *state,
> > --
> > 2.22.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
