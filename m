Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E610C1A0E11
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 15:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 521CC6E86C;
	Tue,  7 Apr 2020 13:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3AD6E86C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 13:01:42 +0000 (UTC)
IronPort-SDR: KtSofcPQjm8qJEE59vg34TX9nCipdYOeNDwpgRWUD3r90I/jsn3zsfl6RUzk+7BYMoFY+rdGmy
 zctb2w4pwLcw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 06:01:25 -0700
IronPort-SDR: O/y3NoLoA9WCed4+JLB0b80PdUdr5cZs1R2Qd0R8vh03LDuBni7OwNcCd3+iGBPCYwmig1WCKk
 fssJDFoG5Ptw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="275091580"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 07 Apr 2020 06:01:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Apr 2020 06:01:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 06:01:23 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 7 Apr 2020 06:01:23 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.56]) with mapi id 14.03.0439.000;
 Tue, 7 Apr 2020 18:31:21 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Anand, Vipin"
 <vipin.anand@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
 lspcon hdr capability
Thread-Index: AQHWBAn7fuTGk7fsGk2u1+/ltxHRYahcF0tggBE6FYCAAFyGAA==
Date: Tue, 7 Apr 2020 13:01:20 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F824476E5@BGSMSX104.gar.corp.intel.com>
References: <20200327073140.11568-1-vipin.anand@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F8243D514@BGSMSX104.gar.corp.intel.com>
 <87zhbnihra.fsf@intel.com>
In-Reply-To: <87zhbnihra.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
 lspcon hdr capability
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Tuesday, April 7, 2020 6:18 PM
> To: Shankar, Uma <uma.shankar@intel.com>; Anand, Vipin
> <vipin.anand@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with lspcon hdr
> capability
> 
> On Fri, 27 Mar 2020, "Shankar, Uma" <uma.shankar@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Vipin Anand
> >> Sent: Friday, March 27, 2020 1:02 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Subject: [Intel-gfx] [PATCH v3 0/7] Enable HDR on Gen9 devices with
> >> lspcon hdr capability
> >
> > There is the series https://patchwork.freedesktop.org/series/68081/
> > already there on list.
> 
> Ugh, confusing.

This indeed caused lot of confusion.
@Vipin : For future, please sync with owners before spawning something new.

> >  We are waiting for DP state checker patches to get merge. That series
> > is almost ready, once that is merge will rebase and resend the series.
> > Lets track that one only for future development instead of spawning a
> > new one.
> 
> I ended up replying to the series at [1], which has a bunch of your patches as well.
> Please incorporate the feedback when you respin.

Sure Jani, will address your comments as part of the next version (waiting for DP state checker
patches from GG to get merge). They are almost ready.

Thanks for feedback on the series.

Regards,
Uma Shankar

> BR,
> Jani.
> 
> 
> [1] http://lore.kernel.org/r/20200327052357.22269-1-vipin.anand@intel.com
> 
> 
> 
> >
> > Regards,
> > Uma Shankar
> >
> >> Added missing signoff
> >>
> >> Uma Shankar (6):
> >>   drm/i915/display: Add HDR Capability detection for LSPCON
> >>   drm/i915/display: Enable HDR on gen9 devices with MCA Lspcon
> >>   drm/i915/display: Attach HDR property for capable Gen9 devices
> >>   drm/i915/display: Set HDR Infoframe for HDR capable LSPCON devices
> >>   drm/i915/display: Enable BT2020 for HDR on LSPCON devices
> >>   drm/i915/display: Reduce blanking to support 4k60@10bpp for LSPCON
> >>
> >> Vipin Anand (1):
> >>   drm:i915:display: add checks for Gen9 devices with hdr capability
> >>
> >>  drivers/gpu/drm/drm_atomic_state_helper.c     |  1 +
> >>  drivers/gpu/drm/drm_atomic_uapi.c             |  1 +
> >>  .../drm/i915/display/intel_display_types.h    |  1 +
> >>  drivers/gpu/drm/i915/display/intel_dp.c       | 16 ++++
> >>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 27 +++++-
> >>  drivers/gpu/drm/i915/display/intel_lspcon.c   | 95 +++++++++++++++++--
> >>  drivers/gpu/drm/i915/display/intel_lspcon.h   |  4 +
> >>  include/drm/drm_connector.h                   |  1 +
> >>  8 files changed, 132 insertions(+), 14 deletions(-)
> >>
> >> --
> >> 2.26.0
> >>
> >> _______________________________________________
> >> Intel-gfx mailing list
> >> Intel-gfx@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
