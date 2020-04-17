Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5344C1AD750
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 09:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E71E36E3B0;
	Fri, 17 Apr 2020 07:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D906E3B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 07:23:00 +0000 (UTC)
IronPort-SDR: VX0vxEgsiu1vcM+eAL327RGLfaKPT6FWNvSe3sNWKz9QQgsNTdvPEl4bDejFrFojJb8J0r8tSC
 exrOsDnN9AGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 00:23:00 -0700
IronPort-SDR: axZC5ijgzwLSnLjPfSTALxKzdRHHP8z8cQ3clnI8RCoKF8sG7YMxTo4ndE3xcdrfMnpTSMRtJp
 ehW+eZyaUdVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,394,1580803200"; d="scan'208";a="244638254"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 17 Apr 2020 00:23:00 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 00:22:59 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 17 Apr 2020 00:22:59 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.58]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.182]) with mapi id 14.03.0439.000;
 Fri, 17 Apr 2020 12:50:32 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v5 0/4] i915 lpsp support for lpsp igt
Thread-Index: AQHWE0pDYhFenmdBi0i97rSz46Lrmah86n9A
Date: Fri, 17 Apr 2020 07:20:32 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82484A93@BGSMSX104.gar.corp.intel.com>
References: <20200415170555.15531-1-anshuman.gupta@intel.com>
In-Reply-To: <20200415170555.15531-1-anshuman.gupta@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 0/4] i915 lpsp support for lpsp igt
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Anshuman
> Gupta
> Sent: Wednesday, April 15, 2020 10:36 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [Intel-gfx] [PATCH v5 0/4] i915 lpsp support for lpsp igt
> 
> v5 has fixed the review comment for [PATCH 2/4] provided by animesh and rebased
> the series.
> 
> Test-with: 20200409053951.26929-2-anshuman.gupta@intel.com

Series pushed to dinq.
Thanks for the patches and review.

> Anshuman Gupta (4):
>   drm/i915: Power well id for ICL PG3
>   drm/i915: Add i915_lpsp_capability debugfs
>   drm/i915: Add connector dbgfs for all connectors
>   drm/i915: Add i915_lpsp_status debugfs attribute
> 
>  .../gpu/drm/i915/display/intel_connector.c    |   3 +
>  .../drm/i915/display/intel_display_debugfs.c  | 100 ++++++++++++++++++
>  .../drm/i915/display/intel_display_power.c    |   6 +-
>  .../drm/i915/display/intel_display_power.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   3 -
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   3 -
>  6 files changed, 109 insertions(+), 10 deletions(-)
> 
> --
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
