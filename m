Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE434785142
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 09:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B49F10E3D5;
	Wed, 23 Aug 2023 07:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BF5F10E389
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 07:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692774903; x=1724310903;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ewT2qwOpAxjDBt4Zck5V1zc1802quBhxGxoWbYmOqP8=;
 b=cjJcKmM9LJpzb58rRzrFObf+9/2E0L+efvAQctATUbo7+Dfu7qMM5g4A
 V7R+MSgpsw0gZMPHK6WnpiFqmK32n8dR8RCFr79nOY7jj6e59bHioIeHx
 XDElWF9YTxY4ubrii3ih+cA32r7jkCUrTSg4dm+zDBlgaqViYgQldXni/
 Xkq0R0sJCaf0tPY5ViVPV0SZegnsEqkj0n46Fq07z6MWepnJ29NkDet9S
 XN/JFTM6tgPN/sKHyXe2qy9UQSzyqtHBlqtSaU3RReR0ahfRz+Z3meeVh
 ojtEIVTTHF4Lp5ghZNuBUE0RA4R8/q8fxUDDzU4pp3N8dUAADYIjthbCV w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="371503628"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371503628"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 00:14:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10810"; a="1067365013"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="1067365013"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 23 Aug 2023 00:14:51 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 00:14:48 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 00:14:48 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 00:14:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IgaqrDXMJIjx9tcwgw/8LpcSO8uAw+U0h6cpjKU3GH3Me4ImCkxnAPrgL4tLUxN6Y0skfHsO6RQ6dLPJUor9EiKW1SKQiaz2u+ros/LxUb6LoVBEp3qCh4wVbcu/tX2JIbqOMThofC4RrLcfgkTCdCuF6TOcBVEv2ae9NVvDvbppNIH11EduvnTRG91F2yitXQQ+f7TfSR8dGuYCfctotp+U+tdy+djpWQt2rx5ZJmXGfi1CWQ0NDHX17salXhF3eQv3OkVoc7AH/GHYQzrXYF/RZp1RQ5q5R45DOo1TXcvDw/QQqzjS/2woNclcuRsz1IDEGIjkVzZNhPiJgLbzWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jRTJW1Qy8DZR1dK2K8hM7VrJmjV7SEk2rPjFmLvj+9s=;
 b=XGdEhN35qOToUO726QzWc5lwypTR+y0oYERvpqm174JRWSzk5qrwVNNH7ympE/slb5HiM3cBcAzHj+Iye4l5q7FKK+kvK890zjv0852g2EKntsjLV+9AlQBAZi1IDj+BJGjLtXFH2ZKSk0kqpJXnh2VqrxGK7rOse99M3R7cuqmNaWrX7Xms5q5ragLco/U0PSoSS5yJvq/ukg6UNlhRLC+3EXB8Va4NfTg962mYL+UbaaQq7niwr2kDjRGC6/heCEfh1A0i8PnwtfR+B1gwrt03egpztcQKoaqCGKw6oHboPdHzTV5wvV1MULuv0obalPjlmGOfpMftPZMbb7HMfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB7000.namprd11.prod.outlook.com (2603:10b6:510:220::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 07:14:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::1e8d:5942:e23b:c08d%6]) with mapi id 15.20.6699.022; Wed, 23 Aug 2023
 07:14:44 +0000
Message-ID: <65e3ddbc-0934-6fa0-d185-d8eed8524807@intel.com>
Date: Wed, 23 Aug 2023 12:44:34 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230822060240.413101-1-suraj.kandpal@intel.com>
 <20230822060240.413101-5-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230822060240.413101-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB7000:EE_
X-MS-Office365-Filtering-Correlation-Id: caa6ffa3-03b6-4c39-81c3-08dba3a8a047
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4NDuIXXYDYAC0TNElTNDjqJZ0wGy1Cryt6PzN0aB7+hxzB8AVfz0zGp1vzvrnW/sD3kOxtKn5aI61gRseJOUsX4kCW3OeWXMpLPf1zsCDP9nyNvp6RL1R8saKCAkwVEooTyZSvqJ5Sv8KKzEa3P186R7MnUriwFLHJa/lakPIUnD9dMmLXZoArf8fTXYyWbuUfWIUTa24nJBxInPOXo/rSbYqs5dZZfl+Mq2i3IQLHH9OIQ0DD3amnw8U+UGBA9cyK1SAbxXLMkG4ZOBrn9AVrK2LkdqgxubaQHt2c22eFF+uTBf6m+6Fn+KcVYxO8ke5hRsKZrB9d+gnWehafQCFYXWcTYer+OfrfRrHX3tQ7/h5Z1EnOaB9BZMnbTq8sUKyTF1+c/ST1i13ijqlSdkFRoDW9rv5EgHhzrO/z65PZos1GKw7v6R6oicxclradXM2E2OgIxDHnsHDPkJBafeqc4B0ma58oS+mGfBPU0nz4icY4EbI4dPfcUJWbG3z0m1AQF5TitJlwD51wOHXbsvrcVGIqQxntYUeZZxB+0z8zkGZ+gWw2RyS+9PG3Bk/q8FPwv3qge29RT601xXn/QQ2FuJsTgWDgScLzPkLjlSO4vkNefMUeNPcXUd9WnuddxuGCgt77ARkeneWxSl3b2m1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(83380400001)(38100700002)(6506007)(53546011)(6486002)(5660300002)(26005)(31696002)(86362001)(31686004)(8676002)(8936002)(2616005)(4326008)(82960400001)(6512007)(316002)(66476007)(55236004)(66556008)(66946007)(478600001)(6666004)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1ZvYzRnTjJHcThEUU5UV3drUTB3ZDVKRnNDN0Y3MWFLbkVLRzErQytOZkpL?=
 =?utf-8?B?U3ZHeCtGQWFZbjczMDMwWmtleTZRc3pjZGlzMUU2SlJZQllQaGpmTHhDM2Yv?=
 =?utf-8?B?clB4V2Q0N3pBUGtYUlNTYXhQMzF3bmVSdnh4RHdQVFVWdG1lck5jeVNJSFNy?=
 =?utf-8?B?WWs4aVFmWXRzZTd6akZYSC9EWU16d3FIL1U0MDExVWNrbjE5UFY2L3k2N25x?=
 =?utf-8?B?TGJCU0RlL2p6U2tnVHdNVzh0aExiOFpDNGRydEMzU281MldFMW9lb2lTclll?=
 =?utf-8?B?czlMMU9yb1dESk1YTjY0eGVGZG1QNG9jbU9hSWliU2tLWGZma0tmYittc0ZV?=
 =?utf-8?B?L0hyUzhxeUgybFlVeHYyQUI2b2E5WC9kTWwwbDdhVlNwendMTXZQV1FPejBk?=
 =?utf-8?B?em9CN2VFMkw2UXJLOXlSMmNJNkgzTVp2blZhZkVWdjR0WWVTV3k5TkV6NXFz?=
 =?utf-8?B?T3Q4U2VzU1ZjRldKZU9LRkdEbTg5NXFCNU5IVllsbUVOM0VDSktWRS96Z2E0?=
 =?utf-8?B?SFdBVnpHeFQ0dWlwbGl3UjRZa1J3L2FkL0oyMUl0VldNd1hwUC9WUVprQ3VH?=
 =?utf-8?B?eiszUlExM0RtbURHN1poaFU4OHdCdmNwRHptTmU4YlF2eUJKYndiL3ljREVI?=
 =?utf-8?B?TUMwSGVzQ0l5R0tabTI1dUphS3duZ0xId1k0V0tPZm9vZ1NJK1pucjJNMG5E?=
 =?utf-8?B?VlhyclN0eFhkcStwTmJIT2w0RnVpMFdmRmZURTQrT2Q1SEN0cU9xVjg3MFp5?=
 =?utf-8?B?QUJhaEVtU2FEcUtaaytQQ09qZUdMRy9uSGloT0c1ajg1ZTBMWXdTZTh3Ujl1?=
 =?utf-8?B?UWJJam9DalNYdERKT1hoYlJZQnZHYWdHaGtqTDhjajQvNGtnOTdJekZ2TTdQ?=
 =?utf-8?B?aS9WdU5rS1pmRFRGdldGT3pRUUFZZ0dPakJZNEwxd1d4eXlOb2VaazRCeGdP?=
 =?utf-8?B?aWd6U1FQaEoyRVZkZkZqM1Jyd001Wk9ZaFVvT25QUzFkVFlRekNiOEdRTE9r?=
 =?utf-8?B?N3dqdTk4NTRxbXVuVndvUXJ4WFhzMFMxbGx6NUVEUmxiaGlCeHZKbGUrZTNp?=
 =?utf-8?B?THhKdlc1SWRsd0NwcDVjYi9VallsbVVCNnNWVEd0QXJkK0FzbmpEbEtFc2th?=
 =?utf-8?B?Q250Z2V1dE54RGVnVFI5ODFZQlR1S1FYOUVqSjFKQzZvUmlGcHhibThpZHR1?=
 =?utf-8?B?ZGw5Z1BGSk9DN0NnYjBjdE5pQVBiR2ZIMTVmeDV5OHpwTWJTc2pHbFdJc1Bj?=
 =?utf-8?B?VCtRelFpNXFnWHl5UUNrUEhrcmphNEk5MHlwcXZpeXpQdHE4NnJWTkV3OSt6?=
 =?utf-8?B?eU94MjlCcTVtNVg4eVhGVmNNK2NPWExnd1FkMmxlUW0xTUxycitmNHhkK2hU?=
 =?utf-8?B?N1pJQ2g4ZUtSTHFKcmw3WVZIT09JZ0RvSnhLZitxL05WNmZNc01UNFdIczkz?=
 =?utf-8?B?L2xDNnVqT1czc2NmSUVxRHBJZE9WbWc1cVd1bGpFUDVSbDBIbUwrZ0VTSW1O?=
 =?utf-8?B?SzFZSHM1MW5uNzIzN0RMbWFNeVpUS2RZY3BsUUtTeEJGQU5uZHJMQVpSM0py?=
 =?utf-8?B?U2wwcTZDV0ttRnFiaFdkaFp2ZHRkTlVrdlVaMzkyWFJCQU9LWVBtcDJiSHpw?=
 =?utf-8?B?YW1xWFYwd2l5bE9WM2tidTZ5QXhXcFFwMVZ3YnBkZWZOM25vc1drZVZ0TlI2?=
 =?utf-8?B?WEN1R2kyU3QwSEJYeGloTzNuSUdzYjN0aEQrYVE3TWhEZVdwNFZCcExiR3cz?=
 =?utf-8?B?UkVPR21SelRWR2NuU3ppa0sxejdaTkF4ZXRQVk9wbUNlaFkxZ3FFVGFaRHdH?=
 =?utf-8?B?TlMvcGt5V29RaEIvUWdhWXBwVWM1eUdNZ3oxejBNQkRyT2I3aTZkZGpPbEVj?=
 =?utf-8?B?WTNTTzQxL1lFbGtxL0lucEt1SnIvV2ZKSzB5SW1tajVXMWpEVm5ReXJ0WUFF?=
 =?utf-8?B?QXBaSzA3MTdTaHNiSjBRaEQrVW5IM0hRbTJjWEY4SmNVMzVVK0R6d1RBS01j?=
 =?utf-8?B?endyV1RqWThCbzMrMmZtcVhRajNxVnNWSDRISFFuRWpFc2d4TXVOT2Z4L1Iy?=
 =?utf-8?B?aEZKb3ZYNzdXSjJlYmVEVEN6UHF5WVdKVWM5TWxRam5pWC9haHhWamkrWWV0?=
 =?utf-8?B?S2RlRGJwbHU3Z0l3T0xTOTc4ZWRkUTF1dVFydGIvTnRYaU5vQjRIb1QzR2pK?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa6ffa3-03b6-4c39-81c3-08dba3a8a047
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 07:14:44.3224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dZotPYCO5qnPjRhLjz0zp3WyyrY6hqtPUsoB1ChsWvbZOA+aeH1zJq6AZQJgAfgCXtbSndDf0J6lMAWVlGnk9zCqSuRvN6sSVeP9uRxeC+M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7000
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 4/8] drm/i915/vdsc: Add function to read
 any PPS register
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


On 8/22/2023 11:32 AM, Suraj Kandpal wrote:
> Add function to read any PPS register based on the
> intel_dsc_pps enum provided. Add a function which will call the
> new pps read function and place it in crtc state. Only PPS0 and
> PPS1 are readout the rest of the registers will be read in upcoming
> patches.
>
> --v2
> -Changes in read function as PPS enum is removed
> -Initialize pps_val as 0 in pps_read func itself [Jani]
> -Create a function that gets the required register and call that
> in the common read function [Jani]
> -Move the drm_WARN_ON one abstraction layer above [Jani]
>
> --v3
> -Send both reg values regardless of dsc engine no [Jani]
> -Don't use num_vdsc_instances stick to dsc_split field [Ankit]
>
> --v4
> -Manipulate the reg values instead of creating MACRO to change
> name of pps [Ankit]
>
> --v5
> -Read dsc reg values using array rather than individual variables
> [Ankit]
> -Loop the verification of all dsc engine reads to future proof it
> [Ankit]
> -Keep the fix me comment in this patch and remove it in later one
> where we add other readouts [Ankit]
> -Add switch statement that fills in the required registers based on
> no of vdsc engines per pipe.
>
> --v7
> -Pass no of vdsc instances from read_reg function [Ankit]
> -Fix issue where arrays do not get freed on return for read_and_verify
> func [Ankit]
>
> --v8
> -Simplify reading and verifying of register and remove dynamically
> allocated arrays [Jani]
> -Remove no_ from no_vdsc_per_pipe and wherever else it applies [Ankit]
>
> --v9
> -change variable name to dsc_reg_size rather than vdsc_per_pipe [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 118 ++++++++++++------
>   .../gpu/drm/i915/display/intel_vdsc_regs.h    |  12 ++
>   2 files changed, 94 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index fbe8ce9fe1ab..d505fa971dff 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -371,6 +371,28 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>   	return num_vdsc_instances;
>   }
>   
> +static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int pps,
> +				  i915_reg_t *dsc_reg, int dsc_reg_size)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	enum pipe pipe = crtc->pipe;
> +	bool pipe_dsc;
> +
> +	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
> +
> +	switch (dsc_reg_size) {
> +	case 2:
> +		dsc_reg[1] = pipe_dsc ? ICL_DSC1_PPS_REG(pipe, pps) : DSCC_PPS_REG(pps);
> +		fallthrough;
> +	case 1:
> +		dsc_reg[0] = pipe_dsc ? ICL_DSC0_PPS_REG(pipe, pps) : DSCA_PPS_REG(pps);
> +		break;


Sorry to miss this earlier, but I dont think we need case 1 any more.

So perhaps just warn and return if dsc_reg_size is not 2, otherwise fill 
the dsc_regs with offsets.

With that fixed, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +	default:
> +		MISSING_CASE(dsc_reg_size);
> +	}
> +}
> +
>   static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1000,17 +1022,72 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>   	}
>   }
>   
> +static bool intel_dsc_read_pps_reg(struct intel_crtc_state *crtc_state,
> +				   int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	const int vdsc_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	i915_reg_t dsc_reg[2];
> +	int i;
> +
> +	*pps_val = 0;
> +	drm_WARN_ON_ONCE(&i915->drm, ARRAY_SIZE(dsc_reg) < vdsc_per_pipe);
> +
> +	intel_dsc_get_pps_reg(crtc_state, pps, dsc_reg, ARRAY_SIZE(dsc_reg));
> +
> +	for (i = 0; i < min_t(int, ARRAY_SIZE(dsc_reg), vdsc_per_pipe); i++) {
> +		u32 pps_temp;
> +
> +		pps_temp = intel_de_read(i915, dsc_reg[i]);
> +
> +		if (i == 0)
> +			*pps_val = intel_de_read(i915, dsc_reg[i]);
> +		else if (pps_temp != *pps_val)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state *crtc_state,
> +					      int pps, u32 *pps_val)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	int ret;
> +
> +	ret = intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	drm_WARN_ON(&i915->drm, !ret);
> +}
> +
> +static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +	u32 pps_temp1, pps_temp2;
> +
> +	/* FIXME: add more state readout as needed */
> +
> +	/* Readout PPS_0 and PPS_1 registers */
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp1);
> +	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp2);
> +
> +	vdsc_cfg->bits_per_pixel = pps_temp2;
> +
> +	if (pps_temp1 & DSC_NATIVE_420_ENABLE)
> +		vdsc_cfg->bits_per_pixel >>= 1;
> +
> +	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +}
> +
>   void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	enum pipe pipe = crtc->pipe;
>   	enum intel_display_power_domain power_domain;
>   	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2, pps0 = 0, pps1 = 0, pps_temp0, pps_temp1;
> -	int vdsc_instances_per_pipe;
> +	u32 dss_ctl1, dss_ctl2;
>   
>   	if (!intel_dsc_source_support(crtc_state))
>   		return;
> @@ -1031,38 +1108,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>   	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>   		(dss_ctl1 & JOINER_ENABLE);
>   
> -	/* FIXME: add more state readout as needed */
> -
> -	vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
> -
> -	/* PPS0 & PPS1 */
> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
> -		pps1 = intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp1 = intel_de_read(dev_priv, DSCC_PICTURE_PARAMETER_SET_1);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	} else {
> -		pps0 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe));
> -		pps1 = intel_de_read(dev_priv,
> -				     ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe));
> -		if (vdsc_instances_per_pipe > 1) {
> -			pps_temp0 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe));
> -			pps_temp1 = intel_de_read(dev_priv,
> -						  ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe));
> -			drm_WARN_ON(&dev_priv->drm, pps0 != pps_temp0);
> -			drm_WARN_ON(&dev_priv->drm, pps1 != pps_temp1);
> -		}
> -	}
> -
> -	vdsc_cfg->bits_per_pixel = pps1;
> -
> -	if (pps0 & DSC_NATIVE_420_ENABLE)
> -		vdsc_cfg->bits_per_pixel >>= 1;
> -
> -	crtc_state->dsc.compressed_bpp = vdsc_cfg->bits_per_pixel >> 4;
> +	intel_dsc_get_pps_config(crtc_state);
>   out:
>   	intel_display_power_put(dev_priv, power_domain, wakeref);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 785ede31116e..862dc708c5fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -78,6 +78,10 @@
>   /* Icelake Display Stream Compression Registers */
>   #define DSCA_PICTURE_PARAMETER_SET_0		_MMIO(0x6B200)
>   #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
> +#define DSCA_PPS_0				0x6B200
> +#define DSCC_PPS_0				0x6BA00
> +#define DSCA_PPS_REG(pps)			_MMIO(DSCA_PPS_0 + (pps) * 4)
> +#define DSCC_PPS_REG(pps)			_MMIO(DSCC_PPS_0 + (pps) * 4)
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>   #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>   #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470
> @@ -88,6 +92,14 @@
>   #define ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe)	_MMIO_PIPE((pipe) - PIPE_B, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
>   							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC0_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC)
> +#define ICL_DSC1_PPS_0(pipe)			_PICK_EVEN((pipe) - PIPE_B, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB, \
> +							   _ICL_DSC1_PICTURE_PARAMETER_SET_0_PC)
> +#define  ICL_DSC0_PPS_REG(pipe, pps)		_MMIO(ICL_DSC0_PPS_0(pipe) + ((pps) * 4))
> +#define  ICL_DSC1_PPS_REG(pipe, pps)		_MMIO(ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
>   #define  DSC_NATIVE_422_ENABLE		BIT(23)
>   #define  DSC_NATIVE_420_ENABLE		BIT(22)
>   #define  DSC_ALT_ICH_SEL		(1 << 20)
