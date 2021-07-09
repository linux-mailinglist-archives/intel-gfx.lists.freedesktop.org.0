Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F163C1EC8
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 07:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5358C6E95B;
	Fri,  9 Jul 2021 05:12:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FDE6E95B
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 05:12:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="273484085"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="273484085"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 22:12:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="487923181"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Jul 2021 22:12:47 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 8 Jul 2021 22:12:46 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 9 Jul 2021 10:42:44 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Fri, 9 Jul 2021 10:42:44 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/xelpd: Fix incorrect color capability
 reporting
Thread-Index: AQHXcxC0/qlq/hbS10ehNKTwk/5XQKs3jHGAgAKPXAA=
Date: Fri, 9 Jul 2021 05:12:44 +0000
Message-ID: <8a63bb5c83ee449784f20a5ec292e0c8@intel.com>
References: <20210707095253.23848-1-uma.shankar@intel.com>
 <9c6c151e-3e52-863e-f033-da1230dfc1e4@intel.com>
In-Reply-To: <9c6c151e-3e52-863e-f033-da1230dfc1e4@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/xelpd: Fix incorrect color
 capability reporting
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
> From: Sharma, Swati2 <swati2.sharma@intel.com>
> Sent: Thursday, July 8, 2021 1:07 AM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/display/xelpd: Fix incorrect color capability reporting
> 
> Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

Merged the change to drm-intel-next. Thanks for the review

Regards,
Uma Shankar
> 
> On 07-Jul-21 3:22 PM, Uma Shankar wrote:
> > On XELPD platforms, color management support is not yet enabled.
> > Fix wrongly reporting the same through platform info, which was
> > resulting in incorrect initialization and usage.
> >
> > Cc: Swati Sharma <swati2.sharma@intel.com>
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >   drivers/gpu/drm/i915/i915_pci.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_pci.c
> > b/drivers/gpu/drm/i915/i915_pci.c index a7bfdd827bc8..8ff1990528d1
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_pci.c
> > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > @@ -947,7 +947,7 @@ static const struct intel_device_info adl_s_info =
> > {
> >
> >   #define XE_LPD_FEATURES \
> >   	.abox_mask = GENMASK(1, 0),						\
> > -	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 },		\
> > +	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
> >   	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> 	\
> >   		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> 	\
> >   	.dbuf.size = 4096,							\
> >
> 
> --
> ~Swati Sharma
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
