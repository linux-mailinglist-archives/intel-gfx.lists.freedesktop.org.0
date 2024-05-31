Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C81F8D602F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 13:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5C310E0C5;
	Fri, 31 May 2024 11:04:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RdL2vSVe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB33F10E0C5;
 Fri, 31 May 2024 11:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717153445; x=1748689445;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a9Y/ioNSmh3oP38iutKcPi1mqCescLLqBLJhj/2tfwg=;
 b=RdL2vSVe0TFzBK7S0Hz/GqSqppwDbexqV2bdQkF7BL+HP5euZGIvdSnI
 Xh2oOnIkuqwmsTX29lSPCjObai2kt8KmIaHAEOXKcKAuFCExVs2h7Dzk7
 UxBqVdGZazj9oRNy3QujDjdANpshhyZK2JyWEeXJ0Od+KloNJ8ccYNLLg
 Khvb7/JuaIxgqSORO9rSOgbG/49ySnefcnPbVRE2R0nsnzqA/XEgqNGI7
 4tTSoJFemNZz8Z1mj/n8GiPN7r7Aa5BLs5SzuEFhaseN4HuMrabN6Otmf
 TOow8CTnVdkF+fOERBvrEXWj5RBTuaWrBbTc7/nNARuRJxhO+VqTx5WIm Q==;
X-CSE-ConnectionGUID: byHu6I6mRWSzjJhnu3r0Xg==
X-CSE-MsgGUID: QTHzRkxRSayQPZ56b2Q0lg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="17537638"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="17537638"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 04:04:04 -0700
X-CSE-ConnectionGUID: 0CsXSvSMQJa2TTvy18u8Qw==
X-CSE-MsgGUID: KmUA37c5SCanaLVmofcayQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36215727"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 04:04:05 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 04:04:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 04:04:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 04:04:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PIHnZPJ4A+Gt4D73n/Hp7J+zKk9F+3lKY3sSv6XMVwAs+YkPq9g3PlCJj8OVPv8GVDTUhA8dquWfgDOvNPrRuzcQSq9Sz4MgMoHqrvxx61yyFw+tmjsrwEFibA1qNPDS3GNzivVa7qA66heljmeqfDwy3gb5b7sqGjq34whYAvaBi/JoUA2l3i0qRpBwXrMGOmXbij5+fPbd+yM7ctdyNPcpLF8KZKhA2f9zhPXhNtgJN33y41h4620rEJkt9vB+0a9K0obydhwDSlK7/OGCQB0Saepipegwh1kkQVr8L4/PTGb4EBDYb5XR5JhYt0NkxnzDSFw4cls5j/o+5SlguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yX2KQM4jQXnFdVgpG6yQIiHPSfHzx2nqaqKbMMQpWdA=;
 b=nNDnVJtUo5y6U1Uo9XY+vicPJti6ghPnUIoLuR1Z3a8Pv19CUQDmolgRYS68OOLCVnMePYNvwvP0J9Pi+AE8u+eGU7xMX3HeLZ3UEXYdrpE0QFCQWItTA/9rtENX3NiAxn1G89yrfEkmw2EOUcpXM6Q44gzJxZ5y4i9aNfjUPim4ilFfeCctwgaNa2/qZWMSLJfUSK3aosaS8LC93eFlLQW/xTf6pEyFYoAZK1GATKJs4T+PHhnXgJRpaTjzgXZ4EeKIiGkoby5/AXSAHX2sGyZ0ITDXM12IbnaLf7CdaS6eISszdUtNxc8tKmlG1q2w3YSIWkl6AaJBwBazyRVn7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB8283.namprd11.prod.outlook.com (2603:10b6:806:26c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Fri, 31 May
 2024 11:04:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 11:04:00 +0000
Date: Fri, 31 May 2024 07:03:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 01/10] drm/i915/display: include gem/i915_gem_stolen.h
 where needed
Message-ID: <Zlmum6_8IPuz37Ty@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR01CA0032.prod.exchangelabs.com (2603:10b6:a02:80::45)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB8283:EE_
X-MS-Office365-Filtering-Correlation-Id: 16d7de23-3698-4929-bea5-08dc8161603d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Npzh6j8W6MSKuUEKnsayrq5z4g8yjEiOSCqMGA8z3itC/R+aemtcnxwTO2YE?=
 =?us-ascii?Q?VX7LcvXY9DyW+TCLA+s5mw3sJ+qN8zPJIm1RlK6DXI5wD6PAFtDRGXv1S01f?=
 =?us-ascii?Q?+RbzaCm2/W18Ap/3/BOHFO0WQLzxGlWLwDMmY7IAH20jP9X5f8MjOO5Tc47Z?=
 =?us-ascii?Q?g8lJ087HjagMhiyvCPgoRWiRJsv2QIx2FMlny/gqH9sQ07X/SwHLU7ApvGlR?=
 =?us-ascii?Q?X2QYJO7LM8aGyJ8bNTdh1AGPVC5Z/M0uM+CID22jCKUrydizJ926Qbz4j05+?=
 =?us-ascii?Q?a8ChvvxN0OGUirYD5pwStdSP1GGN/RwbRG3hXWtw+QQTgTGogA+8Khf/oK88?=
 =?us-ascii?Q?Y/j8shtpbpraa6QNHsOT4p3qIhOLX7NzWRXFGaNppsd8E9DdcUXM9PiDqZ9o?=
 =?us-ascii?Q?e/PFOdGM/El+qfNxmAqYZTH/qOeVrRCvTtfXEJXtdxNLTc5mjTogkH09HQZo?=
 =?us-ascii?Q?TlUquczI1ZNU/jfZVVdbClCaCQDfMl4+QvfPXkDmhZCBQjtVyvdCkJOOMiXM?=
 =?us-ascii?Q?zyKcUIheFnsKxQ4L3GIbJ/0bcyYSk/5qP37hUl4za1a25FlTs3f6YyCwQZuT?=
 =?us-ascii?Q?EJxTzvXDEZrYUxov9QTOlc0mbqVouTrE+GBhyQvxSGT1QcsK+mRI88/s/Ado?=
 =?us-ascii?Q?B4oI8SmqhyVZb+ltUMOXks1kPEnOCVhaYbTEK4MZiiIs8fM+LS/jYZWwIWUA?=
 =?us-ascii?Q?ZmyKwYBbLo+WocK4ZG5m1Wm19KrDfkKNw41Ntf3BnEeWzZ0g90jTdUttq9xH?=
 =?us-ascii?Q?XYw+1ITYHwE++VRWc60rPQd7PobGNLOecELt9H+klILnqQSY+DU3N7dKjd1u?=
 =?us-ascii?Q?TGwuBGu8eJanWLDg8P215qdcbUbMjrGWuUtz54YkbRHKgT8670Oq6Es8ZIe4?=
 =?us-ascii?Q?s49LQaELVnltfYeH2d5RGKp86+/3hOzEUgubNeOsgBcnVdGVto31del7eB8l?=
 =?us-ascii?Q?hNHYQBs3hLlyb406fyEpSvCpKKhJEku5CKwC9qthmxOsTkzLB7r2XiVUn3rh?=
 =?us-ascii?Q?pVPW2phHTO0p06U3wxkZk0ogV37gD+GbmpkUm0/c+jnSeuB+UYe5SET9RdIX?=
 =?us-ascii?Q?dvFpSvOeAun2dkm5lmulgs0EpgH+sV5uxHxbHBCsbzy8nQhy9vdO2/2RNoEj?=
 =?us-ascii?Q?y/1OPggx4SzzrQ4SYz2uSacMTg5l4HE6Q315wgCQ/Ox3ij+vQ0RoP75jFILj?=
 =?us-ascii?Q?pyzEnwHJ//k72Q7CGpAlKarmWjUZHakFyUpPdT2bTsm/aISB5JAaLDhKpsyC?=
 =?us-ascii?Q?0DxmH3zOjXaia7AzSsTk0w7eSsek1zsZtaTomc+pMw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P31FS8WFdbVmO1MTbxOeVMVAsR68mOk2ZZ9E2xutOdRM6FFRhPDV6xjPaMIb?=
 =?us-ascii?Q?UJr2cNhm4aJc8Qg+sXLuOEoq0C8pVnqMLzEpVIsX8Qgl3qgb3TmqvVywxw13?=
 =?us-ascii?Q?hLzyICFDTcu06gk9b/FbEUpK1Fxu+Fz3hkX8leLnvDXgCd1DtOvNwDwywuhR?=
 =?us-ascii?Q?dDn5a1NDKVRIMScNISxmkt5sAQ9PeEbqUqKGfRzv8DW18acol4TNbhg4Elzj?=
 =?us-ascii?Q?X3bByFZr9VAKvDHmmU5oG9tAvJr6TAEx0wCaQ+uA2a6/+9ILyfitdFwAs6n2?=
 =?us-ascii?Q?t3yr02gCpy+Rd0Cig49WWadThXmYPn/L/3s2HdOdqSVcqEAtxmh9fFRgioi1?=
 =?us-ascii?Q?7PQyELKDSx8N8DQR2M11dkO9Ok2lOQFfVfS0boa9bJzpZH66LYF+A+KezY7+?=
 =?us-ascii?Q?XHEXN/sbSLjehXtiOGs0an8gbN4M3W3dvCsyo4003xdvDhOUPypthNWqsZNo?=
 =?us-ascii?Q?48t8ZjDY6Tz0oyjSZiXIe5N5WEYngr26v0GIbH5GFYpNhP62VpM0wjhkFcvx?=
 =?us-ascii?Q?Hbdlh9iI30yVXljGDebxUK6VCV85YVMe4RwqLijS5kspsbkZz1VdDQvV6+Ys?=
 =?us-ascii?Q?TOA3pvNepBAkvJQ+9NYqcUt0S3gHC47xEGWJwG0gYxEuUlNwl2yzOOAWTLJw?=
 =?us-ascii?Q?Et0nB6jYX4OytoPaACR3KZYzWith4i9qO3MrrKWoVjDHbw3RPDxPLcoLfmxn?=
 =?us-ascii?Q?gBpi4ZYtHNBmEpVbxbggUJKAeBSngkH0YtdgxXQOsy+kZx8+qeGCxJOZbLFF?=
 =?us-ascii?Q?bctIsZ39ye7CJ2Ia3uZU6WAVeHIuOwC33T4E93qjwkH7bvpbbPOgselVw2fa?=
 =?us-ascii?Q?cCFbBvDlTkTEVfPP9bfi+jKR8w8aEI3jXNRlhPDBwRvQvxUemXyzjUMsrKRO?=
 =?us-ascii?Q?oh5nx91YCDouTYX5ZXdt+HD6rPleXFkayN2o1yCzhHAbGDHJ3r6Z0t7HTYR1?=
 =?us-ascii?Q?A4685WrprzJqZMbv4ELtscTT3TC8Tqn9cMgO6ViZFYmEatMTdXiwOgBPp6ih?=
 =?us-ascii?Q?p8xd4mrxMt+FryRCv2vQfZ+YtbqGSS5mae/MQYdZUMDrLLuK+5tHh0jb3zkB?=
 =?us-ascii?Q?iSafvATweZLWni0m5OB6ZznqKQVyYLFXD0BsPC7gGBk9GDozugjnEij8ykZB?=
 =?us-ascii?Q?WOk+q4ao0ejYEcKMCUyKMdfZVoqFnOp5dYv+B+hiJZQvQ5AT1iOonKYvrDPo?=
 =?us-ascii?Q?r0DVbVpShwzP3hQe9o2g9a/eCXdWkWeJF+PgrHRxJ8uk4EzYwx3hhxd2+WFH?=
 =?us-ascii?Q?ssKo+J4sm2nbTqcBQJtJjV35Vc8OvyVhpe9erBi2u4HK7NmUE1Bo0FE2QobA?=
 =?us-ascii?Q?pORsPcEgoP87ArUIcG0laLYVmJRUYj/+4nZTgEuOkVMfxlIZfEafyijhMc7R?=
 =?us-ascii?Q?mDH4vMUUb0oSvR2cAFYQPpgECKBKiSWn2zHGMj+PVo+5LwSOkX277oupouAR?=
 =?us-ascii?Q?6FF8lTmpmaD3Ytrbv2nWSVnHb0EOE0hrcU+Tum1p8dyzzdT7lzaGgwpxyk6Y?=
 =?us-ascii?Q?MJySKWD6xJTIb0Ih4idRo+cBCsbXaw6z0RF+6S2VmYHr1/mIbf1xg4/u54vF?=
 =?us-ascii?Q?mS70EGeUacVMTmIgRGwbAiRuTl8PykUD8KTfqt/1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16d7de23-3698-4929-bea5-08dc8161603d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 11:04:00.8024 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sk/EEqYVmj0AnZvgMRBvH3U8+E/tKAk5LRdvxzkuyoSeFY54SZSycsOTRt0CBX+QGReI8YgsvGnA9DfZ/zEKXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8283
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

On Wed, May 29, 2024 at 08:48:05PM +0300, Jani Nikula wrote:
> Include what you use. We need to move the compat i915_gem_stolen.h under
> gem subdir.

The patch below looks fine, but this message here is strange.
It looks like this patch is moving the header file from a top dir to
under 'gem' dir. But the header is already there.

> With this, we can drop the include from xe compat
> i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
>  .../gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h   | 0
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
>  3 files changed, 1 insertion(+), 1 deletion(-)
>  rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index e9189a864f69..6985abeb6102 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -43,6 +43,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_fourcc.h>
>  
> +#include "gem/i915_gem_stolen.h"
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_utils.h"
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> similarity index 100%
> rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
> rename to drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index cd4632276141..3be3d419530a 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -19,7 +19,6 @@
>  #include "xe_bo.h"
>  #include "xe_pm.h"
>  #include "xe_step.h"
> -#include "i915_gem_stolen.h"
>  #include "i915_gpu_error.h"
>  #include "i915_reg_defs.h"
>  #include "i915_utils.h"
> -- 
> 2.39.2
> 
