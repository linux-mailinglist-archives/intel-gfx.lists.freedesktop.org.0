Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966EA39ED6B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jun 2021 06:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F49389F4A;
	Tue,  8 Jun 2021 04:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18D4E89F4A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jun 2021 04:13:49 +0000 (UTC)
IronPort-SDR: 9rWivG5udhRGJztzrMdfgcDye1/AEYooyQeI/PsT0ZkYYDtvlUHu0bbRUYOyD0+3Oo59YXoine
 pwm9ebAJRtFg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="204581947"
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="204581947"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 21:13:49 -0700
IronPort-SDR: E4toq3TAnKRUWy1bKCU7F7iE1QmaFYaQxJbxjUFy+Aje0iln2F35WREsDsGRM4pKWqxcKibIvG
 alM1/O+d2+Fg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,256,1616482800"; d="scan'208";a="440313859"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga007.jf.intel.com with ESMTP; 07 Jun 2021 21:13:49 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 21:13:48 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Tue, 8 Jun 2021 09:43:45 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Tue, 8 Jun 2021 09:43:45 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [v2] drm/i915/dsc: Fix bigjoiner check in dsc_disable
Thread-Index: AQHXW43Yd4+m4sDd9US/ODLA2eM+CqsIpL4AgADdLqA=
Date: Tue, 8 Jun 2021 04:13:45 +0000
Message-ID: <1433718b089548d480683aeabe800d07@intel.com>
References: <20210607105342.13155-1-vandita.kulkarni@intel.com>
 <20210607203059.GA28766@labuser-Z97X-UD5H>
In-Reply-To: <20210607203059.GA28766@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2] drm/i915/dsc: Fix bigjoiner check in
 dsc_disable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Tuesday, June 8, 2021 2:01 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>;
> Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [v2] drm/i915/dsc: Fix bigjoiner check in dsc_disable
> 
> On Mon, Jun 07, 2021 at 04:23:42PM +0530, Vandita Kulkarni wrote:
> > This change takes care of resetting the dss_ctl registers in case of
> > dsc_disable, bigjoiner disable and also uncompressed joiner disable.
> >
> > v2: Fix formatting
> >
> > Suggested-by: Jani Nikula <jani.nikula@intel.com>
> > Fixes: d961eb20adb6 (drm/i915/bigjoiner: atomic commit changes for
> > uncompressed joiner)
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 19cd9531c115..b9828852a68f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -1161,12 +1161,12 @@ void intel_dsc_disable(const struct
> intel_crtc_state *old_crtc_state)
> >  	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >
> > -	if (!(old_crtc_state->dsc.compression_enable &&
> > -	      old_crtc_state->bigjoiner))
> > -		return;
> > -
> > -	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> > -	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> > +	/* Disable only if either of them is enabled */
> > +	if (old_crtc_state->dsc.compression_enable ||
> > +	    old_crtc_state->dsc.compression_enable) {
> 
> Vandita I think you have a copy paste error  the second condition should be
> old_crtc_state->bigjoiner ?
Sorry.
Will fix it.

Thanks,
Vandita
> 
> Manasi
> 
> > +		intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> > +		intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> > +	}
> >  }
> >
> >  void intel_uncompressed_joiner_get_config(struct intel_crtc_state
> > *crtc_state)
> > --
> > 2.21.0.5.gaeb582a
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
