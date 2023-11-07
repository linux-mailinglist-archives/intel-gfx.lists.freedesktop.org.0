Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D547E4AB5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 22:30:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD45A10E6BF;
	Tue,  7 Nov 2023 21:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BB110E6BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 21:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699392597; x=1730928597;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=5qwevAGdabLOHCre9oZjsZiVrtMytvIHwAzfNMubKIw=;
 b=oBg8V3fmyXzLlWUjj2fkwCuP3KtCnSSeGo9k3UEJ82iwZ6cIUGXJUh7q
 4Xfk6fFx+ONrTK9e9jiO8c+3GIo/cp3QZJs/Y8hGIlIPQLVgWnXQICK1a
 lMzedMRoF/2IBXt9QQ32gtHEPRIWb/AsNxi5WFzrXdSzX3aHgn78bZ6uv
 30QXVKOyq+zWcB/8x03YK8xFgjy1YxHC9fjdRGSe7NOI0T99BzLL3SMOA
 6qOI3nAEXYk4omOPQ9F5reBmUltB3yCM5QNbHky7b2JvB0/NxQi8Njo5l
 Zwbo92aRkfP3pQCBPKtWLxRkib13CeQu/X9XwSXyKsO1Z8hcm9YXMJ0o2 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="393549442"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="393549442"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 13:29:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="10568000"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 13:29:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 13:29:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 13:29:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 13:29:55 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 13:29:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lQxiwldhhcKw3mCfyMBnUpQ7l54s2REbnUc2rdTdqPxaSxc+12rQsAuA2dKFulo0PC774ZTCZFSx8gDnhCqBi3VvUEJBMBXtVVqJeSZ1XLuzPNOm0E1lE2Zqe2RWLB4mnBQfLg9z6FnbgUc0Q5NfLmixZ3T+MxyjjWuk0aW8lbnx87yfyo/KyvR9jvh6EVaYGBmpByhpPBlSnRGPuGDy/DLfoXOqT2EuO/LcHbABznwAisOig/c7tdfytN1S9SQkHe7xrCr1w8FOgUEuGpVQ6ZpoDbs0ZQoDo6f1ciDZoSxGXNqX54NiyUYaeqCLYXJpCR2UtWeWJQPS/UXMQadeEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iknJLIikj0peXpHatHIaN+/6Cag+rgJ36O+yGCVeKwE=;
 b=ZLzZFpe6octjCnD2EiDzXb1W+syEF9WgwjDG5ZA+GTFCL4VZx/5X/hkVrtEwd8OqmkBbB/kcT2hnYc+F5Ke2x5ktbK0I77chwCJzewLTDGau+cpjaguTAKwuLwEB+WGUbeyHawtQtcOVsLPxdKCJZrBuMxSL6OLpWzg/XFFWdMliKUm1vssfWVvP+z2D98LewURm+wuKG98PEqFNMRoIKgAppgdZHjpH4N+NMPtKtQIVznrwcVy1PnDQfwAAzzlH2KKZZ2KwH53n5qsmn+QqydwDZY0KhPPvm+afkP/RSPpAUNZo34wljcKrRpOMKmgCmQnD4iT/1qz+7AYYAgOLCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by DM4PR11MB6455.namprd11.prod.outlook.com (2603:10b6:8:ba::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Tue, 7 Nov
 2023 21:29:25 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::929d:7372:b3aa:2541]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::929d:7372:b3aa:2541%5]) with mapi id 15.20.6954.028; Tue, 7 Nov 2023
 21:29:25 +0000
Date: Tue, 7 Nov 2023 13:29:22 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231107212922.GX1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231106201959.156943-1-gustavo.sousa@intel.com>
 <169934332542.21167.1247457460764041338@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169934332542.21167.1247457460764041338@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR07CA0035.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::48) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|DM4PR11MB6455:EE_
X-MS-Office365-Filtering-Correlation-Id: 0143cd04-5b6c-4d25-1862-08dbdfd89d3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AjK4d9ExaFNaZjevBgn8YRnIiWMaVJMZ+IKJ12JQ5mepghg+sUQT2QyO8xRza6qz7YNWgK/WBOjLd3rZYiqtBAYY0kF4FGtZvZZWfKDFwNV8keAU44e/yJySDVJNpiwAuCqEUP0XSr6X2t+Mvmzq6bThFwi5zss0s/v5xHDT7Ppv8RiuNEaCZ/bG0VYDecvv5xxE64kM3S1MzxTH4hhTEHn658QL4zYvhxUAwIflANeDcgVlvr2NItjOhZTZZ/5pXRL/2afvTZ7v1wcGk2ybg8ic80+W+S3/MgtBW79wL6m6slL1SGLzJrxcHYdzN8iBZt2NC6DTYyxDr3JiNBVLn139+iOrJU+fUW84m/IcSbBIn9oit7pEJUNW5Sz/+K1S1Qzz5hf4jwCNbhKQcyEPhn/N2fxvSiUHdOz4eYHqn6D4JlywK3uGC0NtcYDDRBceIjx4ltMqvE6KAh5zuaamE7evheX13EfdTEZD69fjHbOvofp9n1A3cH0oIYqW6rdp4Y4HPoQqSQ5Utq91NmsBNDOxAmM311134MPe77iKH96Q8FUvo9/zC95XSgjhnZlmG99M1nrlN0cuwX5A+eGzFCysRUBwZGKMcbfGcph0e9d7e1T3fBDxT6xfg79tvvfBXM8WgcFH8lyNw1LQxcHIPwGpglRc6XT/ju7j9MD4Y9Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(346002)(396003)(136003)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799009)(64100799003)(451199024)(6512007)(41300700001)(966005)(66476007)(66946007)(66556008)(6666004)(478600001)(6486002)(5660300002)(6506007)(4326008)(1076003)(8936002)(6916009)(316002)(107886003)(30864003)(26005)(2906002)(83380400001)(82960400001)(38100700002)(86362001)(33656002)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I6ZEetaanm6sxL9PYPRfi45T3Qf2nzIJ58scEMaiT1tVUVtrpERo4TSL0gT5?=
 =?us-ascii?Q?Xf2aXn7U8HXv19dhLMhMThJ78CRlODkRgX1qsZgOjf1y8IeqipDpJ/kdWLFH?=
 =?us-ascii?Q?LjkmFceFaYIpmfCWTcabTuI+Ca9h3hVaN1b+vZhj4Wy3ndalxlFPdpnwyIS4?=
 =?us-ascii?Q?HVBX1tOpIbOAVw1gzwvU1HpzHoNOexW9BZ18UlQpar5erR0N/mHp29FaV9YD?=
 =?us-ascii?Q?8agquigmXePbXnGAH8MYPCuI9V1QuH1jEvM+SxcROKoB9TsZOQUmUmwq00tZ?=
 =?us-ascii?Q?J4XQlD4EoRgNDCVb15abYfH3mwf0ph+A/y/4Id7M3E+nk7XV1DImowIEpoNb?=
 =?us-ascii?Q?VZPL+L6atwGh/L5NknRMSvuk4F5aU5Kv2V6i+1+U5acaZM3iphpHTUBhLNUg?=
 =?us-ascii?Q?WIMvwKywjBx1fDwVMoHNgDGVHdr3zau1dqChh1Upn1MjVEmgFMRHmgGKCWNY?=
 =?us-ascii?Q?wRa6uJI9OTZovWBQa9HKIvPY4OBArX86PjeSe/qxz9Szy/XFmpOKBydqWnfq?=
 =?us-ascii?Q?cUC6GJv5YCB9tZEs027G/FVdQU/871EawzXZBpR9KWm+2zZcZfEJTOYZpqiE?=
 =?us-ascii?Q?Vtiq9GCB4RMaCKQExyD+U95lZU03/5r2a9ZPzOY5sfksmPk0l0wK0ZElKiZm?=
 =?us-ascii?Q?XW9n8bFJ7eaMJLunXu3aoZX2/EoFu8Trb66xzelOYghwPrx9futvospnOjnj?=
 =?us-ascii?Q?TNj9xwTMsPL+LXN24ajyav0K8ESysoMNEG0YplMcSJRuzG+qcqIX2RdpGX0F?=
 =?us-ascii?Q?JJR09zLQxVCn1+NckHWWVEXV4I19Znyx4MeIFpDNP2g1VkdycxcZrdgQDZx9?=
 =?us-ascii?Q?Cr8lQn3tSHNWf+yWe57ViY3nm/+tFqbt8DVKK8hW5V5fi33dhoZba73LjbTV?=
 =?us-ascii?Q?dYMnmJ5bAsmmKqeI53lI32CLSMF5VjcGsxJkGc04P1wsmfCn5Rc4xxzFZdAW?=
 =?us-ascii?Q?CFbO6F8+8MqLpKXjkovrChP9xfGulP7eFHbzKdB+LKiP3N7NCBRVXFH92v0Q?=
 =?us-ascii?Q?N+GHikQPVuFQe+0s7KEi49CMXOrZ+m8oR1CnIy5gWe4djK9a+B51pSMxxNWT?=
 =?us-ascii?Q?HdnG8AMWXUnjQbd3qIx6vnpibGcdvd0w0+6JVbNwuankfURgSx++8odR60HL?=
 =?us-ascii?Q?IHZompA2VBISnSXGxv3rbeQBRCBH9VWD4y7GY+8tM2RauBTi5XS3qGbKK0Q7?=
 =?us-ascii?Q?i4uA1LCeP9CDkL1bp/jvJvmnB0f8hKkYta2/1PZbgjagSbn5Y3uU8oilveR6?=
 =?us-ascii?Q?Ha+6Ld3/LpwV/ZnLBDIhGNADlXd5koSdCtvSWHfyiWKXHbj1t+LzrF+LvcHJ?=
 =?us-ascii?Q?2w/6ypoyGvWp7g8nSe+4oQ6LU4z4z+S7wp/3r9UTdudNZXiVIDPv1hiyIBoC?=
 =?us-ascii?Q?BtsYgS3i4AlgtZEGrqJ/ZgvbRRNULCrtav2nNxfDRNaYBDYlRHBgxLlr9jSK?=
 =?us-ascii?Q?gcgbznxUiiYlHHEdpCGqPfzR8q3bPJ50zFZyX+pQxfk2URVkX8gG41Zd+rtw?=
 =?us-ascii?Q?WZM/7Ldzpdx36epFKswyax1Pmb5Eyzm1VuseZkAFTRaKQjaqP2IjSaPD62lg?=
 =?us-ascii?Q?tETuTIrrQ8WCR+VoH8RmwRIqNZIL3ARSI1kWwwh79UXQkF2PQv+86YjLPI/x?=
 =?us-ascii?Q?lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0143cd04-5b6c-4d25-1862-08dbdfd89d3b
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2023 21:29:25.0107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUYkFXrNr+xWRcC+5Cw+7axZsU4Pwv4KMXcOCN7LxGLn/4gu9+fMYvIytwl9P4Ge8Ptsqd8Q0uCnX611KeiiYePR6bkasxq5Pnh5QGL196E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6455
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915/xelpmp=3A_Add_Wa=5F16021867713_=28rev2=29?=
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

On Tue, Nov 07, 2023 at 07:48:45AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/xelpmp: Add Wa_16021867713 (rev2)
> URL   : https://patchwork.freedesktop.org/series/126033/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13844_full -> Patchwork_126033v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_126033v2_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_126033v2_full, please notify your bug team (lgci.bug.filing@intel.com) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/index.html
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): shard-mtlp0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_126033v2_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-snb:          [INCOMPLETE][1] ([i915#4528]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-snb4/igt@i915_suspend@basic-s3-without-i915.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb6/igt@i915_suspend@basic-s3-without-i915.html

SNB suspend/resume test behavior not related to this Xe_LPM+ workaround.

Applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@drm_fdinfo@memory-info-purgeable@lmem0}:
>     - shard-dg2:          NOTRUN -> [SKIP][3] +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@drm_fdinfo@memory-info-purgeable@lmem0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_126033v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [FAIL][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#8293]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl2/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl2/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl2/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl3/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl3/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl3/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl3/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl4/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl6/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl7/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl7/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl7/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl1/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl1/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl7/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl1/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl4/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl4/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl4/boot.html
>     - shard-glk:          ([PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [FAIL][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76]) ([i915#8293]) -> ([PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk7/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk1/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk2/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk2/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk3/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk3/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk3/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk4/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk4/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk4/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk5/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk5/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk6/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk6/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk9/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk9/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk9/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk6/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk8/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk8/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk8/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk7/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk7/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk1/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk1/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk1/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk2/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk2/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk2/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk3/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk3/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk3/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk4/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk4/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk6/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk6/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk6/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk7/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk7/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk7/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk8/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk8/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk8/boot.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk9/boot.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#8411])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          [PASS][103] -> [SKIP][104] ([i915#8411])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#8414]) +30 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#8414])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#9323])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#4098] / [i915#9323])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][109] ([i915#7297])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#6335])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#8555]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#280])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_ctx_sseu@invalid-args.html
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#280])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4771])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4771])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#4812]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#4525]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html
>     - shard-snb:          NOTRUN -> [SKIP][118] ([fdo#109271]) +26 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg2:          NOTRUN -> [FAIL][119] ([i915#9606])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#4473])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][122] ([i915#2842])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-tglu:         [PASS][123] -> [FAIL][124] ([i915#2842])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-10/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#2842])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#112283])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([fdo#112283])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3281]) +13 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#3281])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3281]) +10 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-rkl:          [PASS][132] -> [SKIP][133] ([i915#3281]) +3 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_exec_reloc@basic-write-wc-noreloc.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#4537] / [i915#4812])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          [PASS][135] -> [ABORT][136] ([i915#7975] / [i915#8213])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-rkl:          NOTRUN -> [ABORT][137] ([i915#7975] / [i915#8213])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4860]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-glk:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4613]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-apl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#4613]) +2 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4083]) +6 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4077]) +17 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@isolation:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4077])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_mmap_gtt@isolation.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#4083]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3282]) +8 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3282]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [PASS][148] -> [SKIP][149] ([i915#3282]) +8 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_pwrite@basic-random.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#4270]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_pxp@create-regular-context-2.html
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#4270])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#3282]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#8428]) +3 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#8411])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#4079])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4885]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#4079]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4879])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3323])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3297])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#3297]) +3 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#3297]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-dg2:          NOTRUN -> [FAIL][163] ([i915#3318])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_userptr_blits@vma-merge.html
>     - shard-rkl:          NOTRUN -> [FAIL][164] ([i915#3318])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([fdo#109289]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#2856])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#2527]) +2 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gen9_exec_parse@basic-rejected.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#2527]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#2856]) +5 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#6227])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#8399]) +1 other test skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
>     - shard-dg1:          [PASS][173] -> [FAIL][174] ([i915#3591])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#6621])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          [PASS][176] -> [SKIP][177] ([i915#7984])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@i915_power@sanity.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#109303])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#109302])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#5723])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg2:          NOTRUN -> [DMESG-WARN][181] ([i915#9311])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-dg2:          [PASS][182] -> [TIMEOUT][183] ([fdo#103375])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-6/igt@i915_suspend@forcewake.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-5/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#4212]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#4215] / [i915#5190])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][186] -> [FAIL][187] ([i915#2521])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#6228])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-apl:          NOTRUN -> [SKIP][189] ([fdo#109271] / [i915#1769])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-transition-fencing:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_atomic_transition@plane-all-transition-fencing.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#5286]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([fdo#111614] / [i915#3638]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([fdo#111614]) +6 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][194] ([fdo#111614]) +2 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
>     - shard-dg1:          [PASS][195] -> [DMESG-WARN][196] ([i915#4423])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-15/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#5190]) +19 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [PASS][198] -> [FAIL][199] ([i915#3743])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([fdo#111615]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([fdo#110723]) +2 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#4538] / [i915#5190]) +4 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#2705])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#7213] / [i915#9010]) +3 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#4087]) +3 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([fdo#111827]) +5 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([fdo#111827])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_chamelium_color@ctm-negative.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#7828]) +2 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#7828]) +10 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][210] ([i915#7828]) +5 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_chamelium_hpd@vga-hpd.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#6944])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][212] ([i915#7173])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#3299]) +1 other test skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3116])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic@pipe-a-dp-1:
>     - shard-apl:          NOTRUN -> [TIMEOUT][215] ([i915#7173]) +1 other test timeout
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl7/igt@kms_content_protection@lic@pipe-a-dp-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#7118])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3359])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-128x128:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#4098]) +5 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-128x128.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3555] / [i915#8814])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#3555]) +8 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([fdo#109274] / [i915#5354]) +4 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([fdo#109274] / [fdo#111767] / [i915#5354]) +1 other test skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([fdo#111767] / [fdo#111825])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#4103] / [i915#4213] / [i915#5608])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][225] ([i915#3546]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][226] -> [FAIL][227] ([i915#2346])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][228] -> [FAIL][229] ([i915#2346])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-apl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#1845] / [i915#4098]) +2 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#4103] / [i915#4213])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#4103])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#1257])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#8812])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#3555] / [i915#3840])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#3555] / [i915#3840])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([fdo#109274]) +8 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([fdo#111825]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#3637]) +1 other test skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#3637] / [i915#4098]) +2 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#8381])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][243] ([i915#2672]) +2 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#3555] / [i915#8810])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#3555]) +2 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#2672] / [i915#3555])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][247] ([i915#2672])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][248] ([i915#2672]) +6 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][249] ([fdo#109285])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#5274])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
>     - shard-rkl:          [PASS][251] -> [SKIP][252] ([i915#1849] / [i915#4098]) +2 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#8708]) +19 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#5354]) +37 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#8708]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#3023]) +12 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([fdo#111825] / [i915#1825]) +15 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][258] ([i915#1825]) +13 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#3458]) +20 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#1849] / [i915#4098]) +2 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-1/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#6301])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-mtlp:         NOTRUN -> [SKIP][263] ([fdo#109289]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][264] ([i915#4573]) +1 other test fail
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][265] ([i915#8292])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#5176] / [i915#9423]) +1 other test skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#5235]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#5235]) +19 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#5235]) +7 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-19/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#4098] / [i915#6953] / [i915#8152])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][272] ([i915#5235]) +2 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#3555] / [i915#5235])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d-edp-1.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#6524] / [i915#6805]) +1 other test skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][275] ([fdo#109271] / [i915#658])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][276] ([fdo#109271] / [i915#658]) +3 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#658]) +5 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          NOTRUN -> [SKIP][278] ([fdo#111068] / [i915#658]) +1 other test skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#1072]) +3 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_psr@primary_page_flip.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_gtt:
>     - shard-glk:          NOTRUN -> [SKIP][280] ([fdo#109271]) +36 other tests skip
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk5/igt@kms_psr@psr2_cursor_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-dg2:          NOTRUN -> [SKIP][281] ([i915#1072]) +6 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#5289])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][283] ([i915#4235])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-rkl:          [PASS][284] -> [INCOMPLETE][285] ([i915#8875] / [i915#9569])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][286] ([i915#4235] / [i915#5190]) +1 other test skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][287] ([i915#4235]) +1 other test skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][288] ([i915#3555] / [i915#8809])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][289] ([i915#3555] / [i915#4098])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-tglu:         [PASS][290] -> [FAIL][291] ([i915#9196])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1:
>     - shard-snb:          [PASS][292] -> [FAIL][293] ([i915#9196])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-vga-1.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][294] ([i915#8841]) +2 other tests dmesg-warn
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][295] ([i915#3555] / [i915#8808])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-3/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#2437])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#2437])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          NOTRUN -> [SKIP][298] ([i915#7387])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@perf@global-sseu-config.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [PASS][299] -> [FAIL][300] ([i915#4349])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-8/igt@perf_pmu@busy-double-start@rcs0.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][301] ([i915#6806])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][302] ([i915#5793])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#8516])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#3708] / [i915#4077])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#3291] / [i915#3708])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#3708] / [i915#4077])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@prime_vgem@basic-gtt.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted:
>     - shard-dg2:          NOTRUN -> [FAIL][307] ([i915#9583]) +2 other tests fail
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted:
>     - shard-rkl:          NOTRUN -> [FAIL][308] ([i915#9583])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html
>     - shard-snb:          NOTRUN -> [FAIL][309] ([i915#9583])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb7/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-submitted.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][310] ([fdo#109315]) +4 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@multiple-job-submission:
>     - shard-apl:          NOTRUN -> [SKIP][311] ([fdo#109271]) +156 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-apl2/igt@v3d/v3d_submit_cl@multiple-job-submission.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][312] ([i915#2575]) +4 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_submit_csd@single-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#2575]) +12 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@v3d/v3d_submit_csd@single-out-sync.html
> 
>   * igt@vc4/vc4_create_bo@create-bo-4096:
>     - shard-rkl:          NOTRUN -> [SKIP][314] ([i915#7711]) +4 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@vc4/vc4_create_bo@create-bo-4096.html
> 
>   * igt@vc4/vc4_mmap@mmap-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#7711]) +11 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-2/igt@vc4/vc4_mmap@mmap-bo.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-mtlp:         NOTRUN -> [SKIP][316] ([i915#7711]) +3 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          [SKIP][317] ([i915#8411]) -> [PASS][318] +1 other test pass
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@fbdev@nullptr:
>     - shard-rkl:          [SKIP][319] ([i915#2582]) -> [PASS][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@fbdev@nullptr.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@fbdev@nullptr.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][321] ([i915#6268]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
>     - shard-tglu:         [FAIL][323] ([i915#6268]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][325] ([i915#7975] / [i915#8213]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-1/igt@gem_eio@hibernate.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - shard-mtlp:         [ABORT][327] ([i915#9414]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-5/igt@gem_eio@in-flight-contexts-10ms.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-8/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][329] ([i915#2842]) -> [PASS][330]
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-rkl:          [SKIP][331] ([i915#3281]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][333] ([i915#5493]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          [SKIP][335] ([i915#3282]) -> [PASS][336] +1 other test pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gem_readwrite@write-bad-handle.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-dg2:          [FAIL][337] ([fdo#103375]) -> [PASS][338] +1 other test pass
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-5/igt@gem_workarounds@suspend-resume-context.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-6/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-rkl:          [SKIP][339] ([i915#2527]) -> [PASS][340]
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@gen9_exec_parse@unaligned-jump.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-dg1:          [FAIL][341] ([i915#3591]) -> [PASS][342]
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][343] ([i915#7790]) -> [PASS][344]
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-snb7/igt@i915_pm_rps@reset.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][345] ([i915#1845] / [i915#4098]) -> [PASS][346] +17 other tests pass
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         [FAIL][347] ([i915#3743]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * {igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs}:
>     - shard-rkl:          [SKIP][349] ([i915#4098]) -> [PASS][350] +9 other tests pass
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_ccs@pipe-b-bad-pixel-format-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][351] ([i915#1849] / [i915#4098]) -> [PASS][352] +7 other tests pass
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * {igt@kms_pm_rpm@modeset-non-lpsp-stress}:
>     - shard-rkl:          [SKIP][353] ([i915#9519]) -> [PASS][354]
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * {igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3}:
>     - shard-dg1:          [FAIL][355] ([i915#9196]) -> [PASS][356]
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-13/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][357] ([i915#9196]) -> [PASS][358]
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][359] ([i915#7957]) -> [SKIP][360] ([i915#3555])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg1:          [SKIP][361] ([i915#4423] / [i915#4565]) -> [SKIP][362] ([i915#4565])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg1:          [SKIP][363] ([i915#2527] / [i915#4423]) -> [SKIP][364] ([i915#2527])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg1-16/igt@gen9_exec_parse@bb-secure.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg1-18/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
>     - shard-tglu:         [WARN][365] ([i915#2681]) -> [FAIL][366] ([i915#2681] / [i915#3591])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html
> 
>   * igt@kms_async_flips@crc@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][367] ([i915#8247]) -> [DMESG-FAIL][368] ([i915#8561])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-mtlp-2/igt@kms_async_flips@crc@pipe-a-edp-1.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][369] ([i915#4098]) -> [SKIP][370] ([i915#5286]) +5 other tests skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          [SKIP][371] ([i915#5286]) -> [SKIP][372] ([i915#4098]) +1 other test skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][373] ([i915#1845] / [i915#4098]) -> [SKIP][374] ([fdo#111614] / [i915#3638])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][375] ([fdo#111614] / [i915#3638]) -> [SKIP][376] ([i915#1845] / [i915#4098])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][377] ([fdo#110723]) -> [SKIP][378] ([i915#1845] / [i915#4098]) +1 other test skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][379] ([i915#1845] / [i915#4098]) -> [SKIP][380] ([fdo#110723]) +3 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          [SKIP][381] ([i915#7118]) -> [SKIP][382] ([i915#1845] / [i915#4098])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_content_protection@atomic.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][383] ([i915#1845] / [i915#4098]) -> [SKIP][384] ([i915#3116]) +1 other test skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][385] ([i915#4098]) -> [SKIP][386] ([i915#3555]) +3 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][387] ([i915#3555]) -> [SKIP][388] ([i915#4098])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-rkl:          [SKIP][389] ([fdo#111825]) -> [SKIP][390] ([i915#1845] / [i915#4098])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][391] ([i915#1845] / [i915#4098]) -> [SKIP][392] ([fdo#111825]) +4 other tests skip
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          [SKIP][393] ([i915#1845] / [i915#4098]) -> [SKIP][394] ([i915#4103])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          [SKIP][395] ([i915#3555] / [i915#3840]) -> [SKIP][396] ([i915#4098])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_dsc@dsc-with-bpc-formats.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][397] ([i915#3955]) -> [SKIP][398] ([fdo#110189] / [i915#3955])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][399] ([fdo#111825] / [i915#1825]) -> [SKIP][400] ([i915#1849] / [i915#4098]) +7 other tests skip
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][401] ([i915#1849] / [i915#4098]) -> [SKIP][402] ([fdo#111825] / [i915#1825]) +29 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][403] ([fdo#111825]) -> [SKIP][404] ([i915#1849] / [i915#4098])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][405] ([i915#1849] / [i915#4098]) -> [SKIP][406] ([i915#3023]) +14 other tests skip
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          [SKIP][407] ([i915#3023]) -> [SKIP][408] ([i915#1849] / [i915#4098]) +5 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-rkl:          [SKIP][409] ([i915#1845] / [i915#4098]) -> [SKIP][410] ([i915#3555] / [i915#8228])
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-4/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-rkl:          [SKIP][411] ([i915#3555] / [i915#8228]) -> [SKIP][412] ([i915#1845] / [i915#4098])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_hdr@static-toggle-suspend.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][413] ([i915#4070] / [i915#4816]) -> [SKIP][414] ([i915#4816])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][415] ([i915#1845] / [i915#4098]) -> [SKIP][416] ([i915#6301])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-rkl:          [INCOMPLETE][417] ([i915#8875] / [i915#9569]) -> [INCOMPLETE][418] ([i915#9569])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-4/igt@kms_rotation_crc@bad-pixel-format.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-2/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][419] ([i915#5289]) -> [SKIP][420] ([i915#4098])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-rkl-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [INCOMPLETE][421] ([i915#5493]) -> [CRASH][422] ([i915#9351])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7957]: https://gitlab.freedesktop.org/drm/intel/issues/7957
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/intel/issues/8152
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/intel/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9261]: https://gitlab.freedesktop.org/drm/intel/issues/9261
>   [i915#9293]: https://gitlab.freedesktop.org/drm/intel/issues/9293
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
>   [i915#9581]: https://gitlab.freedesktop.org/drm/intel/issues/9581
>   [i915#9583]: https://gitlab.freedesktop.org/drm/intel/issues/9583
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13844 -> Patchwork_126033v2
> 
>   CI-20190529: 20190529
>   CI_DRM_13844: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7574: 0485a4bf66f69aaf7244a3e689402b522f636780 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_126033v2: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126033v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
