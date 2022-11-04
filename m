Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC30561A043
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 19:49:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D15DF10E02E;
	Fri,  4 Nov 2022 18:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408A810E02E
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 18:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667587756; x=1699123756;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=tG854WqDbgRlV6gT8pPQkNTbXc1x7iGNhk+QOvbY5p8=;
 b=TxeGI6birwbJ6Wwir3OQ8dhq8rE8ubWCngXpypRCbdDii0edumtg5vjM
 bFHAFNjhaYxNZLqd5QDNA/bAN/pi9oZniF66z56eMPacuRF0jrZYDrbwz
 ABYfZOYqJ/pXpQfABxVH/4LJMK35O6dhErstLDDJGYJHgnTVkw44V2dbu
 1+pQNU91NbaQHryvVmz9TD0/Pb7DIoVyyEntcQwNQQn3iL6E5+T37d863
 Sf8zZBEs7KQXgLsvko9s8cl6oVwa9a1J0Kujm12VD1CuxDZ9arRbpw7lV
 zTWcIIarmXexInqlY22HdcWOywlaPBOP6N2HCqMXArNXRsC7b7TSbJS4m A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="290432346"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
 d="scan'208,217";a="290432346"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2022 11:49:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10521"; a="637683148"
X-IronPort-AV: E=Sophos;i="5.96,138,1665471600"; 
 d="scan'208,217";a="637683148"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2022 11:49:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 4 Nov 2022 11:49:03 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 4 Nov 2022 11:49:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 4 Nov 2022 11:49:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvhWLgTcnevp8aaLMpVTZEOvYyWjKC+s25ccjF1gni9JV0IpSCMzDITlOOCbFrWMOddat+68OQTL171gfcPmt/KgLpfNNyiyCsauI46RDGNwtefFnKcKxkGaWdZw/leNuEBq8ziH015TVrnjzC8rnzJN2cG47Xw3oO7pAj2VW8s7/3+JSwOFi8IKFCie8h/Wg4bp6AQXOo5/l1eI4zDn8TGqy+S0YpgxaxeA9HqQ70f/N+wPZumqTJgErkoQjPoYy9JMNIuBAsVYCgeB1jjaxGlwRVH1R/+fk6snf78B31MonPKV+pLoRrTwa4NPvYxOVKNs86ONyZJ3oiGrla/OhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bFK0h8+JDj6ILKticw0IueoKqg3kOyf3QW6ufeodYVE=;
 b=nLpeo96SnzYlTjQTx1Pm/XqEyR43izXLNSg6fgDxRiTFAuExuvUrJ/psHgCoNilExZfju3tHHEktRLBJ+tWDtzCAmPUR9FtnBZStRQzUw2QrkqiqPhExy7pR0HL9Ey4Rn/9F7qtE1BWggayPACxI4Q7uVxSHrg2oqU++1KRbsxmZnUDW8gqHxyG5AJcCuP/CPlI544A/slfJm/vL2Q5cooezWiAEglNn2H+PNbDj0dwBnIA3k+fG0NWk/UA/G8dtzZ/OjDA5KFSM6OyWmL3w42WK8UQ7GXjqDqHZC/ursUT1GRLeE6b/MX9bsP3bPfEl0bh9EubZZ1tJZEkrqsv4/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Fri, 4 Nov
 2022 18:48:58 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5791.022; Fri, 4 Nov 2022
 18:48:58 +0000
Content-Type: multipart/alternative;
 boundary="------------KiG3kFDAkODJg3LnvpNVF6Jh"
Message-ID: <f260df75-7b0a-ff81-aeac-c94172333766@intel.com>
Date: Fri, 4 Nov 2022 11:48:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: <intel-gfx@lists.freedesktop.org>
References: <20221031220007.4176835-1-John.C.Harrison@Intel.com>
 <166726599534.13545.1794301742069123531@emeril.freedesktop.org>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <166726599534.13545.1794301742069123531@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0088.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::33) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|CY5PR11MB6344:EE_
X-MS-Office365-Filtering-Correlation-Id: d91a7d6e-e2ad-45e5-d929-08dabe953b31
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lwc1dWnMn2mj1qZs/4Nt+zPWx27PBipyOJnpv+VQF2ALJdWA2k6S2vSXu42fGn3gpOnKjxEYtXZCvGK71AI/ZP8ZwknPaJ1wUFP2vKFtLiUHDFtVKCF1W7NXAdCWq36/juP1Yjy3nMCDEzkGCLAW67JM8PSBgpJEQzoLLfrMEJGWF1Y+7Fy5HTCaMj8Oi8lTtRp1thaX+Ztz45Ks3uQwFnLxFMpHLhe8eZ909p7U0p2qkTpYjktt7VtQ2a31w/RGzqWv+r3ViBwlYdcNH3lNaK3+VtNa44xpifx6RYzl/FPtsJ2lArs3mJNs0w5b1U40SXHQ3wCxzsgRlAW8EK0VGMrxEliSY1bLx2kmRMfrDz4zGh/tus4eRkFsAmNQu7Z0hQnoDMtyj/EL9Chn/1D2ZMkJ66qdinJ5EgjosefJvWidPAYKMfB4yKYHlRqAJRP5gRk3HWRg2GX7R8rneIcEyGpw5BsH6AfyX/muD7OYfg9mVO2JsNM5DsHtpuU1yQhOMms/aYuYWww3+019nQPVsTLIkE8sj+9kTriphpem4uoE2letfXW6i8ai/tIkrpJMC1zOQevy6b66MJ3mUMz3gEwtHrQV5fCxDnK05E971UU69F8h79RcPJpAuGmPQ7u48m3YLeKTuix6ettsKDvW6wB8cfuNtc0rU27oyGDH4cRQlnzh7szFF+ECBPMibe0OhlYi59xghQ24Z6fFa6IXLBdd/UxSkW5K2e3S2MELUOXkUMlKla3UWz8KKttJLpITJrGEVRnQsvhnuoQb2q3wqNUgBOlOdFXHcNmf5HjOQa+eZ5YlLuL6HyBuoUu+5rRbg8QEdD8cGum236vrTEhxIHlUD4Z2sFoKpLtBYBA1xg8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199015)(66476007)(66556008)(8936002)(966005)(38100700002)(6486002)(86362001)(316002)(82960400001)(478600001)(66946007)(6916009)(31686004)(41300700001)(186003)(36756003)(6512007)(33964004)(26005)(40265005)(166002)(53546011)(83380400001)(5660300002)(31696002)(21615005)(30864003)(2906002)(2616005)(6506007)(43740500002)(45980500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ym0zbjNCUkZ0Q2laRDNLYWtjSlZFZ0RRZWlaQ3ZncExkaG1kWVNqVnpSVVRJ?=
 =?utf-8?B?czFWWHNlSUMvYlJQc2tmNFhBRjdYNEhpdVdPSGpRbW5vRm0xTzhpV0VibjY3?=
 =?utf-8?B?YWNxWjAxSUg5ek1HM3I2ZW51eWliRy9HNEdpdjF1bmR3TmxkWWpkNUYzVEx2?=
 =?utf-8?B?eDlpMWxBMmlKdVlSK3ZjeSswbml2ZUdpUTVkWlg2MTBHRVZhTVpnc2VjdTRl?=
 =?utf-8?B?MncvbmlVR1NSMFV4MlBTMGtWdGpqWHJPcUN6UXk4RWdiMVdFVE9PcGpwa2F6?=
 =?utf-8?B?SHB0TVU0elNRVDIvKzZYNXMwbVlYSXpDSnZGNE1Ka0l3eVNONHgxOXJqK2Rn?=
 =?utf-8?B?TldReW4xMVFsb3FDNzVTdmdWd2FtZFV4alpDcFRSK3lnVEVIc2p5cVRUcjJM?=
 =?utf-8?B?VThMZjZMNnJrWmc4MDhMQmtHUzFwRDVmUnpPTjh5TnkvaEVjQ2FGZk1sT2E5?=
 =?utf-8?B?TURTT09YaXNicFJSamFRZ1U0eVZFandJajY5TDhnTmpMYXpGekZXeUY0MHRi?=
 =?utf-8?B?N2lKcHRCekRxM1FFZkJGY29zSXU0V1VSWjBxRk5uZ21wUVR0K1FBaUVnYWJj?=
 =?utf-8?B?WGxTNzc5bEU0QlVYL0VDMzBQZEUwNmhCR3IvRDRKK2h2NVh4ZnFWQzFEbDdQ?=
 =?utf-8?B?YktFUEVlSDAxQWhzTVZEMTZ1SG8xM2VJd3ZOczBZWTRUSHRxcmlwdW5TNlN0?=
 =?utf-8?B?VklPcUtXYVY4aTRKZzRvT29pM25nWmFyZkVHSXBuaXF2NmkxQUlzd2prZnNM?=
 =?utf-8?B?cExMaTFDekNjeDVXdlpBYlE5MEJFMVZnNVBqOUxXdExDQ2tJcUhyZVNjYnJR?=
 =?utf-8?B?ZVJTR081eEphdW5Vc3gra1Y3RFNBbVVTcUdDeVljWWU0cE4wTzhMcjhESzg3?=
 =?utf-8?B?ODlIcjB0cStDV1VQenlIRG96WlF5OGQyZndaK3QvL2RveC9qNnZtdGpkYnNQ?=
 =?utf-8?B?TTJ1ZGM3V2x6V01USXFZaGxoZy80VjdjejdLTC9nZHNBeGZXTVpkRzJBZWMy?=
 =?utf-8?B?Tzh0YWkyaHFTc1c4K25SaDBzTXlnQ00reDBTWU5FQVplTDJzUW4zL2U2MXVx?=
 =?utf-8?B?Wmk1RFdNNmFmNGg1T3grUlUvNlR6cWRucnFWVTJ5Y21rWWhnd0d2RGNqRnlt?=
 =?utf-8?B?Z2o4Q1dlL28yRWNCak9ZWlZjVmJTZ1Z1cThWUExxNXRhWGxsRmc3aVFVbGNF?=
 =?utf-8?B?WGc2UjVibG1tL1M2L093UHJPQzlIRlVUbXl1dXdJYm5uM0h2TkFOZFd3cmFv?=
 =?utf-8?B?VjZoMzlERFNiVTlSMEZzMmJFclFCRjB5c0liY05keGc4cmFRUk83enFYRkdC?=
 =?utf-8?B?b2R0WUpUd0kxN0pZdG1GejlIa05vSmhIOEFkRTZZdFNvUkRkeE93YUJaU1Vr?=
 =?utf-8?B?akpNM1krMjhmQ25qU08wU2lUdldoMVJKcTRHNG1yMWQwUTUxWWY2RHV1TE1s?=
 =?utf-8?B?Mm1SWjU4eGtBUDA4aUZVRFpUQWd1M2wyOXFUd0pRMkZ2dUcwZUpOaTJLMElX?=
 =?utf-8?B?dG9VTnZTVEwzNG9uOUpTWGtnd0swUmxFdGNJOXpTdG9xSTF1b0kxN1FLd2xU?=
 =?utf-8?B?WGtsMDFYNmRFckNMT0xJQy8ySFVtZ1hTZUJHMCtCd2h3Y2h5b0x1WUlGY20v?=
 =?utf-8?B?UldpL1VDcHJtOGExVFB2aTdxQzdOdG5IMHk3R0hNMlBBbjU5VU13c0JpMFZ2?=
 =?utf-8?B?TVd0WGh0UkdoSkZpNkg5S0hESGtKc2NObU9jRmMzcTJIL2IyTEN0RDJHVUdC?=
 =?utf-8?B?ZXF4R2RydC9Zd3BDcU80b2xJOUtTeGZ1c25JcWJFdEZYRk82SVpYNWNKeGVi?=
 =?utf-8?B?clBWc0NHcU8vajYxeThaSTdkSUQwcTJYUHJkNWZWOUptbi90dE1CUDNKN3R5?=
 =?utf-8?B?VGV1OUhRcG5mU05EMjNPYzZRYithRXJFV2padGVOY0xleFE2MGhidVBHUmln?=
 =?utf-8?B?NU1CR0VCOUViVHk5Yk84Ukw1YXh5TStaUVJFNnlFeHg3VUhqcHFobEFONmNh?=
 =?utf-8?B?TlBlWTVtVUltQkl5SkV0c21DdTRxaXJ1V1BWUWxwYTViWXdCemROWDA4SDN6?=
 =?utf-8?B?OTZwTTR6WEJLWGxybm9NTzF4ekhZdDd2MnZjL1Y4ZnFiTnJYbkZwMDRTaDdj?=
 =?utf-8?B?VTZqMTNRcnUzV0c1b2hsN09KU0k1V1pmM29ML1FHWCtxUDFuandSd2h2R0Mz?=
 =?utf-8?B?Vnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d91a7d6e-e2ad-45e5-d929-08dabe953b31
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 18:48:58.2467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YWUJaWr/DLsicbBy7ALSZLwTKsL6qyLoVrLLGz4I0Fq4DIE3wWBhDunTX/As+BLc391c/B2U+/Tm0btjCnRThdTxlJfQute6gsQadaE5oi8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6344
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Remove_excessive_line_feeds_in_state_dumps?=
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

--------------KiG3kFDAkODJg3LnvpNVF6Jh
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/31/2022 18:26, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Remove excessive line feeds in state dumps
> *URL:* 	https://patchwork.freedesktop.org/series/110343/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_12325_full -> Patchwork_110343v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_110343v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_110343v1_full, please notify your bug team to 
> allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (11 -> 9)
>
> Missing (2): shard-rkl shard-dg1
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_110343v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html>
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-edp-1:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb2/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-edp-1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-tglb8/igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-edp-1.html>
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html>
>  *
>
>     igt@kms_sequence@queue-busy@edp-1-pipe-a:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/igt@kms_sequence@queue-busy@edp-1-pipe-a.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/igt@kms_sequence@queue-busy@edp-1-pipe-a.html>
>
This patch is literally just removing excess '\n' characters from some 
GuC only debugfs prints. It cannot cause any of the above failures.

John.


>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_110343v1_full that come from 
> known issues:
>
>
>       CI changes
>
>
>         Issues hit
>
>   * boot:
>       o shard-skl: (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html>)
>         -> (PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl6/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl4/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/boot.html>,
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/boot.html>)
>         (i915#5032 <https://gitlab.freedesktop.org/drm/intel/issues/5032>)
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@dmabuf@all@dma_fence_chain:
>
>       o shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@dmabuf@all@dma_fence_chain.html>
>         (i915#6949 <https://gitlab.freedesktop.org/drm/intel/issues/6949>)
>  *
>
>     igt@gem_exec_balancer@parallel-bb-first:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>  *
>
>     igt@gem_exec_fair@basic-flow@rcs0:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@gem_lmem_swapping@heavy-verify-multi.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#4613
>         <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1
>         similar issue
>  *
>
>     igt@gem_softpin@evict-single-offset:
>
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-tglb2/igt@gem_softpin@evict-single-offset.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-tglb8/igt@gem_softpin@evict-single-offset.html>
>         (i915#4171 <https://gitlab.freedesktop.org/drm/intel/issues/4171>)
>  *
>
>     igt@i915_module_load@load:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@i915_module_load@load.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#6227 <https://gitlab.freedesktop.org/drm/intel/issues/6227>)
>  *
>
>     igt@i915_pm_dc@dc6-dpms:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html>
>         (i915#3989
>         <https://gitlab.freedesktop.org/drm/intel/issues/3989> /
>         i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>)
>  *
>
>     igt@i915_selftest@live@gt_pm:
>
>       o shard-skl: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/igt@i915_selftest@live@gt_pm.html>
>         (i915#1886 <https://gitlab.freedesktop.org/drm/intel/issues/1886>)
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html>
>         (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>  *
>
>     igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html>
>         (fdo#110725
>         <https://bugs.freedesktop.org/show_bug.cgi?id=110725> /
>         fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>  *
>
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html>
>         (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>  *
>
>     igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs.html>
>         (fdo#109278
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +1
>         similar issue
>  *
>
>     igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3886
>         <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +1
>         similar issue
>  *
>
>     igt@kms_chamelium@hdmi-crc-multiple:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/igt@kms_chamelium@hdmi-crc-multiple.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         fdo#111827
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +6
>         similar issues
>  *
>
>     igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html>
>         (fdo#109284
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109284> /
>         fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>  *
>
>     igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:
>
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html>
>         (i915#2122 <https://gitlab.freedesktop.org/drm/intel/issues/2122>)
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +4
>         similar issues
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/intel/issues/2587> /
>         i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1
>         similar issue
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/intel/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +117
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html>
>         (fdo#109280
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +5
>         similar issues
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +22
>         similar issues
>  *
>
>     igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
>
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html>
>         (i915#4573
>         <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +5
>         similar issues
>  *
>
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (fdo#109642
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109642> /
>         fdo#111068
>         <https://bugs.freedesktop.org/show_bug.cgi?id=111068> /
>         i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr@psr2_sprite_plane_onoff:
>
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@kms_psr@psr2_sprite_plane_onoff.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2
>         similar issues
>  *
>
>     igt@kms_writeback@writeback-fb-id:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_writeback@writeback-fb-id.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2437
>         <https://gitlab.freedesktop.org/drm/intel/issues/2437>) +1
>         similar issue
>  *
>
>     igt@sysfs_clients@pidname:
>
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@sysfs_clients@pidname.html>
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#2994 <https://gitlab.freedesktop.org/drm/intel/issues/2994>)
>
>
>         Possible fixes
>
>  *
>
>     igt@gem_ctx_persistence@many-contexts:
>
>       o shard-iclb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html>
>  *
>
>     igt@gem_exec_balancer@parallel-keep-in-fence:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/intel/issues/4525>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/intel/issues/2842>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gen9_exec_parse@allowed-single:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@gen9_exec_parse@allowed-single.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/intel/issues/5566> /
>         i915#716
>         <https://gitlab.freedesktop.org/drm/intel/issues/716>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html>
>  *
>
>     igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html>
>         (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html>
>  *
>
>     igt@kms_flip@wf_vblank-ts-check@a-edp1:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/igt@kms_flip@wf_vblank-ts-check@a-edp1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/intel/issues/2122>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl6/igt@kms_flip@wf_vblank-ts-check@a-edp1.html>
>         +1 similar issue
>  *
>
>     igt@kms_psr@psr2_cursor_mmap_gtt:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html>
>         (fdo#109441
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html>
>         +1 similar issue
>  *
>
>     igt@kms_vblank@pipe-a-ts-continuation-suspend:
>
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>         (i915#180
>         <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html>
>  *
>
>     igt@perf_pmu@all-busy-idle-check-all:
>
>       o shard-skl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html>
>         (i915#1982
>         <https://gitlab.freedesktop.org/drm/intel/issues/1982>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/igt@perf_pmu@all-busy-idle-check-all.html>
>  *
>
>     igt@perf_pmu@interrupts:
>
>       o shard-skl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/igt@perf_pmu@interrupts.html>
>         (i915#7318
>         <https://gitlab.freedesktop.org/drm/intel/issues/7318>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@perf_pmu@interrupts.html>
>
>
>         Warnings
>
>  *
>
>     igt@gem_pread@exhaustion:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-glk3/igt@gem_pread@exhaustion.html>
>         (i915#7248
>         <https://gitlab.freedesktop.org/drm/intel/issues/7248>) ->
>         WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-glk5/igt@gem_pread@exhaustion.html>
>         (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>  *
>
>     igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) ->
>         SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html>
>         (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>  *
>
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html>
>         (i915#2920
>         <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1
>         similar issue
>  *
>
>     igt@runner@aborted:
>
>      o
>
>         shard-apl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl6/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl2/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@runner@aborted.html>)
>         (fdo#109271
>         <https://bugs.freedesktop.org/show_bug.cgi?id=109271> /
>         i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl2/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312 <https://gitlab.freedesktop.org/drm/intel/issues/4312>)
>
>      o
>
>         shard-skl: (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312>) ->
>         (FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@runner@aborted.html>,
>         FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/igt@runner@aborted.html>)
>         (i915#3002
>         <https://gitlab.freedesktop.org/drm/intel/issues/3002> /
>         i915#4312
>         <https://gitlab.freedesktop.org/drm/intel/issues/4312> /
>         i915#6949 <https://gitlab.freedesktop.org/drm/intel/issues/6949>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_12325 -> Patchwork_110343v1
>
> CI-20190529: 20190529
> CI_DRM_12325: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7032: 372c56225e12578a7a4a6bcc5b79eb40b643fcde @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_110343v1: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>

--------------KiG3kFDAkODJg3LnvpNVF6Jh
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    On 10/31/2022 18:26, Patchwork wrote:<br>
    <blockquote type=3D"cite" cite=3D"mid:166726599534.13545.17943017420691=
23531@emeril.freedesktop.org">
     =20
      <title>Project List - Patchwork</title>
      <style id=3D"css-table-select" type=3D"text/css">td { padding: 2pt; }=
</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Remove excessive line feeds in state dumps</t=
d>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href=3D"https://patchwork.freedesktop.org/series/110343/=
" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">https://patchwor=
k.freedesktop.org/series/110343/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110343v1/index.html" moz-do-not-send=3D"true" class=3D"moz-txt-link-free=
text">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/index.htm=
l</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_12325_full -&gt;
        Patchwork_110343v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_110343v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_110343v1_full, please notify your bug
        team to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (11 -&gt; 9)</h2>
      <p>Missing (2): shard-rkl shard-dg1 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_110343v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-snb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-snb4/igt@i915_module_load@reload-with-fault-injectio=
n.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-snb4/igt@i915_module_load=
@reload-with-fault-injection.html" moz-do-not-send=3D"true">INCOMPLETE</a><=
/li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-offscreen-64x21@pipe-b-edp-1:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-tglb2/igt@kms_cursor_crc@cursor-offscreen-64x21@pip=
e-b-edp-1.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-tglb8/igt@kms_cur=
sor_crc@cursor-offscreen-64x21@pipe-b-edp-1.html" moz-do-not-send=3D"true">=
INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-dow=
nscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-t=
o-64bpp-ytile-downscaling@pipe-a-valid-mode.html" moz-do-not-send=3D"true">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_110343v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp=
-ytile-downscaling@pipe-a-valid-mode.html" moz-do-not-send=3D"true">FAIL</a=
></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_sequence@queue-busy@edp-1-pipe-a:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl1/igt@kms_sequence@queue-busy@edp-1-pipe-a.html" =
moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl3/igt@kms_sequence@queue-busy@=
edp-1-pipe-a.html" moz-do-not-send=3D"true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    This patch is literally just removing excess '\n' characters from
    some GuC only debugfs prints. It cannot cause any of the above
    failures.<br>
    <br>
    John.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:166726599534.13545.17943017420691=
23531@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_110343v1_full that come
        from known issues:</p>
      <h3>CI changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>boot:
          <ul>
            <li>shard-skl: (<a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-skl10/boot.html" moz-do-not-send=3D"true">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl=
9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl9/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12325/shard-skl9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.h=
tml" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_12325/shard-skl7/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1232=
5/shard-skl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl6/boot.html" moz-=
do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_12325/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-s=
kl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl5/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12325/shard-skl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_12325/shard-skl4/boot.html" moz-do-not-send=3D"tru=
e">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_123=
25/shard-skl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl3/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_12325/shard-skl3/boot.html" moz-do-not-send=3D"true">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-=
skl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl1/boot.html" moz-do-not-s=
end=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12325/shard-skl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_12325/shard-skl10/boot.html" moz-do-not-send=3D"=
true">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_110343v1/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/sha=
rd-skl9/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/boot.html" moz=
-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_110343v1/shard-skl9/boot.html" moz-do-not-send=3D"true">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110=
343v1/shard-skl7/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/boot.=
html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/boot.html" moz-do-not-send=
=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_110343v1/shard-skl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-=
skl6/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.html" moz-do=
-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_110343v1/shard-skl5/boot.html" moz-do-not-send=3D"true">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343=
v1/shard-skl5/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/boot.htm=
l" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_110343v1/shard-skl4/boot.html" moz-do-not-send=3D"=
true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_110343v1/shard-skl4/boot.html" moz-do-not-send=3D"true">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl4=
/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html" moz-do-not=
-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110343v1/shard-skl3/boot.html" moz-do-not-send=3D"true">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/s=
hard-skl3/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl3/boot.html" m=
oz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_110343v1/shard-skl1/boot.html" moz-do-not-send=3D"true=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
10343v1/shard-skl1/boot.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl1/boo=
t.html" moz-do-not-send=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_110343v1/shard-skl10/boot.html" moz-do-not-se=
nd=3D"true">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_110343v1/shard-skl10/boot.html" moz-do-not-send=3D"true">PASS</a>)=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032" moz-do-n=
ot-send=3D"true">i915#5032</a>)</li>
          </ul>
        </li>
      </ul>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@dmabuf@all@dma_fence_chain:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@dmabuf@all@dma_fence_cha=
in.html" moz-do-not-send=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6949" moz-do-not-send=3D"true">i915#6949<=
/a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-bb-first:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html"=
 moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@gem_exec_balancer@para=
llel-bb-first.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#=
4525</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-flow@rcs0:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html" moz-d=
o-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_110343v1/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs=
0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>)</l=
i>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_110343v1/shard-glk5/igt@gem_exec_fair@basic-pace-=
share@rcs0.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#284=
2</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@gem_lmem_swapping@heavy-=
verify-multi.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#1=
09271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4613=
" moz-do-not-send=3D"true">i915#4613</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-single-offset:</p>
          <ul>
            <li>shard-tglb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-tglb2/igt@gem_softpin@evict-single-offset.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110343v1/shard-tglb8/igt@gem_softpin@evict-single-o=
ffset.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/4171" moz-do-not-send=3D"true">i915#4171</a>=
)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@load:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@i915_module_load@load.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6227" moz-do-not-se=
nd=3D"true">i915#6227</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-send=
=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_110343v1/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html" moz-do-not-s=
end=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3989" moz-do-not-send=3D"true">i915#3989</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/454" moz-do-not-send=3D"true">i915#45=
4</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_pm:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl10/igt@i915_selftest@live@gt_p=
m.html" moz-do-not-send=3D"true">DMESG-FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1886" moz-do-not-send=3D"true">i915#1886</=
a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:</=
p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@4-tiled-max=
-hw-stride-32bpp-rotate-180-hflip.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5286" moz-do-not=
-send=3D"true">i915#5286</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@x-tiled-64b=
pp-rotate-90.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D110725" moz-do-not-send=3D"true">fdo#1=
10725</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11161=
4" moz-do-not-send=3D"true">fdo#111614</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_big_fb@yf-tiled-8b=
pp-rotate-180.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110723" moz-do-not-send=3D"true">fdo#=
110723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs:</p=
>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_ccs@pipe-b-missing=
-ccs-buffer-y_tiled_gen12_rc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278" moz-do-not=
-send=3D"true">fdo#109278</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@kms_ccs@pipe-c-crc-prima=
ry-basic-y_tiled_gen12_mc_ccs.html" moz-do-not-send=3D"true">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-se=
nd=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3886" moz-do-not-send=3D"true">i915#3886</a>) +1 similar issue=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-crc-multiple:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl10/igt@kms_chamelium@hdmi-crc-=
multiple.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#10927=
1</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111827" m=
oz-do-not-send=3D"true">fdo#111827</a>) +6 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_chamelium@hdmi-crc=
-nonplanar-formats.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D109284" moz-do-not-send=3D"true"=
>fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827" moz-do-not-send=3D"true">fdo#111827</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.=
html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/igt@kms_flip@flip-vs-b=
locking-wf-vblank@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122" moz-do-not-send=
=3D"true">i915#2122</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</=
p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptib=
le@a-hdmi-a2.html" moz-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-glk2/igt@kms_f=
lip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html" moz-do-not-send=3D=
"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/79" moz-do-not-send=3D"true">i915#79</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb3/igt@kms_flip_scaled_crc@fl=
ip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2672" moz-do-not-send=3D"true">i915#2672</a>) +4 similar issues=
</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscal=
ing@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_flip_scaled_crc@fl=
ip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html" moz-do-not-=
send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2587" moz-do-not-send=3D"true">i915#2587</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#=
2672</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downsc=
aling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb2/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html" moz-do-=
not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3555" moz-do-not-send=3D"true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rc=
ccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb1/igt@kms_flip_scaled_crc@fl=
ip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html" m=
oz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2672" moz-do-not-send=3D"true">i915#2672</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555" moz-do-not-send=3D"t=
rue">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mm=
ap-gtt:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_frontbuffer_tracking=
@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html" moz-do-not-send=3D"true">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" mo=
z-do-not-send=3D"true">fdo#109271</a>) +117 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mm=
ap-cpu:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@kms_frontbuffer_tracki=
ng@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html" moz-do-not-send=3D"true">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109280" =
moz-do-not-send=3D"true">fdo#109280</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
          <ul>
            <li>shard-apl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-apl3/igt@kms_frontbuffer_tracking=
@psr-rgb101010-draw-mmap-wc.html" moz-do-not-send=3D"true">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=
=3D"true">fdo#109271</a>) +22 similar
              issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:</=
p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl1/igt@kms_plane_alpha_blend@al=
pha-transparent-fb@pipe-c-edp-1.html" moz-do-not-send=3D"true">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4573" moz-do-not-s=
end=3D"true">i915#4573</a>) +5 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:=
</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_psr2_sf@overlay-plan=
e-move-continuous-exceed-fully-sf.html" moz-do-not-send=3D"true">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271" moz-do-no=
t-send=3D"true">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-iclb: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@kms_psr2_su@frontbuffe=
r-xrgb8888.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109642" moz-do-not-send=3D"true">fdo#109=
642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068"=
 moz-do-not-send=3D"true">fdo#111068</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html" moz=
-do-not-send=3D"true">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_110343v1/shard-iclb5/igt@kms_psr@psr2_sprite_plane_=
onoff.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</=
a>) +2 similar issues</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@kms_writeback@writeback-=
fb-id.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2437" moz-d=
o-not-send=3D"true">i915#2437</a>) +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@sysfs_clients@pidname:</p>
          <ul>
            <li>shard-skl: NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@sysfs_clients@pidname.ht=
ml" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994" moz-do-not-se=
nd=3D"true">i915#2994</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@gem_ctx_persistence@many-contexts:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html" m=
oz-do-not-send=3D"true">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb6/igt@gem_ctx_persistenc=
e@many-contexts.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4525" moz-do-not-send=3D"true">i915#4525</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/sh=
ard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html" moz-do-not-sen=
d=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html" m=
oz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2842" moz-do-not-send=3D"true">i915#2842</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl=
6/igt@gem_exec_fair@basic-pace-share@rcs0.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-single:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-apl7/igt@gen9_exec_parse@allowed-single.html" moz-do=
-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/5566" moz-do-not-send=3D"true">i915#5566</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/716" moz-do-not-send=3D=
"true">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_110343v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html" =
moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interrupti=
ble@b-edp1.html" moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1103=
43v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.ht=
ml" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-apl3/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html"=
 moz-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/79" moz-do-not-send=3D"true">i915#79</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl2/=
igt@kms_flip@flip-vs-expired-vblank@c-dp1.html" moz-do-not-send=3D"true">PA=
SS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@wf_vblank-ts-check@a-edp1:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl3/igt@kms_flip@wf_vblank-ts-check@a-edp1.html" mo=
z-do-not-send=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122" moz-do-not-send=3D"true">i915#2122</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl6=
/igt@kms_flip@wf_vblank-ts-check@a-edp1.html" moz-do-not-send=3D"true">PASS=
</a> +1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html" moz-do=
-not-send=3D"true">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109441" moz-do-not-send=3D"true">fdo#109441</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-iclb2=
/igt@kms_psr@psr2_cursor_mmap_gtt.html" moz-do-not-send=3D"true">PASS</a> +=
1 similar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
          <ul>
            <li>shard-apl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-apl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.h=
tml" moz-do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180" moz-do-not-send=3D"true">i915#180</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1=
/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html" moz-do-not-=
send=3D"true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@all-busy-idle-check-all:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl6/igt@perf_pmu@all-busy-idle-check-all.html" moz-=
do-not-send=3D"true">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982" moz-do-not-send=3D"true">i915#1982</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-=
skl10/igt@perf_pmu@all-busy-idle-check-all.html" moz-do-not-send=3D"true">P=
ASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@interrupts:</p>
          <ul>
            <li>shard-skl: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-skl7/igt@perf_pmu@interrupts.html" moz-do-not-send=
=3D"true">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7318" moz-do-not-send=3D"true">i915#7318</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@perf_pmu=
@interrupts.html" moz-do-not-send=3D"true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_pread@exhaustion:</p>
          <ul>
            <li>shard-glk: <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_12325/shard-glk3/igt@gem_pread@exhaustion.html" moz-do-not-send=
=3D"true">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/7248" moz-do-not-send=3D"true">i915#7248</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-glk5/igt@ge=
m_pread@exhaustion.html" moz-do-not-send=3D"true">WARN</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2658" moz-do-not-send=3D"true">=
i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-=
sf.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1=
/shard-iclb5/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html" moz-do-n=
ot-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/658" moz-do-not-send=3D"true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
          <ul>
            <li>shard-iclb: <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12325/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-a=
rea-big-fb.html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/658" moz-do-not-send=3D"true">i915#658<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_11=
0343v1/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.=
html" moz-do-not-send=3D"true">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2920" moz-do-not-send=3D"true">i915#2920</a>) +1 s=
imilar issue</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>
              <p>shard-apl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12325/shard-apl6/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2325/shard-apl6/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl=
2/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12325/shard-apl7/igt@runner@a=
borted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271" moz-do-not-send=3D"true">fdo#109271=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" moz=
-do-not-send=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312</a>) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shar=
d-apl7/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-apl2/=
igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-not-send=3D"true"=
>i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4312" moz-do-not-send=3D"true">i915#4312</a>)</p>
            </li>
            <li>
              <p>shard-skl: (<a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12325/shard-skl4/igt@runner@aborted.html" moz-do-not-send=3D"t=
rue">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2325/shard-skl10/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>=
) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002" moz-do-=
not-send=3D"true">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4312" moz-do-not-send=3D"true">i915#4312</a>) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-sk=
l3/igt@runner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl7/igt@r=
unner@aborted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl9/igt@runner@ab=
orted.html" moz-do-not-send=3D"true">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_110343v1/shard-skl5/igt@runner@aborted.ht=
ml" moz-do-not-send=3D"true">FAIL</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3002" moz-do-not-send=3D"true">i915#3002</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312" moz-do-not-sen=
d=3D"true">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6949" moz-do-not-send=3D"true">i915#6949</a>)</p>
            </li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_12325 -&gt; Patchwork_110343v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_12325: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        IGT_7032: 372c56225e12578a7a4a6bcc5b79eb40b643fcde @
        <a class=3D"moz-txt-link-freetext" href=3D"https://gitlab.freedeskt=
op.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-to=
ols.git</a><br>
        Patchwork_110343v1: 1a90222aa5e5bb86ffcbde5ba9611659a23f0df6 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/gfx-ci/linux">git://anongit.freedesktop.org/gfx-ci/linux</a><br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        <a class=3D"moz-txt-link-freetext" href=3D"git://anongit.freedeskto=
p.org/piglit">git://anongit.freedesktop.org/piglit</a></p>
    </blockquote>
    <br>
  </body>
</html>

--------------KiG3kFDAkODJg3LnvpNVF6Jh--
