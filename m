Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CE537163C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 15:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD456E8B7;
	Mon,  3 May 2021 13:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212816E8B7
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 13:50:50 +0000 (UTC)
IronPort-SDR: rs0HO1GYFQYTGoSjj0sCzEi4mOQnbsGJ5P9Dnm4FV4LVsgZa21vda9Ho/zqigs4diOuesEUnOp
 T1LZHRunE3Zg==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="177952181"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="177952181"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 06:50:49 -0700
IronPort-SDR: rRtLOCi+vN3oK6asaixRnw/99veaJPzlT8rQtx1EVtnYHhSza4ELlCa8RL4ADe5lGkXr8N+aEs
 n2x7c+F+7how==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="389586198"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2021 06:50:49 -0700
Received: from bgsmsx601.gar.corp.intel.com (10.109.78.80) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 06:50:48 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX601.gar.corp.intel.com (10.109.78.80) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 3 May 2021 19:20:46 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.013;
 Mon, 3 May 2021 19:20:46 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Deak, 
 Imre" <imre.deak@intel.com>
Thread-Topic: [RFC v2] drm/i915: lpsp with hdmi/dp outputs
Thread-Index: AQHXPbnBEySDO/DlfE6nBUwEwD5myarM+BcAgATRPRA=
Date: Mon, 3 May 2021 13:50:45 +0000
Message-ID: <997048a074754acc957991bb6c40e124@intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
 <20210430115355.30611-1-anshuman.gupta@intel.com>
 <YIxA/LDc5llqvRF+@intel.com>
In-Reply-To: <YIxA/LDc5llqvRF+@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v2] drm/i915: lpsp with hdmi/dp outputs
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
> Sent: Friday, April 30, 2021 11:10 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Kai Vehmanen
> <kai.vehmanen@linux.intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [RFC v2] drm/i915: lpsp with hdmi/dp outputs
> =

> On Fri, Apr 30, 2021 at 05:23:55PM +0530, Anshuman Gupta wrote:
> > DG1 and DISPLAY_VER=3D13 onwards Audio MMIO/VERBS lies in PG0 power
> > well. So in order to detect audio capable DP/HDMI output it doesn't
> > require to enable PG3 power well on DG1 and PG2 on DISPLAY_VER=3D13
> > pltform. It will save the power when DP/HDMI outputs used as lpsp
> > configuration.
> >
> > B.Spec: 49233
> > B.Spec: 49231
> >
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6280ba7f4c17..16bfa7628970 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3536,8 +3536,13 @@ static u64 get_crtc_power_domains(struct
> intel_crtc_state *crtc_state)
> >  		mask |=3D BIT_ULL(intel_encoder->power_domain);
> >  	}
> >
> > -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> > -		mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);
> > +	if (HAS_DDI(dev_priv) && crtc_state->has_audio) {
> > +		/* if Audio mmio/verbs lies in PG0 */
> > +		if (IS_DG1(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11)
> > +			mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
> > +		else
> > +			mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);
> =

> Power domains are supposed to be abstract. So if the audio stuff is movin=
g to a
> different power well then we just need to adjust the domain for the relev=
ant
> power wells.
Currently we have same power well for DG1 and TGL, this particular delta ha=
s been introduced =

from DG1 onwards and this delta is present for DISPLAY_VER 13 as well.
So in order to adjust this delta for DG1 , we will require a separate power=
 well meta data for DG1.
@imre could you please provide your input to handle above delta on DG1.
How about breaking down POWER_DOMAIN_AUDIO to POWER_DOMAIN_AUDIO_VERBS and =

POWER_DOMAIN_AUDIO_PLAYBACK?
Thanks,
Anshuman Gupta.
> =

> > +	}
> >
> >  	if (crtc_state->shared_dpll)
> >  		mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
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
