Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0FC7EF8F2
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 21:59:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A5EB10E787;
	Fri, 17 Nov 2023 20:59:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA3610E0E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 20:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700254771; x=1731790771;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=OCez5Q6++cywYw7Q6lRUFMGBgTV/0l3hUkfZXGhkgXI=;
 b=V1nmU1TXtApRnqqVMrXpC6EeV1/R6wU7fKSgBVGqV3sSl8bcMvi8LC6V
 0ljzB+8EKihlmekbg4QcsUBLudynYKXaAPwVndWZJhZugP60R1dD+Tzqn
 87jayV/htHzOfwoTUnxxBgSkF4YKOBdLmG4RJ/bo2qALfEjC8SEOf5Uxw
 U3pDBgvlDSFdIYgp0mHYitayOKbmW1V4DCWrDHmxHHJJCFyIeKDqJ1rGs
 TQp8NquK1aNFILKQoYxJgb+2RMeAWbBmYEnSmvN73b3EE0JKDcdjzTqbF
 HI6tT1hoHYC4sjnF/K+UbnU6V4B8Xev8j8xNWUuHFoMCVpZj2aZ1wALDX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="381756371"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="381756371"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 12:59:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="765715843"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="765715843"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 12:59:30 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 12:59:29 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 12:59:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 12:59:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ky+J3g61Np0l5FDGJ3BQmDc1E0Hkv2PnavpwzYL5qTMsGwfMCe39VL7Pq9tPkIxuwkXvuNmPYWSP8adqTVoQokduAL4cnTKvn01JofYl47jer1yiU/Es9/H0FYJtjY/edcUwkmT28g9gqcU4mgv7Q/whp6Sf2l0aaiPuNnbcI8K1iKdEiJfYUo5n9mTgGGGSQZbg2QMNJUKmZsKZpyvUfn6tJfX1hyL/eZ8ypU0CgwNZkbMbMLbg5dHg/U89pw4MsdaoYR6pNIL5+muKKVT6p6xkMo4JgVjI22cbo6oXdBU2qYZQQlbqEWpu5CxWdSIYsdFy+Q1Mji2OCQWNiTefQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A12U+fm5NddyOUCp9U07M8NyG06fzpwHrw/HIDJ5Hvg=;
 b=C776kGVkhXdiDx3IUbLSO0lXYEerVoNN+qy7F1Q/lp6r2bws+4RXS8cmlagunx27259ogesnCEA9LNzvdz/colZGZU0N81C39bzHizIMXQWP/g+TgteLBEybJWOWOYMn5KMHGjsapAIq51UWo9wAzjbZgQqR/+zobNYmtSW8SJUxjxm4xgZfO5YzO0VdqfhJXBsMB1j6MgHGhxWoSg84lnC5k9anWEXwfJgcBRWqHdo+L6t6b4Me/pu3VnSzyEGlloT02jaLZMnfLeXFo7+YVYM9ufwGgrEfnpjKIDp/jWRpvdhn4y7OnvakZbWL+ibiywPd0YISx4uramZivwnM6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BN9PR11MB5557.namprd11.prod.outlook.com (2603:10b6:408:102::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.23; Fri, 17 Nov
 2023 20:58:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7002.022; Fri, 17 Nov 2023
 20:58:58 +0000
Date: Fri, 17 Nov 2023 12:58:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231117205856.GZ1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231115182117.2551522-2-matthew.d.roper@intel.com>
 <170020014353.7873.11831851387999558968@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170020014353.7873.11831851387999558968@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR02CA0006.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BN9PR11MB5557:EE_
X-MS-Office365-Filtering-Correlation-Id: f6718029-a4c0-4aeb-4964-08dbe7b004f9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qEkaROA8GK8avH7ndu7oPdmNciZN/rcoHeBNJ3biUVI08sNiLsbDt0AATmsj9IhbPZgfB6Vk+Pftn8md1UBJN+t+h8A1Mnilxfz9a2CjkqUbUOdkw9L8WruBx71ZWJACsw5RiTn3fPef6/dvU/gtYhlZBljpXEqfAqUv0l0e7Uv6kftxDu9ZGSYQd81Q8a0ydJ8pTjbBWPcs3i4itjKcEzOOdh8CWObY8nvL9Qfb7BYQ1F0Vbe4BcNLshrgvXc7fJRksBZFbMLIfKYtnYiXd5Yt/pCVuHzXa0LFXjJmp4y3omySZs7YZZzf7aQygPdEPHCDLk9b9T08tDvbtyJ3knUsn//+c403JAYH9wMQdaZe6Uw/4YJdR72C+pcc77oDatWfaoAFUfBhOgxrTAoYDR0GZRK87ywlBee2vavzwqwFuCp42+ssawu1x5y3FBCoNprb4eGIW9IGOY/sD3ZphlmtA4TqqSH9yD+VRUVeRh28IcvKRfsgaaTo1ktAvMd4yc97JQ2G6PIwKYp4/T2KYh2IL5AF7leGUCM6MnE875lyaFt0lKxULMbUp49lkiPdTDjXUri8No+gNHE1fdYnyyu9ojpjwmAKCVA5K5aClvLHmuXAlqKeaMyWch/S1rEjxTrWw8b0vB0brKm8yvtXNFH5WVU7MNU8tNpLstbL63xw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(376002)(396003)(230173577357003)(230273577357003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(966005)(6486002)(478600001)(6512007)(66476007)(6916009)(66556008)(41300700001)(86362001)(82960400001)(66946007)(316002)(26005)(33656002)(1076003)(5660300002)(8936002)(38100700002)(30864003)(2906002)(83380400001)(6506007)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M+B+4+gD3xF3/7w5TQGLMReDHChj53H0Eb7U+opETdY8CPaMsYK0sTbnycV/?=
 =?us-ascii?Q?ViYcfEUJbQV83anTYyL/9q3i6CmWf1yxKKlNw7OzsBMS6AJHgYtmP5sAg+Sy?=
 =?us-ascii?Q?fFdC6QL52SDAm9HnnHkocAR88+kpiDUMh2sUAnt2h+PiD7L1/54+Mk/uFbbo?=
 =?us-ascii?Q?q/t9i7z8Gvc9n5ZU4IZ2jJDRNoxoFItHKbV3PjqDIwPQXFLWvsw8gdKbB6TT?=
 =?us-ascii?Q?8FrOMQUfcq93XfqYz3xBorhW7LTNmsWRl2kO7YKxnjN2NVKDMyRK9dB55i4a?=
 =?us-ascii?Q?uDwzZhpF4xDhzX3kTJlF4wHryS58AzJ3cEdsB7J4B4E2ykcH59uhrYnX20x3?=
 =?us-ascii?Q?4v4AfEhKiu4Lrt6g762yMDyqKOMEBtc5iisAtZF03TfC6Di46gSswTy1kFhF?=
 =?us-ascii?Q?/Y/9uqEYAOSgdb2HX25Z3TbBartWtU8YaTTSCMmA5C4u4ZBpKOSqO4C3NHuY?=
 =?us-ascii?Q?bvN3KX3gytfdH4R38nGex9/sC+ZKvkviPCaTpMB12MTR3vLLnX6qhpNHazGF?=
 =?us-ascii?Q?po4qplmIa5M3D7ay/oEIy3kQP5c+uYa4c6/1K6mCCdFWaCwobmk2EgJa86Sz?=
 =?us-ascii?Q?tooOncx7G5k2R94elyx4tumX0NaQzN2IvcXJ+8Ha9AFUhVuwFmk8w5Q1nTna?=
 =?us-ascii?Q?PbI5eOGRvA5Dt6YTNvxjhNW/ID8OiSXYd0nah2AmwXpgurJHtWog/3PrIvjB?=
 =?us-ascii?Q?yy215Y2jOpmrt3We/Cgg+uD8vSe77nKMPZ57O+qCrdjJgPlH0aBdr/6Fdqkc?=
 =?us-ascii?Q?Xmlx0yqpsfK4Mg5GcDVcwc+Hu6VOuOA0bRUVR4WTLBOf3jfew6V/56XE53jS?=
 =?us-ascii?Q?MLff8oKfJnfsCR0yrEYusvXbq3rmnRYQuE2gp5mP7cR8N01a/k+CZ2tF5NiW?=
 =?us-ascii?Q?u+ugsts7gi83rwnLiNsldtZGgokdEJP7yTHEIpObnZ3pPcxwQzuatMrSYhd/?=
 =?us-ascii?Q?KFuPtA7JaL74BUgTXbsIm9bSq33/j+hWlygc1yF9VFEJrwUUB0Fy3ped9gdh?=
 =?us-ascii?Q?rvGbELOoPJhQSebYv4GxkvT5S1RPR2QraQHUTHOSi5v9mcOq8RCidHl+D53w?=
 =?us-ascii?Q?6EBw92pOfYF7nhxYI4Ga65QguvvCSsLVuLVNYTaB+tKIMXXJZvBVh++gkPjo?=
 =?us-ascii?Q?57JdKCBwuw+wDB2kLwDxaCYsYtU+7L+wt5BGyxsyAowQqyYrEz/tD63XnNX2?=
 =?us-ascii?Q?MVkAkNAjTgWbM4gWmkKFm5kbe9qOdgXXlbJ+/l1zWwEjTkbx6vVxsp/SD62Y?=
 =?us-ascii?Q?0g+mHCFRMtslq6gxH39CqBJp1b/H64mHXyb92IiuZT+1XMDad0HaPiqVh2fC?=
 =?us-ascii?Q?YZnHxieWCHlGMy23+na1ObNVeYtkvnnx8FD0ijUsL0MyqCg/I6st9ipY/VnY?=
 =?us-ascii?Q?X+48wG+HMUTOa5ztW5DATuWF+KPGEbvVc+rZ3tXl3K5TtJLN1u1OiAxZewtC?=
 =?us-ascii?Q?NfIoyRK90QqDhVdj1sI7Hsnz1reGWuCXuSw0cx3B2Kx6wt55iGvnq26UBiEw?=
 =?us-ascii?Q?+pEisA12qdY36ZrqYnvRV39loZaqqQJcHOJ+BwiNLPxc5DN306UZMkL2FbHV?=
 =?us-ascii?Q?W7ovgiQSAXAYkAyOMIQhCZ7EkVVNK9Vjdu3Ug8kbQusepyHvWhjPA1whjB7f?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f6718029-a4c0-4aeb-4964-08dbe7b004f9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2023 20:58:58.9340 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ucOaOaiDABO28lRhwWGoYrfw1u83zYQnOo0KQDQHAykThtIx7uSZAvhQ07Nd3NNoSmF6qSUDjvSDsTZ1Fsy3SI/HAS1oZagK+ZxPC6s2/Bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Wa=5F18028616096_now_applies_to_all_DG2?=
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

On Fri, Nov 17, 2023 at 05:49:03AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Wa_18028616096 now applies to all DG2
> URL   : https://patchwork.freedesktop.org/series/126488/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13881_full -> Patchwork_126488v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_126488v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126488v1_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/index.html
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   Additional (1): shard-tglu0 
>   Missing    (1): shard-mtlp0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126488v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_create@create-clear@smem0:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_create@create-clear@smem0.html

OOM condition on RKL.  Not related to a DG2-specific workaround.

> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][2] +4 other tests skip
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html

New tests that skip because panel does not support PSR2.  Not related to
this GT workaround.  Same for the two below.


No failures caused by this patch.  Applied to drm-intel-gt-next.  Thanks
Gustavo for the review.


Matt

> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-dg1:          NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][4] +2 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic}:
>     - shard-glk:          [PASS][5] -> [TIMEOUT][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-glk9/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_optimistic.html
> 
>   * {igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic}:
>     - shard-mtlp:         [PASS][7] -> [TIMEOUT][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-6/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_pessimistic.html
> 
>   * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0}:
>     - shard-dg1:          [PASS][9] -> [FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * {igt@kms_dsc@dsc-fractional-bpp-with-bpc}:
>     - shard-mtlp:         NOTRUN -> [SKIP][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * {igt@kms_pm_dc@dc6-psr}:
>     - shard-dg2:          NOTRUN -> [SKIP][12]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * {igt@kms_psr@pr_dpms}:
>     - shard-rkl:          NOTRUN -> [SKIP][13] +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_psr@pr_dpms.html
> 
>   * {igt@kms_psr@psr_sprite_render}:
>     - shard-dg1:          NOTRUN -> [SKIP][14]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_psr@psr_sprite_render.html
> 
>   * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
>     - shard-tglu:         [PASS][15] -> [TIMEOUT][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-9/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-tglu-4/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html
> 
>   * {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
>     - shard-apl:          NOTRUN -> [TIMEOUT][17]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
>     - shard-dg2:          NOTRUN -> [TIMEOUT][18]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html
> 
>   * {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible}:
>     - shard-rkl:          [PASS][19] -> [TIMEOUT][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-6/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-1/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_no_damage_not_visible.html
> 
>   * {igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create}:
>     - shard-snb:          [PASS][21] -> [TIMEOUT][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb5/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126488v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#8411]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@api_intel_bb@blit-reloc-keep-cache.html
>     - shard-rkl:          [PASS][24] -> [SKIP][25] ([i915#8411])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#7701]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#8414]) +4 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#8414]) +5 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#8414]) +39 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_read@empty-block:
>     - shard-rkl:          [PASS][30] -> [SKIP][31] ([i915#1845] / [i915#4098]) +10 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@drm_read@empty-block.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@drm_read@empty-block.html
> 
>   * igt@fbdev@read:
>     - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#2582])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@fbdev@read.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3936])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#9323])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#9323])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#6335])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#8562])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][38] -> [FAIL][39] ([i915#6268])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs1:
>     - shard-dg2:          [PASS][40] -> [FAIL][41] ([fdo#103375])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@gem_ctx_isolation@preservation-s3@vcs1.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#8555]) +2 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - shard-rkl:          [PASS][43] -> [SKIP][44] ([i915#6252])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed:
>     - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#1099]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#280])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [PASS][47] -> [ABORT][48] ([i915#7975] / [i915#8213])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-11/igt@gem_eio@hibernate.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@gem_eio@hibernate.html
>     - shard-rkl:          NOTRUN -> [ABORT][49] ([i915#7975] / [i915#8213])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@wait-immediate:
>     - shard-mtlp:         [PASS][50] -> [ABORT][51] ([i915#9414]) +1 other test abort
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-7/igt@gem_eio@wait-immediate.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-1/igt@gem_eio@wait-immediate.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4771])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4771])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#4812])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#4812]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - shard-rkl:          [PASS][56] -> [SKIP][57] ([Intel XE#874])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_exec_balancer@fairslice.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-mtlp:         NOTRUN -> [FAIL][58] ([i915#9606])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#3539])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][62] -> [FAIL][63] ([i915#2842]) +1 other test fail
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#3539]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3539] / [i915#4852]) +10 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([fdo#112283])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc:
>     - shard-rkl:          [PASS][67] -> [SKIP][68] ([i915#3281]) +4 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_reloc@basic-cpu-wc.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-wc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3281])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3281]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281]) +20 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3281]) +7 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_exec_reloc@basic-write-wc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4537] / [i915#4812]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4860]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4860]) +4 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#4613] / [i915#7582])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4613]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4613]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl2/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#8289])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_media_vme:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#284])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4077]) +1 other test skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4077]) +21 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#4077]) +6 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#1850])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4083]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#4083]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#4083]) +10 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#3282]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3282]) +3 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#4270]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4270]) +5 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3282]) +4 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#8428]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#768])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#8411])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          [PASS][97] -> [SKIP][98] ([i915#3282]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4885]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_spin_batch@spin-all-new:
>     - shard-dg2:          NOTRUN -> [FAIL][100] ([i915#5889])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_spin_batch@spin-all-new.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4079]) +2 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3297]) +6 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3297] / [i915#4880]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@mmap-offset-banned@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#3297])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@gem_userptr_blits@mmap-offset-banned@gtt.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3297] / [i915#4958])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([fdo#109289]) +5 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gen7_exec_parse@basic-offset.html
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([fdo#109289])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([fdo#109289]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#2856]) +5 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-rkl:          [PASS][110] -> [SKIP][111] ([i915#2527])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gen9_exec_parse@bb-large.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#2527])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#2856]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_hangman@engine-engine-error@bcs0:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#9588])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][115] ([i915#9559])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#7091])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#6590]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@i915_pm_freq_mult@media-freq@gt1.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([fdo#109293] / [fdo#109506])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#6621])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-mtlp:         NOTRUN -> [FAIL][120] ([i915#8346])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#8925])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([fdo#109303])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][123] ([i915#9311])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl7/igt@i915_selftest@mock@memory_region.html
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][124] ([i915#9311])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-tglu:         [PASS][125] -> [INCOMPLETE][126] ([i915#8797])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-9/igt@i915_suspend@forcewake.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-tglu-4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#4212])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#4212])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4212] / [i915#5608])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#1769])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl7/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#1769] / [i915#3555])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#4538] / [i915#5286])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([fdo#111614]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-7/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([fdo#111614]) +11 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#5190]) +25 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#4538])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4538] / [i915#5190]) +10 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-snb:          NOTRUN -> [SKIP][138] ([fdo#109271]) +25 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([fdo#111615]) +4 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([fdo#110723]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#2705])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4087]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_cdclk@plane-scaling@pipe-c-edp-1.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#7828]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([fdo#111827]) +3 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([fdo#111827]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#7828]) +14 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-multiple:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#7828]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_chamelium_frames@dp-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#7828]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_color@ctm-0-50@pipe-b:
>     - shard-rkl:          [PASS][149] -> [SKIP][150] ([i915#4098]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_color@ctm-0-50@pipe-b.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_color@ctm-0-50@pipe-b.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3299]) +3 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@srm@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][152] ([i915#7173])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl2/igt@kms_content_protection@srm@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@srm@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][153] ([i915#7173])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_content_protection@srm@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#7118]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#3555] / [i915#8814])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3359])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3359]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#3555]) +5 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3359])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([fdo#111767] / [fdo#111825])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][161] ([i915#3546]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#1845] / [i915#4098]) +26 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([fdo#111825]) +9 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-apl:          NOTRUN -> [SKIP][164] ([fdo#109271] / [fdo#111767])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl4/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#109274] / [i915#5354]) +8 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4103] / [i915#4213]) +2 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#4213])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9226] / [i915#9261]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@drrs-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9227])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-2.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#3555] / [i915#8812])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#8812])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#3840])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#3840])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#3469])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([fdo#109274]) +10 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#8381])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#3637]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111825]) +3 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_flip@2x-plain-flip-ts-check-interruptible.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#3637] / [i915#4098]) +4 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-dp4:
>     - shard-dg2:          NOTRUN -> [FAIL][181] ([fdo#103375])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_flip@flip-vs-suspend@b-dp4.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][182] ([i915#8810])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#2672]) +5 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#3555]) +6 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#2672]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3555] / [i915#8810])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#2672]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([fdo#109285])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#5274])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-rkl:          [PASS][190] -> [SKIP][191] ([i915#1849] / [i915#4098]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt:
>     - shard-dg2:          [PASS][192] -> [FAIL][193] ([i915#6880])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#5354]) +53 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#8708]) +30 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#8708])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#5460])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#3458]) +34 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#3458]) +5 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#8708]) +2 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#3023]) +4 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([fdo#111825] / [i915#1825]) +8 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#1825]) +18 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][204] ([fdo#109271]) +202 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#1849] / [i915#4098]) +16 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#8228]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#8228]) +4 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3555] / [i915#4098])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#9457]) +2 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_invalid_mode@clock-too-high@pipe-c-edp-1.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#4816])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#1839])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#6301])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane@plane-panning-bottom-right:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#4098] / [i915#8825])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#8806])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#6953] / [i915#8152])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][216] ([i915#8292])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#3555] / [i915#4098] / [i915#8152])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#5176] / [i915#9423]) +1 other test skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][219] ([i915#5235]) +19 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#5235]) +11 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][221] ([i915#3555] / [i915#5235]) +3 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#5235]) +3 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#5235]) +23 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#8152])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#6524])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#6524] / [i915#6805])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_prime@d3hot.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [PASS][228] -> [SKIP][229] ([i915#1849]) +1 other test skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_properties@crtc-properties-legacy.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][230] ([fdo#111068])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-mtlp:         NOTRUN -> [SKIP][231] ([i915#4348])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([fdo#111068])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#9681]) +6 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#4235]) +2 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#4235])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#5289])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#4235] / [i915#5190]) +1 other test skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][238] ([i915#5465]) +1 other test fail
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb6/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#3555] / [i915#4098])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][240] -> [FAIL][241] ([IGT#2])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-11/igt@kms_sysfs_edid_timing.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([fdo#109309])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [PASS][243] -> [FAIL][244] ([i915#9196])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_vblank@wait-forked-busy-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#4098]) +10 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_vblank@wait-forked-busy-hang.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#3555]) +1 other test skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#2437]) +2 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][248] ([fdo#109289]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#7387])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#2434])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@perf@mi-rpc.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [PASS][251] -> [FAIL][252] ([i915#7484])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][253] ([i915#4349])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#8850])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][255] ([i915#6806])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][256] ([i915#5793])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#8516])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#3291] / [i915#3708]) +1 other test skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@prime_vgem@basic-fence-read.html
>     - shard-rkl:          [PASS][259] -> [SKIP][260] ([fdo#109295] / [i915#3291] / [i915#3708])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@prime_vgem@basic-fence-read.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#3708])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-2/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#3708] / [i915#4077])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][263] ([fdo#109295] / [i915#3708])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#3708]) +1 other test skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@prime_vgem@fence-write-hang.html
>     - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#3708])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@runner@aborted:
>     - shard-snb:          NOTRUN -> [FAIL][266] ([i915#7812])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb4/igt@runner@aborted.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([fdo#109315]) +3 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][268] ([i915#2575]) +3 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@valid-submission:
>     - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#2575]) +6 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@v3d/v3d_submit_cl@valid-submission.html
> 
>   * igt@v3d/v3d_submit_csd@single-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#2575]) +24 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-6/igt@v3d/v3d_submit_csd@single-out-sync.html
> 
>   * igt@vc4/vc4_label_bo@set-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][271] ([i915#7711]) +2 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@vc4/vc4_label_bo@set-bad-handle.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#7711]) +1 other test skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-15/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_tiling@set-get:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#7711]) +13 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@vc4/vc4_tiling@set-get.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#7711]) +5 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * {igt@drm_mm@drm_mm@drm_test_mm_align32}:
>     - shard-tglu:         [TIMEOUT][275] -> [PASS][276]
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-2/igt@drm_mm@drm_mm@drm_test_mm_align32.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-tglu-10/igt@drm_mm@drm_mm@drm_test_mm_align32.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][277] ([i915#3281]) -> [PASS][278] +5 other tests pass
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][279] ([i915#7297]) -> [PASS][280]
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-11/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][281] ([i915#5784]) -> [PASS][282]
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-19/igt@gem_eio@reset-stress.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-17/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-rkl:          [SKIP][283] ([i915#9591]) -> [PASS][284]
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][285] ([i915#2842]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [FAIL][287] ([i915#2842]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          [FAIL][289] ([i915#2842]) -> [PASS][290] +2 other tests pass
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-rkl:          [SKIP][291] ([i915#3282]) -> [PASS][292] +2 other tests pass
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          [SKIP][293] ([i915#2527]) -> [PASS][294]
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gen9_exec_parse@bb-start-param.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          [INCOMPLETE][295] -> [PASS][296]
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-snb6/igt@i915_module_load@reload-no-display.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-snb6/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][297] ([i915#8489] / [i915#8668]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
>     - shard-dg1:          [FAIL][299] -> [PASS][300]
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][301] ([i915#4387]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [FAIL][303] ([i915#3743]) -> [PASS][304] +1 other test pass
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_color@ctm-signed@pipe-a:
>     - shard-rkl:          [SKIP][305] ([i915#4098]) -> [PASS][306] +4 other tests pass
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_color@ctm-signed@pipe-a.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_color@ctm-signed@pipe-a.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
>     - shard-rkl:          [SKIP][307] ([i915#1845] / [i915#4098]) -> [PASS][308] +12 other tests pass
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][309] ([i915#2346]) -> [PASS][310] +1 other test pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_fbcon_fbt@fbc:
>     - shard-rkl:          [SKIP][311] ([i915#1849] / [i915#4098]) -> [PASS][312] +6 other tests pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_fbcon_fbt@fbc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg2:          [FAIL][313] ([i915#6880]) -> [PASS][314] +2 other tests pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          [ABORT][315] ([i915#180]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * {igt@kms_pm_rpm@drm-resources-equal}:
>     - shard-rkl:          [SKIP][317] ([fdo#109308]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_pm_rpm@drm-resources-equal.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_pm_rpm@drm-resources-equal.html
> 
>   * {igt@kms_pm_rpm@modeset-lpsp}:
>     - shard-rkl:          [SKIP][319] ([i915#9519]) -> [PASS][320] +1 other test pass
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * {igt@kms_pm_rpm@modeset-lpsp-stress}:
>     - shard-dg1:          [SKIP][321] ([i915#9519]) -> [PASS][322] +1 other test pass
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [SKIP][323] ([i915#1849]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_properties@plane-properties-atomic.html
> 
>   * {igt@kms_selftest@drm_format@drm_test_format_block_width_tiled}:
>     - shard-mtlp:         [TIMEOUT][325] -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-2/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-5/igt@kms_selftest@drm_format@drm_test_format_block_width_tiled.html
> 
>   * {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
>     - shard-rkl:          [TIMEOUT][327] -> [PASS][328] +1 other test pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
>     - shard-dg1:          [TIMEOUT][329] -> [PASS][330] +1 other test pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg1-16/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg1-19/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][331] ([i915#9196]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-rkl:          [SKIP][333] ([fdo#109295] / [i915#3708] / [i915#4098]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@prime_vgem@basic-fence-flip.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][335] ([i915#7957]) -> [SKIP][336] ([i915#3555])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][337] ([i915#4098] / [i915#9323]) -> [SKIP][338] ([i915#7957])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_create@hog-create@smem0:
>     - shard-mtlp:         [FAIL][339] ([i915#8758]) -> [ABORT][340] ([i915#9414])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-mtlp-5/igt@gem_create@hog-create@smem0.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-mtlp-4/igt@gem_create@hog-create@smem0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [SKIP][341] ([i915#9591]) -> [FAIL][342] ([i915#2842])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          [SKIP][343] ([i915#9531]) -> [SKIP][344] ([i915#1845] / [i915#4098])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [SKIP][346] ([i915#1769] / [i915#3555])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          [SKIP][347] ([i915#1845] / [i915#4098]) -> [SKIP][348] ([i915#5286]) +2 other tests skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          [SKIP][349] ([i915#5286]) -> [SKIP][350] ([i915#1845] / [i915#4098]) +1 other test skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-rkl:          [SKIP][351] ([i915#1845] / [i915#4098]) -> [SKIP][352] ([fdo#111614] / [i915#3638]) +2 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][353] ([fdo#111614] / [i915#3638]) -> [SKIP][354] ([i915#1845] / [i915#4098])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][355] ([i915#1845] / [i915#4098]) -> [INCOMPLETE][356] ([i915#9538])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][357] ([fdo#110723]) -> [SKIP][358] ([i915#1845] / [i915#4098])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][359] ([i915#1845] / [i915#4098]) -> [SKIP][360] ([fdo#110723]) +3 other tests skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-rkl:          [SKIP][361] ([fdo#111615]) -> [SKIP][362] ([i915#1845] / [i915#4098])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          [SKIP][363] ([i915#1845] / [i915#4098]) -> [SKIP][364] ([i915#3116])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          [SKIP][365] ([i915#3555]) -> [SKIP][366] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-32x10.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][367] ([i915#1845] / [i915#4098]) -> [SKIP][368] ([i915#3359])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-rkl:          [SKIP][369] ([i915#3359]) -> [SKIP][370] ([i915#1845] / [i915#4098])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          [SKIP][371] ([i915#8588]) -> [SKIP][372] ([i915#4098])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_display_modes@mst-extended-mode-negative.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          [SKIP][373] ([i915#4098]) -> [SKIP][374] ([i915#3555] / [i915#3840])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][375] ([fdo#110189] / [i915#3955]) -> [SKIP][376] ([i915#3955])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-rkl:          [SKIP][377] ([i915#1849] / [i915#4098]) -> [SKIP][378] ([fdo#111825] / [i915#1825]) +17 other tests skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][379] ([fdo#111825] / [i915#1825]) -> [SKIP][380] ([i915#1849] / [i915#4098]) +19 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][381] ([i915#1849] / [i915#4098]) -> [SKIP][382] ([i915#5439])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][383] ([i915#1849] / [i915#4098]) -> [SKIP][384] ([i915#3023]) +12 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][385] ([i915#3023]) -> [SKIP][386] ([i915#1849] / [i915#4098]) +10 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          [SKIP][387] ([i915#3555] / [i915#8228]) -> [SKIP][388] ([i915#1845] / [i915#4098]) +1 other test skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_hdr@static-toggle.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][389] ([i915#1845] / [i915#4098]) -> [SKIP][390] ([i915#6301])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([i915#3555]) +2 other tests skip
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-5/igt@kms_plane_lowres@tiling-yf.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-7/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][393] ([i915#5289]) -> [SKIP][394] ([i915#1845] / [i915#4098])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [INCOMPLETE][395] ([i915#5493]) -> [CRASH][396] ([i915#9351])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13881/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [Intel XE#874]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/874
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#5889]: https://gitlab.freedesktop.org/drm/intel/issues/5889
>   [i915#5978]: https://gitlab.freedesktop.org/drm/intel/issues/5978
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8346]: https://gitlab.freedesktop.org/drm/intel/issues/8346
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126488v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
