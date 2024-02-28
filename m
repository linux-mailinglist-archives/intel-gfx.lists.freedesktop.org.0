Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E92C986B879
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 20:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CCC710E1FF;
	Wed, 28 Feb 2024 19:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAWBfzeH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00A310E1FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 19:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709149492; x=1740685492;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2+nhLmqya5weH9TSfHTh5H8ev0NMp/B9wDDoBQDLxOc=;
 b=ZAWBfzeHvsnf0bms8K9KTfpwwojvxFeyNOIb28xe9/J36RtmuUGpcOWh
 YOxTq3YkhYRyJe7PKYVENZaGIkcR4tBHuqrf3ph4UsYGGAvH0AF0dyu62
 Xtt6+pg7TROPuvo0KML+QkAAQ92YMqXY+AgG0MSrmO98/wjNBmR/Nm6v0
 3M1p098E/bWIi5fjEH4Mba5UA+Lq+NvyDzRUhHnshHU/jRLoMMd69zcuj
 MJpmCVV2ylQbKYVrLUerYGWj0FMd4J0xR9DorvCs59GV7jjtJFYJb4fkf
 H5DtzNUmqSrpABPhPhLggjmjmF/vkrVDtOsKDqLt3KrfsaHb0x5mWJOG8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14285904"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; d="scan'208";a="14285904"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 11:44:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="8107170"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 11:44:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 11:44:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 11:44:51 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 11:44:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MYv2WYvmHJArv3pXy67dvweY8SQkwrbxWwcMxmE5Z2LzsfvqFPsfxGFlfgd3xv5JJSgquS2KQrBMnLDw15NvEXB4spg8Kfte8TyEFTxdNgbeHtEmU5cnuVyMVMntPijccN3KmQ3I5tFEm4hpmjWfILxpP5s6v3xqaY6rLlWmvPn9M65lAduLvisxwGoRv/Ps2vRlt/YuAjO49knHTQbSOXT6FpUJ+bx47/b6Xnh24aTEcB1rzyR8BDtubMxq59vVk7aT8GDkATVV5jMCltKc0TISdyT8OgUiyh7ltl5k5t41tuJiF0cMslEnW5MY/44yv9jBJJ0NAab9zgB8eBSI7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9InprXXjPDrjERh1YxpDMv93bEM9Fr9qLm6wSw8LWPs=;
 b=LEas+Jew8ibHWLaGdSAvM0l1TVGF/snBjW/nikaQchqYg5f7Dpr13XLCYdhrHrVdeiH/zpsSIpImi+DrWyzQBc67shEAg8x3ScOrkSBnqgU+IhlGomnI6Bgo1SGiaW/gdjLPtzb5nyCoqUt2VHOvVYSr831XBslmtQzAq47nzK892WBe2zuWur32EHny4sTpLKiXobrKjLnd9W0Z4ph3mjgT/YYCtnFFr0tX5TM5CuXTQjpv9hlvuesBQ7r/KvW1ocFQbae6rJmrVtud6FrxXdh3ej87k/EWA6qxIsaOdt2b8nPYAdpPNPvkwVfHfFEUE3Q3Q/PvNbDQU/Hz3/I1dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6029.namprd11.prod.outlook.com (2603:10b6:510:1d0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Wed, 28 Feb
 2024 19:44:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%5]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 19:44:33 +0000
Date: Wed, 28 Feb 2024 11:44:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2Vz?= =?utf-8?Q?s?= for
 drm/i915/cdclk: Document CDCLK components (rev2)
Message-ID: <20240228194431.GN5347@mdroper-desk1.amr.corp.intel.com>
References: <20240221185131.287302-2-gustavo.sousa@intel.com>
 <170857942730.198013.14642788092385463530@8e613ede5ea5>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170857942730.198013.14642788092385463530@8e613ede5ea5>
X-ClientProxiedBy: SJ0PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::30) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6029:EE_
X-MS-Office365-Filtering-Correlation-Id: ca835be8-16c9-41a4-7c3b-08dc3895b024
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XThna1puuwOYX1vjumcYeJUAoJ9BDzC29Mu2e8K0ok4fMGm9d2pVN0uj73p7ujjaNBp9Izko28PiEUjN00k8b2ij2voI2R6dZSec+XEumBaJ3oC2U+Q3BMZ9lHjSFsIChq7ZdcgU4w/CByOUean/qCC2UEEw/uyGVr2s2DGJxIZtZhJj0V7XjckfKrULbL0x0Phzh0EBWMxKwvK11EC+Ybg3B0gHhTvfzGpxqTleW78BuYahE1YMdWmNI/onVWdntF26OVD716Loqs2jHLGXBoQiysqI8uJwGCsN8lhUQnjJRDA4ZdyOHBs0ph/bH7QITbhdKNaEPRnTa4D1iDi2+3fPpJC1gmtWab2XIZKV2gL1KfzVspV1OywemseC4rWfnsScXs96E28AV3jfSSypUn28W7uREnkysHtxhC3Z6GOEyL4P7EspEZfDz1Gd8w7jxweBoI6A14kznDCDOUmJe4we9QULMxGzEbp2lVc1Hqu/2TMdmPKdPL5olCzPzeV4Py5Pi5NZIOZSG16f8p159lUqdinbN1vOiBKJ6BTQH/FvdmyfVmeSHYFsp8cSdflrxgxDVVRJP4SxYadHfVcEnpXD+LwAPcudLkufoYOm8u38komnBiq8ZmC7eTT15mgg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PuEvBJ5FlGczqBalfwMdpozDuya8Oe0SVAyvIM95Gq6prhyU2/iBmMwxQQHi?=
 =?us-ascii?Q?p/VASEPIWwQxx1zcbYCkPqAi8s/5ga86BlLaLLakZmlIdYkTabDzMNKYKN4l?=
 =?us-ascii?Q?IX0r+vHBJzkHCYucDTBP5IAnHhvCbT3Mbi4dAH244QPr1uLIHy45h5DvWVDQ?=
 =?us-ascii?Q?3PxdkkQohLT9+3ghCIXvjqcvIQXk6MYzwYF9hpYJi+iN0BxOy8wimByYSKQO?=
 =?us-ascii?Q?qoph4cfDVuonAD9AErFyXR4NZDrpkubh7g15ycmPYDMbU6cdkjulu7SNuOeM?=
 =?us-ascii?Q?qOIJ9OwGjeQtlnO2obBVS7sbpUFvbZ6sjxXDNWiwibqo/LDaoPqdYPr5MZjA?=
 =?us-ascii?Q?mFdAlKMI3T0eIKS0iroK9YcvWw9vYohgKlPUxYW/os0QRqsmi8vylLXI5igx?=
 =?us-ascii?Q?CVSX40Qy6MeOuvf8hxxbbG2rcm2t6++9OT0scuJssit7B9vz4SzrjoMMckML?=
 =?us-ascii?Q?etvhOaUgdOBTq1MMDCaczTrRAosDDovaV9lgZbCpVC5bbCSOFFfDlf/03MJx?=
 =?us-ascii?Q?mzsgNQChClXTTL+jVZ9KaDrvoyF+SRzQR2di63tTWSZyqGv5Fnd21DXXL2sn?=
 =?us-ascii?Q?dI2tQ7dUiAQwqbou6FXjLMPkFuoqBgGzzHG0iMjKy1KXHHCAxQFEIPc8o0RD?=
 =?us-ascii?Q?w7hnV8Lo3oi3wNPJKfS8gKLyg53KZCDUrj8FfUt4RnH+kQZ0irju78OLErCH?=
 =?us-ascii?Q?tfF06zIOViWV4yy6dX5Wy2AUMusXyf5Kw9ZFu8RW8TPL/IR38XktOx9kTAD7?=
 =?us-ascii?Q?3Pr4VbuSSsSVLtscvLhco8Lh4pqAeQ9gFl3fK04q4fakHWaVFbH8ezIDxArA?=
 =?us-ascii?Q?i0Tbxi2iqaghXCUkRNXNJjlvvIDdmpDgcdsBvqtyK3yKRQZOu29EIADDH0ty?=
 =?us-ascii?Q?2MB7n7FIZ/HyewwlatG+GNfdg20lZ3+t6Euvm/p/ZYgi6VBWe+pwIVlPZa1i?=
 =?us-ascii?Q?lLI7N/IMWVHJKquvEvomks81LkgBSiRznKEdsD7Yv+7xrmL9i5dA9mK9JHxf?=
 =?us-ascii?Q?m6/AhkIVN8zfpUmI5dn0UyTKNmffh4bfGho6SCgcJZAKziyd8t/7SJ6Mm5MV?=
 =?us-ascii?Q?heva8NO3pWQB5Igablnup/5tdTNfUPajyWS46LfoVasXBkzQZencWGkYBI64?=
 =?us-ascii?Q?dexrCO9map6D32BDuZYSDjw5BGZOS+qRbHpdJKRsP/T9Bhlya4CUZiqKxlbm?=
 =?us-ascii?Q?t7Guaz8RPjkzWySKDYUUbXBeisJUTSe3ys8aQkwWvgfz62aBc0P4qUkuQLkL?=
 =?us-ascii?Q?gjI7kHAss76zakjCjdIB7KKPp9dHqSJQNjaYcOIOI2X+yw6geVyYm7NyWtVX?=
 =?us-ascii?Q?ufI74jZ5pRasxnClgQTOZVALSQdArb9Rbi7+bPzj80MqMhmrs4C5m8fNHk/H?=
 =?us-ascii?Q?DYr8okJBcAhPPKq9+E658cy8m7OY0n+VT9oDVMGU0yQARAqKCgRgjqG6CuG7?=
 =?us-ascii?Q?l2XRWwVZwqtFKhxKHOqRonWqVIadmDguQTt56lP0nKMBs+4XwqpW3srzV6lx?=
 =?us-ascii?Q?6pFQNIr0YliTXzJSWC5UCV9lwcpVh2z0/HWPOQmdywm2ALZKa5B6yLmHLYmK?=
 =?us-ascii?Q?samLeERJwfsqpUnvcnjWZnWKUH3amSwLMC/i8o/CQEuktfaBp+OWTrrqHNg0?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca835be8-16c9-41a4-7c3b-08dc3895b024
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 19:44:33.8521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FlRPmisC8ZC60xzhDmdn2x2+Q2A+Lin7+pzA5bgpi2XryLNU7dNjzJC+gx1avx0/2lG+JTdEgA3ODfxppHbsdNT6Bkm1njxuqTOlR2VpWes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6029
X-OriginatorOrg: intel.com
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

On Thu, Feb 22, 2024 at 05:23:47AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cdclk: Document CDCLK components (rev2)
> URL   : https://patchwork.freedesktop.org/series/130016/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14311_full -> Patchwork_130016v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/index.html
> 
> Participating hosts (8 -> 7)
> ------------------------------
> 
>   Missing    (1): shard-glk-0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_130016v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#7701])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-idle@vecs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][3] ([i915#8414]) +7 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@drm_fdinfo@busy-idle@vecs0.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          [PASS][4] -> [FAIL][5] ([i915#7742])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-7/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@gem_bad_reloc@negative-reloc-bltcopy:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#3281]) +7 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_bad_reloc@negative-reloc-bltcopy.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#3936])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#3555] / [i915#9323])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-tglu:         NOTRUN -> [SKIP][9] ([i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_ccs@suspend-resume.html
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][12] ([i915#10137] / [i915#7297])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [ABORT][13] ([i915#10183])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [PASS][14] -> [FAIL][15] ([i915#6268])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([fdo#109314])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-mtlp:         NOTRUN -> [SKIP][17] ([i915#8555])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#4812]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#4771]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_exec_balancer@bonded-sync.html
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#4771])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4036])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4525])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#6334])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vcs1-smem:
>     - shard-mtlp:         NOTRUN -> [DMESG-WARN][25] ([i915#5591])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_exec_capture@capture@vcs1-smem.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-mtlp:         NOTRUN -> [FAIL][26] ([i915#9606])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-none-vip:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4473] / [i915#4771])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_exec_fair@basic-none-vip.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][28] ([i915#2842])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-glk:          [PASS][29] -> [FAIL][30] ([i915#2842])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-glk7/igt@gem_exec_fair@basic-none@vcs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk5/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [PASS][32] -> [FAIL][33] ([i915#2842])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][34] -> [FAIL][35] ([i915#2842]) +3 other tests fail
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([fdo#112283])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3281]) +7 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3281])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4537] / [i915#4812])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4537] / [i915#4812]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4860])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4860]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][44] ([i915#4613]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#4613]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [PASS][47] -> [TIMEOUT][48] ([i915#5493])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#4613]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#8289])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([fdo#111656])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4083]) +3 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4083]) +6 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#3282]) +3 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#4270])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#4270])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4270]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4270]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#3282]) +4 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#8428]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4079])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_softpin@allocator-evict@vcs1:
>     - shard-mtlp:         NOTRUN -> [INCOMPLETE][63] ([i915#10137])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gem_softpin@allocator-evict@vcs1.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4885]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4077]) +12 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#4079]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4077]) +8 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#3297]) +4 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gem_userptr_blits@access-control.html
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#3297])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gem_userptr_blits@access-control.html
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3297])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([fdo#109289]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#2856]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#2856]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@gen9_exec_parse@allowed-single.html
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#2527])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#2527] / [i915#2856]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_module_load@load:
>     - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#6227])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][77] -> [ABORT][78] ([i915#9820])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6590])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt1:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#6590]) +1 other test skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@i915_pm_freq_mult@media-freq@gt1.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [PASS][81] -> [FAIL][82] ([i915#3591])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([fdo#109303])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#6645])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#7707])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4212]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#4212]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#2521])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#8709]) +11 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#1769])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([fdo#111614]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#5286]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([fdo#111615] / [i915#5286])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][95] ([fdo#111614]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([fdo#111614]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([fdo#111615]) +6 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4538] / [i915#5190]) +8 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#5190]) +5 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         [PASS][100] -> [FAIL][101] ([i915#3743])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([fdo#111615]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([fdo#110723]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#5354] / [i915#6095]) +25 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_ccs@pipe-b-bad-rotation-90-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#5354] / [i915#6095]) +5 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271]) +107 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-y-tiled-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#5354] / [i915#6095]) +24 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_ccs@pipe-d-bad-rotation-90-y-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#5354]) +6 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_ccs@pipe-d-random-ccs-data-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#3742])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#7213]) +3 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([fdo#111827]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@gamma:
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([fdo#111827])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_chamelium_color@gamma.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#7828]) +8 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#7828]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#7828]) +4 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#7828]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#6944] / [i915#9424])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#8814]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3359]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([fdo#109279] / [i915#3359])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#3555] / [i915#8814]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#3359])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3555]) +4 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3555]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3359])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#9809]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([fdo#109274] / [i915#5354]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([fdo#111825]) +2 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([fdo#109274])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][130] ([i915#2346])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#4103] / [i915#4213])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][132] ([i915#10166])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk2/igt@kms_cursor_legacy@torture-move@pipe-a.html
>     - shard-tglu:         [PASS][133] -> [DMESG-WARN][134] ([i915#10166] / [i915#1982])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-5/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#9723])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3555]) +8 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3804])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#8812])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#3555] / [i915#3840])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3955])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3469])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#2065] / [i915#4854])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4881])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([fdo#109274] / [fdo#111767] / [i915#3637])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([fdo#109274] / [fdo#111767])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#109274]) +5 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#3637]) +5 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([fdo#109274] / [i915#3637]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#8381]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#2672]) +3 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#2587] / [i915#2672]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#2672]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#2672]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#2672] / [i915#3555])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#2672] / [i915#3555]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [PASS][156] -> [FAIL][157] ([i915#6880])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][158] ([i915#1825]) +19 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#8708]) +9 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5354]) +59 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([fdo#109280]) +16 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
>     - shard-snb:          [PASS][162] -> [SKIP][163] ([fdo#109271]) +2 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#8708]) +10 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([fdo#111767] / [i915#1825]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3023]) +5 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([fdo#110189]) +6 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3458]) +13 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([fdo#111825] / [i915#1825]) +6 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([fdo#111767] / [i915#5354]) +4 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([fdo#111767] / [fdo#111825] / [i915#1825]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#8228])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228]) +3 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#1839])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([fdo#109289]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([fdo#109289]) +2 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#3555] / [i915#8806])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#9423]) +7 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#9423]) +7 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#9423]) +15 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#9423]) +3 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#5235] / [i915#9423] / [i915#9728]) +3 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#5235]) +3 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#5235]) +9 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#5235]) +11 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg1-12/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#5235] / [i915#9423]) +7 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5235]) +3 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#3555] / [i915#5235]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-d-edp-1.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#9685])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#9340])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][192] -> [SKIP][193] ([i915#9519]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-pc8-residency-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([fdo#109293] / [fdo#109506])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#6524])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([fdo#111068] / [i915#9683])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9683]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#4235]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#5289])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3555] / [i915#8809]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([fdo#109309])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#3555] / [i915#8808])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#2437] / [i915#9412])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#2437])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#7387])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@perf@global-sseu-config.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#2434] / [i915#7387])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-mtlp:         NOTRUN -> [FAIL][207] ([i915#4349]) +1 other test fail
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8850])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@perf_pmu@cpu-hotplug.html
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#8850])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([fdo#112283])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#3708] / [i915#4077])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#3291] / [i915#3708])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][213] ([fdo#109295] / [fdo#111656])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-mtlp:         NOTRUN -> [FAIL][214] ([i915#9781])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-4/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-tglu:         NOTRUN -> [FAIL][215] ([i915#9779])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-exceed:
>     - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#2575]) +6 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@v3d/v3d_perfmon@create-perfmon-exceed.html
> 
>   * igt@v3d/v3d_submit_cl@bad-flag:
>     - shard-tglu:         NOTRUN -> [SKIP][217] ([fdo#109315] / [i915#2575]) +5 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-6/igt@v3d/v3d_submit_cl@bad-flag.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#2575]) +9 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-2/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_wait_bo@unused-bo-0ns:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([fdo#109315]) +2 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@v3d/v3d_wait_bo@unused-bo-0ns.html
> 
>   * igt@vc4/vc4_label_bo@set-label:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#7711]) +1 other test skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@vc4/vc4_label_bo@set-label.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
>     - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#2575]) +3 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#7711]) +6 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-0ns:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#7711]) +4 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-7/igt@vc4/vc4_wait_bo@used-bo-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [FAIL][224] ([i915#7742]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-1/igt@drm_fdinfo@virtual-idle.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][226] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-10/igt@gem_eio@hibernate.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-5/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [INCOMPLETE][228] ([i915#9275]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [FAIL][230] ([i915#3743]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-tglu-9/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][232] ([i915#2346]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
>     - shard-snb:          [SKIP][234] ([fdo#109271]) -> [PASS][235] +1 other test pass
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-rkl:          [SKIP][236] ([i915#9519]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][238] ([i915#9519]) -> [PASS][239] +1 other test pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [FAIL][240] ([i915#9196]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-mtlp-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][242] ([i915#5566]) -> [INCOMPLETE][243] ([i915#10137] / [i915#5566])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-glk1/igt@gen9_exec_parse@allowed-single.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-glk4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [ABORT][244] ([i915#9820]) -> [INCOMPLETE][245] ([i915#10137] / [i915#9820] / [i915#9849])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][246] ([i915#3955]) -> [SKIP][247] ([fdo#110189] / [i915#3955])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-rkl-1/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-snb:          [SKIP][248] ([fdo#109271] / [fdo#111767]) -> [SKIP][249] ([fdo#109271])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14311/shard-snb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10183]: https://gitlab.freedesktop.org/drm/intel/issues/10183
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#10282]: https://gitlab.freedesktop.org/drm/intel/issues/10282
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2065]: https://gitlab.freedesktop.org/drm/intel/issues/2065
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/intel/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
>   [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7707]: https://gitlab.freedesktop.org/drm/intel/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9728]: https://gitlab.freedesktop.org/drm/intel/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14311 -> Patchwork_130016v2
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_14311: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7720: 7720
>   Patchwork_130016v2: 06b279b4fb58a00667e47fafed72bba923d032ae @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130016v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
