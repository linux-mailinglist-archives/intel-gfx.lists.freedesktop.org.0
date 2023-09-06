Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6227942A2
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 20:01:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A1410E6DD;
	Wed,  6 Sep 2023 18:01:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBF510E6E7
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694023313; x=1725559313;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/fsQUE/5RuC3FASzw2waiIrgIApZ9uyyFKE5+en97a0=;
 b=b8cIwn0LNCYgf0LKOt37/a+Vp3n5/OEYeJrtaK2hY7uF8xFYcQ5eylEG
 32y0D+IeYw8nsZCQSMfC146O1QJIFlgfPiIxAVeRVd3IWeHxCIzxPCQzn
 t90J2Tl3Y3iNhr5/y9HHxLwwfkYvX7zy0cwGgii1XDRrZBCj83mFqs7q2
 QLxhOO0kvnK14YUh4E7peasL6CGNFJ48/rGcF+hi2xuo2NzxEn8IcSca8
 mKHBA8fzF8WQivYuzUU/FI4fZs2qSpWLuIpzRi2sVQD3gXW+/X1CCe3JE
 NRvNUt99SGRpmzfU55HfYCXaj6z1TIpJ1e+7MRdnB+djdoOKYT5eU6eTa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="441118389"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="441118389"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 10:45:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="856551926"
X-IronPort-AV: E=Sophos;i="6.02,232,1688454000"; d="scan'208";a="856551926"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 10:45:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 10:45:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 10:45:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 10:45:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihmPy1YVuuhkDt0E/7XVvJ7MbR1cVjRhJEMiwRv4AS3DibfteLeKIGSJQozhWv5pOTcQmhd4d8Pmxl1kuCqiNMtrGaYmkevsPaGRpCMAw7yROOozcADpyOolzlsApDznGGNuIpjY7LhQ1bpvM7PMADBz+ZLkICt9ozdawTbpVFNU9siKnWJapdYVZD9wntTou8ZaGLfyKeWM8fH0S7u8kKtefj+Jiqw1CgIFlEebWYI2hEGDcUmdD5QLN0x5y+IlvusGWrI6NhcQwiKOowCrxb1haW+IKY6vIYJUhfxD01Hl9dr7TjRQNCCTMEyGgWhs8YkyNdywkdNHmtaGHpisqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+i9wp156NE3ppNhTTxxMwqp1yI/G5v1eY2QoZp+ysPI=;
 b=bM1dqo5oqd3uimUGJA/KlbrNRB4CQSB0AJ+tprlNAqVO87qWZ4oeyGhq5gsFuDlVrIKSrETB/5W0S9n5/PfQ+Lh0K1NcwPeFnYqtp1Q1VJPGYdLlDn67qC/H/eGMO11NYY7J83cdNslbXQeJaBHUQtpM2V5kPWLvviQuBAsbsyHfp1xVk+6aATHges5AvU7/dwcQV8LmQuMIhON5EdiecmMYiw9Ezu4uBjFyNtKPLkdqffm8/GnR/3R1/yivfIg8sKRBHzjquCKiQX2z6xRfsGB4RlYDVRWzn63LNSFgMpCgoMtBWjjJ+9+nsXjjaLpX5wdwu3QHSvN9Fp3QYsUZpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB5864.namprd11.prod.outlook.com (2603:10b6:510:136::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.32; Wed, 6 Sep
 2023 17:45:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.030; Wed, 6 Sep 2023
 17:45:06 +0000
Date: Wed, 6 Sep 2023 10:45:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20230906174503.GE2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230830121524.15101-1-gustavo.sousa@intel.com>
 <169351085572.12508.409341692225426677@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <169351085572.12508.409341692225426677@emeril.freedesktop.org>
X-ClientProxiedBy: BYAPR03CA0036.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::49) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB5864:EE_
X-MS-Office365-Filtering-Correlation-Id: 65c4f4a9-e101-44bd-14f3-08dbaf0101e1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3DiY9pd7vsW1s6OoMsq7bT7SOVwiGifS3C5sVNGhN2VZncydMiQ4Y/b+5oTPZQzW7zZhSgBJtp4qnex9Nv7+vuHe+FQifLxw6ymspl1qU/YDVqoYatwsT4ZIEbuVBDNOtAGtMegNtXxz+VWC2+6K6kymtgI2e0N8ijd1v5SOrOHW+AUHD1XhWmCIhOezi3N3Up9QDVGJ5HZFAbR3lXPdlmL+eMvZhkWxEwF6DDNoE3L9ftJOmoc4Bi9SBH7L+9+vwOBVpB/oI/i+Hc6eBnFAtqL6XQJe8Lg837I3ld/dCIIJDM/bwrhlJCRxRXZVIIOqOOeab4xmpxgJI4I0HQi46DKJ4XcUHUcmnjApoevu5/c7t3ZxCzFK3BU5udSFfRWtRoS7zXe2hym4yuMlxnziXDn2Mvo8nqX9/rxRiIRszjjMEYyd7H8axOe/hQVJQNVj/NkwIslbjFJoFmwxZmXONylnhzkJbp2Qhc4G8MLM2/UDpr4cPzVTvSkcbzb15otA6B+8JybLqCBwmNiXULtb+jWCIBBd3n99KfXuIIEbj1zcVJpQl0VlnYSfiShF79FN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(39860400002)(366004)(396003)(451199024)(1800799009)(186009)(4326008)(8936002)(6666004)(26005)(5660300002)(83380400001)(107886003)(1076003)(6486002)(41300700001)(6506007)(66556008)(66946007)(66476007)(38100700002)(6916009)(316002)(6512007)(33656002)(86362001)(82960400001)(966005)(2906002)(30864003)(478600001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kUEaXrHYRnBb3povcWMYQHlmfjAlMQ3qBaCQDJO6IzPa1BIbxYIg5Y/sOLkz?=
 =?us-ascii?Q?p2kal+idqUNPtbblXXpbL5SIHKm1/uruiZUEgiGp1qeMly77M6olC70MEiuo?=
 =?us-ascii?Q?6tuSIcluW67aLPJv9IVFxEg0kv4lHbFKMYSDmSuOZmcTlFPn8DnnENWKtZf2?=
 =?us-ascii?Q?pnw6kTsshQwklPHOyzRrzwh2WmqAcKAV9rtHH8R7cQCsAnw+sttPMauqnQ9d?=
 =?us-ascii?Q?/BLlP2xLcGyxGNmoib7tQ4pLLDdKBieyF4rpIfLiLh8SuwoT44ervzsYa/LF?=
 =?us-ascii?Q?/hrvufcKXzdaU+iIk9sTGZBbRJLyrc90Gltl2OtqC2ejnX6w0zA3dAPf57v6?=
 =?us-ascii?Q?EUNGdn5i+JBi1kvN0PSj8WeADvaMrE/4eO0Xt5AsG7hgKmU5n02ra/cHnAVX?=
 =?us-ascii?Q?euqL9a6J5kK8FLlktbpjW+17NPYNY3oHbLVNRhIckGTXel/cr5JPNg6LxIKh?=
 =?us-ascii?Q?XhlMI8q3rF1AUsXY4HeRM7gp9rs4pwAoW5G8iGH5pitTPxSmjN2klBcQTDcF?=
 =?us-ascii?Q?sQ1Z66+nVeSxXrNeMWJvPHZOz7wCYqLy24r/OTY9xa7Bry6khoT7AWIY+Gv9?=
 =?us-ascii?Q?odb7z85+/6p+McJZyhf6ucL45dHx+fnofo1LxKyFcuVX2lgoJimiyhrzHUk0?=
 =?us-ascii?Q?A0xse1WEYjXXTDKoG7bTpjFyKgCuudxRTOA/r9MoDIbWYDso+5kVz8aerXea?=
 =?us-ascii?Q?kqoU6wgqTmxkcZT9liwwMQQL0kgT57lOPKdvOXuADbTIYVGLLXbBgrPJqqUn?=
 =?us-ascii?Q?jhTRTri/9ArZDHT0rIq1j9npUNQSu/CZXbmM4PxM0OjNhbaSu1DzZpmfoAUx?=
 =?us-ascii?Q?2nOlUpxRFX0/VmnMUU/xLnWDTgTwaHk6TTmt0p6LXJZ3rrCkyDNmroXsB0j8?=
 =?us-ascii?Q?7G/ae3Nw8ja7ZWZm7Za4+M/FT5BWPYEXtQ96VLOSuuryfDyE1adn6n1fFqNY?=
 =?us-ascii?Q?0gxUopMJz300C3/V+SKGgURChUDqsTPaiDk/41BY6W3wkii3HtqWxofdq3zQ?=
 =?us-ascii?Q?OPQdZWTnePBqaZKIRSQgrael8hlJVopBQExf5mi54y2YRxKWp/KezrhWpVIr?=
 =?us-ascii?Q?4HQltKMlQZVbVAnOkief30B0vUZSpt9giuD9KFqEWs0HGMbffh5erv+PfnLp?=
 =?us-ascii?Q?Eu4/KoK45w3sV8nxwjk6Ffmn+a11M/c1IeS0C3AazFhL5ChYwicBBcfo2mTb?=
 =?us-ascii?Q?ogB/y+Z1FX8Wn9H0oRw3HCyMgsCqsega//ds9dzFTUW4jrd1c5jJ8o8X6Jwf?=
 =?us-ascii?Q?S0kq9QUt1wyMV6xYs+P+c/KJMgisIgCOv4C/MU4i9v5p2VzWmTcdiyro8Ys5?=
 =?us-ascii?Q?3jHLSibs2zZrqUin7KZn7PFksGLuzKj9S8r/94uu+PLkjLVXvSIm8s7Tnfbk?=
 =?us-ascii?Q?bmLe+by4zVbp/fDBgh7r+qLR9h1NDePc5X5DX2iMymeY8akLSMf7F48fo6AA?=
 =?us-ascii?Q?ftwDdo2kPbaTT4S1J1NU+pe+Y+0n/cRgJYgikLP9v78EcnY6KKjaHDkMGxiK?=
 =?us-ascii?Q?r2M5vKPl+dyrsDykEZDZL3jLRIXaZWSi1E6HeUUSONfy7UssPpV7ZuH3/Hud?=
 =?us-ascii?Q?5hZ83QAnqaUF9BZjVTcV+Hg8iXs2dOkJZb1gbIu1sZe3kCYUnqFtKptuOMB0?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65c4f4a9-e101-44bd-14f3-08dbaf0101e1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2023 17:45:06.8850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TyocJukoaPHHuEJiDek0nedgR0np72w/zPvUqtFAWC4YMubJG3cnNRVc9rb9oVFouo54kzDWDzOPS2gHZjfWu9slpdXqNt/+v+wAk8SSTcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5864
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/cx0=3A_Check_and_increase_msgbus_timeout_threshold_=28rev?=
 =?utf-8?q?3=29?=
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

On Thu, Aug 31, 2023 at 07:40:55PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cx0: Check and increase msgbus timeout threshold (rev3)
> URL   : https://patchwork.freedesktop.org/series/122982/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_13579_full -> Patchwork_122982v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_122982v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_122982v3_full, please notify your bug team to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_122982v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf_pmu@busy-idle@rcs0:
>     - shard-rkl:          [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-4/igt@perf_pmu@busy-idle@rcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-1/igt@perf_pmu@busy-idle@rcs0.html

Not related to this series; CX0 PHY code is not used on RKL (and is
unrelated to perf_pmu behavior).

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_122982v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#7701])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-idle@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8414]) +5 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@drm_fdinfo@busy-idle@bcs0.html
> 
>   * igt@drm_fdinfo@busy@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][6] ([i915#8414]) +9 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@drm_fdinfo@busy@ccs0.html
> 
>   * igt@feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#1839])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@feature_discovery@display-3x.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8555])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-cleanup@vebox:
>     - shard-mtlp:         [PASS][9] -> [ABORT][10] ([i915#8311])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-5/igt@gem_ctx_persistence@legacy-engines-cleanup@vebox.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-3/igt@gem_ctx_persistence@legacy-engines-cleanup@vebox.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg1:          [PASS][11] -> [ABORT][12] ([i915#7975] / [i915#8213])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-19/igt@gem_eio@hibernate.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-14/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [PASS][13] -> [FAIL][14] ([i915#5784])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-17/igt@gem_eio@reset-stress.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-19/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#4036])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          [PASS][16] -> [FAIL][17] ([i915#2846])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#2842])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-apl3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fence@submit:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4812]) +1 similar issue
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_exec_fence@submit.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +1 similar issue
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([fdo#112283])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3281])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3281]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-active:
>     - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3281])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@gem_exec_reloc@basic-wc-gtt-active.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][30] -> [TIMEOUT][31] ([i915#5493])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-10/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_madvise@dontneed-before-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3282])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_madvise@dontneed-before-pwrite.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#8289])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4083]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4077]) +4 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4270]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#3282])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4079])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4079])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#4879])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3297]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen3_render_tiledx_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([fdo#109289])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@gen3_render_tiledx_blits.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#2856]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][44] -> [DMESG-WARN][45] ([i915#7061] / [i915#8617])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2:          NOTRUN -> [SKIP][46] ([i915#7091])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#1902])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>     - shard-dg1:          [PASS][48] -> [FAIL][49] ([i915#3591])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
> 
>   * igt@i915_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][50] -> [SKIP][51] ([i915#1397]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-7/igt@i915_pm_rpm@dpms-lpsp.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          [PASS][52] -> [SKIP][53] ([i915#1397]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-11/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-10/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([fdo#109506])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#1397])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-dg2:          [PASS][56] -> [FAIL][57] ([fdo#103375])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-1/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8925])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8502] / [i915#8709]) +11 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-4-mc_ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#8502]) +7 similar issues
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc_ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#6228])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-mtlp:         [PASS][62] -> [FAIL][63] ([i915#3743]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([fdo#111614]) +2 similar issues
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190]) +4 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([fdo#111615]) +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4538] / [i915#5190]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#6187])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([fdo#110723])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3886] / [i915#5354] / [i915#6095])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +22 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-apl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-4_tiled_dg2_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3689] / [i915#5354]) +12 similar issues
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#6095]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs:
>     - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271]) +212 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-snb1/igt@kms_ccs@pipe-b-random-ccs-data-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3689] / [i915#3886] / [i915#5354]) +1 similar issue
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#3886] / [i915#6095])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#5354])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_ccs@pipe-d-crc-primary-basic-4_tiled_dg2_rc_ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4087] / [i915#7213]) +3 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#4087]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([fdo#111827]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#7828]) +3 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#7828]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_chamelium_hpd@vga-hpd.html
> 
>   * igt@kms_content_protection@atomic@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][83] ([i915#7173]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3299])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#7118]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-3/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][86] ([i915#1339])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3359])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][88] ([i915#8841]) +4 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-snb7/igt@kms_cursor_crc@cursor-suspend@pipe-b-vga-1.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([fdo#109274] / [i915#5354]) +2 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-apl:          [PASS][90] -> [FAIL][91] ([i915#2346])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#4103] / [i915#4213])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#9227])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl@fbc-hdmi-a-4.html
> 
>   * igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#9226]) +1 similar issue
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-16/igt@kms_dirtyfb@dirtyfb-ioctl@psr-hdmi-a-4.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#8812])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3555] / [i915#3840])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([fdo#109274]) +4 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([fdo#109274] / [fdo#111767])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#8381])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([fdo#111825]) +1 similar issue
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#2672]) +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#2672] / [i915#3555])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-dg2:          [PASS][103] -> [FAIL][104] ([i915#6880])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-12/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] ([i915#1825]) +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#5460])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3023])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3458]) +9 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5354]) +23 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([fdo#111825] / [i915#1825]) +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#8708]) +4 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3555] / [i915#8228])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][113] ([i915#8292])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-17/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#5176]) +11 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#5176]) +15 similar issues
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#5235]) +11 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5235]) +7 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#5235]) +15 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#1072])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#1072]) +4 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_selftest@drm_format_helper:
>     - shard-snb:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#8661])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-snb7/igt@kms_selftest@drm_format_helper.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3555] / [i915#8809])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@basic@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [FAIL][123] ([i915#5465]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-snb5/igt@kms_setmode@basic@pipe-a-vga-1.html
> 
>   * igt@kms_universal_plane@universal-plane-pipe-c-functional:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#4070] / [i915#6768]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-c-functional.html
> 
>   * igt@kms_vblank@pipe-d-query-busy:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#4070] / [i915#533] / [i915#6768])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@kms_vblank@pipe-d-query-busy.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3555]) +1 similar issue
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#2437])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#2437])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#2434])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@perf@mi-rpc.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#3708] / [i915#4077])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@v3d/v3d_perfmon@create-single-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#2575])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@v3d/v3d_perfmon@create-single-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#2575]) +6 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-8/igt@v3d/v3d_submit_cl@bad-bo.html
> 
>   * igt@vc4/vc4_perfmon@create-single-perfmon:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#7711]) +1 similar issue
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-3/igt@vc4/vc4_perfmon@create-single-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#7711]) +3 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-1/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#7711])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-purged.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][136] ([i915#7742]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@fbdev@eof:
>     - shard-mtlp:         [DMESG-WARN][138] ([i915#1982]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-8/igt@fbdev@eof.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-6/igt@fbdev@eof.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs1:
>     - shard-dg1:          [DMESG-WARN][140] ([i915#4391] / [i915#4423]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-15/igt@gem_ctx_isolation@preservation-s3@vcs1.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-15/igt@gem_ctx_isolation@preservation-s3@vcs1.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-mtlp:         [FAIL][142] ([i915#4475]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-1/igt@gem_exec_capture@pi@rcs0.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-mtlp:         [ABORT][144] -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-1/igt@gem_exec_capture@pi@vcs0.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-mtlp:         [INCOMPLETE][146] -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-1/igt@gem_exec_capture@pi@vecs0.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-1/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglu:         [FAIL][148] ([i915#2842]) -> [PASS][149] +1 similar issue
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-tglu-9/igt@gem_exec_fair@basic-flow@rcs0.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-tglu-8/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [FAIL][150] ([i915#2842]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][152] ([i915#2842]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][154] ([i915#2842]) -> [PASS][155]
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_spin_batch@spin-each:
>     - shard-mtlp:         [DMESG-FAIL][156] ([i915#9121]) -> [PASS][157] +1 similar issue
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-4/igt@gem_spin_batch@spin-each.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@gem_spin_batch@spin-each.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][158] ([i915#8489] / [i915#8668]) -> [PASS][159]
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
>     - shard-dg1:          [FAIL][160] ([i915#3591]) -> [PASS][161]
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][162] ([i915#1397]) -> [PASS][163] +1 similar issue
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-dg1:          [SKIP][164] ([i915#1397]) -> [PASS][165]
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-19/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-14/igt@i915_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-rkl:          [DMESG-FAIL][166] ([i915#4258]) -> [PASS][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-mtlp:         [FAIL][168] ([i915#3743]) -> [PASS][169]
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][170] ([i915#3743]) -> [PASS][171]
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          [FAIL][172] ([i915#6880]) -> [PASS][173]
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-dg2:          [FAIL][174] ([fdo#103375]) -> [PASS][175]
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_mmap_write_crc@main@pipe-a-vga-1:
>     - shard-snb:          [ABORT][176] ([i915#8865]) -> [PASS][177]
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-snb7/igt@kms_mmap_write_crc@main@pipe-a-vga-1.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-snb4/igt@kms_mmap_write_crc@main@pipe-a-vga-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [INCOMPLETE][178] ([i915#4817]) -> [FAIL][179] ([fdo#103375])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-dg1:          [SKIP][180] ([i915#7116]) -> [SKIP][181] ([fdo#109300])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-14/igt@kms_content_protection@mei_interface.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-12/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][182] ([i915#7118] / [i915#7162]) -> [SKIP][183] ([i915#7118]) +1 similar issue
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg2-11/igt@kms_content_protection@type1.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg2-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][184] ([fdo#110189] / [i915#3955]) -> [SKIP][185] ([i915#3955])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_psr@cursor_plane_move:
>     - shard-dg1:          [SKIP][186] ([i915#1072]) -> [SKIP][187] ([i915#1072] / [i915#4078])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-14/igt@kms_psr@cursor_plane_move.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-12/igt@kms_psr@cursor_plane_move.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - shard-dg1:          [SKIP][188] ([i915#1072] / [i915#4078]) -> [SKIP][189] ([i915#1072])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13579/shard-dg1-13/igt@kms_psr@primary_page_flip.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/shard-dg1-19/igt@kms_psr@primary_page_flip.html
> 
>   
>   [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1339]: https://gitlab.freedesktop.org/drm/intel/issues/1339
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4475]: https://gitlab.freedesktop.org/drm/intel/issues/4475
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4879]: https://gitlab.freedesktop.org/drm/intel/issues/4879
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5460]: https://gitlab.freedesktop.org/drm/intel/issues/5460
>   [i915#5465]: https://gitlab.freedesktop.org/drm/intel/issues/5465
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6228]: https://gitlab.freedesktop.org/drm/intel/issues/6228
>   [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7061]: https://gitlab.freedesktop.org/drm/intel/issues/7061
>   [i915#7091]: https://gitlab.freedesktop.org/drm/intel/issues/7091
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/intel/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8311]: https://gitlab.freedesktop.org/drm/intel/issues/8311
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
>   [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8617]: https://gitlab.freedesktop.org/drm/intel/issues/8617
>   [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
>   [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
>   [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
>   [i915#9226]: https://gitlab.freedesktop.org/drm/intel/issues/9226
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_13579 -> Patchwork_122982v3
> 
>   CI-20190529: 20190529
>   CI_DRM_13579: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7460: 30b4034ea562952039ba6af58106791d5c39999e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_122982v3: 27896186d81a305aab16bf1a3b964a321d00ed38 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122982v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
