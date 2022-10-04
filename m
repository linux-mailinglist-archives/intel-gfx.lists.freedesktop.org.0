Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D392D5F4850
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 19:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BBD10E067;
	Tue,  4 Oct 2022 17:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A97010E067
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 17:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664904226; x=1696440226;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=kmj6hZQdZ3RcRcF8qrqgFf4tEq+lcpMTL/ThwJ4jCBg=;
 b=F40wemmoa3sX6guI0IbVHLn7JMHKaCheWf3IO1hbXBCfNULNFzTzA+nM
 ikhd6rSXkQZ/vTsOr2RTcWw6958PBb47pv/g9TeVNYnj3x1+o5sesX90x
 O+sM+9Fr+DORc34Y8FgKz38M91QIYzT+BUf+0KnkdApsagKbeRhLFeZXE
 Zj0n1Q37WuanCp3xo1lp6JVebH/DJjvNslRhjVtaWLM1PucHzr+/jLJfl
 PVj3p+2lHFSL1M/vngXp8KgGRuXBpBYSwby+Z23ugmdLHKYIyUibU82r9
 GhTjiC4WXymF0ppBZA0dioQTJJXMRbyWSQuCRbYjVSsG1R8zFskUaHScB A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304520014"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="304520014"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 10:20:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="869085116"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="869085116"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 04 Oct 2022 10:20:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 10:20:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 10:20:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 10:20:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 10:20:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bCwLjCuqoTrZgzpdMcbTJw6YY60VbpWyqJxkvApLehmX/o8nPUJh6aaqNs1CWhq8keE2YITF/te70BwScRsr+p+Hj7uTPQY3Q3emUhdLXkyE2ujx93J8z0KeJn186UEvf75fpqfn1TqECpFwFkeEKjZlfKzvakia0uCu2ppjVv7Bvw1SJ/Dkmy7crXoXPkIXDVI2XxtQq51bdfoZAFYOPaR70+zIBJsnpNdm/6z6wZhHlLuAjzR3Qe2MrYtoigsgTRqCQZruQFai3xgBMFEidRjrCwliZgRPCENClOqdXqvC37zr6CSEIJ0drsbQh/U4Y2Rk0STkgX+YTMOLVmqdSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDdDu0BVVyTaWAMEnqcWBYd3gUOtPotgh9d4babBSy8=;
 b=EMiepaVPnoovzqxngzS0R77ERyOSXIFPLgLtaE9eYsb80oebUv+ToIOsfgiBVzApWB5l2NeGPKiZaqID++khX+/XXrPJpIoPzHcvkMo9Wn5co4E71SN4YoaTE0R7D6Sbw0rQ1+83T8dNlfvWVI1LnHyYDR2x4Yqvzq+eXDxaLet+djhnXwiBkNGxtYyPF3pRI0YKW0eUTgfdTsMZJCDdNTXGKYa60s8HD9HpLHp7mXol+7zvQKeVx4QvHoz4BiXfZhGkCzhPx4kUIEJRAPxRtunpsnSFonGGf3gmLkFPVwFLhU5v5Ur+Vvan2m1qTL+X2DCU5sW9RP4LpjfQTynw7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by IA0PR11MB7260.namprd11.prod.outlook.com (2603:10b6:208:43b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Tue, 4 Oct
 2022 17:20:35 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 17:20:35 +0000
Date: Tue, 4 Oct 2022 10:20:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YzxrVVCFaqmP/+A6@mdroper-desk1.amr.corp.intel.com>
References: <20220907212410.22623-1-matthew.d.roper@intel.com>
 <166261356256.27231.14528772902841845045@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166261356256.27231.14528772902841845045@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR02CA0019.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::32) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|IA0PR11MB7260:EE_
X-MS-Office365-Filtering-Correlation-Id: 610893f8-228b-45bb-1150-08daa62cbfb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dm8GqoQGgecuhMEk7B1Wyu40J25PoPgkr8Cq+0jlC4htr/tnCXgI3gMgRpQwfRWpp4US9/ZTuFTPXI65M6nDsNpEyb+Y04YbPg++U6U4EMCcMtsv3K2AHEgn6JDufXkm/rgYhiwESZpBHp1std1MBw+VfRKMatmEaOGNBj1ZC0H3yPeCRf3UgpBtX2Bkj0ON3z1N6A94dhbkOt+txT6B2hUgG4C94sALnzigW9i74ifxCFP1plJEjHUQkf0mypr6nXT8ScZ8zS7FOPksPCoD7HxUDjYXyPQ5TwV0h2xZxNBH+QB2r6ixulh7QZeBULfJNt5ksdOqqAG9mj5k/q8u6bO4vGh6mc/lpKo6EeQQ4Ezj2siPzM/oIdAvFSnPww7GjGQozw6n1Ck+BbwZ4IPBv8tiqTlT6gkiT0/BRSYViYdpYkTBJy/kJZYUjW0rdDq0g/cYdiFK9dx63Yk00FM09E/TzYTKa1ngH4BQk4xm/n3Oo/tJYvN7qvk0jEq6iJ7hmkoklLfBZlnxHoPWM77fB9sXjrNPN/ZYlW7vkLJiqXX7wWQARAwMiechFC8g9WN4iwDe3sw2MDCxAayDd8rH81FQGZBW68T9HAA6+8bfAMFMJ+8M2doqRsv3Bd2v8pAyeKk4dfR5hu3LaIN3FYBIL7dEfPiNw5ugw7CEBn33o5PiKGViiwRlLNVOGs5dcYYgzn9hUAmhqNGjEga2r2Ckj48x2L14ooc8T+jmDxd0acRoiIreWmgndzfMI4RhTljfvIbD88ES0ePFi3fuHfpBpw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(376002)(396003)(136003)(39860400002)(451199015)(966005)(478600001)(82960400001)(2906002)(6916009)(66946007)(5660300002)(38100700002)(6506007)(316002)(26005)(66556008)(83380400001)(30864003)(66476007)(86362001)(41300700001)(6512007)(6486002)(186003)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TEfr03CSCn4BGFaJf445Nto+nYDlrBhJ6SHoxvkAwRgm7ksjXLsDAYb1C6Y5?=
 =?us-ascii?Q?2mH1miYQZTqzTuiryjIDokY5VHqmyXXiyX1dHXYbMot261V+MZAfwqPJVQOn?=
 =?us-ascii?Q?AxZDU8yPTX9sbSLGaI3eM5Y2dRgh1sQIOwC/kbAPWDu3MT8nKKhn13/IMGks?=
 =?us-ascii?Q?zXAxqLPpqadb0VSSJIu0sNTUnYagZkhssTGcTZrxRGWv7VZhmXje8Yi804Vs?=
 =?us-ascii?Q?F+g2ln2dVH+nCs8QBWpSpNEPU8D+c4cOjfLT9M3s50HBJOCC4mDHUkubBgC1?=
 =?us-ascii?Q?OtKctKiK+g3z1qAjnDlEs8vsXBO4rUnXKupvmGNO1jK9JnO7HWIIE+MiKIH4?=
 =?us-ascii?Q?Lo+uQax8hKDWfE4oEMmb3o0ztr9AoBOs3dGihysqjiAQDMTB4gefs+bDcUag?=
 =?us-ascii?Q?mxfsEm/uOQismxTVvB8AQeRtMI/PUMTWTYwhMR/mDwnOfvW6CyyuSexQ5Scm?=
 =?us-ascii?Q?S4O1kpQAlUBMT5EwrasG7rijY1YxOYlrg78+3b685xrDWxtUnuj/9sd+dI3G?=
 =?us-ascii?Q?wprRLggRYqDBOmCoXp+UAQWiS4pqOCdYDrs4TskrLzj54V1ITIlwgXSPl/lG?=
 =?us-ascii?Q?UjBS/Mcg4hLLKvyuVqzQdqCalRRCOPVI3rd4F5qCLmxjTI8lb4tyfO9ECLo+?=
 =?us-ascii?Q?LpvjbgOu225D3kSGf2+mIe/YwA7jNgfMSt1qX8Ux7cxq2KgvNyoHfJiuMHqH?=
 =?us-ascii?Q?ykjc9nhJsh4OZOo7ge7ZgoE2oZ1CriOxLQxXHApWHKr3fPoFpqE5iVQCevel?=
 =?us-ascii?Q?Tidy/hz9DDfaEwODsV4Ezz9oEB3s7YDnvymjliZ/+HXH5/4Uf+4laUVAnAEB?=
 =?us-ascii?Q?BODB2vMq+9auqzn4USDJp16j2RXBKVqv3fhmYnmIyp6nMOTRBwYFIlaWSn6A?=
 =?us-ascii?Q?3A0Y2y94nEuny5wUL5+W9rsNYaHb/MaDlOxbPuqHaIs8nS694bktf2pXVp+r?=
 =?us-ascii?Q?BAa/xPXSV98GRsXv2w3j18EQ9n2dqZswZpDLkC5cCYXccH0CGbQ/IYt6Vlsb?=
 =?us-ascii?Q?m103puklIOy3WuvyTsuAAM4/c/jpiv3841J1y6XQYcnQMXX9UOgixG0spX8f?=
 =?us-ascii?Q?xuqfL7XJ/AXYN7tSY4kPVIuSHkzC6KU4qfAZqYIuR73q79h+kWjhknm1rzFB?=
 =?us-ascii?Q?+ChxWeI+PIwqdW+ibbOvSlD2mUpjOZOp0qHERbVrgocXUqWzlzDlHRepwsC7?=
 =?us-ascii?Q?yQDaPUw9aFqNxaCXRqOo+PuHDSqyEaDduryyKrETpvxjmOwZrdYO7xOQqeKI?=
 =?us-ascii?Q?uEjDTOhP5MgmrrPfvqjBaGEsmlwQCY+0jDr8RD4F3QJ3Lhx1Vr90EYHOtkZV?=
 =?us-ascii?Q?zCXF8VDGcYQZ+GlIK8fDFFrD4qxFGvxL710sc1oCnQTDJGwLTD4KcL+H8pMI?=
 =?us-ascii?Q?sEWKFjHkjivIGpYmvJp1kekiq8z9r9o8bn16+/JXxWTIVuh5Pvh6PVqj4Omv?=
 =?us-ascii?Q?TW1pXKyQNd9hc/ODWBQ80eZsx0rlTj3znbazhUOPQey8MDfjPQCko5oafDz2?=
 =?us-ascii?Q?Xcur6uvQ4wglUhf2RKj3oU6g1+QxgDzkBGbM8lUpM7UuazEEWPV0uyq5GGaZ?=
 =?us-ascii?Q?6q99DBwnjMv9S1Ah1rcwOeCsBx5cMeWUMdid7pt45nWWg6cVJroC9POhnGZx?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 610893f8-228b-45bb-1150-08daa62cbfb8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 17:20:35.3504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uD5USBvA7/yK1NHopLwSQ3Xl7ke0QtSWsurYR/TdnB1kUdEBEe/u4AZ5Ulb/InYBW6BtWQudv37xOyWlQk9HGRhrcDip0UQhrklV4B48t4c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7260
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Document_and_future-proof_preemption_control_policy?=
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

On Thu, Sep 08, 2022 at 05:06:02AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Document and future-proof preemption control policy
> URL   : https://patchwork.freedesktop.org/series/108275/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12090_full -> Patchwork_108275v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Wayne and Tapani for the
review/ack.


Matt

> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108275v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@display-2x:
>     - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#1839])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-iclb:         [PASS][2] -> [TIMEOUT][3] ([i915#3070])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb3/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-iclb:         NOTRUN -> [SKIP][6] ([i915#6344])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2846])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2842]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][16] ([i915#2658])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#4270])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-iclb:         NOTRUN -> [FAIL][18] ([i915#3318])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#2856])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#5286])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#110725] / [fdo#111614])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110723])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2705])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +122 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl7/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109278]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_ccs@pipe-d-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109284] / [fdo#111827])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@dp-frame-dump:
>     - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_chamelium@dp-frame-dump.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109300] / [fdo#111066])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1:
>     - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#2411])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb2/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-tglb1/igt@kms_cursor_crc@cursor-suspend@pipe-d-edp-1.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109274])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@dpms-off-confusion@a-dp1:
>     - shard-apl:          [PASS][34] -> [DMESG-WARN][35] ([i915#1982] / [i915#62])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_flip@dpms-off-confusion@a-dp1.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_flip@dpms-off-confusion@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][36] ([i915#2672]) +8 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#2672] / [i915#3555])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109280]) +3 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][39] ([fdo#108145] / [i915#265])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-edp-1:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#5176]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a-dp-1:
>     - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#165] / [i915#180] / [i915#62])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a-dp-1.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a-dp-1.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c-dp-1:
>     - shard-apl:          [PASS][43] -> [DMESG-WARN][44] ([i915#62]) +29 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c-dp-1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c-dp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#658]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl8/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#111068] / [i915#658])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109441])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][48] -> [SKIP][49] ([fdo#109441]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb5/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#5519])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_pwrite_crc:
>     - shard-apl:          [PASS][52] -> [DMESG-WARN][53] ([i915#165] / [i915#62]) +4 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_pwrite_crc.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_pwrite_crc.html
> 
>   * igt@prime_nv_api@i915_nv_import_vs_close:
>     - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109291])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@prime_nv_api@i915_nv_import_vs_close.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109295])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl7/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#1731])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl6/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-close-race:
>     - shard-iclb:         [INCOMPLETE][59] -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb1/igt@gem_ctx_exec@basic-close-race.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb1/igt@gem_ctx_exec@basic-close-race.html
> 
>   * igt@gem_eio@kms:
>     - {shard-tglu}:       [INCOMPLETE][61] ([i915#5182]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglu-2/igt@gem_eio@kms.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-tglu-1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][63] ([i915#4525]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb7/igt@gem_exec_balancer@parallel-bb-first.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][65] ([i915#2842]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [FAIL][67] ([i915#2842]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [DMESG-WARN][69] ([i915#5566] / [i915#716]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk6/igt@gen9_exec_parse@allowed-single.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][71] ([i915#454]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][73] ([i915#79]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-iclb:         [DMESG-WARN][75] ([i915#2867]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb5/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb7/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][77] ([i915#5519]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_sequence@get-forked@edp-1-pipe-a:
>     - shard-iclb:         [DMESG-WARN][79] ([i915#4391]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb7/igt@kms_sequence@get-forked@edp-1-pipe-a.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb2/igt@kms_sequence@get-forked@edp-1-pipe-a.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +3 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-apl:          [FAIL][83] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][84] ([fdo#108145] / [i915#62])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][85] ([i915#2920]) -> [SKIP][86] ([i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][87] ([fdo#111068] / [i915#658]) -> [SKIP][88] ([i915#2920])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][95], [FAIL][96]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl3/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl6/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl8/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl8/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/shard-apl2/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl7/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/shard-apl3/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111066]: https://bugs.freedesktop.org/show_bug.cgi?id=111066
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>   [i915#1731]: https://gitlab.freedesktop.org/drm/intel/issues/1731
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3825]: https://gitlab.freedesktop.org/drm/intel/issues/3825
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12090 -> Patchwork_108275v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12090: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108275v1: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108275v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
