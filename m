Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363460134B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 18:18:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 265FB10E611;
	Mon, 17 Oct 2022 16:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E376510E611
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 16:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666023498; x=1697559498;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h40GjqeIJVQBuYXNd/k0OgzhRVQ38jlLqgivTgzb48M=;
 b=QBXkV5tXpfN8GuAXiH+q7i7WtwrUxjqrad0NjQ5OPey1fWgVtHw3IdcV
 4N3jTYVMm05ZYGeTMG73Ii5BocK2NUaXc/rbi0aro46uJo4KZvCM0NISo
 vHGgXRki86kY2O4+kphy2+HKg761Jee8BFNrPDCOxlv9IkOwYue7foTQk
 l2p9sJPf14hanXewY4le2a/bLOakQYdTeK78ND0uCGV3yWjjHTyn5UMcG
 zW5zmPpqCUgtfnJB20UbE/oJk4DmG3lfKFPU1N05FkBSCUKIsE8o+ykzg
 85i8syazcWmxmKlt2R0t5dDdroznqSCJ7ZntHTtluPBdi3wFGYVfm2HwK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="289141069"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="289141069"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 09:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="691422478"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="691422478"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 17 Oct 2022 09:18:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 09:17:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 09:17:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 09:17:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hiBqcnVWtEAgCpjWdrsqQuFsfCAu8FTCm0xL9oMEdUf9x4rCKeRDdhqFI83NM4eHnNlZuN1wk8HG12l0+3FWL8dgAvGrEbByusW7s3bRQwZgbJN15keAWbxqowctl0u/apmNbwJHw+2L2wnq9i7iq6hm8r5BN1gvBnf106I41ThDVRIUQHvJTxT1oWishO9nPxcgpousMh2MppvCsgq3XXwu3il9wsbEK2hJTpPdrgtpwG8yXb4TC7q5/qfrYYQynUPx9i9KmmbY92eKPNt+WqnG14GlvJwaMUaCZY5OG5LVOLtqKNsPy45Ap5yOfO9Iujn50gYmncfPklNh+AJHVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G3wuIBY5jgmI0UoTkpGAgOnDei53sjOnC813Z5GOF0c=;
 b=OGqSiiCNlC2xAYp/99pZNowcby3gvKPhtGyVJnKk00V1xSelT50K6Xcc7WJGcVKBVgXvZuq+zGFC6KXMpMxTXE4X0/HlArnxNlTHHnygBr3sV9DZe9dg+2cXajzKvSfr9siFzpUf9Epa5pN9IibkoJLXF78h9xv6rxhxSYiLI+K02S5O04644wMutiBZo7+y1WpHKZPlUo0rtb98LHvwnx/kiMl6Amx72bIxHGZJfi5ddElfm1dSd/UAVdPKY3ZYHN5MLNtt/SYnPtx4jLesD4eJAN3a5361qEe8lP29mQcPVhh5kJ5y3Vtkf+LEOpgxV/rUy2owZEj6pYizEIFJHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN0PR11MB6301.namprd11.prod.outlook.com (2603:10b6:208:3c3::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.32; Mon, 17 Oct
 2022 16:17:51 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 16:17:51 +0000
Date: Mon, 17 Oct 2022 09:17:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y02ALLT6pLmxxVpQ@mdroper-desk1.amr.corp.intel.com>
References: <20221014230239.1023689-1-matthew.d.roper@intel.com>
 <166579581197.303.11973819867723936301@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166579581197.303.11973819867723936301@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0106.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::47) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MN0PR11MB6301:EE_
X-MS-Office365-Filtering-Correlation-Id: efc461c4-3628-4c73-1a5b-08dab05b2397
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gsRwbJck/sQubzA005pTG5ggI+d5suer2uYKRmBRuQ/wcdCoxV0kinCQnu1wD7fuovX5wnOdJOMNoENpwOe0dzTFMVke4sCwlt44lYLFlJ+rS1xsYIjE7kIx0sg+YrMuo2PcZNxsm/jadbPkDYWzzA5mkkRm/X3uEg+t8dVkjGjXEJk/qngLy1jxeYf9+5LXxQkDuYiWSZPIdMqagO0TbgkPiZ1XAA06drPNHojEuW3YC5LyHAMWb1Pakw/mVF/bhlns5NVOvU1BIzZLI/icoTF3XaR84bJdilbawpejxon6QekARNVgrv8/lU1AlitiwfkdsV8UbSLt797IY30BOphtJHfVZs+qPYGxMZQXFjA3TeIiHwtPBhD0jcTLzqnQp+5cnB+yXq1eJ7k2w4nEDvKjaS9Lo5otslVoF07KGFHQxQqEnd0IXvCxwCshVTtZj2QrA93+TxSaM4vFtzqw60kQtW3adXcfzoo2bqGyfdbNfwCYjLlfcZJdYkwahI7HQieWdfwR9hjzsafBBzsdrGbi5mUyepNUuHm7klyAM50I5kQU6CVi0Ehj1ru8crRRPlaksewbH1zE6nKf69cQyYK0FLJbi/L4fdL+6UVYdFg1wuc+8BeDTSKNkqDMoytCocWWfhrZlWHC1bAMHEJxM9HILBgrKIUXqQ5sdIaSMpdiN+V0VW6l+9jYqsrzhGaxWcKlPCVPG1T5lNvpCqTG2S5TDkbunQbqw4DHPQ6r7nOeabUAF+RKAcA7yc2nDLT9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(136003)(39860400002)(451199015)(86362001)(5660300002)(82960400001)(30864003)(2906002)(38100700002)(186003)(83380400001)(6506007)(316002)(6486002)(478600001)(66946007)(26005)(6512007)(6916009)(66476007)(966005)(66556008)(6666004)(4326008)(8936002)(41300700001)(107886003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P4wE4fgWgzNxnB5T1RZaDFiN1YJNwn1rSQge6Xxy86WCzwuIoVTbDO8zTocD?=
 =?us-ascii?Q?KnlAk9SLQyQxaX3/tQDZW01JTFTe65fzD/cmSVfjboS6MhVRsv5rx+7OuIdg?=
 =?us-ascii?Q?AnB10CwNyQIGqfrW4dIZhBQKB0lzQiI04ZYEmqn3yrBM90mr5hgGAC3mTyQx?=
 =?us-ascii?Q?4DxK7DC7i85IZ/G7EDA6v4a0oVqORJjHU4CPjWesa2Qfe9zdS/Rq8o/ze/LL?=
 =?us-ascii?Q?0mGrvwLPJAhUvmmrL2cdjNRciwSxwHZmr7lNxunm9SibWpOROX8DkyhoaLwZ?=
 =?us-ascii?Q?SFo4V95qovAd80k/tkHTWzkmh1weETij8ss6rcspp08bVyvWGzw3q8jctHhs?=
 =?us-ascii?Q?rM/gkHxPmxycNGyArLbBs2gn9w2jjP2vtUbLvt8EbxB6eCASd/Fj6jqDBERO?=
 =?us-ascii?Q?/dvU6OQA4lxCO8m0pYRhLsummc9n/tqnKpRWzgr+j050boQIibMz5xKNEKxs?=
 =?us-ascii?Q?xv3xRx1UUT4Jv+ySn4HeD8y0oo6t8kc442JIwJUTxaQzhLTthGUVqpizsr+b?=
 =?us-ascii?Q?zdv/KYs5svh8/bPDbX5Ml9g3ZT+kN7kp0kmmiQGUWX74SJrll2wykgO1ttM6?=
 =?us-ascii?Q?IJzh22sR6dES9MbhE6uBi/RvzIhzJXIbjdSpFrTpv6MZGJfIk7TFcHie5z2n?=
 =?us-ascii?Q?RoKKr3gcyq93ujGeZAG2vp3SX1lgS3iov1mBAJtXt8HMHWyi2E+UTs5V2RJo?=
 =?us-ascii?Q?Q9r88KNCVQGRgioBmwNQKlOf6KGK0ePCHSL63UJDsmj5sDBhKS0h9GClagDB?=
 =?us-ascii?Q?rrb1Mh3agM2NQagdUl018Ubn6I+Az0W3KDjpkMbvJTpuLEMAOpGoGU4OdvGq?=
 =?us-ascii?Q?mRmrnP+Qg/CtjxJiBd8vfoo9gphegQqeFRtjYjQnGOyW2/V+4zM4Cved1k1a?=
 =?us-ascii?Q?xJ+wvHm+Qj5mv/DX80taYYQoqW5d58ELKIUsv6oiOxlr3VANm+kIXzGFf8Gx?=
 =?us-ascii?Q?fQmcfACqb8TvMozJkW++BpRLRdFl8z4hXDhk0DM0wlk+q1AIxPZbVxqIYOM4?=
 =?us-ascii?Q?OfauwHzD5Lr9gZBFUZWdGaJIvFwSFcGRWeDBPj7zs97v9S7QOGZPzm5uIuAn?=
 =?us-ascii?Q?44Hcpp8pLm1CNBo76JRiZ/Zh6yGBtpVv6QTJ6wCafxE7/ecw+tmts/SZ+4Af?=
 =?us-ascii?Q?3E5lZIQ/7m38wP5fpyK6vQ7TRwp1R2vmFPGsHqvsJ6mwH5SpFJI8wBymU9b3?=
 =?us-ascii?Q?dq5ZPWxtA7CtdUwjFjxmZ33db/Ov2OLnqZgPlOm52nauBxbP07q58798nUrF?=
 =?us-ascii?Q?5GRU4oRfV116cIH4YD/4imIFCl2I/K/xonG/4jCxiPoBO1ZgWMuxFyeWw9SQ?=
 =?us-ascii?Q?TVpfwDruIfvGU9zlvOnoQslRnyJ0oDKTUpiAxoxTPhbe7WjTUs/aWzPsp8SU?=
 =?us-ascii?Q?+oOFesQ5IVWJ7B5gXyGIklQSQvXaog0e0k+EDxhv3h4GKVhs/pzWqKGe4c0S?=
 =?us-ascii?Q?dggLuY+Bps+hZgrq+0PjZn0k8C05xIKd4JyNypHJdsKULZikDl/VnDiKksCO?=
 =?us-ascii?Q?Jzh7GeM9UiNMVYfmOsKomISiKjWxAhApT4L+fnMYn2wJ62qtH2ycrz4IkcWI?=
 =?us-ascii?Q?qUCLOkUmWmA8iS9hlx1GFYeLnvVmBmc4ilpkcW8IuVBBx1bmrRR5IaFm11E2?=
 =?us-ascii?Q?7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efc461c4-3628-4c73-1a5b-08dab05b2397
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 16:17:51.4620 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fswftXTkI8/n84dDGhX/2pw2yPOVI7mf98mc+OuiGkFGJEsRaln8pkjvW1QmCOz/ASjQZg6CqvJrT8hm5b1f/SprltaTxv+VDt7RCOkPFr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6301
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licit_MCR_handling_and_MTL_steering_=28rev4=29?=
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

On Sat, Oct 15, 2022 at 01:03:31AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Explicit MCR handling and MTL steering (rev4)
> URL   : https://patchwork.freedesktop.org/series/108755/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12242_full -> Patchwork_108755v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108755v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108755v4_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 11)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108755v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1:
>     - shard-skl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-edp-1.html

GT multicast register handling wouldn't have changed the behavior of a
SKL display test.  This failure is unrelated.

Other subtests of this test also seem to be sporadically failing in a
similar manner.  This might be related to the same root cause as
fdo#2521.



Matt

> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6]) ([i915#3002] / [i915#4312] / [i915#6949]) -> ([FAIL][7], [FAIL][8], [FAIL][9]) ([i915#3002] / [i915#4312])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108755v4_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [FAIL][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) ([i915#5032]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl7/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl9/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl7/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [PASS][58] -> [SKIP][59] ([i915#4525]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-iclb:         [PASS][60] -> [FAIL][61] ([i915#2842])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@vecs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb5/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3323])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-apl:          NOTRUN -> [FAIL][64] ([i915#7036])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>     - shard-skl:          NOTRUN -> [FAIL][65] ([i915#7036])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
>     - shard-glk:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3886])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +52 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_ccs@pipe-b-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271]) +27 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_chamelium@hdmi-hpd-storm.html
>     - shard-glk:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3546])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#2122]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#2672] / [i915#3555])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#3555])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2672]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2587] / [i915#2672]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +147 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][82] ([i915#4573]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][83] ([i915#4573]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2437])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@sysfs_clients@create:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@sysfs_clients@create.html
>     - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2994])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@sysfs_clients@create.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][90] ([i915#2842]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][94] ([i915#2842]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [DMESG-WARN][96] ([i915#5566] / [i915#716]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl10/igt@gen9_exec_parse@allowed-all.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl10/igt@gen9_exec_parse@allowed-all.html
>     - shard-apl:          [DMESG-WARN][98] ([i915#5566] / [i915#716]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@gen9_exec_parse@allowed-all.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-iclb:         [SKIP][100] ([i915#4281]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb1/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - shard-skl:          [FAIL][102] ([i915#2346]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][104] ([i915#2122]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@busy-flip@c-edp1:
>     - shard-skl:          [FAIL][106] ([i915#7200]) -> [PASS][107] +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_flip@busy-flip@c-edp1.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_flip@busy-flip@c-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [INCOMPLETE][112] ([i915#5213]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk1/igt@perf@stress-open-close.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk5/igt@perf@stress-open-close.html
> 
>   
> #### Warnings ####
> 
>   * igt@dmabuf@all@dma_fence_chain:
>     - shard-skl:          [INCOMPLETE][114] ([i915#6949] / [i915#7165]) -> [INCOMPLETE][115] ([i915#6949] / [i915#7165] / [i915#7192])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@dmabuf@all@dma_fence_chain.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl1/igt@dmabuf@all@dma_fence_chain.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [FAIL][117] ([i915#6117])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-iclb3/igt@gem_exec_balancer@parallel-ordering.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_selftest@mock@vma:
>     - shard-skl:          [INCOMPLETE][118] ([i915#6950] / [i915#7065]) -> [INCOMPLETE][119] ([i915#6950] / [i915#7065] / [i915#7192])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@i915_selftest@mock@vma.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@i915_selftest@mock@vma.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-apl:          [SKIP][120] ([fdo#109271]) -> [SKIP][121] ([fdo#109271] / [i915#7206])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>     - shard-glk:          [SKIP][122] ([fdo#109271]) -> [SKIP][123] ([fdo#109271] / [i915#7206])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-glk:          [SKIP][124] ([fdo#109271]) -> [SKIP][125] ([fdo#109271] / [i915#7205])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-glk9/igt@kms_dsc@dsc-with-bpc-formats.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-glk1/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-skl:          [SKIP][126] ([fdo#109271]) -> [SKIP][127] ([fdo#109271] / [i915#7205])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl5/igt@kms_dsc@dsc-with-bpc-formats.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl6/igt@kms_dsc@dsc-with-bpc-formats.html
>     - shard-apl:          [SKIP][128] ([fdo#109271]) -> [SKIP][129] ([fdo#109271] / [i915#7205])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl7/igt@kms_dsc@dsc-with-bpc-formats.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl2/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][130] ([i915#79]) -> [FAIL][131] ([i915#2122])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-skl:          [SKIP][132] ([fdo#109271]) -> [SKIP][133] ([fdo#109271] / [i915#7207])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-skl9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-skl3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138]) ([fdo#109271] / [i915#3002] / [i915#4312]) -> ([FAIL][139], [FAIL][140]) ([i915#3002] / [i915#4312])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl3/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl6/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl2/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12242/shard-apl8/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl3/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/shard-apl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6949]: https://gitlab.freedesktop.org/drm/intel/issues/6949
>   [i915#6950]: https://gitlab.freedesktop.org/drm/intel/issues/6950
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
>   [i915#7065]: https://gitlab.freedesktop.org/drm/intel/issues/7065
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7165]: https://gitlab.freedesktop.org/drm/intel/issues/7165
>   [i915#7178]: https://gitlab.freedesktop.org/drm/intel/issues/7178
>   [i915#7192]: https://gitlab.freedesktop.org/drm/intel/issues/7192
>   [i915#7200]: https://gitlab.freedesktop.org/drm/intel/issues/7200
>   [i915#7205]: https://gitlab.freedesktop.org/drm/intel/issues/7205
>   [i915#7206]: https://gitlab.freedesktop.org/drm/intel/issues/7206
>   [i915#7207]: https://gitlab.freedesktop.org/drm/intel/issues/7207
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12242 -> Patchwork_108755v4
> 
>   CI-20190529: 20190529
>   CI_DRM_12242: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7012: ca6f5bdd537d26692c4b1ca011b8c4f227d95703 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108755v4: 075a81b1efd29300194bdf7877e08b6dbe3079d9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v4/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
