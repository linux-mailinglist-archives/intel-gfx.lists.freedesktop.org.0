Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3A963DBB5
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Nov 2022 18:14:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFF910E108;
	Wed, 30 Nov 2022 17:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6315610E108
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Nov 2022 17:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669828477; x=1701364477;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eIh5J/JcXw61RFpCqzyk88GYK+Ae39xbYxKFcNj4Y9U=;
 b=E+WvluEFfyDwpYFgmx+mLCtEfzPVRs4a5ELT2L7UrVVGPWYps7r3/Ubi
 7AE0Q6EtRy0XpDqfrg+yQW7y0so/UTyJdTniiQiSFEeqVs1wRf0iKa9p0
 U2y6v82EZkZfVv5SDUzKE7PVFHRMq8l1Ts4eTvtFHh/O6MvOIP4qNCAQy
 0Cdol5AmRuoNhk+dsXnHUm+FO6iAcP0n6Kg7A9j5cjLOVWuYmzaFUeALX
 L2poGlabEpZIiURmBN0m7y0c/GHFzet1KB9OgrDiGG8xH9wqGgk90iEwz
 UaUtgZstUcjW8yMi7VV3PR/ahQQ4Gat2xM+tkIfH2e/uAzWJ2O8cBoxm9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="377617504"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="377617504"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 09:14:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="646405423"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="646405423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2022 09:14:03 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 30 Nov 2022 09:14:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 30 Nov 2022 09:14:02 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 30 Nov 2022 09:14:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MKhb5++TDIB8+0n3S+y6OFeW2pIQotSrqqX5cWV855azHgug3rwCKNMuUkIJ6pc1Q02419YLhijyT0SEM5rf+LFFNx2W7DEfgrygbGiycfd58ergkeP91uU3Ad/6lVX7fV6U/MEMb/NoBc19uXXHQrjoMv/vRMhsIypuczWyI7uAPbU4UF603CWT8ODZNAZBslDiJ4idltbJixk8IqGc3zgLZ2e/B43U5tIGl0lMfdNfK3FwzG58MzZNsS2nc0dUanJPDdnuA/WX+ylK8yq/N3t9rqMceavVzrT+kGD0ubhdyiqxajbvyLYL4maKVJayyvDndnTPpuE6QigvDWBhzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rB0yK3j4AX1CBeoCFYZ6iSxB07qPP23UR3ueP32/fH4=;
 b=oFzvYFTfzjJxdgD96vq2JM9rnGwdf8XGAU42J4pFxtutMQ46v1fruYS9ZaZY/kRo6H4MPqQvs1E0c9ac97wVGdmmcyykCbvYUffgkrTeBd1A9whtNoAWkH8fz37w25RJJ9yoVmImBR47d3oEp+IwcA+ZjWQlkq4csJtA2SNVu32CkMkcWynkKWLyOz1vQUcyAjhOPf6KBI9j5dFgLboxYjaxfhWSx+na+UXqB9IMQXqEi/MQ0DY//vv/jUzFiWbJoEYQjylMTgd0PH/+egeRXQct1Sr/vkmFB5W4loCKKTRswpVsJQKKmLiEv/w7UQDhpQJJ8m+aC9wXvgtPb2hl4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH3PR11MB7896.namprd11.prod.outlook.com (2603:10b6:610:131::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.6; Wed, 30 Nov
 2022 17:13:57 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5857.023; Wed, 30 Nov 2022
 17:13:57 +0000
Date: Wed, 30 Nov 2022 09:13:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y4ePU5JC1g16hxv0@mdroper-desk1.amr.corp.intel.com>
References: <20221128233014.4000136-1-matthew.d.roper@intel.com>
 <166970252301.23270.17883876103416690987@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166970252301.23270.17883876103416690987@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:a03:333::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CH3PR11MB7896:EE_
X-MS-Office365-Filtering-Correlation-Id: f0d3c357-de3c-497b-b074-08dad2f64431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v/cIVIyeOmmloDkmvM+A+cZ1y92nOhtqmSIgn+E5W3OjUWugeZ6s6Mx+0IMv+7DHgJZvInbtDxvRiIvtBHrKboKMHILuN+ieTuy0bpGnE2wljdQHXOYlecJYqXvzf6FIdJUy3PdVIl9jrh1qSIvkntrfisKKtnEPkyQInEdyQvR+lbzOv03Ye0p3R63zmdAicMFaGua3gI0daVpSrOZ8BryauO+xuLFbvBt35V82v0SGb6akyhM6QKD+MrRdmfd9LH00ZjCij6Y8DiXQH4XmGGtL4vcGKUKkImV0OtcGvYHDtNUYbTBD5V+pSJtxcm6a8AW+v2S1klcikZtStuYngoueL13uyzohk6gK6VByAFz4qWnkojBeTZhxaLqde3iHtBSMEymGwR0fR4j17SnBcP/ZdXfkv/aK9ui7NrT0/0GtW5Kg104BWeTXd8pvYSEDSmYn5fJrXwhGKCohGwyKTsdXAzuFfu5NWle8YYJ4V6bLuvEgHFMtjoyd3CX0PiLKegOqzJs94pLPljYKY9Ho1p7vcjvV5cX02UKLpUTffEO4tbemiaC5hQr/tyPh27e2VWRwxixD2edznKx/3sEVvcmBmXVNzFKgvdRHCKbXpfssdX4MoykqOTx+EF3fyzULwqCmuagyr2wF12KUxh6Hnlne1/ZD9WUnmCpUvpnE19Z1Y3DNlNFpOvoi4Wchy6gq6712ooHYg18OZtWySJvIh4AGeIhPRT6aGE/BnVuqQ1H4AHQYATadnvCT62TYZKHW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(366004)(39860400002)(346002)(451199015)(478600001)(2906002)(8936002)(41300700001)(5660300002)(316002)(6916009)(4326008)(66556008)(66946007)(66476007)(966005)(30864003)(6486002)(107886003)(82960400001)(6506007)(26005)(186003)(6512007)(38100700002)(86362001)(83380400001)(13750500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bxlccJk0xhhClPd31/gvRJlHgRIBpEy6bPt12dk+Yf6QF5056Lajqw4JSH5x?=
 =?us-ascii?Q?c/UBAmOqDKF4HoOIhHWHNpc6giG7Fu11a73BNnkXunDSvDAsntvqon7aRKec?=
 =?us-ascii?Q?fjsbQHC9yaaJJUFbcR1QbABPCpvh6QCLGeAeyuhDcb8eWg2UpuszMPJXmmNS?=
 =?us-ascii?Q?WQLWbGt7+EKuW8oRPC72Hsr5FfBSdkH/SDPWWNeNaz6vOKeS1yODvafpC/4K?=
 =?us-ascii?Q?zLHNctwiJ3Bqog8cJ7MkcQ9qrmTbG0fqtFS9oytG29GZaHMyHb2wNOVSq7wn?=
 =?us-ascii?Q?ZntLrC2Jp8ZBNiKgAFyOGPfS9eUJm8lJlU/kagVMpr6wXfsGbD/V0dbqbhVy?=
 =?us-ascii?Q?u/HJJ1gSnMstUGMzzkwjxEaxlGa54qQNvbAepjZyu6pzTx3MKwuMbbZ8t7Qj?=
 =?us-ascii?Q?fIeqmXW0l8tGtVHfCkQbIWbqwErTe4fP+WeO1ZLdH1v9hA1wV+68/EgrhxcK?=
 =?us-ascii?Q?oKcxM4KIzhILEjwXEeQEQ/YOmJi9EgbYMLaeu2RnQEWwxKfMcznGAH+g9ad2?=
 =?us-ascii?Q?GHbLJt9/yU2Inx1bQ607uBiA5iSLdjGo4rahUYHql2nTGWXF4RaBbxcbssE/?=
 =?us-ascii?Q?KyRpa6HKLZrZkUT/Qvnd6aQvTz9ynoKk41Wq135Spae+JcgPVG0ae/mqd9Lj?=
 =?us-ascii?Q?+5rmBZ99RJQ1nDzsenagllu/h6p86yQGvngqLwniBC2nI9ViA3BQLNrKV7R8?=
 =?us-ascii?Q?aGOQhGxvuohRqmgf60dAKgYmMqZrVZcAXEZqr3BpcqZqDpkCcElJO9+n+aOs?=
 =?us-ascii?Q?gXD5gZHa/BuyDKZzJ+GqzicI3Rka/mFV3UHW7b8ZUqIO4P5bIGekxDctZUus?=
 =?us-ascii?Q?S+WNG3vYjzKNrYeZ6fT/V38ZW+olk+ASzvyKBIcMyXhioxGj4pgGIZraAHyo?=
 =?us-ascii?Q?xWmXvKJqSU/JMBFguRHzh5eYUxEgISnP97iVa0MdCiUnOdElVPTnf8wZRcHU?=
 =?us-ascii?Q?zgykIhNfCLn6vG6ifCLl+V9yxswnYK1TS/icY+cpa9xe7eemUVBchs8O6div?=
 =?us-ascii?Q?z7Eqadxax9e/XRTGjmwCZhnr+SCUN95sFMACT0JDyPW8X9aDXUVAZEB466GA?=
 =?us-ascii?Q?QW86fyKmZ+MPvSLnKSV/0xaYx7Vs/bUG3K5Evr9E2OGWk3z6MzBcdMjMokQh?=
 =?us-ascii?Q?Cu7Av14f3w9EOK0179nAV9DTJAKbRGRKP3CEbfYhuDx5cxKAl52LjfCtzhmI?=
 =?us-ascii?Q?ZFiX/EbcoORzKvX7wTO5sFU4roEi5UQDhqDUjzVgfxu48nsI649B763gtRM+?=
 =?us-ascii?Q?cRvlntIHjTHwC9DWPO+ZASHbhmM0rs3wQx8DcGU+O9pyiup0o9hVJx182LGd?=
 =?us-ascii?Q?d4V7ts/2GCUDt+Vx4eMRYdOLsmrsB6zygyqYFghk1F2QnCr2UrVeoJNb2m41?=
 =?us-ascii?Q?7BX/nIoWq2QRgPumtH8RZ4DYJ1o7o09WCSMWPiNv8IqSYxelKx8hH5bN6m+m?=
 =?us-ascii?Q?Jby5DXJAO915mWsU7bWnbvczu1igdwa3LQ2j+jablpbFkammxvrup2HvbkHW?=
 =?us-ascii?Q?BbeczqerWvWXpBg/1FXnTldyvAQYY1/haJaPyiZAWU5Dfmrt0AzpAV2fYcxn?=
 =?us-ascii?Q?dYZk8JHWma19ihBB0OskOxUgl9B7my58IxTjjLRKULnLzMCadC142uvKXPHe?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0d3c357-de3c-497b-b074-08dad2f64431
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2022 17:13:57.6897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIpLJtCrU22witfLnnJ5DblcHkTwvpw+8Dqzqom3a7L+BgPwZFKDM0SwaU04rSH646XQBaOkrH0Xgo3XKqu5C2mKl/niFCdNyEhmpTdpAmk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_dedicated_MCR_locking_and_hardware_semaphore_=28rev2=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 29, 2022 at 06:15:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: dedicated MCR locking and hardware semaphore (rev2)
> URL   : https://patchwork.freedesktop.org/series/111220/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12440_full -> Patchwork_111220v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111220v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111220v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111220v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@bcs0.html

System never came back from suspend.  Not related to this series.

First three patches of the series applied to drm-intel-gt-next.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111220v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#5099])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb3/igt@gem_ctx_persistence@smoketest.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb5/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#4525]) +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@gem_exec_balancer@parallel.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][7] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-iclb:         NOTRUN -> [SKIP][8] ([fdo#112283])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#2190])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][13] ([i915#4270])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#768])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#3297]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][16] ([i915#4991])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl9/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#2856])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][18] ([i915#3989] / [i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl9/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-skl:          [PASS][19] -> [WARN][20] ([i915#1804])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          NOTRUN -> [FAIL][21] ([i915#6537])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl1/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [PASS][22] -> [FAIL][23] ([i915#7084])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl3/igt@i915_pm_sseu@full-enable.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl3/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_selftest@mock@timelines:
>     - shard-tglb:         NOTRUN -> [INCOMPLETE][24] ([i915#7605])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@i915_selftest@mock@timelines.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#2521])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#5286])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109278] / [i915#3886])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3886])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#109278]) +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271]) +60 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_chamelium@dp-hpd-for-each-pipe:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_chamelium@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@hdmi-mode-timings:
>     - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@kms_chamelium@hdmi-mode-timings.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][37] ([i915#7173])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl1/igt@kms_content_protection@atomic@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3359])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109274]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#4103])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#2346]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122]) +4 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#2587] / [i915#2672]) +4 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#2672] / [i915#3555])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#3555]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#2672]) +4 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109280]) +8 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#6497]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +40 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][54] ([i915#4573]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-a-edp-1:
>     - shard-skl:          [PASS][55] -> [DMESG-WARN][56] ([i915#1982])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl10/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-a-edp-1.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl3/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#658]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109642] / [fdo#111068] / [i915#658]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#5030]) +2 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@kms_scaling_modes@scaling-mode-none@edp-1-pipe-b.html
> 
>   * igt@perf@gen12-oa-tlb-invalidate:
>     - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109289])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@perf@gen12-oa-tlb-invalidate.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([i915#2994])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb8/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2994])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@sysfs_clients@sema-10.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vecs0:
>     - shard-skl:          [PASS][66] -> [FAIL][67] ([i915#1731])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@sysfs_heartbeat_interval@mixed@vecs0.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl4/igt@sysfs_heartbeat_interval@mixed@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_read@empty-block:
>     - {shard-rkl}:        [SKIP][68] ([i915#1845] / [i915#4098]) -> [PASS][69] +7 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@drm_read@empty-block.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-6/igt@drm_read@empty-block.html
> 
>   * igt@fbdev@unaligned-read:
>     - {shard-rkl}:        [SKIP][70] ([i915#2582]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@fbdev@unaligned-read.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-6/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - {shard-rkl}:        [FAIL][74] ([fdo#103375]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-5/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-dg1}:        [FAIL][76] ([i915#5784]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-dg1-19/igt@gem_eio@reset-stress.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-dg1-15/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][78] ([i915#4525]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][82] ([i915#2842]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-iclb:         [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - {shard-rkl}:        [SKIP][86] ([i915#3281]) -> [PASS][87] +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gem_exec_reloc@basic-wc-cpu.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - {shard-rkl}:        [FAIL][88] -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-5/igt@gem_exec_whisper@basic-contexts-priority.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-3/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@gem_readwrite@read-write:
>     - {shard-rkl}:        [SKIP][90] ([i915#3282]) -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gem_readwrite@read-write.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-5/igt@gem_readwrite@read-write.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [DMESG-WARN][92] ([i915#5566] / [i915#716]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl2/igt@gen9_exec_parse@allowed-single.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - {shard-rkl}:        [SKIP][94] ([i915#2527]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-4/igt@gen9_exec_parse@bb-start-far.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][96] ([i915#4281]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-skl:          [DMESG-FAIL][98] ([i915#5334]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl4/igt@i915_selftest@live@gt_heartbeat.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][100] ([i915#79]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-tglb:         [DMESG-WARN][102] ([i915#2411] / [i915#2867]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-tglb8/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-tglb6/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
>     - {shard-rkl}:        [SKIP][104] ([i915#1849] / [i915#4098]) -> [PASS][105] +6 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [SKIP][106] ([fdo#109441]) -> [PASS][107] +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [FAIL][108] ([i915#1542]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl9/igt@perf@polling.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl1/igt@perf@polling.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][110] ([i915#658]) -> [SKIP][111] ([i915#588])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
>     - shard-apl:          [FAIL][112] ([i915#4573]) -> [DMESG-FAIL][113] ([IGT#6]) +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][114] ([fdo#111068] / [i915#658]) -> [SKIP][115] ([i915#2920])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][116] ([i915#2920]) -> [SKIP][117] ([fdo#111068] / [i915#658])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][122], [FAIL][123]) ([i915#3002] / [i915#4312])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl6/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl7/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl1/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-apl2/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl2/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-apl8/igt@runner@aborted.html
>     - shard-skl:          [FAIL][124] ([i915#6949]) -> ([FAIL][125], [FAIL][126], [FAIL][127]) ([i915#3002] / [i915#4312] / [i915#6949])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12440/shard-skl1/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl10/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl3/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/shard-skl9/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#7084]: https://gitlab.freedesktop.org/drm/intel/issues/7084
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7605]: https://gitlab.freedesktop.org/drm/intel/issues/7605
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12440 -> Patchwork_111220v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12440: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7073: d021d66e389f4a759dc749b5f74f278ecd2e6cbf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111220v2: d21d6474a37e5d43075a24668807ea40a7ee9fc1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111220v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
