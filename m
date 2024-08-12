Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F3294F650
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 20:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0879C10E262;
	Mon, 12 Aug 2024 18:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ez/KE5GK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8550F10E262
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 18:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723486239; x=1755022239;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=jIsDAuaykmkWX5R5VQcRATxoYkmangdD2t70BJq4T0s=;
 b=ez/KE5GKkaDsg8jDwEgjjHPJrhiJxA4AHPL9OE0ZQ34V7jIRmtp8dxdE
 VZkweHSgYcsAsfw1VasuJ6XsXnd2MibgQcYhdFUmfWp2zKvHv4J6e+1ds
 m7VwHz03DXAWMY2IDVSkgZ9i/2ZLSqmZU+jUvQ6hbRDF77TsAdJGIOAkQ
 s1rcVMKNZHaI2ClNHwD5k+UZs4XntZ4blopI1PF7Sv0lhKsIxMyzhoxUx
 dlGmFiXv/Y2FvxSj0MpRrFo5Pqfg+HJk1OB1U5WSesCgtOSB+rjxVJAiW
 ExnIyFD9OSI2XxftqM6fHvl2G0XCfJCjubKaIEqz5r2Xbu2Og7I04BeV4 w==;
X-CSE-ConnectionGUID: Rk6a4QyLRdi+DB26Dyb9ug==
X-CSE-MsgGUID: tniyjayBQIqBLuBk07913w==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="32234289"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="32234289"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 11:10:39 -0700
X-CSE-ConnectionGUID: 5gn1HminSdyaGD+N1GRAsw==
X-CSE-MsgGUID: wCFtnDAQSuWshY56lwo2zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="59053576"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 11:10:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 11:10:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 11:10:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 11:10:38 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 11:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nIKYpz8+dbKor6vF+A9k744LMNKGCduTGOtsk+E99DNRZc0KSN6uyZbdyBJREGn2XjysbBdFL3qETGfqtItW2UKqGP65ISRrchYCmeRBYU7n9uPPNgJiknRIsd4HhVbQduMexbrvD8els7cnYG6owS/1iBW+GF9NIaTQMnTyqEz8qmc1ptsETPkh4JflfLmiHQiy2g5QWSxp0/vaKJteaQBduTs5RGimrO5grBJ2VAnwCQ85L1etpptW5IQxzR/Z8qfvfJjzuuBHFQ0eBlAP7N8JQcWyHVr23QCdfmsctsKlQJHjXAD8F2IjGiWazj1b5uW3+IxQ2CcwNJb6P0zbmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pjgp4/pj/9XABIRXK84YTMq2F4Nw1nm6EIPyrLhEF+8=;
 b=vb5K0UpVQAphz0a61fY6MUAJbnc04RhrqQAaXDqrVoI4KkXBn65tp1UvlMpNIBsiSBP1mxKP1RXGTAJR/FwVm/NfoJ+TRMv2pJFoAu00AM6OCfdALU4tZ2+GYmpRWOes2/O16nDSn1tcUj0zOVj/C4cM0UYxc7CEu2s4dEm7x3mmeOd/fMw76YblS/+Kh6L2nXplakAAsu6QFeEUwyzT3TVHCj6LK67uzFGdRHGR8Bgs4L8NSzdLONvHyb6ZV81zjcz3grf8AOqV7IfqH/07mZE7EHIgUDi+p2yUH5bh8KRtAQHOGXkG2KiU7cV2h6Q5FaEnTStazFh4HCgoPliXLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MN2PR11MB4630.namprd11.prod.outlook.com (2603:10b6:208:24e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Mon, 12 Aug
 2024 18:10:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7828.031; Mon, 12 Aug 2024
 18:10:35 +0000
Date: Mon, 12 Aug 2024 11:10:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/xe: Name and document Wa_14019789679
Message-ID: <20240812181032.GH5091@mdroper-desk1.amr.corp.intel.com>
References: <20240812180736.2013233-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240812180736.2013233-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR07CA0002.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MN2PR11MB4630:EE_
X-MS-Office365-Filtering-Correlation-Id: b47ae7f9-5032-472d-9bca-08dcbafa1000
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oYyjFFDtvZKYDn10OOEfLUxPGAyHtOvVtsvbxpiuy1ZHwr6FS23DD3A3h8iH?=
 =?us-ascii?Q?8eTb6on8ZklUZJHZ+yKU81DBFlO38HD0CqRbKgET8iUsFtqIVj/4M2Qj6G+r?=
 =?us-ascii?Q?3/7ObVTAEmUC2yqRbDXtV43d0VI8grGsWaG+oBY1vtxNo1iZWhGpqJ/zc3zC?=
 =?us-ascii?Q?cOAS975hS/K29lEEl0GvuaY3tHBaVgLeaLGejLYqCSaiRL1Ydbwh2NI9HSTZ?=
 =?us-ascii?Q?QclU/EGjyesSHSOpzABogy+1zsZsKtZpozf9YWI4fFlXuGO6+GgBqH2ThPgC?=
 =?us-ascii?Q?bDzXF5LJMaHKC/sW5CefM8c5TRZ+Cqb5BdZc+tCRljfrkqFgyyKAyqSUJsqn?=
 =?us-ascii?Q?ZURtejPNCgfMGluErmqc79jMz1N611aghJIBtpeRZv4Vkfcx8TB2cZg+cJyQ?=
 =?us-ascii?Q?mNTARO1s7qMsaXDKUT86xa5sLkP1Y5eFbGJ9YSZtmrcbIwo3Af0Eg+0jz9ot?=
 =?us-ascii?Q?hxKuoyl/0pH4yfKYagHF297pMDnr5cFxSFM9U3uANDmUCGbaDaAQ1VzxvglY?=
 =?us-ascii?Q?+ACK+VsFf+hemPHDJ2hOaQvsxYCVpqhKGFgUnsoFnkK1E5YcKPC2unldLSTU?=
 =?us-ascii?Q?BPC0rCTwogMFHbPd2+q72296vEY0NZ1VKGaWG4e2SZ/ACPbcx7zngUjV4lz3?=
 =?us-ascii?Q?pncmlTo5ObE5nJDjAU3m8isDZLdDfl9xDw8GrYOjcJhlGvTJCUumi5AT1wUG?=
 =?us-ascii?Q?WQPg8vzHkdAFkPc2qITI8E6LnCQLp6PoIXRhHKc5fKdeiVamhaohJIBypDfq?=
 =?us-ascii?Q?d9c4gFvbri2ZKF15xt4XTlFQ23amzLQ7FbE4U5Fe7OX52G6/vhvUSa4+zcLd?=
 =?us-ascii?Q?coTRkikroMUtL4qboCKA2ownT8DArq+dB7Q6gVMLoLwLIX2b5NTmC22lIoET?=
 =?us-ascii?Q?yrYGa0FJX7eAISxAR3++xx/Z6/3C5jkKTgm7l5Sm+1DmFrwjnfEYHV4UZl/+?=
 =?us-ascii?Q?z5zaebQD09+CORIe1pxP6Mezejf/Jrpq5HuO2S4VW7w4nlS8V5Z4Rd2B7RB9?=
 =?us-ascii?Q?NIpLuKTN/YZCojpkLYj9gqKHHTPLSJZr3phzhlnFhXqsjKZDQ2qs7d8RFJPk?=
 =?us-ascii?Q?vpJ9JaGo4tc8L0fCEPu8LfpISSXPVXLvzoRjehgBHQ1k1m5nS+fxsMjS3f5A?=
 =?us-ascii?Q?Rit58pQ3y3ac4chLA8aRRvFxbF7TVc856BTpYrzrAqog31EursElCi0AIs7Q?=
 =?us-ascii?Q?z88yaTk11kJpXMKpROMBJh3fu1rcRa0i/EFctR3Cg4jiMsyP7m+Muck8Na0O?=
 =?us-ascii?Q?/fd9PkaMp7+5c1VCAslX6Ny0Prp0xFIcQECNmq1uXw/rt2WwztqT++tvjml2?=
 =?us-ascii?Q?iTpcb1aPiw5hIrup4mYX7gwSjc1l1YjU/ewaSnUApFRuMA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IVa33lSqwSSjosY4yoDP5bD+s17COAwMO1WuXy00pbZQfQ5TyPslSiDhMH8W?=
 =?us-ascii?Q?1VyGmIJ2vHIs+nphnJI4M113BL0EpR+4iKSctw5t9KOnQoXNEZ4sxG9+6QmW?=
 =?us-ascii?Q?rFmcw668VPUli5988UgvI4Py6aBt1HYniMzY6BVpEu68uD92vxv7Tr7rizTl?=
 =?us-ascii?Q?y+6FLeX/eTtKG68dJ7/AO+kOgpgamWedF/HXWeQPZiQOozYREf7EUaDxKM6t?=
 =?us-ascii?Q?PAw75yyz4KoFkIIWwzlR5JfbPaWPtuHgeJ++G8ZMH93ukfD8tqkvOefDScau?=
 =?us-ascii?Q?ziGRHXjGUcYDECsBnHHaDsCgqY65Rd0DYIdZqJKtH42cLJG2u+gbyRRE4Uuc?=
 =?us-ascii?Q?KJh+fQ7jq5QjIDcIJUpSzN12eTcTa9Pk0MiYom/3BWn+2LcqRO6BqKQZD5Cr?=
 =?us-ascii?Q?7dOJKYPtF6Le89CXBeHbPsGIbdUxZtsTZ+Etcle3YA2OczBo/iCxY+NQ40Up?=
 =?us-ascii?Q?9lMIbh19uL06kot3NSsNboO/uniLqScXTIsBpWh8PeK1R9p1MzeoWP8m9/xW?=
 =?us-ascii?Q?ImR61XY4OR3q4Z6jVIzK1SRigs1fIlJb14REoLS72rVFvHexchhbC75EDopJ?=
 =?us-ascii?Q?gRVBOIb7mA/s1PiBSmFnaoljwgknR/KCudwK0xTKpc8oSRMTBkP9Dl6g+cSk?=
 =?us-ascii?Q?2q46cei02/084TYyCvXw/FYLToohMAwET1me0IGi6jXfgPtioSjJrW59TEvC?=
 =?us-ascii?Q?pywhYDt7o5HcmirIblnTvwFdF5r1y3Eh4AXpAJ6FIwrY47J8iQvsZiGyKJOG?=
 =?us-ascii?Q?9kG5evce2fmMEliqtPfwCpd63CiG25WkcO6HO51faOmEvtALUx0OVtF1amn+?=
 =?us-ascii?Q?vtqONsj/VUMsKFKfzjv1kXCXcqQdLm3dn0chS6QAzBninigAXXVUmdduOA7V?=
 =?us-ascii?Q?dPwI1dKoKeP0sF1+wNbXEkQF2FmsdtUEGPTIzaCymy1fyUOV5hfg+TE+HaTh?=
 =?us-ascii?Q?0Ln/p9DUGn2dP/obBlyUWrEi7NC78hhicbf0Gy1bZYTNPEvSH6tagNk5yjBQ?=
 =?us-ascii?Q?afsZ1x85oaNluLI4eGmAEKlYtKcK4AYPLewztBgT++O2RoZCWjK65bArfJck?=
 =?us-ascii?Q?9ZAsxBpSzyfP1iBdkAmzqbvjRwcBxSVoZkmiZdWtKget5l/gr3Z1VNYk3DPX?=
 =?us-ascii?Q?zWEZJmqw6tEJsjfi3Yy5FML/jwSlTeGhi8ToS4MTcgKGM5Lzuot1EJVNGzbk?=
 =?us-ascii?Q?ecvzrsomm7lj088IYpN07KNLyJdBPJXu/bJhRI9iFjJaBBEGpCBJrzmRrMwH?=
 =?us-ascii?Q?d8PuksmYcGhif2ASPh9HTL/L/7h4j/3x7juZA+Zh4LzZI0Ea7UEcRRuyCNH9?=
 =?us-ascii?Q?g11LDpbr5eoPKTfnytVZXU/I5ANpTAxLA9TcfON/CIEHR7POvT7m51Sfbm4C?=
 =?us-ascii?Q?A8UByBU+xsrGSU++h9VHngEITM62wTp0LxkCKz42HvtR64r5T2VZ2jd78JXM?=
 =?us-ascii?Q?+aAV9yFSG3R+GXbsnGpv9pNKOyBQHF/VROF3Ivn2A2lmU4M0mJzJ3x9MB/yH?=
 =?us-ascii?Q?aR/lbSufEulHXgGSTd4KQEbANbY/6RCbJt3I7aaZkImL3Lkeo8QsEt0r97QS?=
 =?us-ascii?Q?GXEhwxBgKA/kMnGAokKwjuizSJNjZkPqKIFL7y7OtkkhSnwp2maA9htf6BUO?=
 =?us-ascii?Q?EQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b47ae7f9-5032-472d-9bca-08dcbafa1000
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 18:10:35.4148 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uVRTO7vfUMep/hQb07Gc3WrmPWQre3DJ9mOvh16VXc1FlkmEiOfUaMYIcojBh5DQ1FcCUWNj+CL1XCv6O8cDgrgIS+V9+36fB6/GHKvXYM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4630
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

Woops, this should have gone to the Xe list, not the i915 list.  I'll
re-send.


Matt

On Mon, Aug 12, 2024 at 11:07:37AM -0700, Matt Roper wrote:
> Early in the development of Xe we identified an issue with SVG state
> handling on DG2 and MTL (and later on Xe2 as well).  In
> commit 72ac304769dd ("drm/xe: Emit SVG state on RCS during driver load
> on DG2 and MTL") and commit fb24b858a20d ("drm/xe/xe2: Update SVG state
> handling") we implemented our own workaround to prevent SVG state from
> leaking from context A to context B in cases where context B never
> issues a specific state setting.
> 
> The hardware teams have now created official workaround Wa_14019789679
> to cover this issue.  The workaround description only requires emitting
> 3DSTATE_MESH_CONTROL, since they believe that's the only SVG instruction
> that would potentially remain unset by a context B, but still cause
> notable issues if unwanted values were inherited from context A.
> However since we already have a more extensive implementation that emits
> the entire SVG state and prevents _any_ SVG state from unintentionally
> leaking, we'll stick with our existing implementation just to be safe.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_lrc.c        | 35 +++++++++++++++++++++---------
>  drivers/gpu/drm/xe/xe_wa_oob.rules |  2 ++
>  2 files changed, 27 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
> index 58121821f081..974a9cd8c379 100644
> --- a/drivers/gpu/drm/xe/xe_lrc.c
> +++ b/drivers/gpu/drm/xe/xe_lrc.c
> @@ -5,6 +5,8 @@
>  
>  #include "xe_lrc.h"
>  
> +#include <generated/xe_wa_oob.h>
> +
>  #include <linux/ascii85.h>
>  
>  #include "instructions/xe_mi_commands.h"
> @@ -24,6 +26,7 @@
>  #include "xe_memirq.h"
>  #include "xe_sriov.h"
>  #include "xe_vm.h"
> +#include "xe_wa.h"
>  
>  #define LRC_VALID				BIT_ULL(0)
>  #define LRC_PRIVILEGE				BIT_ULL(8)
> @@ -1581,19 +1584,31 @@ void xe_lrc_emit_hwe_state_instructions(struct xe_exec_queue *q, struct xe_bb *b
>  	int state_table_size = 0;
>  
>  	/*
> -	 * At the moment we only need to emit non-register state for the RCS
> -	 * engine.
> +	 * Wa_14019789679
> +	 *
> +	 * If the driver doesn't explicitly emit the SVG instructions while
> +	 * setting up the default LRC, the context switch will write 0's
> +	 * (noops) into the LRC memory rather than the expected instruction
> +	 * headers.  Application contexts start out as a copy of the default
> +	 * LRC, and if they also do not emit specific settings for some SVG
> +	 * state, then on context restore they'll unintentionally inherit
> +	 * whatever state setting the previous context had programmed into the
> +	 * hardware (i.e., the lack of a 3DSTATE_* instruction in the LRC will
> +	 * prevent the hardware from resetting that state back to any specific
> +	 * value).
> +	 *
> +	 * The official workaround only requires emitting 3DSTATE_MESH_CONTROL
> +	 * since that's a specific state setting that can easily cause GPU
> +	 * hangs if unintentionally inherited.  However to be safe we'll
> +	 * continue to emit all of the SVG state since it's best not to leak
> +	 * any of the state between contexts, even if that leakage is harmless.
>  	 */
> -	if (q->hwe->class != XE_ENGINE_CLASS_RENDER)
> -		return;
> -
> -	switch (GRAPHICS_VERx100(xe)) {
> -	case 1255:
> -	case 1270 ... 2004:
> +	if (XE_WA(gt, 14019789679) && q->hwe->class == XE_ENGINE_CLASS_RENDER) {
>  		state_table = xe_hpg_svg_state;
>  		state_table_size = ARRAY_SIZE(xe_hpg_svg_state);
> -		break;
> -	default:
> +	}
> +
> +	if (!state_table) {
>  		xe_gt_dbg(gt, "No non-register state to emit on graphics ver %d.%02d\n",
>  			  GRAPHICS_VER(xe), GRAPHICS_VERx100(xe) % 100);
>  		return;
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index 5cf27ff27ce6..920ca5060146 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -35,3 +35,5 @@
>  		GRAPHICS_VERSION(2001)
>  22019338487_display	PLATFORM(LUNARLAKE)
>  16023588340	GRAPHICS_VERSION(2001)
> +14019789679	GRAPHICS_VERSION(1255)
> +		GRAPHICS_VERSION_RANGE(1270, 2004)
> -- 
> 2.45.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
