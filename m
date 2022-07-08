Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 997D956BBAB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDEF110E548;
	Fri,  8 Jul 2022 14:31:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B647D10E5DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290700; x=1688826700;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UBaYTZcaMd/BWKbWmoGDwobFQrfWnH+XnQ/pED9HlY4=;
 b=TLUE/qFdbRoTLB8bfbMw9NDJLC4i/xvVneOgNJMbgmpcpjZY+4p2kdTh
 i2733owErYJckPUmvAMkZB2Ots4viXxkEwFnFmEM3Zp2mftS7goCQl85G
 ChCmA+8aT1oP6C33XVB0bjzzdPQOmgKur+nyUJDt2MK+fHv7fgKew7+5Y
 6ZRHv7KsM/5l2awRL7+6ZKCSGhvOobrZEV2qqHOmqPoH/ogiGnKrN4KrQ
 jux0EOWabWRcgJh+zXzMVYevKKOMqqtmb7WsaC9U7cAXVMGye3Bhv7HeV
 JtTVYoH3Cm43GaULGvsWX1rPhx5uZ28ZGypkhKL09nd+BK1SdwXULsqHc A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="348276151"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="348276151"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:31:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="651584889"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2022 07:31:35 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 8 Jul 2022 07:31:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 8 Jul 2022 07:31:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 8 Jul 2022 07:31:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LA3EUoBDcyyZfCss7bnYoi1aVNt1B6TSOW/S2d0JRn7zN2ouxkIjUbA1bOVZ69eGHqH+Z2QpuTk1jVvX7RmCtj1pigHyVMPx11+6DiV9w4YxGqblI5wBr8sP5Cf3kvEj/DeYXH+ZcC+uL0/CWQGjJYRX4d6PZkCXqjlLh5ZQCKInuBXo2djId8dW/3Mz7wrP96AS0DQvSlQhoZNXF3OnYtaKZbLyajXlLfveWXWihGLK/l1g7hU5pPUvqUn3Do/3O56aSNtXPRP2GISEoIeqfI06ZUzYW2IQQoSIbrmM0a1uv4aPQOklrOrgHUdrPeu20X/ILs8ZNER+H09U9Ym+UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIrQxEVbGdYq/KkCZ65n6n9X6Twvbm5eq4+iL6HewlU=;
 b=e1uXuDIzy6WRqDgLtJTpqY82eBvNXGk52Sr7JN7SOMBPdvCfBeR5zdeVs/oA32T6vFaWjq6fkVc0tFEkE9zK/QqfIl0wa4gISePifhtYFYiBQMhy4mAKV9yRDJzedhna+ndnhvziUaK6SE/xw30GXe9XpLGs/jBcU+dsNNfGOcIN46JJlT2eek/3kBDrOKLUpVmt3EFhCrzpPj9QZQqZgT0kyoiQb8pKx/9jmTSIIhLE9Cas4wRwDhLcpN3HSKDW1JY79np8jzSsem4YaUbrsGlgdoeZAfKmwor7SovdlxysUCtl/Y39cWI7kuvq1VlF0pYwjA/8dk3bXE4Gjt5+2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5532.namprd11.prod.outlook.com (2603:10b6:408:105::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Fri, 8 Jul
 2022 14:31:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5417.020; Fri, 8 Jul 2022
 14:31:32 +0000
Date: Fri, 8 Jul 2022 10:31:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Ysg/wBwE5+TdaDFc@intel.com>
References: <cover.1656921701.git.mchehab@kernel.org>
 <165726005236.4505.1074473864709326363@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <165726005236.4505.1074473864709326363@emeril.freedesktop.org>
X-ClientProxiedBy: SJ0PR03CA0058.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1336cf86-f8ca-497c-e68a-08da60ee8d6a
X-MS-TrafficTypeDiagnostic: BN9PR11MB5532:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BLf6MK+oJVaG7gXqqjdN63logNLoMZaI+xkaNO+1PBro8S9O3w9LA5SLo0RIZQXt006ezD1QktkBzG+NunIycczud2u8RGq1Ips4U8YYl1bEs1LmB2YIhQDHazNfB5vnhUQ7SvRiMPMwLg1eBbcGBv3H3HUfbqIftC5q7PTHbXiXAbcAMOgJeC542cBokmQQGyusVtNGb+wFy+P0VqYy5meC3BjJopOHKiXP1kydjq0IoQJ87PqQ4bi1YGfVTKOYcvGjKiVg9lPDOhFoHhZTkrUP3jBGs9jPE29tCK9xQGf37MJIxsAylmH5uAMRMmkEwVMEGso1Wuwy21Njhr2QenjfIkBnNaziSHgp+NHt1IoNBlOeM7lBJ3HiK7omFviuX33LHUBVe8FzpzMSjV3ltOXPzPTETwDTVkBCJuu64nqnKnOgA3f75l81lxqR2VaQNQ9TNfqCNWnCWJFdkS1G7R+hE8x/JPiOogt69bQ/DtgjpKElEJmGTVYYZsrMv4hmH8D3l26eyt58A6utbZO8XIbPt6sCDXQSTQFXYYlUE6EbCD6QAMnMOCIN4oRcNltNoe40+uPQmCRNj1KpHyC7zJ8AB/X9tyIMt3w2R3TTB3EQgegkQXBfZ842mvU/GHMV15MnN+64a8c8fpAtpGIYEE7ANI7VTyMDJfl5oOHHcQGuGlIaRKJD2q8OnzV1RzJPf1xuKgV6D12fA3NoCxhhxI8fi+IVerktTMtV5g5BzeyTB/mqmIzEs2TznUdnqStllJYNC5r52ibNZv0+/bZWzOE3Q9om7n7vG1Hf8w/R/pcsHDUlGzPI+0oU7vZi+Q4ujsYEqrPtbG6UM3s57B5Oew/JrsxTx7d5dyC3LWsza/vkAwP8RLO4VrlP5lXuvy1q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(376002)(346002)(86362001)(6506007)(38100700002)(41300700001)(6666004)(82960400001)(2906002)(4326008)(44832011)(2616005)(186003)(83380400001)(26005)(66476007)(66556008)(66946007)(30864003)(478600001)(316002)(6512007)(966005)(36756003)(8936002)(6486002)(5660300002)(6916009)(13750500001)(579004)(559001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K13U9BUz4SaHL23L8Mf9c5YxxOsh0dPWX1XYIfeGcimmqjYwM8Q3kQTjk6ZW?=
 =?us-ascii?Q?jnHnlOCtTs43MexhVNsr33/likpuEWDjFGREkTQMctk8TCd2HV/qMWzowjU2?=
 =?us-ascii?Q?c61sxX+JxkFvQ/kEpqmNA6CpoDzMaA9+h+NussYJLMqbiNxKjg+VcXbUx9+4?=
 =?us-ascii?Q?AvuRQPo5M2y762OaCKYg228oQEj1xTBgtJZfNIPnERrpAFa2aSUAVddWN5wm?=
 =?us-ascii?Q?TSWl1gIN22mcKyijv+aQ4232N3mqzFONr9XtCZez7mxbFn9N6KK1iaK8YXlT?=
 =?us-ascii?Q?3/DpMrW+AMplGSZCtB8piPS6vmtuNHpTFguLOpf94eElqotOd5HNtGw3sDLv?=
 =?us-ascii?Q?9ypIp2d+KIUlR8F+ddDhesDik9vVBQisAwPbLoVscKTfQAlmmGANDfCOSFdj?=
 =?us-ascii?Q?Y/sKsuglCt3HUUCWWEG6/6w4kylxq3vsTUabkQDDL5QHn4sAXEeV4IZiDQmS?=
 =?us-ascii?Q?t/MP9vS2ypVY0xSiZRe6m701vON0yT896yQpVYFzvpJhqdpU2DYgRso2cuLD?=
 =?us-ascii?Q?duXcyKZc61qk4Zu5ni5nTv/VE1S0+S1SWhp/axKMt8jTQxhEoPG6tGlA0KpZ?=
 =?us-ascii?Q?AjiGigFPra88doTkDAKrDSWTmnDvqyt+loF/PtqA0fexbICRpbxwMVHcQ0Sk?=
 =?us-ascii?Q?ZuHS0kFXURiZpAs5g46bjPtboW8dfSfhyG+iPCWN5gUiwlzImqA13Fdlg9TZ?=
 =?us-ascii?Q?w0WNOo0kf9PMc1bDdrdvN64G2BXYpNWV9yGoaDim1mSYOPu68POHhgznKKCg?=
 =?us-ascii?Q?TLJ0wKrTR3FG3HtM4TeFtCVorJOOOANST51D2nm8Ig1h3oacnaPImoEFleyL?=
 =?us-ascii?Q?6DoizBMC3ELO8awgBzwE8/NEg89EHBWecVqzPqSh7AQt3qu3dADjC6nko1Hv?=
 =?us-ascii?Q?NpbvpU2mGIvVl7NB/Y5QYh5m5jwpMDIUjdonOv1dsRVngvM2cPiQFFdPPwhw?=
 =?us-ascii?Q?IhdhHHy+OCXStJtyg0v3OSsDmKTeeB6xRlZScGbuPHkIiLiqGo6CnU/0W56L?=
 =?us-ascii?Q?Gik8iqOwUcChv816EPNg4WWmf30wBP3h8LxuYfZcbvT50GSV3EAvVnHlWbcN?=
 =?us-ascii?Q?sxxUrFAcLgGrRHdpmbM+4sPCBMWLd07KgHkKX9fJ8d0BBMW5roa6zofcLYyr?=
 =?us-ascii?Q?/gFFrVxAyjMGU97mr/e0Z0nFSSNoawyCV1gYF+rELMrQfF6/XcGG3BYJQQD0?=
 =?us-ascii?Q?+K/nG7CaJZ1lxnEQwVjJYK0dRVsd5pHR2nb4qTCSg622T4YE9swkNexNgibf?=
 =?us-ascii?Q?AaoZvMcYmD0rPrNmoLgJtnEfupa1Z0NEhHljn36nM/lkHQTzQK2cBtd2qu7+?=
 =?us-ascii?Q?/abB66Q5yVvXgUKWQzJFvVkob1xfgNNGkdSe8jcgxPmg7cbkGZlsVMcBkVTD?=
 =?us-ascii?Q?VQWYhxKG5NABy9oWmzdQPL42Pu9JhOwe2wEpHTvnI3+K+Os/8JSSq7XXqGwg?=
 =?us-ascii?Q?Ara7WOV6tFu2t1VlQPk41nkM08aCuSjpZFoD+A7eYKluMsHe5sskxJ+rd04o?=
 =?us-ascii?Q?DzIVBCWVmjOFusiqOqHth0HmoAzQ6xXyCFicN+aN/7K2fPvx7TVDKiVdFW1D?=
 =?us-ascii?Q?xEotGfH1U2lFHb1J+yQkUScknOJvSiwJGsrH5HfJrNeT6G/arFdiSeBtFCf/?=
 =?us-ascii?Q?Vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1336cf86-f8ca-497c-e68a-08da60ee8d6a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 14:31:32.2255 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rtVT0ls6KDm3LMgRtdt8UxMWkt7Xihu5CvV5wzrBNrw5Vn9xeOs3rInO1weQrKQLqvNsyCaTc0e+LJlFbHGaHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5532
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev4=29?=
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 08, 2022 at 06:00:52AM -0000, Patchwork wrote:
>    Patch Details
> 
>    Series:  Fix TLB invalidate issues with Broadwell (rev4)
>    URL:     [1]https://patchwork.freedesktop.org/series/105167/
>    State:   failure
>    Details:
>    [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/index.ht
>    ml
> 
>      CI Bug Log - changes from CI_DRM_11857_full -> Patchwork_105167v4_full
> 
> Summary
> 
>    FAILURE
> 
>    Serious unknown changes coming with Patchwork_105167v4_full absolutely
>    need to be
>    verified manually.
> 
>    If you think the reported changes have nothing to do with the changes
>    introduced in Patchwork_105167v4_full, please notify your bug team to
>    allow them
>    to document this new failure mode, which will reduce false positives in
>    CI.
> 
> Participating hosts (13 -> 13)
> 
>    No changes in participating hosts
> 
> Possible new issues
> 
>    Here are the unknown changes that may have been introduced in
>    Patchwork_105167v4_full:
> 
>   IGT changes
> 
>     Possible regressions
> 
>      * igt@i915_selftest@live@perf:
>           + shard-skl: [3]PASS -> [4]INCOMPLETE

probably yet another false positive failure, but since the authorship-vs-sign-off
needs to be fixed and resent we will end up testing it again.
Sorry for not noticing yesterday before I had triggered the retest.

> 
>     Suppressed
> 
>    The following results come from untrusted machines, tests, or statuses.
>    They do not affect the overall result.
>      * igt@gem_busy@close-race:
>           + {shard-tglu}: [5]PASS -> [6]INCOMPLETE
>      * igt@i915_module_load@reload-no-display:
>           + {shard-rkl}: [7]PASS -> [8]FAIL
>      * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
>           + {shard-dg1}: [9]PASS -> [10]FAIL +4 similar issues
> 
> Known issues
> 
>    Here are the changes found in Patchwork_105167v4_full that come from
>    known issues:
> 
>   CI changes
> 
>     Possible fixes
> 
>      * boot:
>           + shard-snb: ([11]PASS, [12]PASS, [13]PASS, [14]PASS, [15]PASS,
>             [16]PASS, [17]PASS, [18]PASS, [19]PASS, [20]PASS, [21]PASS,
>             [22]FAIL, [23]PASS, [24]PASS, [25]PASS, [26]PASS, [27]PASS,
>             [28]PASS, [29]PASS, [30]PASS, [31]PASS, [32]PASS, [33]PASS,
>             [34]PASS, [35]PASS) ([36]i915#4338) -> ([37]PASS, [38]PASS,
>             [39]PASS, [40]PASS, [41]PASS, [42]PASS, [43]PASS, [44]PASS,
>             [45]PASS, [46]PASS, [47]PASS, [48]PASS, [49]PASS, [50]PASS,
>             [51]PASS, [52]PASS, [53]PASS, [54]PASS, [55]PASS, [56]PASS,
>             [57]PASS, [58]PASS, [59]PASS, [60]PASS, [61]PASS)
> 
>   IGT changes
> 
>     Issues hit
> 
>      * igt@gem_ctx_isolation@preservation-s3@bcs0:
>           + shard-skl: [62]PASS -> [63]INCOMPLETE ([64]i915#4793)
>      * igt@gem_ctx_persistence@hostile:
>           + shard-tglb: [65]PASS -> [66]FAIL ([67]i915#2410)
>      * igt@gem_ctx_persistence@legacy-engines-queued:
>           + shard-snb: NOTRUN -> [68]SKIP ([69]fdo#109271 / [70]i915#1099)
>      * igt@gem_eio@unwedge-stress:
>           + shard-iclb: [71]PASS -> [72]TIMEOUT ([73]i915#3070)
>      * igt@gem_exec_balancer@parallel-bb-first:
>           + shard-iclb: [74]PASS -> [75]SKIP ([76]i915#4525)
>      * igt@gem_exec_fair@basic-deadline:
>           + shard-skl: NOTRUN -> [77]FAIL ([78]i915#6141)
>      * igt@gem_exec_fair@basic-none@vcs1:
>           + shard-kbl: [79]PASS -> [80]FAIL ([81]i915#2842) +1 similar
>             issue
>      * igt@gem_exec_fair@basic-pace@bcs0:
>           + shard-iclb: [82]PASS -> [83]FAIL ([84]i915#2842)
>      * igt@gem_exec_fair@basic-pace@vecs0:
>           + shard-glk: [85]PASS -> [86]FAIL ([87]i915#2842)
>      * igt@gem_lmem_swapping@heavy-random:
>           + shard-kbl: NOTRUN -> [88]SKIP ([89]fdo#109271 / [90]i915#4613)
>      * igt@gem_lmem_swapping@smem-oom:
>           + shard-apl: NOTRUN -> [91]SKIP ([92]fdo#109271 / [93]i915#4613)
>      * igt@gem_lmem_swapping@verify:
>           + shard-skl: NOTRUN -> [94]SKIP ([95]fdo#109271 / [96]i915#4613)
>             +1 similar issue
>      * igt@gem_lmem_swapping@verify-random:
>           + shard-glk: NOTRUN -> [97]SKIP ([98]fdo#109271 / [99]i915#4613)
>      * igt@gen9_exec_parse@allowed-single:
>           + shard-skl: [100]PASS -> [101]DMESG-WARN ([102]i915#5566 /
>             [103]i915#716)
>           + shard-glk: [104]PASS -> [105]DMESG-WARN ([106]i915#5566 /
>             [107]i915#716)
>      * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>           + shard-apl: NOTRUN -> [108]SKIP ([109]fdo#109271) +36 similar
>             issues
>      * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>           + shard-kbl: NOTRUN -> [110]SKIP ([111]fdo#109271 /
>             [112]i915#3886) +1 similar issue
>      * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>           + shard-skl: NOTRUN -> [113]SKIP ([114]fdo#109271 /
>             [115]i915#3886) +3 similar issues
>      * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>           + shard-apl: NOTRUN -> [116]SKIP ([117]fdo#109271 /
>             [118]i915#3886) +3 similar issues
>      * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs:
>           + shard-kbl: NOTRUN -> [119]SKIP ([120]fdo#109271) +42 similar
>             issues
>      * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>           + shard-glk: NOTRUN -> [121]SKIP ([122]fdo#109271) +43 similar
>             issues
>      * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
>           + shard-skl: NOTRUN -> [123]SKIP ([124]fdo#109271) +66 similar
>             issues
>      * igt@kms_chamelium@hdmi-audio-edid:
>           + shard-glk: NOTRUN -> [125]SKIP ([126]fdo#109271 /
>             [127]fdo#111827) +4 similar issues
>      * igt@kms_chamelium@hdmi-hpd-storm:
>           + shard-kbl: NOTRUN -> [128]SKIP ([129]fdo#109271 /
>             [130]fdo#111827) +3 similar issues
>      * igt@kms_chamelium@vga-hpd:
>           + shard-apl: NOTRUN -> [131]SKIP ([132]fdo#109271 /
>             [133]fdo#111827) +7 similar issues
>      * igt@kms_color_chamelium@pipe-a-ctm-0-5:
>           + shard-skl: NOTRUN -> [134]SKIP ([135]fdo#109271 /
>             [136]fdo#111827) +6 similar issues
>      * igt@kms_color_chamelium@pipe-a-gamma:
>           + shard-snb: NOTRUN -> [137]SKIP ([138]fdo#109271 /
>             [139]fdo#111827) +4 similar issues
>      * igt@kms_content_protection@srm:
>           + shard-apl: NOTRUN -> [140]TIMEOUT ([141]i915#1319)
>      * igt@kms_flip@flip-vs-suspend@a-dp1:
>           + shard-apl: [142]PASS -> [143]DMESG-WARN ([144]i915#180) +3
>             similar issues
>      * igt@kms_flip@plain-flip-ts-check@b-edp1:
>           + shard-skl: [145]PASS -> [146]FAIL ([147]i915#2122) +2 similar
>             issues
>      * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-u
>        pscaling@pipe-a-default-mode:
>           + shard-iclb: NOTRUN -> [148]SKIP ([149]i915#2672) +3 similar
>             issues
>      * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling
>        @pipe-a-default-mode:
>           + shard-iclb: NOTRUN -> [150]SKIP ([151]i915#3555)
>      * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-u
>        pscaling@pipe-a-valid-mode:
>           + shard-iclb: NOTRUN -> [152]SKIP ([153]i915#2672 /
>             [154]i915#3555)
>      * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
>           + shard-kbl: [155]PASS -> [156]FAIL ([157]i915#1188)
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>           + shard-skl: NOTRUN -> [158]FAIL ([159]fdo#108145 /
>             [160]i915#265) +2 similar issues
>      * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>           + shard-glk: NOTRUN -> [161]FAIL ([162]fdo#108145 /
>             [163]i915#265)
>      * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1:
>           + shard-glk: [164]PASS -> [165]DMESG-FAIL ([166]i915#118 /
>             [167]i915#1888)
>      * igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1:
>           + shard-glk: [168]PASS -> [169]FAIL ([170]i915#1888)
>      * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pip
>        e-a-edp-1:
>           + shard-iclb: [171]PASS -> [172]SKIP ([173]i915#5235) +2 similar
>             issues
>      * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>           + shard-glk: NOTRUN -> [174]SKIP ([175]fdo#109271 /
>             [176]i915#658)
>      * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>           + shard-skl: NOTRUN -> [177]SKIP ([178]fdo#109271 /
>             [179]i915#658)
>      * igt@kms_psr@psr2_primary_page_flip:
>           + shard-iclb: [180]PASS -> [181]SKIP ([182]fdo#109441) +1
>             similar issue
>      * igt@kms_tv_load_detect@load-detect:
>           + shard-snb: NOTRUN -> [183]SKIP ([184]fdo#109271) +108 similar
>             issues
>      * igt@sysfs_clients@fair-1:
>           + shard-kbl: NOTRUN -> [185]SKIP ([186]fdo#109271 /
>             [187]i915#2994)
>      * igt@sysfs_clients@pidname:
>           + shard-skl: NOTRUN -> [188]SKIP ([189]fdo#109271 /
>             [190]i915#2994)
>      * igt@sysfs_clients@recycle:
>           + shard-glk: NOTRUN -> [191]SKIP ([192]fdo#109271 /
>             [193]i915#2994)
> 
>     Possible fixes
> 
>      * igt@fbdev@write:
>           + {shard-rkl}: [194]SKIP ([195]i915#2582) -> [196]PASS
>      * igt@feature_discovery@psr2:
>           + {shard-rkl}: [197]SKIP ([198]i915#658) -> [199]PASS +1 similar
>             issue
>      * igt@gem_ctx_exec@basic-nohangcheck:
>           + shard-tglb: [200]FAIL ([201]i915#6268) -> [202]PASS
>      * igt@gem_ctx_isolation@preservation-s3@bcs0:
>           + shard-apl: [203]DMESG-WARN ([204]i915#180) -> [205]PASS +4
>             similar issues
>      * igt@gem_ctx_persistence@legacy-engines-hang@blt:
>           + {shard-rkl}: [206]SKIP ([207]i915#6252) -> [208]PASS
>      * igt@gem_eio@unwedge-stress:
>           + {shard-rkl}: [209]TIMEOUT ([210]i915#3063) -> [211]PASS
>      * igt@gem_exec_balancer@fairslice:
>           + {shard-rkl}: [212]SKIP ([213]i915#6259) -> [214]PASS
>      * igt@gem_exec_balancer@parallel-keep-in-fence:
>           + shard-iclb: [215]SKIP ([216]i915#4525) -> [217]PASS
>      * igt@gem_exec_fair@basic-flow@rcs0:
>           + shard-tglb: [218]FAIL ([219]i915#2842) -> [220]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-none-rrul@rcs0:
>           + shard-kbl: [221]FAIL ([222]i915#2842) -> [223]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-none-share@rcs0:
>           + {shard-tglu}: [224]FAIL ([225]i915#2842) -> [226]PASS
>      * igt@gem_exec_fair@basic-pace-share@rcs0:
>           + shard-glk: [227]FAIL ([228]i915#2842) -> [229]PASS +1 similar
>             issue
>      * igt@gem_exec_fair@basic-pace@vcs1:
>           + shard-kbl: [230]SKIP ([231]fdo#109271) -> [232]PASS
>      * igt@gem_exec_reloc@basic-wc-cpu:
>           + {shard-rkl}: [233]SKIP ([234]i915#3281) -> [235]PASS +9
>             similar issues
>      * igt@gem_pwrite@basic-random:
>           + {shard-rkl}: [236]SKIP ([237]i915#3282) -> [238]PASS +2
>             similar issues
>      * igt@gen9_exec_parse@allowed-all:
>           + {shard-rkl}: [239]SKIP ([240]i915#2527) -> [241]PASS +1
>             similar issue
>      * igt@i915_module_load@reload-with-fault-injection:
>           + shard-tglb: [242]TIMEOUT ([243]i915#3953) -> [244]PASS
>      * igt@i915_pm_dc@dc6-psr:
>           + shard-iclb: [245]FAIL ([246]i915#454) -> [247]PASS
>      * igt@i915_pm_dc@dc9-dpms:
>           + shard-iclb: [248]SKIP ([249]i915#4281) -> [250]PASS
>      * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
>           + shard-skl: [251]WARN -> [252]PASS
>      * igt@i915_pm_rpm@debugfs-forcewake-user:
>           + shard-apl: [253]DMESG-WARN ([254]i915#62) -> [255]PASS +1
>             similar issue
>      * igt@i915_pm_rpm@fences-dpms:
>           + {shard-rkl}: [256]SKIP ([257]i915#1849) -> [258]PASS
>      * igt@i915_pm_rpm@system-suspend-modeset:
>           + {shard-rkl}: [259]SKIP ([260]fdo#109308) -> [261]PASS
>      * igt@i915_pm_sseu@full-enable:
>           + shard-skl: [262]FAIL ([263]i915#3048) -> [264]PASS
>      * igt@i915_selftest@live@hangcheck:
>           + shard-snb: [265]INCOMPLETE ([266]i915#3921) -> [267]PASS
>      * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>           + shard-kbl: [268]DMESG-WARN ([269]i915#180) -> [270]PASS +2
>             similar issues
>      * igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled:
>           + {shard-rkl}: [271]SKIP ([272]fdo#111314 / [273]i915#4098 /
>             [274]i915#4369) -> [275]PASS +9 similar issues
>      * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>           + shard-glk: [276]FAIL ([277]i915#79) -> [278]PASS +1 similar
>             issue
>      * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>           + shard-skl: [279]FAIL ([280]i915#79) -> [281]PASS +1 similar
>             issue
>      * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
>           + shard-skl: [282]FAIL ([283]i915#2122) -> [284]PASS +3 similar
>             issues
>      * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gt
>        t:
>           + {shard-rkl}: [285]SKIP ([286]i915#1849 / [287]i915#4098) ->
>             [288]PASS +23 similar issues
>      * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>           + shard-kbl: [289]FAIL ([290]i915#1188) -> [291]PASS
>      * igt@kms_invalid_mode@bad-vtotal:
>           + {shard-rkl}: [292]SKIP ([293]i915#4278) -> [294]PASS +1
>             similar issue
>      * igt@kms_plane@plane-position-hole@pipe-b-planes:
>           + {shard-rkl}: [295]SKIP ([296]i915#3558) -> [297]PASS +1
>             similar issue
>      * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>           + {shard-rkl}: [298]SKIP ([299]i915#1849 / [300]i915#4070 /
>             [301]i915#4098) -> [302]PASS +2 similar issues
>      * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>           + shard-skl: [303]FAIL ([304]fdo#108145 / [305]i915#265) ->
>             [306]PASS
>      * igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2:
>           + shard-glk: [307]DMESG-WARN ([308]i915#118 / [309]i915#1888) ->
>             [310]PASS
>      * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
>           + shard-glk: [311]FAIL ([312]i915#1888) -> [313]PASS
>      * igt@kms_plane_multiple@atomic-pipe-a-tiling-none:
>           + {shard-rkl}: [314]SKIP ([315]i915#1849 / [316]i915#3558) ->
>             [317]PASS
>      * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for
>        mats@pipe-b-edp-1:
>           + shard-iclb: [318]SKIP ([319]i915#5176) -> [320]PASS +1 similar
>             issue
>      * igt@kms_psr@psr2_primary_blt:
>           + shard-iclb: [321]SKIP ([322]fdo#109441) -> [323]PASS +2
>             similar issues
>      * igt@kms_psr@sprite_render:
>           + {shard-rkl}: [324]SKIP ([325]i915#1072) -> [326]PASS
>      * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>           + {shard-rkl}: [327]SKIP ([328]i915#5461) -> [329]PASS
>      * igt@kms_rotation_crc@primary-rotation-270:
>           + {shard-rkl}: [330]SKIP ([331]i915#1845 / [332]i915#4098) ->
>             [333]PASS +29 similar issues
>      * igt@kms_universal_plane@universal-plane-pipe-a-sanity:
>           + {shard-rkl}: [334]SKIP ([335]i915#1845 / [336]i915#4070 /
>             [337]i915#4098) -> [338]PASS
>      * igt@kms_vblank@pipe-a-ts-continuation-suspend:
>           + shard-skl: [339]INCOMPLETE ([340]i915#4939) -> [341]PASS
> 
>     Warnings
> 
>      * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
>           + shard-apl: [342]FAIL ([343]i915#62) -> [344]DMESG-WARN
>             ([345]i915#180)
>      * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>           + shard-skl: [346]SKIP ([347]fdo#109271 / [348]i915#1888) ->
>             [349]SKIP ([350]fdo#109271)
>      * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
>           + shard-iclb: [351]SKIP ([352]i915#2920) -> [353]SKIP
>             ([354]i915#658) +1 similar issue
>      * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>           + shard-iclb: [355]SKIP ([356]fdo#111068 / [357]i915#658) ->
>             [358]SKIP ([359]i915#2920)
>      * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>           + shard-iclb: [360]SKIP ([361]i915#2920) -> [362]SKIP
>             ([363]fdo#111068 / [364]i915#658)
>      * igt@kms_psr2_su@page_flip-p010:
>           + shard-iclb: [365]FAIL ([366]i915#5939) -> [367]SKIP
>             ([368]fdo#109642 / [369]fdo#111068 / [370]i915#658)
> 
>    {name}: This element is suppressed. This means it is ignored when
>    computing
>    the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> Build changes
> 
>      * Linux: CI_DRM_11857 -> Patchwork_105167v4
> 
>    CI-20190529: 20190529
>    CI_DRM_11857: de2555fd1402a79eb3c89db3f62944fec2026c8f @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    IGT_6561: 4b673211d1645eaafa9da32eece4c274d8cd6c41 @
>    https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>    Patchwork_105167v4: de2555fd1402a79eb3c89db3f62944fec2026c8f @
>    git://anongit.freedesktop.org/gfx-ci/linux
>    piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
>    git://anongit.freedesktop.org/piglit
> 
> References
> 
>    1. https://patchwork.freedesktop.org/series/105167/
>    2. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/index.html
>    3. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl7/igt@i915_selftest@live@perf.html
>    4. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl7/igt@i915_selftest@live@perf.html
>    5. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglu-2/igt@gem_busy@close-race.html
>    6. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglu-5/igt@gem_busy@close-race.html
>    7. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@i915_module_load@reload-no-display.html
>    8. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-1/igt@i915_module_load@reload-no-display.html
>    9. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-dg1-17/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
>   10. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-dg1-19/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html
>   11. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>   12. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>   13. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>   14. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/boot.html
>   15. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>   16. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>   17. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>   18. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>   19. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb6/boot.html
>   20. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   21. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   22. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   23. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   24. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   25. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb5/boot.html
>   26. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>   27. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>   28. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>   29. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>   30. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb4/boot.html
>   31. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>   32. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>   33. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>   34. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>   35. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb2/boot.html
>   36. https://gitlab.freedesktop.org/drm/intel/issues/4338
>   37. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/boot.html
>   38. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/boot.html
>   39. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/boot.html
>   40. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/boot.html
>   41. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/boot.html
>   42. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb6/boot.html
>   43. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb6/boot.html
>   44. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb6/boot.html
>   45. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb6/boot.html
>   46. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb6/boot.html
>   47. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/boot.html
>   48. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/boot.html
>   49. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/boot.html
>   50. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/boot.html
>   51. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/boot.html
>   52. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb4/boot.html
>   53. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb4/boot.html
>   54. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb4/boot.html
>   55. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb4/boot.html
>   56. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb4/boot.html
>   57. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb2/boot.html
>   58. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb2/boot.html
>   59. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb2/boot.html
>   60. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb2/boot.html
>   61. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb2/boot.html
>   62. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   63. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>   64. https://gitlab.freedesktop.org/drm/intel/issues/4793
>   65. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb3/igt@gem_ctx_persistence@hostile.html
>   66. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglb8/igt@gem_ctx_persistence@hostile.html
>   67. https://gitlab.freedesktop.org/drm/intel/issues/2410
>   68. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html
>   69. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   70. https://gitlab.freedesktop.org/drm/intel/issues/1099
>   71. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb6/igt@gem_eio@unwedge-stress.html
>   72. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb6/igt@gem_eio@unwedge-stress.html
>   73. https://gitlab.freedesktop.org/drm/intel/issues/3070
>   74. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@gem_exec_balancer@parallel-bb-first.html
>   75. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
>   76. https://gitlab.freedesktop.org/drm/intel/issues/4525
>   77. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@gem_exec_fair@basic-deadline.html
>   78. https://gitlab.freedesktop.org/drm/intel/issues/6141
>   79. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>   80. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html
>   81. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   82. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
>   83. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
>   84. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   85. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk7/igt@gem_exec_fair@basic-pace@vecs0.html
>   86. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk9/igt@gem_exec_fair@basic-pace@vecs0.html
>   87. https://gitlab.freedesktop.org/drm/intel/issues/2842
>   88. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@gem_lmem_swapping@heavy-random.html
>   89. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   90. https://gitlab.freedesktop.org/drm/intel/issues/4613
>   91. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl3/igt@gem_lmem_swapping@smem-oom.html
>   92. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   93. https://gitlab.freedesktop.org/drm/intel/issues/4613
>   94. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@gem_lmem_swapping@verify.html
>   95. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   96. https://gitlab.freedesktop.org/drm/intel/issues/4613
>   97. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@gem_lmem_swapping@verify-random.html
>   98. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   99. https://gitlab.freedesktop.org/drm/intel/issues/4613
>  100. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@gen9_exec_parse@allowed-single.html
>  101. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl3/igt@gen9_exec_parse@allowed-single.html
>  102. https://gitlab.freedesktop.org/drm/intel/issues/5566
>  103. https://gitlab.freedesktop.org/drm/intel/issues/716
>  104. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>  105. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>  106. https://gitlab.freedesktop.org/drm/intel/issues/5566
>  107. https://gitlab.freedesktop.org/drm/intel/issues/716
>  108. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>  109. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  110. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
>  111. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  112. https://gitlab.freedesktop.org/drm/intel/issues/3886
>  113. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>  114. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  115. https://gitlab.freedesktop.org/drm/intel/issues/3886
>  116. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>  117. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  118. https://gitlab.freedesktop.org/drm/intel/issues/3886
>  119. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_mc_ccs.html
>  120. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  121. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
>  122. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  123. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html
>  124. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  125. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@kms_chamelium@hdmi-audio-edid.html
>  126. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  127. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  128. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html
>  129. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  130. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  131. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl3/igt@kms_chamelium@vga-hpd.html
>  132. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  133. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  134. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@kms_color_chamelium@pipe-a-ctm-0-5.html
>  135. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  136. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  137. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/igt@kms_color_chamelium@pipe-a-gamma.html
>  138. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  139. https://bugs.freedesktop.org/show_bug.cgi?id=111827
>  140. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl3/igt@kms_content_protection@srm.html
>  141. https://gitlab.freedesktop.org/drm/intel/issues/1319
>  142. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl4/igt@kms_flip@flip-vs-suspend@a-dp1.html
>  143. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>  144. https://gitlab.freedesktop.org/drm/intel/issues/180
>  145. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>  146. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl3/igt@kms_flip@plain-flip-ts-check@b-edp1.html
>  147. https://gitlab.freedesktop.org/drm/intel/issues/2122
>  148. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
>  149. https://gitlab.freedesktop.org/drm/intel/issues/2672
>  150. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html
>  151. https://gitlab.freedesktop.org/drm/intel/issues/3555
>  152. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
>  153. https://gitlab.freedesktop.org/drm/intel/issues/2672
>  154. https://gitlab.freedesktop.org/drm/intel/issues/3555
>  155. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>  156. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
>  157. https://gitlab.freedesktop.org/drm/intel/issues/1188
>  158. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
>  159. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  160. https://gitlab.freedesktop.org/drm/intel/issues/265
>  161. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
>  162. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  163. https://gitlab.freedesktop.org/drm/intel/issues/265
>  164. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
>  165. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-1.html
>  166. https://gitlab.freedesktop.org/drm/intel/issues/118
>  167. https://gitlab.freedesktop.org/drm/intel/issues/1888
>  168. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
>  169. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-b-hdmi-a-1.html
>  170. https://gitlab.freedesktop.org/drm/intel/issues/1888
>  171. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>  172. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
>  173. https://gitlab.freedesktop.org/drm/intel/issues/5235
>  174. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
>  175. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  176. https://gitlab.freedesktop.org/drm/intel/issues/658
>  177. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
>  178. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  179. https://gitlab.freedesktop.org/drm/intel/issues/658
>  180. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>  181. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
>  182. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  183. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb5/igt@kms_tv_load_detect@load-detect.html
>  184. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  185. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@sysfs_clients@fair-1.html
>  186. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  187. https://gitlab.freedesktop.org/drm/intel/issues/2994
>  188. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl6/igt@sysfs_clients@pidname.html
>  189. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  190. https://gitlab.freedesktop.org/drm/intel/issues/2994
>  191. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk7/igt@sysfs_clients@recycle.html
>  192. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  193. https://gitlab.freedesktop.org/drm/intel/issues/2994
>  194. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@fbdev@write.html
>  195. https://gitlab.freedesktop.org/drm/intel/issues/2582
>  196. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@fbdev@write.html
>  197. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@feature_discovery@psr2.html
>  198. https://gitlab.freedesktop.org/drm/intel/issues/658
>  199. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@feature_discovery@psr2.html
>  200. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb5/igt@gem_ctx_exec@basic-nohangcheck.html
>  201. https://gitlab.freedesktop.org/drm/intel/issues/6268
>  202. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html
>  203. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  204. https://gitlab.freedesktop.org/drm/intel/issues/180
>  205. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>  206. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>  207. https://gitlab.freedesktop.org/drm/intel/issues/6252
>  208. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-1/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
>  209. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@gem_eio@unwedge-stress.html
>  210. https://gitlab.freedesktop.org/drm/intel/issues/3063
>  211. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-1/igt@gem_eio@unwedge-stress.html
>  212. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@gem_exec_balancer@fairslice.html
>  213. https://gitlab.freedesktop.org/drm/intel/issues/6259
>  214. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-1/igt@gem_exec_balancer@fairslice.html
>  215. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@gem_exec_balancer@parallel-keep-in-fence.html
>  216. https://gitlab.freedesktop.org/drm/intel/issues/4525
>  217. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html
>  218. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
>  219. https://gitlab.freedesktop.org/drm/intel/issues/2842
>  220. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
>  221. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  222. https://gitlab.freedesktop.org/drm/intel/issues/2842
>  223. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>  224. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>  225. https://gitlab.freedesktop.org/drm/intel/issues/2842
>  226. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
>  227. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>  228. https://gitlab.freedesktop.org/drm/intel/issues/2842
>  229. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>  230. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
>  231. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  232. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
>  233. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gem_exec_reloc@basic-wc-cpu.html
>  234. https://gitlab.freedesktop.org/drm/intel/issues/3281
>  235. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
>  236. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gem_pwrite@basic-random.html
>  237. https://gitlab.freedesktop.org/drm/intel/issues/3282
>  238. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-5/igt@gem_pwrite@basic-random.html
>  239. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
>  240. https://gitlab.freedesktop.org/drm/intel/issues/2527
>  241. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
>  242. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-tglb2/igt@i915_module_load@reload-with-fault-injection.html
>  243. https://gitlab.freedesktop.org/drm/intel/issues/3953
>  244. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-tglb8/igt@i915_module_load@reload-with-fault-injection.html
>  245. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>  246. https://gitlab.freedesktop.org/drm/intel/issues/454
>  247. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>  248. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
>  249. https://gitlab.freedesktop.org/drm/intel/issues/4281
>  250. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
>  251. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>  252. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
>  253. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@i915_pm_rpm@debugfs-forcewake-user.html
>  254. https://gitlab.freedesktop.org/drm/intel/issues/62
>  255. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl1/igt@i915_pm_rpm@debugfs-forcewake-user.html
>  256. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@i915_pm_rpm@fences-dpms.html
>  257. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  258. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@i915_pm_rpm@fences-dpms.html
>  259. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@i915_pm_rpm@system-suspend-modeset.html
>  260. https://bugs.freedesktop.org/show_bug.cgi?id=109308
>  261. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@i915_pm_rpm@system-suspend-modeset.html
>  262. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@i915_pm_sseu@full-enable.html
>  263. https://gitlab.freedesktop.org/drm/intel/issues/3048
>  264. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl1/igt@i915_pm_sseu@full-enable.html
>  265. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-snb7/igt@i915_selftest@live@hangcheck.html
>  266. https://gitlab.freedesktop.org/drm/intel/issues/3921
>  267. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-snb7/igt@i915_selftest@live@hangcheck.html
>  268. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl1/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>  269. https://gitlab.freedesktop.org/drm/intel/issues/180
>  270. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>  271. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
>  272. https://bugs.freedesktop.org/show_bug.cgi?id=111314
>  273. https://gitlab.freedesktop.org/drm/intel/issues/4098
>  274. https://gitlab.freedesktop.org/drm/intel/issues/4369
>  275. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-render-ytiled.html
>  276. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>  277. https://gitlab.freedesktop.org/drm/intel/issues/79
>  278. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>  279. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>  280. https://gitlab.freedesktop.org/drm/intel/issues/79
>  281. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>  282. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl5/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>  283. https://gitlab.freedesktop.org/drm/intel/issues/2122
>  284. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
>  285. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>  286. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  287. https://gitlab.freedesktop.org/drm/intel/issues/4098
>  288. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>  289. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>  290. https://gitlab.freedesktop.org/drm/intel/issues/1188
>  291. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>  292. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_invalid_mode@bad-vtotal.html
>  293. https://gitlab.freedesktop.org/drm/intel/issues/4278
>  294. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_invalid_mode@bad-vtotal.html
>  295. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>  296. https://gitlab.freedesktop.org/drm/intel/issues/3558
>  297. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_plane@plane-position-hole@pipe-b-planes.html
>  298. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>  299. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  300. https://gitlab.freedesktop.org/drm/intel/issues/4070
>  301. https://gitlab.freedesktop.org/drm/intel/issues/4098
>  302. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
>  303. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>  304. https://bugs.freedesktop.org/show_bug.cgi?id=108145
>  305. https://gitlab.freedesktop.org/drm/intel/issues/265
>  306. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>  307. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>  308. https://gitlab.freedesktop.org/drm/intel/issues/118
>  309. https://gitlab.freedesktop.org/drm/intel/issues/1888
>  310. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-a-hdmi-a-2.html
>  311. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-glk3/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>  312. https://gitlab.freedesktop.org/drm/intel/issues/1888
>  313. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
>  314. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
>  315. https://gitlab.freedesktop.org/drm/intel/issues/1849
>  316. https://gitlab.freedesktop.org/drm/intel/issues/3558
>  317. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-none.html
>  318. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>  319. https://gitlab.freedesktop.org/drm/intel/issues/5176
>  320. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>  321. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb4/igt@kms_psr@psr2_primary_blt.html
>  322. https://bugs.freedesktop.org/show_bug.cgi?id=109441
>  323. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>  324. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@kms_psr@sprite_render.html
>  325. https://gitlab.freedesktop.org/drm/intel/issues/1072
>  326. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_psr@sprite_render.html
>  327. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>  328. https://gitlab.freedesktop.org/drm/intel/issues/5461
>  329. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>  330. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-270.html
>  331. https://gitlab.freedesktop.org/drm/intel/issues/1845
>  332. https://gitlab.freedesktop.org/drm/intel/issues/4098
>  333. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-270.html
>  334. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-rkl-1/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>  335. https://gitlab.freedesktop.org/drm/intel/issues/1845
>  336. https://gitlab.freedesktop.org/drm/intel/issues/4070
>  337. https://gitlab.freedesktop.org/drm/intel/issues/4098
>  338. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-rkl-6/igt@kms_universal_plane@universal-plane-pipe-a-sanity.html
>  339. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>  340. https://gitlab.freedesktop.org/drm/intel/issues/4939
>  341. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
>  342. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-apl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>  343. https://gitlab.freedesktop.org/drm/intel/issues/62
>  344. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
>  345. https://gitlab.freedesktop.org/drm/intel/issues/180
>  346. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>  347. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  348. https://gitlab.freedesktop.org/drm/intel/issues/1888
>  349. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>  350. https://bugs.freedesktop.org/show_bug.cgi?id=109271
>  351. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>  352. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  353. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
>  354. https://gitlab.freedesktop.org/drm/intel/issues/658
>  355. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>  356. https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  357. https://gitlab.freedesktop.org/drm/intel/issues/658
>  358. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>  359. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  360. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>  361. https://gitlab.freedesktop.org/drm/intel/issues/2920
>  362. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>  363. https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  364. https://gitlab.freedesktop.org/drm/intel/issues/658
>  365. https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11857/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>  366. https://gitlab.freedesktop.org/drm/intel/issues/5939
>  367. https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v4/shard-iclb4/igt@kms_psr2_su@page_flip-p010.html
>  368. https://bugs.freedesktop.org/show_bug.cgi?id=109642
>  369. https://bugs.freedesktop.org/show_bug.cgi?id=111068
>  370. https://gitlab.freedesktop.org/drm/intel/issues/658
