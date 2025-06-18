Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA31ADF985
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 00:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DACBF10E6B8;
	Wed, 18 Jun 2025 22:41:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQTnYuT1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E525910E6B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 22:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750286466; x=1781822466;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bCjhT3UnVWtejKgHEINts/kxRmsaqOPVBaqVVfnjq60=;
 b=KQTnYuT1KO7MtsN/X/NqZpdkScCPpEuZGFkqURaqQnW2sRjYsl34k2U7
 pYVBY71zM0U7WQ+PFTivHxO6APl1rzQwZlOZ7ZEiouab55gNlteWpSH5j
 QIGZDINMpnpNxa9kiGC60CJoKX+JmnHpNsE1qH6aNMfPAKReLrGoGe4um
 neKEweUGqHosDm6V9c1EFGfs0NWhR0xiLpu81S5jl89dYZY0xoA58kQEJ
 JQ1nyDsgdQ6VcFGMyQ2KIme5adMMsV38fdl8qnzyhbr8gGelNz46zx6FM
 mCUsibfCAmkqtSW30kk70wtZsN8ul9UODfcbq/jGe85TEh4j0vJYTgWy3 w==;
X-CSE-ConnectionGUID: frrudhoHRtW/6mDbv7Sbuw==
X-CSE-MsgGUID: 13KrtZR9TJy+8sTjOy7g2w==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="75055496"
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="75055496"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:41:06 -0700
X-CSE-ConnectionGUID: CFJ51GAMTpycanrMaTOn8w==
X-CSE-MsgGUID: GSqScBkNQmGQkSf9IMO+3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,247,1744095600"; d="scan'208";a="150649405"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 15:41:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 15:41:04 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 15:41:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.57)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 15:41:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GUQvnh4TYakd8KlnbIaYEbIihq24dYeHrFLpaUXfnyNHxvcRLZtkuctWJX0aUVquV7CHM+3fNjepCpjScqY1E/fZhKT+VLncwIFN8RbxrUhZ2va5E6fBZ2yxvVy70vQ/tKNRqHZBga00dL94sxjtJcY+7CplaoEV7K1GSDl4qUy5iblNLCZJ09l/naqO8y13tYC/3eCUqxdHL4jycZ9HVUfqWx5sWdTYdpiDf/gSMOWjOe7R+TKXtZfkoRerCTGe395AvHXOv2gNSIur8OmuHi9LqGC2XM36hH4dJP9Boncs3Cy3XZz7CfO9lOyrFGh0D0dOBUILQdMM37JrAKve4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w6beGaGe8q3z4MW+nhqc0hF5Ac+lRPGGgwpSB6qn5v8=;
 b=shiw+SWOc9fwaVrIlyFjQZGpmxgd8lwMTaHdrTEJGSaJFOlbTfLGVoo5H7ypWpQyLianQH7JOgepzjOhrHSzB/PY4HzyAXuwVu/q8Y9xWxY3zYSULEkq7YE30yyoB9al0sil1ffmSU+IxWgrnU+mP93XbMgH4xsQOE4Kdho9iYeqfxaAL/qE2hFZUAgarxAgLLzoJwtqq+zhcRDlGF+jASLCK5LSUovT/J65JYdMYLaj9cU8Gr12SuHchbyzeBnJczoaW+kzUfRx0qPOzcDhZbNDs+TNYKuOd4dE1YezjHzKK5X7MIeUufCUrmEhQhhryhuCp7bdqvGbhvciobUO6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM3PPFD2F4A0090.namprd11.prod.outlook.com (2603:10b6:f:fc00::f50) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.18; Wed, 18 Jun
 2025 22:40:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8857.016; Wed, 18 Jun 2025
 22:40:34 +0000
Date: Wed, 18 Jun 2025 15:40:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for Add
 WildCat Lake support (rev3)
Message-ID: <20250618224027.GB4755@mdroper-desk1.amr.corp.intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
 <174981434927.76616.11047065380383736968@1538d3639d33>
 <20250618223455.GA4755@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250618223455.GA4755@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR02CA0042.namprd02.prod.outlook.com
 (2603:10b6:a03:54::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM3PPFD2F4A0090:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a68e9c4-873f-4594-4503-08ddaeb92392
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nDmQ6Gp/D45rwra+Qu0RdK/kwFd9wqSE65nVd0q+ucKWh5VHAz8AoVqlk8h2?=
 =?us-ascii?Q?IxXPnrJ9A6752A0pHn40TRlG7e7TjYJFtsiTKLAZX7mqWS0OFQUwOCSol7CG?=
 =?us-ascii?Q?NUQgPK/ixAySCS0aeaFBJCYoBbZP0dgm9JtGd/x1FP4gUMJnSRPBw/V3+fha?=
 =?us-ascii?Q?yVv55G2XTZMsjNufdBEzJPIRwZ2cVhRRlecUNtive+FauRKoqw84JiUy0wPo?=
 =?us-ascii?Q?Mumq0AYb7USt22Db8qbsubnNApbn3SGF8tSmfioLFNuc5l7f6gI3o4B2iPXx?=
 =?us-ascii?Q?k3n54HHpWemWn7O/4cRtHGKLCBZIUQH2H8OMKg8jiB0/bB6yerK9RmaPt0Gk?=
 =?us-ascii?Q?enMuE9FYkMjLKJ2mNwhDEj/ysldvLlr/PLd+GMHFvzb0rNnUthzCyBDcdCTg?=
 =?us-ascii?Q?97C/zt7vJtZC3/eLjLJGk7Tply2fEa5+ymEPumktoZJk76hfTwzuHlNK5d7d?=
 =?us-ascii?Q?xJw4WAS2NFzktUCk6hFJLHFJou6EtkujcphjR7JY5An5GOM0qtrhyzGV+mIe?=
 =?us-ascii?Q?fujQyKDzVTSn8UY3R87bA4mWYsfemK5IhcZCcbnMjggRbhCxrXgtve+y/CEh?=
 =?us-ascii?Q?T7uBomzhyzO7gPO/Gjx6+M1Q/VwrH5700HJx3vTwEAu6jkT6RV53k/2jNmun?=
 =?us-ascii?Q?s8TRW0UQzUn2IZjnuth3Rv7JqWhsGoSnonEldvPWasJwdulAMNOtsUWkdoca?=
 =?us-ascii?Q?Pq3iAyeOe0sNp6PKs/q0qQ+WAoFxihhvldr9Awp6ewUFemKy9YYXVvmb8xtV?=
 =?us-ascii?Q?O/QS7XS1Sxw/GS1e5Dztsc0PC6dDe+xS0OttZh6+qmKXpMQMnK5zUQnABw6d?=
 =?us-ascii?Q?GlG1Q6LFAfiqPZUWaau2WsjfZYyVvyxD5w4JVKhsnn2bJwQSfHZ3B9cNcO1V?=
 =?us-ascii?Q?uqa2BR9lsuYH9LUkRxuPxevg8eUCTh4HgsH+l0/DilpIW1ycDLZrP6ursUds?=
 =?us-ascii?Q?f3hgsqJB+EGnBEkyoBUerCuTOVOaWyS0n9FtxnHCjKYMWveq7JkcVwTMwADo?=
 =?us-ascii?Q?R30czH4eWhA58pEjtO5TPXecIXAYr/pOBvSiOITtQGXsYMPGD+x/nXb7oYR8?=
 =?us-ascii?Q?YzLp7I/9H4JuxNOf+n0u71HGlW4HPbRUmI8moJ7jUnPxMi/9/HlHfCakGpD5?=
 =?us-ascii?Q?EfCrrr5bSxvlapBA+VNrLyIcL50Y3hfMB1DUU8Zp5XllyRoeijcsja5Pkxj1?=
 =?us-ascii?Q?ZG/oeU3bbT9X3u+xLw7o4qbyZ5iv37vUWn4ZTCat+JKTkPYc2Z/Cky/EjydA?=
 =?us-ascii?Q?nubMbKiIx4cD8BBmKjfp4o8MlB/HmejvPDKoYPc8LOs0gWyK0CbvKf3vpNDa?=
 =?us-ascii?Q?+GL/9UXuR74PE8GA2HIC/CB5bI745HrjIbRddbfOlSVdiImwwkws5Hmd9mzE?=
 =?us-ascii?Q?j+wscBs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6P1bVUorCDLGtzl6GynGBYFgW2PwHOoqLgdtLryCkq4aRuTUPBSqBH9aC5nb?=
 =?us-ascii?Q?e9bMqwi1nF0AeaoK3V3ROm/UduSjIbDWRNaQjptcIBlL77kFW5aFe1HPjmfi?=
 =?us-ascii?Q?4sCOr1bYCCxpC7H5gbRpbW1jySBQeT0T8qS4SzjLkOM19A4iO8Co4guM8nTq?=
 =?us-ascii?Q?E8696618r9rRq658ZBBohSdqRj6Z5OMZMNaWXqnzYAP24absGVkfQMFh3yaP?=
 =?us-ascii?Q?slR6YChGhd03DdB9Gbp3JTMO7m287WU2OI5SvjvwiS00kVZ0WMeGbQCxWFw2?=
 =?us-ascii?Q?sPbUytmts0eTaXyG0BVTtfs917Ma7SE7uKQzMYxWJraRPljD9oEyoRai/IHB?=
 =?us-ascii?Q?h24M4pyIgqM5eE+PiF5o7BfhQIEyoKmJ0vSjs9AFf26ZFBjoCXNXEtTqaUuz?=
 =?us-ascii?Q?GMtXOrZAIX+WhWwFSTVi9Y+RhJotArJVhzI3kdj39BFuYgGOq41mn17n+esN?=
 =?us-ascii?Q?S67eyofOL+8X9cEZXfVTdTZzUPLQnexoYqNHq2nPislv4Snpqd6EtXqmZE1v?=
 =?us-ascii?Q?VSETk4NecTLOBoRK5LTypNihIkSJSTiey04sYvXIWz2j8CiO0yf5+2KcM3p3?=
 =?us-ascii?Q?FoPauPI9GAAnRbmwSape0oHBKktixVf577y9NzftCSA8Mm511lGIpJt/tZUP?=
 =?us-ascii?Q?HcUNPcqqnPxBssNqsfuwXXwFbKZmEVuG8DM/meXI70jxCWxXxOXV3+/3nMLI?=
 =?us-ascii?Q?UTiR0tPfL8RV7NpU6wL7ggDJkAmcJei8Y0ZbX7SEcgXLx64RNmGaRSP1zeP4?=
 =?us-ascii?Q?mUWvxWGoV9owfHPs0/DSp0H5HOqRYRwpuL4O23BmFzBgkHTWfAIJXAAiGS0D?=
 =?us-ascii?Q?zd/MznRpA4xFVzPH802lVIrafG0iQrV32ojsPVNNJFDY82xVUyVwmHPleN/U?=
 =?us-ascii?Q?kwlgJZfSyc6qcqXAGtyZaA/CQbJaQaS+bBJZQHlHX5OxgSS2IMa7ldn39vel?=
 =?us-ascii?Q?VQvBtQoqE3WZYW+tzmQVszhi1PZD91TkrbHDaV7P7fChpVlJ4KfkHfV5mNbs?=
 =?us-ascii?Q?RuIYX6cKT66b6elPbs6ggF8Aq5Jy8uVLJQDSBF0AyAMdZAf1G2ABfJ/6Kf+P?=
 =?us-ascii?Q?vapS1YL/Qis49Tgt6JU8qq4CfVwRotQFvwFg5LRTZR7l10AbEHaHPdWK74tm?=
 =?us-ascii?Q?MLnh0VtUt/XNfo4yu1X90Mu25eps37I2Y3L88taAPJRd8MDwnxQHnoAAXie2?=
 =?us-ascii?Q?BAaBlo3HQsoBr7at6/wX3esq0VhdQvsKSMunEv9lT4DmgWRyL/+/TPlG6E4M?=
 =?us-ascii?Q?RVPV6Rmt5OsLyThkJG0S28oM8rWz/PAgz2NqJn4E8eGVVryVS2CDtqmvzaBX?=
 =?us-ascii?Q?rnjhxrqeq6AQLvvtdjtbszzg3MtSi8fSR2nuBtWznwdTYDSHyTb5SSTjHJHE?=
 =?us-ascii?Q?0bwPbFfN5REsltD6icQLpPzo+8EH16IhOLPvILAGQwePd3Epulu144TZrqOT?=
 =?us-ascii?Q?WDMFVsstOMh14Q7Z1237ufUwFs0GinW5rJ/Jk5+7kQ1EDt65OHD2pWB+8J1X?=
 =?us-ascii?Q?lTzDYmGQCLXyjnT0qn2H/8YeTuuIkK1EHuYacD1cmqek9FzkitdLS8zjxR/7?=
 =?us-ascii?Q?l+0I8Wwp70shVpptbSDvypBst3lqVAf2jdEhYQQKHjkUEDZtunrwG/1hCUbt?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a68e9c4-873f-4594-4503-08ddaeb92392
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 22:40:34.8461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ws3kYYIc5EaofvafOvWyXmZz3l729/TSPtuWRd6ATLiZS5SipRuX/AZkYKWOp/IIzz6FKI6/XEc3sAdw9q/HnJf/F6XGO9CEZAk5fuivWoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPFD2F4A0090
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

On Wed, Jun 18, 2025 at 03:34:59PM -0700, Matt Roper wrote:
> On Fri, Jun 13, 2025 at 11:32:29AM -0000, Patchwork wrote:
> > == Series Details ==
> > 
> > Series: Add WildCat Lake support (rev3)
> > URL   : https://patchwork.freedesktop.org/series/150101/
> > State : failure
> > 
> > == Summary ==
> > 
> > CI Bug Log - changes from CI_DRM_16700 -> Patchwork_150101v3
> > ====================================================
> > 
> > Summary
> > -------
> > 
> >   **FAILURE**
> > 
> >   Serious unknown changes coming with Patchwork_150101v3 absolutely need to be
> >   verified manually.
> >   
> >   If you think the reported changes have nothing to do with the changes
> >   introduced in Patchwork_150101v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
> >   to document this new failure mode, which will reduce false positives in CI.
> > 
> >   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/index.html
> > 
> > Participating hosts (43 -> 43)
> > ------------------------------
> > 
> >   Additional (1): bat-jsl-1 
> >   Missing    (1): fi-snb-2520m 
> > 
> > Possible new issues
> > -------------------
> > 
> >   Here are the unknown changes that may have been introduced in Patchwork_150101v3:
> > 
> > ### IGT changes ###
> > 
> > #### Possible regressions ####
> > 
> >   * igt@prime_self_import@basic-with_one_bo:
> >     - bat-jsl-1:          NOTRUN -> [ABORT][1]
> >    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@prime_self_import@basic-with_one_bo.html
> 
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14463
> 
> 
> Display patches (#1, 4, 5, 7, and 8) applied to drm-intel-next.  Thanks

...and patch 9 too...


Matt


> for the patches and reviews.
> 
> 
> Matt
> 
> > 
> >   
> > Known issues
> > ------------
> > 
> >   Here are the changes found in Patchwork_150101v3 that come from known issues:
> > 
> > ### IGT changes ###
> > 
> > #### Issues hit ####
> > 
> >   * igt@gem_huc_copy@huc-copy:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][2] ([i915#2190])
> >    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@gem_huc_copy@huc-copy.html
> > 
> >   * igt@intel_hwmon@hwmon-read:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][3] ([i915#7707]) +1 other test skip
> >    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@intel_hwmon@hwmon-read.html
> > 
> >   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][4] ([i915#4103]) +1 other test skip
> >    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> > 
> >   * igt@kms_dsc@dsc-basic:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][5] ([i915#3555] / [i915#9886])
> >    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_dsc@dsc-basic.html
> > 
> >   * igt@kms_force_connector_basic@force-load-detect:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][6]
> >    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_force_connector_basic@force-load-detect.html
> > 
> >   * igt@kms_setmode@basic-clone-single-crtc:
> >     - bat-jsl-1:          NOTRUN -> [SKIP][7] ([i915#3555])
> >    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/bat-jsl-1/igt@kms_setmode@basic-clone-single-crtc.html
> > 
> >   
> >   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
> >   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
> >   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
> >   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
> >   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
> > 
> > 
> > Build changes
> > -------------
> > 
> >   * Linux: CI_DRM_16700 -> Patchwork_150101v3
> > 
> >   CI-20190529: 20190529
> >   CI_DRM_16700: cce8a9af1c6cf1776511aa69e5f4b5bef7bf5938 @ git://anongit.freedesktop.org/gfx-ci/linux
> >   IGT_8410: 5826cdbf1cb8f5ec8a42bae33deb6b2b63e59e6e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> >   Patchwork_150101v3: cce8a9af1c6cf1776511aa69e5f4b5bef7bf5938 @ git://anongit.freedesktop.org/gfx-ci/linux
> > 
> > == Logs ==
> > 
> > For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150101v3/index.html
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
