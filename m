Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A9AC8550B6
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 18:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF2210E1EC;
	Wed, 14 Feb 2024 17:48:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VP4cu50D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78E510E0A1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 17:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707932892; x=1739468892;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RTwdwQRSprRWSpI2kJpS26XRwOIdB6iKzxelOt2AZx0=;
 b=VP4cu50DtntlRUejNUDdTRG2NgmSZ3my3ZrLcJhIld/W5OHEe/PDhg0e
 0/G1i4iCoS4sLSzFSBb/EflCKoEeSMV3rxQAUOUub4K4WxMRNAvaIVDA5
 WXqO1hk4/IZQw0STepIXI8u3yfTjbWiKh6jpcfc3NH55ZsazU+CoWA1PN
 JzYHWKWG2HLjxJ7Z6X7UD3KJer62fJxIlPxWCwfKHUTrs8+vpjLz6ptD4
 mDJAs9vJcl3JGChfURtXUpzOjwwwjMlGTT61dDH2gQv9XBYhKlQFS4JJM
 4ajgi0a2tsxAj7SF7s9WU792W5BcgUo1KLT8APWGlvJRCYNs7cUqxw9/N Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="1865175"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="1865175"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 09:47:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="40748591"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 09:47:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 09:47:46 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 09:47:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 09:47:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 09:47:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CapusPyGCFaNhtPtaPWirC7DQwgJ4WFkrdK7VV1jOXPy4ObitWVkF4WOAaNm+CCzpFLf6rsjJGz9aAV0IXkwzCR5px9YEbhZJahm+z9bux4BPZWoZgOUTqdlGTyp5cTCAog2YnIjis9Ma09/qEMDhWTo/mad4Givz9b+l1K33ajrEsfrNexaDgXmG9mfCBBUkNEik47cGWvmm39VOl4J8P8XvP3k91xA1/V08r1YVvCZCbWZ2kp1NpMjTo0uxgaw0iRLdbRaelhBuKWINy6DgGBmHoF/xpOtcWx/+XaTSrHvxQzHNCLaK5BwVkP396LpUlxs8XmfBaJa1AaWFafwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PuhXXqZEdO69/6npxua+3rur7YH08v6lZlMFOavvWKg=;
 b=IBLHfiozQq8BIzi8M22hhbaINw5rwgtKFM6DTRYnfTJrJA8HvOlTdUEmc073hvwfU+uQVjasMqzg3+C4bSg6Z0gz/7AgA2NapoeiHVWwLtqSO85zPCVxy6O9LvdZO/Fgh4wyanYeeBZkmNw7vU8ZCnbJtvIloB3KXHcbjt5DygwKy62eKm8tYSvBzvytuC3j+JcXLGahXPNpBa3iPps5MquEtEaj/HzxeYB91iMeRsfvwbENRfz2cVDuzrqeBUKBILThZJnwSy2iz/ZO2W/DnkEN1GUDlR+KhX+PRwSzN4mhCRo25GJxntgxiWl+PkKwN5yrWkGqT8KwkXKW9cFz/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB7421.namprd11.prod.outlook.com (2603:10b6:510:281::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.35; Wed, 14 Feb
 2024 17:47:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::e8bb:5354:3889:6092%3]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 17:47:28 +0000
Date: Wed, 14 Feb 2024 09:47:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fdisplay?= =?utf-8?Q?=3A?= update pll values in
 sync with Bspec for MTL (rev2)
Message-ID: <20240214174726.GC5347@mdroper-desk1.amr.corp.intel.com>
References: <20240214070930.1028456-1-ravi.kumar.vodapalli@intel.com>
 <170790782017.1238464.14952920422891946463@5338d5abeb45>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170790782017.1238464.14952920422891946463@5338d5abeb45>
X-ClientProxiedBy: BYAPR03CA0021.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB7421:EE_
X-MS-Office365-Filtering-Correlation-Id: 329fd528-d327-4949-c075-08dc2d850310
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZQhxfNOtsnl/NJXy+uYbAAwsfoArH+YT5jQoFOo66cFA9JR7GPdnNZoa0rE+BybEkr4z4IShQ4diYNmCceVx/F7EM9CWXXEY3VaiGKe+JgQLUSOEsNHfJr4jQYtfP7SSsb9WtFlzMgFXg+9eRBn3+3VEjvQEUyqjXHWxt1aoAWMNGXxCmzTs2Mujs/zliXs6MDmpfjZEVOrkrHRUN38luNHQBG9ckx3PNQ1GNar9jN+dTh2Kh+7I3uPCeuJLI0ss0S60WYIvRcm93/ZmkAYFzF1vBGsQA8k7njZ4LzC3w8u2jB3SLnOD7NGY6xm92LHyt8YqmT0F2Oj2T8IPW2D3uLAW1FJY6W36pmZp7oh/L+U+Q/XiTYq4lcuoY5yZlwignl/cUnrMuMZgMVgQux+OXAMbTWJmurAixJAVgT1z9RyftRJhg3EbcRlWpqFFsJ1lUqy+3/rpyPL7NlycfVunSL0RE1qXi3SCMk5J1AuZwJCiiiLOyfzoe9N0NUYdHu5z90xpcUKPeNxyfcl6e3qzvTsJW3HldGG6H/z/3CnXgeU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(136003)(39860400002)(346002)(230922051799003)(230273577357003)(1800799012)(451199024)(64100799003)(186009)(41300700001)(5660300002)(82960400001)(26005)(15650500001)(2906002)(30864003)(33656002)(38100700002)(478600001)(83380400001)(86362001)(316002)(966005)(6486002)(66556008)(66946007)(66476007)(8936002)(6916009)(4326008)(107886003)(6506007)(1076003)(6512007)(559001)(579004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pEv+hX/ENd4N4Pvqg3XLOlCXX+E2aW7vK6vE/Y38CDdIWGd9GjfdIFTX3MpK?=
 =?us-ascii?Q?XbXh6wd+J8COF0I1UQJAsb5qYnZQGRf0fm0w9jv1g6tCrqw5cwzfHuQvI+ub?=
 =?us-ascii?Q?QyTjrd646uLybl9faT77rWzickjrvccTRC6PbEz1dSg2Cp6MHTo/kF6gbU0w?=
 =?us-ascii?Q?QxSAVVdzqhDg1jLDbqaZ4Vrhh1LPMww+hLGZ9nqtSB797pnDZU5CcRAiTo4n?=
 =?us-ascii?Q?y/VGqBpFpW/f1Q7AERxheug4Yit1KokjK50EgDXLUnJOQ9uyZeZaLSkkMG/3?=
 =?us-ascii?Q?i8UJrKrP4HBwlYE9KA4eBxmcHQx8oyGN8ZtZTwTA0QGGpNx18osC9cg4O+oO?=
 =?us-ascii?Q?bqssi3H7dmM+qzUP0bwsISaZa1TjXFiJY0VkA3Wk4zbuYmn+SKGFFQQpgQmy?=
 =?us-ascii?Q?rTJ7WpSdDafX/tpUalbad1gTO7AeMfvp6pdCMkPhOZzxSZzpwScjp46OVC5e?=
 =?us-ascii?Q?BLBg1Jmxs3bzE7u/pJooKxz4gXzxy7KksDZacQ4Q3VwlkQUK84SWwnnxKeZg?=
 =?us-ascii?Q?UdtTpcrk5Y+HtP3N3NVNdx8wKK3+0pHHhDCgTeyLRFhRXKsOQA/lLiLzMzOL?=
 =?us-ascii?Q?it13zFJTpyhM5rW0myhs34UgFcYV5X/buEUy7wyd2zHMqLg1S+OcU/xcBSaD?=
 =?us-ascii?Q?8aP4Pu+VQqYiFQQ4WfhbVMJZC/njIGE+yujIdMjsGXKSIGk367+06xrnzC9g?=
 =?us-ascii?Q?ELvFc9GODZOIxZvR7HS4Mu4l4on+XBuRK9qxP4uNhuQwhhu+4bP6riKPKWTO?=
 =?us-ascii?Q?fASum7tvtxUK27AnjTuIpSoisdeOLPeFvBBBT6Lo+I9B9IekqiYhjIaRaz8F?=
 =?us-ascii?Q?RUsq8z3ChlR4IGAWq5S3Lp5Fvg8/wlVq4LaGjjalP+Mn2cpzhkj/mdyjEV0z?=
 =?us-ascii?Q?/Kn87JANQmyHX787DvE5kMB8bPWGMqbGCKWDcZsgI9cNsy4MKorh66XKGqqw?=
 =?us-ascii?Q?KkhOfxlxnSDDeNkcFSih9+5TsT1yzaGX0NLjNu620zMzMZkyW95wQgWB6OP2?=
 =?us-ascii?Q?74hC8uSRpOpYzISLwXdpT1lApeBUD9hknVx1r1QBnRjwtcUrqBiZqf078jsL?=
 =?us-ascii?Q?9ar0IySStxvnkCNLwsjN1Ajn7O/3mvMD7xUJu/l1+CUTcKszmL6mSYFW8GXx?=
 =?us-ascii?Q?ZapWKOVPnwzLrLMCxvgcq7Q1A8m88r6f+4adnXXD4FzlZTotxCKTFWlxm6tj?=
 =?us-ascii?Q?VKxLxyzTPCuzSCY0aUnYn5b+0UgKFaT/lBTO9h6NFFJ+8jRd28mF7HAJq89a?=
 =?us-ascii?Q?YMa/0DE7HqRdbjYYoqvUxrnktYREReegvauhef9TZUH0tn7Prqd+2/vqEw7N?=
 =?us-ascii?Q?TzMlF+0+q94JQheQIAtW2yElOx8QpUcjbZf2apq2pTgZGhTr2MzE7YiaOIDI?=
 =?us-ascii?Q?4aKkysNGGns9IC+lQFEQXzp/InapVmyqxYaZkLFkkhEfG+ObT9XUC/Mg41Q7?=
 =?us-ascii?Q?YXAcFSWvGVSqDFGDcTTZDZJRQWc7iJ7I4qhsALOzzr3O1Z+2+FMJoGefgKJf?=
 =?us-ascii?Q?P4wKcw5MKq2EgtnIm46uMCDNOK/px7RjErm3Hv/GJnEtWhGl5Mz1/x0msSDD?=
 =?us-ascii?Q?/PBeBrI/yAA/llVxUhXCiTr8kzaNEbe+A5D+QUmbw6VwkFkSc1/ZwwPv9I6s?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 329fd528-d327-4949-c075-08dc2d850310
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 17:47:28.7514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 97nqy3v7rPXxKEidAfgcIBM3HNC9uxiQH/LN6MDRenTLodnblE02QX610pSPp+iyKF94icS0RpiwZ+bElRyrSsvyC8xTUSUO2E+/verf8CI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7421
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

On Wed, Feb 14, 2024 at 10:50:20AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: update pll values in sync with Bspec for MTL (rev2)
> URL   : https://patchwork.freedesktop.org/series/129878/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14268_full -> Patchwork_129878v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_129878v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_129878v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 9)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_129878v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1:
>     - shard-rkl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-4/igt@kms_vblank@ts-continuation-suspend@pipe-b-hdmi-a-1.html

This RKL suspend issue is
https://gitlab.freedesktop.org/drm/intel/-/issues/2787 and is not
related to this patch.


Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129878v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8414]) +23 other tests skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [ABORT][4] ([i915#10183])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#6335])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][6] -> [FAIL][7] ([i915#6268])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8555])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#280])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][10] -> [FAIL][11] ([i915#5784])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-18/igt@gem_eio@unwedge-stress.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-12/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#4771])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][13] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][14] ([i915#2842])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#2842]) +2 other tests fail
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842]) +1 other test fail
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [PASS][19] -> [FAIL][20] ([i915#2842]) +1 other test fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-before-default:
>     - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#3539] / [i915#4852])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@gem_exec_flush@basic-wb-rw-before-default.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-tglu:         NOTRUN -> [SKIP][22] ([fdo#112283])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([fdo#112283])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#3281])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3281])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3281]) +8 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4537] / [i915#4812])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4860])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4860]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk4/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_mmap@bad-size:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4083]) +2 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_mmap@bad-size.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4077]) +6 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#4077]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@bad-offset:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#4083])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@gem_mmap_wc@bad-offset.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4083])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3282]) +4 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#4270]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#4270])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4270]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4270])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5190]) +3 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#8411])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4079])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3297])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3323])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#3297])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3297]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([fdo#109289]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@gen3_render_linear_blits.html
> 
>   * igt@gen7_exec_parse@basic-rejected:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([fdo#109289])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@gen7_exec_parse@basic-rejected.html
> 
>   * igt@gen7_exec_parse@chained-batch:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([fdo#109289]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@gen7_exec_parse@chained-batch.html
> 
>   * igt@gen7_exec_parse@load-register-reg:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([fdo#109289])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@gen7_exec_parse@load-register-reg.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#2856]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4881]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@load:
>     - shard-glk:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#6227])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk9/igt@i915_module_load@load.html
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#6227])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload:
>     - shard-dg1:          [PASS][56] -> [DMESG-WARN][57] ([i915#4391] / [i915#4423])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-13/igt@i915_module_load@reload.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-19/igt@i915_module_load@reload.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][58] -> [INCOMPLETE][59] ([i915#10137] / [i915#1982] / [i915#9849])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         NOTRUN -> [ABORT][60] ([i915#10131] / [i915#9820])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [PASS][61] -> [INCOMPLETE][62] ([i915#10137] / [i915#9849])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#8925])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([fdo#109303])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([fdo#109302])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][66] ([i915#9311])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk4/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][67] -> [FAIL][68] ([i915#10031])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8709]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#8709]) +11 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([fdo#111615] / [i915#5286])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([fdo#111614])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([fdo#111614] / [i915#3638])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([fdo#110723])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([fdo#111615])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([fdo#111615]) +1 other test skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_joiner@2x-modeset:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#2705])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_big_joiner@2x-modeset.html
> 
>   * igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#5354] / [i915#6095])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@kms_ccs@pipe-a-missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#5354] / [i915#6095]) +5 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#5354] / [i915#6095]) +8 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#5354] / [i915#6095])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#5354]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_ccs@pipe-c-bad-pixel-format-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([fdo#111827])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_color@ctm-0-50:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([fdo#111827])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_chamelium_color@ctm-0-50.html
> 
>   * igt@kms_chamelium_color@ctm-blue-to-red:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([fdo#111827])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_chamelium_color@ctm-blue-to-red.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#7828]) +1 other test skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#7828])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#7828])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7828]) +5 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#7118] / [i915#9424])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#3299]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#9424])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#3555] / [i915#8814])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#3359]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#8814])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([fdo#109274] / [i915#5354]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4103] / [i915#4213])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([fdo#111825])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([fdo#109274])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([fdo#111825]) +2 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#4213])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-dg1:          [PASS][104] -> [DMESG-WARN][105] ([i915#10166])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-18/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-19/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([fdo#110189] / [i915#9227])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([fdo#110189] / [i915#9723])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#9833])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3555]) +4 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#8588])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#1839]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#9337])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([fdo#109274]) +4 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3637])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([fdo#109274] / [fdo#111767])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([fdo#109274] / [i915#3637] / [i915#3966])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#2672])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][118] ([i915#2672])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#2672]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([fdo#109285])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([fdo#111825] / [i915#1825]) +8 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5354]) +61 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-snb:          [PASS][123] -> [SKIP][124] ([fdo#109271] / [fdo#111767])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-snb:          [PASS][125] -> [SKIP][126] ([fdo#109271]) +8 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([fdo#109280]) +5 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#8708])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#8708]) +14 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([fdo#111767] / [fdo#111825] / [i915#1825])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3458]) +10 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#10070])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
>     - shard-glk:          NOTRUN -> [SKIP][133] ([fdo#109271]) +161 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk4/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3458])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3023]) +6 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([fdo#111767] / [i915#5354])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#1825]) +3 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-snb:          NOTRUN -> [SKIP][138] ([fdo#109271]) +12 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([fdo#110189]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3555] / [i915#8228])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#8228])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#6301])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6953] / [i915#9423])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][144] ([i915#8292])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#9423]) +7 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#5176]) +3 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#9423]) +3 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#9423]) +7 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#5176] / [i915#9423]) +1 other test skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#9423]) +3 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#5235]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#5235] / [i915#9423]) +11 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5235]) +9 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#9685])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][156] -> [SKIP][157] ([i915#4281])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#9340])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          [PASS][159] -> [SKIP][160] ([i915#9519]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#6524] / [i915#6805]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#9683]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([fdo#111068] / [i915#9683])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#4235])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([fdo#111615] / [i915#5289])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#4235] / [i915#5190])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3555])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([fdo#109309])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][169] -> [FAIL][170] ([i915#9196])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][171] -> [FAIL][172] ([i915#9196])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [PASS][173] -> [FAIL][174] ([i915#9196]) +1 other test fail
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#3555])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@kms_vrr@flipline.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-glk:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#2437])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk7/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#7387])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-1/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@mi-rpc:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#2434])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-2/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][179] ([i915#5793])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3291] / [i915#3708])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@prime_vgem@basic-write.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#9917])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][182] ([i915#9781])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk7/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([fdo#109307])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#2575])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-in-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([fdo#109315]) +1 other test skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@v3d/v3d_submit_cl@bad-multisync-in-sync.html
> 
>   * igt@v3d/v3d_submit_csd@job-perfmon:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#2575]) +9 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@v3d/v3d_submit_csd@job-perfmon.html
> 
>   * igt@vc4/vc4_perfmon@create-perfmon-exceed:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#7711]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-1/igt@vc4/vc4_perfmon@create-perfmon-exceed.html
> 
>   * igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>     - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#2575]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-purgeable:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#7711])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-2/igt@vc4/vc4_purgeable_bo@mark-purgeable.html
> 
>   * igt@vc4/vc4_tiling@set-bad-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#7711]) +6 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@vc4/vc4_tiling@set-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][191] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-10/igt@gem_eio@hibernate.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-2/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][193] ([i915#2842]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-glk:          [FAIL][195] ([i915#2842]) -> [PASS][196]
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][197] ([i915#2842]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [TIMEOUT][199] ([i915#5493]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [INCOMPLETE][201] ([i915#10137] / [i915#9200] / [i915#9849]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][203] ([i915#3743]) -> [PASS][204] +1 other test pass
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][205] ([i915#2346]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-glk1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][207] -> [PASS][208]
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-glk6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-snb:          [SKIP][209] ([fdo#109271] / [fdo#111767]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-snb:          [SKIP][211] ([fdo#109271]) -> [PASS][212] +8 other tests pass
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][213] ([i915#9519]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [SKIP][215] ([i915#9519]) -> [PASS][216] +1 other test pass
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@perf_pmu@multi-client@rcs0:
>     - shard-mtlp:         [FAIL][217] -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-mtlp-1/igt@perf_pmu@multi-client@rcs0.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-3/igt@perf_pmu@multi-client@rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-tglu:         [WARN][219] ([i915#2681]) -> [FAIL][220] ([i915#3591]) +1 other test fail
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-mtlp:         [SKIP][221] ([i915#7213]) -> [SKIP][222] ([i915#7213] / [i915#9010])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-mtlp-8/igt@kms_cdclk@mode-transition-all-outputs.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-mtlp-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][223] ([fdo#110189] / [i915#3955]) -> [SKIP][224] ([i915#3955])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-5/igt@kms_fbcon_fbt@psr.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          [SKIP][225] ([i915#2587] / [i915#2672] / [i915#4423]) -> [SKIP][226] ([i915#2587] / [i915#2672])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-dg1-12/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][227] ([fdo#109271]) -> [SKIP][228] ([fdo#109271] / [fdo#111767])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-snb:          [SKIP][229] ([fdo#109271] / [fdo#111767]) -> [SKIP][230] ([fdo#109271]) +1 other test skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][231] ([i915#3361]) -> [FAIL][232] ([i915#9295])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14268/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
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
>   [i915#10030]: https://gitlab.freedesktop.org/drm/intel/issues/10030
>   [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
>   [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10183]: https://gitlab.freedesktop.org/drm/intel/issues/10183
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/intel/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9010]: https://gitlab.freedesktop.org/drm/intel/issues/9010
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9337]: https://gitlab.freedesktop.org/drm/intel/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/intel/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/intel/issues/9833
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14268 -> Patchwork_129878v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14268: e3e6421a490e14b441f0ace4fe3cf45f70aa5c11 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7711: 7711
>   Patchwork_129878v2: e3e6421a490e14b441f0ace4fe3cf45f70aa5c11 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129878v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
