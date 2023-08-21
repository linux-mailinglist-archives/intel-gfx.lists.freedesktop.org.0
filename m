Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4CA782E53
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 18:23:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9921A10E28A;
	Mon, 21 Aug 2023 16:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46F2310E28A
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 16:23:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692635004; x=1724171004;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=avYpxX/gJvTUjCL+r3Cs6MS19n4jKKfug5+mveN+k1s=;
 b=E6IR6Y81le9MDEG1LZZtMJZ/yDFpg8aC68FFp3BX6dL4jKbPXZvhQBdP
 /TQLFCQkGsB0LPhr1yDVthOYGENVrDdv78K3/GrEKjxvM989aS1jW8xVO
 HBoGlX7kdcfWxxn1gcNPfc6Ep9Jqci4xgopoAuf6Wt1fPH0z1M/O2VRey
 2A6shK67fCOTxrjuFIyoK/1Am3mOo2xftIkpidgBXP1am543u8oHd1/Tw
 MPCyX8jkSKWDQmVFFYjkNMQ3+tU0YpvWULki5w49AL4crzVIvG1ahduef
 wRU7zcTx2jS02tqxmOj5I9ZcOaNsOEUlyF6C1ShtQE8yskEVFXVsletjp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="377377444"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="377377444"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 09:17:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="1066658799"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="1066658799"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 21 Aug 2023 09:17:32 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 09:17:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 09:17:32 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 09:17:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwDe1yH9grZZgN/6aZ62SVM7pKKyTfLMZdrBFeEnSd0QZRVe65GYFpNhZA2kv3ux/ZQ8O0BdFULFBjaAHvHz5FiOSOPMJTuFmKAsP27M4e9i0NczWkiltw8K0ZNiYmPxOaYhQrxfAMV6lZnjp2UZkIMhkbirSnqkdKhY9HcfBqts1I5OSpW+5rA15ZMn7jqusFLqR+Cmksw6iyhKo+1qpbRFzQQPcJJLNnehehztj7fcYFI0wZSC89e9cLNLKfHYCt25FoUddzOipY0tvaa74TZXB7itwCECRmetJZY4Wt+q2RfTfhVDTe3BrADbgG5KTxSV0wTbK0xu98WS020/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DtHqCSgP/uJHsHi9AnWXmmBzvctYcuL8YqyNsW4AwDw=;
 b=TJewj4PNxtLRMAI6x0MfWRt9+QP0rm72Q0Lym6IMwtco5DAY5/m8xV9/nqukmrxJjqVRLWOUAkStuXqjEd+UBdQ52znJKG3Nf01Moo1ewXCcD2jBDD3Z6ryObHuQv0WoE8fsZJU9eWg4Uz6BJ7S+wnUkcrlDW9hDAUudhTgZ5viXrDbg7jC2cISZGmjWoNVYPHeXIAlde+lBd1MCKc5JamxHS9R7W8fsglLi0EXPHLQJ5IT+FVm3+w4R5zGkAuWXZ/jmo76PaP5Z9CS5CvOlFZPVwtfC8Kg15mDorWK1hGoXvOp8a1iejqh3kOq9eJy+3V+6KQuUWUQGUSF63M23qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Mon, 21 Aug 2023 16:17:14 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 16:17:13 +0000
Date: Mon, 21 Aug 2023 09:17:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230821161709.GA5554@mdroper-desk1.amr.corp.intel.com>
References: <20230817175312.295559-1-gustavo.sousa@intel.com>
 <169241505447.8642.2805890375330777260@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169241505447.8642.2805890375330777260@emeril.freedesktop.org>
X-ClientProxiedBy: BY3PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:254::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB4785:EE_
X-MS-Office365-Filtering-Correlation-Id: 4886dcd8-5659-4e7b-4339-08dba262139a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Fb+CEVclDxFifYAtsZXba+U86hn+EprKld2yS0rNVulFALgN8KeOfFfW4KS2B8RmdwuyAFhQGHI7eqdV7Gd7Ry9TV8Ab+3DI1Hhi+SmL2D0AbqjX3Pb4CNw6VIbl1wFldiPcWhSzWqlcBsoj0OH37cVMjpyjsgp61wa51roC+QFuFWo5lGq9aLiyRu30M1jrjGVtkW5Un3ls8ulcB1m2ziU87h/025dQbrvwgp6nnLl70W2YL3rH+O9MrpTZXrhj9F8Q36NSADii4YOnMYp6J30jh1RlejJadbOuhffvuuegjGq6q5y5IwEgG7yztgLGtvrgSv5zB/aLZRF4M16OTqOSEhE+TLietyXKtcFPGuOE6YdtuZ326DqEOHvMIMNLQnP89xNyl1aWI08njNkoufrgxqb3f8ieBNmINchQGuzJC1gMkdPCpnU9diWpm6rnL7sVN7KyZjVZKrUBAUMmd+EAaOyWsrv2rHmnCO74orrM6Ez62jqgadQYRo2Zbpu5QlA8AxP4imZR2zo47HYPZkcVbP6ryJuQPI4wKnVfE0v8SJypPZWz+A+DQtwq6u+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199024)(1800799009)(186009)(2906002)(30864003)(38100700002)(6486002)(6506007)(83380400001)(5660300002)(33656002)(26005)(86362001)(8936002)(4326008)(107886003)(316002)(6512007)(66946007)(6916009)(66556008)(66476007)(82960400001)(966005)(478600001)(6666004)(41300700001)(1076003)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3b5Gcbmjy5Sjys1cWT+tHMCUwFL5DqWwlprNrOKlvIPDOg62wPsGy2RkFHHs?=
 =?us-ascii?Q?aM80tF6S8PE3GM7V56/U9zfcH7AhIHoNjFCYunENww+7uIuk4xRhCfmyAlpE?=
 =?us-ascii?Q?Q+MjmLi2o0EABuGJ94o4i6kE9Tr2+xsxOh5SHqGQtPLY8GXcmd9ljRM+rpjX?=
 =?us-ascii?Q?sDPSGzLZGrQFqAdDiD9kwhpg3eI8dmu2BRfJdDUh1G/bNlta5ZNl/fLDsObb?=
 =?us-ascii?Q?5DhLFsFlT8DXe4FsX8o01WiQKesoFhAwtGEyUsfmCVENdapTc7SsjZOc51DK?=
 =?us-ascii?Q?KL6T94ClSZea6FdJesNDaXiEbxrmEBHgQIAfpHLXrULcl6IUYa3u0pyKiw6G?=
 =?us-ascii?Q?mug2nC2JOGbAMlHw3E3lMfpZUsIhoxPFHd+ak92H/yNy2rFzTxqowI5waOsq?=
 =?us-ascii?Q?GAYa3ua1MuzypWT6mC4pcORqjNREklSZgehSpYY4L4KEzwCyq9DartnVk6No?=
 =?us-ascii?Q?c+Xa0jgHbmKAm7sRlP79pHzY78jtVUClUFU803wi/vehjil4THy5lv220n3X?=
 =?us-ascii?Q?e0fXbRchMnVTmbQxIPhPixiNX4gdcZfn3G3FL0d4rubvCD02bjFXoGbqlRYa?=
 =?us-ascii?Q?ct/Hstm1qtRYzvs+211iv7NCqk+9kjRRjMnZteq15ArtFO8Qn89jaXXfd6cl?=
 =?us-ascii?Q?jPDQX2N73hE1NMHzdVzw2+X4lSamPdMd0/nduZmw/Xtbm5VCCNSaRw4TMITh?=
 =?us-ascii?Q?Ii3X2Mg6z+L4MOdXUOoUUDqoN/jUyoU03TuqTFDgGs8GrMvUJGitKaEzv+AU?=
 =?us-ascii?Q?IG8WYb8jbNXAFufVki2WO4uL6d5pptdlMVT8K1kpPfDOAarQqdiLv5LIcccq?=
 =?us-ascii?Q?JDjjDDnvhs+RHg734RZjzPb6wNTT4QXSX2l00gyiA2wM9y4QxaMRPRvvYRyB?=
 =?us-ascii?Q?1wH0nZd8+a90Oe3lGuUfLpGUvqyVicN07JPc5AmWUpgOsPgqJr3weTzGOjlM?=
 =?us-ascii?Q?0GLXhKahDwMztJYC+/Ma0ZfwP3r0S3vsgLJkkgXo9A7LmxFG7JSdNVN7WyUT?=
 =?us-ascii?Q?PMDrjJyLYMC9WsEdcWtycyT0v3rPrCATXlqyynW/ClYoo18t2KHwSrK5sXhE?=
 =?us-ascii?Q?daWy9Ojm3a9GXhWyL3H4wUUoBDvwDtQ3MD2cFvSiRvvT2YgL/m+9T9NF+3Jt?=
 =?us-ascii?Q?c6q52mUX/INUYPzGY5bGXo4GbFjme0yv0uUmQR2KhjiGQdh4A/zxufKABHft?=
 =?us-ascii?Q?wwZbu7eO2FYa27oeVaYBP8C0mtWl4vddMMPv/r1sU7tjJWewNPlj68TVKnE4?=
 =?us-ascii?Q?K51cRed01KkijF8UlWONar1+7bfDoNFNesrrRHTT+93DM/gd3MfGGWuOjyUC?=
 =?us-ascii?Q?VBDNo2pnBIWpBSsajnJj6g60ZoZ+jvB5qo7I/V9/89Na94bDdGh4zlH0Am3C?=
 =?us-ascii?Q?qe/FNZbpOpLay+y3hi55kern2iRkw2EOQDR02O14WQYJQsuBzDXY1GM5YHe7?=
 =?us-ascii?Q?bIeM4/7pRcJgmgm4jUjD8TV7jovhG/1viaJNcYQDRqVCRMJtEJtldAoUfbZG?=
 =?us-ascii?Q?R4md+5Yd1U4iGmxufrEfg0r6H7GaREQ2wjSQk2DJv4PCIB+cgjsLWsBFZ57g?=
 =?us-ascii?Q?VqOYdZt4f8Slq2qIAq8K7yDi81nGOufrJYYdQ26DiTScnctgXQU38hVOg3UG?=
 =?us-ascii?Q?ZA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4886dcd8-5659-4e7b-4339-08dba262139a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 16:17:13.4605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jnpxQh6YL06FvlPyeP6MBAooGcAgeca2OSURrfAH9Gfhk5hSIimkUqfHV7uF9qEaE8msuBMk73Yyk7uTo8REoCeNa9TYCF/OlUpO9tg1Esk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Remove_unused_POWER=5FDOMAIN=5FMODESET?=
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

On Sat, Aug 19, 2023 at 03:17:34AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Remove unused POWER_DOMAIN_MODESET
> URL   : https://patchwork.freedesktop.org/series/122593/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13534_full -> Patchwork_122593v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122593v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122593v1_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_122593v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane_lowres@tiling-x@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-7/igt@kms_plane_lowres@tiling-x@pipe-a-hdmi-a-1.html

https://gitlab.freedesktop.org/drm/intel/-/issues/8875

> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-mtlp:         [DMESG-WARN][2] ([i915#2017]) -> [DMESG-WARN][3]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-1/igt@kms_psr@psr2_cursor_blt.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-6/igt@kms_psr@psr2_cursor_blt.html

https://gitlab.freedesktop.org/drm/intel/-/issues/9157


Applied to drm-intel-next.  Thanks for the patch.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122593v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#8411])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#7701])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@drm_fdinfo@busy-check-all@ccs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414]) +5 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@drm_fdinfo@busy-check-all@ccs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#7742])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#1839])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][11] ([i915#8841]) +3 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb7/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb6/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][13] -> [ABORT][14] ([i915#7975] / [i915#8213] / [i915#8398])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-9/igt@gem_eio@hibernate.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-10/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-snb:          NOTRUN -> [FAIL][15] ([i915#8898])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb6/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4812])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@pi@ccs0:
>     - shard-mtlp:         [PASS][17] -> [FAIL][18] ([i915#7765])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@gem_exec_capture@pi@ccs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_exec_capture@pi@ccs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [PASS][19] -> [FAIL][20] ([i915#2842])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-apl:          [PASS][23] -> [FAIL][24] ([i915#2842])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-apl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-apl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-glk:          [PASS][25] -> [FAIL][26] ([i915#2842])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3539])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#3281]) +5 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#3281]) +3 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4537] / [i915#4812]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][32] ([i915#7975] / [i915#8213])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4613]) +1 similar issue
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-8/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#284])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@big-bo-tiledy:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4077]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_mmap_gtt@big-bo-tiledy.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4083])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@close:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@gem_mmap_wc@close.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3282])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-snb:          NOTRUN -> [ABORT][39] ([i915#8865])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4270])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3282]) +6 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#8428])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4079]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_spin_batch@user-each:
>     - shard-mtlp:         [PASS][44] -> [DMESG-FAIL][45] ([i915#9121]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-5/igt@gem_spin_batch@user-each.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-4/igt@gem_spin_batch@user-each.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4079])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3297])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#3297] / [i915#4880]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([fdo#109289]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gen3_mixed_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([fdo#109289])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][52] -> [DMESG-WARN][53] ([i915#7061] / [i915#8617])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_backlight@fade-with-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#5354] / [i915#7561])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@i915_pm_backlight@fade-with-dpms.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#6590]) +1 similar issue
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@i915_pm_freq_mult@media-freq@gt1.html
> 
>   * igt@i915_pm_rpm@fences-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4077]) +5 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@i915_pm_rpm@fences-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][57] -> [SKIP][58] ([i915#1397])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][59] -> [SKIP][60] ([i915#1397]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([fdo#109293])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8925]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@i915_pm_rps@thresholds-park@gt1.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][63] -> [SKIP][64] ([i915#7984])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-8/igt@i915_power@sanity.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([fdo#109302])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][66] -> [DMESG-FAIL][67] ([i915#5334])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-tglu:         [PASS][68] -> [ABORT][69] ([i915#5122])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-10/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][70] -> [FAIL][71] ([i915#2521])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-2/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#8502] / [i915#8709]) +11 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][73] ([i915#8247]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-10/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
>     - shard-snb:          NOTRUN -> [FAIL][74] ([i915#8247]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb1/igt@kms_async_flips@crc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-snb:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#1769])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([fdo#111614]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][77] -> [FAIL][78] ([i915#5138])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([fdo#111614]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-mtlp:         [PASS][80] -> [FAIL][81] ([i915#3743])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#5190]) +5 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([fdo#111615]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4538] / [i915#5190])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#3886] / [i915#6095])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#3689] / [i915#5354]) +10 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3689] / [i915#3886] / [i915#5354]) +4 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#6095]) +4 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4087] / [i915#7213]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4087]) +3 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-red-to-blue:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#111827])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_chamelium_color@ctm-red-to-blue.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([fdo#111827])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#7828])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#7828]) +2 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3555])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-7/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#6944])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7118]) +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-10/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3555]) +3 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3359]) +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#8814])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#3546])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([fdo#109274] / [i915#5354]) +3 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#2346])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4103] / [i915#4213])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#3637])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([fdo#109274]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([fdo#111767] / [i915#3637])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>     - shard-snb:          NOTRUN -> [SKIP][109] ([fdo#109271] / [fdo#111767])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2122])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][112] -> [FAIL][113] ([i915#79])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@b-vga1:
>     - shard-snb:          [PASS][114] -> [ABORT][115] ([i915#8865])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-snb1/igt@kms_flip@wf_vblank-ts-check@b-vga1.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb7/igt@kms_flip@wf_vblank-ts-check@b-vga1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#8810])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#2672]) +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#2672])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#8708]) +5 similar issues
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          [PASS][120] -> [FAIL][121] ([i915#6880])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5354]) +18 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([fdo#109280])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#8708]) +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#1825]) +4 similar issues
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3458]) +6 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([fdo#110189])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3555] / [i915#8228])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][129] ([i915#8292])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#5176]) +3 similar issues
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#5176]) +5 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#5235]) +7 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#5235]) +3 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#5235]) +15 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#6524])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#658]) +1 similar issue
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr@psr2_cursor_plane_move:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#1072]) +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_psr@psr2_cursor_plane_move.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4235])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#4235] / [i915#5190])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_selftest@drm_cmdline:
>     - shard-snb:          NOTRUN -> [SKIP][140] ([fdo#109271] / [i915#8661])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb1/igt@kms_selftest@drm_cmdline.html
> 
>   * igt@kms_selftest@drm_format:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#8661])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_selftest@drm_format.html
> 
>   * igt@kms_vblank@pipe-c-query-busy-hang:
>     - shard-snb:          NOTRUN -> [SKIP][142] ([fdo#109271]) +192 similar issues
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb1/igt@kms_vblank@pipe-c-query-busy-hang.html
> 
>   * igt@v3d/v3d_job_submission@array-job-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#2575]) +3 similar issues
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@v3d/v3d_job_submission@array-job-submission.html
> 
>   * igt@v3d/v3d_submit_cl@bad-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#2575]) +2 similar issues
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@v3d/v3d_submit_cl@bad-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#7711])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@vc4/vc4_perfmon@get-values-invalid-perfmon.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#7711]) +3 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][147] ([i915#6268]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          [ABORT][149] ([i915#7975] / [i915#8213]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-12/igt@gem_eio@hibernate.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-mtlp:         [FAIL][151] ([i915#4475] / [i915#7765]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@gem_exec_capture@pi@bcs0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [FAIL][153] ([i915#2842]) -> [PASS][154]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-2/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][155] ([i915#2842]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@parallel@bcs0:
>     - shard-mtlp:         [TIMEOUT][157] -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@gem_exec_fence@parallel@bcs0.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-3/igt@gem_exec_fence@parallel@bcs0.html
> 
>   * igt@gem_exec_fence@parallel@rcs0:
>     - shard-mtlp:         [DMESG-FAIL][159] ([i915#8962] / [i915#9121]) -> [PASS][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@gem_exec_fence@parallel@rcs0.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-3/igt@gem_exec_fence@parallel@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [ABORT][161] ([i915#7975] / [i915#8213]) -> [PASS][162]
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][163] ([i915#5493]) -> [PASS][164]
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [SKIP][165] ([i915#1397]) -> [PASS][166] +3 similar issues
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_selftest@live@requests:
>     - shard-mtlp:         [ABORT][167] ([i915#7920]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-4/igt@i915_selftest@live@requests.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-5/igt@i915_selftest@live@requests.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-vga-1:
>     - shard-snb:          [FAIL][169] ([i915#2521]) -> [PASS][170]
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-snb4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-vga-1.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb5/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-vga-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [FAIL][171] ([i915#2346]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>     - shard-glk:          [FAIL][173] ([i915#2346]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-mtlp:         [FAIL][175] ([i915#4767]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-mtlp-1/igt@kms_fbcon_fbt@fbc-suspend.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-mtlp-1/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-glk:          [FAIL][177] ([i915#2122]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-glk6/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-glk2/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [FAIL][179] ([i915#6880]) -> [PASS][180] +1 similar issue
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@prime_busy@hang@rcs0:
>     - shard-snb:          [ABORT][181] ([i915#8865]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-snb7/igt@prime_busy@hang@rcs0.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-snb6/igt@prime_busy@hang@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg2:          [SKIP][183] ([i915#7118]) -> [SKIP][184] ([i915#7118] / [i915#7162]) +1 similar issue
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-dg2-6/igt@kms_content_protection@mei_interface.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-dg2-12/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][185] ([fdo#110189] / [i915#3955]) -> [SKIP][186] ([i915#3955])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][187] ([i915#3955]) -> [SKIP][188] ([fdo#110189] / [i915#3955])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][189] ([i915#4070] / [i915#4816]) -> [SKIP][190] ([i915#4816])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13534/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/intel/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#8898]: https://gitlab.freedesktop.org/drm/intel/issues/8898
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13534 -> Patchwork_122593v1
> 
>   CI-20190529: 20190529
>   CI_DRM_13534: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7443: 953448dbf2e63918a8eced9707f65fc0a19a9c85 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122593v1: 2c5542cb377b2e9e15c1f84a6e78a3d6fca47ea0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122593v1/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
