Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFC086B878
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 20:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E045B10E14F;
	Wed, 28 Feb 2024 19:44:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g0sO37yw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C1C10E14F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 19:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709149471; x=1740685471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gVe2WhJjtNcjPnYUd7/6fd2OCfoVF2lkTAzHLqzS6zw=;
 b=g0sO37ywB2+RZq9T4qR5G5XdpvdoZEDjwiQmDbFlHXRyHjoPpM6R0mFh
 XSovTSX0cIeBXMhn+ENOI24biMYj10kNW2K1M73hBG1goPzj8dTl8kHYf
 pARO/fhU0sZGnP7hakPAg/jTd6hGHK8/ocoIhSwmj0Fwi7Se4GVMG3Hlh
 1m6eEK4AE2C7L/w41JpRUMy8Di+XXo56EeGXl3Ndj5xiNCNlFxOJNcfGN
 sM8sobg0kXR2H4IruA/OReyDwxSlVUZ7GLD+1DUIk2hw3KWPAVrR1G6hM
 PAwCjXvKwnl2A8w0FH2SENPCWtlYrD3bh+VxVsH/R7SMflevP0tDq2R0N A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14285870"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; d="scan'208";a="14285870"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 11:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="8107039"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 11:44:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 11:44:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 11:44:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 11:44:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EsbTFk7owHOGAa23jIHfaYrwbLIoJb5b+hPQYlKO5Y2umol6kB36dAbqjs44i4udc3eAv5L+I2VHoDZk2xRQRiQHbj9teX2SQekG84Er2SyXRoaog7GzFJd+6PV52poN05LHNZV3vZaYRoZLWZegQJ9JJkXL+3W1SZCqSQ/lIVam1fqo8KH/pgiMZ+wbXtGD2vRdrZ/VMsr5woM9RM6ZAC2vjoNjae/cwQ5g8FSVYR8WM5vZuXd1/wmv+JIniY6c7kwljyvX5Bd1vcedTsZtKOc3EqesN2owk5r/4ZKmZlN6lTd/CbhlMHAFIt+/0Bgy12LRnO+6uFQvjKSI5/dkMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UYkpUo8vNQyarIZildE/Uoq94/wuXlcAvx22Ten6nV8=;
 b=lN5aRsLItcWEi0XCcdbq8lIunv+f1AA9XZlhPzgFfjq71PRq89jUdDNwdhabO6oIGezEDDZHQRVIwRC8BjKm4inFWeWNe1LqBTh34KBvAS1OzpTX5TbAzEkPSD98PS1Xhb7CdLsat8kL3hROQ2uSZgTDxRiVSZ2jLyAtfAuKW/tZq2uaNajdQD6g6Ob1ZH3CJRpqMIuIpcbjPoYcQOI9kbGLLGMW3fTNESYO1uvYVaOz5laOLQnkFztGmHIdsAlmuXfNicQ6JlZYybiw06Th/wMBlF3tvgshfnw5BwM0JeYeP+HFBk/Wx05p+m4HWMTl6vS/yCWlewFYYuVfFWdZDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB6029.namprd11.prod.outlook.com (2603:10b6:510:1d0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Wed, 28 Feb
 2024 19:43:57 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%5]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 19:43:57 +0000
Date: Wed, 28 Feb 2024 11:43:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915=2Fcdclk=3A_Renam?= =?utf-8?Q?e?=
 intel_cdclk_needs_modeset to intel_cdclk_clock_changed (rev2)
Message-ID: <20240228194355.GM5347@mdroper-desk1.amr.corp.intel.com>
References: <20240214202719.298407-2-gustavo.sousa@intel.com>
 <170837460099.107368.3460860715841720742@8e613ede5ea5>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <170837460099.107368.3460860715841720742@8e613ede5ea5>
X-ClientProxiedBy: SJ0PR03CA0266.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB6029:EE_
X-MS-Office365-Filtering-Correlation-Id: f8af10be-a539-471d-9fda-08dc38959a92
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Re3AFBqN/+Qc4JCqbxB2EokjUkGd7LAN2UTA9mrxr0Ojz+cNWgJtR0n8jSGahYePA6TNPg+ocuzTdM/8ukLw02ojL/KjpOYa2oqmjQIpS3ZoNQp8DOyI9Ey0UGRPdufRs9FkClACbypvnqJxhVMUbzTxdZdrl2yyYLa6KLagpLaeM+/fUnrUmVnnO6Tg0kOH5SO15Qdup649AK0N0ZnpweVCVR8aBi4yv0Goc5I8R2YuNOf52XkXn1zd5EplE8weWzx4BPkSrOVi5DEOtE1JQ9suDgFMBrFXPzQI13PZ2tKx99Sxd/6hYHeYyX0+FKPGg6t8Vngc4+YKQ39d50bkULMysQTj6GYnRwwGsNOvSCj3BR5tTnZJSk3dgNZ6gNl9CkjVlehl6rJM/DSzi8vWYrwIxUmQYU9RfEbeObSdyxF/fkMTvObJz4zeFoJSKGdXRSjQRc7dr/NmelpTcsdhaLQoB9DcgHQK5uSBk3vf0XvH2Ok46q2JDBkfiUIhcGOg4YPg70538np9YPJKAfYsxWhlRZuGS5EkhVO4bsTff2i2BE3HsPTP2nNiQX4XUHYhZGplbL2XYsBBThBtTddoj8tA2gr8MGaI+bvTHG5TTKI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FxKQKLPoZPTxz+VCSvtnxNIRhfS/+1El3czEQtvJC/wxcUGwWZI8oAsrDdCw?=
 =?us-ascii?Q?sq/qP+QFgBEWXalx7hyh93l/S7c/Q1Vfh8cfCFqK6JtpGFeRCftbhON2hgAs?=
 =?us-ascii?Q?pP45+iSESbEt0R1+3D3H/YtPlLD6824r53XY7Ff8zeYX+uDWRSrihLUkN7xl?=
 =?us-ascii?Q?iXMCm6Tkf86taysNFG5P0L2tJcTQ58JDPdO1Z/EBww5VNoL+3vNQzJGSjdoP?=
 =?us-ascii?Q?dB7KSp+ZomFqK8aW7Rp9pv/uPKE8QYP0HTAM5LFP7ygNE9B4DWSEhsnxx7H/?=
 =?us-ascii?Q?HNJP4TLNQtK74M7WioGcRQMT0r0zceL4zQpgg8KYOyFFOs76KpWrzfRSCGxK?=
 =?us-ascii?Q?ZXTDQy/W5IE95MYtZRvPxdMMOP41MHI5JX2fCUq7rSRlKB6dNOUcrou9Pndd?=
 =?us-ascii?Q?T/Lf5Gq//Q9/nQlwNljHX6Bkx9JuRC8YI716Jujxr3dvT/3K6x9BJps3lQAV?=
 =?us-ascii?Q?v1zWcJjN9Atf3tq+oWbTZp2ytSkVjQNKoS/jpvyJgltE3LYLucew5dNwK3J9?=
 =?us-ascii?Q?OxbddYtjo2vx/gu8J/Itl/JyZYO1eykRAj3TkLLHlS1vKORaUAs0ibcsxYUP?=
 =?us-ascii?Q?ZgI7W+LhRDFn/03oELGnNcXMZD0qtqX+1aHxTimmqijXj14T/wI1LYpQaOUE?=
 =?us-ascii?Q?vXjHZeVrUD19tyjTsIsunYUxklKBHIsgfSN3oJa0dgoUd9nOQK4P24K8RNQZ?=
 =?us-ascii?Q?Teu4ieUs81jduSym0VVFOyo5/5X1RCBeesVDLlBxMAk0raIHD2Rf3vcJN8xx?=
 =?us-ascii?Q?dPfknXVoMSZRMzoh9ZsxKaxeH5tbnGFwLHK7q4pGwAPLT3WLl8J6DODx1oYL?=
 =?us-ascii?Q?OhJfNfI/6wUJvaFbWoipa7EpassoadfEZ8Vp7v/wS+PjKlj8ByDrG0CnWC3E?=
 =?us-ascii?Q?1u3+mAsLZK+jB3pcsMzwi/6k+g1wZv0RkkSmpujrJpOKyk+r3s6C7kvDWdVM?=
 =?us-ascii?Q?fsXwyV+AkjaVrXUXAcPGGs1aDnHUcwYlEIvjYa3v0VEB0R0op2zUuy5kpNmi?=
 =?us-ascii?Q?WhBMtH+byVeN1cWI3JWFhDkyflFrLKVP6bHOCW3AShT45Ia8aRTeYd1BQYt5?=
 =?us-ascii?Q?BY4F9YjZMSQkshlVnrp4i7iRQFq5Mhiriyp/4hJlQf68VbdV7MGMVFmxjaBg?=
 =?us-ascii?Q?orDHu16Zl6MkEXS8XOrrZ3hU3+9rpj1r7U/zgEdJxKQgzGpqWGC7j8uB0DTK?=
 =?us-ascii?Q?QmPzFdFh5Ns+F2tPRupotsAtqqr5NdH3qc+csJtBokfoxtxeUm5fb+BZ+1Mb?=
 =?us-ascii?Q?i4miGi/5qFJ3RKj4/zF3mCHzjAGk2p5QlEpkjY50TIJRC4tKoc96lp6lTEAx?=
 =?us-ascii?Q?aZcsF9l67WyZaOU0/r4Dup86WHq5COKvPbD48WbOOML5xOiISnCnlP28S3D0?=
 =?us-ascii?Q?w78n25d65BbI03mqUhJpvZaEoOHLDB8azHOpqKtSQfLv/ccRqyuOaBQxM321?=
 =?us-ascii?Q?xZGPxaufZ2sc+280PdTHpA0JVlnnaCM+qPH6pvtQCbstgTg1CVpaw7m8k0Jx?=
 =?us-ascii?Q?TPgEh3Hnl78+BCPI362TYfaS0vT1/y4AmaDlMDwtwXwsHZavH4XzQz84RHN0?=
 =?us-ascii?Q?mnolJwwCgoTJYtGWHg3mmEvqWViohaWCHIPbrxZrtPmUfeVT8EfZ9CNYgR3V?=
 =?us-ascii?Q?Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8af10be-a539-471d-9fda-08dc38959a92
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 19:43:57.6714 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LZGu+Hdvb2Dh2sYnphNv/1ZycK9ikxj3VECOAo45RRPxEFIZ28AWhhtkXhqkmslJDsTG5s9Q99IG7x6Ybp/lvij6Qef2rii+jZRGbN+nM10=
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

On Mon, Feb 19, 2024 at 08:30:00PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/cdclk: Rename intel_cdclk_needs_modeset to intel_cdclk_clock_changed (rev2)
> URL   : https://patchwork.freedesktop.org/series/129908/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14296_full -> Patchwork_129908v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_129908v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_129908v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 7)
> ------------------------------
> 
>   Missing    (1): shard-glk-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_129908v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@sysfs_heartbeat_interval@mixed@vcs0:
>     - shard-mtlp:         [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-mtlp-5/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-4/igt@sysfs_heartbeat_interval@mixed@vcs0.html

Unrelated incomplete on a GT test.  Unrelated to the display function
rename here.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129908v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-rkl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [FAIL][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8293])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-6/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-6/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-7/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-7/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-7/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-6/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-6/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-6/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-7/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-7/boot.html
> 
>   
> #### Possible fixes ####
> 
>   * boot:
>     - shard-glk:          ([PASS][51], [FAIL][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74]) ([i915#8293]) -> ([PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk1/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk1/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/boot.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk3/boot.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk3/boot.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk3/boot.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk3/boot.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk3/boot.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk4/boot.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk4/boot.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk4/boot.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk4/boot.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk8/boot.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk8/boot.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk8/boot.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk8/boot.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk9/boot.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk9/boot.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk9/boot.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk9/boot.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/boot.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/boot.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/boot.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/boot.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/boot.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/boot.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/boot.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/boot.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk3/boot.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk3/boot.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk3/boot.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk3/boot.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk4/boot.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk4/boot.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk4/boot.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk4/boot.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk8/boot.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk8/boot.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk8/boot.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk8/boot.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk8/boot.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk9/boot.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk9/boot.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk9/boot.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#7701])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-hang@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#8414]) +5 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@drm_fdinfo@busy-hang@rcs0.html
> 
>   * igt@drm_fdinfo@busy@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#8414]) +10 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@drm_fdinfo@busy@rcs0.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3281]) +3 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#3936])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][105] ([i915#7297])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#7697])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [PASS][107] -> [FAIL][108] ([i915#6268])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#5882]) +9 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_ctx_persistence@saturated-hostile-nopreempt@ccs0.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          NOTRUN -> [ABORT][110] ([i915#10030] / [i915#7975] / [i915#8213])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#4771])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4812])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4771])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#6334]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][115] ([i915#2842])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>     - shard-rkl:          NOTRUN -> [FAIL][116] ([i915#2842])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [PASS][117] -> [FAIL][118] ([i915#2842])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo:
>     - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#4473])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_exec_fair@basic-none-solo.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#4812]) +1 other test skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3539] / [i915#4852]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#3539])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3281]) +9 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3281]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_exec_reloc@basic-cpu-wc-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4537] / [i915#4812]) +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts-chain.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-dg2:          [PASS][126] -> [INCOMPLETE][127] ([i915#9275])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          NOTRUN -> [ABORT][128] ([i915#7975] / [i915#8213])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#4860]) +1 other test skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#4613])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#4613]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk2/igt@gem_lmem_swapping@random-engines.html
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#4613]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#4613])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_media_vme:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#284])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#4083]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#4077]) +10 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#4077]) +5 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4083]) +3 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#3282])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pread@bench:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3282]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@gem_pread@bench.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#3282]) +4 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4270]) +3 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-1:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#4270])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@gem_pxp@reject-modify-context-protection-off-1.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4270]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#8428]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#4885])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_sync@basic-each:
>     - shard-snb:          [PASS][147] -> [INCOMPLETE][148] ([i915#2295])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb5/igt@gem_sync@basic-each.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb1/igt@gem_sync@basic-each.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][149] ([i915#4079])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#3297]) +3 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#3297] / [i915#4880])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gen7_exec_parse@basic-allowed:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([fdo#109289]) +3 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@gen7_exec_parse@basic-allowed.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#2856]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#2527] / [i915#2856])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#2527])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#2856]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [PASS][157] -> [ABORT][158] ([i915#9849])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#8399])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][160] -> [FAIL][161] ([i915#3591])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-glk:          NOTRUN -> [SKIP][162] ([fdo#109271]) +98 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][163] ([i915#6621]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#8925])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@i915_pm_rps@thresholds-park@gt0.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([fdo#109302])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-tglu:         NOTRUN -> [DMESG-WARN][166] ([i915#9311])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [PASS][167] -> [FAIL][168] ([i915#10031])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#4212])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#8709]) +7 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#6229])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#3555])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([fdo#111614])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([fdo#111615] / [i915#5286])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#5286])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([fdo#111614]) +4 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([fdo#111615]) +3 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#5190]) +3 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [PASS][179] -> [FAIL][180] ([i915#3743]) +1 other test fail
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([fdo#111615]) +1 other test skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([fdo#110723])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#6187])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-mtlp:         NOTRUN -> [SKIP][185] ([i915#2705])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#5354] / [i915#6095]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_ccs@pipe-a-crc-primary-rotation-180-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#5354] / [i915#6095]) +10 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_ccs@pipe-b-bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#5354] / [i915#6095]) +19 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5354]) +7 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_ccs@pipe-d-crc-primary-rotation-180-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#5354]) +66 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#3742])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([fdo#111827])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([fdo#111827])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#7828]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#7828]) +1 other test skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#7828]) +6 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][197] ([i915#7828]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#7118] / [i915#9424])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#3299])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#3299])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#6944])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][203] ([fdo#109279] / [i915#3359])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#3359])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#3555] / [i915#8814])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3359]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#3555]) +3 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8814]) +2 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-128x42.html
> 
>   * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([fdo#109274] / [i915#5354]) +3 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([fdo#109274])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([fdo#111825]) +5 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#9809]) +2 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#4213])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-snb:          [PASS][214] -> [ABORT][215] ([i915#8852])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb5/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-snb:          [PASS][216] -> [SKIP][217] ([fdo#109271]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][218] ([fdo#111767])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([fdo#109274] / [fdo#111767] / [i915#5354])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#4103])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([fdo#110189] / [i915#9227])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([fdo#110189] / [i915#9723])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][223] ([fdo#110189] / [i915#9723])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#3555] / [i915#3840]) +1 other test skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3840])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3555] / [i915#3840])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#3555] / [i915#3840])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#4854])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([fdo#109274]) +2 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][230] ([i915#8381])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([fdo#109274] / [i915#3637])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#2672] / [i915#3555])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#2672]) +3 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][234] ([i915#2672])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#2587] / [i915#2672])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#8708]) +6 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([fdo#111767] / [i915#5354])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#8708]) +17 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#1825]) +12 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
>     - shard-tglu:         NOTRUN -> [SKIP][240] ([fdo#109280]) +8 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#5439])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][242] ([i915#10055])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3458]) +10 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3023]) +3 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][245] ([fdo#110189]) +4 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([fdo#111767] / [fdo#111825] / [i915#1825])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#10055])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([fdo#111825] / [i915#1825]) +8 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#3555] / [i915#8228])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#6301])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3555]) +1 other test skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2:          NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8806])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#9423]) +7 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][255] ([i915#5176]) +3 other tests skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-modifiers@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#9423]) +5 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-12/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#5176] / [i915#9423]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][260] ([i915#9423]) +19 other tests skip
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-12/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#5235]) +5 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][263] ([i915#5235]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][264] ([i915#3555] / [i915#5235])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#5235]) +15 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-17/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][266] -> [SKIP][267] ([i915#4281])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][268] -> [SKIP][269] ([i915#9519])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][270] ([i915#9519])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][271] -> [SKIP][272] ([i915#9519]) +2 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-pc8-residency-stress:
>     - shard-mtlp:         NOTRUN -> [SKIP][273] ([fdo#109293])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#6524] / [i915#6805])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#9683]) +2 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          NOTRUN -> [SKIP][276] ([fdo#111068] / [i915#9683])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_rotation_crc@bad-pixel-format:
>     - shard-dg2:          NOTRUN -> [SKIP][277] ([i915#4235])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_rotation_crc@bad-pixel-format.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-dg2:          NOTRUN -> [SKIP][278] ([i915#4235] / [i915#5190])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#3555]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tv_load_detect@load-detect:
>     - shard-mtlp:         NOTRUN -> [SKIP][280] ([fdo#109309])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@kms_tv_load_detect@load-detect.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][281] -> [FAIL][282] ([i915#9196])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>     - shard-tglu:         [PASS][283] -> [FAIL][284] ([i915#9196]) +1 other test fail
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#2437])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          NOTRUN -> [FAIL][286] ([i915#7484])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([fdo#109289])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][288] -> [FAIL][289] ([i915#4349]) +3 other tests fail
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#8850])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@event-wait@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][291] ([fdo#112283])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@perf_pmu@event-wait@rcs0.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([fdo#109295] / [fdo#111656])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#3708])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-2/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([fdo#109295] / [i915#3708])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@runner@aborted:
>     - shard-snb:          NOTRUN -> [FAIL][295] ([i915#8852])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb4/igt@runner@aborted.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#9917]) +1 other test skip
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][297] ([i915#9779])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk1/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-tglu:         NOTRUN -> [SKIP][298] ([fdo#109307])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_job_submission@array-job-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2575]) +8 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@v3d/v3d_job_submission@array-job-submission.html
> 
>   * igt@v3d/v3d_perfmon@create-two-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][300] ([fdo#109315]) +2 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@v3d/v3d_perfmon@create-two-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-pad:
>     - shard-mtlp:         NOTRUN -> [SKIP][301] ([i915#2575]) +4 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@v3d/v3d_submit_cl@bad-multisync-pad.html
> 
>   * igt@v3d/v3d_submit_csd@multi-and-single-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][302] ([fdo#109315] / [i915#2575]) +2 other tests skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@v3d/v3d_submit_csd@multi-and-single-sync.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
>     - shard-tglu:         NOTRUN -> [SKIP][303] ([i915#2575]) +1 other test skip
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][304] ([i915#7711]) +3 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-8/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo-1ns:
>     - shard-dg2:          NOTRUN -> [SKIP][305] ([i915#7711]) +4 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-10/igt@vc4/vc4_wait_bo@used-bo-1ns.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#7711]) +2 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][307] ([i915#7742]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [FAIL][309] ([i915#2842]) -> [PASS][310] +3 other tests pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][311] ([i915#2842]) -> [PASS][312] +1 other test pass
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][313] ([i915#2842]) -> [PASS][314] +2 other tests pass
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-4/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-snb:          [SKIP][315] ([fdo#109271]) -> [PASS][316] +5 other tests pass
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          [FAIL][317] ([i915#2346]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
>     - shard-dg2:          [FAIL][319] ([i915#6880]) -> [PASS][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [SKIP][321] ([i915#9519]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-10/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][323] ([i915#9519]) -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [FAIL][325] ([i915#9196]) -> [PASS][326]
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][327] ([i915#9196]) -> [PASS][328]
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [INCOMPLETE][329] ([i915#10137] / [i915#9618]) -> [ABORT][330] ([i915#9618])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg1-19/igt@device_reset@unbind-reset-rebind.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [INCOMPLETE][331] ([i915#10137] / [i915#9849]) -> [ABORT][332] ([i915#9820])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][333] ([i915#10131] / [i915#9820]) -> [ABORT][334] ([i915#10131] / [i915#9697])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>     - shard-tglu:         [FAIL][335] ([i915#3591]) -> [WARN][336] ([i915#2681])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][337] ([fdo#110189] / [i915#3955]) -> [SKIP][338] ([i915#3955])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render:
>     - shard-snb:          [SKIP][339] ([fdo#109271]) -> [SKIP][340] ([fdo#109271] / [fdo#111767])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][341] ([i915#3361]) -> [SKIP][342] ([i915#4281])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@perf@blocking:
>     - shard-snb:          [SKIP][343] ([fdo#109271]) -> [INCOMPLETE][344] ([i915#2295])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-snb5/igt@perf@blocking.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-snb1/igt@perf@blocking.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          [INCOMPLETE][345] ([i915#5493]) -> [CRASH][346] ([i915#9351])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14296/shard-dg2-10/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
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
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
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
>   [i915#10031]: https://gitlab.freedesktop.org/drm/intel/issues/10031
>   [i915#10055]: https://gitlab.freedesktop.org/drm/intel/issues/10055
>   [i915#10131]: https://gitlab.freedesktop.org/drm/intel/issues/10131
>   [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
>   [i915#5882]: https://gitlab.freedesktop.org/drm/intel/issues/5882
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/intel/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/intel/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8850]: https://gitlab.freedesktop.org/drm/intel/issues/8850
>   [i915#8852]: https://gitlab.freedesktop.org/drm/intel/issues/8852
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
>   [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/intel/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14296 -> Patchwork_129908v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14296: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7716: 7716
>   Patchwork_129908v2: f12bce6493b6443870b55f36b1462d65e450d29d @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129908v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
