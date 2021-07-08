Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 886C73C1440
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 15:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2BC6E8BD;
	Thu,  8 Jul 2021 13:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8366E8BD
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 13:24:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="206488814"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="206488814"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:24:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="457883022"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 08 Jul 2021 06:24:51 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 8 Jul 2021 14:24:49 +0100
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Thu, 8 Jul 2021 18:54:48 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v7 3/3] drm/i915/display/dsc: Force dsc BPP
Thread-Index: AQHXc+OnPd36hWpFP0e5w8zWRrDuoqs4sPAAgAABLACAAF4qsA==
Date: Thu, 8 Jul 2021 13:24:48 +0000
Message-ID: <c6ef83bd24b24195817615969183e594@intel.com>
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
 <20210708102549.27821-4-vandita.kulkarni@intel.com>
 <87sg0p54w1.fsf@intel.com> <87mtqx54p1.fsf@intel.com>
In-Reply-To: <87mtqx54p1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 3/3] drm/i915/display/dsc: Force dsc BPP
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, July 8, 2021 6:44 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Subject: Re: [v7 3/3] drm/i915/display/dsc: Force dsc BPP
> 
> On Thu, 08 Jul 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Thu, 08 Jul 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> >> Set DSC BPP to the value forced through debugfs. It can go from bpc
> >> to bpp-1.
> >>
> >> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
> >>  1 file changed, 17 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 5b52beaddada..3e50cdd7e448 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -1240,6 +1240,23 @@ static int intel_dp_dsc_compute_config(struct
> intel_dp *intel_dp,
> >>  	pipe_config->port_clock = intel_dp->common_rates[limits-
> >max_clock];
> >>  	pipe_config->lane_count = limits->max_lane_count;
> >>
> >> +	if (intel_dp->force_dsc_en) {
> 
> Oh, this should check for intel_dp->force_dsc_bpp. We don't want to always
> force the bpp when we force dsc enable.
Okay will fix this.
And I was returning -EINVAL , to fail the test on setting invalid BPP.

> 
> >> +		/* As of today we support DSC for only RGB */
> >> +		if (intel_dp->force_dsc_bpp >= 8 &&
> >> +		    intel_dp->force_dsc_bpp < pipe_bpp) {
> >> +			drm_dbg_kms(&dev_priv->drm,
> >> +				    "DSC BPP forced to %d",
> >> +				    intel_dp->force_dsc_bpp);
> >> +			pipe_config->dsc.compressed_bpp =
> >> +						intel_dp->force_dsc_bpp;
> >> +		} else {
> >> +			drm_dbg_kms(&dev_priv->drm,
> >> +				    "Invalid DSC BPP %d",
> >> +				    intel_dp->force_dsc_bpp);
> >> +			return -EINVAL;
> >
> > I'd just let it use the normal compressed_bpp, with the debug message,
> > instead of returning -EINVAL.
> >
> >> +		}
> >> +	}
> >> +
> >
> > This should be *after* the below blocks, because otherwise
> > compressed_bpp will be overridden by the normal case, not by the force
> > case!
> >
> > BR,
> > Jani.
> >
> >>  	if (intel_dp_is_edp(intel_dp)) {
> >>  		pipe_config->dsc.compressed_bpp =
> >>  			min_t(u16,
> drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4,
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
