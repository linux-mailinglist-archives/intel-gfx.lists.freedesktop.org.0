Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB0A7C7B07
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 03:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95F8C10E02D;
	Fri, 13 Oct 2023 01:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A24D10E02D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 01:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697159304; x=1728695304;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NiKWfcS/0XxZ0NME+ghqqVCyrS2/Ynte0Fr8Kvcq8Iw=;
 b=C0v54XM/qMAJBjo/HGUv7Hvo0GMUYrimpGo3p6F7mYaI/TivnZITe379
 gAb2UygVvrjI0T9++bK//1zgGeW4iaEa62duAjyRj6t6XS0xs/ObbIsIl
 ltCAmJ2/TwEeG59hLt0CbKF+Cgl9HqHvxv4pJEZkPoFs4SzllnGXdG1XZ
 FB82EkFVagWOb3qz2i7vP6rF6Ai6NjlLivqZOL3thd7BOLJ7MnQQXYbiS
 0Ezweh8VT/n9a+WAk0ugeO3GCzRSmOypxRnuPm/NKCPdZ/Tvg363T1ugA
 ZEk3Ek+JVPxQ9cO+wdtO+ZYNzN38RrGOlN8QzM/Bl6YutyhDllp8YDE+Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="383937719"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="383937719"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 18:08:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="845215359"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="845215359"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 18:08:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 18:08:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 18:08:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 18:08:21 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 18:08:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WgFg5tzTtLzgvndmhlDXTVzjulOztNZM8kFOhsQ4jRjmPRA2H3zBe2mHMgAE60KiJUpSrU9F7WheKISHTVpKBibQV4LLm/wRwxg3ZU2KDz2Vf0MuXjHDnk5KFS9o2kk/rVTa3/YIpIT5k5Ir3pyD8gPLGMG7/o9u3Pw/LWAYrhnjAKnQg0UitqNg4ei1d1Rh9dunCuvI5uWAGJPjFXDHEj2EiTemTosgtLC5v9p8B5l8NRXjqp/pZn/M8NmZI6CU8m6W63nh4b0iNelJIywmWt1cPvYoGYlfmYM9K1J6pUS4Oxf9x1H3nRHqV2MyV1IRNOU/A6SBwcbLp8cnwDQOMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5E8ZdAVJuEkMUxYFk2jhoJrOo/UagkMsfe1gOHWv6uY=;
 b=Vr3wCI2HOAsMjFYQwHvyG3NiEhFsXHGXxElo8uo6TMaEyuoQTmyc1fynBdXoHe0al+ue0u8o9WKB4Q+29KSj5jy8DdODMUoHSptR5bHLWponmnLf55Ws04x3JRhSMT88PNbFBrJwIdLQXoZoYcPnjSOvMu9RNfhZpj+zht+BdBBK0yDS7s6cm+Ngx0OpbOMfjRR4D+F1HcrxowUKORKqH8CdQjx45gZWfpQxOQCXXY/5ck/dccCsu8a3yoZTZPg03FkMgAP12Z3DmOH95p7KjBe+1o9fUlDe2ejfw7uJuB6LBt1ixXI/YsU6YwNCnkpwfIP/t82eXEqi8Vmrvpm2uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5065.namprd11.prod.outlook.com (2603:10b6:806:115::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 01:08:14 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 01:08:14 +0000
Message-ID: <fe011bb2-3377-4d96-a256-5434ff9319f0@intel.com>
Date: Thu, 12 Oct 2023 18:08:11 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231012223826.2556700-1-jonathan.cavitt@intel.com>
 <20231012223826.2556700-5-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231012223826.2556700-5-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0041.namprd16.prod.outlook.com
 (2603:10b6:907:1::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA2PR11MB5065:EE_
X-MS-Office365-Filtering-Correlation-Id: 777c4c7e-7365-425d-0ad9-08dbcb88e086
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7HYaCTxu4GuIrSbvIiMpAZmFVrijA80s82sBAADWpr+TxEFHI34m8yRUF0yRIxxfGK/DORXeSWKuJ/pK1euArq3HSoTKedad9muyumHwPrcYa6Eg7p6jWesXzQeo3ki1xUGLJCW6IrEir6nulTy7mYYwH625i7Z7C6a16sx1HcQsydgWAlegISvp+t5tIyQ3932KomiUdHEv+y1/uPWX5RGRDx8rTCvCwWXKHUlJYLcHJzDNnhGxFzpaYNv+abLex9WK8wPMNlXCWsDSowIy5o1zeC4bPPdYr5LooM5Jvw4ntzJnE/rSqffUAXagkwAG4vJi+Y6C51Gy5chiGJPasSsbfJ4wKCbQ9dwmJgRTOaWa+jqFFidKRI55eW5jQHH2OI7Gw7n5BxR+ePHmkvM72ck107qh/tIy0nt49ouNasBSj/OT43Q649FNx8NoAckjcWrLAY5VlYYZBL2D8FQdV0/wPgcZi3vDjpaaBSA8/DAg1djtlGIh0UkzIMGNYqLVvT6AAuW8qBRgUIzzFw1g5O7wn4yR1SuJDR4kn//rG59x7UoIY/YqduiVGUwi9qPO/6PJv5tbmLHELbsC4Ykh5x1kzrVXNgn0HMiMU/ehIVejEDyZkcoaBetAnobQPsDgDaZW2r3RsL+s3oA+SAZ8qw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(346002)(376002)(396003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(15650500001)(8936002)(6512007)(478600001)(66946007)(66556008)(2616005)(26005)(83380400001)(66476007)(4326008)(41300700001)(316002)(8676002)(53546011)(6486002)(6506007)(2906002)(5660300002)(6666004)(82960400001)(36756003)(38100700002)(86362001)(31696002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXZyLzRPTnhXQzV3YklyMEd4U1pnUVJBbDV1MGtjSmNNSXNNKzQ1dHlrYW90?=
 =?utf-8?B?cTljVklEOGpSTlR3WWx0dElvOUVJTCtMVmw0SWlJdkptaEdRN2UwMjY3bjZr?=
 =?utf-8?B?YzM2SVlYRkJuZklXdUh3em9iK0I0a3liMTEwRUZrbWxMcjJiNlRYUDRiT05U?=
 =?utf-8?B?SEtaQVpFUTV4d0Jkb21VZk5PMkM1bzYzQks2MVdOVE9QVk9jTFo2bnZ2eDZR?=
 =?utf-8?B?NFFSbVBYK2xsZkNiNTg5M1ZOSVI1NXA1MU1ZSFU5NUF1MDBCeGNxODFncEZD?=
 =?utf-8?B?aWNYYTRvWDNFN0crSWkybG5ZdC9uTHhvbjV3Z2taOTIveEtoY0twRDZNZHpp?=
 =?utf-8?B?ODZML2ZoMmx4RGk5Y1hTb0Y2OHBPVWRzQjBpeTlPNUdvWHJRcHp6Y1BXOTdO?=
 =?utf-8?B?Z3oxM1JnbFB4dFQ5dzA0YkkvUW1KaVhpd2hJM0ZpRWpPS0RjNHJ1QnZiajRP?=
 =?utf-8?B?VUNkaHRWWXEwQng2enAyeitZZ1JJUWdYWHU2ejVON1BYakVhZlNKUHRUSHM4?=
 =?utf-8?B?TzFCWW8zTWJtdThvRk1SLzhKTjFaNEw4eE53ZUNWWkhQVEpxek5weFRZcFV6?=
 =?utf-8?B?WFFVT0wzb0RTWGVKS3FFQ1FVTmJYZDduTm5tZVN3MzQ3RTNxc3lUSUR3cDQr?=
 =?utf-8?B?MW5kMVoyWlpXd2VYNm5qakY1Zm9rZ1JXOE5tRlJFTTFvSHVBQytaQXFDVU81?=
 =?utf-8?B?NUhNc1p4SzVJMUZiMEFTZSszeHdWVmdkL0VjN0VFVVdzV3MxMTU2cCtHbiti?=
 =?utf-8?B?NEVLOVpUOWlOQWdsUkE3ZndaYVJiSE5xYWhaVU9mVUhVK0xITjlDUzNsQ1R3?=
 =?utf-8?B?YWUwT283ZjJwMmxYTFp2T2VvMjc5d04zdnp5cklJNmNjdDRtdkh0YjNIWnFJ?=
 =?utf-8?B?d0pLOTVJMVVyNWtrZE9Nem1WdkdqdlQwSlJ5LzNTQk84OFFOZnZIc2h2WkRE?=
 =?utf-8?B?alN5NEJRUUNacFRjZmNtR0JoRjloR3A1SVphVXdEano3NHhKbmwyMXc0bFZy?=
 =?utf-8?B?T2E2anpRenZGbkxrdVRnbHFUY2JhTUdHY3dzMXVhZ0h5dzZXSVVPbXpjdlRD?=
 =?utf-8?B?MVlIRTk3ZHphWlVKV3NCNFg3VzNHYi92TWdUbUpYWWJTVkt6SDNreFFEalRB?=
 =?utf-8?B?Lzk3RUJBa0pKVkgxOU5GMWx1TGNSaVdUWHpMS0VFMjJVdW5qTDFhdzdabk8v?=
 =?utf-8?B?WCtoVVFIcDYyTFlVZysveDAxYnFiVk0zT2IrbU5kT2pRTjBibkQvandsNUtU?=
 =?utf-8?B?WlUrTCtYbEp3eDJOcjVrcGc5Y25aa1YxdHVmOGRKM1BORFFkR1VMWDhUS0xO?=
 =?utf-8?B?UytpNFcyRlpYTFk3VVBxREErSE1DdUpLcEc5NmtZUGpOd1VyK2N4R2VFV0U2?=
 =?utf-8?B?dzlaYjlzSnFHMVJGSENENHFxS3A1TEJ6bm81SEJSditOZVc0TjY3QXJnS3RG?=
 =?utf-8?B?S0RUTmx6a1lMZVhrSk9xTEV5a2RtamVtRGFHR2pYcTRwVlFpZWpGNVUrSHdl?=
 =?utf-8?B?a21KTEcrMnQwTUh4NVRTTnpBVVo3bHp2V1MvUjAzSnk1bDl1VTZ0L1hNcElq?=
 =?utf-8?B?Zit0YmM0L01BZGJnbzdheFN1SnNTTHZtazUwUWdvcHhHcTU5aStxN1ZvQVRQ?=
 =?utf-8?B?ckliclQ2VUZmZlZyNEFTZE53UUE2NVM2ZDZ5akwwVmhIZEZ6Z2tqS3kzTVBw?=
 =?utf-8?B?WUF2Z2loZGV3VDVCdjdBbmdaYnVMV3ozQURjeklEMVVPdlRzaVFMZld6U0xt?=
 =?utf-8?B?dTZHWjJUMUlzSVlQMkNtU2hEaFMyRnFqSWRWQnhZVEhDam5iYytFckE3WVNO?=
 =?utf-8?B?cncwcENTSW53eExOb09vb0VhNm5VYVRVaW9LZFVhanRrRTFESzV4WTAvZnMx?=
 =?utf-8?B?MWU5ZkF5a3FmRlVkYkNMMWh1S1o1dWdsVDhrSS96NS9lbG42bW1ubzRWam1I?=
 =?utf-8?B?eWVQREI5RUFaL3hMaXNvcFY5cDBmeUpnWCtvc2RNRWEvenFlZVJpdnVxa3NN?=
 =?utf-8?B?OU5admZ3R1VreTh1ZWhIUmkyMG1pNGNLbVZMSTI5ZkRDcDZBc3NWdWxmQkIy?=
 =?utf-8?B?QW1sZ2FaUnBuVWdQM0N2N2xXcXJXUHVOYjh0TlNRd1d6S3JSOSt2ai83TUdh?=
 =?utf-8?B?ZGV1UzNEUUxaV21kYVpabHpvNG1rTXBHQkY0cXpyYSs4NHFreldMUzhZUVh6?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 777c4c7e-7365-425d-0ad9-08dbcb88e086
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 01:08:14.7741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zo9js5u8Pa8uUDP2O1OIsDhKruA4/hylzEDwEp+VWfX5UVx0LANBYBp//m81Ftjlc7zlK030vWahjxLzQvXNVWu1dp0JAjmrsdePm5YhIxI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v13 4/7] drm/i915: No TLB invalidation on
 suspended GT
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/12/2023 15:38, Jonathan Cavitt wrote:
> In case of GT is suspended, don't allow submission of new TLB invalidation
> request and cancel all pending requests. The TLB entries will be
> invalidated either during GuC reload or on system resume.
>
> Signed-off-by: Fei Yang <fei.yang@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: John Harrison <john.c.harrison@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  1 +
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 22 ++++++++++++-------
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c         |  7 ++++++
>   3 files changed, 22 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index 0949628d69f8b..2b6dfe62c8f2a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -537,4 +537,5 @@ int intel_guc_invalidate_tlb_engines(struct intel_guc *guc);
>   int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
>   int intel_guc_tlb_invalidation_done(struct intel_guc *guc,
>   				    const u32 *payload, u32 len);
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc);
>   #endif
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 1377398afcdfa..3a0d20064878a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1796,13 +1796,24 @@ static void __guc_reset_context(struct intel_context *ce, intel_engine_mask_t st
>   	intel_context_put(parent);
>   }
>   
> -void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +void wake_up_all_tlb_invalidate(struct intel_guc *guc)
>   {
>   	struct intel_guc_tlb_wait *wait;
> +	unsigned long i;
> +
> +	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
Why the change from 'if(!is_available) return' to 'if(HAS_) {doStuff}'?

John.

> +		xa_lock_irq(&guc->tlb_lookup);
> +		xa_for_each(&guc->tlb_lookup, i, wait)
> +			wake_up(&wait->wq);
> +		xa_unlock_irq(&guc->tlb_lookup);
> +	}
> +}
> +
> +void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stalled)
> +{
>   	struct intel_context *ce;
>   	unsigned long index;
>   	unsigned long flags;
> -	unsigned long i;
>   
>   	if (unlikely(!guc_submission_initialized(guc))) {
>   		/* Reset called during driver load? GuC not yet initialised! */
> @@ -1833,12 +1844,7 @@ void intel_guc_submission_reset(struct intel_guc *guc, intel_engine_mask_t stall
>   	 * The full GT reset will have cleared the TLB caches and flushed the
>   	 * G2H message queue; we can release all the blocked waiters.
>   	 */
> -	if (HAS_GUC_TLB_INVALIDATION(guc_to_gt(guc)->i915)) {
> -		xa_lock_irq(&guc->tlb_lookup);
> -		xa_for_each(&guc->tlb_lookup, i, wait)
> -			wake_up(&wait->wq);
> -		xa_unlock_irq(&guc->tlb_lookup);
> -	}
> +	wake_up_all_tlb_invalidate(guc);
>   }
>   
>   static void guc_cancel_context_requests(struct intel_context *ce)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 98b103375b7ab..27f6561dd7319 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -688,6 +688,8 @@ void intel_uc_suspend(struct intel_uc *uc)
>   	/* flush the GSC worker */
>   	intel_gsc_uc_flush_work(&uc->gsc);
>   
> +	wake_up_all_tlb_invalidate(guc);
> +
>   	if (!intel_guc_is_ready(guc)) {
>   		guc->interrupts.enabled = false;
>   		return;
> @@ -736,6 +738,11 @@ static int __uc_resume(struct intel_uc *uc, bool enable_communication)
>   
>   	intel_gsc_uc_resume(&uc->gsc);
>   
> +	if (intel_guc_tlb_invalidation_is_available(guc)) {
> +		intel_guc_invalidate_tlb_engines(guc);
> +		intel_guc_invalidate_tlb_guc(guc);
> +	}
> +
>   	return 0;
>   }
>   

