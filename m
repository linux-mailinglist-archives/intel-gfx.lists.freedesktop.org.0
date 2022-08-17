Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E60B59690E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 07:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4B210ED40;
	Wed, 17 Aug 2022 05:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E06A10ED00
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 05:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660715846; x=1692251846;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=vff716FRrH7sqsgE+GITupITZjmalM9yAB91C3hB+54=;
 b=FCruupGdNL+4ymFVlxSuNlIGxcu8KhMB8a7/tAVhWkGQ1da1byk1wHdK
 Vic62AYCTDMw2qKH5B2vffpDBXRzhgdpFEfJtwzHl3oNUtmN5ZrLwTd0L
 ZXyJ7pl73yZdFhZ9phFe+ylZaVR1ek1e7lHRKsm8w4yCUtp9OZtgXyBOd
 uwSNtfyMCH5x5qgyJ/6kHQDkHJwbhglMBxZNXfXI4KZ9hgROJwy/tXw8l
 +gErkQe6UDqwbRouYnhny7wGnP3ocGJwRn7YIU2NSa1cn2ahG8+XWChsQ
 PqUUlWTd+RqC6Csi9SqnqeswZ0+7TrE8rAQjVp04rKROmsVIAAYZQn5UM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354153245"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354153245"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 22:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="557987879"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2022 22:57:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 22:57:25 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 22:57:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 22:57:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 22:57:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hj9M++SQyga5Z5qBhmJEa2o6Bzg/PG7scc52piT7Gy+MvDJBo/fhMXHNRh4K1bYs7IewSQYliwAGvp473K/T3wxS7kxr7E0oUHzg5mukArsVUm2pkbUCj5JH3xgxZh5JL6KqX18uXV1jC7/KRAYR1zjRqgdb51+cp1fbomr9g6ytoT2pTQX9NTQX9ZXWp69raSAZ6bI/+GfmyYAO1DNq2pv9MW1suH+bbTt7Np1KMVGndZWcqLq38ZunY4OLCCSz3+qcDrRKDNdpkyUxRmMY/etULRtUhDoIfDW1MqMo3kcGwm2ggS5Ew8M7H436NI4zXNrQJc1weI4GA8jKtogzuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kygNI06RwdC+LGNBd2NO8WJFy6vQfrv5GgAHHnbtrhQ=;
 b=VsjawBcOoCToVyrhaF9Y5jSEDcQ3BXm7OvtI/LTmgVchDBhI26b+/7gUJLy9xsfXCS+CLObRdGL/1dCJ4l4TlRdWVxKAbeRnfICUed9L7R3GPkAtKAAlBS++MawQGFcjTPuIZ5bHBu1BjEcbKMVrAHBTJ/Oxtaf7iOFBhFHGGrEI2McCUAl4TdIPYwBsc/AsExN9rljl5Sa+m78oy71IR3gHWTSrVT6aRQXnRspSH7nqOluVJ7PZvmTsSroBXueCszHuxKyuMROpn3N+/rAfv4KiN0eg+AmUJspHkCMHylpwloLpy4IQeTZicoiPJmiFMg5gwUhAtqKVV49+bMT/4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN6PR11MB1619.namprd11.prod.outlook.com (2603:10b6:405:10::20)
 by CH2PR11MB4213.namprd11.prod.outlook.com (2603:10b6:610:44::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Wed, 17 Aug
 2022 05:57:18 +0000
Received: from BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::6865:ca96:2b8c:11cd]) by BN6PR11MB1619.namprd11.prod.outlook.com
 ([fe80::6865:ca96:2b8c:11cd%9]) with mapi id 15.20.5525.010; Wed, 17 Aug 2022
 05:57:18 +0000
Date: Tue, 16 Aug 2022 22:57:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YvyDOpg6bwO1UTc4@mdroper-desk1.amr.corp.intel.com>
References: <20220816210601.2041572-1-matthew.d.roper@intel.com>
 <166069425700.9029.14577098134460261024@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166069425700.9029.14577098134460261024@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0010.namprd13.prod.outlook.com
 (2603:10b6:a03:180::23) To BN6PR11MB1619.namprd11.prod.outlook.com
 (2603:10b6:405:10::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f6b2ddc-383e-43a5-4b5c-08da80155756
X-MS-TrafficTypeDiagnostic: CH2PR11MB4213:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k1BTjqgYQKQ+AyRWUfcNenprt2jOJyM546B4J/lXxempbX23YCvkFaDOYX6EVYia5WUpafigNhPw0tDSN30ciOiLMmr4E9wy72DjUe9QezZFOihl0AUhn9eABRt+TbE/DDA3yySlbbZm+OXauPJdJEr4ZkP1L7ndqr9hXPdusyU8Qb1KC3WYeffLyZ/W0+/nirLhVQyQL9aCwxs8oEMDy//k26Q/kr+zOoXKi4hLydtL4AhdHfLuENM91bzE/DhdIe0G0i3OAPhDVdZOOvw3UE4EbBzjr7HLMITG9IbekoL538O4GnBZgcGMtHkgi22pDxpQNkdlAFJ/biMKKJ7daTtAYHfhWcQSsE97YOMX1ASWTyPid2RKFzS5ypn63OM0Kxzla1QgIKqanLbSJp2zhTIlVIRpyUPZDrTkPaT4QR5/VBJxIRIWCkYP8dDT2f4pu2iioTx4RYwzjd+F6eUdKbTyMjZ9jhYYp7JlOyRgkCkYBgniJ2yl2XUgaZvDsTFyT3Z/Tjpx664QiaYp8x29oN07vfKUYwcaQacAjvRjfAHr1VzANGeKL+pHCZkUOBXWq83jueeABunp84AKOI1ZmPjQ/zehF4ab8prMpJFXT/uuth+mnzrfTNUyGGDHuLYFGhjb5qkczbpvB9g6BmPLAMZjxVP8Muctfh/WaoBOQnKtYUrtpv4O7YCfzUeFcJpS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB1619.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(376002)(396003)(39860400002)(346002)(6916009)(83380400001)(66946007)(8936002)(66556008)(41300700001)(30864003)(2906002)(26005)(5660300002)(6506007)(6666004)(478600001)(86362001)(6512007)(966005)(6486002)(66476007)(38100700002)(186003)(82960400001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Lm/K3EsFrt6KXxNEX6uIpaXkO7Qz4KSDDRZ2aQpqHpID1ixU9alewqbu5PTS?=
 =?us-ascii?Q?FzI1h0haeaguivbTku1TeoAUAm2vNFuBEebOdLn3rvZ366XBR43pUz9ORDdD?=
 =?us-ascii?Q?tGMnRD9hgnaDRviIK/ysE2V+Cg9vAej91gG/k4A2zvOMYG7iAStCO0RXRjR1?=
 =?us-ascii?Q?8PGEL6A14Y1FZOTww0ZigTYusQTehKJ6l3fnsL0fpjf3iwvQASnn0n5n84+9?=
 =?us-ascii?Q?KUTxG7BIjiS/Kqk52d0nxvSUzTdcGqnZZqsntbjzWbKZnen6ASalhLIpNvjg?=
 =?us-ascii?Q?8WQfCYyABOXEF+5nKQnT6gexKlzdiKp+O6q4w9Nbvn84B9Bc002C+vCC9CE8?=
 =?us-ascii?Q?Z1GxYRh+PDskySMp30lXXJITREPtzurxEomVppZ6yUP2tHZ/O5nTGDQV169g?=
 =?us-ascii?Q?iFESbJAyR6Wt++HFk1YZbBvTQhkLFz9PEG9IQOcs3B54N6Nr+e61t2/URqWR?=
 =?us-ascii?Q?QPKjdkp5STaEuQTR+fVmOJI3gLkMoJRhVyERlUH563S6KsLc8+zdt9oYaA5n?=
 =?us-ascii?Q?SObKK0iBHli/MkBionXInu9rWlvxhKGgkdLQohvCZpFESLDNBrT7KfyEVwrz?=
 =?us-ascii?Q?Xj8ftWty/3iJOakXJxZIxP3WHnupoyes9amvY7Cg72KIaX/9Gw5AN/7jIRXc?=
 =?us-ascii?Q?Yh740Do3/HpUECOcT8xGOhVeJeeMn01zn+Y01jjC/3Qrc9iNrKLpmJ6VOHk1?=
 =?us-ascii?Q?zhbKfQypGUTktq9p14j2E18fNpQzWaGglOs9bcWtVBBaBykIXSIvLYg62DNd?=
 =?us-ascii?Q?18V5VFIl2hVfetDXwtzbjRjcphVgf3kXjT41GM3qgFmPLx+0/8WGvPsJN92L?=
 =?us-ascii?Q?sJl+Nzbp0OjcRZOCeJ1IKcHzLcHjUJeKl6SCv3Lhw0CSMhPmr806MIdfLjm4?=
 =?us-ascii?Q?wiiqBY7PQa8C/BTznw7SwP76aW6Bo7kV5cHWx7pImxKyog2toyqYRZ2X9amh?=
 =?us-ascii?Q?7tgWfG4DSuoYYcmN122HUbRIPFTkyXPxEY52/YkE4nhtr9ZEym/fN2c65Zsx?=
 =?us-ascii?Q?uIZsWOTPu2G2EkI6qJea9JaDK8SKPIB7OwRjRcObtUdnpXPRi5x16MtFSRwo?=
 =?us-ascii?Q?zOX4Y/Mh8Vg2pPWMg2oP8xkNgG009jbgp8HpTQTKRoqHLMtJRONBSTjn7vRL?=
 =?us-ascii?Q?p3tyIYnq3r2mP2G/Q/nJZgNfjRWafU20uyABmK5bWaaRukYC4G7ZUcBKJj6h?=
 =?us-ascii?Q?4BCe06LeXZ/qAx3JuIOwsOMzlRlAVd2vZaoxi/BsXliOonFiKWfrFrHPHCZd?=
 =?us-ascii?Q?aC0Su/hxsfR6wzWt8NZjlHbZ6Z3GNe6FSo/TIIaE4QW6j3oqerNxbs4Jsbpg?=
 =?us-ascii?Q?7Sx2Esa8m4Z4CHBlzwQOFOvitjEa4qvUAi1X0HovWtKCfJQcwB2T1UUxavAE?=
 =?us-ascii?Q?CbQYHj2OoeGbMbw7OQu3ifBeg2S6wrEByFw7c0RCxwDsU+RUQW5YOu5Iy2AF?=
 =?us-ascii?Q?o/x6C3OzTl997UfqK0osj1TWSIIN6EsNddtsYVRQrvNIwJqI12P4YmvEfh/u?=
 =?us-ascii?Q?EqTvKOCVLCM5WxQFSjgwQIG2nVONXIfVA+MRAEH1FV657qlHe2slGK18fUsA?=
 =?us-ascii?Q?eNNrAGdIpDkFO2y4qQ/aogld5/E8p1POLZnUDw6gPli3Q2WiWq3WfNnCCzsl?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f6b2ddc-383e-43a5-4b5c-08da80155756
X-MS-Exchange-CrossTenant-AuthSource: BN6PR11MB1619.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 05:57:17.9444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H6AtAsf3V87qtLHhDVxz0uuqdU84Z+p8dq4Q6CpAm+nE8tn34+gDz9sPUzL/LoIBYAQgeNXnXrQ7bppi7nPjlw3862syFeVvRi7XeLfcrBw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/gt=3A_Add_dedicated_f?=
 =?utf-8?q?unction_for_non-ctx_register_tuning_settings?=
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

On Tue, Aug 16, 2022 at 11:57:37PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/2] drm/i915/gt: Add dedicated function for non-ctx register tuning settings
> URL   : https://patchwork.freedesktop.org/series/107342/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11990_full -> Patchwork_107342v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks Lucas for the reviews.


Matt

> 
>   
> 
> Participating hosts (10 -> 12)
> ------------------------------
> 
>   Additional (2): shard-dg1 shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_107342v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - {shard-dg1}:        NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-dg1-16/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@runner@aborted:
>     - {shard-tglu}:       NOTRUN -> ([FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5], [FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-2/igt@runner@aborted.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-2/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-4/igt@runner@aborted.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-4/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-4/igt@runner@aborted.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-2/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-4/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-tglu-2/igt@runner@aborted.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_11990_full and Patchwork_107342v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@gem_lmem_swapping@massive-random@lmem0:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.47] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_107342v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][10] ([i915#4991])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl1/igt@gem_create@create-massive.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][11] -> [SKIP][12] ([fdo#109271])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#1188])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl4/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-y:
>     - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +12 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#180])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-apl8/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-apl4/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][22] ([i915#2842]) -> [PASS][23] +2 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-kbl:          [DMESG-WARN][24] ([i915#180]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl4/igt@i915_suspend@fence-restore-untiled.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [DMESG-FAIL][26] ([i915#180]) -> [FAIL][27] ([i915#1188])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11990/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3938]: https://gitlab.freedesktop.org/drm/intel/issues/3938
>   [i915#3952]: https://gitlab.freedesktop.org/drm/intel/issues/3952
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4032]: https://gitlab.freedesktop.org/drm/intel/issues/4032
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
>   [i915#4855]: https://gitlab.freedesktop.org/drm/intel/issues/4855
>   [i915#4859]: https://gitlab.freedesktop.org/drm/intel/issues/4859
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
>   [i915#4874]: https://gitlab.freedesktop.org/drm/intel/issues/4874
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
>   [i915#4958]: https://gitlab.freedesktop.org/drm/intel/issues/4958
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6458]: https://gitlab.freedesktop.org/drm/intel/issues/6458
>   [i915#6463]: https://gitlab.freedesktop.org/drm/intel/issues/6463
>   [i915#6493]: https://gitlab.freedesktop.org/drm/intel/issues/6493
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11990 -> Patchwork_107342v1
> 
>   CI-20190529: 20190529
>   CI_DRM_11990: 6590d43d39b99e1cd8693801b2ea8adeb97d9a04 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6629: d24e986fb3b2ab6d755498d27828bc85931d12ff @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_107342v1: 6590d43d39b99e1cd8693801b2ea8adeb97d9a04 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107342v1/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
