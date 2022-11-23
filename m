Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7750563601B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 14:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E2C10E206;
	Wed, 23 Nov 2022 13:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A4910E206
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 13:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669210731; x=1700746731;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NksQJm+KGUH2T3soWuFbr7NdfWWFNHcDCKoP10Z9Me0=;
 b=KsmeoPTlSaVlB2SwILpnzz/P8EIVEI7E1eRFKuzFXc6MOVNaTqe+PNVp
 jmIODAChZpT5yRHB3s+SHE2PNLilBcYR2WwGOQL3ipSmk4902cEExZqgS
 6S10i6wz93pGiYtXaBJqOPDJkHTdwx0H8xHXFaK2v8DEt+2JOByvAnbou
 VzTa3+P2+G4CSl4nxu9CSwQbu6KwDI/4Mhcf1PNkvhghsNXkJlBl/6r6+
 qLPO3MIKYbC2E8tM7geTlQ/EdQaF4unXxFRZwTr2nDNKRCvo5zgpt7y28
 V7QGUlLVQwsvKe8idXx5CfV/2Bc4P7IX5CPE/hB8TafiCpa2bV3B7Eu+k g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="400359592"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="400359592"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 05:38:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="644119542"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="644119542"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 23 Nov 2022 05:38:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 05:38:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 05:38:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 05:38:49 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 05:38:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F9KS4QCgVgIrFsGeWFxIAkAjoj1hdZWtvgG2/JBvgGD5LZ3W4tBse0BlhWIkA184bwS2ff6VokSvjtliHES+WSj4UsxjOQK+ZeTmoxmUaeHaHvKsVYcvnoWs/LTpwPepqJmvcnGlvXf6o5vtSK/xqGYvcDYs/MPnxjN5JA/BajGm2IHSY4poHV0aJo4TjZfFrWiumuZoM7Wfw9STDB5CXM5WWYX8Q3TRe8Y/lzYxZlHn1mR0neDVbZDj2jol7y5PpHuhm++Ofk3bOZF68spaLMBz8LKgAbirvRY3EtC1zor3qu21CuCxEAgZwF7LQwcwU+XEXA0dDtoJF4YB5Rds4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3SbG3EiiK7DT4j418Tt21tXVtBi/5pOH/oVZGTsxIrY=;
 b=JtDziSDcCKXasnQZteCtbl+I8Q0R4R5W0d1+Dp3t5l8B4sQB/SJ8XWuXbZHjALj/kNUSPUneUMcEDiKpEKKzvUWM8Zcgl6noCLcGnqJElxOp8qiuI3JvyTA8BExMvQXDw3E3sZu9dvFxsc16IiEJ9Z+fPo2Qjabl7rOkl7xEC3lewt5SWd2sKUm7tIBURbj77OUU/cvZ42wtUoodFviRtl/s9i64L8t7RpFBcz0xrUBLa/Ztu/FtAdXa/NlEhSf7ScKEOGqxp3Oza/bAx4KlIkRyfD2SvQCcOSQ1kCFHuQW1iYMKzErlA1emH+cKdF94HBW83B8HjlLXm7UNeA1OSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BL1PR11MB5397.namprd11.prod.outlook.com (2603:10b6:208:308::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.18; Wed, 23 Nov
 2022 13:38:46 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5857.018; Wed, 23 Nov 2022
 13:38:46 +0000
Date: Wed, 23 Nov 2022 10:38:40 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221123133840.7umwcfuyzvbqec7s@gjsousa-mobl2>
References: <20221122121343.18136-1-gustavo.sousa@intel.com>
 <166918311850.15575.8344885444562190474@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166918311850.15575.8344885444562190474@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0P220CA0027.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::18) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BL1PR11MB5397:EE_
X-MS-Office365-Filtering-Correlation-Id: 1edcd4df-fa65-4f1f-36c0-08dacd580b2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WqSTS3Kp5ZyEdnTanSMNyWt94C+FBx16C2JigtVgcVaBJJm18Y9NDIFG24EcMUNtCsgfgc93b6ljb0AW6ujwoSzGBFT6g41u6G9zIEPBWVkZ7bZC5Ji2g3dJanUVd18QNwf2sGoUGgYRoBhx5RGZgDhSPHlmJ0UhFxiaW8LVdE+GSJVsNvirG1GuqHQnZdHU5fPZBsvIf5dWX3R/khaw7TH/kntVryMaPMzr9zGtTIEunLNTfIIBzLqnX2rqGHtR4yE6K1tt54Ty0HXYDVlk6OeB285Xef6xT8iUXmRJ/VLWugjfkctCnh2H5xnMlQRC4VcsevwLTgWCJio6sbvZ5+auikgIWd5jcvhvdjjciEsriK+lGc0cNPmgFdmE24kC06WWCm/kS6jN9Y2LOOx9AFEoC1dxAw9XzMFKwBaJyAzfv57+1AoomXoAw9/M+iDJ4nRrWbl+s0EDlPHxhNUOdC+jM1ZJ+NPWh2bPyi1UiiVNx5Ixwtcu8RbZlN6OTxa7Mv79j3ieBe6f7Eudl9LS7ZcgA74Jlt4QN6vvGLaTEuC9jZT0bpw+LGaqkWEpO4Kn/LRPl2LwDigDomwgqxBGtPn3LRF7YwQCBCttPdrz1YVVfSAiDYAOjwZPzpLnff9RHPkpikAYB7KyxQAI1SyP0v2KfRSQS+a7TzNE3qXlsrVCymX950lReLdiPH1lWJBo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(376002)(136003)(39860400002)(366004)(346002)(451199015)(316002)(66556008)(66476007)(66946007)(4326008)(86362001)(33716001)(1076003)(186003)(83380400001)(6506007)(6666004)(6486002)(107886003)(966005)(478600001)(6512007)(9686003)(82960400001)(26005)(38100700002)(6916009)(15650500001)(2906002)(44832011)(41300700001)(5660300002)(8936002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u70kAro/9wgpNe5Lc44aRAwzP2yfbfZFQ7JpEk6JFTFMYYhsuPIw9vGAqukh?=
 =?us-ascii?Q?A8O9zRigz5/aMrwmHLYGHWOwOt5pnSZl0WqlCWUdCWvUHc9tLKF/bpq9x8iJ?=
 =?us-ascii?Q?76y0E5YsOzqAL6bzGc4s4tA2kEUbkSHiBHBTrsoTS5cr0Qf6EZX3Hp7Jlb8H?=
 =?us-ascii?Q?H5DS7tlO+I+wa7TnJgVdezG5jepzgQFHL/Zv5qSVKHcuVi+3T25hUyPCDqnM?=
 =?us-ascii?Q?ZQ2heBX1zyL7oJ7YwcjDdGsZS1zjCACs8L7JjNL45B0P+SYnsqjqXCw+ZCP/?=
 =?us-ascii?Q?UYEvxKdwbIOrI4sCU1ALTRsNzm49X3NAjrtIxznY6nQsnTzhhguUUDWb0pQD?=
 =?us-ascii?Q?9+nng3gewUWmIm0BX3UllNoFaa+hp4WYJXneaCcvp677/Kr/u0K8ejL2c4lD?=
 =?us-ascii?Q?cqMpgSuQD3VyR2pXBD2+5Z2Nur/fR9L8rlyeMBXZ0xf2RzIXm/092r8Vlixs?=
 =?us-ascii?Q?FyHGeYGVxMdxYm9Y3+2HoF4q8XU3Bh4EhOo9WRTibeenZL4v9m7UFpP9O7R0?=
 =?us-ascii?Q?oF/rgYXs0X6jUpcicVAzj5b+uDLvzfyWaqcWuoxm+tf7S+h9ixBrNR7E3bfB?=
 =?us-ascii?Q?aX0gEsYqAaLZgOu49DI+lzOXgut736MhJTJCOuv8RRAf7LKg3cPdYZtbbiYx?=
 =?us-ascii?Q?T8tbI+UCBfmzt95O+kL/JapPo3Jf2S2NmA8D1I7J+/ejFuHoQHQzBO4EeSlX?=
 =?us-ascii?Q?/cS3N3MnQLpCdoQvc4uHRFeeOGSkcIZeAtiASXg1u5WXCGEDMy4pC9xyZHRQ?=
 =?us-ascii?Q?wXXvTXP3mNw4TZSKFO4Mpm1ZtL7TEeGXYwcG84DnxtegJD/wQDyY+xu+sOaT?=
 =?us-ascii?Q?0aCGPS2VXO37NauYnpATWsXZWHTsqY9tTREt4nfm3vp8dQ2VXyaND5CKuRsH?=
 =?us-ascii?Q?Gdd/+EeZDpoUd2kr7He2IJgCUzt9PCIhT/sWPBlnQ0yA3HYu9Kxumww0DcQZ?=
 =?us-ascii?Q?ziaPUJaEDlEjWjFnCxjcKs9yZAFiaqri5A9K/nx9aBpO7rHoqIygR6Dlo1KN?=
 =?us-ascii?Q?H99cgFm6715jSS2+oG8jbqsxOdhT6L1AV+kbpXey/sM+fvWgBt732rHEfm91?=
 =?us-ascii?Q?jrh4PExFppZDQuMKZh5ucv+ctOUa0+YShFiZd5uJXQTRM0RPhX92voSOinTz?=
 =?us-ascii?Q?WtmccyHuc+dFPL/xfxAd7QSBkpz94iIgR7lAMdutNOizPWs8jXZJXSzVGeih?=
 =?us-ascii?Q?hiGz3jXO60fMMuOTMQLkrzXRuVGB8lkohNWRptlJc82H2a3kS/DJJSLKIH56?=
 =?us-ascii?Q?6nZW5spM39G1J5RQ75HzwRwtXhZE3Qr1dLGFeV6RgC3eYJLZ6GaxZWuQTQ2d?=
 =?us-ascii?Q?4tbHAw2xScTLFIoCKFi6cHaP0jx5+AiFPkQnsabG10FKxqcKcC3FjY/N8HLy?=
 =?us-ascii?Q?ajeY7CDBggEfZAX2OgEMfbfCacNgDrxMTIfUrqmSOb8VNhmO7V93zxGPX1/8?=
 =?us-ascii?Q?80DO4XpKIn96MzyQPhMsegvGmbVkEWjJYYy1WeR0XheKO9zRMs6+K6voqa/p?=
 =?us-ascii?Q?meXjWT3xVfYtzWGQq1jeqpFAF7nrktGG6tbstH8Fnz384IZNi9n4P51iXwa5?=
 =?us-ascii?Q?zeKVvmA3wyFRG+7M5yCL4M4ddnOE/g9CE+4mAVOA/K9SSqoAt2veBLildfUH?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1edcd4df-fa65-4f1f-36c0-08dacd580b2f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 13:38:46.2461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oANgTK8+mL7HhkDpIB1zoeFtazirBVJYcf1xAAWg4dlcDf35NLzDPcoFKVVXzuE8vsw4UPIVAoLJ5mUa5My1oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5397
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Update_DG2_DMC_version_to_v2=2E08_=28rev2=29?=
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
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 23, 2022 at 05:58:38AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc: Update DG2 DMC version to v2.08 (rev2)
> URL   : https://patchwork.freedesktop.org/series/111164/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12418_full -> Patchwork_111164v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_111164v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_111164v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_111164v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_universal_plane@cursor-fb-leak-pipe-c:
>     - shard-iclb:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb1/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb5/igt@kms_universal_plane@cursor-fb-leak-pipe-c.html

Not related to this patch, since the update is for DG2.

The error is very similar to
https://gitlab.freedesktop.org/drm/intel/-/issues/7586.

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_111164v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@fbdev@unaligned-write:
>     - shard-skl:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@fbdev@unaligned-write.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl9/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][5] -> [SKIP][6] ([i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#4613])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#4613])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#7248])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][10] ([i915#7248])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#3323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglb:         NOTRUN -> [SKIP][12] ([i915#6412])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-untiled:
>     - shard-apl:          NOTRUN -> [FAIL][13] ([i915#7036])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
> 
>   * igt@i915_pm_backlight@fade-with-dpms:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271]) +37 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl6/igt@i915_pm_backlight@fade-with-dpms.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][15] ([i915#3989] / [i915#454])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_selftest@live@gt_heartbeat:
>     - shard-apl:          [PASS][16] -> [DMESG-FAIL][17] ([i915#5334])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl8/igt@i915_selftest@live@gt_heartbeat.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl2/igt@i915_selftest@live@gt_heartbeat.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
>     - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#2521]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][20] ([i915#5584])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#3743])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3763])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#6095])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@kms_ccs@pipe-a-bad-rotation-90-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#3689] / [i915#3886])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#109284] / [fdo#111827])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb5/igt@kms_color_chamelium@ctm-limited-range.html
>     - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@kms_color_chamelium@ctm-limited-range.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +75 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3555])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#79])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-skl:          [PASS][37] -> [INCOMPLETE][38] ([i915#4839])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl6/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#2587] / [i915#2672])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#2672]) +4 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#2587] / [i915#2672])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109280]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
>     - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#2546])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][45] ([i915#4573]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_plane_alpha_blend@constant-alpha-min@pipe-c-edp-1.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#658])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([i915#5519])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2437])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#2437])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb5/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2437])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl7/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@interrupts:
>     - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#7318])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl10/igt@perf_pmu@interrupts.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl6/igt@perf_pmu@interrupts.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2994])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@write:
>     - {shard-rkl}:        [SKIP][55] ([i915#2582]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@fbdev@write.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@fbdev@write.html
> 
>   * igt@gem_exec_balancer@fairslice:
>     - {shard-rkl}:        [SKIP][57] ([i915#6259]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-4/igt@gem_exec_balancer@fairslice.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-iclb:         [SKIP][59] ([i915#4525]) -> [PASS][60]
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][61] ([i915#2842]) -> [PASS][62] +1 similar issue
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [FAIL][63] ([i915#2842]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - {shard-rkl}:        [SKIP][65] ([i915#3281]) -> [PASS][66] +6 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-5/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - {shard-rkl}:        [SKIP][67] ([i915#3282]) -> [PASS][68] +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@gem_partial_pwrite_pread@write-uncached.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-5/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - {shard-rkl}:        [SKIP][69] ([i915#2527]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@gen9_exec_parse@batch-without-end.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_hangman@gt-engine-error@bcs0:
>     - {shard-rkl}:        [SKIP][71] ([i915#6258]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@i915_hangman@gt-engine-error@bcs0.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-4/igt@i915_hangman@gt-engine-error@bcs0.html
> 
>   * igt@i915_pm_rpm@fences-dpms:
>     - {shard-rkl}:        [SKIP][73] ([i915#1849]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@i915_pm_rpm@fences-dpms.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][75] ([i915#5584]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][77] ([i915#1845] / [i915#4098]) -> [PASS][78] +28 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@ctm-green-to-red@pipe-c-edp-1:
>     - shard-skl:          [DMESG-WARN][79] ([i915#1982]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp-1.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl1/igt@kms_color@ctm-green-to-red@pipe-c-edp-1.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
>     - shard-iclb:         [FAIL][81] ([i915#2346]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][83] ([i915#2346]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [FAIL][85] ([i915#79]) -> [PASS][86]
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [FAIL][87] ([i915#79]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@b-edp1:
>     - shard-tglb:         [DMESG-WARN][91] ([i915#2411] / [i915#2867]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb3/igt@kms_flip@flip-vs-suspend@b-edp1.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb1/igt@kms_flip@flip-vs-suspend@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - {shard-rkl}:        [SKIP][93] ([i915#1849] / [i915#4098]) -> [PASS][94] +24 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
>     - shard-glk:          [FAIL][95] ([i915#2546]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-glk2/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-glk5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
> 
>   * igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:
>     - {shard-rkl}:        [SKIP][97] ([i915#3558]) -> [PASS][98] +1 similar issue
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-4/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
> 
>   * igt@kms_psr@sprite_mmap_gtt:
>     - {shard-rkl}:        [SKIP][99] ([i915#1072]) -> [PASS][100] +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@kms_psr@sprite_mmap_gtt.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-6/igt@kms_psr@sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglb:         [SKIP][101] ([i915#5519]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-tglb8/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@perf@gen12-unprivileged-single-ctx-counters:
>     - {shard-rkl}:        [SKIP][103] ([fdo#109289]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-4/igt@perf@gen12-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@mi-rpc:
>     - {shard-rkl}:        [SKIP][105] ([i915#2434]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@perf@mi-rpc.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-5/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@basic-read:
>     - {shard-rkl}:        [SKIP][107] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-rkl-3/igt@prime_vgem@basic-read.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-rkl-5/igt@prime_vgem@basic-read.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1:
>     - shard-apl:          [DMESG-FAIL][109] ([IGT#6]) -> [FAIL][110] ([i915#4573]) +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl2/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl6/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-dp-1.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][111], [FAIL][112], [FAIL][113]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][114], [FAIL][115]) ([i915#3002] / [i915#4312])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl1/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl7/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12418/shard-apl6/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl1/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/shard-apl8/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3692]: https://gitlab.freedesktop.org/drm/intel/issues/3692
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5030]: https://gitlab.freedesktop.org/drm/intel/issues/5030
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5584]: https://gitlab.freedesktop.org/drm/intel/issues/5584
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
>   [i915#6252]: https://gitlab.freedesktop.org/drm/intel/issues/6252
>   [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
>   [i915#6259]: https://gitlab.freedesktop.org/drm/intel/issues/6259
>   [i915#6403]: https://gitlab.freedesktop.org/drm/intel/issues/6403
>   [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
>   [i915#6497]: https://gitlab.freedesktop.org/drm/intel/issues/6497
>   [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6946]: https://gitlab.freedesktop.org/drm/intel/issues/6946
>   [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7248]: https://gitlab.freedesktop.org/drm/intel/issues/7248
>   [i915#7318]: https://gitlab.freedesktop.org/drm/intel/issues/7318
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12418 -> Patchwork_111164v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12418: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7071: 0801475083ccb938b1d3b358502ff97fdb435585 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_111164v2: 22789b788bcaf35826550836b0ad6872d6e85ca6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111164v2/index.html
