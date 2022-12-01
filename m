Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4599B63FA65
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 23:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D45C910E67A;
	Thu,  1 Dec 2022 22:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E38E10E67A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 22:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669932900; x=1701468900;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=N8TL4zV6FE5ht4mra2VBBKBFOFoK1oH6mbUucALSybw=;
 b=QlvbNsW0VCLk/waJKMa22xABmjmYOf7t/5QczvPFC3QBmnoGVSZ557Vq
 BLgoZCKxZlbiOFq7EH4Bjo5iUkdzTBKcGgJ9plkB8zAgMcxfmEDwg7AzY
 NdmQgBlohYhuDYmMgO6TDFN3zei0DeCF0JnbsgH9tESBBhj3PgnsF/4Od
 LJo38Pi0fGkE/78Tlyj0EcOMFgTY5UfqC+24aLM3G76J5yYKY/KCfDzIx
 tJypH+1yDir54lasF4tPcPdNKQMeIpseV/H3rEzCUTcyin6s5mc2IVa3h
 5nwTgayY3u6m7mU4WQG+Y3HgjciyVWOprOUsSHiYeoz8j7tPoOHz8P8vV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="296165047"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="296165047"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 14:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="595233797"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="595233797"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2022 14:14:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 14:14:57 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 14:14:57 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 14:14:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b/cOQ/rD1Jb3LsZGPKL1f/6IA42SbkHk1y0DYQ95nP4o46CYczjkQpZ4UFa8TndC6ekr8QXrbIJGEa0pHxidG7Y1mbm1kr7lpwtejQlCHVEaIoRSrfO+/3baxwJbGj7la4FDSj97l4ISKzmk0MvZuo74CUum716H0QjshSQhl75HzrbNO1d1EpVzc/JY6pzMsCwNyb20uD0MqXr6wZD+TxrZpsRqReqc9DwJTFpdVFiRexyKIrswGD/yUzbu4UcnTN6JwebsqyLubi7j0TvOb5MvXou6+zGIb7V1iNgBEUG0r0mxSHHJGQwKe/HPyi2jOyBHpmexHUct8+2Zw1RHoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2qplH0kRnLddoVXMT45fjR7gdvOZ3oJVuy7951d3beE=;
 b=aHG+h7GvBPfLIIiHS6Jn0cVJyfrVLgpj9/pA5BFpE+W8A43aQUOWQLCvxMoqkRQi5OBCFShAa9jJwcsplg22oLvxfvWbRd7ZkypbSHDjIXwYkiZCX6OHQRrycr/Id2fwqQwQVDBU46vhb8CYuBfBVywPuyRWrORhm/I2ox/boF8jwVhXZ6XSLtXOZk53vqxKOye8BHm7iOEgZBQ7nExS08Z8N/Qplpv7TXtKcNTglmTZPZJU30s77M1psppOdBVDswkIaz8dex7SHEqquIhX0oIXQkZrq2G9FdejqicntT1qZab8KqykzK1FWCJPDywcD0P76mqpd9q3TmTit/VzAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by CH0PR11MB5521.namprd11.prod.outlook.com (2603:10b6:610:d4::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.24; Thu, 1 Dec
 2022 22:14:50 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a%7]) with mapi id 15.20.5857.023; Thu, 1 Dec 2022
 22:14:50 +0000
Date: Thu, 1 Dec 2022 14:14:44 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4knQLBNdqGs/Qtr@msatwood-mobl>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <ad07fb03-c2b7-95f8-0b0f-bcff91052d05@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ad07fb03-c2b7-95f8-0b0f-bcff91052d05@linux.intel.com>
X-ClientProxiedBy: BYAPR06CA0047.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::24) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|CH0PR11MB5521:EE_
X-MS-Office365-Filtering-Correlation-Id: 17493756-e94c-464f-9639-08dad3e976c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g9P7DP8Es3APfNWn18I4C5HuLY05fnXv6Ccbvg467HsOFQvI3MyO71K9UnQkG5JRKfVz2Md46UKlpDEk794Os1hCB4IDlqqxgDzKlrUG++rkrqcN9swGzWJ/JujyVzY8fgNKZBEIhmyzpfBDXxna/V4Xxoj2CFxW/vQy/ePQhwAeRNECFIOekcT7l+jgbo5HUxDXH9wUI44hQGmkF4L14XhWzRO7WHagxf8hazCZ91U/XN309/PZU5NS7fJ4BmGi3/F6FhP31YebSxJOYKMc2yPkCC22pSvKjnjpX/de7dhfQfpk8SmHarRRszwAjOAY5CBwMm6kezHgs73Qnyz+f6U2L/vQ+xgZTjNH3iq1LU9pLabxE/eNoWnuIU5ToxM79dAvLQzeZC3imzR7xwxqO+rOWszUT/yjRPVR25tMCdQ/Fv5rLZYurLqe2Ub4D6EGBmTKeoeGOEsaqVObs1a+qqgvmGrw5OjdfBhmGV47xhbFuFM2E3lO9kHgDd9msQD/I431zuylEuPlkXR06nfz9k4x1dx6hSZDdQEYOWIZuNNXRfpAHY5CK39gLWn8WTQ+73A9YX73bPGk4/kWDetJhnHXxJJ6KNpOlHJQffLGbrG6XhV+9eRP3J6wizkcaD2/KV+IDJXAA3dd89MaxfoGkg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199015)(6506007)(53546011)(6512007)(316002)(82960400001)(6666004)(9686003)(26005)(6486002)(4326008)(478600001)(8676002)(66946007)(66476007)(66556008)(8936002)(5660300002)(83380400001)(66574015)(41300700001)(186003)(2906002)(38100700002)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TCtKaEVIdFdDVXlmVjl2U1NqNEhjaVkyTERZVTFJT1N4WTdqWVNKcFRRK1E2?=
 =?utf-8?B?SUR2blo4UFhGOUszYTIwakFXSE9nb0lHa1loS082TTVmVjFPKzB2Q3BzZm8w?=
 =?utf-8?B?V0hETVVmV1VjOGRXVjdaM1VueHhpNVczckdWbmJJZVZhbWtHcDVReEozU2VZ?=
 =?utf-8?B?TUlmTHVCL3VWVlo3Y2lRMWtnMTJ3UXRQV0pxbGdFSkk0aVA0S0FEbVU0b1lG?=
 =?utf-8?B?UGhzWEYzN0tsUzk5TXFsL0EwbkpLOUlabEtYS2FQdUFiSDl6M2x3L1ZNaXln?=
 =?utf-8?B?aHR4cDU2OWFLU0lCK3RoSkNGM3o5NjFkQ3Y3eWdPTXVkRlpZU1FScjB4Q1NQ?=
 =?utf-8?B?ekxCQTF4WFlpRmZUWGI0dWpEdU93V2ttWXEwcW5na1VBSTE4SkhQaEh5NjFn?=
 =?utf-8?B?b2d0d0xlOWxLS2VYa04xM2EyMkNjZ3JKMnY0ZHNlNlpRd2x6RmdRUEkvNWlB?=
 =?utf-8?B?VG5uSzFMdEpzSldNYWRyQUxvSXhzeHlEc1lSRjZUOUswTGJFR3RDUWRKd1hE?=
 =?utf-8?B?dmsxQlY4Y0k0UUtscFpidnFudjVnU1F3MWUxS2wwRjNZZGZTckNRempmOE1s?=
 =?utf-8?B?V1BXM2pPcmc4elBXdDZ4VmpqVVdIU1JJbVFubWZNdld6TU4wS0dIQklUMzd0?=
 =?utf-8?B?M1B2ZDBFblZmNldjd0I5UFU3TVVFa1hqaUo2SkJZN0lPTzFQUml3THcvL3B2?=
 =?utf-8?B?OUJtdzNvQU5FM0FnUWNDVzFZcmVrL0NKZG96c1ZFTElpd2ErTUxmeEk3dnNv?=
 =?utf-8?B?ODViQVJFaGJLRThrWTRXTGdsREN0SjVWN0VDV2pRMnYvUEpzVnhKZlVkaGNo?=
 =?utf-8?B?alJBbTZ6K0JxR0N4TzFTUzY0b3JvVXAvcVk4SjBZUmpYRHBZaXZsVytjdWh2?=
 =?utf-8?B?RmVJbXdsNUV6UlBleVAwUjBIYk9BbVBNL0lHaG9OVEZFMEtacGkrZVFpak9D?=
 =?utf-8?B?NkphMEJsNjRKdXorN3BraGJ6S25OQWlxZXpiaGU3aHNrL2pDWEZSMG4xb211?=
 =?utf-8?B?a21xb1RUMXBDTHFzWE9JK2RYZm44UktPZkFTOVJsSHdGVVUzSk5TWmt0Znhy?=
 =?utf-8?B?MFZTdUZ6MVJuQzVmV2pxQnFBdzE0dDZENmhoeTZSVWJGWng2THRZWnpUck4y?=
 =?utf-8?B?OTRUSS9SZkpUWkxrN2ZxWUNMbi9rMXZaY0dFT3lsNXFaS01lK2JTWmxpYWY4?=
 =?utf-8?B?cTdaRHBaQ0NDY0tqYUJtelNDQWhSY0FkTWN1S01qeWhGbFVEWXBEa1MxZnpi?=
 =?utf-8?B?eDhhKzZ5T08xd2FBeVE0TE8zSnFwSU4xcWVER2RIMzQ1T1NEb0w0N0F6eFhB?=
 =?utf-8?B?U1NwYS9SbFF6UFJ4dXA3RWNJbzd0OUNzMHV3c1lDMFF6WU9CbXlSZDZKcDcv?=
 =?utf-8?B?NVhBeHJCbzk2SEhWT0FpQ1dVbEtRU3hkazFmWWlBcGpEblhYZUl3R21nVmNW?=
 =?utf-8?B?NnFicENWZ243bnJBcXREV1JwZ0FaV1dHTE9KNHloM2taZytoUHk1VXQwMGNP?=
 =?utf-8?B?czZWN0hQQWNNSXJLdy81QVcxdlhQT3lMR2lzKzdDZGJJNnZMTHZMRFh1WTNl?=
 =?utf-8?B?eFEyYzdQSGJlYzNiR2RxZHQ2bjZNQmpRTEMzQmJhRTh0cUR4VTAwQ0lWb2do?=
 =?utf-8?B?VXZXb3ZwNnRFd1k3RVhWMy9EQVE1QTVjTHRUUEx1d0pCY1pLQlhlN1ZhRDVo?=
 =?utf-8?B?UkFBY2hWQjhKNkVHZ2lMWVNPYWR1N1I1NU00RjNvNXUyN3JoRSs2MTR0NHNR?=
 =?utf-8?B?VGJadmZyNEt2TXlCY1U5d2ZFQ2JPb1ZIdmFzYWo3V21yOG5neHE2R04zUUMw?=
 =?utf-8?B?RXErM2o0V2ljSkwwVXpaSnJFaWFUd3N6Q1VFRk85MjVneVJBMllqYXBHY0pW?=
 =?utf-8?B?WVJJWFdHTFdaUXFmR0JJSDcwS3RKaG5VaU9JcjBBbnphd3NEb24vVkVLS1cx?=
 =?utf-8?B?blIwMjlTdVBHdWQwclNXeGFGRnFtNnM5S3RDU3hLU2Q3bGxrVEcrenRjbHYy?=
 =?utf-8?B?bFVJVzdscERYTkorTkdqaWwzL2NqN1NjRVVZNCt4clFiSVVNVWMzR1ozOS9K?=
 =?utf-8?B?S0dNR0JpNjU4Um4rM1ZZZjRxS3JJOU5SWkk1d2YraS81SmNoN1dMUDRNalZp?=
 =?utf-8?B?c1JoTHlDZWUvcVl4UHhFNFdoYkZGZTh3MU96R2dJTnNaL1VFeSt0clpyaWli?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17493756-e94c-464f-9639-08dad3e976c1
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 22:14:50.1929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KDMvJRw9IytF/yk0TTa3Ayyu9DpFpfjRb3kHuwzvORuOD/ry4zc9WVvw2hkK4VWJa+Hs47o4E1JQeoS5Vzjb1BhpNN18DNIKttW3jfkdOxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5521
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Initial display
 workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 12:51:33PM +0000, Tvrtko Ursulin wrote:
> 
> On 30/11/2022 23:17, Matt Atwood wrote:
> > From: Jouni Högander <jouni.hogander@intel.com>
> > 
> > This patch introduces initial workarounds for mtl platform
> > 
> > Bspec: 66624
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
> >   drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
> >   drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
> >   drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
> >   4 files changed, 28 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index b5ee5ea0d010..8f269553d826 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> >   	}
> >   	/* Wa_14016291713 */
> > -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> > +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > +	    crtc_state->has_psr) {
> >   		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> >   		return 0;
> >   	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index e82f8a07e2b0..efa2da080f62 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
> >   			       0);
> >   	/* Wa_14013475917 */
> > -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> > +	if ((DISPLAY_VER(dev_priv) == 13 ||
> > +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
> >   	    type == DP_SDP_VSC)
> >   		return;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 5b678916e6db..7982157fb1ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
> >   		return intel_dp->psr.su_y_granularity == 4;
> >   	/*
> > -	 * adl_p and display 14+ platforms has 1 line granularity.
> > +	 * adl_p and mtl platforms has 1 line granularity.
> >   	 * For other platforms with SW tracking we can adjust the y coordinates
> >   	 * to match sink requirement if multiple of 4.
> >   	 */
> > @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >   				     PSR2_ADD_VERTICAL_LINE_COUNT);
> >   		/*
> > -		 * Wa_16014451276:adlp
> > +		 * Wa_16014451276:adlp,mtl[a0,b0]
> >   		 * All supported adlp panels have 1-based X granularity, this may
> >   		 * cause issues if non-supported panels are used.
> >   		 */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> > +				     ADLP_1_BASED_X_GRANULARITY);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >   			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> >   				     ADLP_1_BASED_X_GRANULARITY);
> > @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >   				     TRANS_SET_CONTEXT_LATENCY_MASK,
> >   				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
> > -		/* Wa_16012604467:adlp */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv,
> > +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >   			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> >   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> > @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> >   				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
> >   				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
> > -		/* Wa_16012604467:adlp */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv,
> > +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >   			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> >   				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> > @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> >   	if (full_update) {
> >   		/*
> > -		 * Not applying Wa_14014971508:adlp as we do not support the
> > +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
> >   		 * feature that requires this workaround.
> >   		 */
> >   		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index a8a5bd426e78..ecb027626a21 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >   	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> >   	 IS_GRAPHICS_STEP(__i915, since, until))
> > +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > +	(DISPLAY_VER(__i915) == 14 && \
> > +	 IS_DISPLAY_STEP(__i915, since, until))
> 
> You might want IS_METEORLAKE somewhere in here if macro is called IS_MTL_..
> otherwise it may surprise in the future. Unless it is guaranteed MTL will be
> the only with display_ver == 14.
ack
> 
> Take care of checkpatch warnings as well please.
Checkpatch failures are all "macro argument reuse '__i915' - possible
side-effects?" this appears to be the standard for these macros (the
passing of __i915 to this macro to be fed into
IS_[DISPLAY|GRAPHICS]_step functions.). Was there something more I'm
missing, or were you wanting something more done to the overall format
of the file?
> 
> Regards,
> 
> Tvrtko
> 
> > +
> >   /*
> >    * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> >    * create three variants (G10, G11, and G12) which each have distinct
