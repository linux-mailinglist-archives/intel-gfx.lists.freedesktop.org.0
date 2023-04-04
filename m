Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4526D582D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 07:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB40F10E1C4;
	Tue,  4 Apr 2023 05:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209810E1C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 05:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680587345; x=1712123345;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=zWQB9EnR2h9Gi98W9Mx6afT7im151JCDoECqxAa/uMo=;
 b=ah1f2/aqDYaDxtGsUzxGWcmfxFFeCdEVFrjVaXVn92moEy/0vPaVmtbq
 16yLshuHBI3t/oFU+Zy4iYuI6Kci1lzBgSgHZWN3kMEeIj+GonicYGGVK
 ZjhBNd5OnqXP1owIXnT6fFmRXXsgbg98M+TW2T2b//8cPUHpeurAamz9r
 SdMGyEilz+Y0asHzNIPYs8zzBvhk0CG/xE4eKy0Ye2O10ddYdSVh381VL
 TL5vloHx0T38kAS55dUmf56Hopc85O8vpGIBxkiYvy3hZEBTIhttIexCH
 y9YCY+MusXhcrUHIB1RzlyTYpIHnebcXPXBpQ0tHCNHQbZ88z7xrtRNf1 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="340828278"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; 
 d="scan'208,217";a="340828278"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 22:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="688764049"
X-IronPort-AV: E=Sophos;i="5.98,316,1673942400"; 
 d="scan'208,217";a="688764049"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 03 Apr 2023 22:49:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:49:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 22:49:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 22:49:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 22:49:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WXvdGrlQLg/TytT8HxJNa1u8hcRRnawXG3GueRARYsc48af8hyAU/ch3T7cbFnsOg/hsq4UnznBXf5QEbI1HDEJ7WYoeBLMc2uU2KhNwmuz7ioLuAN6kwZerM79DXLNrz6bv3NgOn5GrTwChsZe2v818V9aoUFYplFwXEYauGX2Wl7nc2ti/oSx+E4wU5ijAD1jlerkF2oNiA0mFWN9YdnG5Ub6tF4ei9Gz0v5QQj5f0BrJBrxCeXG4ECHgMt3OvHdl+de4cLrtPMhbh1ZB5chbpq/lahrTVYjgngVo5ioLP7+G0AhLIThpcUNR1kaRgABc7ZQELGsrA3bIjxjnlPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTLczfNFKJ9L+K7PAuE+UX1t4KuwEMICtZ+AbLrr1rQ=;
 b=DBgSv4Vf+fsa8VPpMbEo1cYgkhW0bHglXj3WsyJ4HhbP70clkJLT5vThkrEl/Ugh5ZAlOIY/DWQ0gVliKLLNl08iVROrUxP8OStxlfrvub2mLF6fNVSHDg14gU/X6561Ks2LPICnBBoICNMcLsxOACP/faHXUDVe2zWxV/1KIiKEwIW4jPK9/+bgLFRuv9rQmwDx9E7zOJLHxbYXWI9GSMNnLa8HdLIpXAyfR1t9At5lq8nP1PXv1nEp/0UgSiZrLxEm5XKyhYJLnKqQPWwUz8tuQeBiKsMVjS6zq3jh3nGHwGhO+nltS2fvBt9CgkYNceNv64P0WvbkZdsi21jKjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 MN6PR11MB8145.namprd11.prod.outlook.com (2603:10b6:208:474::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Tue, 4 Apr
 2023 05:49:00 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::22a6:927d:6b03:69ee%7]) with mapi id 15.20.6254.033; Tue, 4 Apr 2023
 05:49:00 +0000
Content-Type: multipart/alternative;
 boundary="------------uCqyRH6Pafm8AwV2UmX6am9D"
Message-ID: <3262b861-cd10-f5c2-7b4b-df59cdf2a637@intel.com>
Date: Tue, 4 Apr 2023 11:18:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230309152611.1788656-1-lionel.g.landwerlin@intel.com>
 <20230330204228.2781676-1-lionel.g.landwerlin@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230330204228.2781676-1-lionel.g.landwerlin@intel.com>
X-ClientProxiedBy: PN2PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::20) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|MN6PR11MB8145:EE_
X-MS-Office365-Filtering-Correlation-Id: ded44247-8cbb-4965-7813-08db34d049b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PnaBwcxuU+GuMlfjh5GJGF83fBfnDYxIY9dRdtDu+B0i5w9x8oN8LJM+BmpRrAV1s4Rtq0t2d/Ntoe8nCNwt+voFSS9TZ+y+Lx3RIIOxEzf1WrStpcw+PqbL/vlEc13bYo/ex9YPONwaTxi0Msbjr7ohT1H4n3Hr+HbmrxGttqy8Qx1fHDehSf2bjyyZkT0+U74oaYzBS4paHP3Rwq25AIJYXQJm7o7CpOcerOg9qIIIXmzmrJHi4eW53DtV24xUfRgZ7AGZ5HqZSvhaDXOrTf0KtFhUBe2+JliLpa3EyRyBl55khd2HoMc5v6Fd8AhB+Oq/KlR455wZxJfzGPFZCYtMJ+rAolfkOYxycpus//FoUMhLJqM4Qf4KCj0wYKE987oKa8ne/n7C/QyJWNmZmNGzzSvqINQcPYiTyEqiyqNFzbyplAFqC+/PTrhUsKrMrgm25PI8g3Qo4STqdhKaZV9oakyMhH8ClIsR6xHQODdYxlx20FIGhOjtBRo9MQom1ZRNkchZsy9/0t6hJ9pUfH59fgpWAusMIbBGfQ3GnDJ5+dCOxjbDNYY4QAXClv3lK8a3C5IXB+shaY8IV9qkzCFcEJrJliRtf6bjvQzLuR8LJ+MXg3WYcfjd58JpzzhLycOBq7i1IMk3p06Tvf1Ubg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(136003)(366004)(396003)(39860400002)(451199021)(31696002)(86362001)(2906002)(36756003)(31686004)(6486002)(2616005)(83380400001)(186003)(53546011)(6506007)(26005)(6512007)(6666004)(33964004)(4326008)(66556008)(8676002)(66476007)(66946007)(82960400001)(5660300002)(41300700001)(38100700002)(478600001)(316002)(8936002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjdBRG50bnJVS0lqZStnb3MzbjZYQ1ZwZVlLVjZKRXR5SWxlZDUwQnpwVDN3?=
 =?utf-8?B?ajVxTkFUY0F2YjEva1N6UXZjTDUzQ1pNMWJqK3hxZHNwRGw3RXhYTGhCSzQ0?=
 =?utf-8?B?K0NhM1NhVlFZTkRPM1kzOUpUdkttaTF1VUtlUWs1QWlPM2hZdG11WVFWNnBJ?=
 =?utf-8?B?cDBQMHBkLzV4NlhlUmFkN0JBdHVSQWd3Y0Q1MWppRURtZWRudDYvYkVkQzY0?=
 =?utf-8?B?VGhUQlRERGloS1dBa2N3WDR1UkNUV09OYzhlQWdJMWlZVGYrUVJmL2RBQU0x?=
 =?utf-8?B?ZWJBNnR0SG1SUmcrM0dmSVpRNUFVendNamFPbFYxQ1dhSHlEQ29aZ2NHYXIx?=
 =?utf-8?B?ZjdFcGV2UDlsOG11dWJudzloQ3ltY3V5MTJRQ1NqaUxZeVdDcTdTekFjWHE4?=
 =?utf-8?B?Uk5qWXd0UTNuZ1c2NnpGWTY0QjM3OTZrMkt5WU85aFNpT2VCbU1FbUNTZnIx?=
 =?utf-8?B?Sk50UEhmM1k2NTZsVGdpaE55QlVwa29Oay9CQm5TTHpqN0w0MDVvc09wVDEx?=
 =?utf-8?B?NjZHK0laMkJVNGJqazRzSUdHa2dRRTQxLzRhUElXY1hnT3MxK0xwcVdQSkRI?=
 =?utf-8?B?TWU0Y2lSZ2tlYi93OXFFNGo5UFBRVzFCb0lDMnZXSERWeVcxN25WVGZVeUpO?=
 =?utf-8?B?K0ViVklYTTdDT2ZkWVZqVklTTzh5YmVOby8vRldpdXNGRFVsL0lTMjVZVDZv?=
 =?utf-8?B?QmQraTBZN2RQUU9zcVV4NDQrT2h4SDVQUHpUa0dUeFZCcFZkb0w4OW02ampp?=
 =?utf-8?B?cGJnSXVYK0lUUlVmejlYWmJ5WWJ4NGdUTm5GeGRqUjdLTlB0eHUyTUltS2Z1?=
 =?utf-8?B?WkplMlJZZDhUK000V2x0ZEpVa2lmZ1dwa0IyOEpEdXBqUGRMWW90TDQ1dWVn?=
 =?utf-8?B?RkpXeFMwVjBjZzBNNkM2c1dBYnkvaXpMMmpOam9pN2RqQU1TY2grQUR6VWJm?=
 =?utf-8?B?dGV1UnFtUHFRbzJFWHRyTmtOZEZLbEhyRWtNbk5oRXdldWVQaXIxT0xyMmEr?=
 =?utf-8?B?b0lZU1FHaEtTeURibGdHRE83WEdiZFpIbGd5QzJmMzcwZnI0dnF0V05PckVW?=
 =?utf-8?B?c29CandydmhqNFJnUzh0Q0VrN3dHci9uUXg1eHFzWm8vMWl4Y0RiVmdXVTdM?=
 =?utf-8?B?UHFrc2cwRW9ibzRMMmp6YVdSTkdGWHZ1N29sOG42ODVsSlpJQ1BlYU9iL1Mv?=
 =?utf-8?B?RkY5aFRKUk9sNTdHc1pPdVZ3RXFTTjhudkV6cFNBT1VFS1A4NEwwVktTRVMv?=
 =?utf-8?B?UWVhZTdJMXdtaVc3SGJoVWd3NERxM3QxcURTU1Z1MkM4TXYxVGNPOEsxQjZh?=
 =?utf-8?B?dnJJVnNYc1JnZ1NQVXRmWXlFMStNdEF4YjJDbHo0UWllM3J3WHA5WE1lYnRQ?=
 =?utf-8?B?WnlkQ0N5cjMvQ0I3b0NuUktKQUNaM3Y3S3pNWFV2Q3VIdVBqSS83bUx1azE5?=
 =?utf-8?B?cDNzeEJoaWUvbHFSYzM0QXNHRDRvalNNdS9ESGVLRHV5OTc2akhPU1k3V1Ax?=
 =?utf-8?B?SE9zdVpYbWVYcGZ1bjBFTHp4c0tPalhja1R5eWFDbjNYbTYzU3UyU0JDM3Zm?=
 =?utf-8?B?V1l1ZHBxVmZ0NDhDM250clIyY0Zla1RKQmpPV2t6U1IwVEtTUjd0c1hXUHJH?=
 =?utf-8?B?clNUM3JZSlBwdmFxTTU1UVJ1VG1TQkd0eWhhWHFmTHJ5bitWbHFTYlc0ZEZ1?=
 =?utf-8?B?VEp5d0pMZHFCSHhTMTYxLzRsY3ZKYUtHNEdJd2ljWGtRNXZUZjdhc2E4MlVr?=
 =?utf-8?B?dDI5eGFlQ3k2UFVNQ0R4MzF3WS9LQktvMkw4RWY0QnVwd1ZPWVU0NFBrRktB?=
 =?utf-8?B?QmdrS1VOemhYV05HVkgyeFdoRVo4STBXREV3L3V0dUxYWUlMbHAydzF1cXdV?=
 =?utf-8?B?TWNyTCt6dldmcDBQaitLZmR4RDN1a2lRaUZZWDVWTkVtZlppZ0VMRXE4dDNO?=
 =?utf-8?B?Y3Z6cDNLNEVkWnNIVWRnT0Z2TDJmOHBic29wWmRIcFNJZFB1Vkw1OXUyVWJm?=
 =?utf-8?B?UmNrL2svWEEvRFVYYnVwcEU4am9nVG1Md0VXb1BSalRRSTRTZTlTeTJoeGVo?=
 =?utf-8?B?a1BuKzgrbTNCR2ZXWkNVdG10eFJ6VkQySXQwU3hxOGdhYUNubXAvc0E1T21Z?=
 =?utf-8?B?YTFPaGtKczVhMmJ1dkdBN0tFSXFCMENraWRrTUZVNXhUWmhLRGV5Mlp4MERw?=
 =?utf-8?B?OHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ded44247-8cbb-4965-7813-08db34d049b6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2023 05:48:59.9682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pGXGwE1usxKEXzhoMjFUKcUT1BqUfAEOBtLLTlM3EsAFID8ybrejd6IHaui4PQyxWi90Plsk1GrEFQiPbMsKvLhcEpROzkXfREaNExirqMk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8145
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [v3] drm/i915: disable sampler indirect state in
 bindless heap
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--------------uCqyRH6Pafm8AwV2UmX6am9D
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 3/31/2023 2:12 AM, Lionel Landwerlin wrote:
> By default the indirect state sampler data (border colors) are stored
> in the same heap as the SAMPLER_STATE structure. For userspace drivers
> that can be 2 different heaps (dynamic state heap & bindless sampler
> state heap). This means that border colors have to copied in 2
> different places so that the same SAMPLER_STATE structure find the
> right data.
>
> This change is forcing the indirect state sampler data to only be in
> the dynamic state pool (more convinient for userspace drivers, they
> only have to have one copy of the border colors). This is reproducing
> the behavior of the Windows drivers.
>
> BSpec: 46052
>
> Signed-off-by: Lionel Landwerlin<lionel.g.landwerlin@intel.com>
> Cc:stable@vger.kernel.org
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 19 +++++++++++++++++++
>   2 files changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4aecb5a7b6318..f298dc461a72f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1144,6 +1144,7 @@
>   #define   ENABLE_SMALLPL			REG_BIT(15)
>   #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
>   #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
> +#define   GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE	REG_BIT(0)
>   
>   #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
>   #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e7ee24bcad893..5bfc864d5fcc0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2971,6 +2971,25 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   
>   	add_render_compute_tuning_settings(i915, wal);
>   
> +	if (GRAPHICS_VER(i915) >= 11) {
> +		/* This is not a Wa (although referred to as
> +		 * WaSetInidrectStateOverride in places), this allows
> +		 * applications that reference sampler states through
> +		 * the BindlessSamplerStateBaseAddress to have their
> +		 * border color relative to DynamicStateBaseAddress
> +		 * rather than BindlessSamplerStateBaseAddress.
> +		 *
> +		 * Otherwise SAMPLER_STATE border colors have to be
> +		 * copied in multiple heaps (DynamicStateBaseAddress &
> +		 * BindlessSamplerStateBaseAddress)
> +		 *
> +		 * BSpec: 46052
> +		 */
> +		wa_mcr_masked_en(wal,
> +				 GEN10_SAMPLER_MODE,
> +				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> +	}
> +

Looks Good to me.

Reviewed-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

>   	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>   	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||

-- 
Regards,
Haridhar Kalvala

--------------uCqyRH6Pafm8AwV2UmX6am9D
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 3/31/2023 2:12 AM, Lionel Landwerlin
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20230330204228.2781676-1-lionel.g.landwerlin@intel.com">
      <pre class="moz-quote-pre" wrap="">By default the indirect state sampler data (border colors) are stored
in the same heap as the SAMPLER_STATE structure. For userspace drivers
that can be 2 different heaps (dynamic state heap &amp; bindless sampler
state heap). This means that border colors have to copied in 2
different places so that the same SAMPLER_STATE structure find the
right data.

This change is forcing the indirect state sampler data to only be in
the dynamic state pool (more convinient for userspace drivers, they
only have to have one copy of the border colors). This is reproducing
the behavior of the Windows drivers.

BSpec: 46052

Signed-off-by: Lionel Landwerlin <a class="moz-txt-link-rfc2396E" href="mailto:lionel.g.landwerlin@intel.com">&lt;lionel.g.landwerlin@intel.com&gt;</a>
Cc: <a class="moz-txt-link-abbreviated" href="mailto:stable@vger.kernel.org">stable@vger.kernel.org</a>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 4aecb5a7b6318..f298dc461a72f 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1144,6 +1144,7 @@
 #define   ENABLE_SMALLPL			REG_BIT(15)
 #define   SC_DISABLE_POWER_OPTIMIZATION_EBB	REG_BIT(9)
 #define   GEN11_SAMPLER_ENABLE_HEADLESS_MSG	REG_BIT(5)
+#define   GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE	REG_BIT(0)
 
 #define GEN9_HALF_SLICE_CHICKEN7		MCR_REG(0xe194)
 #define   DG2_DISABLE_ROUND_ENABLE_ALLOW_FOR_SSLA	REG_BIT(15)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index e7ee24bcad893..5bfc864d5fcc0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2971,6 +2971,25 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	add_render_compute_tuning_settings(i915, wal);
 
+	if (GRAPHICS_VER(i915) &gt;= 11) {
+		/* This is not a Wa (although referred to as
+		 * WaSetInidrectStateOverride in places), this allows
+		 * applications that reference sampler states through
+		 * the BindlessSamplerStateBaseAddress to have their
+		 * border color relative to DynamicStateBaseAddress
+		 * rather than BindlessSamplerStateBaseAddress.
+		 *
+		 * Otherwise SAMPLER_STATE border colors have to be
+		 * copied in multiple heaps (DynamicStateBaseAddress &amp;
+		 * BindlessSamplerStateBaseAddress)
+		 *
+		 * BSpec: 46052
+		 */
+		wa_mcr_masked_en(wal,
+				 GEN10_SAMPLER_MODE,
+				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
+	}
+</pre>
    </blockquote>
    <p style="margin:0in;font-family:Verdana;font-size:11.0pt">Looks
      Good to me.</p>
    <p style="margin:0in;font-family:Verdana;font-size:11.0pt">Reviewed-by:
      Haridhar Kalvala <a class="moz-txt-link-rfc2396E" href="mailto:haridhar.kalvala@intel.com">&lt;haridhar.kalvala@intel.com&gt;</a><span style="font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;
mso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-ansi-language:
        EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA"><br>
      </span></p>
    <blockquote type="cite" cite="mid:20230330204228.2781676-1-lionel.g.landwerlin@intel.com">
      <pre class="moz-quote-pre" wrap="">
 	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
 	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
 	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
</pre>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Regards,
Haridhar Kalvala</pre>
  </body>
</html>

--------------uCqyRH6Pafm8AwV2UmX6am9D--
