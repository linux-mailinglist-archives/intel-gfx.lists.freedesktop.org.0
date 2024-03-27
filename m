Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C076B88ECC5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61CD110FEAA;
	Wed, 27 Mar 2024 17:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VKXmnE+j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13FBE10FE84
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561127; x=1743097127;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JoPGR8caNoJZ9leZuk56QRkRUdozDv5k+ofo8wVncOc=;
 b=VKXmnE+j2xZksCiZ+6riC/zhojjadgt1cSYiYJeAodslRhItvauz5efS
 DVu60xoeRm4iMMH3DfybHcfV373wgSHj7wIg7dAcYQHKc4q8+GKvyL1T3
 1Tpzi22mDd+2NCsKKoToh5repInmJscCae1Gk/ZGpGDtH05HRNhMoKxJ6
 UpNpC6xIOOXzUQ1s+arFGkncT1AfqZ9/6ETlRCJAf0z3MSOAiLV9kSNFz
 MvoKlOVQz0FGlo6238fEUCWj8XBet3jR2g1gneBCLAv6Q4zgifMUX1kjE
 uWcHbPmt1W7yInta3AC6gAZImxUdUB1LGSx0rqk7sDSj9RuYr2RjIfISM A==;
X-CSE-ConnectionGUID: FG0j376JTuydSj2sbQjGGg==
X-CSE-MsgGUID: LcOdkq2CSYOaz8chGt/hoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17232338"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="17232338"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:38:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="16769251"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Mar 2024 10:38:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 10:38:45 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Mar 2024 10:38:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Mar 2024 10:38:45 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Mar 2024 10:38:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRMfbpSL4rWnmDgFp/BXAf+2hplYgT72oJ58G/bp0h3AkVhqel+pBbQMeX8r7jqi8S+97u3NowAYjMVc1dBKZ2Yw9Cf6O0qTc79COP64W+6mpLfJMi7BEAQjkRZy0AUtzcB8E/IAQ/XESl0EkEzmvSvdJZb81eJRXRJAejznB0EcmQzk+mgLxHEQ57P9l1dUcx7n9OIn502RHGzeAF265FDZBrH850bAFAGGE8UaeOZ3VMHHr+zWciTnrNRlHcJH40ePfx8dwIHZ2WiRySvmxzDAWzCD2mW9keKXiRJ5m3d0+Oosfu/iGizZImDyjpfGeyL9DeinpjhmvRaPXiJ1pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=agbA7pN4lD/XtM+qEG8ZgzOvC5hqOoyEhWw/IzuzQMA=;
 b=ETDHBeV2X/yLcGm5cDk5V6Vohu/PHrvnclSogEZJeEhnRF02K6AaIUuNl138btBegglnriMWR3eA0sQXW2bRo3VBCxWGmR/JAjD2Y+ORx8iGWSr3KvZaz+9Vg34Ew/hES9Gksqofjwf2dzTQoW4nQLzpDwCVexoJkhSkLoI+vlbf/BO2bIok3xuStdg0EZ3D+SC7pR6wE0rKJ+TOO0Tcmeiwr3PTMUqJEohzbrxAODSSchN0Y0ZBzGEiapIy5WYjfHLiVX7NaoNKN2QSFau5fCHmdgV+qyDhpd8DPapVEhe1w91X+e0ssT8lEiuysO73HKX1Jc24Zh9nPDS7THiq4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW3PR11MB4604.namprd11.prod.outlook.com (2603:10b6:303:2f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 17:38:41 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7409.028; Wed, 27 Mar 2024
 17:38:41 +0000
Date: Wed, 27 Mar 2024 10:38:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915: Add new PCI IDs to DG2 platform in driver
Message-ID: <20240327173834.GB1332995@mdroper-desk1.amr.corp.intel.com>
References: <20240326103241.3832494-1-ravi.kumar.vodapalli@intel.com>
 <171150076931.1054669.14779813636782793236@8e613ede5ea5>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <171150076931.1054669.14779813636782793236@8e613ede5ea5>
X-ClientProxiedBy: SJ0PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:a03:333::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW3PR11MB4604:EE_
X-MS-Office365-Filtering-Correlation-Id: d0032cc6-261c-4851-c8bd-08dc4e84be50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cxLfKWKVm/bzGdGeeinyKmi+7k+dw2cSUY6gMTbtdOPmnGYPVQatwvMJ2Ox+rwIi6YU2FY2K7zISQiIYMhlHBirukqYq/lvaqpVFhgHcsqcy0qC3DQMSgextaOU4JAiN25Vbd7Idx8NtBt4YRqY1Ah2cgKGqmzFKWkmHZz+MvuLJL4uv2qUo34hLvK/+N6zxGbzjhmb6P0OXCmJ5qYk5/6a+AClr5dWKWSvKG6iCUcXxQtSFuRtA/8SLU+loaEbEO3gxR2+P+nsuaws1M9b2ApZHKKTqwLCaFzQbXt9S/NnDMNdrLF5qgR5nadHSjIwYDKb6ULMU6jt7r7U5uE7JrFLb9T1B3PhkzvIIk8GCRrj7Em6WMFD+1G3vjBHjQzEWRkgw7glPc7vDaK49+7lqjkxo2WTE/x3+PXUOfWo7ht6tGPyNAIbiZZNXwGOpKWWv6uGD9FKoVTrJSwub7777Iv4EShiVz4s9Cv6kdLU33VkGKCudmrLuLardjyuh12h31Xm3F3DA394VNRiyMG6lxR+S6+HMzNdfbL2SNJb3Dne2JAKSxMLb5vhleP8tn/kqa7AsslH2TNefQHUxdWLWNVHlkXKjRHW8x+Oa9uirwQ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l98Y4v7THE6vf8SUMJMhj2tgcScE3ht0hu2f/DMtinxyiWgY2FLuITvDT4TF?=
 =?us-ascii?Q?+6uNT9U19k+MrRFdMY+aWaavk9uSCEp/HmUV0q6IbmPg9y/T3uLco9oKtNcl?=
 =?us-ascii?Q?EPafMzbbKNSuyzZTDL03sEqMtYrJ4y5Pdsd+PlXxJ/IQGax/dLkqplniTS0L?=
 =?us-ascii?Q?9FJTIVQwN5aGXWemYuhAfRZdYpqGqEgmHNW6WuODGvNrnapYf2+c5GahM5nW?=
 =?us-ascii?Q?KkuA3MPzv3mrlpo2y+Wvdc1yyqzIrIW/7Las3YgjmES7UzI3mP1oQf1nwiKw?=
 =?us-ascii?Q?d3uTcZNHJtnUKry1IPiiWzDGptX2bXH9MygzNzz0ilHOSqamfyBF/gn93pco?=
 =?us-ascii?Q?dUMzsovJ53ZJ+KUU2kY+i+0AiTrPMx3/x7TPegNq+eqBi7AeZIdTqFagyTvp?=
 =?us-ascii?Q?ZTUR6ijQugp2ugR4tvEcvEMh9nuwnaiT/CQTF8h4JIzpuJxtLU/oYvWuaRC8?=
 =?us-ascii?Q?GSRLU5uOiRx8y0+9gK353IrqILnYuZ62+p6nW8acxptOews9AE+Pa50r42gT?=
 =?us-ascii?Q?c41yvoWrELhI8NjQAv0cMDH2xbxT/ZylbEdPgeBeCf4QW+7nSMNDLA8sO18T?=
 =?us-ascii?Q?olEfTpILwR8BuIQc3lSFjKmZpkfqZPx5+N6C8Xbks632Q5oC/4lEKzc/NfED?=
 =?us-ascii?Q?UvD6yESspKksb5y5d0TWNtTV7ESLz+5YeNbBVqSXzdIJxyPZ37PvGENgWnCR?=
 =?us-ascii?Q?uAdGC/i8fLO7/xTm7ZH/K9QSLBLTrh42Mv/siqjUaDlgjoWcJsZdGESPV1Sy?=
 =?us-ascii?Q?ULaHki70c6ahGEuA1Hy9pcV5eGW3SKTGp9hv11NYhFWIIiP1oq2wcXEh9d7p?=
 =?us-ascii?Q?NoNWPcQyL6ZF2DrC8c+O9nspCVm84pA2XRoLnOgOIkMMFQZPY1ZB+Lg2CyIB?=
 =?us-ascii?Q?tN98WlG7w91Q9BoWTC6Ebad3Gmc5MmxZZykvee1WdkPjBsMj9Gu4WlhF+cKg?=
 =?us-ascii?Q?aMg3Fr+nK1TjMPL7EW7PtM2ZYjdQvvpT41nUTrhq6XmeUv2etVL9jGqSJFOF?=
 =?us-ascii?Q?A5NZpErW47zNdGKIY0GsBxmmX7h3qecFPARHsWtSfsIoZ6K0211C59smEL70?=
 =?us-ascii?Q?Nw0YttxCowvWyEJ7ZFMp5L6zyYSY5xDVmTScE5mrH28BsBzW9piXwuhGdi2k?=
 =?us-ascii?Q?80lHwkALSGtV2Qm/7N351eFsMXw6Ti37wxOekp2Fd8yng8Hy+VXpT9YaFWGi?=
 =?us-ascii?Q?XFiM0w0mDVxEGOsIWxd1+QD/Px6mYL9Ndcj+/Iz+30Sug1Igl8Bi14aSgL5b?=
 =?us-ascii?Q?u0/79Vgdk4theVsFh5INvcbBvqz5MJHN1Cjz07tkcbyX13vm/kQoO8FaFI7N?=
 =?us-ascii?Q?BVMDpXxXDIT35cvl66acsReuoEExAfMHIXebFyZ6p1VOM/WZpvzQjuww9gB+?=
 =?us-ascii?Q?JYj1lSQno+6d8ZWGHuB3KZk5i3DdIeH05ycssd2gC7umkEUlOM53Vd0UgUYa?=
 =?us-ascii?Q?yhlihrPhwIdIrPs7iSXfTZrj9mtLG0TqsC/a/LGfPJ3B4027L1/SqxgRrUfv?=
 =?us-ascii?Q?T3W1lYVt+CGuawYYOB6PjlL2w68i5yvhEPJC0f8GRe60yWXbms+WP7k9WVXx?=
 =?us-ascii?Q?0+AjafUrm766uq5d37CZoLQeyy3+cFEoAkGwXyetJgtPLXdkDwjrGM5PjRZr?=
 =?us-ascii?Q?vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0032cc6-261c-4851-c8bd-08dc4e84be50
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 17:38:41.7496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yGxkUwUvWcFugbXIYSy5W8pIiqylgNDNaFzreCYr9wZ89EFHb/tRjzGPVwOm0IzZVPmYGu9IzKaztyyT7gtnJ/FCaYfcffP6eQ3EaLqwo60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4604
X-OriginatorOrg: intel.com
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

On Wed, Mar 27, 2024 at 12:52:49AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add new PCI IDs to DG2 platform in driver
> URL   : https://patchwork.freedesktop.org/series/131625/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14489 -> Patchwork_131625v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_131625v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_131625v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/index.html
> 
> Participating hosts (38 -> 36)
> ------------------------------
> 
>   Additional (2): bat-dg1-7 fi-kbl-8809g 
>   Missing    (4): bat-mtlp-8 fi-glk-j4005 fi-bsw-nick fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_131625v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pm_rpm@basic-rte:
>     - bat-jsl-3:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-jsl-3/igt@kms_pm_rpm@basic-rte.html

Jasper Lake failing to enter runtime suspend state isn't related to the
DG2 PCI IDs being added here.

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_selftest@live@active:
>     - {bat-arls-4}:       [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-4/igt@i915_selftest@live@active.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-arls-4/igt@i915_selftest@live@active.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_131625v1 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - bat-arls-3:         [PASS][5] -> [FAIL][6] ([i915#10234])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-arls-3/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-arls-3/boot.html
>     - bat-jsl-1:          [PASS][7] -> [FAIL][8] ([i915#8293])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-jsl-1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-jsl-1/boot.html
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][9] ([i915#8293])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/fi-kbl-8809g/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_mmap@basic:
>     - bat-dg1-7:          NOTRUN -> [SKIP][10] ([i915#4083])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@gem_mmap@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-dg1-7:          NOTRUN -> [SKIP][11] ([i915#4077]) +2 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-dg1-7:          NOTRUN -> [SKIP][12] ([i915#4079]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg1-7:          NOTRUN -> [SKIP][13] ([i915#6621])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - bat-dg1-7:          NOTRUN -> [SKIP][14] ([i915#4212]) +7 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#4215])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg1-7:          NOTRUN -> [SKIP][16] ([i915#4103] / [i915#4213]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-dg1-7:          NOTRUN -> [SKIP][17] ([i915#3555] / [i915#3840])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg1-7:          NOTRUN -> [SKIP][18]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - bat-dg1-7:          NOTRUN -> [SKIP][19] ([i915#433])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-dg1-7:          NOTRUN -> [SKIP][20] ([i915#5354])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-dg1-7:          NOTRUN -> [SKIP][21] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg1-7:          NOTRUN -> [SKIP][22] ([i915#3555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg1-7:          NOTRUN -> [SKIP][23] ([i915#3708]) +3 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg1-7:          NOTRUN -> [SKIP][24] ([i915#3708] / [i915#4077]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@ring_submission:
>     - bat-dg2-14:         [ABORT][25] ([i915#10366]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@i915_selftest@live@ring_submission.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/bat-dg2-14/igt@i915_selftest@live@ring_submission.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
>   [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14489 -> Patchwork_131625v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14489: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7785: 7785
>   Patchwork_131625v1: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> a50860ce8e96 drm/i915: Add new PCI IDs to DG2 platform in driver
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131625v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
