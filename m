Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90621780141
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 00:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3975310E17B;
	Thu, 17 Aug 2023 22:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9922210E17B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692312393; x=1723848393;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=0V3iPG3MEJVxblkWFWRDOfW3pK1l+7j69evGc7BXdJc=;
 b=fE/osyYidnVDLqzQzrOjPAV9P8Ze7tdKwr9Yfqm37G0R2FJxkNa+1g8Y
 ziBy8K/zF7nP0RMQYCMMJ73nh3ibHNyvqYo7iq00+8XkpAulOF+DXFQcn
 WSx1OnVfsdwAEL437DBZ09b0rqsfKQtzSYuA0ffjdJ3znhs+4ygBQbs+L
 mczsmdBiEqLQVhWE+1SR9eXQZE8GsH51axB+uyzed+310ly/WkERu71AA
 L86L9YcizLa6qirfAAQgKb140tfVZWmqUE/vh+6eFzBY/z28j7oM7GnEr
 qpkmKiyQEsc2xTWL5+ydrabMEVdqQO0x7q/KuRCNlBo6Zj6uX27Weukd2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="376709757"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="376709757"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 15:46:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="728346482"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="728346482"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 17 Aug 2023 15:46:02 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 15:46:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 15:46:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 15:46:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 15:46:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ff72PQI2m0fpYfp+ZhpYCsb0l5quyVloMAwBNTt/Cv+bs2W1zPvqE3zGkszsLzyChBLFwtZ4tRTqIFwOW4zwKG5FZBdMu5AXvFA/3yxGbXahUtZc0o3Lxc9TNSGC4pvIUvWaz5RNM1fj9oiWQf0AKUdwrfK+EdOGI2OmCWql/HN07N+CrIWqrkwbP0uEe8H+GoTxidbm5mfmTi9P2tdPYAko22N3jeYkmsMiog+nJzhryjBrS15rdJUvwEtwqLiCouQH2GphfmrLcFxXzMwynm0e2JspkTD8rHRqzMessEp3Jrds87EO+2dwb8PcgtKph5WC3B+o3B5Ymi/4yQ7sJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PgotgxpSKr2nM67b3GuKpwhWsUWKHXs8Ifekxs8dYJ4=;
 b=E2f0eeAru5WGhSOSC4OPWi0R+4kldveFrqp16F4KKaISd4kJMjg1TRVMTZpJwYZo7QIz0hLyYVKYlcDthyNcrhf2lOIHIBY2prylo3oswD8ek2Or+pOTO6cVw/jb8EQxCQ5Z3cKKuBZCJ55mxyXXgZjQo7QbTeMcINxnQ8TA3eB7hxon3MI7KcGp1BBdhQQ6s+2fjYDcdBzpaXTGSf0bGvhGghFLD3zk3599mC0JXgLWGKrj3h/ZDs7umTM4mV6PIocWMJn2nOCu/N0Om411b1oMzy+UX7P0M5Tve/Nkcxbjs5YhJhquUVOh3KfImcPUXD+1EiEGX5gl+YR/V+tOTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8424.namprd11.prod.outlook.com (2603:10b6:a03:53e::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 22:45:43 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 22:45:42 +0000
Date: Thu, 17 Aug 2023 15:45:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230817224540.GJ3375865@mdroper-desk1.amr.corp.intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
 <169191118591.30013.13776137084144898515@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169191118591.30013.13776137084144898515@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR05CA0167.namprd05.prod.outlook.com
 (2603:10b6:a03:339::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8424:EE_
X-MS-Office365-Filtering-Correlation-Id: f975975f-d049-4e8b-d21f-08db9f73aff5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xXeSIP/M4LUuEsQ4ZONi3LWCElWxaFnyJugxfAzIni46FSjWTWLksSwHDTVZ/agf2cNwDLWdhxzg19DHuOidy8aKxtQnsmCxwq1qID3kUuWxfXl+Cpn1BAGTB5Tqk4HPsbt7RgIDyuWGiaG+3hb6JZy9K+tsyPN040BgYs27X5UYCDORJWVOFTOuEB2+gwU/MBf3iNE4fGAEi1+HKoXQzhueCfecjP/eGPh5Qf+JhruC3kYuf1T7OUF5RoUPXtYySRAysR19g3MdlavUP+63m6V5qEFRKFLoYTI26lgcrQtuNI2Xfnq/VnwkeBBoZuXEUoKWEHTcWCOMXFcxwow1vTiUKUkPddmCK4Z8EFz0wKbdIFiQTKN1LAZFzDLVTxPIW6bxVas3BIT6BZpbQiaKb0jHsXDttbLyCzTLjO+UZJGue4304Z8rqEQrT1Yvpe3mKDkVsFD7YP4UWeKcbUO6pG2Dp99WV5QpHwXz8sOxCUEF4BF6jCdHcEeCbezFjUBluKk0bO4Vrpu8922Qm1KhbAElYdak9jqfJ5TFYvXgZW0Ts8z08hZvYEVmx6Z4KoM0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199024)(186009)(1800799009)(33656002)(86362001)(83380400001)(30864003)(8936002)(5660300002)(2906002)(41300700001)(1076003)(26005)(6506007)(6512007)(6486002)(966005)(478600001)(82960400001)(66476007)(316002)(6916009)(38100700002)(66946007)(66556008)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZO1CkE18Ks0gl2NuxUAFgrTzEgEjkYgc6sqFTUOSvG4w67wddYAawY1B9RWS?=
 =?us-ascii?Q?GJ9iHE+QxTiFxURox5Quj26WrKrwzkdJfjab4gJUXeUoVjG7eH2aKzwDDGBk?=
 =?us-ascii?Q?HXWDV/cU6GbcSTYOtRtNR+YwrzF/ApOfD7ZdX9Q8QY0AyaF59cw4nuU0mn3s?=
 =?us-ascii?Q?EtjNIrdiJwJvE0dqVV92Ro2UqafTS5rAYywLtEY+Hpg2kuW/YNlyCGN/LKZc?=
 =?us-ascii?Q?TY8/rdj47zC5+EmuGa/d9eh6Qu54oF0URnuvPYyzy2R2pbxcz+9TP8Qx0xKu?=
 =?us-ascii?Q?q4/2V569HueRzX8rQuv9nqmtURuwTcpAmJZQKqTAnZ0sc3hpIH5kFMrFj5yS?=
 =?us-ascii?Q?FvUYMrB/fjPAf8M6ikL1QCmiYttcmJGmoGXg2ss5Xt45vIcTWJ97p9LkHKrH?=
 =?us-ascii?Q?+IUckoF9iAG2hbyurgDoemRETYP84EnClhrOSmFQoDGp/1uE/gsWNPAceh2A?=
 =?us-ascii?Q?ggSJWaaevACeBjs11HLHpbYdzQt4ee1EUJBj0+kOOek8Eln87z0P3hSkNuaT?=
 =?us-ascii?Q?CJoqZYOlT4P88QxzFNyqQn9H1UmpcyVpIju4bhHcrOfmdaoKq4TAG2OVQRFL?=
 =?us-ascii?Q?PtfiU58KA0u8VfglCC3uwnEoow+1fu25Z3vLJNVY1Znvqo9YiyVGCDgOIem+?=
 =?us-ascii?Q?+icwWYReoVGtcMbbjmt+EKlbmxkhDJQGgrwGp2hxB9BLY7b4jDuwBm8CxLnf?=
 =?us-ascii?Q?n1ypTnkByTUr9fmB6e36h0KFw9oVufj/9NlbOgbUeI/Mb8OVA+8PfOZwaL/+?=
 =?us-ascii?Q?3hCXtIFwkSbCtbr70vaS+Eg+BLFIFZbloJeeKxGEXvEuRjeylSHdXayJ5VAR?=
 =?us-ascii?Q?qzcVb2DN16preVRaNhSLw10DDoYPNRCRCjyxc9pk2Gjj5hjn8yTiyBE3Op0E?=
 =?us-ascii?Q?ySmgxiDdWOk7le8M1VlggHPvrKww0V+0F5ub558HqKzj0UKtHBgxcwszNrSR?=
 =?us-ascii?Q?bXeJyOa/h1YsJhAbY2fTHk4rJB5Gtnpvqi3j4sqDIShxKNyeGaOKVAyHQp7e?=
 =?us-ascii?Q?OmBjGnzBNu8KAAr4v+1QsQkeBynq2mPe5vcgm/PGu4qFQ7GJ4KkynVqKc+BR?=
 =?us-ascii?Q?nMDUmPH8bjZxQHHMKuCUWLMF4WaOrWHjw6Ra5Yt0OEsABntW6I2a/wQHIEu6?=
 =?us-ascii?Q?0nsXHT5H4Bw3E5l5wm+jN+3q6++m7gdsmttgO9H7gW04XTHAuUPdsqnQ0yKb?=
 =?us-ascii?Q?V6FuPo2ksNcNTUuponRSCnEXjWv8qL5+vVJGklMz/nivewG/Ny3Ynt+Xuh87?=
 =?us-ascii?Q?ZAOquTnCoH8i29FFbkcEUT3oUal32rnDbv4G89Nl9xGYWJPtFAheyymjZHKU?=
 =?us-ascii?Q?+XKf22neH0uTNmeon580dsGRaDn/MZKmU4kM+TVaWZ4UvGEjGiS19Gs7H1ng?=
 =?us-ascii?Q?/jZb3TximEFrF8J6nXGkFKPkCrO+cXq3eNIgBx/fuzcrSoB5AgbdAJVjq4O/?=
 =?us-ascii?Q?XqxXTtDrXd+vsxc4/Er4ihj8dylsb+kEGfm2Bt/a6wedh3V+WGCMvbsIuow0?=
 =?us-ascii?Q?WrsE5XsVT+t0UiOLl6SUhZpqdO1rgIP/S+NbWOy0lPVhrz7MF9wri34Szp/Z?=
 =?us-ascii?Q?1hLoj1Uweu2M0Kj8nuSdGyiAirJWYcoNDneBWQSAj8l/qWLQCmukxNfdB0wZ?=
 =?us-ascii?Q?/Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f975975f-d049-4e8b-d21f-08db9f73aff5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 22:45:42.7372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c1C4JsQBRtD/aFqOMtbhA1tZ2g7YMhAXHMAUj+09WCxuPWMfyTAq/GV9p1skqsYxyrTxAekTRp1ekMPg0cyOYSDZb52lDNb96daSoqAujmQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8424
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/selftest=3A_Simplify_Y-maj?=
 =?utf-8?q?or_tiling_in_blit_selftest_=28rev3=29?=
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

On Sun, Aug 13, 2023 at 07:19:45AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915/selftest: Simplify Y-major tiling in blit selftest (rev3)
> URL   : https://patchwork.freedesktop.org/series/122318/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13511_full -> Patchwork_122318v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks Haridhar for the review.


Matt

> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-rkl0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122318v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [PASS][1] -> [FAIL][2] ([i915#7742])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-1/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-7/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#8414])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@drm_fdinfo@virtual-busy.html
> 
>   * igt@drm_fdinfo@virtual-busy-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414]) +1 similar issue
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@feature_discovery@display-4x:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#1839])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@feature_discovery@display-4x.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#7697])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8555]) +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-cleanup:
>     - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-snb6/igt@gem_ctx_persistence@legacy-engines-cleanup.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#5882]) +9 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [PASS][11] -> [ABORT][12] ([i915#7975] / [i915#8213] / [i915#8398])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-5/igt@gem_eio@hibernate.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-10/igt@gem_eio@hibernate.html
>     - shard-dg2:          [PASS][13] -> [ABORT][14] ([i915#7975] / [i915#8213])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-11/igt@gem_eio@hibernate.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-1/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-mtlp:         [PASS][15] -> [ABORT][16] ([i915#8503])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-8/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4771])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#6334]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [PASS][24] -> [FAIL][25] ([i915#2842]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gem_exec_fair@basic-sync.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3539] / [i915#4852])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-default.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +8 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-mtlp:         NOTRUN -> [SKIP][29] ([i915#4812])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][30] ([i915#7975] / [i915#8213])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4860]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][32] -> [TIMEOUT][33] ([i915#5493])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][34] -> [TIMEOUT][35] ([i915#5493])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#8289])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#4083]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_pread@uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#3282])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@gem_pread@uncached.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4270]) +2 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_readwrite@beyond-eob:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3282]) +2 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_readwrite@beyond-eob.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5190]) +10 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4079])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4079])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3297]) +4 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@huge-split:
>     - shard-tglu:         [PASS][45] -> [FAIL][46] ([i915#3318])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-4/igt@gem_userptr_blits@huge-split.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-3/igt@gem_userptr_blits@huge-split.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3297] / [i915#4880])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#3297])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][49] ([fdo#109289]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@gen3_mixed_blits.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([fdo#109289])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271]) +97 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-snb6/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#2527] / [i915#2856]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#2856]) +1 similar issue
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [PASS][54] -> [ABORT][55] ([i915#8489] / [i915#8668])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#8436])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][57] -> [SKIP][58] ([i915#4281])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-2/igt@i915_pm_dc@dc9-dpms.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-8/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#1937])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [PASS][60] -> [SKIP][61] ([i915#1397])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-17/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][62] -> [SKIP][63] ([i915#1397]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@fences-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4077]) +11 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@i915_pm_rpm@fences-dpms.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][65] -> [SKIP][66] ([i915#1397])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][67] -> [INCOMPLETE][68] ([i915#7790])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-snb1/igt@i915_pm_rps@reset.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-snb6/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-dg1:          [PASS][69] -> [ABORT][70] ([i915#4983])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-18/igt@i915_selftest@live@hangcheck.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-14/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][71] -> [FAIL][72] ([i915#2521])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-6/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-1/igt@kms_async_flips@alternate-sync-async-flip@pipe-d-edp-1.html
> 
>   * igt@kms_async_flips@crc@pipe-b-dp-2:
>     - shard-dg2:          NOTRUN -> [FAIL][73] ([i915#8247]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_async_flips@crc@pipe-b-dp-2.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#6228])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#1769] / [i915#3555])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-mtlp:         [PASS][76] -> [FAIL][77] ([i915#5138]) +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([fdo#111615] / [i915#5286]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([fdo#111614]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         NOTRUN -> [FAIL][80] ([i915#3743])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([fdo#111615])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5190]) +2 similar issues
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_mtl_mc_ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#5354] / [i915#6095]) +5 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_ccs@pipe-a-crc-primary-basic-4_tiled_mtl_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs_cc:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#3689] / [i915#5354] / [i915#6095]) +2 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_ccs@pipe-a-random-ccs-data-4_tiled_dg2_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#3689] / [i915#3886] / [i915#5354]) +9 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#6095]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3689] / [i915#5354]) +17 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([fdo#111615] / [i915#3689] / [i915#5354] / [i915#6095]) +1 similar issue
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_ccs@pipe-d-missing-ccs-buffer-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#4087] / [i915#7213]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_cdclk@mode-transition@pipe-a-dp-2.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([fdo#111827])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([fdo#111827]) +2 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#7828]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#7828]) +4 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3555])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-3/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@lic@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][95] ([i915#7173]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#7118]) +1 similar issue
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#6944] / [i915#7116] / [i915#7118])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#3555]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([fdo#109279] / [i915#3359])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-mtlp:         [PASS][100] -> [FAIL][101] ([i915#8248])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#3546])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([fdo#109274] / [i915#5354]) +4 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4103] / [i915#4213])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#3555] / [i915#3840])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8381]) +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([fdo#109274] / [i915#3637]) +2 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([fdo#109274]) +3 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
>     - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#79])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-glk8/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#2672]) +2 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#2672])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5274])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
>     - shard-dg2:          [PASS][115] -> [FAIL][116] ([i915#6880]) +1 similar issue
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#8708]) +12 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#1825]) +1 similar issue
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#8708])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([fdo#110189]) +3 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3458]) +15 similar issues
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5354]) +26 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([fdo#109280]) +10 similar issues
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8228])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4816])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][126] ([i915#8841]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-snb1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
>     - shard-apl:          NOTRUN -> [ABORT][127] ([i915#180])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
> 
>   * igt@kms_plane@pixel-format@pipe-b-planes:
>     - shard-mtlp:         [PASS][128] -> [FAIL][129] ([i915#1623])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-1/igt@kms_plane@pixel-format@pipe-b-planes.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-5/igt@kms_plane@pixel-format@pipe-b-planes.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2:
>     - shard-dg2:          NOTRUN -> [FAIL][130] ([i915#8292])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#5176]) +7 similar issues
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#5176]) +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#5176]) +3 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#5235]) +11 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#5235]) +11 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#6524] / [i915#6805])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-12/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#1072]) +6 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#5461] / [i915#658])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4235])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_selftest@drm_cmdline:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#8661])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_selftest@drm_cmdline.html
> 
>   * igt@kms_selftest@drm_plane:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#8661]) +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_selftest@drm_plane.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3555]) +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][144] -> [FAIL][145] ([IGT#2])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-12/igt@kms_sysfs_edid_timing.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-6/igt@kms_sysfs_edid_timing.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4818])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([fdo#109315] / [i915#2575]) +2 similar issues
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#2575]) +8 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@vc4/vc4_lookup_fail@bad-color-write:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#7711]) +4 similar issues
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-2/igt@vc4/vc4_lookup_fail@bad-color-write.html
> 
>   * igt@vc4/vc4_tiling@get-bad-handle:
>     - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#2575]) +1 similar issue
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@vc4/vc4_tiling@get-bad-handle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [FAIL][151] ([i915#7742]) -> [PASS][152]
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [FAIL][153] ([i915#5784]) -> [PASS][154]
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-19/igt@gem_eio@unwedge-stress.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-19/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          [FAIL][155] ([i915#2846]) -> [PASS][156]
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-2/igt@gem_exec_fair@basic-deadline.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][157] ([i915#2842]) -> [PASS][158]
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][159] ([i915#2842]) -> [PASS][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          [FAIL][161] ([i915#2842]) -> [PASS][162] +1 similar issue
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [ABORT][163] ([i915#7975] / [i915#8213]) -> [PASS][164]
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][165] ([i915#3989] / [i915#454]) -> [PASS][166]
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-tglu-8/igt@i915_pm_dc@dc6-dpms.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-tglu-2/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
>     - shard-rkl:          [SKIP][167] ([i915#1937]) -> [PASS][168]
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][169] ([i915#1397]) -> [PASS][170] +1 similar issue
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][171] ([i915#1397]) -> [PASS][172]
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-2/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [FAIL][173] ([fdo#103375]) -> [PASS][174]
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-a-edp-1:
>     - shard-mtlp:         [DMESG-WARN][175] ([i915#1982]) -> [PASS][176]
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-a-edp-1.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-64x64@pipe-a-edp-1.html
> 
>   * igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled:
>     - shard-glk:          [DMESG-WARN][177] -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-glk5/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-glk4/igt@kms_draw_crc@draw-method-blt@xrgb2101010-ytiled.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-4-rc_ccs-cc-to-4-rc_ccs-cc:
>     - shard-mtlp:         [FAIL][179] -> [PASS][180] +2 similar issues
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-4-rc_ccs-cc-to-4-rc_ccs-cc.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-4-rc_ccs-cc-to-4-rc_ccs-cc.html
> 
>   * igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-4:
>     - shard-mtlp:         [FAIL][181] ([i915#9056]) -> [PASS][182] +2 similar issues
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-2/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-4.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-6/igt@kms_flip_tiling@flip-change-tiling@edp-1-pipe-b-linear-to-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite:
>     - shard-dg2:          [FAIL][183] ([i915#6880]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-pwrite.html
> 
>   * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
>     - shard-mtlp:         [FAIL][185] ([i915#1623]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-5/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-8/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
> 
>   * igt@perf_pmu@busy-double-start@vcs1:
>     - shard-dg1:          [FAIL][187] ([i915#4349]) -> [PASS][188]
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-18/igt@perf_pmu@busy-double-start@vcs1.html
> 
>   * igt@perf_pmu@busy-double-start@vecs0:
>     - shard-dg2:          [FAIL][189] ([i915#4349]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-12/igt@perf_pmu@busy-double-start@vecs0.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [DMESG-WARN][191] ([i915#7061] / [i915#8617]) -> [WARN][192] ([i915#7356])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg2:          [SKIP][193] ([i915#7118]) -> [SKIP][194] ([i915#7118] / [i915#7162])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg2-6/igt@kms_content_protection@mei_interface.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg2-11/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         [FAIL][195] ([i915#2346]) -> [DMESG-FAIL][196] ([i915#2017] / [i915#5954])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][197] ([i915#3955]) -> [SKIP][198] ([fdo#110189] / [i915#3955]) +1 similar issue
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - shard-dg1:          [SKIP][199] ([i915#1072] / [i915#4078]) -> [SKIP][200] ([i915#1072])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13511/shard-dg1-18/igt@kms_psr@primary_mmap_gtt.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/shard-dg1-15/igt@kms_psr@primary_mmap_gtt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1623]: https://gitlab.freedesktop.org/drm/intel/issues/1623
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/intel/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7356]: https://gitlab.freedesktop.org/drm/intel/issues/7356
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/intel/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
>   [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8398]: https://gitlab.freedesktop.org/drm/intel/issues/8398
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8436]: https://gitlab.freedesktop.org/drm/intel/issues/8436
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8503]: https://gitlab.freedesktop.org/drm/intel/issues/8503
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#9053]: https://gitlab.freedesktop.org/drm/intel/issues/9053
>   [i915#9056]: https://gitlab.freedesktop.org/drm/intel/issues/9056
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13511 -> Patchwork_122318v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13511: 5d873909a143a3c5a272bc27699f3cd220b06d80 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7433: 74c7773be9eb4b8fc0828aad13d5c775289314ef @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122318v3: 5d873909a143a3c5a272bc27699f3cd220b06d80 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122318v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
