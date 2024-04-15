Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 130358A5718
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 18:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 711BE10EBA3;
	Mon, 15 Apr 2024 16:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/AONGnS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB5D10EBA3;
 Mon, 15 Apr 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713197303; x=1744733303;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=yBtk/t2KX5F4jhnTva7LHu7dRMu9LwisiQYZx73/VHA=;
 b=H/AONGnSnCSB661cU7ApIGnAsBY+BpFECxT/5zHozvheOsoUhi74Hx+O
 6PSpbrrc13Eelac8ilKfdGmisBUZYbuqVjcaPdtxhA6ncCriCS9bQXvml
 9Y55JKNbdVJcfewCGbqHhEynNFnrCfHOctz8NtHB8WC7F+SQI/5ZOs5aE
 Kr5d3KKf8p5vm8Q8rSZJXZVQKkxNFILVlZ027fkRatLbPBc7DkTuG/rIO
 ADWAhfmSagG8thb8nW7etmAFmg88AtosZNj3j5Mn1YuQ7pV0omEC8A5VJ
 RbHEg8XoPRY6Tbz9I1muYdRl4+k/4uvFXZdFASL6hCKoiqed2Xe4dBjX8 w==;
X-CSE-ConnectionGUID: YQSwCKJ8QCipdgUYjC5kqw==
X-CSE-MsgGUID: LTGORA4CSp2yWu0mc7/QmQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8467258"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8467258"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 09:06:57 -0700
X-CSE-ConnectionGUID: rxogkRoDQga5XWK2grWVdQ==
X-CSE-MsgGUID: HAAcopkJQiCZkjDjm3Gviw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22048959"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 09:06:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:06:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:06:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 09:06:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 09:06:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MsLlql82AcePU9umsJbIdQ/UgeMcBcp56imN4zZ92xNKkaVdAjmuxUNq6qgftKgmtHT2Nk9yZlXI8+2E/YhzwufUVMrFJC8F1Sc3ZixbUMuY4Nd297jas3tJBf2jbv0+lKSELWR9MNNfmtcSzSZF2eC5dy9t7DuwpHwHeUQYSV73paLRoLG1+uwJlGA6KrKAmFL5LIPl7s8MAOy/8WvRWXKl2BeyvnUbAP41A0rYFzPXKHY8qvJpV7AYKGCqi7x+n4kLipTjT5BxkLGHE45ar0HSwIuNVeEWnZ9DZmgAZ0R2eb0ioskxi+Qxmv6BB2qvyDu6kECOK6NVgFz4NVi9vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5NCwfe5sHkM9BZ5yLhuXC3jvMrl/c9gBdy+q+opNL5o=;
 b=bQ4KwIHBUYaamsjsddXlmC95rgPvOEY92eRWI43fBTZSz1A7ti8kPOXhQfuz+B+vDxAOdICb1zzgDBKNmXtVqZuAnAr2FTTjI2FZiMDjUHvHJNRG7ZDJHb7rZn6Dnnh583klIKxj1RR+1skZ6HYhpXNAHxOGLiGA5ILbn/Kl9e62IYRw7ia2XucZ34B61FGwHgFoScRgZOWfRPa9FahhvLbuvDOQaESSXWGVfZGF3q0AoCDXvnqYNtHCLF3cTboAxNYtV9zOU6rAuqLyVcGmv4dGWsOfXjObdUbTDv8nu3jFqGtfue1KMEbYpfNpEZkyRpM0yYKaUtrG6pvE8gl9KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB8043.namprd11.prod.outlook.com (2603:10b6:806:2ee::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.25; Mon, 15 Apr
 2024 16:06:44 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 16:06:43 +0000
Date: Mon, 15 Apr 2024 09:06:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v3 04/21] drm/i915/xe2hpd: Skip CCS modifiers
Message-ID: <20240415160641.GC2659681@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-5-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240415081423.495834-5-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR05CA0087.namprd05.prod.outlook.com
 (2603:10b6:a03:332::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB8043:EE_
X-MS-Office365-Filtering-Correlation-Id: 06c087ca-8f93-48d8-c7e7-08dc5d660b14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ypvr4TGUwZq+KMFZGtJ5SQJFHsWY1JGq9optCc+UZoDiKsy9FXUjKNsMf+fWDbv4P90R3PYnROu8Hn0prubJLTykFKrmj+BudPllDUQc1Hq1fsEXqVVkDxmuao6LhY8tgMH8mPf6RbbS34CEXa1l7HZqHcsz426w5+eLZ4y5agMRzV60/tpRJlsc+5nASj3ty/g0od7XDxUeK2VX7BNZ65bWJjllGgdADRW+dwfcLaKo3SYa4Xu3okJ5pfWVJLAeOKEtq6af4pd56/4s1DKlZ6YNyjC7m5QGLvF+2qsB/9X8+NSly7lDKrM6VjVYA/ivA1ESFGue4RzzehJfaOhUi3qC8W899UlFCqsBYlXM2yL0tiilRR8BpoGwytFr9pWyW9gQL6pMNluZaOS/84CXrGy+IhCpx09iYJ+lgV4Ge4P/20+0KwQLbBjp3txeZ55YZr8UhbHM3//fNK0AIvxWZ2k8yqCGuwVWavQGK48EfJUnY9yrXFbLfDXsQuPz9njmCzDPt+7JzUtsIUp0BaTCDf8TlYhdTtJ8Z5vAyGV8b1Z7IdnUxnR5BZsYSYZobnVBlwaQIqWkbXB9yKIA8Fs0MttJfLbYBJYroX/w21Tsrz2embf7/UjcT6XodwFtqtU95r+LTZSqgEkKgGXaSvesRXv9JvUxG3NdxyD4z5BAPBk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?aiar8K+jmxNB9wo5SKQ32WcDvtIIVHAANXMkXLpD4E1/x9mjYuSdjV6AUr?=
 =?iso-8859-1?Q?RvOVgjAyjNiKfi0FG+Fp4tDb8p7usFIZHqEIBCYWrl4ID5cOGHLaAvlArn?=
 =?iso-8859-1?Q?oBuDKdQPkc50+cE9P531T83a4EFT54XadK41rOJUVKZA7T+sZUCz/Msl44?=
 =?iso-8859-1?Q?Ys4eFbI7p3k5F+t2PhWjg4o7MwOcah+WEloYTAlagGjN7bgVKOUmH8Apij?=
 =?iso-8859-1?Q?qtFMkE0NNxnXS0y94iF9IC8/xCJwayozwHtRiXEB+uFfNv1p4tY+OujyIj?=
 =?iso-8859-1?Q?ywlR4nt8dS2ji4KId89XSqx6CWZ6m5YRM9JJw7eK01uiriGWcNZOXh3w1w?=
 =?iso-8859-1?Q?JEhhF2drPRYs7Ud4NC1slSW8b5n0lVxDpP99mcBUyCruGv9eJTdqC8EZo3?=
 =?iso-8859-1?Q?pV3LoRZeC4aF0EmHSg0Ww5CDGMnpfJW7fAq5cTzhYtgPfHkvgVT1Ak0fWa?=
 =?iso-8859-1?Q?uRS4S3ga8cGERgbIFPI47TpsJW6O9hWM9UgnVbKzxWDQazVp+O1awU8BWb?=
 =?iso-8859-1?Q?hauqbIVcIKQpztfP//SLE0QZJizBRA+POYKufiR7MKDoyxf6cwt8L4FNej?=
 =?iso-8859-1?Q?BMfVZnmLr7ZewFQk3TgTSzpjRHoKJHNaW+JOI1M3jsBrzyqdYtmRyfeKpG?=
 =?iso-8859-1?Q?LIPSzYaKOEhLY9i3x2EV1LOBp0qwRj2mNltYADfKHbCtw0CKijkm01jyd4?=
 =?iso-8859-1?Q?HYkmYU/YWSqF13NTydC00b0OdzNO/zf2NDnbMn4aUe3xVhfWacgfofJZmy?=
 =?iso-8859-1?Q?uLXH7Yzv1BiKwoFH12Q9DkG3x8atmdXje85tfG8VH/cqoIYuLr8bTK9X/H?=
 =?iso-8859-1?Q?jb9uNQOwPkISVvwINrqtlq3Nso5RnSR9Mg68MdSai15kXOVTnqmeXLkqNq?=
 =?iso-8859-1?Q?WrNAyyPpYmXIiVbB0Xaze8e1ser27ZZ5H0RNaahaL8qP5NUarh9L/j7nj7?=
 =?iso-8859-1?Q?ARspUG9/NFacPyE1JXlwEpQ1ycxjW1LEJmtaDi/bvCtCZtfRkUCaVs5oBa?=
 =?iso-8859-1?Q?6RvnKXB1fUWLoO2NfvgJVJc8qtYTK5X2VAjrUFNs3GpxD1oS5VVC2Nn40B?=
 =?iso-8859-1?Q?qDtvrGqozJwTwBBsV5TlIlgI3aZ3GUhCnW7c3UAxMBkpEiPpIalqPYBVu1?=
 =?iso-8859-1?Q?GDFoaNN/sTimJNbYX5XoxNxosKRwQl/LsT3rFbw49t2ToUcTTvdALxbvCz?=
 =?iso-8859-1?Q?+gqPUqpRJNT2msttTqujzefeg4Js0gN7+3ZYc9w2LL+FSio28ilwyT++I3?=
 =?iso-8859-1?Q?yc74cuz4H1Kxm+g+doPA32MU1aIOEFsMppz2jpjNqalkf5sWvJCtEUiQ2u?=
 =?iso-8859-1?Q?qpOcrLIkaa6LFmh4xIrpqYhZZ45uRfs7oQvhjjToKdXaS3slRBdQAINDpM?=
 =?iso-8859-1?Q?WKQPbZk1BKKG+f2/sfW7BfMAFW0hdsOogb2NIHgYWtulkCqOp6toZt3rCs?=
 =?iso-8859-1?Q?EKDmq9/lWExB2aj+glsUiuoxIbH1ia7pkHUusfuFu1bnBmx6DnWelGqCKw?=
 =?iso-8859-1?Q?4B17Z3lJlJ/Bp401NyDKQwrGiXNfOxuJjdW1NDNlFFLKsdt7+lRoXzEQXT?=
 =?iso-8859-1?Q?b5xF9O5tpkLwykbjGTo3nPAig6YAfMsNm7l4usHVOlrCXcw+78hqpndO0y?=
 =?iso-8859-1?Q?GAuDpYbGwwRqYHtX/PBWzUYjUKisqagc2JpgvcqVozFwyXe4zPMgKLzA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 06c087ca-8f93-48d8-c7e7-08dc5d660b14
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 16:06:43.5099 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UEe29NJpVV3nsmLoU2cDhxjRNRoaB5ZiB3F2fJDtPptcHfmFUXENzaB9bXtfcQK8t8gLJgP4XtjWV/WX0E0FyLY/poHmaYT7hXUOO2Hh1RI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8043
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

On Mon, Apr 15, 2024 at 01:44:06PM +0530, Balasubramani Vivekanandan wrote:
> Framebuffer format modifiers are used to indicate the existence of
> auxillary surface in the plane, containing the CCS data.  But on

s/auxillary/auxiliary/ in a few places in this commit message.  Although
I don't think this statement is 100% true.  DG2 use FlatCCS rather than
AuxCCS, but still needs to use framebuffer modifiers because the region
of the FlatCCS that corresponds to the buffer may not be
initialized/correct if the buffer contents were generated in a
non-compressed manner.  We have to use framebuffer modifiers to pass
information through the software stack as to whether the FlatCCS data
for the buffer is usable and should be consulted by consumers of the
buffer.

As I understand it, the big change in Xe2, is that compression is now
controlled by the PAT setting in the PTEs and even in cases where an
"uncompressed" PAT index is used to generate content in the buffers, the
corresponding FlatCCS area still gets initialized to whatever metadata
code corresponds to "this bloc is uncompressed."  So that means that
it's always safe for consumers like display to treat the buffer as if it
were compressed (e.g., setting the decompression flag in PLANE_CTL) ---
the CCS metadata for ever single block in the buffer will properly
indicate that no compression is actually present.


Matt


> Xe2_HPD, the CCS data is stored in a fixed reserved memory area and not
> part of the plane. It contains no auxillary surface.
> Also in Xe2, the compression is configured via PAT settings in the
> pagetable mappings. Decompression is enabled by default in the
> PLANE_CTL. Based on whether valid CCS data exists for the plane, display
> hardware decides whether compression is necessary or not.
> So there is no need for format modifiers to indicate if compression is
> enabled or not.
> 
> v2:
> * Improved the commit description with more details
> * Removed the redundant display IP version check for 20. Display version
>   check for each modifier above would take care of it.
> 
> CC: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 86b443433e8b..7234ce36b6a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -431,9 +431,19 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	 * Separate AuxCCS and Flat CCS modifiers to be run only on platforms
>  	 * where supported.
>  	 */
> -	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> -		return false;
> +	if (intel_fb_is_ccs_modifier(md->modifier)) {
> +
> +		/*
> +		 * There is no need for CCS format modifiers for Xe2_HPD, as
> +		 * there is no support of AuxCCS and the FlatCCS is configured
> +		 * usign PAT index in the page table mappings
> +		 */
> +		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +			return false;
> +
> +		if (HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> +			return false;
> +	}
>  
>  	return true;
>  }
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
