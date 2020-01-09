Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5201357FC
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53A36E8FA;
	Thu,  9 Jan 2020 11:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5517E6E8FA
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 11:30:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:30:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="216274538"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga008.jf.intel.com with ESMTP; 09 Jan 2020 03:30:30 -0800
Received: from irsmsx606.ger.corp.intel.com (163.33.146.139) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 9 Jan 2020 11:30:29 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 9 Jan 2020 11:30:29 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Thu, 9 Jan 2020 11:30:29 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v1] drm/i915: Bump up CDCLK to eliminate underruns on TGL
Thread-Index: AQHVxh8/JlN+GLC+TUCYouUQOCCssKfhAnKAgAExDIA=
Date: Thu, 9 Jan 2020 11:30:29 +0000
Message-ID: <ef368b0bbe44fdb864e56de80857382e935127b6.camel@intel.com>
References: <20200108122650.13823-1-stanislav.lisovskiy@intel.com>
 <20200108171621.GZ1762291@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200108171621.GZ1762291@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <77590F3DAA9F6A48BF72BC64505E4702@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Bump up CDCLK to eliminate
 underruns on TGL
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

On Wed, 2020-01-08 at 09:16 -0800, Matt Roper wrote:
> On Wed, Jan 08, 2020 at 02:26:50PM +0200, Stanislav Lisovskiy wrote:
> > There seems to be some undocumented bandwidth
> > bottleneck/dependency which scales with CDCLK,
> > causing FIFO underruns when CDCLK is too low,
> > even when it's correct from BSpec point of view.
> > 
> > Currently for TGL platforms we calculate
> > min_cdclk initially based on pixel_rate divided
> > by 2, accounting for also plane requirements,
> > however in some cases the lowest possible CDCLK
> > doesn't work and causing the underruns.
> > 
> > Explicitly stating here that this seems to be currently
> > rather a Hack, than final solution.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/402
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 7d1ab1e5b7c3..3db4060ed190 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2004,6 +2004,13 @@ int intel_crtc_compute_min_cdclk(const
> > struct intel_crtc_state *crtc_state)
> >  	/* Account for additional needs from the planes */
> >  	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
> >  
> > +	if (IS_GEN(dev_priv, 12)) {
> > +		if (min_cdclk <= DIV_ROUND_UP(crtc_state->pixel_rate,
> > 2)) {
> > +			min_cdclk = min(min_cdclk * 2,
> > +				    ((int)dev_priv->max_cdclk_freq));
> > +		}
> 
> min_cdclk is initially set to DIV_ROUND_UP(crtc_state->pixel_rate,
> 2),
> and then only potentially increases from there, so we're really just
> checking for equality here, right (the "<" case is
> impossible)?  Should
> we worry that one of the other checks (audio, planes, etc.) might
> have
> just slightly bumped up min_cdclk, causing this condition to fail,
> but
> not bumping it far enough to get us into the seemingly-safe zone?
> 
> Maybe it would be simpler/safer to just do something like

Fair enough I'm now actually also thnking about bumping up exactly 
one step higher in that table:

static const struct intel_cdclk_vals icl_cdclk_table[] = {
        { .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18
},
        { .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20
},
        { .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32
},
        { .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68
},
        { .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58
},
        { .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68
},

        { .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15
},
        { .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16
},
        { .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26
},
        { .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54
},
        { .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46
},
        { .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54
},

        { .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9
},
        { .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10
},
        { .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16
},
        { .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34
},
        { .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29
},
        { .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34
},
        {}
};

As bumping up it twice back seems a bit of overkill to me, so I will
just add another version of bxt_calc_cdclk here, which will find the
closest matching cdclk and return one step higher, i.e if we had 
pixel_rate/2 = 270000, previously we would end up with CDCLK 307200 for
refclk of 19200, but now we will return 326400(one step higher
instead). Need to check if this is still enough to eliminate underruns
though, but so far it seemed to work and seems to be much better from
power consumption point of view than
increasing it all the way to max CDCLK ~600 Mhz constantly. Also if
that still helps it will really mean that there is something wrong
with that CDCLK = Pixel rate/2 ratio.

Stan

> 
>         /* HACK */
>         if (IS_TIGERLAKE(dev_priv))
>                 min_cdclk = clamp(min_cdclk,
>                                   crtc_state->pixel_rate,
>                                   dev_priv->max_cdclk_freq);
> 
> which seems closer to the true goal of the workaround?
> 
> Regardless, we should probably also have a code comment on whatever
> we
> come up with just like we do on all the other min_cdclk adjustments,
> especially since this one is a hack that doesn't actually match the
> bspec.
> 
> 
> Matt
> 
> 
> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d
> > kHz)\n",
> >  			      min_cdclk, dev_priv->max_cdclk_freq);
> > -- 
> > 2.24.1.485.gad05a3d8e5
> > 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
