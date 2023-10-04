Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246227B8C4A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 21:09:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C62810E1A1;
	Wed,  4 Oct 2023 19:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5594410E1A1
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 19:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696446556; x=1727982556;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YuFJADqebMa+W/D+ATMvmFs5dwYX3X4pzBqn7oRIzvU=;
 b=JKhO9tfdsMBx+2+JSHPbs84SDQY2NXe4RNeOjLz2/SboBKZ0PF4LW1Fq
 p1UdOM1wTESDqoSzIkr7xZg11E1+CXTc04fAu5xoOf7niweZT4EjJMpWn
 x2/yi//QrJQcKD2gfOtibBV7e7l6TIf5Oqex+DLCLUvCPhuK8VWo8ZeR5
 yg9gW3ZtRbO3wPpLrUE3I2QhMxLVIXF5+E01StI/XvZ/zPidNmXiiLFdO
 R6TbM9HBY8se4tNJZwQONXNb2AnTs3CITBN0Pi86wV2Hqs2txstGgPuog
 ajUVXIovK3o6y5elfkLPTsbGlpw0twpZrJv2WapXOmYlymLA1oL+by2jY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="373612518"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="373612518"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="895095540"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="895095540"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Oct 2023 12:07:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 4 Oct 2023 12:09:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 4 Oct 2023 12:09:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 4 Oct 2023 12:09:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDfqwNMEPlyaS00R7zGz9GGNAyoIFg/UpmJ1N08RpkADqpF07s3aPUT8yhf9xj9e1VjZCiUut38PJxZSvX7F7RVscjmLkyiSaRqRRffRR15GbiIkg5MiSjcNYZStXevfQr2hlyodgsT3HvMO5mdnBEvL9ky+mpwBxeOQ0XaVvA1Koqdhcc04ySG8uSBgn0E18rDhgobgPSdeU0KaUvgktkXLC9E17EPU+xiEH4VAKR2CT9MS639Iul/23FFE2NmaXQ+pNCnADfix8EjclBBYrUkOIPysZKDRU3NqgcQOjSGgN2ZssfmmISt/HHVy8RMbrMpll4IqSMuNLY7Oy2ot8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1w2BiBKPt+D4zpUEVynV0z04Qq1klwp3eU13GnmUd4=;
 b=SdFYIjMwm8l8sj+FBT6jtew8CVBjrK/KdzNKV0JrP/8UPrr5KjQt2ScL5o959vjFb4xUR5ABbfhiYtrqtYAaoZXWDWkhFIXo0tDwNTI226IQatIcRJb+oWnLqgLzdKtaXsfsNUFn7vl7f5nX8P2rThlBC+u9AzFbw4HL1a/nD8R2uaOTTL7ohvVSNd2oa3+uI9zlYi19uFkNuZVt9GNQGWqEmV2lslXb58z6IiPNjjsCIySieNTz9qJM/g+q//uPnUagJWBLA0gk8LTg8gwB8zY0Ag1IYpBIli36YevyzwbNZFHiI+IpaIiyYn0WOGyEoyT3FBJPSNRCydcN6lDQrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB3908.namprd11.prod.outlook.com (2603:10b6:405:7d::13)
 by BN9PR11MB5529.namprd11.prod.outlook.com (2603:10b6:408:102::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Wed, 4 Oct
 2023 19:09:11 +0000
Received: from BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::92a:bbbf:656b:dcb5]) by BN6PR11MB3908.namprd11.prod.outlook.com
 ([fe80::92a:bbbf:656b:dcb5%5]) with mapi id 15.20.6838.030; Wed, 4 Oct 2023
 19:09:11 +0000
Message-ID: <01e85334-3af5-564b-a12e-7031e48e310c@intel.com>
Date: Wed, 4 Oct 2023 12:09:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P221CA0021.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::26) To BN6PR11MB3908.namprd11.prod.outlook.com
 (2603:10b6:405:7d::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN6PR11MB3908:EE_|BN9PR11MB5529:EE_
X-MS-Office365-Filtering-Correlation-Id: 329cd82e-40e4-4bcc-35f7-08dbc50d6454
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SqLQUoFw7XaKjdiTMIKUqH+UCtaS0BRwqNWZbSNwABqCMz8uVpZEtWBpLDom5EMv3eRkXu4BnrKgw+q0cmC6SpVS+0sLWrF+Vw6Uho58/mXPN00HuAEUjIAkAdTF/14LhplWoUIFNZqOKXCo9NY+7xzS8WsYvAvWxSBvLUCqbU/tiAwVzhETlMypAwa3d0NjKADsEjJldLQNaF/kewWMWocFE8tjBlbY6uM3fYwrkSVXHVfnQJJwD+OrrzTjT7g9WBUL9Np5HjoEKX0+TQkL4lLNTBw12jmkc9TFMYFSZ4z74c4kC69YnXCyx17LBaecnPmzex2TwY1kV15pq4mYiv+iJwMOGRwWkqtyvDwqfU4xrEQIUH3hS58PRUyySHHnmdhYxlrLGrChSThXGz34ODw0xylp9eBULYx5WxJ63ccFvw6HLM6zRJRFrIXBoQWQLNvWP6rz3aXGzR0LZnch1azOZ/xjfbr0UPMfblNqK+4X0OJvM/e1RKM/p0XSIhFpvcHV5Ho5kJ9WnE7VncCsR9ZghqfTwBCqxGuD/5MHJB7hSFPsy6p3Km0PesFJ+S9VN1WlA2SJtU4qvSSx3j5kquTJ+6SqeDvT0Vb80ezRWhczTgTtThVmEUgeHZyYMXscVmFK6aqJLGPA3IsRo80WkQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB3908.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(39860400002)(346002)(136003)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(6512007)(6486002)(6506007)(6666004)(53546011)(478600001)(83380400001)(26005)(2616005)(2906002)(316002)(8936002)(8676002)(66476007)(66556008)(66946007)(4326008)(5660300002)(41300700001)(36756003)(38100700002)(82960400001)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjlKaHhpcm5DWFpvTE1NUGVXKzhsam82c01VdXdmd1NZR0pia1RITHVnS20y?=
 =?utf-8?B?NjdHNnJvRTA1YkZsbkJsZTRNemNNdjZnMnFRWEJnbTlJdzlYOXlnSm5pcHRn?=
 =?utf-8?B?L0tJcmE0L0pDd0RwZ1NrOEY1YjlYSkQ0b2Z4QXBzZXRmbk05Ny9uWU1sUGxx?=
 =?utf-8?B?RC9kdWx0L3dGaWtMSXRLZFJqTHdtYjRxTXNFVHJsZDdhYzBJMDd3bjVtdEor?=
 =?utf-8?B?ZzlxVFhWYjZxeW5nWmJIaGFLOEcwRkxJN012ZEs2a2RxNlFtZXdYMUpNTzVU?=
 =?utf-8?B?RTJ4YTBtNlNSSWg0OTBNSVRBMTlhYzVRQzBnM29FTkRINHBkSllienZJejFR?=
 =?utf-8?B?REFNc3hraW9aZUkyV3IzSlgvRndUNU1vcUxPbkJCbVMwa3Fud0t3eXZZdkVZ?=
 =?utf-8?B?TTN4T2FOL1lLYmF1V2JZZ3pjRVBXaHE5MWpWRFhpRS9wOTZLNk1OWjJlc0JM?=
 =?utf-8?B?U0YrTnI3YnkzaURxclJVMEIyWTJCR3dBWWtVa3RMVG4vLzl0dWF6dlNjcEhU?=
 =?utf-8?B?aHU4UUZST3YxSUtrUHhTalNsblEvRVliZzduSjB5c082eXM2cGJSb1RkeEdu?=
 =?utf-8?B?VHVRTDF3Ly8vTlc1UTVnQVVJeC84aVdoZm9QRUhSbzFTbWIrZGhjWTgyQ0Nh?=
 =?utf-8?B?N1kvWnJZaDFHTkVpejZGbTJzQ3hrQmJveHpmK0oxRUx5eDJGRzNhblZ2TkJV?=
 =?utf-8?B?Q1NxUWttdjd1a2l3dHhpMENRSU8wVzZ1cjFWWDVsMk0yakY0dkZyWFExQkdX?=
 =?utf-8?B?ZlIwTkNCSmZWZ0x3cUNUaFp1UEZFKzByaklTOEQ2RmZIN2hsZE1DK2VvOTlQ?=
 =?utf-8?B?QUNaS1piOXBHWTAyNE1wT1NDTXhVWmFSQUtENitFajE5dFpSWlozeTlWcVFo?=
 =?utf-8?B?MytaSHlsMHZOWTJQeVJlUGpoL0RqR2dubUZoY0RzZ1VpRFQxd3FBWHBNNXdv?=
 =?utf-8?B?cHRueVBtVnozMEQ2cTBxZWd1bkRmaGxRSXFJVDE0b2tMYVlJMlYzYUhqQzFw?=
 =?utf-8?B?YUdkYzBQb05tUUdkTHNtd0ZrL3FIMXk2aWNaTmx5TkxFajFVTjVuRFZoSE9y?=
 =?utf-8?B?U0QrU1NLdmpZU05NamdoNy9ZS05mRFFESENOb2V4UGdJeEM1bndCZWUzaVl3?=
 =?utf-8?B?aDdsRkVmSytjVWlJUU9NOWlvcXl6cGo4WkZCWEdiTm9kVkp6aWlmQ2VZZHZO?=
 =?utf-8?B?eU5XREtoZlNzS1NNWTVIdXZ4Y1dNVldJeDM1ZUQ1ZzFtSHdUa3JFcmFUeEtJ?=
 =?utf-8?B?bXk5SUg3YklWd1hzSUppV2tLUmNLTUhMWmRDaXFxNTg2SVlLTUU0Qm0xTnZi?=
 =?utf-8?B?QTBvYmJXektiMXYxTlJxazRXa3grWCtMS0plTUZ6K1NiRnVDZDdEaDFOYXgy?=
 =?utf-8?B?dnE0Q09MZnlQdjdlWGQydlNWbUQyUW1RV25semlqNGZmWkN1Skcrbks5WDA4?=
 =?utf-8?B?T2VvbkQ3b3BhVENaYjROMWYxeStOUFBJZlhHTWhyNkNIUjNQZndFYlF5Znlt?=
 =?utf-8?B?bGVSRG5IZWFJaHRqQ0lRZ1Q2NXhYQnkwTlphbnZjTlZFMXRlMDY2cUdJSzNs?=
 =?utf-8?B?dXhmSEl4UnV6Zm95UExXdi9IOElzME9pcTZHZjNCakhJRXlNWU9UdlhzMnpm?=
 =?utf-8?B?MFNpSS9PMmNLT2VIK0ZZa0N3cjBFa2Z4TmNBSEtPZE1HS0REL2ZHNTFzNUk1?=
 =?utf-8?B?Wjhvalk5d0ZncnJ5Rm5VU0gxUnRFMGdSaHkzbDkzVUJwSUE1VzVvMXBzMFZj?=
 =?utf-8?B?SGlYcUI5dndyMDU4YVF3VENNNzVxR1ZlS3FUaHdLNTNhcGRDeHFmWGRMK3Vp?=
 =?utf-8?B?bzlvWjNsVWtFRjFzdXY4bG41ZFhhbkhCYVJWQ3BzVC96RXpuODdqZlo1czJJ?=
 =?utf-8?B?UnNab0J5dlhmam1TRjVzWi9paitRMWtVNlllWEZtK3hSajhndzQwcER4bVZS?=
 =?utf-8?B?UkFuQjNML1ZSNXpPaTArcER6SjlCaFZFREtwaHZmTThCdkpDcStzTlN1V2M4?=
 =?utf-8?B?Nkl3QjA4NWRiWkMzWEhDZEdQeXBGa1BXQXFiNkQzVUVpalFkUnR5U1JYWVpC?=
 =?utf-8?B?NHJWaFM4VDZDdEl3dDcxYTVoMGM2Mm5rTWFxTUx6MU5OSVg2TVh6WTBwL3dD?=
 =?utf-8?B?eXJWRzZOMVE2cmtXZzNaRHNPQkFCQnErdWJ1R3lpc1REVktINlk3cmVvZU0w?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 329cd82e-40e4-4bcc-35f7-08dbc50d6454
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB3908.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 19:09:11.3409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UHEYzJhKXGlDMgukPomhKfh0v87uN94C6L1IL6su46+85HXyxX5egdDxMhr6Im6vLXTXRsFqvo15WbYSJnICKHJxufO2L329YioCDep+P/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5529
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915: Add GuC TLB Invalidation
 pci tags
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Why is there no cover letter for this patch series?

It is at v5 but there is no history of what has changed from one version 
to the next. That makes it much harder to review.

John.


On 10/4/2023 11:36, Jonathan Cavitt wrote:
> Add pci (device info) tags for if GuC TLB Invalidation is enabled.
> Since GuC based TLB invalidation is only strictly necessary for MTL
> resently, only enable GuC based TLB invalidations for MTL.
>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h          | 1 +
>   drivers/gpu/drm/i915/i915_pci.c          | 1 +
>   drivers/gpu/drm/i915/intel_device_info.h | 3 ++-
>   3 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 2b7a6db4d0d44..1e25cc1e3dba1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -807,4 +807,5 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>   				       GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>   
> +#define HAS_GUC_TLB_INVALIDATION(i915)	(INTEL_INFO(i915)->has_guc_tlb_invalidation)
>   #endif
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index df7c261410f79..c3a5d5efb45d1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -837,6 +837,7 @@ static const struct intel_device_info mtl_info = {
>   	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
>   	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>   	.require_force_probe = 1,
> +	.has_guc_tlb_invalidation = 1,
>   	MTL_CACHELEVEL,
>   };
>   
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 39817490b13fd..ad54db0a22470 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -173,7 +173,8 @@ enum intel_ppgtt_type {
>   	func(has_coherent_ggtt); \
>   	func(tuning_thread_rr_after_dep); \
>   	func(unfenced_needs_alignment); \
> -	func(hws_needs_physical);
> +	func(hws_needs_physical); \
> +	func(has_guc_tlb_invalidation);
>   
>   struct intel_ip_version {
>   	u8 ver;

