Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D424E528A69
	for <lists+intel-gfx@lfdr.de>; Mon, 16 May 2022 18:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D897112AE6;
	Mon, 16 May 2022 16:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EDE911264E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 May 2022 16:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652718638; x=1684254638;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A39nnYwPFC0vjAUpIKfCGiS9Bvx84Dt8RVynfssQs/M=;
 b=NuUg55nQLm8FXxBc3VvHQCBmSkUxA09GdU8TB2GUs6oJNMFZoCvAyDWX
 UHRa3dck+ccv7sjQZNDvWyDRpRuaLJUb45ZUK83zQ79KREPzDo9antEQB
 upnrlRr3GjoNJoSNgF7CJFzqdaWlsa3IOee77pXJDP+wPf9uFOyVA1AAd
 3KppvNCwVB5JE9RoHSm/2FL4X5dbhmmurC9K1k3goIQKgtkDz831kUWlg
 Wy4bgPaErp83nfl4OfiPZARN+b2eHobBA7aMk0mCfrsYxsihB3umYSdCy
 kjZ+RvdYJE2acs5OLcGawd3TZSgReCnTvrSXpor25PFpj82mftleU7XVC g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10349"; a="250784400"
X-IronPort-AV: E=Sophos;i="5.91,230,1647327600"; d="scan'208";a="250784400"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2022 09:30:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,230,1647327600"; d="scan'208";a="568406245"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 16 May 2022 09:30:37 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 09:30:35 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 16 May 2022 09:30:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 16 May 2022 09:30:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 16 May 2022 09:30:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mi/DsEWU8oZs1JRTiDMqGKVMf7hwpUBOLRRsGTHgIb2XRy0UOkCwLJdpuFoz1DMFWywl7W4ANNrLE9qmlN7uEP5hO4bQaThtVyLydemUXTsCXjbuQuCYG7skJDEMgylSbbsH9NxMQyFPOlHXfadbrHHsifp5qPpBLF3bk1AVDi2xEX00OGCOx9CWdFWh1ZGCOg/p3vfAIc+rIPgeQ0F5CCjT99ZJ6p72cBq35zazFv9HDKtFs+CMLHm/exaoBD+1vpt0qEtH5PdjwPptWCsu9PLwmzN/ao2EqTmOLbo1LS/UnXPolselpGNvRcLfO06eB69ShjQ8+VSxuUXeQtNkyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbD+/vXyMuWzybUAFuLayf+1sZfrOqoFPH6gW/vxybw=;
 b=OogIDcEETRAI14XUkckkeYkL9C8jNU0nxM8OjXV6Rx4DLKbNR003ozkOAGfWPFa4u9Jw2P4HI/M0u6QFR7UZ4JeP5tNKyBk+HBAqipAPzfl7xy273usARbZtiT1SsUp4jXEUYSQsoyx5S3hkEind1rnSxNehkBpgHws5KYMgZo+cyXTs/eBlc3smWDA5igh4AxJYtNZ17gGu1suQxEmzL1ioJmT0NFT/lUnwEpbedO88fHINFJGdpo4bfNJGe9S8WDJEQzZBTdpSxQL6SE62yPgdN1dHMbhQlr4rHRnomkUDtXpSeCYjJq1dHxSH0IhvfQAYfcOf9BcuA7ndP2vgZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by DM6PR11MB4299.namprd11.prod.outlook.com (2603:10b6:5:1df::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.17; Mon, 16 May
 2022 16:30:33 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::b070:728f:be36:cbe%6]) with mapi id 15.20.5250.018; Mon, 16 May 2022
 16:30:33 +0000
Message-ID: <01eb6ed2-ed55-d0f0-d6ec-42ae41cc1a47@intel.com>
Date: Mon, 16 May 2022 18:30:28 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220516155108.2103-1-nirmoy.das@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <20220516155108.2103-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0274.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::20) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0bb448ba-a237-4b9c-4c4f-08da375965cc
X-MS-TrafficTypeDiagnostic: DM6PR11MB4299:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB4299F8C64A38991C7E220AA099CF9@DM6PR11MB4299.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vebJMwEqreumBCoL1Tl64TGG9cyYAUXcnV50qU6k9YXYNNS+Q2pT9v/qgQ1J6nbx0M78GYJP8FpYAp7lDrJ19etWu/Ws6jigMH5qowO7U1MaBVlMdHSHEc5Z5hDIxXw3/PAJZZOwWBBFV1hUIiZbaZPFf5hfDE9KTXzLHWvaBLda8di9imB2aeV8DT5+IN3hwP0vqVNos1N6FfO1sxqjhoksG0BLH4uYYCru70ARkc8prgFPMRp4H3FpjMrTfLj51syBW1LY2x5fFOg3aHSQYuSRK9jQ6ditmewZhoPi9jw0rNM155RwbrNa4U96BKCID4In/c5FBSYc1rdWLdj8SXXbH3dMhEfX2B1Jzz941m0uftMMjAcdp/9xNiuEcGvE0n54aTKAXTqRUyQOa6R5Lxl+AiQJxR6KLtQcFoOuNuCUPCvpKoUuSaOU7mpZWHOqU7XQNMFejFffk+iE+D7TTs5tkPWtpKup+AvFp8WkCMmZTYPHQbG1O9kcmZo/pIq/O56d+aC2qMwd4mCSu9kGnOmGujfznr8z9E3sYeKFKHGQYGA2ZUJOhBXnVPf7/Mt72O0heTfBCAHs4eIU1yct2SIxqyiTECsyZtrT2wT16cbGhmTWjipGK46/UE0tj2rglUhwQbH+/lNVv+dm8KHdoRT0kHJclXQw62LiDV8PnJ9QGZm3UdcXGqBVidO2XqxlmKEH6cfwrx53Cf9IJ08jRqv3iYsMffOEI42Z5JEqXPA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6666004)(2906002)(38100700002)(82960400001)(31686004)(316002)(6916009)(6512007)(83380400001)(186003)(5660300002)(508600001)(86362001)(6486002)(966005)(8676002)(66476007)(66556008)(66946007)(4326008)(8936002)(31696002)(6506007)(53546011)(26005)(36756003)(2616005)(107886003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDgwV0ZFaXFsdDlnY3hBbDNjeG1yRHRMOWZFQW5XUVBGSWpwd0RpTUJvNnBS?=
 =?utf-8?B?ZXJmeFZLSnhMM3dhK0kzbW00RDFteHVzZnNib21FbnU5c3FKbTVEakhBMW5I?=
 =?utf-8?B?dzc1VmpYTlhUMkkwK3FDQnZZczA0UEprZG9iWm15Yml4Ujg1QjBFcnY1RCsy?=
 =?utf-8?B?MUtNdDN2ZDVRU29kNXRVaGxjVk5sWFJSQzl4QitlQ1VjMFNLazdsSE8zOVZ6?=
 =?utf-8?B?WVNGbGcxYlR5S1V1OEVOaE01aS9QaUZsUUJRTFB2WkEvYVdtU2RvNTZCNVVo?=
 =?utf-8?B?cm9qNk9HWVlwTWtXUXJCZnd3bXdXYWhtdW5wUTVMMUNvUTNPUVNhK2dLK2g2?=
 =?utf-8?B?bUxiaFdCcVZoSm5NMmZUUkFDSG5BUlh4aEdWT1c2UTRxWGMxT3ZIVkU1eUpj?=
 =?utf-8?B?SnFIOTlhM0ZuQVF2SE1sOWN1NWtNMGFQdzlQVjZVSTdrNFlaVi8rZjVtVGs1?=
 =?utf-8?B?dGFDckt5Rjd1OWMvNDJ3SVA0bW1uWDdVOWw2QlpjalFJVURJQjE4QVVjSmNs?=
 =?utf-8?B?a05lalA4NmczTVR5K1EzTTNNdWpDS1BxTitabVc4ZXJMdW15Q3ZGczlwVElx?=
 =?utf-8?B?NXh6eTlLcjdrcUtCa0VJOGdJS0k0KzdOV3Jza1I2V29rdFVDdFpVVXRudEF1?=
 =?utf-8?B?MUk1bUhtZlU0ZFRaVjRwSHJqeTBsUFk5eHRyOVVmRDdwVklEbkI4WUoxV25S?=
 =?utf-8?B?QzBLTlNqeVUxU3hnM3p3MGNjV1hoTlFxSm1nc2pNeG9xdVZZekJKODllL1Ri?=
 =?utf-8?B?bWVnc3o5enAvY2VSU2ZEbmdOVlRvSGxFVUxMUDUrL0t6WXZQbTFmS3hWSHF6?=
 =?utf-8?B?R2lhdGh4RmVnc3hZNDVKM1lBQmtIVmVsSGtTVVhyaWFzWnB1U0FPZ0JCTm9L?=
 =?utf-8?B?bDhnQktackVCYXNnMWNLWklrajg1WUlWV3grZi9Sd1JCWUhhdmZvRWZQK3VI?=
 =?utf-8?B?TjdGeGF0L2E4UzVtNU1hSXRzeW1sY01GSUZQcVVSZ25hT2JUK0luK0s4Sm5u?=
 =?utf-8?B?QUUvS1pzQ0tkcjFielpyTVF4OVNLTEpyaTdHdlQzVTBHTGN1aVBvWTlKa1Rt?=
 =?utf-8?B?dEJjR0JkVW53OVBnZk9jODhWbUM3bEREaHpNckJZNEN6cVY4MDd6Y0FZZnhp?=
 =?utf-8?B?RE0vZ1krU0x2S0p0YnkwdVh0NG91WWJKR2FqY2JycHhEMWJRWSt5aWRtUHEv?=
 =?utf-8?B?eFFKWHVFTmNvTUsrMWU4bjdPWEJ3YTIwVy9tQVN1VGhFMlRjYW9rVDZndUpC?=
 =?utf-8?B?YXJjTDhLR1VzalZrckp0ZktTOEJuMDJ5R1dHRERoQjQ0SEJYc2ptQzJiV0h5?=
 =?utf-8?B?dHJIeEpNOEVmU0hEQjVwZ3BRWjZLVFZZWTJrTmlCYnhYMEh2Qk1OUDIyVk10?=
 =?utf-8?B?R2dYRW0xMjFoSzczMTVmSlJ2QWh2clFGZE5DTUduZmZMSzk2TlB5VWNtb2Jr?=
 =?utf-8?B?cHhTZ2w1eGpyYVpyL0FVc0NRcHpVT2txZzJocGpLbkxLSmtXVzNXT2FFUXY3?=
 =?utf-8?B?U1VkOVJiU1dDRU5KYmQxLzJvb29zeUxVQ25PYVJ2b3hiZ2xJZTd1b2I0WGNW?=
 =?utf-8?B?bVg3RktFc0ZzRG5lUmk0WlRDK0xuL0hsZ3U3K0JFZ1BzWHo4ZVViVU9xT2Jo?=
 =?utf-8?B?eVhmU0h1bGJKMHc4SDZsdlN6cE9nTFhRamtJSldzVXRNNDdZc29tNU9PamVV?=
 =?utf-8?B?Q25Zcm95UHF0enR1bm5vOEU4VmRxaE8wWDJPN2prYlB6V09TWXhmN3Zsazhs?=
 =?utf-8?B?UFZlZU95UnA4NDJoMVBLMDVOQjQydzJGdWVSdzAwOHlPcUVmL1BmRFJtUkJT?=
 =?utf-8?B?QmhFcUdQS2x4RHhGbHV2UnRCTG5NcDJwZzlhbUlXY0RtaE9NZExMZXZtT2pz?=
 =?utf-8?B?ZmI2TzJRYWxDWXlyS3JldDBLRUIzMGljVU5BV0RzczJyTmMzMDRWc0VTbklR?=
 =?utf-8?B?TElsVFc3Ti80QXVZdjZGTGRRVi9JRjNoUGZxYk1hNjN4TkxtdUZ4MTdWdndi?=
 =?utf-8?B?VXhocDRVSjRqNzdOMk1Ybk4wTmxZOXh5dllmV3Bmd1BMUm91ZC9UanI4ZTEw?=
 =?utf-8?B?S0Rwbzg2MEwyZXpUWDhzMm9oS3g0RUFxRUhwTHhzZkdyU1dQWkJwQlhSOTFQ?=
 =?utf-8?B?TkNnNktNMXk4RVJLYzFxckJOeWlpSWRjU2wxR3p0dGdveC9UbnI0N0tmcGJG?=
 =?utf-8?B?K1JwU09qRGlRT09mMEI0Z3hKTDhnYk1yd00yMXJ5UjN1SnlsQ0d5REtTV3JX?=
 =?utf-8?B?eDNrMjRoRTF3OEp0NjgzaVR5TlpEdUMxQTBUeDlNdDFPSVpwazA2d3ZZUzVq?=
 =?utf-8?B?Tlk0Z2xSa29Pa0hjcThZWUVGakxuSXd3UHhJVzdqaC93UXN2bERlUT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bb448ba-a237-4b9c-4c4f-08da375965cc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2022 16:30:32.9757 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ro7MChiYkLhHj+misYzCP9Jx+Zieb58xPSYgEbcTLi1MuwKXJkCXUEueSYGqfIlfxL0AnwoBZN8lZzJB3BLpbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4299
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: individualize fences before adding
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
Cc: thomas.hellstrom@intel.com, matthew.auld@intel.com,
 chris.p.wilson@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Please ignore this revision. I will send another one tomorrow.


Nirmoy

On 5/16/2022 5:51 PM, Nirmoy Das wrote:
> _i915_vma_move_to_active() can receive > 1 fence for
> multiple batch buffer submission so make sure to
> individualize fences before adding to dma_resv obj
>
> v2: make sure to reserve fence slots before adding.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5614
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_vma.c | 44 +++++++++++++++++++++------------
>   1 file changed, 28 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 4f6db539571a..b622e51bf132 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -23,6 +23,7 @@
>    */
>   
>   #include <linux/sched/mm.h>
> +#include <linux/dma-fence-array.h>
>   #include <drm/drm_gem.h>
>   
>   #include "display/intel_frontbuffer.h"
> @@ -1833,28 +1834,39 @@ int _i915_vma_move_to_active(struct i915_vma *vma,
>   			intel_frontbuffer_put(front);
>   		}
>   
> -		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> -			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> -			if (unlikely(err))
> -				return err;
> -		}
> -
>   		if (fence) {
> -			dma_resv_add_fence(vma->obj->base.resv, fence,
> -					   DMA_RESV_USAGE_WRITE);
> +			int idx;
> +			struct dma_fence *curr;
> +
> +			dma_fence_array_for_each(curr, idx, fence) {
> +				if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> +					err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> +					if (unlikely(err))
> +						return err;
> +				}
> +
> +				dma_resv_add_fence(vma->obj->base.resv, curr,
> +						   DMA_RESV_USAGE_WRITE);
> +			}
>   			obj->write_domain = I915_GEM_DOMAIN_RENDER;
>   			obj->read_domains = 0;
>   		}
>   	} else {
> -		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> -			err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> -			if (unlikely(err))
> -				return err;
> -		}
> -
>   		if (fence) {
> -			dma_resv_add_fence(vma->obj->base.resv, fence,
> -					   DMA_RESV_USAGE_READ);
> +			int idx;
> +			struct dma_fence *curr;
> +
> +			dma_fence_array_for_each(curr, idx, fence) {
> +				if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> +					err = dma_resv_reserve_fences(vma->obj->base.resv, 1);
> +					if (unlikely(err))
> +						return err;
> +				}
> +
> +
> +				dma_resv_add_fence(vma->obj->base.resv, curr,
> +						DMA_RESV_USAGE_READ);
> +			}
>   			obj->write_domain = 0;
>   		}
>   	}
