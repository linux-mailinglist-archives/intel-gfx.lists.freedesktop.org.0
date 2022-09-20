Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 177D45BF042
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 00:37:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6432110E2D3;
	Tue, 20 Sep 2022 22:37:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84BB310E2D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 22:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663713470; x=1695249470;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NCxeUoVNFmrtfXrn1rpjBw5g350njCOE818fm6iFPnQ=;
 b=DFgCbt0u9Q1jh3KuOeUNA4VGeSjWS3X4gs3MkyATvEoxlMLXDC4DeA/y
 1bGxDbj2cVreu4qNNns94TZ4VTff0KXznscRpXS9iDc/fhLsi8Pa1L5Zq
 570rBcexFOAszwwzTiz4PNCClEPcbQLln9dsCpgWmleGmvrLxMEcOVY6u
 gri8IpBImP6selZ8L12z/c9o1KT35afDkHOEFU5SJbbhkBwCBvUjiIYLx
 N6t/pCqpAtb4OCgOr/TmG+htIw+3Aa7QXTwhycQ8KTWvww/7XAaCdg3Dt
 jcJxKfPva92+Iitv63UhDw5ENUPLYNb97W0SJQ631VUaTXrg/TUV2poEp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="298556459"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="298556459"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 15:37:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="652278752"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 20 Sep 2022 15:37:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 15:37:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 15:37:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 15:37:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lR/xiRTxq0VHwppUqTqXeteBNEipYhrRvxeaqR3k3OvQXbZHSC70BTz+gaiRVzJY94/wHh/Y28GVeRrtB8OoLBifZJACR03UmgPPBdkhnc5mDR7S+e5Tp/Xdt6ZAogbqn8ngqR4Elx220f+TFoRbx+KePYvJxGUa8Z6b8531Vcjz5iBzoyIyXw75PxZO9RY87I/v9Pg4jqOoLIWFed0b8dmkh0tIsq294okhaH8MvK9JudgoaJ+U8Stx3eCzLjRSncpxl7lLmPXLvmSgcf/NwPELgYwT5QkkAUIODbom07XmZcvHSxqmjUPi4xh4dEt+OM1ZE+74/SGyNSOg53C5FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1LhFaOQRohFPTQZNpeDwkuyXluWF7jqw4l4/WkeMjA=;
 b=YTuZxirKC3Y52NnDJWZ03iAmq2PWI+QL3Vk96qaVDNHZFBpBouK+N+fqJ/R/ajZSyJmRnP0+R2iP+k2LQ1miaukq9wSWsX1Gi5FdeULk4k8Tir/2DK5CHPO/j5PGckl1I+jw3AAc/biUAcWuc9KsraCaEhGK+Q+33yIjIKB1xXmTlQftMF47ZDXnonLTWn/qRwenJf6M6dQdKTFMZ0T7Ou/nE7VR5PgalOgZ/WxsKDsyxoB5EjQZRbHO7inhHi4Qrt0CpJ2fk9DRoDaSeR8+ZUOPaqx5pGMPoF8MHhYOdDgcxWaUxKVMnCf3iCaeHW37J7JWqGJJYezFNaFhZMlRWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BL1PR11MB5543.namprd11.prod.outlook.com (2603:10b6:208:317::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Tue, 20 Sep
 2022 22:37:45 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5654.014; Tue, 20 Sep
 2022 22:37:45 +0000
Date: Tue, 20 Sep 2022 15:37:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YypAtk4Ov+2k+wNE@mdroper-desk1.amr.corp.intel.com>
References: <20220919223259.263525-1-matthew.d.roper@intel.com>
 <166366910011.1410.5132114312646066967@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166366910011.1410.5132114312646066967@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR13CA0075.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|BL1PR11MB5543:EE_
X-MS-Office365-Filtering-Correlation-Id: ce5e3311-1908-47ba-2895-08da9b58bcb7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tkmJCGuZOOsaUFiAayd0YbQGYkJkoZ+ZXiLAKewR9eEU/eAldnc6dYBI8rjQt7bD1g3R/jHfZJ0zc8n9V4bbAhmoKcoL6dSmsbUfyHJN8oRuum18vICwihxA+gKO+CxwhVztyY6AljblJj9vMJTskg5cFQUL88EFmXAkUdVss8LRJyd4f6o3BYeXSOpH6u2l3MoRXYbBZmsIhL6UyqGzR55/ziCUgZfqzkgDyD4uqmaPyc+BNRMDYroGekPJgh2CXpt2jgvrnl1coWjM8A0Qszegp08WjyM55P1on8dgrEy7bzXGhhK0OhXWpE4BbURZgKV4h83BWjZ6Tou3Uv8mJi20wHkSMnJSN84pUsP5XvPmDjD+fXwwryL+A3YERe6RuVaAf3+0HUI/9W9r1KJFs5zZkCOikK+aufr4x06mkzut7s3z7gMopzcgtxOcGMdGKAs73+CRmvvP9YRebeOoEr9jWwGDQ9Oll6XX9iPpVXSmziRdrdg4L2qinUVRGXL0cLSnJotrjuEblUIJEx0mOt1qL18ktRtnP0VC26dP14KhPvpJVVcGRvdv7v3Uccgrpsokb3wtXjqMbkUWoXjCauKXc9IVJ6lePAZuMsGopsDyqMzhFJi9V4eCRg/8rouqQx/rM68Zn8WFD5tuqL6TShhOqIMZtXywAM1eXnmeWRLjerhR3bS7jozxm01Zjt7cVLs2bIV6+V0N2XXLsQz7TGSTT0HoAeqAfkGef6XWP0CTBWG28TAFiTwS5lxWZ4uQSqEbJnQBUOXO4mU0jeJnZw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(366004)(346002)(396003)(451199015)(5660300002)(30864003)(83380400001)(2906002)(316002)(966005)(41300700001)(8936002)(66946007)(186003)(38100700002)(66556008)(86362001)(82960400001)(66476007)(478600001)(26005)(6486002)(107886003)(6916009)(6666004)(6506007)(6512007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jd7jUDcWvPhlBTzin01jaA9z9e4pv1KUTjDXok6L2x3xUbQthmJaqNu+EUNp?=
 =?us-ascii?Q?p3P7XwgO5tOXm7PMylBGyud7MJJVhVwDyPGB/UchQBfsBQBqh6RJ9JsmEa2B?=
 =?us-ascii?Q?9U0l0hxuDBwYdaIPaihD1cSe1wmIxcyBJSlnz+hxsxV1yFJY2nTAP1i07y4Q?=
 =?us-ascii?Q?WGLlbMBwtolmemC5r5dDFSNL+uYoAAN4OO6gbPdaNQVlSzkHQtjcDu7wvXno?=
 =?us-ascii?Q?rV6n6uLj2iTPHUCltAVUR3I56ywJxrQ9VwpSeh1aN0LmN0sFlt3Gu6gorlJ+?=
 =?us-ascii?Q?FUxVX1PHVBwJlOgnHs6ZykJDUXcqo4mFdSCLyxw2S+trq3jkHfElBwPtD1Hl?=
 =?us-ascii?Q?pPrlCT3orFi6Ly06Y+S5c7t9cBgwMKwW3oAlrlQ/dZpstyBTCygiuTsPJuMy?=
 =?us-ascii?Q?/cRkK4zRfn6mplgjRE0jsapC7Jah7kPgNea0IKRtI7QMaeDil+XZw/haq28P?=
 =?us-ascii?Q?2QLX/L4aF7pIQ9DiVu/CrTFnpQ0xJhVS8Z6Uy9q5hQGdPBz64rJlJXeymbop?=
 =?us-ascii?Q?Thpfce4nGcAOxKrjpm3K+7uJsWl8+7CZSfqKFc59Qw9iyk0cQzb5GLTiPtcc?=
 =?us-ascii?Q?pac7AaS9njF02pFbJ8o3ulLbVO83AFjEE+6+oUlab0LQCyp9f5A1732m+rAx?=
 =?us-ascii?Q?xjFQSS+IZlwg/4Xu7f7F4Yq4WlIVTL3yXNK4mR/0LJivuM7j8TN4Zz7nIjLY?=
 =?us-ascii?Q?BIrSvTeV4nip12RmOjtCcs6V95JAuUC10xQ76H8qmffJY3Q27ZZZqFcVikR8?=
 =?us-ascii?Q?+yuhDW+QcAsGxv/+ahtctcTswkXk408QzlYjykXi/1uhTQ1QrJ6OL0ix1SrG?=
 =?us-ascii?Q?EMDV2x9jhoq5OC4pk5wxFxElAYe3BpgjYxxt8433DW9wsaKVJhkG/daSvMYr?=
 =?us-ascii?Q?bfGFHJBYCJyPpO8l+OGj4BStGxK58j5fYIvW6vYVe4JFzsjR06DTaJcZgM5w?=
 =?us-ascii?Q?Tiu1DwaH5eHm8o4IVYbS9Vr+tAKkuxrxgeNuN4bdYgzWRpEaimzdO+F6VAOc?=
 =?us-ascii?Q?cwshTiDnHMUhA70tf7A65XvM78T0RP2RtbGIuddLIg9ULihzSzhmi6gzkfl0?=
 =?us-ascii?Q?0wcgEKnhV9wN6N9Kz3B6ZVVSgzsMLQDcLrDB0hoHldQcB9acHIrWjO6p+/7u?=
 =?us-ascii?Q?mQ6NlEaPpTocXBvfzOIBDgcwKFGrSd6UoRzx0RMq7G4PkSXFqe95li7zRNic?=
 =?us-ascii?Q?XiPwI+VK2McqoKQGp6zgd7brIl8x+lCQs7su6k/gVDnsgmihtEdIWqkYeG8i?=
 =?us-ascii?Q?bEDeC/FcATICCJ0dAsQ8t6HyWDGbOnQeSAYUdNmCsPOebahcrur6+YIQ/9r+?=
 =?us-ascii?Q?AwiKuUt5+SfUlDsAPEjLI5Z6q/Vqou6CV1KcjApw7fT/Exxg6WOTQMKokkmh?=
 =?us-ascii?Q?z5jM7OChhQekkZdaOjTRfgJbsdyG1NeEeqmOCgwsS5zry4SkvvlVtuo8YpZr?=
 =?us-ascii?Q?0FSXxi3CNSUdTdHzBqxXr9jzq3DSrZtd5NaLfxb91IXL2nj0rqn83i0XJBUP?=
 =?us-ascii?Q?sl0OrCSoew/Y/l/cJT89fROzATREKrrsJRT4/zpQ+VsWqr1hpxWAtAEWXTt/?=
 =?us-ascii?Q?KPPSctF4WJ49RpYSjqxsu7V2GLkgthHSwElPcX4u6KsXzL7nx4wkXc7sVLw6?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5e3311-1908-47ba-2895-08da9b58bcb7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 22:37:45.4393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /gagQxjmkVdlphYWkr8QTUnunVcmQyluaRbLf2/hlzTdf5Acmi5uO4GQ7tQ2dFr0MJ6J11UyNpkXCEomGzJsiUsW295sKGhSXZQw8jnGG2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5543
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRXhw?=
 =?utf-8?q?licit_MCR_handling_and_MTL_steering?=
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

On Tue, Sep 20, 2022 at 10:18:20AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Explicit MCR handling and MTL steering
> URL   : https://patchwork.freedesktop.org/series/108755/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12158_full -> Patchwork_108755v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108755v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108755v1_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_108755v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@i915_suspend@debugfs-reader.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb1/igt@i915_suspend@debugfs-reader.html

Looks like the system simply never came back from suspend; no errors in
dmesg.  Does not appear related to this series.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-skl:          ([FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13], [FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [FAIL][21], [FAIL][22], [FAIL][23], [FAIL][24], [FAIL][25], [FAIL][26], [FAIL][27]) ([i915#6599]) -> ([FAIL][28], [FAIL][29], [FAIL][30], [FAIL][31], [FAIL][32], [FAIL][33], [FAIL][34], [FAIL][35], [FAIL][36], [FAIL][37], [FAIL][38], [FAIL][39], [FAIL][40], [FAIL][41], [FAIL][42], [FAIL][43], [FAIL][44], [FAIL][45], [FAIL][46], [FAIL][47], [FAIL][48], [FAIL][49], [FAIL][50], [FAIL][51], [FAIL][52])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl1/igt@runner@aborted.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl10/igt@runner@aborted.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl6/igt@runner@aborted.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl4/igt@runner@aborted.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl7/igt@runner@aborted.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-skl9/igt@runner@aborted.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl10/igt@runner@aborted.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl7/igt@runner@aborted.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl10/igt@runner@aborted.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl4/igt@runner@aborted.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl6/igt@runner@aborted.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl7/igt@runner@aborted.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl4/igt@runner@aborted.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl6/igt@runner@aborted.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl10/igt@runner@aborted.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl10/igt@runner@aborted.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl6/igt@runner@aborted.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl7/igt@runner@aborted.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl4/igt@runner@aborted.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl10/igt@runner@aborted.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl7/igt@runner@aborted.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl1/igt@runner@aborted.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl6/igt@runner@aborted.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl1/igt@runner@aborted.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl1/igt@runner@aborted.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl1/igt@runner@aborted.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl9/igt@runner@aborted.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl4/igt@runner@aborted.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl9/igt@runner@aborted.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl9/igt@runner@aborted.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-skl9/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108755v1_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-apl:          ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) -> ([PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [FAIL][101], [PASS][102]) ([i915#4386])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl2/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl2/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl2/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl2/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl1/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl1/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl1/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl1/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl2/boot.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][103] -> [SKIP][104] ([i915#4525])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_exec_balancer@parallel.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb5/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-glk:          [PASS][105] -> [FAIL][106] ([i915#2842])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [PASS][107] -> [FAIL][108] ([i915#2842])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglb:         [PASS][109] -> [FAIL][110] ([i915#2842])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-apl:          [PASS][111] -> [DMESG-FAIL][112] ([i915#6864])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@gem_exec_flush@basic-uc-set-default.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-tglb:         [PASS][113] -> [FAIL][114] ([i915#4171])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@gem_softpin@evict-single-offset.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb1/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][115] ([i915#4991])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +57 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][117] -> [FAIL][118] ([i915#6537])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/igt@i915_pm_rps@engine-order.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color_chamelium@ctm-red-to-blue:
>     - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@kms_color_chamelium@ctm-red-to-blue.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#2346])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][123] ([fdo#109271])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][124] -> [FAIL][125] ([i915#4767])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-apl:          [PASS][126] -> [DMESG-WARN][127] ([i915#180]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][128] ([i915#2672]) +5 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][129] ([i915#2587] / [i915#2672]) +2 similar issues
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>     - shard-glk:          [PASS][130] -> [DMESG-WARN][131] ([i915#118] / [i915#1888])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
>     - shard-iclb:         [PASS][132] -> [SKIP][133] ([i915#5176]) +2 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][134] -> [SKIP][135] ([i915#5235]) +2 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-apl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr@psr2_sprite_plane_onoff:
>     - shard-iclb:         [PASS][137] -> [SKIP][138] ([fdo#109441]) +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb1/igt@kms_psr@psr2_sprite_plane_onoff.html
> 
>   * igt@kms_vblank@pipe-d-wait-idle:
>     - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#533])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [PASS][140] -> [INCOMPLETE][141] ([i915#5213])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@perf@stress-open-close.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@perf@stress-open-close.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][142] ([i915#658]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@feature_discovery@psr2.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglb:         [FAIL][144] ([i915#6268]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][146] ([i915#4525]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@gem_exec_balancer@parallel-bb-first.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][148] ([i915#2842]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][150] ([i915#180]) -> [PASS][151] +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@gem_workarounds@suspend-resume.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-iclb:         [FAIL][152] ([i915#3989]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc5-psr.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb3/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [DMESG-WARN][154] ([i915#5591]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb5/igt@i915_selftest@live@hangcheck.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb3/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-badstride:
>     - shard-snb:          [SKIP][156] ([fdo#109271]) -> [PASS][157]
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/igt@kms_frontbuffer_tracking@fbc-badstride.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-snb2/igt@kms_frontbuffer_tracking@fbc-badstride.html
> 
>   * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>     - shard-glk:          [FAIL][158] ([i915#1888]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][160] ([fdo#109441]) -> [PASS][161] +2 similar issues
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@kms_vblank@pipe-b-accuracy-idle:
>     - shard-glk:          [FAIL][162] ([i915#43]) -> [PASS][163]
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@kms_vblank@pipe-b-accuracy-idle.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-iclb:         [FAIL][164] ([i915#2684]) -> [WARN][165] ([i915#2684])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][166] ([i915#2920]) -> [SKIP][167] ([i915#658])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][168] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [FAIL][169] ([i915#5939])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl8/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl6/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl7/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl3/igt@runner@aborted.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-apl1/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][180], [FAIL][181]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][182], [FAIL][183]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb8/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb1/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb8/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-tglb7/igt@runner@aborted.html
>     - shard-glk:          ([FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk1/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk2/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk8/igt@runner@aborted.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk2/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-glk9/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][193], [FAIL][194]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][195], [FAIL][196]) ([i915#3002] / [i915#4312] / [i915#5257])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb7/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb5/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb4/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/shard-iclb6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#6864]: https://gitlab.freedesktop.org/drm/intel/issues/6864
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12158 -> Patchwork_108755v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108755v1: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108755v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
