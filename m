Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EF76C1C4A
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 17:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A035810E053;
	Mon, 20 Mar 2023 16:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB0F10E053
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 16:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679330712; x=1710866712;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Velc+35sGW1KUVoABGyACtRKo0GUvbEc0Sy+u/EC9Ok=;
 b=WbI0d7daP0jB+KpHeYMPZB863DvkSFXIKmZl2EX+C8wax+trp14SYYWg
 ZhDgr5lWidoyf6qYtfzAmxzbQFmRjAETTXRTBCvgI/KtcVwy2ZeC3OSG2
 SPeiv021cGdIN3BlEopANDcZ0aw0kjXrzd78t5u4oVufqItCJFtN6pQVg
 T8ABpdw4mDwKmLQ3THC00hYV8RbGVKW//dSEjL+PcFNKBuONugdlOHOj1
 +yznep4YG1d9fR3ZUOsyF7gEtX9lqA6vdlVSI1gvvO8LfQ06I82Jkb/nm
 +LviNzOoeuvh05wjAv42S8RMZEX/qvNDV55FY7+qROdWzoVrCSG399zOo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="424989855"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="424989855"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 09:44:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="750179209"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="750179209"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 20 Mar 2023 09:44:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 09:44:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 09:44:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 09:44:45 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 09:44:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAse2bHWi8u0Hou7o9PYEifiUJyc63jKjCxWib7HPyZPc3QcCU+axK+6uKKgRWxrjMUzyV5OpUDbQuCKDRMHpfQpkQQ15ZJMP50KVNRnl642w1jMSsb40ovrOfeba/k0btlCGW6nwZr62HA3+N4oVK8TCaHIXuxVgNRhoogvugvR70EcX8PEY8jLrRxiFFKKmUev++IhIlsSsonaxKI2yCX2IXj3YsyD5NkoWpqWJnsearLPI3mjvXOZ81TJ0e3vb0qspAbmDujP9cA9UK0cqeKGejl5OXYGoSDkFRtA7/uG0+aAvpsjOfRNpyo4Hpik+dQmpEBrRH39bE7FK86emw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ngR4F185TWT887vNjZSs2DrGMkVpyw9zKfgWdiR+mE=;
 b=SmD2A28ZVnfmrJBjnz2VKhWNLF71Wk8u5dMX9OBphfvL9hgKgSvdVka8iSnTj7xRz2FV0AStMO7isU11sZPCNVR0E3HO0szSogTD6nASNIkj6FXuyWC8R0NcaywS9jwfuXBwQDFIyjG4uc3GisDvy1rZ7p+cx4pzdLBT/vHC2V52tpe7seVkM4XPwPC0+MBgoOHFrq6sUggEIPPTHHkr8prola/ri5FDdxs65QjDXsQJCs5ccie8BhhPvSm8TrpY/CqG1J8xWo6B/ashQRw/d0ON4EVEFz6gK6Qvx0R591Yhro8nS2TFigntlReNPZlIbInE6mGE8rjNHm6tkQ+Bxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.37; Mon, 20 Mar 2023 16:44:38 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%7]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 16:44:38 +0000
Date: Mon, 20 Mar 2023 09:44:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230320164434.GI4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230316234654.3797572-1-clinton.a.taylor@intel.com>
 <167903251270.12990.17518169662633050965@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167903251270.12990.17518169662633050965@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR20CA0009.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB4849:EE_
X-MS-Office365-Filtering-Correlation-Id: a80e83f9-5f5c-4fbd-e66a-08db296264ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iNhttYLeRsZszedYXoXVaiH23QGJNSjIFFhfZCxFVANf2kDqgPxRsxHd56AIIwRnbjVmhE2ZMk2vIozSFgzU3N9zatLIFlxlLSxy5sXu/o7p3qS+F7IM1rKwkOkHJmoSXlDn3aWtFcTIeG1f7rMzfOnIKKNVaGrpBl6qpyQEODT/9gJwBxZiGs5ree7mDMclNgAT7eRb1jRfi+SvvDFv+l7kr9bxybafZwsPXvipnxqCUjbQZNLZvR7werkNmAZOrxoSUlgWWdR7wSH0I+Mf5wVgr2Ip/GBmmtZNUPcsCvzobuoY/shJgFvlBt9k/R73wy/T8PeJUL/mCvHWbb1Zq1Cn210BUMpNiL1u3QtssPNbscOBr4eRRTHx5HICYAsaghoAHXGWgk3g3Owe8xwZKD8SKwoj11jZ6KBAZvCvAZmoO1S+e1pmKqaVPuYEI1KcKS0gfIpSTabKLVFIqW00lIgcMeAAvxST+Ggm6E9rrwcDttvwrQ8WHk6JOaC1TefhGWpL1r3d2GfIun2/ip0Qq17KKOQ9MYrYYdrhXPNAqoQ2m5D1ww6D7Rjyr7OnpgztIplei1Q/QZyOHb005xdScyXdPKCPBkjjGXrtF/YrTyTId4fzzxLfVGTLJkEi2oQ68BwNc/4hha4Sjpe46KqgXqbpiUBOCzIs+sQBkJHZHE0aYr3+xM44afcBsYlCnaAchRSgoCddBBn7VdwrZEFkUw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(136003)(396003)(376002)(39860400002)(451199018)(186003)(107886003)(82960400001)(6666004)(966005)(6486002)(6512007)(1076003)(26005)(6506007)(38100700002)(478600001)(2906002)(86362001)(83380400001)(15650500001)(316002)(33656002)(30864003)(8936002)(41300700001)(66476007)(6916009)(5660300002)(66556008)(4326008)(66946007)(13750500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZllnhAaWbNCPRpYNbsA6m5yqnvkpnEW87lyXL1BtpUbpXOwnln3PbnYm8rnN?=
 =?us-ascii?Q?kYGhsDoNKi2XWFm//NiIg5SE6HCK7EKNop1AP2Y4vX+mzJurAzLcmY2mdb57?=
 =?us-ascii?Q?9v4JWAHGeliB7U3L3npy2q3g5W8ZgoDQhQpxmpNdO1V7JJl/J8cAY2KGisLm?=
 =?us-ascii?Q?PWaI4veAQ5xZCtcr7kiGRmwSePgQzaGF/RiQska7YiIVXl0fhJG3zCvejjg9?=
 =?us-ascii?Q?EcPdY7OVO7o9YtNaxC/3uVa8vWYPS6RC5Xh1rz5+oO9UGHNFUKn8D/jFZCir?=
 =?us-ascii?Q?ulIOzvjNNhqfl0Zwk9cqwzlNAX9De/hVvGrvTSsKb0vzEpZi/fIhVhi3gZFG?=
 =?us-ascii?Q?48k+EZRB6vdzLoX/AWjS1suykRMnJaXehpvA4aeCB6g1UHcgiUsSVcHhHkDf?=
 =?us-ascii?Q?KL8uCwNrrqQKtFeSoLNJ7W0v/wKAGWfCaW4CAKUBF5dmUtPQIS+/yKf9BQmm?=
 =?us-ascii?Q?z+PIKeKb9VUAjKsIeOuxh12yBqIEZwlwyMeaw4w0i9z61sKx1tBVr3a08j7T?=
 =?us-ascii?Q?j7cP7mfzvsRyrEjmuTaeBvKmnvzSM9WUdYpEpu976Ihhq6tB+wzGYpkjGVLR?=
 =?us-ascii?Q?XK/T0mOXu7de1edX3VekuXUMxX6OVXbWvi6dCl26B69Y+eqsK/OXyW2GHyue?=
 =?us-ascii?Q?aJKO9V2Ix1Yg80OMCxccLp2tjaUK81rQHL46HJ5lL0zcDHgv0QRmlVmiGmU8?=
 =?us-ascii?Q?VcVV5dMxL1Gnz30SAUoTk4QGlIZj2DodV7iKbFqXqplmMwoxCoXkWGGKFMzq?=
 =?us-ascii?Q?rEUS4j1RA0RQG1+v5iwxTE+3WQq1ohkjL8MiFwxwoj86Z+zMv5uEZiHEN/Ou?=
 =?us-ascii?Q?QDdLfJQevD8bkdVXV5yuTxTxtVfPTdhgokVKXTHh7OukU+ItW1LG/IQAfgDR?=
 =?us-ascii?Q?xoYsvhEMXVsWv5+DJZz1TwDoR/QYHNwS+SchTvOO2vKcDMoR0wr01/XpC7mm?=
 =?us-ascii?Q?oR1OcmwI3eIhipAKTJb/n9vCFNg+aco2POyDtpblSj8Tqvg5liuMAHTsFfnk?=
 =?us-ascii?Q?5U9s2krj3bm0f8hoO2p2X+yJduWGSFmBtaPIKTnTE020vczxVya4fb4gdqJj?=
 =?us-ascii?Q?eIwq5vUE4zdOLX++qIn16IXf/VmwxCDJdWTtCJO21hJBgZm7R6Sin/+z4HyU?=
 =?us-ascii?Q?AKmTDYbsXBTohzKUP26jnKEwdqVbqHULEcntQpBOXP0m049xW5ZV0CqZNBi2?=
 =?us-ascii?Q?nioMFGQfqSyjTwLQ9j2QCCaWC+ahN0jy+eKauVQ1LrY3VeBX16TmcrELbibN?=
 =?us-ascii?Q?5gYuMLpdXx1Vg/8PHKShlP7FMqfbGjA9KK60Luj9Y0FQsOq9UBDjM6rbPlzb?=
 =?us-ascii?Q?CfWqVMxNU9xELDyXLRnZyY98EWjF8iTdw136uJd8lfBEgl150hrwF4BSRaxN?=
 =?us-ascii?Q?u4Ui0ICAW1ew/U2sRJ052b+syfEnMYWR7AYpUyrh8eB0ue3OEYU9CXYhyspo?=
 =?us-ascii?Q?ZSaAygwYogm7KqxD60vr+dSm2v60YUtVUUoqT87/JZxmm5qZIQ+dEqzGeIUL?=
 =?us-ascii?Q?IidPUFYDYbcM+orxS3L6w4DRmFhyr5oI/KomTjb+cRPDMhD+VQnMg2nU+zBm?=
 =?us-ascii?Q?5zKWGoT/1DnxGihgs9BP+WL4uoo3JYY2UutOb6tHVVS3YCq+Rjn/R09Bd+Uf?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a80e83f9-5f5c-4fbd-e66a-08db296264ba
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 16:44:37.9530 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cxdteC2UzL2MWXC3zxnIWzxnkePwmKPS79Qx9J7db53HYIKU0wOjMrtZnfUX2EdAVW7vzHrOWreeLvlDrIpwNCYRrI4+0M0cGx3hkm5MG+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/audio=3A_update_audio_keepalive_clock_values?=
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

On Fri, Mar 17, 2023 at 05:55:12AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/audio: update audio keepalive clock values
> URL   : https://patchwork.freedesktop.org/series/115300/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12872_full -> Patchwork_115300v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (8 -> 7)
> ------------------------------
> 
>   Missing    (1): shard-rkl0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115300v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-apl:          [PASS][1] -> [FAIL][2] ([i915#2842])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-apl7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl2/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#3323])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-apl7/igt@i915_selftest@live@gt_heartbeat.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-glk:          NOTRUN -> [SKIP][7] ([fdo#109271]) +58 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#3886])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +45 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_cursor_legacy@forked-bo@pipe-b:
>     - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-glk9/igt@kms_cursor_legacy@forked-bo@pipe-b.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk3/igt@kms_cursor_legacy@forked-bo@pipe-b.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2122])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2437])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl2/igt@kms_writeback@writeback-pixel-formats.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@eof:
>     - {shard-tglu}:       [SKIP][17] ([i915#2582]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-10/igt@fbdev@eof.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-6/igt@fbdev@eof.html
> 
>   * {igt@gem_barrier_race@remote-request@rcs0}:
>     - shard-glk:          [ABORT][19] ([i915#8211]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-glk3/igt@gem_barrier_race@remote-request@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk4/igt@gem_barrier_race@remote-request@rcs0.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - {shard-rkl}:        [FAIL][21] ([i915#6268]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - {shard-rkl}:        [TIMEOUT][23] ([i915#3063]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@gem_eio@in-flight-contexts-1us.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-4/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@suspend:
>     - {shard-rkl}:        [FAIL][25] ([i915#5115] / [i915#7052]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-4/igt@gem_eio@suspend.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-1/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][27] ([i915#2842]) -> [PASS][28]
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - {shard-rkl}:        [FAIL][29] ([i915#2842]) -> [PASS][30] +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-5/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [FAIL][31] ([i915#2842]) -> [PASS][32]
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - {shard-rkl}:        [SKIP][33] ([i915#3281]) -> [PASS][34] +10 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices@smem:
>     - {shard-rkl}:        [FAIL][35] ([i915#5115]) -> [PASS][36]
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-4/igt@gem_exec_suspend@basic-s3-devices@smem.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-1/igt@gem_exec_suspend@basic-s3-devices@smem.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - {shard-rkl}:        [SKIP][37] ([i915#3282]) -> [PASS][38] +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - {shard-rkl}:        [FAIL][39] ([fdo#103375]) -> [PASS][40]
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - {shard-rkl}:        [SKIP][41] ([i915#2527]) -> [PASS][42] +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - {shard-rkl}:        [SKIP][43] ([i915#3361]) -> [PASS][44] +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-5/igt@i915_pm_dc@dc6-dpms.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - {shard-dg1}:        [SKIP][45] ([i915#1397]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-dg1-17/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs:
>     - {shard-tglu}:       [SKIP][47] ([i915#1845] / [i915#7651]) -> [PASS][48] +21 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-9/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-8/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][49] ([i915#2346]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>     - shard-apl:          [FAIL][51] ([i915#2346]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [ABORT][53] ([i915#180]) -> [PASS][54] +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - {shard-tglu}:       [SKIP][55] ([i915#1849]) -> [PASS][56] +7 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - {shard-rkl}:        [SKIP][57] ([i915#1849] / [i915#4098]) -> [PASS][58] +8 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_plane@plane-panning-bottom-right@pipe-a-planes:
>     - {shard-tglu}:       [SKIP][59] ([i915#1849] / [i915#3558]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-9/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-2/igt@kms_plane@plane-panning-bottom-right@pipe-a-planes.html
> 
>   * igt@kms_psr@cursor_render:
>     - {shard-rkl}:        [SKIP][61] ([i915#1072]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@kms_psr@cursor_render.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-6/igt@kms_psr@cursor_render.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - {shard-rkl}:        [SKIP][63] ([i915#1845] / [i915#4098]) -> [PASS][64] +13 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@kms_rotation_crc@primary-rotation-90.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
>     - {shard-rkl}:        [SKIP][65] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-b-sanity:
>     - {shard-tglu}:       [SKIP][67] ([fdo#109274]) -> [PASS][68] +4 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-9/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-8/igt@kms_universal_plane@universal-plane-pipe-b-sanity.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-busy:
>     - {shard-tglu}:       [SKIP][69] ([i915#1845]) -> [PASS][70] +17 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-10/igt@kms_vblank@pipe-d-wait-forked-busy.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-6/igt@kms_vblank@pipe-d-wait-forked-busy.html
> 
>   * igt@perf@gen12-mi-rpc:
>     - {shard-rkl}:        [SKIP][71] ([fdo#109289]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-rkl-5/igt@perf@gen12-mi-rpc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-rkl-3/igt@perf@gen12-mi-rpc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - {shard-tglu}:       [SKIP][73] ([fdo#109295]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/shard-tglu-10/igt@prime_vgem@basic-fence-flip.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/shard-tglu-6/igt@prime_vgem@basic-fence-flip.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
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
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3639]: https://gitlab.freedesktop.org/drm/intel/issues/3639
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
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
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8150]: https://gitlab.freedesktop.org/drm/intel/issues/8150
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8154]: https://gitlab.freedesktop.org/drm/intel/issues/8154
>   [i915#8211]: https://gitlab.freedesktop.org/drm/intel/issues/8211
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8253]: https://gitlab.freedesktop.org/drm/intel/issues/8253
>   [i915#8282]: https://gitlab.freedesktop.org/drm/intel/issues/8282
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12872 -> Patchwork_115300v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115300v1: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115300v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
