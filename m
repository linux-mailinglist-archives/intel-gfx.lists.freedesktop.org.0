Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8756F6A1F77
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:17:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C0AD10E117;
	Fri, 24 Feb 2023 16:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534E910E117
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677255437; x=1708791437;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yImJ/tViNQScmh26eDbqXxXSf+zYNi4z/Zr7/wNvphU=;
 b=EtpCjaM2Pp9ZfJEOo9EYnu7dzzhiFU4evB/MIhnXuKKSPrKrnyW61q17
 YfB98oXvxr191ruNjlWO02rmRQfbSCDlTIXzoZJ6Bs/zFXRkwI5+nb3l7
 um0mPLsbe1Xo1dIIK6b6Om3U1GY/WoDmIayPg5o017U/FWCKBMcoDQeTw
 n7u+vYN5ETS/ezCVvKvRto1YoeEvzpL4TB3gncL/N8Vfq746q7MrJ3TG5
 Xs1VisI79cHA63SBVhWsHqbi0esOamWeUyJUCipm9sWVEmT2yEUn1eIai
 eF2W7ojznHQ5iBAlcIzpAh+E+s2PcDae5/c1ubOSkEy3gY/wZujWZNj3d g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="313903768"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="313903768"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:17:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="622762455"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="622762455"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 24 Feb 2023 08:17:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:17:15 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 08:17:15 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 08:17:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCHU/ZZ/V7zyl1bl5Hx/lc4B30QsMDVc/Giy5waR5FTaX9xj7Lae1Mnv0K0REq3Z9vK1VyIR6g5KQ8kDMXA+npbvlJ9qV7eAYoHFlDaLDFSujcqmZTkTyioUF3SQEw/s+4KJv96RYqaBet1Ii0lwyjT96UAIr0l/B2fkiDdaUyozXcN86hFA1lGJieD5+TMjUxg94Lr09pz5rkb3SyOp0Ms0AwJFBSbWIHKMxtQXr2E8lX4t+9+fwd7i522ytcCtMdQF9Prurj6wBJgRH64BBzqrcI1DdFvY6cQAOjIogt40UEz/QTA97gUKd9L25/7qbXu9ZonJ0EbaN3vJJ/c+Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XAfJYNhsJolS0xAsAehD7qCcQFNKug+mqugHwRemQE=;
 b=G+2J7AMrxCfQs2mT58Jz0SxltvCPTpfQ4bi8EYMh+wVSH4rhOv4g5TCBaUle9SAcYuj7PUtWiOV2dY8MJ7KkteC0jToIIQToHH+TnwJU+d4Tnwrzlh9CUSF/IUxB99cMbwy9L6PcTS3wImPOQHoAFcleYa6+JKJ3J7Y960xWf1Mqkz+UiFyTU8yiDWc/FP+LxLJHd+C9sCrRNr2NxWcFbRVHSyCLswo1QAII5Yc1/AUzrP3C8629t2l1a+zmztnhkMjJGM/GJuCzbhX7k63If6KO37UUDgy9+apm0Ne6T/nByGhWTk6PrjK/FEQ//B42q4VRgp4A5PBXyuVwvWq6rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL1PR11MB5446.namprd11.prod.outlook.com (2603:10b6:208:31e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 16:17:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 16:17:04 +0000
Date: Fri, 24 Feb 2023 08:17:00 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y/ji/H4Pb8eV+hyq@mdroper-desk1.amr.corp.intel.com>
References: <20230223183954.1817632-1-jonathan.cavitt@intel.com>
 <167721498518.4564.1103466210538718560@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <167721498518.4564.1103466210538718560@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL1PR11MB5446:EE_
X-MS-Office365-Filtering-Correlation-Id: c9ea3268-71f4-45d4-5d25-08db16829110
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R4hfKe6TUaa51WuftL3rCc3tkiSav2FpIbM7D8BvUdktlevC4+mm87UGW5+DTYYTG9CHR3rf3/UM386wlaq5ZXp6fG8wLzhulImeiRPPqM10EWc0md89OVQPjwoqLEdC34LIg5q8CYyPSD6g7Kkh7NccIR01I+LXd+qppXdU/qLJyXDlImORyZJi8rKnrCVVnJWz68b57KzU+0D97UNypcLjcAItbkC/teZAODMlipaGOKQRZFI9kGVL6znSnzb3faGt7HGl9qOpyMCT2EpZGGHXw20qHJm/fsmEuY+bSMG4wZelD/zyn47vglaI7lBj5VHB9W+JQ0QDYRLPfx+L95t6ne9CH/1H07X+Xo2L9U2P/ofNfLrO/COROm3RAeWSNCkJKQ0lEblCwmZFaxnP9t9frBUjfgCPboQNd+NQw8myyhgwIPBFlYJwcKqgak9KLbFK+KxbQma8srz9eJ2Xy7GiMgPnIq2PZsB6ehy6i2EIVbHGqmpDpmvQNjKVBifER9lMC2h8kselheOTziGkeeLWaXSzuQqgVPL7lX7gOWQfXwcqW98mphRkxbqrj4eC97ZZRk3zVlKsd9e3NOBNved8ylU5p+tIFLBOUe4pfiQClLQFC07Yc9oI3LCE4aJ8LdA63uUUX342nZTzK7jdFvLP4EKhNE5PBTeCHnLybKM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199018)(2906002)(30864003)(8936002)(5660300002)(41300700001)(66946007)(4326008)(83380400001)(6916009)(66476007)(66556008)(6666004)(316002)(966005)(107886003)(478600001)(6486002)(186003)(6506007)(38100700002)(6512007)(82960400001)(26005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JJmncp/EqhNRWP1pvk+GB2QK7/98dtFBq/mc2avEiYNLw0HXlW8o4NgXwLlp?=
 =?us-ascii?Q?47na9slK3R9SPEZwXoKt1PCy1Fc68f8XB/+zzD5HHDUhte5MrkDEhrqEiPqM?=
 =?us-ascii?Q?wRkv29kyRUuz1JWSie3GUJJTwcm+0jrLaSyaMjjMP7orS+q+gfMcbGFWtOuZ?=
 =?us-ascii?Q?REkTUbYwRbEjFbpytSFuetMNyX0EiFNrUi3s0uYyJ9X8kvUnR4fxkqq3tt7K?=
 =?us-ascii?Q?ATgZbJT2pdz3tEAk6akrGD/kLxyDbKGunidmB7tDLfXUMyrIfNeqHMHrpfKn?=
 =?us-ascii?Q?m8Y7ZX5dv1RdssvX5wCjOchQ65IAazSElbLOnXvWJM6MUBz47F7XeSvxsYdw?=
 =?us-ascii?Q?2Y4q163xWPQtv5jAHie8JN6sRwO0V8SaNYdVvQz9J0BiutBSUTyUAlHGoE1j?=
 =?us-ascii?Q?GXzHh58cBCsUadgSARRnYHbehD5VW04svkfU5sQHAOgy6zCQOXxjuoh6VR7L?=
 =?us-ascii?Q?j1ma+Cwj1rGyAdcgysJAOaku8BnLg5fJ2fAYsS4Nxv+4ND4lkrFhdJlz0i2Y?=
 =?us-ascii?Q?QbBtEPOlPaOynpg6LMiujq8H3IV6Q4e53Tuvev6ikPx8ci8O1gMM1EWDF1Ow?=
 =?us-ascii?Q?FCrzsUwqX2eE/HY3OwsRuarEAL8PgvLvTR+Qt0Pd01LmA4W3Yl17pEmUiqWY?=
 =?us-ascii?Q?UbHWc0KktX+J1wzkpk3cRBf/GvCsClIDFqcvc7lTZldepr7SMpLu8CfuhGT4?=
 =?us-ascii?Q?7wkWpEB9Lkn3s8dVqFxF1279AlWHCV3UG1P7dLLorJWKehh28qKeM0IzJxdg?=
 =?us-ascii?Q?xJgBqKU53VEwuwhRJxUcua7hLDoZ0dXuOYFQg1ka4wu2p4L4k+kMxxbt6jWU?=
 =?us-ascii?Q?Bz+SO/CDoO92QurIw/84gwYhEiRwuPOKTiPaYvP/h7ueeJE7T/Brd5ei+OS3?=
 =?us-ascii?Q?uOXUYAe7I/j5H296GHWj8UD/8UI6bT8fKRaXNkG2l/VQcIxlwFWO+HRhZxuN?=
 =?us-ascii?Q?G4z/Mo+ghly0BliecP8vt7BJCgkRUD3rYg9uhCHtknS4R/11cCJoq2rc5TyH?=
 =?us-ascii?Q?hInQPIMANLuWdB0oE2elkTn8sAnSmbNlKa4OaQUT/RVS5z3uB+JWmwFFmE0i?=
 =?us-ascii?Q?iIB5nQectGxfMeFoqhK7P7Zc6lUyTJzRpCHSDHsAk4Uyziz52vK1z9careCV?=
 =?us-ascii?Q?iZt04MqE8AYsmbu9DLNTL/m6ZOHoMdJEqDvcOQEj2fim8v7F0v4Aa9KBvFPa?=
 =?us-ascii?Q?gQZtbWaIalYFL9jP/sw5I/rTq3JDg2stlAspAyRRX9IRajzMRv8VhRP9sQUp?=
 =?us-ascii?Q?QX5YTaSO9CzVmQG4ncUCZgBAfOdYIffMo0lHvhVS+sxi7xW7cZl3UbwMbvA9?=
 =?us-ascii?Q?E0YLSWZHx27KG1rZb+ABR/FkTCCugvf9hp2dBhgYEROUfOJ2pyU1GZ1vrO49?=
 =?us-ascii?Q?DFtDzvNHS+9HSxUbP4SlU8+m0Z54oBXZFTOzriqqFKEIlRV4DqG93VmltiDd?=
 =?us-ascii?Q?/TpZiy72KuU9O1cJUTa5m+n6bRpnUOPR/MnNMCaklgyRRMB4ttKUSxUz8LuI?=
 =?us-ascii?Q?yybEox2Hdg8tL6PRhDB5dlHfgHjvckZqzDH2AQYZgiew25iYC3t+T3srsFGT?=
 =?us-ascii?Q?oYrNvl4v/UWogbgG/EEXmQjn/H9F1VepqQ2mRVOW2hEdf6VR75L3y/NJlWon?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9ea3268-71f4-45d4-5d25-08db16829110
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 16:17:04.0416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n38zgbdk9POp5buJSv8hDdOhiGGKTc1ppES/ZL/bySpvhorz9aa/D/9OshhdiWXPdDlg4qGjPWA1PUTrhW3jbAPEdhs0JXyt0QMu2tg6tTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5446
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_X-Tile_support_changes_to_client_blits?=
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 24, 2023 at 05:03:05AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/mtl: X-Tile support changes to client blits
> URL   : https://patchwork.freedesktop.org/series/114309/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12774_full -> Patchwork_114309v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_114309v1_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_hdr@invalid-hdr}:
>     - {shard-tglu}:       NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-5/igt@kms_hdr@invalid-hdr.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_114309v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-tglu-10:      NOTRUN -> [SKIP][2] ([i915#7456])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-10:      NOTRUN -> [SKIP][3] ([i915#7701])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_buddy@all-tests:
>     - shard-tglu-10:      NOTRUN -> [SKIP][4] ([i915#6433])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@drm_buddy@all-tests.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-tglu-10:      NOTRUN -> [SKIP][5] ([i915#1839])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@feature_discovery@display-3x.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu-10:      NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglu-10:      NOTRUN -> [SKIP][7] ([i915#280])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-tglu-10:      NOTRUN -> [SKIP][8] ([i915#6344])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu-10:      NOTRUN -> [FAIL][9] ([i915#2842])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-tglu-10:      NOTRUN -> [SKIP][10] ([fdo#112283])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-tglu-10:      NOTRUN -> [SKIP][11] ([i915#4613]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-tglu-10:      NOTRUN -> [SKIP][12] ([i915#4270]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-tglu-10:      NOTRUN -> [SKIP][13] ([fdo#109312])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-10:      NOTRUN -> [SKIP][14] ([i915#3323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu-10:      NOTRUN -> [SKIP][15] ([i915#3297]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-tglu-10:      NOTRUN -> [SKIP][16] ([fdo#109289]) +4 similar issues
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglu-10:      NOTRUN -> [SKIP][17] ([i915#2527] / [i915#2856]) +4 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_hwmon@hwmon-read:
>     - shard-tglu-10:      NOTRUN -> [SKIP][18] ([i915#7707])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_hwmon@hwmon-read.html
> 
>   * igt@i915_pm_backlight@bad-brightness:
>     - shard-tglu-10:      NOTRUN -> [SKIP][19] ([i915#7561]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_pm_backlight@bad-brightness.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglu-10:      NOTRUN -> [WARN][20] ([i915#2681]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-tglu-10:      NOTRUN -> [FAIL][21] ([i915#2681] / [i915#3591])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-tglu-10:      NOTRUN -> [SKIP][22] ([fdo#111644] / [i915#1397])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#6537])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl7/igt@i915_pm_rps@engine-order.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-apl4/igt@i915_pm_rps@engine-order.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-tglu-10:      NOTRUN -> [SKIP][25] ([i915#4387])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu-10:      NOTRUN -> [SKIP][26] ([i915#6245])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][27] -> [DMESG-FAIL][28] ([i915#5334])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-apl4/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu-10:      NOTRUN -> [SKIP][29] ([i915#3826])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>     - shard-tglu-10:      NOTRUN -> [SKIP][30] ([i915#5286]) +7 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-tglu-10:      NOTRUN -> [SKIP][31] ([fdo#111614]) +4 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][32] ([fdo#111615]) +8 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-tglu-10:      NOTRUN -> [SKIP][33] ([i915#2705])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglu-10:      NOTRUN -> [SKIP][34] ([i915#6095]) +5 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][35] ([i915#3689] / [i915#6095]) +3 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][36] ([i915#3689]) +14 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][37] ([i915#3689] / [i915#3886]) +9 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglu-10:      NOTRUN -> [SKIP][38] ([fdo#111615] / [i915#3689]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-tglu-10:      NOTRUN -> [SKIP][39] ([i915#3742])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-tglu-10:      NOTRUN -> [SKIP][40] ([fdo#111827]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][41] ([i915#7828]) +8 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu-10:      NOTRUN -> [SKIP][42] ([i915#6944] / [i915#7116] / [i915#7118]) +2 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu-10:      NOTRUN -> [SKIP][43] ([i915#3116] / [i915#3299]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu-10:      NOTRUN -> [SKIP][44] ([i915#3359])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-tglu-10:      NOTRUN -> [SKIP][45] ([fdo#109274]) +4 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][46] -> [FAIL][47] ([i915#2346])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-tglu-10:      NOTRUN -> [SKIP][48] ([i915#3840])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu-10:      NOTRUN -> [SKIP][49] ([i915#3555]) +10 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglu-10:      NOTRUN -> [SKIP][50] ([fdo#109274] / [i915#3637] / [i915#3966])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-tglu-10:      NOTRUN -> [SKIP][51] ([fdo#109274] / [i915#3637]) +8 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-tglu-10:      NOTRUN -> [SKIP][52] ([i915#2587] / [i915#2672]) +4 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
>     - shard-tglu-10:      NOTRUN -> [SKIP][53] ([fdo#109280]) +41 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-tglu-10:      NOTRUN -> [SKIP][54] ([fdo#112054] / [i915#5288])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][55] ([fdo#109271]) +10 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-snb2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-5@pipe-b-vga-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-a-hdmi-a-1:
>     - shard-tglu-10:      NOTRUN -> [SKIP][56] ([i915#5176]) +19 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-10:      NOTRUN -> [SKIP][57] ([i915#6524]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-tglu-10:      NOTRUN -> [SKIP][58] ([i915#658]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-tglu-10:      NOTRUN -> [SKIP][59] ([fdo#111068] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-tglu-10:      NOTRUN -> [SKIP][60] ([fdo#110189]) +38 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][61] ([i915#5465]) +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-snb2/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglu-10:      NOTRUN -> [SKIP][62] ([i915#2437])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@prime_udl:
>     - shard-tglu-10:      NOTRUN -> [SKIP][63] ([fdo#109291])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@prime_udl.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - shard-tglu-10:      NOTRUN -> [SKIP][64] ([fdo#109295] / [i915#3301])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@prime_vgem@basic-userptr.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-tglu-10:      NOTRUN -> [SKIP][65] ([fdo#109295])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-tglu-10:      NOTRUN -> [SKIP][66] ([fdo#109307])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:
>     - shard-tglu-10:      NOTRUN -> [SKIP][67] ([fdo#109315] / [i915#2575]) +3 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-4096:
>     - shard-tglu-10:      NOTRUN -> [SKIP][68] ([i915#2575]) +5 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-tglu-10/igt@vc4/vc4_create_bo@create-bo-4096.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - {shard-rkl}:        [FAIL][69] ([i915#7742]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@drm_fdinfo@idle@rcs0.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][71] ([i915#2582]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@fbdev@write.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][73] ([i915#2842]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][75] ([i915#2842]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt:
>     - {shard-rkl}:        [SKIP][77] ([i915#3281]) -> [PASS][78] +6 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-6/igt@gem_exec_reloc@basic-gtt.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-5/igt@gem_exec_reloc@basic-gtt.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - {shard-rkl}:        [SKIP][79] ([i915#3282]) -> [PASS][80] +4 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@gem_userptr_blits@forbidden-operations.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-5/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - {shard-rkl}:        [SKIP][81] ([i915#2527]) -> [PASS][82] +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - {shard-rkl}:        [SKIP][83] ([i915#3361]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@i915_pm_dc@dc9-dpms.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - {shard-dg1}:        [FAIL][85] ([i915#3591]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][87] ([i915#79]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - {shard-rkl}:        [SKIP][89] ([i915#1849] / [i915#4098]) -> [PASS][90] +16 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - {shard-rkl}:        [SKIP][91] ([i915#433]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-2/igt@kms_hdmi_inject@inject-audio.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-1/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_plane@plane-position-hole@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][93] ([i915#1849]) -> [PASS][94] +4 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
> 
>   * igt@kms_psr@primary_render:
>     - {shard-rkl}:        [SKIP][95] ([i915#1072]) -> [PASS][96] +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-5/igt@kms_psr@primary_render.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@kms_psr@primary_render.html
> 
>   * igt@kms_vblank@pipe-b-query-idle:
>     - {shard-rkl}:        [SKIP][97] ([i915#1845] / [i915#4098]) -> [PASS][98] +30 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/shard-rkl-1/igt@kms_vblank@pipe-b-query-idle.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/shard-rkl-6/igt@kms_vblank@pipe-b-query-idle.html
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
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
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
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
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
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
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
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3528]: https://gitlab.freedesktop.org/drm/intel/issues/3528
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
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
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6245]: https://gitlab.freedesktop.org/drm/intel/issues/6245
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6333]: https://gitlab.freedesktop.org/drm/intel/issues/6333
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#7052]: https://gitlab.freedesktop.org/drm/intel/issues/7052
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7791]: https://gitlab.freedesktop.org/drm/intel/issues/7791
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7949]: https://gitlab.freedesktop.org/drm/intel/issues/7949
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12774 -> Patchwork_114309v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_114309v1: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114309v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
