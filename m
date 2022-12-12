Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB40364A71D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 19:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A56D10E281;
	Mon, 12 Dec 2022 18:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9448810E281
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 18:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670869934; x=1702405934;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=C5V0e9WTimVyy1uohDSm/6qopdAxsvEJaemfHdE5EdM=;
 b=DVtni8kFW87ciyl81nMoPAGMHaVOX++7XAc+GHklQeOP9qoT8ceDgOxh
 HtxyC8EnBDfLjo/iTJxMroC9VIOQc+ILQ77boHx2/kWlOOyvGbQbslbhr
 sS5ZzL4iN3XxX2UuPr5ZDMIk0lHPp4QmxxfntVlkTuTw6gZzbk3LtYMOw
 P2yGnz2bBNOxOu5YfGplGbCZKFRQr6F7tt2ylxMu5WgiGxS6/gpTElFf3
 LjrT1SXArOehw50ZjNNfTsoN55Qv8lZCWF4FVPsnicE+YxyWiPXRVAOls
 pGFIqfnlqIgY79TWspRGUzUei7xdth+bVFxsYO6B+x3nwQgGYyF6d7HjV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="316628392"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="316628392"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 10:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="755051973"
X-IronPort-AV: E=Sophos;i="5.96,239,1665471600"; d="scan'208";a="755051973"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2022 10:32:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 10:32:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 10:32:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 12 Dec 2022 10:32:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 12 Dec 2022 10:32:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kouoghLws293DlkpyRKZf8XMjbEfgnlyAHeGbU4yMQTnE8C6tWFsxJWVf8PUb73Ga/24/NeyJ7ehj56RUBWKMR3tE8h2U4693BT9vH04f+nJounSv0tD/7dvMC98cMXFiyRoYmRtyHUY4NOPbw9S/mSC9ZUYqQhNfL+4GppCflPXWgz+lOsvC+5phrj4x+VQbb3c4gqiCMWsKa29r7eRdbW3Bq/wY2M3egQg4UqOOrWGpnDPw+yhwls/7brfQkzPDoCjaw1iox+llhl2fhYzfhJnyFg80bYs1PConmDn3gdlRL6D3pJfsOvfXvcbG66ubrR5mR0XID64f9ZfBHb0/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=07Xpyom2XuQSXsl5L9p1rreCdbZTvBE6IimkbIS2Rq8=;
 b=FW3LL6Ek3hVMMfAQdIqU/L2jzq/41oPmS84ZenK47cybUmubXKbVsH7ouQ8GJFuFuPWdO1Wy4c9NH+TxflweUmcS62XRBukRXKq99/Ml8zGr6HAYZQCgigsBGxgGokYHCpYpuz1dmy+ia9yIFIoSt4yzXPrCPL6vsnU/bmPoupbVQaJbhA4prBz+O70Ze8W8doOKRRPQuecLm2wjPEXH/RiSq0egJKZjPVkjiLbZX4RTUFQ2pr4yXuKx31JCSWhhKDuKvyX0Eb/yKujNQDOr2qsaKKNqf5uRNRGJ1CbtrM5EHw5wPH/RZsemGNM095pwiN9hiohYQ6pAW/ZexzAOMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA1PR11MB6567.namprd11.prod.outlook.com (2603:10b6:806:252::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Mon, 12 Dec
 2022 18:32:00 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.019; Mon, 12 Dec 2022
 18:32:00 +0000
Date: Mon, 12 Dec 2022 10:31:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y5dznGmSqualJc/j@mdroper-desk1.amr.corp.intel.com>
References: <20221209220543.502047-1-matthew.s.atwood@intel.com>
 <167068480287.23485.17357812307714912018@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167068480287.23485.17357812307714912018@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:180::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA1PR11MB6567:EE_
X-MS-Office365-Filtering-Correlation-Id: abdc7a85-9429-4835-aabe-08dadc6f2807
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +kECQRejAH9pH/Cg5UTmaR8oXSwiAfwVIZJS4NiJYuavuYo2cabAuAjus6qbg5XslCRoCns/bJmQCPeQplK4pLvnTb37posBcyl84qLe2ZCzyYKXqIAAXe0kd/f/KG0ekS1CFXD04aBUVIQ6hSiA3VCjCXt2VZzArXNhl/gmsdvmETW2aWIoSm4DNyfhZhS3ysit1FkDdlZMih0vmnIxX+M25uFnQagB824fofK64Me8VfJJHtxXp7FnHO2P1S4MwbrNcsY8HU+kC7SobYBm3bCsVKt4r7tuIeslMTq+f4JYEUgIunLjJ36QOFKZKjI2ZDjS0T7mHK2VunM5qmshp7LpLmKF2z3l+bArNABjgA2YwZQzNrd3LPIjcK3KXPpmbfRAMMLMTkZ2eOoHhUQ35vLO4qd7ZwhNpnaBDMXBV+huq/KH304wj45mhD3tQqz6lVrAt1YK5xsrNYqZrGdWw2geZaXLLUtEF+/c3vw6cGlhVlr2FmfL/hIsP4ZuxCDC2eCXX9Uouewvp2u0NEtw+e+fzDCMhM12vy624u0FQ33zDM4rqkpWsah28XELCzoK9GtqwTSfmoWyVON5I7EztSITAz+enCnhJ5BjVJdtyIbO/NpsjY8XPfapKCaZ0ngbApoiBBmpw7nj+N7pEuBM3laVHq/sZpPOjNL8L4cRqewZEJu6J3a/vUJKQGQXAJrm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199015)(82960400001)(38100700002)(86362001)(316002)(4326008)(6916009)(66946007)(478600001)(5660300002)(8936002)(2906002)(30864003)(66476007)(41300700001)(66556008)(83380400001)(6486002)(966005)(6506007)(6512007)(26005)(186003)(107886003)(6666004)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?827lR3oKGbU3Yo3b/VNKJLRRb7BxQSBD3AQBOFINkc41UnqrcgKuYEvxvDQA?=
 =?us-ascii?Q?knIZwNG6pcceIRr6IsWYRjhynmrQDXLjzS9rChZdsxgWV9oVXjl+ZN54llZG?=
 =?us-ascii?Q?DS4WUHHrxcB67uEa/N7n5wOLcWUJkKwOGOWBXU2IKbQnAc+2tZZKRb9s5Av5?=
 =?us-ascii?Q?zWGwm7b7KzRj+QwukpZQWOR82AUhVJk0NheVruDU8SLv3omI/juFVaEiZEOj?=
 =?us-ascii?Q?27GZE09IhOtyEEe0NL8EhS4Bxmww9QMV7H2SFa1Jk2Rehl0aKsticFCR1t7Z?=
 =?us-ascii?Q?2MHWgTak37487792MQiXxb/JXDyeJFOWMbbUVu1EQEcOBMjR+a6ekYsdZEwr?=
 =?us-ascii?Q?rjjJlZLa56xIFP3oXO829K1KgGmqhf0nicW4oScJ+Jazt++zx6Bp0QD0Z/zM?=
 =?us-ascii?Q?FtuYcSLEYMiC8AvDHugdwzAVd/AKEsjkF+lkXQxvJC9qT5Vh03J3aXSXN+SM?=
 =?us-ascii?Q?aG/0In9aroQexZKaUbud57RKUyyUJY5s7zLorZt9e0KUNYJ7SjP/xD/yx2Vy?=
 =?us-ascii?Q?REosjPaD7iadaSb105w2fdpvrzIbZfwFNG3hqR/vkcgDi1El5+XREV6sD/VY?=
 =?us-ascii?Q?LMj5zz3mXcT5KbHaf8eVyMbKZDG4TL7B/sdNuLjsKMt6fWZ27T0pMDSPqvsO?=
 =?us-ascii?Q?Bkhun2wI4mv/M60JO7tif3zPHqSixIjtTc9qPhY0OUpDk2+A7hADv34aO624?=
 =?us-ascii?Q?nbFcalvb41vnOf0GT2yBCJAJgIQzou3zr/jPPN9DKHH4k5ZnGSc4DnxJcS/j?=
 =?us-ascii?Q?cSXSOStxWFyUu5xa+7ZiDvxqsf2p7ctaMq7rgY/FeZ6FYWLCrJG9Zb2UqDli?=
 =?us-ascii?Q?SCHvizTT3h9zaiFCc7uVU7c/Z7rXg+InD65/7AUyNGKyfo58SjaV3gLsOI6q?=
 =?us-ascii?Q?OsYM2EpNM/kQx/69HooirCIECGynZbXH4BW80rIDVXUHCHBDb4t5DMSSbFwz?=
 =?us-ascii?Q?VLDbn6HyNiTDTpNlsITMfJ+xjkyeOCs/c3b46J9ZywlC3CzcbXm/dX1Gix93?=
 =?us-ascii?Q?ERFO17mV2opKA0lXUtv6KAmimhupJIyChtH/eBY+57dM2+noDz74kUNt1W4J?=
 =?us-ascii?Q?Cztuscggq/Jz5d5cSDHrA4V58Nqj7JUu0oKV5KFuQpVWR2mzyIlGCm6AzxG8?=
 =?us-ascii?Q?iXgbuGalEUAxMu5GJAfE8C3HzTj4ImfiFJ1+XOTukdIGng8V/sUuavRUo1cI?=
 =?us-ascii?Q?bDyxeAQCpOBhzMnH8Z8EwHD2xk81MbRERWQRsLk52rYge80O+v16jzSapCTJ?=
 =?us-ascii?Q?U6jFVB9Tjz82kLuDaQr5yZX/KZo6kP/3sXXPFUoC35H1sMMNjLzFJFIG1pTH?=
 =?us-ascii?Q?wmvEAvvmiVHckJdiQ47ZrszSl01c1MrszomItoPQbqSy1pAPuyJ4RVhxb4df?=
 =?us-ascii?Q?o2bZk342yQlPpnOgMoWk/6/YvMQa/pMFtrj/9AMOM0F/q2tVPBp4oa1Q6ocv?=
 =?us-ascii?Q?svMMZsr3wYAMLayCyK/1jFLPOpSZq4pwNIpT4/SZzK0urrhkaVBHWG6GClKK?=
 =?us-ascii?Q?9CF70tHQ1X0Nh5ACPqFfXYJktylQUyVM8bxQ4PJ1i6k9vPsKAz0OlTWuykZ1?=
 =?us-ascii?Q?jZrdFaKB0QpOPACOU+NRxt5CGaij/3vx6t23hZyurrVYgL6O7of5v2o4nllh?=
 =?us-ascii?Q?Kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: abdc7a85-9429-4835-aabe-08dadc6f2807
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2022 18:32:00.0230 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3YklqpTbe3THhYEDILvshz/EwCVEe4iHN/CFk5A3ZUsqP49rWujlqXNVEd2MURPiJo0mCXcr+Q3xp7OrIxdTAOXghB9iSqgW6T9Sa8nzZKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6567
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Initial_display_workarounds_=28rev3=29?=
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

On Sat, Dec 10, 2022 at 03:06:42PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: Initial display workarounds (rev3)
> URL   : https://patchwork.freedesktop.org/series/111592/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12491_full -> Patchwork_111592v3_full
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
> Participating hosts (14 -> 14)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111592v3_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_softpin@evict-prime@vcs1}:
>     - shard-iclb:         NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb1/igt@gem_softpin@evict-prime@vcs1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111592v3_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-snb:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [FAIL][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4338]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb7/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb4/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [PASS][52] -> [SKIP][53] ([i915#658])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb2/igt@feature_discovery@psr2.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb6/igt@feature_discovery@psr2.html
> 
>   * igt@gem_ctx_persistence@engines-hostile:
>     - shard-snb:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#1099])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/igt@gem_ctx_persistence@engines-hostile.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#2846])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk2/igt@gem_exec_fair@basic-deadline.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2842]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#2842]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][64] ([i915#2658])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +93 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_tiled_wb:
>     - shard-skl:          NOTRUN -> [TIMEOUT][66] ([i915#6990])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@gem_tiled_wb.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#5566] / [i915#716])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl8/igt@gen9_exec_parse@allowed-all.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-glk:          [PASS][69] -> [DMESG-FAIL][70] ([i915#5334])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk3/igt@i915_selftest@live@gt_heartbeat.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2521]) +1 similar issue
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +33 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3886])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][76] ([fdo#109271]) +67 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-edid-stress-resolution-non-4k:
>     - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@kms_chamelium@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium@dp-hpd-with-enabled-mode:
>     - shard-snb:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb5/igt@kms_chamelium@dp-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][80] ([i915#7173])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@kms_content_protection@legacy@pipe-a-dp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][81] ([i915#2346])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1:
>     - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#79])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [PASS][84] -> [INCOMPLETE][85] ([i915#4839])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          [PASS][86] -> [FAIL][87] ([i915#2122])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#2672] / [i915#3555])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2587] / [i915#2672]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#3555])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][91] ([i915#2672]) +3 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +16 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][93] -> [SKIP][94] ([i915#5176]) +2 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb8/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-skl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#658]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1:
>     - shard-iclb:         NOTRUN -> [FAIL][96] ([i915#5939]) +2 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_psr2_su@page_flip-p010@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-iclb:         [PASS][97] -> [SKIP][98] ([fdo#109441]) +2 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb6/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [PASS][99] -> [SKIP][100] ([i915#5519])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-tglb5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-tglb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-skl:          [PASS][101] -> [INCOMPLETE][102] ([i915#7404])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2437])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][104] -> [DMESG-WARN][105] ([i915#1982])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl1/igt@perf_pmu@module-unload.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl7/igt@perf_pmu@module-unload.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-glk:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-write:
>     - {shard-rkl}:        [SKIP][108] ([i915#2582]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@fbdev@unaligned-write.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_blits@basic:
>     - {shard-rkl}:        [FAIL][110] ([i915#7673]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_blits@basic.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-5/igt@gem_blits@basic.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>     - {shard-rkl}:        [SKIP][112] ([i915#6252]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
> 
>   * igt@gem_eio@reset-stress:
>     - {shard-dg1}:        [FAIL][114] ([i915#5784]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-dg1-15/igt@gem_eio@reset-stress.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-dg1-17/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-iclb:         [SKIP][116] ([i915#4525]) -> [PASS][117] +1 similar issue
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * {igt@gem_exec_balancer@parallel-dmabuf-import-out-fence}:
>     - shard-iclb:         [SKIP][118] -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb5/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-tglb:         [FAIL][120] ([i915#2842]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - {shard-rkl}:        [FAIL][122] ([i915#2842]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - {shard-rkl}:        [SKIP][124] ([i915#3281]) -> [PASS][125] +9 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - {shard-rkl}:        [SKIP][126] ([i915#7276]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_exec_schedule@semaphore-power.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - {shard-rkl}:        [SKIP][128] ([i915#1850]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_mmap_wc@set-cache-level.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_readwrite@read-write:
>     - {shard-rkl}:        [SKIP][130] ([i915#3282]) -> [PASS][131] +4 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gem_readwrite@read-write.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-5/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - {shard-rkl}:        [FAIL][132] ([i915#4171]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@gem_softpin@evict-single-offset.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - {shard-rkl}:        [DMESG-WARN][134] -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@gem_softpin@noreloc-s3.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-2/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - {shard-rkl}:        [SKIP][136] ([i915#2527]) -> [PASS][137] +2 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - {shard-rkl}:        [SKIP][138] ([i915#4098]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - {shard-dg1}:        [SKIP][140] ([i915#1937]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-dg1-18/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-dg1-14/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - {shard-dg1}:        [FAIL][142] ([i915#3591]) -> [PASS][143] +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - {shard-dg1}:        [SKIP][144] ([i915#1397]) -> [PASS][145] +1 similar issue
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-dg1-14/igt@i915_pm_rpm@dpms-non-lpsp.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-dg1-15/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-skl:          [DMESG-FAIL][146] ([i915#5334]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl6/igt@i915_selftest@live@gt_heartbeat.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl7/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-snb:          [DMESG-WARN][148] ([i915#5090]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-snb4/igt@i915_suspend@fence-restore-untiled.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-snb7/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-glk:          [FAIL][150] ([i915#5138]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk2/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk3/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [FAIL][152] ([i915#79]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2:
>     - shard-glk:          [FAIL][154] ([i915#79]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - {shard-rkl}:        [SKIP][156] ([i915#1849] / [i915#4098]) -> [PASS][157] +15 similar issues
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1:
>     - shard-skl:          [INCOMPLETE][158] ([i915#7266]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-edp-1.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - {shard-rkl}:        [SKIP][160] ([i915#3558]) -> [PASS][161] +1 similar issue
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [SKIP][162] ([i915#5235]) -> [PASS][163] +2 similar issues
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - {shard-rkl}:        [SKIP][164] ([i915#1849]) -> [PASS][165] +1 similar issue
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@kms_properties@plane-properties-legacy.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@kms_psr@basic:
>     - {shard-rkl}:        [SKIP][166] ([i915#1072]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-2/igt@kms_psr@basic.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_psr@basic.html
> 
>   * igt@kms_psr@psr2_no_drrs:
>     - shard-iclb:         [SKIP][168] ([fdo#109441]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb5/igt@kms_psr@psr2_no_drrs.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
> 
>   * igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a:
>     - {shard-rkl}:        [SKIP][170] ([i915#4070] / [i915#4098]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-2/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pageflip-windowed-pipe-a.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][172] ([i915#1845] / [i915#4098]) -> [PASS][173] +22 similar issues
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][174] ([i915#7404]) -> [PASS][175] +1 similar issue
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-skl7/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@stress-open-close:
>     - shard-glk:          [INCOMPLETE][176] ([i915#5213]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-glk4/igt@perf@stress-open-close.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-glk9/igt@perf@stress-open-close.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-apl:          [DMESG-WARN][178] ([i915#180]) -> [PASS][179]
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl8/igt@perf_pmu@rc6-suspend.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sysfs_timeslice_duration@timeout@rcs0:
>     - {shard-dg1}:        [FAIL][180] ([i915#1755]) -> [PASS][181]
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-dg1-13/igt@sysfs_timeslice_duration@timeout@rcs0.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-dg1-19/igt@sysfs_timeslice_duration@timeout@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][182] ([i915#4525]) -> [FAIL][183] ([i915#6117])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-iclb:         [SKIP][184] ([i915#658]) -> [SKIP][185] ([i915#2920])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb8/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][186] ([fdo#111068] / [i915#658]) -> [SKIP][187] ([i915#2920])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][188] ([i915#2920]) -> [SKIP][189] ([i915#658])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][190], [FAIL][191], [FAIL][192]) ([i915#3002] / [i915#4312]) -> ([FAIL][193], [FAIL][194], [FAIL][195]) ([fdo#109271] / [i915#3002] / [i915#4312])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl8/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl1/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12491/shard-apl8/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl1/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/shard-apl7/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
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
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2532]: https://gitlab.freedesktop.org/drm/intel/issues/2532
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3547]: https://gitlab.freedesktop.org/drm/intel/issues/3547
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4877]: https://gitlab.freedesktop.org/drm/intel/issues/4877
>   [i915#4998]: https://gitlab.freedesktop.org/drm/intel/issues/4998
>   [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5213]: https://gitlab.freedesktop.org/drm/intel/issues/5213
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5507]: https://gitlab.freedesktop.org/drm/intel/issues/5507
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#6990]: https://gitlab.freedesktop.org/drm/intel/issues/6990
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7128]: https://gitlab.freedesktop.org/drm/intel/issues/7128
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7266]: https://gitlab.freedesktop.org/drm/intel/issues/7266
>   [i915#7276]: https://gitlab.freedesktop.org/drm/intel/issues/7276
>   [i915#7404]: https://gitlab.freedesktop.org/drm/intel/issues/7404
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7651]: https://gitlab.freedesktop.org/drm/intel/issues/7651
>   [i915#7672]: https://gitlab.freedesktop.org/drm/intel/issues/7672
>   [i915#7673]: https://gitlab.freedesktop.org/drm/intel/issues/7673
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12491 -> Patchwork_111592v3
> 
>   CI-20190529: 20190529
>   CI_DRM_12491: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7090: 5aafcf060b6dfbb2fa7aace76c8074d98ac7da8f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111592v3: d322881f7e33af24901ee8ccaec3beef82f21203 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111592v3/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
