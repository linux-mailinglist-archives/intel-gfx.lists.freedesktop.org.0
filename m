Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3383DB11A87
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 11:06:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B270010E051;
	Fri, 25 Jul 2025 09:06:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lrn37O8A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39B3310E051
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jul 2025 09:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753434402; x=1784970402;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=2zYFwiX4dqM9bCDetfZgIUxJHJr5Te3clr7TK+C7ahw=;
 b=lrn37O8AviHTJAAPoa9vs4PxzS2TWRAAU8/qkKygsx+L/F0ZVTUGwStV
 UxYJSFiSehoSLCoh7MJAZZh0ei9WvBkykGsT1n0piKBRPfHzTcDuTacwn
 t8FokZH0sm/7RuhgWSFYjkPh1Uyg8uCSbs74Hd4xmJLDjDsVdpfUnvdWT
 Z6NJoN++GG/3xlyLm80/jfjVbaqaBWLnaF4aVl8cvQvM+tV8uIpMztfMB
 /DIL9YbZ751sA5nQf2lm0Rgkzh/KCVrcjEW0/Waorha+PMPf4q6rrKPgR
 hrmsYochnSknN/quBjagp2j4QbQH6BkeNv+PfFS8Hal2QOUkiVa2aNS+a Q==;
X-CSE-ConnectionGUID: l0pZgYmUQyK+eYEw7QqCow==
X-CSE-MsgGUID: hAuA8yRaT/yxBJozesET4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11501"; a="81205319"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="81205319"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 02:06:41 -0700
X-CSE-ConnectionGUID: bVboMTyjQ4OMgeh8bTwwZw==
X-CSE-MsgGUID: FCzAmuvxRt6d464e/GZNTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="191701561"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 02:06:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 02:06:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 02:06:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.49)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 02:06:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yQpbHYqYAQseFXDJcMgNsuakdMCn2T4hiFfb49joYUaJdWXMR0kTO8xxqJJNmd6we2SKCwBcVRRzTA4jOoI+eBfAN0eQPmCQvK0beVzgUPEYyqBcXHXRCEVcURXnv1NKkes4qjdYnaKBSwk0lVGmn9/AbydgBWO+wky1wI1VlAI8Epi+cBdvl6Y5S9sRxVlspYQkIx6aw7pE8RhBKcM8/68vv5mmb/bAnlmRobXbzNcwjYJrWAN9qqPMWb34YpO3wtV4cuwdXvs8BoTtW6lpj9rnN2uch5GQhkco3RkTXh71PEWrBf3+AjKkbeW0cUxed6BEnGnyPwnWt54ToGh5Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZnMfw5vrKXv72WcbUEVmPjp60p6+wVcPGSXY7TX59s=;
 b=uTMWWdPGO/p7cJ8vPtzZHHq9Z46tz3Oab9/YtZJr+eve00f5SjsVme5QLBa76Ohp1A/qkH0Rd6nRTY1cp1Chnz+trqANSh78WTfi7woSXA4F5uydZ5gb9+2doxvG/yCJr+nHmD47YY1J8m6ze/XytXcNNCTO9t6ySkZ4K+iSSYRzksrBo2uTSBC/6wLZOd2mzpbsmLikfPiO1ep3GAooZcNHeJ7QVxK+fFBHc4AgZQZ31qgtCmwGj/dgPdb32XeyxsaZcI0n8Mo6xZa+HbPkyOi7KotRS54OBzGnpMNu2bIZC51DUsZ0KzYqX4p21DEUlrvK5hBDEgCAevtpbWw1Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8943.30; Fri, 25 Jul 2025 09:06:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Fri, 25 Jul 2025
 09:06:05 +0000
Date: Fri, 25 Jul 2025 12:05:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug builds
Message-ID: <aINI8wOESiiOKrvF@ideak-desk>
References: <20250724090237.92040-1-imre.deak@intel.com>
 <175336215603.186650.5672641101701308174@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175336215603.186650.5672641101701308174@1538d3639d33>
X-ClientProxiedBy: DB7PR03CA0074.eurprd03.prod.outlook.com
 (2603:10a6:10:72::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: 21f25479-2bc0-4c53-4453-08ddcb5a7be1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?M27DK91+r3PayJPCB4UJEG5CqDMQoKOGieNAAJssCvKc7nAD0MN2Mqox2Ej4?=
 =?us-ascii?Q?5vtPftskx2EJrZIqWSldq4KUxA1LMuo+zrVg2VxrEOwgr5R087Q+ul6igLi/?=
 =?us-ascii?Q?igyj5B22q6J4ZpM3l9a0GneqwNyIWnZLmKxbrKZ2DTOPcJTOAUQiA+wPSTIN?=
 =?us-ascii?Q?4L01ml/iC2jsi0rhgXlVlyzQO/yyL1F/wsnBcpoVO6w4/sRTrA0NXezZBc/U?=
 =?us-ascii?Q?JfxnCe9YuJx/iAcmC6oyyZKQpBsBEgW/Va4OSe9rBBhij/XPTlcHwcbMyKpd?=
 =?us-ascii?Q?JLO9MigiXTsGHYfMia8aihZD/fdTISeTYj/YbL7nNoWlMMKPRk3Y+sojojzH?=
 =?us-ascii?Q?EOHs/9/JJ0LHpVwK3p4Lc3qceGWfpD9sUXNIxtm9eaXm0R6V8pcCOiWf0mP5?=
 =?us-ascii?Q?ZPNOPV3pPZmoGumY0svtx/ShW44xQAPp02ivyN5bF+hXS5fnt9rLbH/p1czi?=
 =?us-ascii?Q?GrtT/G5JKtHUpgHElHg67i5fGmwu2UPwhIulCaN7e/bHxXqY3KGuKxzhk2/K?=
 =?us-ascii?Q?yQ4vp59Km4ULnp0MZ9Qhpl6ldEG4EkUvZ6d1l20G5+x09vttDk7V9c5D1PTk?=
 =?us-ascii?Q?3zFG/H7HTy2ueIDAQiNCUvZlZpm1PpYOG33PwCftfKWascRIpzB076iidRt2?=
 =?us-ascii?Q?J8kZNzFNwi73wdGWiOazSE8ymj9sKSuaqEoCip9rgMRgdjicFVo3lPbQV92A?=
 =?us-ascii?Q?pWz68C/DGV1ravPwDBY8TqvuMprspA+qkQgTChmjzqbfeWZn8oB7EX5Pe4Zf?=
 =?us-ascii?Q?I1ex9eI9/p8/cV/GtuOXwsGhXBTN1WwGxBJGPlmuYrVjQ4JRsB3Tq2PUkr0b?=
 =?us-ascii?Q?QTL8LXGpImNQLGQOlzaQ7evaHg/4QD9th22DSpX/86JyUZ9zxEeMr4/d1BJG?=
 =?us-ascii?Q?pbMtNWUHHgrga/A5n6BVSP0j5ZWhb1ULpT58DVQfbQKGs47PypYdCU2msHXv?=
 =?us-ascii?Q?+Dtdoo8ZZyYRH2NnPazm8Jseo4lJEqepknpN4w6FLw0FYN38SsRiKLSEGHoM?=
 =?us-ascii?Q?7QaoNaQ/519PcKVCfmGesrEgZ2OfZjyRPomeFHb6pdwnIhy6FG4InjiFiAWP?=
 =?us-ascii?Q?E89+pAYAkt++byq266Fk/2VEm6x2Q62ykmwlI4sPqA/OGjhX24ewpnL5VUvm?=
 =?us-ascii?Q?+piErp7G4wc4+3HlRnpSX3++kIyNbeysjmgpMLEkvQAvDPwt7rXCShmopJ54?=
 =?us-ascii?Q?hSeliURC2Ukcd/EflHai2t8k6IV8CqaM7QVTNdjtYl5IeZPO+pF+hkQooc0w?=
 =?us-ascii?Q?O9tBG5QWB0iq8ixb9A/AHHetsQ7P0VZcsd/Ad56zMZFZauphI1NqL66BgODO?=
 =?us-ascii?Q?cW5G5/kcCOV3EVc693O+vDy3LbL1TTthq6ppUyo1kBERgvONLSZ5PXi8kS9c?=
 =?us-ascii?Q?qvqEGys=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6Lq76D174xByQPI/O2OaylKov4KbDl2yT+z+Qi5dYTSbXk4Xyeg10XsS47TN?=
 =?us-ascii?Q?qoNdeaMmXXLj+ScFaCYyM4zVtVy67t1cIjUA9crjoMfiJBPDgEBj2mw89otP?=
 =?us-ascii?Q?tJ1rBtbDayujcFiUvZbVVxpq8G/NdsR1lQSSLADFfkYZS7VEMiU8RDl5xZ1v?=
 =?us-ascii?Q?kuvxdExiJfwi4ziPvijtpu2GO7jx8Zwtvf4PcVPqX2QCbvcKL0ZPwjnCJANa?=
 =?us-ascii?Q?w8vRy/y7ThbX4i7At+3/JiiSI7S9ysru3oIMbksWJWIdJN3ZoZb3+l7zsqx6?=
 =?us-ascii?Q?q3NuEeyBBfMOSVsepnE8DdkbQY1SR5BI9onZ5QUAvWj/QxintfXjRdIdPHth?=
 =?us-ascii?Q?dn9YcXx4tVy+ixtSp/FohAGzc+Y+1bmRsz8tab1Je7ypGE4ol6Sy3s5Yw4Wq?=
 =?us-ascii?Q?1TteEO+GNJ1RIdvjfnJOn2B8BUmiIckkmx5WhF/p78Xb2KGLUyA8yIczzefX?=
 =?us-ascii?Q?PQWbRu3EKuNGfIJGXU287jTh2S+yIYZrUgPCNXufFJngizOLJj5Ynu3TXNoe?=
 =?us-ascii?Q?SZhKjDqd+PZAb5zo1Jzl6clxuQedRY1CtALrtj37/f9ZikH8LqZgSYjAHBC7?=
 =?us-ascii?Q?85ffQnPElT4CCwB7Qr9ZZ1mL7L4Ci4cZUQP1JYnB3B7gjV2zxOG8yO7KaLXt?=
 =?us-ascii?Q?TrE50WI/bdLi/VnxZynQ3zRF00OfkQhgsFthjIu1Q4+UN6k951UTn8xwsNxx?=
 =?us-ascii?Q?j+odK2VubOGcOU1x0viIYCVD22AUSEmWXnFXKxaGqsl9kw8NRVTOjiSTSgQA?=
 =?us-ascii?Q?chjA/iojX15YPg/RGpLR/Mqd9zomnqhMr4BcP0nIW0ctSMPljDCDBD4doHU2?=
 =?us-ascii?Q?TcGY3znrPxjw56Gz7rKdF60nkvEaVkbASCIrzjsiuTCRUKdkMaU2YTwEBvTx?=
 =?us-ascii?Q?EwhQTyFpCgiUA2IvRy7z5hDGcjz9lH9U1w/L6L/DsDTjAerELI8rZ6Sk61Wa?=
 =?us-ascii?Q?LTxE0VgNUeDBnfsdVpCTlanPpkHBt6coJP9GzkzghUwqDyBs8RTR0ABSWx4l?=
 =?us-ascii?Q?mVyBhvINyDqRf25Nrjt0R+3Y1PSH9707sgQYsdPTEDkSJi0Kb/yO+x9OMzGk?=
 =?us-ascii?Q?ltPDLX5MRlgrRsmSUJemUWd253xjgLtBHouAjfFPJDHru7YY1r2K7WuQSOLM?=
 =?us-ascii?Q?6/v1icpyU6rrVPBnCcNrTmEtXK3Tw+alYWk7qp8HNZ5Jde0qh1rJvE4WWU6N?=
 =?us-ascii?Q?I918BcseB88+fE8HBRfLKnT1EuJjRMmpEprDgI6Dolr+uThSCW/8+uJZ1MGp?=
 =?us-ascii?Q?Yb+MW2zc4gcgGUWulnHGCE1O5wgyhXK51We4v+IizKnfCU2OvJsQGpTOTRJn?=
 =?us-ascii?Q?CJb743x00K6TfJIPUcR6Wb6jqFBeSu+S12Alz2SXBJLOl4zw6EmfSaEMg+2d?=
 =?us-ascii?Q?vvA4/21PgiT8VYkEAVXdYwcsvzgTWZ3QhgEwPt9mXW8DcV/aGgwlvYCRC/eb?=
 =?us-ascii?Q?Z4YyaG9LbqyPe3qBs5LCSAZNN5mRj+dxz63dLZ55ZouT4Jy7Z1JIt1WXExOn?=
 =?us-ascii?Q?AIYE/dZ321g/tegTrS/2QFyJt4YqgteasPbFgk17pUAG0VB57plKPDrHDieK?=
 =?us-ascii?Q?i9JxWmUJIPyUIhsZdkfzHIE3ArIizfGNw3LCeP83AbhAyLSTiaAZesgmA5S7?=
 =?us-ascii?Q?LiVI9ADEGXwGieit5NTLusMV8lNmTltm9h3mGDtTGjBt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f25479-2bc0-4c53-4453-08ddcb5a7be1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 09:06:05.2495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +ontu/N2Bl/j8eB/PyM/zH7aKso/LHrcZBQGBF+aqeYUsH1x9KeTeZig6Kuf12PnSxvzqZ8tY7Dikfvv9aYKqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 24, 2025 at 01:02:36PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix selecting CONFIG_DRM_KUNIT_TEST in debug builds
> URL   : https://patchwork.freedesktop.org/series/152051/
> State : failure

The patch is pushed to drm-intel-next, thanks for the review.

The failure is unrelated, since the Kconfigs CI uses have CONFIG_KUNIT=m
and so the change didn't affect the build result.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16920_full -> Patchwork_152051v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_152051v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_152051v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_152051v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a2:
>     - shard-glk:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-glk8/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a2.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk1/igt@kms_flip@blocking-absolute-wf_vblank-interruptible@c-hdmi-a2.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152051v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#14544] / [i915#6230])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@api_intel_bb@crc32.html
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#6230])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-dg2-9:        NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#11078])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@fbdev@read:
>     - shard-rkl:          [PASS][7] -> [SKIP][8] ([i915#14544] / [i915#2582])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@fbdev@read.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@fbdev@read.html
> 
>   * igt@gem_bad_reloc@negative-reloc-bltcopy:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#3281])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@gem_bad_reloc@negative-reloc-bltcopy.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#14544] / [i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#14544] / [i915#6335])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@hog-create:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][13] ([i915#12964]) +9 other tests dmesg-warn
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_create@hog-create.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#12353])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-glk3/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][16] ([i915#1099])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-snb7/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#14544] / [i915#280])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][19] ([i915#13390])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@wait-wedge-10ms:
>     - shard-dg1:          [PASS][20] -> [DMESG-WARN][21] ([i915#4391] / [i915#4423]) +1 other test dmesg-warn
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@gem_eio@wait-wedge-10ms.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@gem_eio@wait-wedge-10ms.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4525]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4525])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][24] ([i915#11965]) +4 other tests fail
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_endless@dispatch:
>     - shard-dg1:          [PASS][25] -> [TIMEOUT][26] ([i915#3778]) +1 other test timeout
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-18/igt@gem_exec_endless@dispatch.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@gem_exec_endless@dispatch.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#3539])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-default:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@gem_exec_flush@basic-wb-ro-default.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#3539] / [i915#4852])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3281]) +4 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3281]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@preemptive-hang:
>     - shard-snb:          NOTRUN -> [SKIP][33] +23 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-snb7/igt@gem_exec_schedule@preemptive-hang.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-none:
>     - shard-dg2-9:        NOTRUN -> [SKIP][34] ([i915#4860]) +1 other test skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-none.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4860])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4613] / [i915#7582])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4613])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#14544] / [i915#4613]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][39] ([i915#4613]) +2 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk3/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#4613]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#4613]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4077]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4077])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][44] ([i915#4077]) +7 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#4083]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_mmap_wc@write:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4083])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_mmap_wc@write.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3282])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3282])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-14/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#3282]) +2 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@bench:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#14544] / [i915#3282]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_pread@bench.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][51] ([i915#4270])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][52] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4270])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-rkl:          [PASS][54] -> [TIMEOUT][55] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][56] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#8428])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4079])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-14/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][60] ([i915#4079])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4885])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4879])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#3297]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3297] / [i915#4880])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#3297] / [i915#4958])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#3297]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][67] ([i915#13356] / [i915#14586])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][68] ([i915#13356])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk11/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen7_exec_parse@oacontrol-tracking:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gen7_exec_parse@oacontrol-tracking.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#2856])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@gen9_exec_parse@batch-invalid-length.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#2527] / [i915#2856]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#2856])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#14544] / [i915#2527])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#2527] / [i915#2856]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] ([i915#2856]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#2527])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_drm_fdinfo@busy-idle@vecs0:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#14073]) +7 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@i915_drm_fdinfo@busy-idle@vecs0.html
> 
>   * igt@i915_hangman@detector:
>     - shard-mtlp:         [PASS][78] -> [ABORT][79] ([i915#13723]) +1 other test abort
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-mtlp-7/igt@i915_hangman@detector.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-2/igt@i915_hangman@detector.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#14544] / [i915#8399])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#6590]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#14498])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][83] ([i915#12797])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk8/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#4387])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#6245])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][86] -> [INCOMPLETE][87] ([i915#4817])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][88] ([i915#4817] / [i915#7443])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#7707])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#12454] / [i915#12712])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][91] ([i915#10991] / [i915#13335]) +1 other test fail
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk3/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][92] ([i915#12967] / [i915#6228])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#9531])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#1769] / [i915#3555])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#14544]) +51 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][96] +2 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#5286]) +4 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#5286]) +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5286])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#3638])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb:
>     - shard-mtlp:         NOTRUN -> [SKIP][102] ([i915#6187])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-addfb.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4538])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_busy@basic:
>     - shard-rkl:          [PASS][106] -> [SKIP][107] ([i915#11190] / [i915#14544])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_busy@basic.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_busy@basic.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#10307] / [i915#6095]) +29 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#12313])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#12313])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#6095]) +55 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#6095]) +31 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6095]) +59 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#6095]) +14 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#14098] / [i915#6095]) +39 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#10307] / [i915#6095]) +112 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][117] ([i915#12313]) +1 other test skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#12805])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
>     - shard-glk:          NOTRUN -> [SKIP][119] +211 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk9/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#12805])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#6095]) +11 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#6095]) +54 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3742])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3742])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#13783]) +3 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg1:          NOTRUN -> [SKIP][126] +4 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-dg2-9:        NOTRUN -> [SKIP][128] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#11151] / [i915#7828]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-mtlp:         NOTRUN -> [SKIP][131] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#11151] / [i915#7828]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_color@ctm-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#12655] / [i915#14544])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_color@ctm-0-25.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [PASS][135] -> [SKIP][136] ([i915#12655] / [i915#14544])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_color@gamma.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_color@gamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#9424])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#3116] / [i915#3299])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][140] ([i915#7173])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2-9:        NOTRUN -> [SKIP][141] ([i915#9424])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#6944])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#7118] / [i915#7162] / [i915#9424])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_content_protection@type1.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x256:
>     - shard-rkl:          [PASS][145] -> [SKIP][146] ([i915#14544]) +33 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-256x256.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#13049])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#13049]) +2 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-128x42:
>     - shard-dg1:          [PASS][149] -> [DMESG-WARN][150] ([i915#4423]) +1 other test dmesg-warn
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_cursor_crc@cursor-rapid-movement-128x42.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_cursor_crc@cursor-rapid-movement-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#13049])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#8814])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][153] ([i915#13566])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#13049])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-dg2-9:        NOTRUN -> [SKIP][155] ([i915#13049])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#4103] / [i915#4213]) +1 other test skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#4103]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#4103])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - shard-glk10:        NOTRUN -> [SKIP][159] ([i915#11190])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk10/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#9809]) +1 other test skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][161] +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-glk:          [PASS][162] -> [SKIP][163] +10 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-glk3/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#13046] / [i915#5354]) +5 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#13691])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#1769] / [i915#3555] / [i915#3804])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3804])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>     - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3804])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#3840])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#3840] / [i915#9053])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#3840] / [i915#9053])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#14544] / [i915#14561])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#3469])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#4854])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#1839])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#1839])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#658])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#9934])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#14544] / [i915#9934]) +5 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][181] ([i915#9934]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9934])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#3637] / [i915#9934]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-vs-hang:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@blocking-wf_vblank@b-hdmi-a2:
>     - shard-rkl:          [PASS][186] -> [DMESG-WARN][187] ([i915#12964]) +12 other tests dmesg-warn
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-8/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip@dpms-off-confusion-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#14544] / [i915#3637]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          [PASS][189] -> [SKIP][190] ([i915#14544] / [i915#3637]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#2672] / [i915#3555])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][194] ([i915#2587] / [i915#2672])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#2672]) +3 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#2672]) +2 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555] / [i915#5190])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#2587] / [i915#2672] / [i915#3555])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#2672])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][203] ([i915#2672] / [i915#3555]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling:
>     - shard-rkl:          [PASS][204] -> [SKIP][205] ([i915#14544] / [i915#3555])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#2672] / [i915#3555]) +1 other test skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [PASS][208] -> [SKIP][209] ([i915#14544] / [i915#1849] / [i915#5354]) +5 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#8708]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg2:          [PASS][211] -> [FAIL][212] ([i915#6880])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#14544] / [i915#1849] / [i915#5354]) +27 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>     - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#3458]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][215] ([i915#8708]) +8 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#5354]) +10 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#1825]) +3 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][218] +60 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#8708]) +1 other test skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][220] ([i915#10055])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#9766])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][222] ([i915#3458]) +6 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3023]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3458]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][225] ([i915#5354]) +12 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#1825]) +8 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][227] +68 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#8708]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-farfromfence-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#3555] / [i915#8228])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_invalid_mode@int-max-clock:
>     - shard-rkl:          [PASS][230] -> [SKIP][231] ([i915#14544] / [i915#3555] / [i915#8826]) +1 other test skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_invalid_mode@int-max-clock.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
> 
>   * igt@kms_invalid_mode@zero-vdisplay:
>     - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#14544] / [i915#3555] / [i915#8826])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_invalid_mode@zero-vdisplay.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#10656] / [i915#14544])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#12388])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#12394])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#13688])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_joiner@basic-max-non-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#13688])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][238] ([i915#12339])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#10656])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#12339])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#1839])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#6301])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - shard-glk11:        NOTRUN -> [SKIP][243] ([i915#11190]) +2 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk11/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#11190] / [i915#14544])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          [PASS][245] -> [SKIP][246] ([i915#14544] / [i915#8825])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_plane@plane-position-hole-dpms.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_lowres@tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#3555])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_plane_lowres@tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu:         NOTRUN -> [SKIP][248] ([i915#13958]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#14259])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#14259])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#14259])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][252] ([i915#13046] / [i915#5354] / [i915#9423])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
>     - shard-tglu-1:       NOTRUN -> [SKIP][253] ([i915#12247]) +4 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#14544] / [i915#8152])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][255] ([i915#12247] / [i915#14544])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#12247] / [i915#14544] / [i915#8152])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
>     - shard-rkl:          [PASS][257] -> [SKIP][258] ([i915#14544] / [i915#8152])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a:
>     - shard-rkl:          [PASS][259] -> [SKIP][260] ([i915#12247] / [i915#14544]) +2 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75:
>     - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#12247] / [i915#3555] / [i915#6953])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a:
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#12247]) +3 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75:
>     - shard-rkl:          [PASS][263] -> [SKIP][264] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [PASS][265] -> [SKIP][266] ([i915#12247] / [i915#14544] / [i915#8152]) +3 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a:
>     - shard-glk11:        NOTRUN -> [SKIP][267] +95 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk11/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-a.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#14544] / [i915#5354])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][269] ([i915#9812])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#9685])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][271] ([i915#14544] / [i915#9685])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
>     - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#9685])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#14104])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_pm_dc@dc6-dpms.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][274] ([i915#9295])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#14544] / [i915#4281])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [PASS][276] -> [SKIP][277] ([i915#14544] / [i915#1849])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_pm_rpm@cursor-dpms.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][278] -> [SKIP][279] ([i915#9519]) +2 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [PASS][280] -> [SKIP][281] ([i915#12916])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-2/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@fences:
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#4077])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_pm_rpm@fences.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#9519])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][284] -> [SKIP][285] ([i915#9519])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>     - shard-tglu:         NOTRUN -> [SKIP][286] ([i915#9519]) +1 other test skip
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#14544] / [i915#6524])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [PASS][288] -> [SKIP][289] ([i915#11521] / [i915#14544])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_properties@plane-properties-atomic.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#11520]) +4 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][291] ([i915#9808])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][292] ([i915#12316]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][293] ([i915#11520]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][294] ([i915#11520]) +6 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#11520])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][296] ([i915#11520])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk11/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#11520] / [i915#14544]) +1 other test skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][298] ([i915#11520]) +5 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][299] ([i915#11520]) +4 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][300] ([i915#9683])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][301] ([i915#9683])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#9683])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][303] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-19/igt@kms_psr@fbc-pr-dpms.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#9732]) +15 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#9688]) +4 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_psr@fbc-psr2-primary-render.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][307] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][308] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_psr@psr-suspend.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#9732]) +16 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][310] ([i915#1072] / [i915#14544] / [i915#9732]) +10 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#4077] / [i915#9688]) +1 other test skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-dg2-9:        NOTRUN -> [SKIP][312] ([i915#12755])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][313] ([i915#4235])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][314] ([i915#5289])
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu:         NOTRUN -> [SKIP][315] ([i915#5289]) +1 other test skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][316] ([i915#12755])
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#3555]) +1 other test skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][318] ([i915#13179]) +1 other test abort
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][319] ([i915#8623])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-idle-hang:
>     - shard-glk10:        NOTRUN -> [SKIP][320] +76 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk10/igt@kms_vblank@ts-continuation-idle-hang.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-tglu:         NOTRUN -> [SKIP][321] ([i915#9906])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][322] ([i915#3555] / [i915#8808])
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][323] ([i915#3555])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-dg2-9:        NOTRUN -> [SKIP][324] ([i915#3555]) +2 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-tglu:         NOTRUN -> [SKIP][325] ([i915#11920])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-6/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-tglu-1:       NOTRUN -> [SKIP][326] ([i915#9906])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          NOTRUN -> [SKIP][327] ([i915#14544] / [i915#2437])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][328] ([i915#2437])
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][329] ([i915#2437] / [i915#9412])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2-9:        NOTRUN -> [SKIP][330] ([i915#2437])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-glk:          NOTRUN -> [SKIP][331] ([i915#2437])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk6/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2-9:        NOTRUN -> [SKIP][332] ([i915#2436])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][333] ([i915#2434])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@busy-double-start:
>     - shard-mtlp:         NOTRUN -> [FAIL][334] ([i915#4349]) +2 other tests fail
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-7/igt@perf_pmu@busy-double-start.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2-9:        NOTRUN -> [SKIP][335] ([i915#8516])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][336] ([i915#3708])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#3708] / [i915#4077])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg2:          NOTRUN -> [SKIP][338] ([i915#3291] / [i915#3708])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][339] ([i915#3708] / [i915#4077])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:
>     - shard-tglu-1:       NOTRUN -> [FAIL][340] ([i915#12910]) +9 other tests fail
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][341] ([i915#12910]) +9 other tests fail
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-tglu-8/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@unaligned-write:
>     - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#2582]) -> [PASS][343]
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@fbdev@unaligned-write.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@fbdev@unaligned-write.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg1:          [DMESG-WARN][344] ([i915#4391] / [i915#4423]) -> [PASS][345]
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-15/igt@gem_eio@in-flight-suspend.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-15/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_schedule@wide:
>     - shard-rkl:          [DMESG-WARN][346] ([i915#12964]) -> [PASS][347] +13 other tests pass
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-5/igt@gem_exec_schedule@wide.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-8/igt@gem_exec_schedule@wide.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [INCOMPLETE][348] ([i915#11441] / [i915#13304]) -> [PASS][349] +1 other test pass
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#1850]) -> [PASS][351]
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-rkl:          [TIMEOUT][352] ([i915#12964]) -> [PASS][353]
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-5/igt@gem_pxp@fail-invalid-protected-context.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-8/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][354] ([i915#5566]) -> [PASS][355]
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-dg2:          [DMESG-WARN][356] ([i915#13029] / [i915#14545]) -> [PASS][357]
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-4/igt@i915_module_load@reload-no-display.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-10/igt@i915_module_load@reload-no-display.html
>     - shard-dg1:          [DMESG-WARN][358] ([i915#13029] / [i915#14545]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-14/igt@i915_module_load@reload-no-display.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-17/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][360] ([i915#12061]) -> [PASS][361] +1 other test pass
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-2/igt@i915_selftest@live@workarounds.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-5/igt@i915_selftest@live@workarounds.html
>     - shard-mtlp:         [DMESG-FAIL][362] ([i915#12061]) -> [PASS][363] +1 other test pass
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-8/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [INCOMPLETE][364] ([i915#4817]) -> [PASS][365]
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@i915_suspend@sysfs-reader.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-dg1:          [DMESG-WARN][366] ([i915#4423]) -> [PASS][367] +1 other test pass
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-12/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-14/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#3637]) -> [PASS][369] +3 other tests pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#3555]) -> [PASS][371] +2 other tests pass
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [FAIL][372] ([i915#6880]) -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][375] +9 other tests pass
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-dg1:          [SKIP][376] ([i915#13030]) -> [PASS][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-16/igt@kms_hdmi_inject@inject-audio.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_invalid_mode@bad-hsync-start:
>     - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][379] +1 other test pass
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-start.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_invalid_mode@bad-hsync-start.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - shard-rkl:          [SKIP][380] ([i915#11190] / [i915#14544]) -> [PASS][381] +1 other test pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-mid:
>     - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#7294]) -> [PASS][383]
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-mid.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_alpha_blend@constant-alpha-mid.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-glk:          [SKIP][384] -> [PASS][385]
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-glk8/igt@kms_plane_multiple@2x-tiling-y.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-glk1/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_scaling@invalid-num-scalers:
>     - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][387]
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@invalid-num-scalers.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_plane_scaling@invalid-num-scalers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#8152]) -> [PASS][389]
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-a:
>     - shard-rkl:          [SKIP][390] ([i915#12247] / [i915#14544]) -> [PASS][391]
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-a.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-b:
>     - shard-rkl:          [SKIP][392] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][393]
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-b.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-b.html
> 
>   * igt@kms_pm_rpm@cursor:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#1849]) -> [PASS][395]
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_pm_rpm@cursor.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_pm_rpm@cursor.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][396] ([i915#9519]) -> [PASS][397]
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_properties@crtc-properties-legacy:
>     - shard-rkl:          [SKIP][398] ([i915#11521] / [i915#14544]) -> [PASS][399]
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_properties@crtc-properties-legacy.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_properties@crtc-properties-legacy.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-rkl:          [INCOMPLETE][400] ([i915#12276]) -> [PASS][401]
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vblank@wait-forked-busy-hang:
>     - shard-rkl:          [SKIP][402] ([i915#14544]) -> [PASS][403] +43 other tests pass
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_vblank@wait-forked-busy-hang.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_vblank@wait-forked-busy-hang.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [SKIP][404] ([i915#3555] / [i915#9906]) -> [PASS][405]
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-4/igt@kms_vrr@negative-basic.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_vrr@negative-basic.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-rkl:          [SKIP][406] ([i915#14544] / [i915#3708]) -> [PASS][407]
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@prime_vgem@basic-fence-flip.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@prime_vgem@basic-fence-flip.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          [SKIP][408] ([i915#14544] / [i915#8411]) -> [SKIP][409] ([i915#8411])
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][411] ([i915#3555] / [i915#9323]) +1 other test skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][412] ([i915#9323]) -> [SKIP][413] ([i915#14544] / [i915#9323])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][414] ([i915#7697]) -> [SKIP][415] ([i915#14544] / [i915#7697])
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][416] ([i915#280]) -> [SKIP][417] ([i915#14544] / [i915#280]) +1 other test skip
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@gem_ctx_sseu@mmap-args.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#4525]) -> [SKIP][419] ([i915#4525])
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          [SKIP][420] ([i915#4525]) -> [SKIP][421] ([i915#14544] / [i915#4525])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          [SKIP][422] ([i915#14544] / [i915#6344]) -> [SKIP][423] ([i915#6344])
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#3281]) -> [SKIP][425] ([i915#3281]) +5 other tests skip
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_exec_reloc@basic-wc.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          [SKIP][426] ([i915#3281]) -> [SKIP][427] ([i915#14544] / [i915#3281]) +5 other tests skip
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_exec_reloc@basic-write-read-noreloc.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][428] ([i915#7276]) -> [SKIP][429] ([i915#14544] / [i915#7276])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-rkl:          [SKIP][430] ([i915#4613]) -> [SKIP][431] ([i915#14544] / [i915#4613])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_lmem_swapping@random.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [DMESG-WARN][432] ([i915#5493]) -> [TIMEOUT][433] ([i915#5493]) +1 other test timeout
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          [SKIP][434] ([i915#14544] / [i915#4613]) -> [SKIP][435] ([i915#4613]) +2 other tests skip
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_lmem_swapping@verify.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][436] ([i915#284]) -> [SKIP][437] ([i915#14544] / [i915#284])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@gem_media_vme.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#3282]) -> [SKIP][439] ([i915#3282]) +4 other tests skip
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [SKIP][440] ([i915#3282]) -> [SKIP][441] ([i915#14544] / [i915#3282])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_pwrite@basic-random.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-rkl:          [TIMEOUT][442] ([i915#12917] / [i915#12964]) -> [SKIP][443] ([i915#13717])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          [SKIP][444] ([i915#8411]) -> [SKIP][445] ([i915#14544] / [i915#8411]) +1 other test skip
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][446] ([i915#3297]) -> [SKIP][447] ([i915#14544] / [i915#3297]) +1 other test skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@gem_userptr_blits@dmabuf-unsync.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          [SKIP][448] ([i915#3282] / [i915#3297]) -> [SKIP][449] ([i915#14544] / [i915#3282] / [i915#3297])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          [SKIP][450] ([i915#14544] / [i915#2527]) -> [SKIP][451] ([i915#2527]) +3 other tests skip
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@gen9_exec_parse@bb-oversize.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][452] ([i915#2527]) -> [SKIP][453] ([i915#14544] / [i915#2527])
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_pm_rc6_residency@media-rc6-accuracy:
>     - shard-rkl:          [SKIP][454] -> [SKIP][455] ([i915#14544]) +9 other tests skip
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@i915_pm_rc6_residency@media-rc6-accuracy.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type:
>     - shard-rkl:          [SKIP][456] ([i915#13328]) -> [DMESG-WARN][457] ([i915#12964])
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-7/igt@i915_pm_rpm@gem-mmap-type.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-5/igt@i915_pm_rpm@gem-mmap-type.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          [SKIP][458] ([i915#14544]) -> [SKIP][459] ([i915#1769] / [i915#3555])
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          [SKIP][460] ([i915#14544]) -> [SKIP][461] ([i915#5286]) +2 other tests skip
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][462] ([i915#5286]) -> [SKIP][463] ([i915#14544]) +3 other tests skip
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][464] ([i915#14544]) -> [SKIP][465] ([i915#3638]) +2 other tests skip
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
>     - shard-dg1:          [SKIP][466] ([i915#4538]) -> [SKIP][467] ([i915#4423] / [i915#4538])
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][468] ([i915#14098] / [i915#6095]) -> [SKIP][469] ([i915#6095]) +7 other tests skip
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-5/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-8/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][470] ([i915#14544]) -> [SKIP][471] ([i915#14098] / [i915#6095]) +6 other tests skip
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][472] ([i915#14098] / [i915#6095]) -> [SKIP][473] ([i915#14544]) +8 other tests skip
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][474] ([i915#12313]) -> [SKIP][475] ([i915#14544])
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][476] ([i915#14544]) -> [SKIP][477] ([i915#12313]) +1 other test skip
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][478] ([i915#14544]) -> [SKIP][479] ([i915#12805])
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg1:          [SKIP][480] ([i915#12313]) -> [SKIP][481] ([i915#12313] / [i915#4423])
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][482] ([i915#6095]) -> [SKIP][483] ([i915#14098] / [i915#6095]) +2 other tests skip
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          [SKIP][484] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][485] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][486] ([i915#11151] / [i915#7828]) -> [SKIP][487] ([i915#11151] / [i915#14544] / [i915#7828]) +5 other tests skip
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_chamelium_frames@dp-crc-fast.html
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][488] ([i915#7118] / [i915#9424]) -> [SKIP][489] ([i915#14544])
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_content_protection@atomic-dpms.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          [SKIP][490] ([i915#14544]) -> [SKIP][491] ([i915#3116])
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [SKIP][492] ([i915#9424]) -> [FAIL][493] ([i915#7173])
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-4/igt@kms_content_protection@lic-type-0.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          [SKIP][494] ([i915#14544]) -> [SKIP][495] ([i915#9424])
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_content_protection@mei-interface.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][496] ([i915#3555]) -> [SKIP][497] ([i915#14544]) +1 other test skip
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85:
>     - shard-rkl:          [SKIP][498] ([i915#14544]) -> [FAIL][499] ([i915#13566])
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-256x85.html
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          [SKIP][500] ([i915#14544]) -> [SKIP][501] ([i915#13049])
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
>     - shard-rkl:          [DMESG-WARN][502] ([i915#12964]) -> [SKIP][503] ([i915#14544])
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>     - shard-rkl:          [SKIP][504] ([i915#14544]) -> [SKIP][505] +15 other tests skip
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][506] ([i915#9723]) -> [SKIP][507] ([i915#14544])
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][508] ([i915#13707]) -> [SKIP][509] ([i915#14544])
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          [SKIP][510] ([i915#14544] / [i915#4854]) -> [SKIP][511] ([i915#4854])
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][512] ([i915#658]) -> [SKIP][513] ([i915#14544] / [i915#658])
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_feature_discovery@psr1.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-dg1:          [SKIP][514] ([i915#9934]) -> [SKIP][515] ([i915#4423] / [i915#9934])
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_flip@2x-dpms-vs-vblank-race.html
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          [SKIP][516] ([i915#14544] / [i915#9934]) -> [SKIP][517] ([i915#9934]) +4 other tests skip
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          [SKIP][518] ([i915#9934]) -> [SKIP][519] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          [SKIP][520] ([i915#14544] / [i915#3555]) -> [SKIP][521] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          [SKIP][522] ([i915#2672] / [i915#3555]) -> [SKIP][523] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg1:          [SKIP][524] -> [SKIP][525] ([i915#4423])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][526] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][527] ([i915#1825]) +24 other tests skip
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          [SKIP][528] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][529] ([i915#5439])
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][530] ([i915#3458] / [i915#4423]) -> [SKIP][531] ([i915#3458])
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [SKIP][532] ([i915#3458]) -> [SKIP][533] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][534] -> [SKIP][535] ([i915#14544] / [i915#1849] / [i915#5354]) +1 other test skip
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          [SKIP][536] ([i915#1825]) -> [SKIP][537] ([i915#14544] / [i915#1849] / [i915#5354]) +18 other tests skip
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][538] ([i915#3023]) -> [SKIP][539] ([i915#14544] / [i915#1849] / [i915#5354]) +13 other tests skip
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][540] ([i915#10433] / [i915#3458]) -> [SKIP][541] ([i915#3458]) +2 other tests skip
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][542] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][543] ([i915#3023]) +16 other tests skip
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg1:          [SKIP][544] ([i915#3555] / [i915#8228]) -> [SKIP][545] ([i915#3555] / [i915#4423] / [i915#8228])
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_hdr@bpc-switch.html
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][546] ([i915#1187] / [i915#12713]) -> [SKIP][547] ([i915#12713])
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-mtlp-3/igt@kms_hdr@brightness-with-hdr.html
>     - shard-dg1:          [SKIP][548] ([i915#1187] / [i915#12713]) -> [SKIP][549] ([i915#12713])
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-12/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][550] ([i915#12388] / [i915#14544]) -> [SKIP][551] ([i915#12388])
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][552] ([i915#12394]) -> [SKIP][553] ([i915#12394] / [i915#14544])
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][554] ([i915#1839] / [i915#4816]) -> [SKIP][555] ([i915#4070] / [i915#4816])
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-8/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [INCOMPLETE][556] ([i915#13476]) -> [SKIP][557] ([i915#14544])
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          [SKIP][558] ([i915#14544]) -> [SKIP][559] ([i915#3555]) +4 other tests skip
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_lowres@tiling-yf.html
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][560] ([i915#13958]) -> [SKIP][561] ([i915#14544])
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-none.html
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-rkl:          [SKIP][562] ([i915#14544] / [i915#8152]) -> [SKIP][563]
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-dg1:          [SKIP][564] ([i915#3555] / [i915#4423]) -> [SKIP][565] ([i915#3555])
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a:
>     - shard-dg1:          [SKIP][566] ([i915#12247] / [i915#4423]) -> [SKIP][567] ([i915#12247])
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][568] ([i915#12247] / [i915#14544]) -> [SKIP][569] ([i915#12247]) +1 other test skip
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][570] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][571] ([i915#12247]) +3 other tests skip
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
>     - shard-rkl:          [SKIP][572] ([i915#12247]) -> [SKIP][573] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][574] ([i915#12247]) -> [SKIP][575] ([i915#12247] / [i915#14544])
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][576] ([i915#14544] / [i915#5354]) -> [SKIP][577] ([i915#5354])
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][578] ([i915#12343]) -> [SKIP][579] ([i915#12343] / [i915#14544])
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_pm_backlight@brightness-with-dpms.html
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          [SKIP][580] ([i915#14544] / [i915#9685]) -> [SKIP][581] ([i915#9685])
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][582] ([i915#3828]) -> [SKIP][583] ([i915#14544] / [i915#9340])
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg1:          [SKIP][584] ([i915#4423] / [i915#9519]) -> [SKIP][585] ([i915#9519])
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-19/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-18/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][586] ([i915#11520] / [i915#14544]) -> [SKIP][587] ([i915#11520]) +6 other tests skip
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][588] ([i915#11520]) -> [SKIP][589] ([i915#11520] / [i915#14544]) +5 other tests skip
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          [SKIP][590] ([i915#14544] / [i915#9683]) -> [SKIP][591] ([i915#9683])
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-psr-primary-render:
>     - shard-dg1:          [SKIP][592] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][593] ([i915#1072] / [i915#9732])
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-dg1-13/igt@kms_psr@fbc-psr-primary-render.html
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-dg1-17/igt@kms_psr@fbc-psr-primary-render.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][594] ([i915#1072] / [i915#9732]) -> [SKIP][595] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          [SKIP][596] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][597] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-rkl:          [SKIP][598] ([i915#5289]) -> [SKIP][599] ([i915#14544])
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          [SKIP][600] ([i915#3555] / [i915#9906]) -> [SKIP][601] ([i915#14544])
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-4/igt@kms_vrr@negative-basic.html
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-rkl:          [SKIP][602] ([i915#14544] / [i915#2437]) -> [SKIP][603] ([i915#2437])
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@kms_writeback@writeback-invalid-parameters.html
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          [SKIP][604] ([i915#14544] / [i915#2436]) -> [SKIP][605] ([i915#2436])
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][606] ([i915#14544] / [i915#8516]) -> [SKIP][607] ([i915#8516])
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-4/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][608] ([i915#14544] / [i915#3708]) -> [SKIP][609] ([i915#3708])
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-7/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][610] ([i915#3708]) -> [SKIP][611] ([i915#14544] / [i915#3708])
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16920/shard-rkl-3/igt@prime_vgem@fence-read-hang.html
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12353]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12353
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
>   [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14104
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14561
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16920 -> Patchwork_152051v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16920: e95f7906632d9bacee7d6f47884f856632393fa0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8475: 1ddc997191d8aa008b49b5a4c47cf295c9a3c4f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_152051v1: e95f7906632d9bacee7d6f47884f856632393fa0 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152051v1/index.html
