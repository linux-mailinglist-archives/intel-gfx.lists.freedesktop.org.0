Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 515E964E083
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 19:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B0D10E066;
	Thu, 15 Dec 2022 18:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE46A10E066
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 18:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671128277; x=1702664277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oDf1n6AXa0cqdOQnRGuwirIc3+lsY1WPdeONyjk9HeU=;
 b=DaVva4Ek57p0+O3wnZGDMk6ehE0Q8U49Aobq6rfsgOzxXyrQice6Y3cw
 XS+r7Jz6rvx53DyK0axs6Xihm+1mgbqI1Mk4TqftqGVeYwhRz+BOaTYIk
 ClCyIrS83doHPsWKtCJy+7QDruTlQGquM2PZ4yZXlRhF/l37gMOyvwHux
 wvL0QblxHtycFrfVPNxK0i6osGCGrDFsJ+aOafE3RKQfyMxXJFBqFrlgJ
 EuiAOQUUyFsLc6wN0yvdh2syuHrsf2zixFeG8nkD2lI1piPBXuFOKglO3
 Jvblu5uVLfvcmDO/JJU8nP2PXJ0YvojAP8kZFI8Zau+Wx28q1CMZxMeM/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="306425446"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="306425446"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 10:12:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="627286894"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="627286894"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Dec 2022 10:12:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 10:12:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 10:12:18 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 10:12:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nawJu4nNN1lS33gze8g0gA6aZ8/bTznHTTDOGbYvRst1Tp3Dnx3Jbperj6EueXb+OTKsXqlJQjq1cCmTcCHTQBxmh/WMZvwdq9gUAUM1jkH48/m86DeuT9QL/xF8QAzVcznbr5awS0PHubGvTU5rN27Vvipp2WUzOO8sBV8YIbak7ZVT5+jRYmYK/tc/Erh1pwQFURx8Jk8YPTbgFZCPhA6aC285arf+GCRNn44lGRsjMAQ8Y9SII54+bZ/f8lqwPuEz59PSEJ0xA0k1nv9D0d8jON03kv/v8srN1ZrlSG5YzFY8D32e/oY+XKyIc2NLgr1ZPbfneOdhkkYpv95YGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Er9Qe+yyhoNwZxRbawxzEROQOldDy0W8tHs0akVk2ew=;
 b=DlMe0pkIP0rG9BPij0bH6AVbdK1S90pl9bSUf4gQ1IEl3F5ZC4FAt9X/84wHwL+gAIJuvOvFDdJruq2K78RjgmGF+GI3OoeA6iIHaeq13zTlCmmTt0ArZgGMY5siN0l+7i6FzHfbBNeKwvq9c7IG0/BiagdSGEo+7dRS4v6hNZKZXsldyq7O2WRcoSXHn762ANxldbjJX6zcrQBoAdFpbyByq/xhPrHzqD7+AuYtQ0yMk8G3IkDQXQZCaeWUe2xjyYNBQOI8l+qCadcgbIhQav/f7LQhGbTQ1PA3q7T193Fk+r+Z6Ohgzo05OMjQXUCRMJ0jDa3MJEhICcfp03yQXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 18:12:14 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 18:12:14 +0000
Date: Thu, 15 Dec 2022 10:12:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y5tjfJEO2tYbPP+P@mdroper-desk1.amr.corp.intel.com>
References: <20221213234119.2963317-1-matthew.d.roper@intel.com>
 <167107398754.25119.4214048076463145126@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167107398754.25119.4214048076463145126@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR04CA0027.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::37) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: fc4eef68-f999-4b1c-00a3-08dadec7e4c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O5w5x6ufkcRC0FnTghyCdxJyaEnrIQKdS72/BWtptaKz4zPEKtm2m07r2xLrGHOkowizv+MDnfITXL33Fm6qrz5thUBPvvSiopKyOTsqGnYg5dvUsRTYgTt2t7A9GBtfZnGsgn07zWE4TkLdcfrPiTu7jPA8YRKdlLbf4zKpxkROzdv/+67lQg5SMlCqSKMUH3L9oew7JLaQ9AQxKJK/FaRpTixhHn4g939+AOPtct3nEveOXExGtBB5Bt1nraiPWR+ikCBJcvV6Oyk6OiZkAXGyp5Adeh3THK65xCuE/yRaEOMQ1MNMy+7h3xmCK5wJJKajjo7OtAfaXSQQiyLpHcakOtToIgrIHSzhPSfCoiGHwmjFrSXuL6MlhhIMBY9/ddbkK44pC6p53v6dsUCZXFNYXNRNG5Eu/h5apntncL/WNiiMOlzMrKs6i7pXfIQLVYVdyaEv6EbULjthAnRmzC+oXkqt0UCbMbZDQ4n9d2qvbmrmPs7BL/f7+nd06Vxca+zne65VGY9r/KUl3hN7KzbaIsDO2423h/WHzwD3jidJFUxDPTcWY2ni7KvXP10SDCPFD481lytNOYrW5CSoFCzFVc14Q1uBmyzyJSst9bj6if+Fg/AMidRoC0/V7UrQuET2vYnhL6YR1QVCVS/qjuP77ATCXUEP0dfGbkQLCdV/Tfrm6EuJwmZMshA5V1jvqACxD92VsqQ+9fvQ0fPGkFuv/8612mTMfg6o61ozRMGGPPyvFRUiBiyP0GENJykz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(39860400002)(346002)(396003)(366004)(451199015)(6916009)(4326008)(66476007)(41300700001)(5660300002)(6506007)(316002)(26005)(66946007)(6512007)(86362001)(8936002)(107886003)(83380400001)(186003)(6486002)(966005)(478600001)(66556008)(2906002)(30864003)(38100700002)(82960400001)(67856001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LcR6A8VRgwlu7WmdpZBCkn60N3In0D5qTJ6xaS1T/0HegAqRKHgSMPAgayE7?=
 =?us-ascii?Q?nC9neFZxq4L9yolpq+jsXlLB1613klAcLlkqDEIABaYwHx9i/l7Mta8jvr9k?=
 =?us-ascii?Q?m4TbDAHU6Q/K2gxcuQEZ20awhtTLEeujsRySnqYEO7k7hrWK52m0k61cjGY/?=
 =?us-ascii?Q?jOwS03oo7xZUWJh4AdLfIS5TaDO+086ph3FdS8MtIPoDJjIC4tV+IHvN9tHE?=
 =?us-ascii?Q?qAhb95l6VB627IuIT0q8FOyEtZQGSFIwSwrN4wdiam77U26Sne5UONQjXZjU?=
 =?us-ascii?Q?85MMjjbmcSjuwTX7qKUgLbsC9wgw1GzpYIm21v0K4ZVotUm8zPJ7IYlAypj2?=
 =?us-ascii?Q?ZkXFGSPqfOlm/IZjQ0npJXXuaa5TjQOUUGaZdN0phGiEymAuUyAKwFC1TG3G?=
 =?us-ascii?Q?LvMkE+Z/9no2h6XmW1dagnl+xScg/4WVnKUqc6V1zpRQc96EmfY6JGxnqAaC?=
 =?us-ascii?Q?ZTec2VfypSR5SHlDja9OzzVZXyaj5SL3ialdLelSY3bpIUdbth2fTJ6MjmvH?=
 =?us-ascii?Q?yKGmxqkQw9Ce45zgm3XHdLFnyDpIutRJ7UuocJFyCHNWAKTDKKxfaW2Sc6Wh?=
 =?us-ascii?Q?c18qqlYu5fjUooqlueM/7FfA9KT4D7dFEVkMz0Hh50X4MTLnR6cmn078ZYQe?=
 =?us-ascii?Q?kPSON1EApDkjcCd3QFA5zd/nB2Dggej2VEWaFkBIb7KEhDWOsOUIZQnFPhJ5?=
 =?us-ascii?Q?R04gtBN2sF8YkNueTLnVIU2WmPaF2KWQ5sVypDKfJKbNv/eJG5Rm0QXY57Q6?=
 =?us-ascii?Q?t4Xi/kUD+ArgNHZGfQUh7Y0VXOWt45aIIwjLWsSEoiolxfDUWb+xrmCDbYsy?=
 =?us-ascii?Q?vuDzz2wRGefYDDKkJg+Jk10Q/yJLdH2TW6wJbk6B65K7MgmpQI2Qules3qSK?=
 =?us-ascii?Q?nlP1+kgJM7wT8QcH9GbZYl1JTQdJzOjXksedoeXdYjrUfp5ieJQh/8CuIXho?=
 =?us-ascii?Q?wUmmNwBFGKBLh3+y7aKy8qMAwMvP0q/ox3g9fP+IrO2/p6exquaPNvrTQDm6?=
 =?us-ascii?Q?gMfOktX5KeznChDg8x16d0njVNWWQYQryLckvF1IOC8lWumXJieDwHLpUrS3?=
 =?us-ascii?Q?DCUBgkoCDhVykDwHui1DbwUPg7SMuUqBk5ys4pv6qtVsALz6wM4BaSksTJPC?=
 =?us-ascii?Q?ygyTZuxQO/f3O10u+iUjhNMdUDtOt9MjMtX2g9yiUyMzgAN+dexuZnY1z0H8?=
 =?us-ascii?Q?K/6QtdBPlV57vrZunwe0QjwMrYZ075OuOw0bEnHWHJcFa/zGNG+21IQ72Kxa?=
 =?us-ascii?Q?2Zw3jT9b/u5/yJk0GLTcDCDsZqMDoXy8P/5iSj7QzmWfTayJmXwKFo0V/cfk?=
 =?us-ascii?Q?S8xBiUgqddwwA7kCulyQ7DrFydgYr88msl/OHzpcroMJKaAysfT2kbDzUcwG?=
 =?us-ascii?Q?vR60NchYOB+hTxUIv+L5+vIAzqVnT4V9NYKaBwftY7+bEolqKXKLG8rJWxdM?=
 =?us-ascii?Q?4TPbRqdx5Te20TabyoaokJmhD9gdIvcQ3Kr1A+FKlaOx3A9TcROwt3cNa2gL?=
 =?us-ascii?Q?CeYPQvG9T8ydjiqJ2owCq8wte1AW+lanx5ecIjw9+9DhlhE57f/TAKTAZHs1?=
 =?us-ascii?Q?hqrpFaEshwZOB1Ruk4kX9DVUg/grvXkwLPY5ddaOD5T8WylgUdaKO1w4F9O+?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4eef68-f999-4b1c-00a3-08dadec7e4c0
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 18:12:14.6180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kjOiWxrzCDLS1pE0KRlFH/edId6mhc2vB2S2hNHuxHgUvQl3mwpS2UjXJyMLgHCYcFZQVyg3rJmdzYwHVO0OBIK7DcJWlJKLeQy9VyI8/Jg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Return_Wa=5F22012654132_to_just_specific_steppings?=
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

On Thu, Dec 15, 2022 at 03:13:07AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Return Wa_22012654132 to just specific steppings
> URL   : https://patchwork.freedesktop.org/series/111912/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12502_full -> Patchwork_111912v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111912v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111912v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (14 -> 14)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111912v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes:
>     - shard-skl:          [PASS][1] -> [WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@gem_exec_fence@syncobj-timeline-multiple-ext-nodes.html

SKL warning is not related to the DG2 tuning changes here.

Most likely this warning is the same as the one reported in
https://gitlab.freedesktop.org/drm/intel/-/issues/7541

Applied to drm-intel-gt-next.  Thanks MattA for the review.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_eio@in-flight-external:
>     - {shard-rkl}:        [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@gem_eio@in-flight-external.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-4/igt@gem_eio@in-flight-external.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - {shard-tglu-9}:     NOTRUN -> [SKIP][5] +1 similar issue
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglu-9/igt@kms_panel_fitting@atomic-fastset.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111912v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_mm@all:
>     - shard-tglb:         NOTRUN -> [SKIP][6] ([i915#6433])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@drm_mm@all.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#6268])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4525])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][10] -> [SKIP][11] ([i915#4525]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb6/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-tglb:         NOTRUN -> [SKIP][14] ([i915#4270])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gen7_exec_parse@basic-allocation:
>     - shard-tglb:         NOTRUN -> [SKIP][15] ([fdo#109289])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@gen7_exec_parse@basic-allocation.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#5566] / [i915#716])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl3/igt@gen9_exec_parse@allowed-single.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglb:         NOTRUN -> [SKIP][18] ([i915#2527] / [i915#2856])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#6590])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1937])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-skl:          NOTRUN -> [WARN][21] ([i915#1804])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271]) +29 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#2521]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1:
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2521])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk9/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#5286]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111615])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([i915#3689] / [i915#6095])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689]) +3 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-hpd:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_chamelium@vga-hpd.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [FAIL][33] ([i915#1339])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@kms_content_protection@uevent@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([i915#3555]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#5072])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb5/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([i915#426])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglb:         NOTRUN -> [FAIL][38] ([i915#2411] / [i915#4767])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109274] / [fdo#111825] / [i915#3637]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
>     - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#79])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#79])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
>     - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#79])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl6/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][46] -> [FAIL][47] ([i915#2122]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([i915#3555])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#2587] / [i915#2672]) +3 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#2587] / [i915#2672])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +25 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#2672]) +3 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109285])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - shard-snb:          [PASS][54] -> [SKIP][55] ([fdo#109271])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-snb4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#6497]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109280] / [fdo#111825]) +6 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180]) +1 similar issue
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl2/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#5235]) +2 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb8/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [FAIL][63] ([i915#5939]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-tglb:         NOTRUN -> [FAIL][64] ([i915#132] / [i915#3467]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +1 similar issue
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][67] -> [SKIP][68] ([i915#5519])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111615] / [i915#5289])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@perf@blocking:
>     - shard-skl:          [PASS][70] -> [FAIL][71] ([i915#1542])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl7/igt@perf@blocking.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl6/igt@perf@blocking.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2994])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@sema-10:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@sysfs_clients@sema-10.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_create@hog-create@smem0:
>     - {shard-rkl}:        [FAIL][74] ([i915#7679]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@gem_create@hog-create@smem0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@gem_create@hog-create@smem0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - {shard-rkl}:        [SKIP][76] ([i915#6252]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@gem_ctx_persistence@hang.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-4/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][78] ([i915#4525]) -> [PASS][79] +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk8/igt@gem_exec_fair@basic-none@vecs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-glk7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - {shard-rkl}:        [SKIP][82] ([i915#3281]) -> [PASS][83] +9 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - {shard-rkl}:        [FAIL][84] ([i915#4171]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-4/igt@gem_softpin@evict-single-offset.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-1/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - {shard-rkl}:        [SKIP][86] ([i915#3282]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - {shard-rkl}:        [SKIP][88] ([i915#2527]) -> [PASS][89] +2 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - {shard-rkl}:        [SKIP][90] ([i915#4098]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-dg1}:        [SKIP][92] ([i915#1937]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-15/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - {shard-dg1}:        [FAIL][94] ([i915#3591]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - {shard-rkl}:        [WARN][96] ([i915#2681]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - {shard-dg1}:        [SKIP][98] ([i915#1397]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-dg1-15/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_pm_rpm@pm-tiling:
>     - {shard-rkl}:        [SKIP][100] ([fdo#109308]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@i915_pm_rpm@pm-tiling.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@i915_pm_rpm@pm-tiling.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][102] ([i915#5334]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {shard-dg1}:        [INCOMPLETE][104] ([i915#4983]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-19/igt@i915_selftest@live@hangcheck.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-dg1-16/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-skl:          [INCOMPLETE][106] ([i915#7233]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@i915_suspend@debugfs-reader.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@forcewake:
>     - {shard-rkl}:        [FAIL][108] ([fdo#103375]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-4/igt@i915_suspend@forcewake.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - {shard-rkl}:        [SKIP][110] ([i915#1845] / [i915#4098]) -> [PASS][111] +14 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [FAIL][112] ([i915#2346]) -> [PASS][113] +1 similar issue
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][114] ([i915#2122]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
>     - shard-skl:          [FAIL][116] ([i915#79]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][118] ([i915#1849] / [i915#4098]) -> [PASS][119] +13 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-tglb:         [INCOMPLETE][120] -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-tglb6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>     - {shard-rkl}:        [SKIP][122] ([i915#1849] / [i915#3558]) -> [PASS][123] +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1:
>     - shard-skl:          [DMESG-WARN][124] ([i915#1982]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-skl6/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-skl4/igt@kms_plane_scaling@plane-upscale-with-modifiers-factor-0-25@pipe-c-edp-1.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - {shard-rkl}:        [SKIP][126] ([i915#1849]) -> [PASS][127] +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_psr@cursor_render:
>     - {shard-rkl}:        [SKIP][128] ([i915#1072]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@kms_psr@cursor_render.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][130] ([fdo#109441]) -> [PASS][131] +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb8/igt@kms_psr@psr2_suspend.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [SKIP][132] ([i915#5519]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>     - {shard-rkl}:        [SKIP][134] ([i915#5461]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>     - {shard-dg1}:        [FAIL][138] ([fdo#103375]) -> [PASS][139] +1 similar issue
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-dg1-14/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-dg1-17/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][140] ([i915#2434]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-2/igt@perf@mi-rpc.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-rkl}:        [SKIP][142] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-rkl-1/igt@prime_vgem@basic-read.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][144] ([i915#588]) -> [SKIP][145] ([i915#658])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
>     - shard-apl:          [DMESG-FAIL][146] ([IGT#6]) -> [FAIL][147] ([i915#4573]) +1 similar issue
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl1/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][148] ([i915#2920]) -> [SKIP][149] ([i915#658])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][150] ([fdo#111068] / [i915#658]) -> [SKIP][151] ([i915#2920]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][152] ([i915#2920]) -> [SKIP][153] ([fdo#111068] / [i915#658]) +1 similar issue
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][154], [FAIL][155], [FAIL][156]) ([i915#3002] / [i915#4312]) -> ([FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl3/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@runner@aborted.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12502/shard-apl8/igt@runner@aborted.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl3/igt@runner@aborted.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl3/igt@runner@aborted.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl1/igt@runner@aborted.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl3/igt@runner@aborted.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/shard-apl6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7233]: https://gitlab.freedesktop.org/drm/intel/issues/7233
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7582]: https://gitlab.freedesktop.org/drm/intel/issues/7582
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7672]: https://gitlab.freedesktop.org/drm/intel/issues/7672
>   [i915#7679]: https://gitlab.freedesktop.org/drm/intel/issues/7679
>   [i915#7681]: https://gitlab.freedesktop.org/drm/intel/issues/7681
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12502 -> Patchwork_111912v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12502: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7092: 59e3bf83f6bae0918276f880f969a10d279c657a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111912v1: cc44a1e87ea6b788868878295119398966f98a81 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111912v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
