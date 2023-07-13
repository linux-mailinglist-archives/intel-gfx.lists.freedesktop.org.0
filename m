Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6C77520B2
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:00:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E4FB10E67A;
	Thu, 13 Jul 2023 12:00:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F618933E
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 12:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689249644; x=1720785644;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+HNNpQdb8u2plEgV7+sfjYy4hfDvyEvMuj5DewN284g=;
 b=jBSyyLEy1ZUQ0nq9qLb8sKP3t+XisyqoCBJxpxL76ekYIDI2/0i6DNc/
 5ZY9q8yrh9IKgKWH7AmvLczDTsN7ILGt/rDl99OqosHLdkeQYNQpmz2t8
 7/DjS00qsprLFQQa8YSfA81CknFpalLlc/7QVTKlJH6DJqv+h+mOSsW/u
 qpNHGx+Yv2hrc3DdJx6L7CFY5RZnWoHk9a+taIIteGqY6mE/5PjVvj8js
 GDwAEMkf8KyBxlGfZhXTU/LaNbpaXSIDaoHg3fR1awm/b+uhWqDjk6Tpp
 Lzz9o9qUaVU2gkD/oPz9US+gxmhgGx43K2iQUkzub4QJvztlscJ5RPMiF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="368699465"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="368699465"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 05:00:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="1052587863"
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="1052587863"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2023 05:00:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 05:00:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 05:00:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 05:00:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 05:00:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VutOTNKtc8NA2Wujg7HkHPk/1sp54TQRJce2yY1cBtdZG+Zhhrg+eEVUbx32GKh6oY86aCUiwDUIRp2yxIkpx4G32VVjkUQCiLReFcOgtKO1itZaJAtokmxhMtfhsYxpUqtWt3xQ+pHGglk2UyzZqMyNp4qfTi05KGDZ/wAQlPk+V5kmeqNFJoWhSaxZ2QwlA9bLHzI04PilzlGG7pgpAIluPD6hc0iKmQAl6iOv2hpD2tPOIKCpjVfDo7zWiBIITukyLaZ00RGk1oZBRTKL80I3Vm7dzCIfq+KA60O6QPSPK+22PWVgVBmQf52fDFG0SVeFQvdhK/3Bdr0AO1MBoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6m+1/Av9j2cKWMo8O7aXimy7rr4XYvqwfCedoXLupAo=;
 b=GFmdgLZxgr0X3QgCe4FwpShBdeTme61wokmRdsDzzk5e2pKTreWtTvHF36r/8lt9kz1BB/sBLE2AEuCwGhlW0FsgVQf5Pj/pekopkfD046OHj3X/W+3BZS0rB10MNACptG3Lby5M5mtx9Dqov6jCiBTfAfrkTgvIuOtyGkBWpDEMBNBJ1BvSKw7ynZnFKZXnghvVgzEnBlb4esYJmC6gn//6usHeF6tzc/gMNRMpGXuOsr3rNamGPXDZ+Xu3vRMB6iBO3cjiwlKQetijYFt9tb4wWZugouucZ1+pl7+GD+pAcvHlkB168K2DvCDPWpjtQobjNZ4b6u0TV+O5lFZ2vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN6PR11MB8146.namprd11.prod.outlook.com (2603:10b6:208:470::9)
 by CH3PR11MB7390.namprd11.prod.outlook.com (2603:10b6:610:14e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Thu, 13 Jul
 2023 12:00:37 +0000
Received: from MN6PR11MB8146.namprd11.prod.outlook.com
 ([fe80::8b8d:c69e:2c53:f792]) by MN6PR11MB8146.namprd11.prod.outlook.com
 ([fe80::8b8d:c69e:2c53:f792%2]) with mapi id 15.20.6588.024; Thu, 13 Jul 2023
 12:00:37 +0000
Message-ID: <0c9fe309-f3be-c3f8-f659-fc9facf61867@intel.com>
Date: Thu, 13 Jul 2023 15:00:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Atwood <matthew.s.atwood@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <matthew.d.roper@intel.com>
References: <20230712233415.49012-1-matthew.s.atwood@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20230712233415.49012-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0040.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:92::7) To MN6PR11MB8146.namprd11.prod.outlook.com
 (2603:10b6:208:470::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8146:EE_|CH3PR11MB7390:EE_
X-MS-Office365-Filtering-Correlation-Id: aa2c2eb1-b1cd-4321-b5d5-08db8398c54b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2NA04zIGxSpuosOLPYLpkE3PypykU+X0QD1Hfkxoqr8Wi2WzkzesZNYbz5/reYidEI4Qjsv46HJfsZCQiHGZY7Z+jdVhvvEur840i2jPZPOYKP8oF2UoR0wLE+8h17rTZoGwCTmsRLMzaRAK56hwxGAbnf3AkpmnzoRcIzne1UmyZ7Jy2LbxhOTlIIiPrxeJw0ia6G1IL8hSARWOlXtb8AR6Kq5bDap6qJ3upX8ZWRVds9izv3m9GS9gZvozl5YwMaisgyHSRsfJY3wLYKhBGfo0sTHj7rn+qDnhTlehQSggzCkuQHxgw7CvQXuaYSTmy9wgIJtT0Nf041dQAa9uYjz3PweTPd5QQUZYu6IGGCVnQGoMIDcTG0VRiKIizcOED6bh1XZJFFB6souDEs3QVKe7B3eyQrzF81YtBVLhzpo3XjJkwajTQmR41DaSqF1Ru1abD25EQ/NEMAe4eLVzDecxu9RIgmXDaql6i9pZiqei6Tv7oIEH3kaTlCcQ7UBbE+7njvWpC/2/6mbjkEzz7GCNZ0QfwWTScx/vYaK56DLp01FnrGvW2YVJWI+xyBQ0grOcy/UGJ+C2YXZNQiDLA5YcpXNHYO2Vy4fSBaBXZegZ+T07q2jMC9UUENSVdaJ3tEczVEfwoxdBhsxHKtJw3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8146.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(478600001)(6666004)(6486002)(6636002)(66946007)(66476007)(66556008)(31686004)(316002)(82960400001)(41300700001)(2616005)(186003)(2906002)(53546011)(8936002)(8676002)(38100700002)(6506007)(36756003)(26005)(5660300002)(6512007)(86362001)(31696002)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y2ZBcjYxd0x3UEovRUJJWjZLaHFnUjZyUktFYzkrYzFhWUhDcjlneUNNOEZj?=
 =?utf-8?B?MHBGaTAzMUxZcVovVHJlVXdUakZiWEdmNEc0cXNwemt2cmdlUXNDemVndTVB?=
 =?utf-8?B?a3N1SGxyZUtZM2ZZcHQ0STJkdXc5bjY1b29NajRHOEVzNW9Yem56YXhBdWVi?=
 =?utf-8?B?YW9LVkpNc0k2N0lxd3VURzFEdjNMbmIrYTdPV2ZidmhsTHA2aE50NzlrclNp?=
 =?utf-8?B?SDZEYVY2NGlzN1VRdUtIWGF1R3hmMDhFYi8yMG41TXJGM2FiTGxTTko4S004?=
 =?utf-8?B?eUZFR2UxTUtGTTJKWGY2S1p1aGtaWVliN2Vxa0UzQkEvREJGT0RnVlB3SEJa?=
 =?utf-8?B?VEhUR3NKbyswcFdjRnpudnZra0IxU0lFbi9qbFRQVGlTbFo4NTRrQjBpVkho?=
 =?utf-8?B?Z1k3djlpQmg2YkxYNUZsYUxoVm8vd2UxdFVqeVhnY0h0WnoySmRDNW1QNFJH?=
 =?utf-8?B?bEljenZPc0hEa3NLWW5XY2lHTkYzN1kzdlEyaTZRVy80aHA0RVkvSGtzV2xQ?=
 =?utf-8?B?YVRDZzVYNVVsRklOalBpUFdXVlhHYjlSSHo5c0RqTmJGVFUrR3JVVHFmbEtP?=
 =?utf-8?B?ck5ZWWRaSU1ISnJVSk1oa3FpZnpOR2ZDa0tPU3RNWmpRK2lLZnZucGlOY0RQ?=
 =?utf-8?B?Mm94dnA3QlBGeVh2dGIvNHlHaE9DQmNOTlhtVm5pV0pLenNyVlQvYUhqenN5?=
 =?utf-8?B?OGFHcmt2dUFjNU5nWkxaR0dXVVMwOUFaTkJ6NDFDMllDVHZtNkRQNzdIYWNx?=
 =?utf-8?B?MUhUNjhRUzNSV1RRU0l0QkhYYVhBSXFpWVh3dDdoa2R3SmFKcWdGbjNFeCtJ?=
 =?utf-8?B?Z0JJYytYOXRxMjZFM0srOXdiaVFsNnNkNVhwVkRCM2FRSExrdE1UNjh6QjI5?=
 =?utf-8?B?cm9XUllnZURQd3ErTXJONmtUMU9aMGxmM2pMbjNOSDNjZUJObVNHRllyTFg3?=
 =?utf-8?B?eEVmR0czMU1zTGZDNExId251VHRESkgzajhDbXFUVThud21qdGtrT1FmSEty?=
 =?utf-8?B?b1lsMjRuaEYxTHpkV0Zia2JpR3NXYnlMNHlJRDErdnRlS3V3SFlCeVc3UjAw?=
 =?utf-8?B?bDh3VTN6R1JSNktJa2k4d3ZiWUs0cU5hM1NOb3RqK0IzZmpSNytSVGw4SVVp?=
 =?utf-8?B?a0tGREdSZzZWd2dlZm45VDBDU2c3cFBWakJlazdIVHhJTTFSMjBKYjNCN3E5?=
 =?utf-8?B?YnRHanIzdXZzbGNpQ1VYMlFwSTJsRTk0dzFYSHFSVUN4RC9JWmpEQkxmcmRy?=
 =?utf-8?B?K2RXYTd2WEZBcW5kRzBxdk9PNXEzVzEyd1hHTlQ0bWQyVGpyaVFnUG93N0FC?=
 =?utf-8?B?bmpGbDY3ZHV5WlJxeFZWZEErL0syalFmSDZjRGdmUjBNRytQbXZpM2dIWnJ6?=
 =?utf-8?B?b2lDU3FleVFTVGl5NVpXK1BPdi85dEZKNzk1V3V0bDZhRGhIWlkzUXV3WWZ5?=
 =?utf-8?B?UnB1VnhXYjMyTGZMSEJ1dGt2cEpQcS82YmdzdFNRRXJhdWJjOEhyQ1h2a254?=
 =?utf-8?B?cDF2dzZtRExOMHZQWDk3OUpOQ0pwaFhVb01VTDZmVjZDZjVvbXptVzhkSmUx?=
 =?utf-8?B?UFF5YnBTTnpLbUl4YWtYOXcxWXhNeHhpbzdEY1BTZGdlUE40T3NNdzc5anpZ?=
 =?utf-8?B?dGpMUWIxVG1WbWtlVm9zemo3SlIxVWZTYkZRM2ExcWJicXpVcDhYdDNEd2pE?=
 =?utf-8?B?eW1oYWxsL0pFdDk4RlU3NzY0MjJ3MTltYVR5MXgyMG9wVndxbW8vSkY0Ni9w?=
 =?utf-8?B?U1NPU0kwdk9hTzM0Mm9FWVMwUkJpVVlkZk00YTB1VmxHVno1YkFuOWlJMnlZ?=
 =?utf-8?B?MGczdEpZeFEzNHRQOWlhRHlWL0RSL3N6NGR0QXkycTB5K0JhOVpLQW16ekdM?=
 =?utf-8?B?U08zMzNwRmE2UmxneTFRUlNIYUZDSmlXdU91TzBuQ1l4SUJMbHVQUGltUW1y?=
 =?utf-8?B?K3Rldzh4WWJZbitpMDErSXFBRlc2ZWxsZFl1QTRKNUFxQ2NjVEFxc2JuMXky?=
 =?utf-8?B?REo2NjFIa3VYWWhWNTdDNS93MHNMSTQ3MWhzQis0Z1lxODZKdlU4SW5VMW1n?=
 =?utf-8?B?VGxOZmh5c3FtTkgyQTVzenptL3JTcTlUM1o2SXQ3WW9VOFZwYTZqY2tJaXk1?=
 =?utf-8?B?THV0clJ0SElMYmN6T1dnUWFmdUV3UHBEbWt4bkFVQkh2U1pHd1pnd2VjMlBn?=
 =?utf-8?B?aXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2c2eb1-b1cd-4321-b5d5-08db8398c54b
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8146.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 12:00:37.4866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xosSlGDyNJxza3+n7hiN5cYzkw5jMa4HS8XTvlxN/3NktwtF53FF8QA5OVp5aQRQglRnRMmi2sz7fBYOdg7RNNhhh55DQMJ2D9cDmOct85M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Introduce Wa_14011274333
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

On 13/07/2023 02:34, Matt Atwood wrote:
> Wa_14011274333 applies to RKL, ADL-S, ADL-P and TGL. ALlocate buffer
> pinned to GGTT and add WA to restore impacted registers.
>
> v2: use correct lineage number, more generically apply workarounds for
> all registers impacted, move workaround to gt/intel_workarounds.c
> (MattR)
>
> Based off patch by Tilak Tangudu.
>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>


I applied this patch to drm-tip and as far as I can tell it doesn't fix 
the problem of the SAMPLER_MODE register loosing its bit0 programming.


-Lionel


> ---
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 ++
>   drivers/gpu/drm/i915/gt/intel_rc6.c         | 63 +++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/intel_rc6_types.h   |  3 +
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 40 +++++++++++++
>   4 files changed, 111 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 718cb2c80f79e..eaee35ecbc8d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -83,6 +83,11 @@
>   #define   MTL_MCR_GROUPID			REG_GENMASK(11, 8)
>   #define   MTL_MCR_INSTANCEID			REG_GENMASK(3, 0)
>   
> +#define CTX_WA_PTR				_MMIO(0x2058)
> +#define  CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31,12)
> +#define  CTX_WA_TYPE_MASK			REG_GENMASK(4,3)
> +#define  CTX_WA_VALID				REG_BIT(0)
> +
>   #define IPEIR_I965				_MMIO(0x2064)
>   #define IPEHR_I965				_MMIO(0x2068)
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c9..6baa341814da7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -14,6 +14,7 @@
>   #include "intel_gt.h"
>   #include "intel_gt_pm.h"
>   #include "intel_gt_regs.h"
> +#include "intel_gpu_commands.h"
>   #include "intel_pcode.h"
>   #include "intel_rc6.h"
>   
> @@ -53,6 +54,65 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>   	return rc6_to_gt(rc)->i915;
>   }
>   
> +static int rc6_wa_bb_ctx_init(struct intel_rc6 *rc6)
> +{
> +	struct drm_i915_private *i915 = rc6_to_i915(rc6);
> +	struct intel_gt *gt = rc6_to_gt(rc6);
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	void *batch;
> +	struct i915_gem_ww_ctx ww;
> +	int err;
> +
> +	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +	if (IS_ERR(vma)){
> +		err = PTR_ERR(vma);
> +		goto err;
> +	}
> +	rc6->vma=vma;
> +	i915_gem_ww_ctx_init(&ww, true);
> +retry:
> +	err = i915_gem_object_lock(obj, &ww);
> +	if (!err)
> +		err = i915_ggtt_pin(rc6->vma, &ww, 0, PIN_HIGH);
> +	if (err)
> +		goto err_ww_fini;
> +
> +	batch = i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_unpin;
> +	}
> +	rc6->rc6_wa_bb = batch;
> +	return 0;
> +err_unpin:
> +	if (err)
> +		i915_vma_unpin(rc6->vma);
> +err_ww_fini:
> +	if (err == -EDEADLK) {
> +		err = i915_gem_ww_ctx_backoff(&ww);
> +		if (!err)
> +			goto retry;
> +	}
> +	i915_gem_ww_ctx_fini(&ww);
> +
> +	if (err)
> +		i915_vma_put(rc6->vma);
> +err:
> +	i915_gem_object_put(obj);
> +	return err;
> +}
> +
> +void rc6_wa_bb_ctx_wa_fini(struct intel_rc6 *rc6)
> +{
> +	i915_vma_unpin(rc6->vma);
> +	i915_vma_put(rc6->vma);
> +}
> +
>   static void gen11_rc6_enable(struct intel_rc6 *rc6)
>   {
>   	struct intel_gt *gt = rc6_to_gt(rc6);
> @@ -616,6 +676,9 @@ void intel_rc6_init(struct intel_rc6 *rc6)
>   		err = chv_rc6_init(rc6);
>   	else if (IS_VALLEYVIEW(i915))
>   		err = vlv_rc6_init(rc6);
> +	else if ((GRAPHICS_VER_FULL(i915) >= IP_VER(12, 0)) &&
> +		 (GRAPHICS_VER_FULL(i915) <= IP_VER(12, 70)))
> +		err = rc6_wa_bb_ctx_init(rc6);
>   	else
>   		err = 0;
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> index cd4587098162a..643fd4e839ad4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> @@ -33,6 +33,9 @@ struct intel_rc6 {
>   
>   	struct drm_i915_gem_object *pctx;
>   
> +	u32 *rc6_wa_bb;
> +	struct i915_vma *vma;
> +
>   	bool supported : 1;
>   	bool enabled : 1;
>   	bool manual : 1;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4d2dece960115..d20afb318d857 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,6 +14,7 @@
>   #include "intel_gt_regs.h"
>   #include "intel_ring.h"
>   #include "intel_workarounds.h"
> +#include "intel_rc6.h"
>   
>   /**
>    * DOC: Hardware workarounds
> @@ -3132,6 +3133,41 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>   			   true);
>   }
>   
> +static void
> +populate_wa_bb_ctx(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> +{
> +	struct intel_rc6 *rc6 = &engine->gt->rc6;
> +	struct intel_uncore *uncore = engine->gt->uncore;
> +	const struct i915_wa *wa;
> +	int i;
> +	u32 *rc6_wa_bb;
> +
> +	if (!rc6->vma->obj) return;
> +
> +	rc6_wa_bb = rc6->rc6_wa_bb;
> +	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> +		if (i915_mmio_reg_offset(wa->mcr_reg) ==
> +		    i915_mmio_reg_offset(GEN8_HALF_SLICE_CHICKEN1) ||
> +		    ((i915_mmio_reg_offset(wa->mcr_reg) >=
> +		      i915_mmio_reg_offset(HALF_SLICE_CHICKEN2)) &&
> +		     (i915_mmio_reg_offset(wa->mcr_reg) <=
> +		      i915_mmio_reg_offset(GEN9_HALF_SLICE_CHICKEN7)))) {


Guessing this is where SAMPLER_MODE is missing.


> +			*rc6_wa_bb++ = MI_NOOP;
> +			*rc6_wa_bb++ = MI_LOAD_REGISTER_IMM(1);
> +			*rc6_wa_bb++ = i915_mmio_reg_offset(wa->mcr_reg);
> +			*rc6_wa_bb++ = wa->set;
> +			*rc6_wa_bb++ = MI_NOOP;
> +                }
> +	}
> +	*rc6_wa_bb++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(rc6->vma->obj);
> +	intel_uncore_write(uncore, CTX_WA_PTR,
> +			   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
> +					  i915_vma_offset(rc6->vma) & GENMASK(19, 0)) |
> +			   CTX_WA_VALID);
> +}
> +
>   static void
>   engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   {
> @@ -3154,6 +3190,10 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
>   		rcs_engine_wa_init(engine, wal);
>   	else
>   		xcs_engine_wa_init(engine, wal);
> +
> +	if ((GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 0)) &&
> +	    (GRAPHICS_VER_FULL(engine->i915) <= IP_VER(12, 70)))
> +		populate_wa_bb_ctx(engine, wal);
>   }
>   
>   void intel_engine_init_workarounds(struct intel_engine_cs *engine)


