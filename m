Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B62225F4CDE
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Oct 2022 01:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF96710E196;
	Tue,  4 Oct 2022 23:57:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340D710E196
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 23:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664927858; x=1696463858;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2A4OmFEcXCag/TBpOW5ttMFPTyodQKt54vwh8TOPdxk=;
 b=NZK5AGYnGIZlaYTLIaZrGrcRWf8CNCRVhmAaixVikWoumOuws+Wfg0Fn
 y8l9F8NJO8tSb/CoLcB07HNXzac2JS2kzvk9YOWVvu7xSXhWZWyjkRHHv
 U2kCfvmuBOkG48mqy95F2gzTkiNLaz1TFr+/oC5N2VKyypTjj+q6zOUB9
 Zrn62SbAwUXaho+ac15VxEM2cRgT/ncEnLA9XONa+3K8SdHLgUQtl72Uu
 Gq7kSxmDLAlaD1e1HQVEhwhuXRZ0GRd/wqF1iKLvPRO7DscOIzwBrolK5
 MDq7L3d+JRW8yW8n5e9lKZruqsv/htL9CRXeyQvidRzS60RVugCVzK5m/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="364977498"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="364977498"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 16:57:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="713233150"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="713233150"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Oct 2022 16:57:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 16:57:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 16:57:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 16:57:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JLqCtJ9hfjt+XP6I7r18yg7oj+yadrVtDmI+YTbND0kSHnPOpzkDVlHlSBnr1c3FVyGBFVdJuMBpKDmbG/kWT4N4bIOsd+zqqkib4DFHdosrqbt/KtehOSKGnb1Shqa16TuB+RrS39LeMmln4rpAafbHIVwWdeLt10wIKkje4vRhNHXJ7CUEGHdUoITHkB9qeeCLYDCAg83WeNDe8fNgBqdTVe2QqoBm46S6mLcS9vwJun5zgVODuok/j0bzWHVkfiHvnI02+Q1uxfphLTvYz+KAnT0Rx/EtvuS7GaJcB9V+OjRzbXNV9TJy5HtaDuv2+MYCUo5gK6hvNnQgIBBjlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+NpZ6lETXk+uDbLkuOx2cW2ZthpctkjhwUEmmIR9Qs=;
 b=MQL0PbUhM2OCU8P6c5fgxHZb/EkOMs5SR/HWLLl/UB6RhoWmEK8OViE6PlL5sOz/mHY7MZPf2XYToYqM4dizyRaVIixIsYu5r1na0zfTP+yTFMM1EkTs2Jzx8Vnaj2/phXIygWBTcFCPIFqjuPewm3iq9VVrz3oBmCS60SwIIGRCwTccYYdXrYU1y6ayPVD3H4Y8MCFY03c32zfc8hZnbz0lvblFFnY1dkV8WacRyWXffeigoyRxEU9CR0AhKFju/e8ES3zRBBzcBz+M0Lkfb/zqI8VYpa5n6QZA4OLLaebpwlM2PJvYP3H6WhP68od0P81xiMbc4pCzdnk/Btu1qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by IA1PR11MB7173.namprd11.prod.outlook.com (2603:10b6:208:41b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Tue, 4 Oct
 2022 23:57:34 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::725e:5836:c99d:a1a6%5]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 23:57:34 +0000
Message-ID: <3c32cd8b-f6b4-6368-bd77-4a836b17b067@intel.com>
Date: Tue, 4 Oct 2022 16:57:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20221004222903.23898-1-vinay.belgaumkar@intel.com>
 <166492639466.14072.17981556641331998610@emeril.freedesktop.org>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <166492639466.14072.17981556641331998610@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR21CA0021.namprd21.prod.outlook.com
 (2603:10b6:a03:114::31) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|IA1PR11MB7173:EE_
X-MS-Office365-Filtering-Correlation-Id: b894d1a8-6f04-4cb6-9fac-08daa66434f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sgUmTin1462JPw0Bp8qQXl7paGT6Khd4Zsw3wRmgP/x1NUpW6PYws+nkugKumDsECpCsTi+yL4DrlS81qgMH79+wsDH5clyLLkViqbW4RMS7W2yg225RIctEC4bSgz6qUSbsscsKPQikFFYD41jaFCipDvXgQClN1jpM12sCqhEvz6l0ha4Y+fFjwIReXJC9w4PDBjQPhvL/Ia3tHbiCAA0jvPllFvHqwfcvkZXPOLBrfU95cxRFJ9jxpDqF2eXVtFBdXRklnkBI4HrPMUe1CFFUkK9rMaeHZffMQVIXUHrQK/i/ZXfc43hBvuOlh6KlQhFcCu7jKoIBqowKUnBRaRu1ArDsqyZMbIZZOXHBb7+UAHC+h22CmI2ksCwa+jpLbFlFbrq7wwHbD9/5sRfq0m8hbj9N/9pETVEsON//F7BRjkWlK/ganH6eBVyNEBFfWN6EDQEyG/vpBti6WCJCnjiTkZe1YVs8MfOMrfrun6ThLP3sqOIU5bKUREoRMFDPp6Kg3iT9nOYL/k5qNpbg8CBIYxIyES1rO3vNbb8oIeucLXBR8fftRrP85gFP5I3LyFF7yEvnxmjpZ4lDWLasZxYhyqercRnJBZvbDQHru81KIVRGcMckpnrpjeLtp5o8FejL5GbKFxrq43TzCd3rm4XWTDA4i9OBAUnYQ13QSW8xwR8t76pzw/59BOX4n5HLoNU8sR4egljalqq/9ZSIBpNt8GFDz2VVGM3VsgV/XRuICI1tzRqPB2sg4Ppr3KcY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(396003)(376002)(136003)(39860400002)(451199015)(83380400001)(2906002)(966005)(53546011)(8936002)(36756003)(6506007)(38100700002)(5660300002)(6486002)(82960400001)(478600001)(316002)(66556008)(6916009)(15650500001)(86362001)(31696002)(41300700001)(66946007)(31686004)(2616005)(6666004)(186003)(6512007)(66476007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2FqaW9KbzluUDAvd243Ym5FOGIvaWZNUW5tcXhxNEhuU0JwdE9jSDMzSXJN?=
 =?utf-8?B?dzNCU2k1T25kcTltTkhCbHBOY2F0NVNBMDJER0RyTW5ENFp2ZEp1SXZrckRj?=
 =?utf-8?B?RHNsN2hVZmtXWmt6L2lmRlR6Nkl4QW5JSDBDbUtDWHZoYm1RYVdBcW5EVjEr?=
 =?utf-8?B?Zm4zdCtmZWdjeTZzZ2xnTWJaUThmVzVsVWRYeDBVM3Nha1BXeHRnMTFiQTR2?=
 =?utf-8?B?ek1mQTMyQUhkWkszREwvSThpelFOMHFjNzVML0lwb21RcU5WbHJRNGsyWTUw?=
 =?utf-8?B?VWt0VzgrbGtTa2s0dzdRVXRVVm5nQWRSUUEyekJwZEdTNTN4YzlhMFV2Wmhm?=
 =?utf-8?B?ZzhFK05id1ZoTDh1dHhMR1d6dDBvVE9XWUFnc1QzdXdvbC81NlA5VWZhT0Vu?=
 =?utf-8?B?WUo2d2pvYUZVaUNtbUkwbEdvbzF3L1o3Z0ZvU01UVUpYNHNkbDNxblJiSC9p?=
 =?utf-8?B?YTcya3J2V1NZRUkxMGM1d3UwaWtocDhMRjZlYW42dXUxRE83L0owVG1vTFdn?=
 =?utf-8?B?aW5zbzN1S0dZSElYTjE4TkJGU1RydDlwR1IwRG9HSStVVFJQRDhqZWNjaHEr?=
 =?utf-8?B?L044bGE4dTFIazZhRXBqNHFXYStTRC9vQk5PYytOdUtEQjVGSkhha09rdUFn?=
 =?utf-8?B?Z0cya0VldThncXlqUWNPdXVNbFF5ZjdqVXE1MjlacnBseGwxaEI4Q1NlblQ4?=
 =?utf-8?B?VUtIcDBwbGtTb3J1S2U2ZG9veGREci8vcGYzY2hncmsvbkhmeEJKNHdzY1Jp?=
 =?utf-8?B?RnVQZ2NqR1hnRlZCTjdzV3ZoSW9nNjZMdjg5RENLdEtWdGR6QlRrYnlqdU9N?=
 =?utf-8?B?K21XL2xlVGIraW1Ddm1DdTdYQmY0RVNGR01Ha01SamRiZ2hDbmZpYklIc1ll?=
 =?utf-8?B?UW9YWURZM2puOC9wV3lieFNzRC9GamNvU3lTMGVTL0ltQzA3amJSWXNqdVQ3?=
 =?utf-8?B?Tnp0Wkk4MGpwMHVpYjRtcTlxUng0QXIzUWxmOVNpdklETjdOTzZYVk9OVUVM?=
 =?utf-8?B?VUVMc1RxRjJiN29EQ2dIL3M4QWdCRjdjcXBDOVRaSmlvVktOcWZHZnZob3l3?=
 =?utf-8?B?ZEpQeXhwVlRDSGZEZ1dsWHlpOVQ4YWdlS2NUNStsRDQ4Tk5mRVdkY0ZKUTRR?=
 =?utf-8?B?RXZJUDVUVFNDWGVIbWxkTEJIWWFSblorbXN0Z0orQ3BjbnJqaExuTGVrbjZn?=
 =?utf-8?B?KzkzQUkzMHA4cktyWDBWaTl4WENBOTd6SzRJbUQrd0dwRW5qY1MwUVArVUJs?=
 =?utf-8?B?am0ycXdUMHlsWUJSdnZPZTdmV2FNVkZvYW01MTBhdDhoSHgxT01FZWxGSXly?=
 =?utf-8?B?UnYya09oU0RqVG12M2RESkd0a0FCUVpBMzVad1F3bDkyQ0kxT3hWL1lxUk1D?=
 =?utf-8?B?SUx4ZlV5ZytXSjVFZExscGtySHlhWHYzZ0pZZXNIODlDT2tTV21la1VsaHlq?=
 =?utf-8?B?cXJDU1NXWlZ2MWxBYmd0NHBEMjVqcVhDdVVEY09qd1ppcFBnQy9UbWMwMVZk?=
 =?utf-8?B?eCtkbjYxZEsrZm8zekVxSE9ya2E0c1ozWjhWWGlvS2ZGUS8vV1RENDBXU3g3?=
 =?utf-8?B?WW5xMHhEL3lWdGZreHA0QjZhUCtWa2ZPNzBMTGRpNkExbXhEQ3BGbkRQLzcy?=
 =?utf-8?B?K2h0TUdzNytQUnJ5T0JlNkk3ZWFYZUJGK0I4QkU3akl4NlZQOXIxcVFwWDdY?=
 =?utf-8?B?WFJKdnhFeGdUNjBidXMrZXZSK0hEaUxxU3NqVGJUMU5mMForSDFLdk1LQVF3?=
 =?utf-8?B?Z0dmOGlQdVEzNndxMFRpV2ZPbGtuUW4ybTlHU0k4VjVSRlB6OEpqQ1RkNGVk?=
 =?utf-8?B?NEZRT3MzekYxQkxXNXBJKzlQaCtPWG5Mc2ZCbWdVTGtscmF1MU9lZWJQN2F6?=
 =?utf-8?B?a0xsUW5FTkphc3l5bFVGQjZhTHliSk5YQmhLamNSbThwVmZ6YkFDNW5IUm16?=
 =?utf-8?B?V0tzTE1YaFVrUlliUEFHTlNHZWpCY01JNDdQN3VUcGFYZGdxWUNFQnhCcWhB?=
 =?utf-8?B?TURtRm5KYnkyNk5OTlRQcFB2OHljV0M4MkQzcDl3R3JOVUhBRzdMT3NJTjht?=
 =?utf-8?B?aHlDNnkyYmZ5QU9EUTBPTlVUdW1Bci9wZmVCcE1pakM1VTFkQXc4bGpsMEIr?=
 =?utf-8?B?UnRqbkMzbWpFa1NodllPcytSOW1PNlhxM0FEU2UyeFI5dVhBVVo5aXI4Zmxj?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b894d1a8-6f04-4cb6-9fac-08daa66434f3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 23:57:34.2449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BNVCVGO+9mekCz2UZyPo2XO2ivq7ehvi6dUY4oFHQstdBT6NEc19fUx7OmUkPm2QCcMRBb7mf/FNxztF4MlgBEtmBIEzV0d+IHfZ6rX9igQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7173
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/slpc=3A_Update_frequency_debugfs_for_SLPC_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/4/2022 4:33 PM, Patchwork wrote:
> == Series Details ==
>
> Series: drm/i915/slpc: Update frequency debugfs for SLPC (rev3)
> URL   : https://patchwork.freedesktop.org/series/109328/
> State : failure
>
> == Summary ==
>
> Error: make failed
>    CALL    scripts/checksyscalls.sh
>    CALL    scripts/atomic/check-atomics.sh
>    DESCEND objtool
>    CHK     include/generated/compile.h
>    CC [M]  drivers/gpu/drm/i915/gt/intel_rps.o
> drivers/gpu/drm/i915/gt/intel_rps.c:2222:6: error: no previous prototype for ‘rps_frequency_dump’ [-Werror=missing-prototypes]
>   void rps_frequency_dump(struct intel_rps *rps, struct drm_printer *p)

Forgot to use static for this function definition, will send out another 
version.

Thanks,

Vinay.

>        ^~~~~~~~~~~~~~~~~~
> cc1: all warnings being treated as errors
> scripts/Makefile.build:249: recipe for target 'drivers/gpu/drm/i915/gt/intel_rps.o' failed
> make[4]: *** [drivers/gpu/drm/i915/gt/intel_rps.o] Error 1
> scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm/i915' failed
> make[3]: *** [drivers/gpu/drm/i915] Error 2
> scripts/Makefile.build:465: recipe for target 'drivers/gpu/drm' failed
> make[2]: *** [drivers/gpu/drm] Error 2
> scripts/Makefile.build:465: recipe for target 'drivers/gpu' failed
> make[1]: *** [drivers/gpu] Error 2
> Makefile:1852: recipe for target 'drivers' failed
> make: *** [drivers] Error 2
>
>
