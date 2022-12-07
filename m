Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 700616463E5
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 23:10:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BB0510E425;
	Wed,  7 Dec 2022 22:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C4310E425
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 22:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670451028; x=1701987028;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=w1+9NNnligfTKEPYivWIPwOEFUWpg0xxID5gHHS1eqg=;
 b=ekikW6LC/QfL5agQBCExpqbv0dr5uJT9UN66NXkw7WbEe8bMMpODpjOD
 D6h6QOKuoqS40iFLmzdt4FhnpV6KNXkvg2V2hJkVkxE1iMkPz4yjH4oZb
 Qk3RlMazGcFCvqLa8bOLSD7yzjhsuOLKQLsLZmj+txSb3/MonFsV6guNk
 wAdzCDlPYoz8qtWRKwA5zgvLlumKd2ujWGHE3WAaJlUC4otnoOU8xbA0B
 Mzoa8xJnAP7tyFh4TKlCOx1Wdz0o67/C7R/EY504BpbwcdBj5p3mYbO52
 8o0xm9yshU4V/n6M2Vv/mG+DANLeJ1fbi1kolStJmvrEWiXuMcOF2udzs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315729510"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315729510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 14:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="771256353"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="771256353"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 07 Dec 2022 14:10:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 14:10:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 14:10:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 14:10:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QpRpM72VnIRPPQ7niKFNFi7H0zpEzWZqxz1TY4mS8y3y1yMmSpH7f3FXTOPi3/Qv+5Ggl37UvItP7b1eR/xZzbefCv7dXOWTkAab1S4o3jisG59Db6O+7UZUyz2m6lQvz+j0U+7sFVqlfnQRfjPDFnhne7IhTjb/s0fXUCPj8g069SW4uwKh4g8ZYK8iAuVQoDC804VxRwClnLpZFgl5XyZjkIfp4iy7jPiYiKd/s8v/Pme5dd37xKHu43brEG3RjA7vNJhlNS4vsxPsVpTqcu8wJpbGve3+jFYsaO22emKx3qByLJmezaR6jfnpHlH5G1UEWsYbLn+wtfxXPyEM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OomjEXbr20DR6uRYAUK5VkVa/oLzT8u0Nhddh6jlgkY=;
 b=MuV6hVQr4Eyt9r+TYpvwbhOSyQTguWdYrntoadplY4I7XmdNKr2MO9JHw3vobrOTUkjQ03kCJ3bepSfihdh5vOBQ+GMxMV3tE3tAjdFzumi9Al3LMZsVmSqPSXkgC39cqE0lXl9I01HLB+KbpEdMAX3JJOuaa20euT/u+scl7n/gMDuAS3BGOd0vYMhfJu/IOS7GizyS3QSgTSkBnml5rQEyE27EtL091rt7ZtwLgVsmDXH4rwxam7OiBYiER0jG7ADnIJNqrxCGI1VnaH57LjHHgFG6lEjzghYLl3C1vcOfOwpQz9jnFy3Ekw69WVFmmKnPUeKoo3HBQb5y/h2zfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by IA1PR11MB6196.namprd11.prod.outlook.com (2603:10b6:208:3e8::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.13; Wed, 7 Dec
 2022 22:10:22 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::566e:4cea:5a48:58a%7]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 22:10:22 +0000
Date: Wed, 7 Dec 2022 14:10:16 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <Y5EPSD9z734wPv/8@msatwood-mobl>
References: <20221202165143.82538-1-matthew.s.atwood@intel.com>
 <Y4pLTSxA+BYsZKco@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y4pLTSxA+BYsZKco@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BY3PR03CA0030.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::35) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|IA1PR11MB6196:EE_
X-MS-Office365-Filtering-Correlation-Id: e72c04ab-823a-4c80-3412-08dad89fd58d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8kBjcWKQSr9ZPAjDDUtvZ62QCSkFzlTuF6yXOzTbo2MM38VbiyAmQUFRndhrFhXY/6gs90nuewVxT/DTdphmX3n358x9RpuP5a1FZPazoVDS+RYPhIU/3M9B1SFve1w+RANShtiGU9n5wGfdMxWs/7tU/wJD8EL+D0Xe8rKQUfCf4hOhW/Zy6cFXVTTSFzg8q5cnVnAU1jyDcN087zek/V2OJHn3rNiX4Xk57ZYGwKi5MQsABUAt1BoTY9C/79g8k0AbyyoDXk6ljkf3uW7PA6cczARGnLjeAiRZXmq/8ayLNwGXb1nHFmEnqujERbLojejRxWpLKpZ20QRbzqgBBM3RsDGAOIJDhcKPpUQ8nGla7QGz+wMoOdfJqf+RIlvo7kxgLkht1NBpyvrIGriY2Cd40y4jt4Z0yhJCmWKFIsD/DKaxPjPk+Dv2h/+isrvlrJY2MP4Mvg47/uIxOanLH1eFKXWJn+B0CYnNkz4iK8rqnPY1EmjhidJQR6NjZ4KYSQTkhEt356Z7Uf7+lqLw6kDCRcdgVhNmkBqUkrxQZDK+V50815TmvK0hMsErGi5KNrdQN8rqG8LdcYwxAbrzyNzzV7QNrrIypIXq5Z4/fjBOHZNIU6LsP1capd2RVsQjUZDc0TevA/RVuvtx/ytnug==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199015)(83380400001)(33716001)(186003)(66574015)(86362001)(82960400001)(38100700002)(66556008)(41300700001)(316002)(8936002)(66476007)(5660300002)(66946007)(107886003)(6666004)(9686003)(66899015)(6512007)(2906002)(6486002)(478600001)(6506007)(8676002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlpwR3A1c2VzTGhhSU56a0pFSHZqWVZXUFh3eTBSNnFMS3dMZWt0VHpyeUJM?=
 =?utf-8?B?RWZ1ZzUzMEJOUHNQQjhmTXk1c2NRcEVsK0xPb0o5RGt1MGh1dmg1aHE5NmZZ?=
 =?utf-8?B?NzFhaFVDdVROMTNNdVdMR0tBVGpWN0xaWFA3ejh1bjE4bkR0T2lxcmttd0tQ?=
 =?utf-8?B?V1ZoSHg0UERvUEJaOVRySER2VjNPRzEydEIxTjFTSjZNZEZEVVUwd2RPL1FJ?=
 =?utf-8?B?MjlVQ0FXM2M3V2lPSEZXeXk0cFhMaGtCZWt0cnM1Y28vT2tMeVZaRndva3B3?=
 =?utf-8?B?bVlNOStpTG9EdW9yZEx5NHdpMnRzTnBrMENaaGxIZ2hRckJDUXZCWTIvWDZP?=
 =?utf-8?B?OWFNc3piZlhqeHgrd1A4ZHhUTDlDMVo4bmtjZWlWK1J3UU0rNldHMkN0RXFV?=
 =?utf-8?B?bERVVEt4QjlwZSt5VnMraUF0Qm5xQ3U4Z3p0SmI3Q013dnVtSlBFTGsxdWRE?=
 =?utf-8?B?OHJpSllJNFFBdmlWVTlZL0toNGRsajlxUzJaclJJbkZidnUxT1pRV0tIbEZM?=
 =?utf-8?B?VzlhRDFJRmdBdi9Vd3ZuQU1ETEtPVmZpYnBFejZCbjhrMXpiRm56cWhNRGlE?=
 =?utf-8?B?UlRDZTUvelRGaloyUmFZa25TSEI5dzdmQTBmcytDNUwwUjZPMGZyQUtvaW9M?=
 =?utf-8?B?VzhjSDFTLzI3dG1LekhpWEdNTUhNMlZtMnBnSFJ0L0E5bTdVVEJuRGZFQmRV?=
 =?utf-8?B?Vmcwb3U5VjY5TGJEME90YzJxRkZSb0c0KzhnWWZFRjBtbDhUZUUvR09NNjRq?=
 =?utf-8?B?MVdSVUJzYXFwZWFEaUsvc0R3SlFrcG82OEdYVmpoRW9VRW91VHEwcmxlZnJq?=
 =?utf-8?B?dFB6VjlXZWM4S3FBVXRjWmYvclcyakJqT2N3WVNTUmt2cll6Y3VZWmxUK3Nm?=
 =?utf-8?B?Z0p4b1FOZDNqeFRyVGVLVEZ2alBjcE94TmZ2SkNGcmdQdU9NUll2MWMyQVFq?=
 =?utf-8?B?Z21BS214bnFmZUxYT1NUUTVQRTdCc0JnUW90NVVhc1hIKzd3dUZ0UWphRlJh?=
 =?utf-8?B?YlRlcXl0KzRLZlZLTHU1SmtVc2hpWjBPQ0ljSHZJSTltMEViYm1nVFFLWGZx?=
 =?utf-8?B?KzJoMDdKMnNXblRFeGIwamMxbUZrWHBVTXB1Z3ZoQkd1L1VyWmFrSHBtdjVE?=
 =?utf-8?B?RnZWU3UxUC9pdGxlRGZCbTZxVTZRMEVCejVrTnNSMnIrdTRFNW4rcTBPQm5E?=
 =?utf-8?B?Qk01T3R4aDdBbXMxUkN4NmtoaC92eDE3Q3FlWjZCb2g3cFRFdVhEZFJLa3JU?=
 =?utf-8?B?QjQ3LzljazNORmVlOG0vQzBVc0RjcXdKcDBwWjdSM1d5WXkvZ0RweThjTHFO?=
 =?utf-8?B?NDdrcEcyM0pBMEFTRnprT0hPVGx0c3Y2Mm9pdlZLWHcrQk4xcURWci9IR3d5?=
 =?utf-8?B?bU5MR1hjOE9zNkh1LzVCRnl4UFhJVFpvTFB4aG15c0FxNnNERDYySTQwWmp0?=
 =?utf-8?B?RndQNWt6WkswTC80OUZ5OTZqRTVmMFU3bWs1OTZETlhna2c0R0JDRXA1clp2?=
 =?utf-8?B?Y282Z3RJSXBveHJBaUtlLzBnUVhDc3ZMdVEzVEpiN2hqZ2lKc2NkRncvMTEx?=
 =?utf-8?B?UDJwaE0wQVoyOUMwMHBVejNhTTBrd3RqTEFocVdOQTRZQjBCZkFQUCt5K1BW?=
 =?utf-8?B?dklyd21CYTNzYkplRlRCNWhoQktJV2diazNZUDJ0OFJYb0F0aVhPd1NuekI5?=
 =?utf-8?B?eUF1Vi9ZZnN6d1lXT2xRaTFuNkVpSkQ5ajFnRi9HcThuYTNRYWlwcStNeHRG?=
 =?utf-8?B?bzJZb09ucHJFeitsRnZIYVNCQU1GNmdSR0NOMm5NK1pwSGhQZ01zcU41MGRY?=
 =?utf-8?B?bnpFNHlTNTMrK05Zc2JxS1hYY2k2RldkQ0pSL3kvV0lyd3VocHFTMUtoTHZs?=
 =?utf-8?B?aVVxZEQrV2ZvRitXV1kzVFJrUjZYMFlxQVc4K2VJRU5qR3c4L0lrTUtuQkNs?=
 =?utf-8?B?K2xOK29uZy9TNitvZ0RYdk81RXRTV0tWUDBHTjYvRUtJNzVsSit1eDQyVnZw?=
 =?utf-8?B?NkZSSGpxdEozMWlhQ0MvaFBvUjhzVHpwMFZPcmtSQVFTNnh4ZGNDVVM4UDho?=
 =?utf-8?B?VU14Z3JWUm5LL2Y3c0xVSFBLRUJ4NWp1b2U4bDZic3pDM2p0Ty9NakFvSTNR?=
 =?utf-8?B?VjBlWHpQYjl0dFp1d0I0UXRXRC9acmFVMmdWMlRxcjFybkt5NEhRVnNLd1NV?=
 =?utf-8?Q?dNHhQGS7y+1Vr5+rMYT+0ro=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e72c04ab-823a-4c80-3412-08dad89fd58d
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 22:10:22.3671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vtcvUk+8rjBDCjrqY4/Dc7f0OlPiSlKkr71rIRfc6g8VhIi1jGCaOmwUqORQNZObYPE4pmdHVvsyDiOcuIN2A28ESNA7LMxie92sF5lM97I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Patch v2] drm/i915/mtl: Initial display workarounds
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

On Fri, Dec 02, 2022 at 11:00:29AM -0800, Matt Roper wrote:
> On Fri, Dec 02, 2022 at 08:51:43AM -0800, Matt Atwood wrote:
> > From: Jouni Högander <jouni.hogander@intel.com>
> > 
> > This patch introduces initial workarounds for mtl platform
> 
> It looks like this patch is only dealing with workarounds from past
> platforms that carry forward to [some] MTL steppings.  I assume the new
> MTL-only workarounds will roll in in the future?
> 
> As far as historic workarounds that need to be extended to MTL, it looks
> like you're missing Wa_16015201720 (i.e., an update to
> pipedmc_clock_gating_wa).  Also, since you still have comments listing
> platforms, Wa_22014263786 also applies to MTL (the code is already
> correct, but the comment is now stale since it doesn't list MTL).
More w/a's to follow, will clean up stale comments and wording.
> 
> > 
> > v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
> > ver. (Tvrtko)
> > 
> > Bspec: 66624
> > 
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
> >  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
> >  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
> >  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
> >  4 files changed, 28 insertions(+), 10 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index b5ee5ea0d010..8f269553d826 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> >  	}
> >  
> >  	/* Wa_14016291713 */
> > -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> > +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > +	    crtc_state->has_psr) {
> >  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> >  		return 0;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index e82f8a07e2b0..efa2da080f62 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
> >  			       0);
> >  
> >  	/* Wa_14013475917 */
> > -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> > +	if ((DISPLAY_VER(dev_priv) == 13 ||
> > +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
> >  	    type == DP_SDP_VSC)
> >  		return;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 5b678916e6db..7982157fb1ff 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
> >  		return intel_dp->psr.su_y_granularity == 4;
> >  
> >  	/*
> > -	 * adl_p and display 14+ platforms has 1 line granularity.
> > +	 * adl_p and mtl platforms has 1 line granularity.
> 
> s/has/have/ while changing this line.
> 
> 
> Matt
> 
> >  	 * For other platforms with SW tracking we can adjust the y coordinates
> >  	 * to match sink requirement if multiple of 4.
> >  	 */
> > @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >  				     PSR2_ADD_VERTICAL_LINE_COUNT);
> >  
> >  		/*
> > -		 * Wa_16014451276:adlp
> > +		 * Wa_16014451276:adlp,mtl[a0,b0]
> >  		 * All supported adlp panels have 1-based X granularity, this may
> >  		 * cause issues if non-supported panels are used.
> >  		 */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> > +				     ADLP_1_BASED_X_GRANULARITY);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> >  				     ADLP_1_BASED_X_GRANULARITY);
> >  
> > @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> >  				     TRANS_SET_CONTEXT_LATENCY_MASK,
> >  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
> >  
> > -		/* Wa_16012604467:adlp */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv,
> > +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> >  
> > @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> >  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
> >  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
> >  
> > -		/* Wa_16012604467:adlp */
> > -		if (IS_ALDERLAKE_P(dev_priv))
> > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > +			intel_de_rmw(dev_priv,
> > +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> > +		else if (IS_ALDERLAKE_P(dev_priv))
> >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> >  
> > @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> >  
> >  	if (full_update) {
> >  		/*
> > -		 * Not applying Wa_14014971508:adlp as we do not support the
> > +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
> >  		 * feature that requires this workaround.
> >  		 */
> >  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index a8a5bd426e78..0ad206f76b7b 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> >  	 IS_GRAPHICS_STEP(__i915, since, until))
> >  
> > +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > +	(IS_METEORLAKE(__i915) && \
> > +	 IS_DISPLAY_STEP(__i915, since, until))
> > +
> >  /*
> >   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
> >   * create three variants (G10, G11, and G12) which each have distinct
> > -- 
> > 2.38.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
