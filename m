Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3298E42E3E6
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 23:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5226E02B;
	Thu, 14 Oct 2021 21:59:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B824C6E02B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 21:59:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227752897"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="227752897"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 14:59:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="564079994"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2021 14:59:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 14:59:11 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 14:59:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 14:59:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 14 Oct 2021 14:59:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S80h/NPqFFp2qF5wCtIQyKbfyKE+Z+IpRleJJOQ0mM3kAiVNhXzscXfEFetA01JD1mX4N652Ntu1x6Ljb6Q3E6g75LD6FrXhGhOML/jousAqq4R9dPU+C2iiWfgjDgEo/1S6oBmddPjER8ygMlQzFBWCAWu2rrOeS0XGU0jDJL1pAxXMJkoNMp5kS+EFR1JeiO/++iNk/FURkxn8hv55zQ1EjYzstpGJC3lqSgw2t1EUwjm4HZFimAjIN7WnTYW+0TQuDbkJYxkTdMkBssCP3YeQWo0glbr0u9852UZxXdegyKoJLWm6/MzxMIuh6XUMxzghETWGVbaC1o8Xk7cSSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uMHcUvAgxPw6hAflz8pcMitSXg7ei7x6Q6722+vclgI=;
 b=YLUSNagTVlcis9Jkes0rQduyxOPZC5/2d4wM4cNqkxilvhr91nnsoP2XGBjhWyQLZQHpIKuAobrZQ5/Qk+caFA3xC0lzDDjUteKOOB1dEEsP4wPPjFLo3RzGz8qeWfUNPdYHZe2dPhRJ4i63Xcw9QdRlCTts96FEmPKSBaMtvtTVM7/QYz7I2cIMwDPiE37mt4JUG6c+jqjaYeSQ/reSHSwS9HhNQO6hQGhdzpZ9pcBm4rysZhXdCXYeO9F+M7ZHdgHYkJEbKFt7FLdgkp2hDVF4ucYxWDvTlDUil00Gseaa7H+S3QCve9j/EuICWAv9fTh+p5p9Oz0ScT3bBF3PLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uMHcUvAgxPw6hAflz8pcMitSXg7ei7x6Q6722+vclgI=;
 b=j5E+s+VrY5s3tXpxFUOK/9+F0Is/BFq+NOxD8HCXIizLq8c8AN+IQGC85g7lsmhAZJfijC4CojjjAPZHdb8/p7Pwq4sufS01JbkZODgbfwrNA2rqmI75MDu2UaPhIdJFshIU8ZXYDnBgYV6CrAzRIPeOqXiSsWkv1OI6Px/00DE=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB3547.namprd11.prod.outlook.com (2603:10b6:5:136::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4587.22; Thu, 14 Oct 2021 21:59:07 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::450:6ab1:b0a:a165%9]) with mapi id 15.20.4608.017; Thu, 14 Oct 2021
 21:59:07 +0000
Message-ID: <8f543981-2cff-0e3e-4639-45f23a3000be@intel.com>
Date: Thu, 14 Oct 2021 14:59:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.0
Content-Language: en-US
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Alan Previn <alan.previn.teres.alexis@intel.com>
References: <20211014171257.1615604-1-rodrigo.vivi@intel.com>
 <20211014171257.1615604-2-rodrigo.vivi@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20211014171257.1615604-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0011.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::16) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
Received: from [192.168.1.65] (99.72.232.53) by
 SJ0PR05CA0011.namprd05.prod.outlook.com (2603:10b6:a03:33b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.15 via Frontend
 Transport; Thu, 14 Oct 2021 21:59:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d50a7a1-e2cc-45f1-4b38-08d98f5dd81f
X-MS-TrafficTypeDiagnostic: DM6PR11MB3547:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB3547B12BE8B031CA2ECD7B60F4B89@DM6PR11MB3547.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SYKbE7D0ThxrW6QTJ+Jqu7iX6mvy1e9hRTVpHevE6YwwKGYE7aj3TYt2jEuG96wjkLMggvwVWgLfnU+X/ulhmBd0VoxDxH7wMVQBlrHg8vadiMwcAZIex2ZVKQEb9/LWRYpAu/FYyII9Mz9n6HcjQPy9zqy/F9kYGL8Uvg8JYRYc2UY5Qfb+byEIOTZn8cVoZpoMjWtsikjgDLtdR0DemFMyPQoM7re2PIZBou5WWlMXDv3Laxzf1tiPKOFCY42f57N4vQDvWyjQmJUqiFv51vVEWBuz+BFdXPmCNpPUNoXWIoQWYXmnCf5qLmtLx2Gnuvr8WA/VsW6vF2l4WChw/KSQGEmxtQ/CvmPLx94+WcXCE19QHGbVbkbFKYY7kFAKTmyjKgOFjZwfpT6yPL9DZLqqrfIvTI919sRocdOrvPaluRpL7Wn/mFtRRmr+TjWiiOfHIeBWoY/ZfYYHeyF/PVnRrRKhIml4Lvl6JQOPCP7AVdFp3TIF1SEP9+4kvBg+WxqLPCYfmfD05R8XLdbNL0mC28anvUgq9WoxyrBibn0AmOs4Yi8mPvIUmj5p65UZ7Y9biMiA7rmpr1AfYrZR5FmuBroLw4wE/cSW1SbOjWd/xIpe0Wz5hB7jcmC3SfRu8/2m8QeFKh1HT0ihlexoTEOHZ3GtTeEaoraRA44XhKuHpwIjilHPnckSkZEQtceyt5+mQVR+ITlGOpNpLJjKC73JOUYxENMgb3hbZRrqKgaYlcQib7gdtizT6tUx89Xj
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(16576012)(186003)(66556008)(8676002)(66476007)(38100700002)(508600001)(31696002)(66946007)(107886003)(4326008)(2906002)(31686004)(82960400001)(86362001)(26005)(316002)(956004)(8936002)(5660300002)(2616005)(53546011)(83380400001)(36756003)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWtLMnFsVWhyVHJIWURkcUNsU2h6S3lnb25DL2J0cHNKSVh5WnUwQUxZS2U4?=
 =?utf-8?B?d1R1b2QyQjZaTXZtUXZVVVgrcE9jMDY2MkVMYktvYWVSMzllQjJBcnpSR2xN?=
 =?utf-8?B?SE0wbDg4ZVlFNXNSNTg5bENQR0J1OVRKK21zUHNxMTdRVTVZVXU3TGlVUzV1?=
 =?utf-8?B?Yy95eGRYSW14TVRFY2RKV3Z3ejBWbm9RSVFta25QaENncjYzVysyTk9Odko3?=
 =?utf-8?B?WXc4UTAxdlJsL3V4OVdUVVFNMWoydzB3OG9MTUJxMFBDT0NMZFJPQ3ZmM1hH?=
 =?utf-8?B?T01TeUZoVFlKQjU4Um5PaFQvOVFjNkJEL1NjK0JZUGM4amQ2S0ludnExSzk2?=
 =?utf-8?B?VkY2UTMwWHJ3TGIxaXFVZlEybmpQNnZhVndnUmI1SjNPT0hQUzRaZXQ1UTJu?=
 =?utf-8?B?U3h6NGZzU1lRSnNaYU5NSGMrdjFUa2ZacklsODY3M3B5bDFRU3JvTUE4WS8w?=
 =?utf-8?B?WE9PbTA0aytXb1NPWk90RzRjMTJSZHVhUVlsbnc2dk9abVdTM2pFdTkzbGxx?=
 =?utf-8?B?eEJEYjN2akVLbEhZNFJIOHFWRE1nb2N3UUFSRUNWRmtscm1ZN3pob2l3a3Qz?=
 =?utf-8?B?bnkrVlI5TUlGMmtXaUlqMnVTQ1FiU29FeXB4Skl1QnFUSTl6WERQNG55bFRQ?=
 =?utf-8?B?Tnh2QzR4dlFSUkkySW53eGVSTU90RFZwS0FEQ3Q4M3lwNGtJSHpad3c4NXQx?=
 =?utf-8?B?TnR1bXUwSGdNcW4wWHI5cW5nVDAxZUlZQXZTa1JoWThQME5ZVWtJRVJ6QXdO?=
 =?utf-8?B?TXlHaC9ObHJCeE13emdMRHY3MmJwZDd4bHc4eWZHaTd6RWpYVlR5L2M2L2lC?=
 =?utf-8?B?eExkd0JOMVB1V05pNjFqajJKT3pZamt4R25pcVNlZ05lMlZxNnVUS2Juc3Jp?=
 =?utf-8?B?b1NvREJLQmJWQjdQYmNHOGpCTkNHTG15UUNGS3l1UFlaNTl0cEFLQTRqY0I3?=
 =?utf-8?B?ZjdWaGVnMVBRbnM0T2E4akJtZ0xtVnRPdmRUUTVwZ2c3WWZJaGtBNmJZRm9C?=
 =?utf-8?B?Ty9DRUdGR1gwZDdESEhjZnFFaVJndkd0ZE0rUitzdmQ1M083Ym5MeDBkbWV1?=
 =?utf-8?B?YXBDNFp5d2xTUldGK0x5ZGx5bFFtVHdFQnFEZmRuRnpZd2NlQitMTHI4UEda?=
 =?utf-8?B?a3lVRTI0clNSSnVzWU9FdUg2Nm14SnlzLzgvMFMvdmYwQWFENG82SUdkRmFT?=
 =?utf-8?B?YTNzYWdFYWJNMWFwZHA3aG5rY2x1VHdCRlZvWjFQMEVXcXlySnk3NDVzaWR3?=
 =?utf-8?B?M2w1VSs5Ti80S2pRbVQ5SDhsVU05dUZEQUhjS0tDMUJFdXM3ZUpJZ3c5c1hU?=
 =?utf-8?B?VEpTbTJoeTd6SFB1cnRySVBtc0tYNnFlZ1J0eDlHVXBXa2lvVS9qakdTbk1m?=
 =?utf-8?B?bElUZlF2RExkclhJeVhaTjQ0MHdFaVB4a05tMXFlUEs3Q05peU9Jbm13aU9k?=
 =?utf-8?B?c250Q2xhWmdoYVNvRCtBRUM5RXhqZDVSMVlIUmZSTFg5VnBCeTA2cjhRUHRU?=
 =?utf-8?B?YVphRm1CeE1aYVNuWjIrUWtPVGxvMHI2T1VvMTdOY3VrYzNtNjRMZXlNOGh0?=
 =?utf-8?B?VHBHWUdTakk0RFJSamw5YkRaVkFpZ210b1o3ZXpTT3ZmOVNMdUR5NG1pVzJz?=
 =?utf-8?B?YmJmSVltSVRmS0RmdzIyajJNQ1pXYUtBc2xzK3pIUUthUmRDR0hkdXlYOUZa?=
 =?utf-8?B?N0JKU0M1SWowZlBmWUNwdnNmZ0dIYXFLSnVRRzdLQjhBYmFTUE53elZjenU3?=
 =?utf-8?Q?tWz4NDL/adwYaWk0xweYqkULAfywv4XoqElk1+Z?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d50a7a1-e2cc-45f1-4b38-08d98f5dd81f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 21:59:07.1779 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bnqkAc0QCYMN+/JeVbjl1IDri/fb71ex+pPf/GAGFRzfgWQhl8OXhqkXOlsDTPgchJHJpnaNr4cRBzbaSzEq1bCXSCqFN9o4i/sDyNoKLcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3547
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Clean up PXP Kconfig info.
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



On 10/14/2021 10:12 AM, Rodrigo Vivi wrote:
> During the review I focused on stop the using of the "+"
> to reference the newer platforms, but I forgot that we are
> in a process of making things more clear and differentiate
> graphics and display versions. So, let me to clean up this
> a bit. Also, we don't need any version mentioned in the
> config menu entry, only in the help.
>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/Kconfig | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 8859444943a0..bf041b26ffec 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -132,15 +132,15 @@ config DRM_I915_GVT_KVMGT
>   	  Intel GVT-g.
>   
>   config DRM_I915_PXP
> -	bool "Enable Intel PXP support for Intel Gen12 and newer platform"
> +	bool "Enable Intel PXP support"
>   	depends on DRM_I915
>   	depends on INTEL_MEI && INTEL_MEI_PXP
>   	default n
>   	help
> -	  PXP (Protected Xe Path) is an i915 component, available on GEN12 and
> -	  newer GPUs, that helps to establish the hardware protected session and
> -	  manage the status of the alive software session, as well as its life
> -	  cycle.
> +	  PXP (Protected Xe Path) is an i915 component, available on graphics
> +	  version 12 and newer GPUs, that helps to establish the hardware
> +	  protected session and manage the status of the alive software session,
> +	  as well as its life cycle.
>   
>   menu "drm/i915 Debugging"
>   depends on DRM_I915

