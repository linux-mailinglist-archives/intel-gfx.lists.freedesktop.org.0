Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0596C897A6B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 23:12:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B65C112EF2;
	Wed,  3 Apr 2024 21:12:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jGuVIyNb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5D4112893;
 Wed,  3 Apr 2024 21:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712178754; x=1743714754;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BG6lMekhNUvLjzvBloV+dBhWiAdX7XEPU7OMuIo2WSA=;
 b=jGuVIyNbX+BrJUibBaKZ/jDa2rRdzSWui7c0ithcKxUmog/v+m9nZezH
 Cd74QsMA1dKohjDuNLQOEpC/tgKOczT+pVhW8ssG9LViPsTxneMOsP8mK
 gkf/CZNWhp9mfAp/J7GJxyBRTIQuOD6xNsptI7jS0fXCadVvE9tbE4Gv8
 /I1sMU2wiRPhpcoNK8n6p/AXwLuYAtS5l++/+ZDmL79NznZr/n7zITyc0
 UCEfKX5MklwOfmXXa7LFTLpRfTRRJmRGC5XHGChXMB0nPKa/gBkuVIMcI
 0chsQ+L8+qLAy37UfLFoy8JO5CU7694caL6Op4N094u2sb8OjVt3vYw7V g==;
X-CSE-ConnectionGUID: MdxRnHXOQHSW1l3ibJ+2Pw==
X-CSE-MsgGUID: Ysl2dy1lQNeh4WMm/DU8kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18171803"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="18171803"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 14:12:33 -0700
X-CSE-ConnectionGUID: AztbfYpjS0+puI7ONzXIyw==
X-CSE-MsgGUID: qb9sfBBETbqgmN1/W4/2KQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="19023942"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 14:12:33 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 14:12:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 14:12:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 14:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PF/oWYMAsZIz8brMA9vL/9SvY2c4ualuLmxg15ad/m3dRGTjqTUxcmqiVxni7USt3XCUUGCDyjvlAO0NipJZmOAOU6OeGPLWwEki86Bx/dgmbkKSwYjSe7AHbIj/+H4IyGgVqJfGOwhzQxpImYC6z8ms59K761j4wc+jCb8Sgv479ocJbB3ipXqGJwdTS+aWDR7YY9D2I5AKl96/z5e9+qe4SnZMCeyZ1ZMNXbjARkBs/o7K6zJ+l4FkkKWipRxcag7BjkjOTJfRmoYF71ODv9ewABGe3aV/iHCtVhJ3qiRiD/2rmRUNdKIbWPOsKDQjlWVjw/JKG+JNFSj6QkxO5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dZ6fYCg5ugRjsJGd4PuGGgNrmLyP4fx0ICszAD6PEww=;
 b=YPGuWYFpEM7g8+iFVW6mTB7jv/NH8MxKamewYCAxGsry5FO3UByE16Ec6bmToC8O8itVtvdMg/drCMzdZ0NRxlbdNk70sHnZR2vilGpuFEgaglQQZ36s+CAMwltNU3Gb4P4qvQ8T7OEHmSapsVS0lMCDdU25h1BCIClz06FyOp+N3IR9KOqLn72r+NR3zUtuV5rdOrZx2DkEypuGvjI3dFMaT2HHQVROW3LX0C8Wb/WfjfBMoq2icF1+3gbGpV2OxR0bqgWsfenl6IVFpQcQoG2SdimnvABcke/RONS+T/oeWR6avRn5dytipaK37O0AArd11ikAUuiO24gMP96BgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7137.namprd11.prod.outlook.com (2603:10b6:806:2a0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 21:12:28 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 21:12:28 +0000
Date: Wed, 3 Apr 2024 14:12:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 13/25] drm/i915/xe2hpd: Add display info
Message-ID: <20240403211221.GQ6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-14-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-14-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR07CA0108.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::49) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7137:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aKPLwRcLRj6zjp8KWWVqlDBreYHgJXEAe/ntPmN7I6Ct2piS6zmNCNiuaZYmj57SC3ez+xDOn/RdXPJJ4DoS70Q4+t1sfmwOBCuUWRD3j1Hpp/f7D7hPww76EFItHbNPjrwtrqFiK9aRayi10qTDCbHoN2ND0WiPweKg/MXTVXFl1B1th32xyrz6hAzxo1Wthkr4qNNlKB7u4Gn7Zt6kNH3ydFhsUXGO5rLBE6RPsEBY7UDkQXT8Ae8aGD2upVbZmcI/LE2Ocxm9ZuCBosvtsInXADik4XZv10XDaIy5DNYqBNafFw8yxP8rj8UkexKGWeR1dHq48rz+S6MreJ7QhQl4B0V/d9KKNftx0nwT7n92vGJlJg6kO4tFeuwuU3JXxuUza5yO1H09t4CK79ZDpSXrXqLgiswmhcnrGYFxmtAzQ5+41uYr3jKlHFHT5as36iDgDhVJ0ELZNYi969CcsmDEJCooogUI6I0H3kdwlt9zWEXuP5Wg64QZ8oB7vYuVMj+jbO8e7OSogomO2oIzViTipQ/yEMbG6j6qknIxmQVyrwvmF5oQX7d1UU03Yzl7l3M50oApfMALZ/6pRQ4nmOXtU6gqWPJAcabg7QzvWCEeKqGqvzZLp4WPnPZLRJUnHz6CqBwsocXCBl2vGcrrWf+pdaFIwnNtBBQx3ZsIN+U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UxD548D9i9KH69oFHWoHxSDZYiIi6DtJ6oL/9W4u/IKbnB2Yo/b/TK1M5pm7?=
 =?us-ascii?Q?iEibs42ywcdiORiB9Jnka7cGJN/jkO+/gwNClg+g0Z4fAA0UVFqlviiRN3yE?=
 =?us-ascii?Q?ZA+EznrnUJOcvE2L1GjmjcrrMDhU3ZgSqu3YER6ljzIcVU4mv6cLFhqDG4pz?=
 =?us-ascii?Q?MscFelhP1BfaWq6yJyoKT+6CAy0RThd97CKFGoUlCfct7FhR6LgXGR0n4yK+?=
 =?us-ascii?Q?LSbQkaKl2Bcuh7KcWWFOt8yQDa7MBVQcjGRIm0ruTQIGlQiUaAyQV9hCmmh1?=
 =?us-ascii?Q?SO//atjjtBvu4kZLgEu8TgRC6Eu65pjksAJZ4cMvg41GTXGAyMyqhByKmRNx?=
 =?us-ascii?Q?lCT2nkQsOxM6uGFPOKpY6RGajvBrcBDg4XqMDpkuLNIwbsEXKEtM9mZvz+Yv?=
 =?us-ascii?Q?o490esPf/3HGGpAT4RIgifTY7ut8ZTPmsK24ehRzu6hMeNKw6AjrCtcA57oq?=
 =?us-ascii?Q?+x4tPT99YXpPYxwpAB2nT4DjNwW5VxjDLhN8y9aHn7WCSoIXsvPWx8sgyBsG?=
 =?us-ascii?Q?zZtFQsbo4zLjqzpPbWnk2xoYLq/thqlkPtpSsgTeauekGIJ2muMul2yBPC88?=
 =?us-ascii?Q?GgSFXTVc83EEkgr5cZpu6eEM01MexQqqEXo7WqF/3H4GrOVa8FFWSNavytxi?=
 =?us-ascii?Q?4ooj+yDNyTbt12HMj4DltMB3ApWjgzqT/6Eb/c0ZBk2YM4WrQhsH4w5z0eKM?=
 =?us-ascii?Q?XNSW3BQdVQlhCkOG9sMkX727OmHhWZ8FMUSSzPshaKJNPYead2/ZACfs25En?=
 =?us-ascii?Q?NkCcYuDa0t3IF6p7xCdIzcGUU6OwU1PUmJXG5XncAwGQ9i3/Qp64mpqE0tqu?=
 =?us-ascii?Q?YwTUx+hWIx/tcHNyU+V9c8B0rwe9CtMUghkQTKl7rVMZbdm6stD2aHHib6Yf?=
 =?us-ascii?Q?ZofUDj6dWAgPImG+3jtSxxlKs/meSANfi5Uf0S3XwoOxRgPFsjltJZ0b+7CK?=
 =?us-ascii?Q?sGGn0Fl8CDPlN45/SbWxaNtZijdNFwfsLbLqQplvGmImtDm5Oj8hmnaE2v8w?=
 =?us-ascii?Q?llERb1/lJLlnjKSBiT/EQ7f50DTiNYOh6zvY4ndJEs1c8qXP8mw2RmEbwhRT?=
 =?us-ascii?Q?z8BON+h/OVX3QVIZtVLxb4WXXE9OcZNLEypAVBkCberJkf5tYM3dfektM+Tt?=
 =?us-ascii?Q?wgiW79W3XIH6pGe5xdDjTF5AhvJSr2kxfBfhEU+CQwrHa8utwYY/kWaMYUV5?=
 =?us-ascii?Q?ZbfdZE0yU8+g5LpJ6gT1HCHCGSeg2I4uiUTsPQ/bY9HGglbONSKubVwqI4cx?=
 =?us-ascii?Q?I/eyBLSjEZ22mFnMhRup32i13zWORORuDoTRK5E8Q0YN+PRsFA0uoLmxvwif?=
 =?us-ascii?Q?knxB4Y+wS1q9LuJ7fVGI4Y39IU4Rw4+uK+BSSxDIXTKaQ7at/ZWyJIHijPLy?=
 =?us-ascii?Q?WoXgl63Mk/unnMCOpn3DtzvJHhZiMQ/Vu99OAe/WFbHidS2wCplAzY3m/Yf3?=
 =?us-ascii?Q?xPwDzs2arqKcUgYzsQppM24DNF5CUUFM0cbLnfLACcyrv/yA/oE4K95IeBYO?=
 =?us-ascii?Q?rGklDAiMcuzIYlQOq75lXiwxBm8ltN0B7bMO9x9P/IPL7Up5VZvCcXxx81Se?=
 =?us-ascii?Q?p0Ebk1KQ/Cnw07QUF/wAc9TWCNvALO2oByj+HCiL2Qu/rl+LssH9R5sqgyvj?=
 =?us-ascii?Q?PQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a422c2a-f7f8-4096-1b2c-08dc5422c44b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 21:12:28.0399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cI3jf8G7YIDbPLhh5QpFHROCvc7I0EaYgIA1t8EJeJREfkMl5tlyVKT/1uTh/v6z9XBS/QnFTbz7Cn5sWiRZ/r6iSxiX9qBWLzI/OOmoA+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7137
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

On Wed, Apr 03, 2024 at 04:52:41PM +0530, Balasubramani Vivekanandan wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Add initial display info for xe2hpd. It is similar to xelpd, but with no
> PORT_B.
> 
> Bspec: 67066
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_device.c  | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b8903bd0e82a..0a26012041e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -771,6 +771,21 @@ static const struct intel_display_device_info xe2_lpd_display = {
>  		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
>  };
>  
> +static const struct intel_display_device_info xe2_hpd_display = {
> +	XE_LPD_FEATURES,

Don't we want to derive from XE_LPDP_FEATURES rather than
XE_LPD_FEATURES?  If so, that takes care of initializing most of this
structure, aside from port_mask.

> +	.has_cdclk_crawl = 1,
> +	.has_cdclk_squash = 1,
> +
> +	.__runtime_defaults.ip.ver = 14,
> +	.__runtime_defaults.ip.rel = 1,

We're not supposed to have version numbers in these structures for
platforms that have GMD_ID (there might not even be just one version
number associated with the IP).  The gmdid_display_map[] is the only
place where we need to map one or more version numbers to an info
structure.


Matt

> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> +	.__runtime_defaults.cpu_transcoder_mask =
> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +	.__runtime_defaults.port_mask = BIT(PORT_A) |
> +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
> +};
> +
>  __diag_pop();
>  
>  /*
> @@ -852,6 +867,7 @@ static const struct {
>  	const struct intel_display_device_info *display;
>  } gmdid_display_map[] = {
>  	{ 14,  0, &xe_lpdp_display },
> +	{ 14,  1, &xe2_hpd_display },
>  	{ 20,  0, &xe2_lpd_display },
>  };
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
