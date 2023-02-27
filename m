Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2956A47BC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:19:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E902110E464;
	Mon, 27 Feb 2023 17:19:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9F3310E442
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677518353; x=1709054353;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=cG+CyziFVh16oZNfA5+Z9pdvsEt0MtZJItVT7Y07ggo=;
 b=XuyiMq1Ct0t5OiC2lkbykRqH9g65HgrGwcRMtccURSOJ+FBBEjnS4Azw
 FKm4uw327puyK45YFihMF70/ObfPw6cTo0HhLBSsx0IXpiIPbS7v6TwsK
 e895J8OnMla/oAxfjcaHtws2YTZxvhBzdjndIHdugvjWKqcjwC1gKHJfd
 cYbs1v3OUU0+D0S1NIbqeCIVrJpWw7QezlMk6yhFIz5UCD3iABLFi+THh
 /sX5gsxTFRkwSzTLfyqZlIv9NyQ8+RjyOYJq3DzisxC8I1WSKPAHjmVev
 2waPLS/wn8F+kwUryFyXU/ZfhgankMHovbsjVRZnU7wJJwvwzJpX039E/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="336193544"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="336193544"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="623678960"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="623678960"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 27 Feb 2023 09:19:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 09:19:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 09:19:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 09:19:11 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 09:19:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JC3bUrB4y7Kr8L5d6iJBTpJGtOiC1E4A7kex07oYsgu9nofykJqdzctjWnB8n3GrUyEcMvfr/zlPvBphEqz/6gumxm3DdmMwqX4A4D6EW9PXmzl3qZzMR6Qw9C5Ey5fFTX+3CSVuzv9rt2pCxK5qBgZfibG96sJ198bja9+q5+WRc5Tywg2/nZ6uUnNjcgGdjzWjxmLj45dfmvEFZRl/7d1Z42Ecacbgn7ah24c4flGUDTMqKg58PZAWTyQV5BIivVTn3Bg7D9k6hJH18WQB78+OegBUcGZnOICETNI6TTUzrvU2RSGUEBfWN22ksR6ZFQ+IdS68bleOM1pQwq/iDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u56zQevmjzZhHh726TtfFe4So+vQQxmpKmCKFn7SFMU=;
 b=lX8/hmlO2lptbq7YI6noBLAtNTHnN0Dv+gMvM039wYHnATXHnn+R0s8/+fhOChJebrEPKUP33DMjeJkz7tREwU5p1iqm7KQ7/F+ckCDW6B+EdTuW3RSd6oaFoAgceZX6IlzUcbXOTQ8ibbYMntOeNBFv1m0QuiA6CAaql+/GWC9hzCrReLDtwVhoxoJMgNJT6TPLZVt+sR0kt96NJ2h2iLRjiSibvUVtgjBB7uuZHilWVZ+f50PAvgktoyNiGD7y0FBQeAlPSQiIS/ALTu0XCLidv7wLypaQnZQYD1jDwxSjwJymaUr+mMhqBre8493ZnwNmJn2lduDbJm8LNcu3Uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7808.namprd11.prod.outlook.com (2603:10b6:8:ee::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.29; Mon, 27 Feb 2023 17:19:00 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6134.025; Mon, 27 Feb 2023
 17:19:00 +0000
Date: Mon, 27 Feb 2023 09:18:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/zmALQejAMvkVCm@mdroper-desk1.amr.corp.intel.com>
References: <20230221193038.2876693-1-matthew.d.roper@intel.com>
 <167702201854.16439.5886542775724567692@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167702201854.16439.5886542775724567692@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR08CA0004.namprd08.prod.outlook.com
 (2603:10b6:a03:100::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: f1ed5fff-20dd-4301-0c92-08db18e6b73d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sMEqapO+E+o+M/kBLsf9di7yDAi7ldNFtfUBN9D7rwHNA2K4kPSL17j9X8hE8Gcbf9XoMhAu+JVCXt6DajvF7Di5x4uI+FB64X0hUrLoGK3Hjse6YQ3Z2DN6gmHuBB6Dr23uinNlMIZAmUDnz5qXRWxRpIDlWmcRqWgPZIwDuXz0cpfS73jiKkDXaivbW9ikOOessz5zoTU1Zyi5gwqZxMTMerygz0u6wN5/Zrkous8PGMVRL9qL92oMzmtNHptw+J4eTsUCVzoTS1hP7KdYN+Yj63ayVd/N+ZLY5u91AUzxcD+Ky4rI48nKR2HqN2HiK2hy3h9Awdf0JFDhG8Tv5orQGKsjzMO0kGHJa/U76tHK4xgi8hk6GmmjkmqTuL76TKra3T0J4Wj7xpKgmDWXFFfofmCOoCVvUr6ymZq9duhUyHNNcXUe2Iiios9l5IvYd1F0o53FwEE1mFBgWbeyHBtAZuyferg45+84RoTU2aCAdCZCPniMJB35U0mqOVVLV8ul0AsVS2kQHlqnTUAQdItJYWg63WgJ3gkCssYbqD/hj6ZE0Hqeoy0PvF/ZPIN9LuegtEcEZIWilNY7OMYegx4eTKehW99wKOt0S19RktQxwtoYS0ybEiJizRcBkkMiaMIeWha2SV4moSbjhnwrvOsHM6BlGc7hpfv9yOvbUMc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(396003)(366004)(376002)(346002)(451199018)(316002)(6486002)(966005)(8936002)(5660300002)(30864003)(478600001)(2906002)(66556008)(6916009)(66946007)(66476007)(41300700001)(15650500001)(82960400001)(86362001)(38100700002)(26005)(83380400001)(6512007)(6666004)(186003)(6506007)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?znNc16KR/wAewGcSZj2rpckpngacajNPDUg4PdyWcZMRU/tjf6ztc6/TG3dk?=
 =?us-ascii?Q?IpIhnpgga/uwtEPp8JDIjHDUEzBPSStAzpa2JcuL+k7gNNAsYrbzsA+PnYhO?=
 =?us-ascii?Q?s3T04y1e+iYsetE14/h1mOxr/z+wFfrBe826fgel4XGJw35tT84FbSw3rKDg?=
 =?us-ascii?Q?yS2FfnzhkijsT/KB+nVjnY6PP37uDtPJI/UAP8q9LNjqh7EiqZSP7cngBzAV?=
 =?us-ascii?Q?RXVko8edagihDIy+VhFfGltUxg21frh9fkLF0dYA1JMIBBkhMePj0NkdkmK3?=
 =?us-ascii?Q?NGM/MKHnlSosLC9rcHCjItnLx6y3hXCjjTMSwQ3942fpAUzjFCNpDgNcWwoi?=
 =?us-ascii?Q?ESCLqgDNE60iF0bN1kfwORk1rgIGTZ8iGBCB6kkVHHDnGRsYvOmrlmDM68FD?=
 =?us-ascii?Q?uTWIsoUyAgLEYX0THmDR0lBAaAtzsxmUrYMFH+cBgEyGoy0b0xCR22wXy55p?=
 =?us-ascii?Q?znQOrO56jYklBqnoRqd/SNiwsscohEda/7mVirCRIHzOMH0ZFhTIoCkLqVM9?=
 =?us-ascii?Q?fX8+Uq5RSJ8JhUzJZGnajbTC5ySCERmKbDnZ4ylPMPAMePYEYQmNULji6u2w?=
 =?us-ascii?Q?ib3OjvUl8NKDoKWySl5LKoxoXWDWXD1cAEw4h1L/mEd31WUamVcEqnxPirmg?=
 =?us-ascii?Q?zzbz67BR1+yRavLFMvj825QiHmYmETCHEccmHtYoCR+zkZaMkwDtTFF64Y1h?=
 =?us-ascii?Q?Adw3uYa4e8yrLv35sCLzMqkbOuDE0/9zGT8hgZmNNNTMKHakVp0yTPo93LJm?=
 =?us-ascii?Q?S0G9ZIWNil5GUdFzAWyJQqlOc6n53AShtTFOJsgEIHs2/uYsVe9QIABhImS8?=
 =?us-ascii?Q?s0/m401ikVGFNEJGUSrqnpPe7u9wF69x2R7DNTeVaY4ZjA2IlcVVH+mh4kSc?=
 =?us-ascii?Q?a8dmq34YaxRGY4BzwNpokA9sFv2mu0hug+r0Mz+1ippBE4rSNbRKh2XVYvxR?=
 =?us-ascii?Q?3D/tgV60VPZkoQI0x8eZ8Dxt7ZtGjW4/Trx1I2t4q/ARIHxVrTvlup9rS+1Z?=
 =?us-ascii?Q?wxmahnX4q4/I1F8Kfvzcle2WlLYanQkx7nTxaUdaXrPMOuG3VhKXJdKDvqNC?=
 =?us-ascii?Q?wMMbTvei1aZF831bYu6NJ9E6uJ4p0igF4MBcLHBatbuDjxAsxKVfd1NcdXBW?=
 =?us-ascii?Q?NeIfJRYbVL4ADyzudfz2XDlnZPMkfkbYe9qWR9XE2Xl1SbtMDKv/+FGemLhI?=
 =?us-ascii?Q?bIeWu7+R4Z4PchjAcP1wyTSKoHpNCOfhTdKiav7l5B6214JHU6sQwSxX20n9?=
 =?us-ascii?Q?UyLlirZNkmpq5wpwkVnLSnXJrIhmu45Pw16JFOg03cfOfA916Y5juBIn8hsn?=
 =?us-ascii?Q?cbSeEayf0Uzz0vEOs4pUg9ovbs20XbrhZbUN8/c+Tnr31O+xUQ4VRlEeGzkE?=
 =?us-ascii?Q?2tNEEZVCmbSATfSz46hAh1MNfSeUzW4HrdUk7lYDGAtCF99wLIaLtYyMUYsp?=
 =?us-ascii?Q?8UT4wWx1BEvwhXB7QFvySO0trykjvM7UZ2rivjO7z4HaSXyom4umV/D2r8rX?=
 =?us-ascii?Q?NMZXlng8B2K3IA5Fq1d9BlRN5ug+9bOBFeA9UH3j6MuZeKhThAspue0CN4Tt?=
 =?us-ascii?Q?EyFp1xVFafZdL3u1nsIDQdyfldjlNxez0lGMye9ChEalPF0+QwwW3BrNsmUy?=
 =?us-ascii?Q?pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1ed5fff-20dd-4301-0c92-08db18e6b73d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2023 17:19:00.0552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9pvqbo62YvR8LH06RAHRjcpLPdCVEVZmQ+AVa6pvcqNhR0IPFE+xA1ZhX7B1PgpkpQYdd3hcdpLq9UCs3fdq6W/5Pnh1qPjoIHFe40S3Cco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7808
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen12=3A_Update_combo_PHY_init_sequence_=28rev2=29?=
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

On Tue, Feb 21, 2023 at 11:26:58PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gen12: Update combo PHY init sequence (rev2)
> URL   : https://patchwork.freedesktop.org/series/114233/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12768_full -> Patchwork_114233v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks Matt Atwood for the review.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/index.html
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_114233v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-10:      NOTRUN -> [SKIP][1] ([i915#7701])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@device_reset@cold-reset-bound.html
> 
>   * igt@fbdev@pan:
>     - shard-tglu-9:       NOTRUN -> [SKIP][2] ([i915#2582])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@fbdev@pan.html
> 
>   * igt@feature_discovery@display-2x:
>     - shard-tglu-10:      NOTRUN -> [SKIP][3] ([i915#1839])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@feature_discovery@display-2x.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-tglu-10:      NOTRUN -> [SKIP][4] ([i915#3555] / [i915#5325]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-tglu-9:       NOTRUN -> [SKIP][5] ([i915#6335])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-tglu-9:       NOTRUN -> [FAIL][6] ([i915#5099])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-9:       NOTRUN -> [FAIL][7] ([i915#6117])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglu-10:      NOTRUN -> [FAIL][8] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#2842]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-glk3/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu-9:       NOTRUN -> [FAIL][11] ([i915#2842])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu-10:      NOTRUN -> [SKIP][12] ([i915#4613]) +1 similar issue
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-tglu-10:      NOTRUN -> [SKIP][13] ([i915#4270]) +3 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-tglu-9:       NOTRUN -> [SKIP][14] ([i915#4270]) +1 similar issue
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu-10:      NOTRUN -> [SKIP][15] ([i915#3297]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu-9:       NOTRUN -> [SKIP][16] ([i915#3297])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-tglu-10:      NOTRUN -> [SKIP][17] ([fdo#109289]) +4 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gen7_exec_parse@load-register-reg.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][18] -> [ABORT][19] ([i915#5566])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl1/igt@gen9_exec_parse@allowed-single.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-tglu-9:       NOTRUN -> [SKIP][20] ([i915#2527] / [i915#2856]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu-10:      NOTRUN -> [SKIP][21] ([i915#2527] / [i915#2856]) +2 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_hwmon@hwmon-write:
>     - shard-tglu-9:       NOTRUN -> [SKIP][22] ([i915#7707])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@i915_hwmon@hwmon-write.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-tglu-9:       NOTRUN -> [SKIP][23] ([i915#658])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][24] ([i915#6590])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-tglu-10:      NOTRUN -> [SKIP][25] ([i915#1902])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu-10:      NOTRUN -> [SKIP][26] ([fdo#111644] / [i915#1397]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-tglu-9:       NOTRUN -> [SKIP][27] ([i915#3547]) +1 similar issue
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-tglu-10:      NOTRUN -> [SKIP][28] ([i915#5286]) +4 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglu-10:      NOTRUN -> [SKIP][29] ([fdo#111614]) +3 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][30] ([fdo#111615]) +5 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglu-9:       NOTRUN -> [SKIP][31] ([fdo#111615] / [i915#1845] / [i915#7651]) +7 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][32] ([i915#3689]) +5 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl1/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][34] ([fdo#111615] / [i915#3689]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_ccs@pipe-c-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][35] ([i915#3689] / [i915#6095]) +4 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_ccs@pipe-c-crc-primary-basic-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][36] ([i915#6095]) +6 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886]) +5 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-tglu-9:       NOTRUN -> [SKIP][38] ([fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-tglu-10:      NOTRUN -> [SKIP][39] ([fdo#111827]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu-10:      NOTRUN -> [SKIP][40] ([i915#7828]) +9 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-tglu-9:       NOTRUN -> [SKIP][41] ([i915#7828]) +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [FAIL][42] ([i915#315] / [i915#6946]) +3 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_color@ctm-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_color@ctm-red-to-blue:
>     - shard-tglu-9:       NOTRUN -> [SKIP][43] ([i915#3546])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_color@ctm-red-to-blue.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-tglu-10:      NOTRUN -> [SKIP][44] ([fdo#109279] / [i915#3359])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-tglu-10:      NOTRUN -> [SKIP][45] ([i915#3555]) +9 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-tglu-9:       NOTRUN -> [SKIP][46] ([i915#1845]) +9 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-tglu-10:      NOTRUN -> [SKIP][47] ([fdo#109274])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
>     - shard-tglu-10:      NOTRUN -> [SKIP][48] ([i915#4103])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-apl:          [PASS][49] -> [FAIL][50] ([i915#2346]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu-10:      NOTRUN -> [SKIP][51] ([i915#3528])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglu-10:      NOTRUN -> [FAIL][52] ([i915#4767])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu-10:      NOTRUN -> [SKIP][53] ([i915#3469])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-tglu-9:       NOTRUN -> [SKIP][54] ([fdo#109274] / [i915#3637]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271]) +36 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-snb7/igt@kms_flip@2x-nonexisting-fb.html
>     - shard-tglu-10:      NOTRUN -> [SKIP][56] ([fdo#109274] / [i915#3637]) +7 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2122])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@bo-too-big-interruptible:
>     - shard-tglu-9:       NOTRUN -> [SKIP][59] ([i915#3637]) +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_flip@bo-too-big-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][60] ([i915#2587] / [i915#2672]) +4 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-tglu-10:      NOTRUN -> [SKIP][61] ([fdo#110189]) +26 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +25 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-tglu-10:      NOTRUN -> [SKIP][63] ([fdo#109280]) +34 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu-9:       NOTRUN -> [SKIP][64] ([i915#1849]) +40 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_lease@lease_unleased_connector:
>     - shard-tglu-9:       NOTRUN -> [SKIP][65] ([i915#1845] / [i915#7651]) +46 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_lease@lease_unleased_connector.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-tglu-9:       NOTRUN -> [SKIP][66] ([fdo#109289]) +4 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-tglu-9:       NOTRUN -> [SKIP][67] ([i915#7128] / [i915#7294])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@coverage-7efc:
>     - shard-tglu-9:       NOTRUN -> [SKIP][68] ([i915#7128])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_plane_alpha_blend@coverage-7efc.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-a-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][69] ([i915#5176]) +7 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu-9:       NOTRUN -> [SKIP][70] ([i915#3555]) +4 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
>     - shard-tglu-9:       NOTRUN -> [SKIP][71] ([i915#6953] / [i915#8152])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
>     - shard-tglu-9:       NOTRUN -> [SKIP][72] ([i915#3555] / [i915#6953])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-tglu-10:      NOTRUN -> [SKIP][73] ([i915#658]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-tglu-10:      NOTRUN -> [SKIP][74] ([fdo#111068] / [i915#658])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu-10:      NOTRUN -> [SKIP][75] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-tglu-9:       NOTRUN -> [SKIP][76] ([fdo#110189]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu-9:       NOTRUN -> [SKIP][77] ([i915#5461])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu-9:       NOTRUN -> [SKIP][78] ([fdo#111615] / [i915#1845])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][79] ([i915#5465]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-snb4/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - shard-tglu-9:       NOTRUN -> [SKIP][80] ([fdo#109274]) +2 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu-10:      NOTRUN -> [SKIP][81] ([i915#2437]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglu-9:       NOTRUN -> [SKIP][82] ([fdo#109295])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-tglu-10:      NOTRUN -> [SKIP][83] ([fdo#109295])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@v3d/v3d_mmap@mmap-bad-flags:
>     - shard-tglu-9:       NOTRUN -> [SKIP][84] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@v3d/v3d_mmap@mmap-bad-flags.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pad:
>     - shard-tglu-10:      NOTRUN -> [SKIP][85] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@v3d/v3d_perfmon@get-values-invalid-pad.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][86] ([i915#2575]) +6 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-10/igt@vc4/vc4_create_bo@create-bo-0.html
> 
>   * igt@vc4/vc4_label_bo@set-kernel-name:
>     - shard-tglu-9:       NOTRUN -> [SKIP][87] ([i915#2575]) +2 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-9/igt@vc4/vc4_label_bo@set-kernel-name.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - {shard-rkl}:        [SKIP][88] ([i915#3281]) -> [PASS][89] +11 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@feature_discovery@psr1:
>     - {shard-rkl}:        [SKIP][90] ([i915#658]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-3/igt@feature_discovery@psr1.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-6/igt@feature_discovery@psr1.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-rkl}:        [FAIL][92] ([i915#6268]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - {shard-rkl}:        [FAIL][94] ([i915#2846]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - {shard-rkl}:        [FAIL][96] ([i915#2842]) -> [PASS][97] +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_pread@bench:
>     - {shard-rkl}:        [SKIP][100] ([i915#3282]) -> [PASS][101] +6 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-4/igt@gem_pread@bench.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@gem_pread@bench.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - {shard-rkl}:        [SKIP][102] ([i915#2527]) -> [PASS][103] +3 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-4/igt@gen9_exec_parse@shadow-peek.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [FAIL][104] ([i915#6537]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl7/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [DMESG-FAIL][106] ([i915#5334]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl1/igt@i915_selftest@live@gt_heartbeat.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - {shard-tglu}:       [ABORT][108] ([i915#5122]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-tglu-1/igt@i915_suspend@sysfs-reader.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-tglu-3/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [FAIL][110] ([i915#4767]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [ABORT][112] -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#4098]) -> [PASS][115] +3 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][116] ([i915#1845] / [i915#4098]) -> [PASS][117] +6 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-3/igt@kms_vblank@pipe-b-query-idle.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-rkl}:        [SKIP][118] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12768/shard-rkl-4/igt@prime_vgem@basic-read.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#315]: https://gitlab.freedesktop.org/drm/intel/issues/315
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5099]: https://gitlab.freedesktop.org/drm/intel/issues/5099
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#7294]: https://gitlab.freedesktop.org/drm/intel/issues/7294
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#8150]: https://gitlab.freedesktop.org/drm/intel/issues/8150
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12768 -> Patchwork_114233v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12768: d9a0aa492e367314a1681974bf178363a4b5587a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7168: 165df656261863684067cd53f95c3a301e67fa24 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_114233v2: d9a0aa492e367314a1681974bf178363a4b5587a @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114233v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
