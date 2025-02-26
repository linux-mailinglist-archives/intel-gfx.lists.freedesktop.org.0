Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437AA46EA2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 23:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB46010E9F0;
	Wed, 26 Feb 2025 22:33:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DttjKV1g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2875210E9EF;
 Wed, 26 Feb 2025 22:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740609209; x=1772145209;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L0ksvxRp/Nirv51X4lagH3udV2/9RB3Fe7Yr6mm5ukI=;
 b=DttjKV1gh7O1lew5gTfAfe91zoFB20bSdCbLGeFXnpFw1Rhk97uDYe/8
 bCXZ3BnW4GPT+nbujo6M2osZB/6wja6/xpCZraEoOF07p+YoX4WoxkM1l
 hjaoldWFKmqKSfiuvG3R8qceYratU98hZxDH+icT80dYNMZtG8lbz1YAp
 36WADvYGBkK+r1G5qSVRBBjq7eJPMWJB1i4K9eCjxZIGyeep2mV4GQFbp
 UYD2XCMGbmOEbJesHBWfF5p4ylmcTCFwu/RmFvToJxCDbZmyOCt6vVFRy
 Qe4uYD11n1N+/cwc+imtHN5CeGYQe5sfNIpw3bV6NrgWyCOZa23k8Gven w==;
X-CSE-ConnectionGUID: Rss2NkyHTZSUDlam17QElg==
X-CSE-MsgGUID: xINSRPkhR76D5Q8tauocSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="45393334"
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="45393334"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 14:33:28 -0800
X-CSE-ConnectionGUID: RdFgBQ5xQlOawQrX+EDyBQ==
X-CSE-MsgGUID: +Z3vY4vISwuToZx+03qzow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="121951770"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 14:33:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 14:33:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 14:33:28 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 14:33:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NWFIuhHZa29MrE3X7r9EFm6PI4gHqcOX9trCza0+y0lWOEP+4u9ktKBMsXWRMbo4L1MZuF/by8h60Rxr101M7cgxzPTd/SxPqDfAoWRy3+wWxGPyqsNqXs7NfEym5qVZIa548xs9l43qks2vP8evjDR7halhRuhABAKAD09WfuiNIZX+3uCndPN8lKTLFnrjOwmi6az9iG3fNJyWtVG/INZhOTHlMD/dxx0Dq9GSc8A2XmT6yxyPo9lntVKuVo7uXggYhdiYsu5LEBFWnUB8JZz7xstJxU0KhHz24Ve+x5FV1JtT8OGJbQDcIV4I86quWKHH4FEPFK9qGfz8a99m9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kk0d8D2WBzyUwps5bJLGv51RGXKL6BWIt9+Wmlo4y/U=;
 b=CSdf3rEeVgE5O+yPRNlIj/3o67fr9q0x+nQm2BDdONvK2456UQGx18C50cAVADnnR01YSnWBzwzHBKyal3yp2mZzSviiyw38MluGEZ9jNzDAi9StgawQhp6uSU3wNut3D/6nmnz7JTatLf6vCmbiIr70p/2vnx6ShvwmaCCInuzYe/wgtWPZSbL8yi3+bQ9xMe7lZU3s6BZS/pgFFOy7ebxSTuXaSsNCOHCi620tbwViCZCicki/qT7fzGiPBMbwGrhQulWphfpyv3VWPrX6R1txlHem0/c/ZMJshnHO2swLCgxqfK7Q3uBzwo3U+9hDe9NyzHI3dbAL0BeVG5ucPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH8PR11MB7069.namprd11.prod.outlook.com (2603:10b6:510:217::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 22:33:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 22:33:11 +0000
Date: Wed, 26 Feb 2025 14:33:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/3] drm/i915/xe3lpd: Update bandwidth parameters
Message-ID: <20250226223309.GI5109@mdroper-desk1.amr.corp.intel.com>
References: <20250217153550.43909-1-gustavo.sousa@intel.com>
 <20250217153550.43909-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250217153550.43909-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH8PR11MB7069:EE_
X-MS-Office365-Filtering-Correlation-Id: f883a73a-3d89-45c2-6ef1-08dd56b58d21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6HPdnUoW38HQlcJHC6uvrsgdpAtlSHKVOcJx2m1ONZfA+OF29Rb0921WTcK+?=
 =?us-ascii?Q?9SNfpv5aEuvfe1k24lUScU9uM90AAOodhEiP6iC3BMSJRCOVif4aG7DBE2ow?=
 =?us-ascii?Q?386dD1bxq2CevVXWPVzpy9/MekFYDO/TCOPidHpvw+ewvQ2NZ4ZdR3+TqgSU?=
 =?us-ascii?Q?Der76/SjXDbbkKa+O0pnAuru6GmXIP8475FtijHdbrAlYagI5VZnCEVbiDNZ?=
 =?us-ascii?Q?d6WtjU5ksWK2VRv4jVYq3RdRaLyAJL8b5eWSilt6/wfEnnuf+k9WixLS47e3?=
 =?us-ascii?Q?CZg18pmydBWdZGra1pqLTbcFNLKMc/6QAYmF3k4bHcd5Wwv6aSqBF1/nKZUx?=
 =?us-ascii?Q?4ZQNtvQhmegSgKHPU71vlbg8i84562YdcGI7UyCoGJGib7liBu4WrZKl/xS0?=
 =?us-ascii?Q?vtD1dqV538LfMzP8MyQD63b8muFJol2Qs8+k+sVdS6DM3YGIB4sSBjKkYxhV?=
 =?us-ascii?Q?TypEaWBgPyH2yFb+Uv2a1hlWcZ4c0tlc0PdB1TLFVJ0dqahgieodf7lBa2eP?=
 =?us-ascii?Q?7YmtWv6+zG/Zq3U0CoPvzKGFdAfZcSakbkTgylWoGiIg5rDNQlQiPDeijx+z?=
 =?us-ascii?Q?X1DylI8evUAX9nes6G9v2FLyedOAU+IJgtb4vEz6bWlhwJr2vk5uYbKMkKsq?=
 =?us-ascii?Q?BfbOXrNb5EB3ieTAc2IX1ifGbcw33WQXiA6eGzboPvGHBOIEj5up0P0CZcCx?=
 =?us-ascii?Q?X4BOb3EugPGmt5BcMKzNgxMnGjmEaJMoMeIoI265X2XuB4eFMkn5HOTT1sYA?=
 =?us-ascii?Q?G/oNx01XmodLFOEkcNmTH9l4L+coR4Tcj2tbwrP7La6viAXaz5p665TM3LWy?=
 =?us-ascii?Q?gskRS0B0Cpd5BW9b2HRi5Vo3LJrpC5ksz7dj2y5sIbLQSWajtMQkl4ZK1Z0u?=
 =?us-ascii?Q?qEzsf/R0I50VzHIqs9u+tL9c1qNwQJusiB7xO0FKFjfRVG3GE2zEYMGfloFW?=
 =?us-ascii?Q?2S9OQFlr965lkAPvUEWABz4MRIUhF3uF7+CJXaPHVzKvCxs3JcBebA5/22QJ?=
 =?us-ascii?Q?1hVEkRARvGhJRymgO/3oNpmM96mhU49lzom/40lo+VC599PdClAvBgqlaC2G?=
 =?us-ascii?Q?G9MX72gCaS+YQgG/SD+dtdHc6rAst+NlNPBQeS6JvEI5A6eVF3gxw+uC79sD?=
 =?us-ascii?Q?b/6z3WGZ4iHq9Dv0FFN3PaP8ZSoFTXopwUosInn2pd0ze7dYfn3okP29HWww?=
 =?us-ascii?Q?SSA0KmCAUbHmsnvtMAY+SrNeOeeSqhNxQitbGmwkuZ6L80m/SiHPOS1+5bfs?=
 =?us-ascii?Q?n+FEJA4Z64T0zeJ5f1ijj3B0q09kf+Upyg8uwCSaC9am3S/16NDQbIEaTuzZ?=
 =?us-ascii?Q?TY9mcL8KdZli7VWBfFuff/ICyam3P3jXv3spywZZH4CeUM+S3PvQVKFTG/PR?=
 =?us-ascii?Q?YkVt05NNXn66OOhNq+iRhElAKZQY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6EJ3czseztKX68wuXGzitagrK2XTO9pVTjPkIH+rG4tw0i6auchB3jL9Tqrd?=
 =?us-ascii?Q?READNUd2UzF56N5DCf1GtAK6zzsBIEHGLO4XVer3JNm2ay/9qiCnRmjn4eHY?=
 =?us-ascii?Q?VeCMZfmxm9f+UBruVM7vKJteEAE+DNd33S/+x2iOzWdrG7mfL5aJMwkZS9HE?=
 =?us-ascii?Q?vNQhbMFn1SEyExkUvKGXcBzLJimHdgVYS1h6FTm7sl+LPwWP9f6j6w1KoeMw?=
 =?us-ascii?Q?LMyLKoSV5jYJmbG0Xu8tVA7cioT66vp3FWSWdeiLUhij5SvcwwpR9uqIZY3F?=
 =?us-ascii?Q?dHsgshsiD3R2+YR/9QRgY2eBh+pQQ4/ZwVDeRHgmKn1dczvgcBaQoEl1Ryk5?=
 =?us-ascii?Q?1h2tD1PfCOtyB+Voqr2IKxy8GR6hJpsGZ3t5OrrQy37T8NBdV2/lz3ZWxkqK?=
 =?us-ascii?Q?wTcXbx54hcwP0xmptR60x4BboAOJZVKeguA3gkRTn7fUGdRmf8T0rWZ2Cn51?=
 =?us-ascii?Q?HPSfF100JeogfCDrLUTJ5oB9bjSmscooDaukuzSwrP5Fr0l15iii7iiJElKO?=
 =?us-ascii?Q?iKX9x1KnCVAkGnEQgg++9M9arfILTzbpKBehr/a6ENNkmrSloleAdEQAbBzx?=
 =?us-ascii?Q?cZKl/YFbd+5LHP69wJK4MN/ope0DFWkNtdP4hcRRxKry/CN0sQ0DFiN8GPxS?=
 =?us-ascii?Q?vAAag+J5dvq5/CwTVI5ivWLtjKGmjfVg5c2ufKptpdBi8en3ZD8Grb7ph5cH?=
 =?us-ascii?Q?7Czl9cZff2ssKHXpr9CsrvAl9w4wo7knmKhz60kN4E9Wd6o7Hgu7GTV/F9EX?=
 =?us-ascii?Q?sC2BaI1zh4EavaDXIjWuFMullRC/UEBVifP+wxArtyxoGok31IVBPog9b/cu?=
 =?us-ascii?Q?NFNEUa/pec6bzy3m34MJBuvEpx/qjoKwcyYP47gjHOt6BH0FKw2z/CeoVZgN?=
 =?us-ascii?Q?iIINFAUxeFXDYkEqaRQBKWETkR1VofshwuTLq0B587U3rcBHwDFfG/rI/FuC?=
 =?us-ascii?Q?dGLv6cAUUaVXFBVyzCG1yO8+ivIaCXDEZgwxZ+zzl0CQ+g9uXmDBYunItLqY?=
 =?us-ascii?Q?W82NgvMNkAHEyz5NzpQPq5MVIc3rBF2GFYLqazxYkujhJ5UV6n7ABRNTCT92?=
 =?us-ascii?Q?4KeY0MExumodWPn9HsrfeBPtm7yuqVNO3ryYIzWhto4B4+tr+AEiAPyfXSUJ?=
 =?us-ascii?Q?kcKZCnX4oIvdORQQFVsYXD2fl7+E+aoSQBsJj0UIChEn29d9F9yUbRgOT0Va?=
 =?us-ascii?Q?sVjCYw9GXQsD0x72g//Bs9A3DHUyjeHQYF6ZJom1DGPdA7IHKf05+vpkIIM/?=
 =?us-ascii?Q?NLCdOVR1HlSSiqemM3W2qNomQriRPqPiR4MGkVbSv8cEwnqCEAA05t1xPD80?=
 =?us-ascii?Q?6WKaiOZNh6V15XctRDVQpxHJFePQzMYCiYyQ4ZqG1lsrCqFCJ9NvRlRZyz9/?=
 =?us-ascii?Q?KounJc6faktUyggea5QteDRebWHNqjwPaarLRLdhE2UU9JtzXpNY9LltuNh8?=
 =?us-ascii?Q?viqUW5hdq+4GOA3s/isYdQIfnfKkePrzV/GOZRRDROaWfjQ/Py67vkNw2EEP?=
 =?us-ascii?Q?B5aie9CqdI9tjoThX7OeaX/I0t6lhxGMCONhPv+WBsvJFLugRXTyfhZ3g4CW?=
 =?us-ascii?Q?Y+bc4rRFrTAC14rcmx4eADmCy73w/5n9PwAIoPtGKovTm1RWqoAfK865AUpN?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f883a73a-3d89-45c2-6ef1-08dd56b58d21
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 22:33:11.5810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: REKQFJ6LAbTyeVqeLr4eRoY2HmAsM+X7xpCFfhVsSlGYuMxYWGOVZ6zzli32BLhA2izfLDnyr1ui5Ktzjw/HBofU072enMGnz95LqS8AQdA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7069
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

On Mon, Feb 17, 2025 at 12:35:25PM -0300, Gustavo Sousa wrote:
> Bandwidth parameters for Xe3_LPD have been updated with respect to
> previous display releases. Encode them into xe3lpd_sa_info and use that
> new struct.
> 
> Bspec: 68859
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Matches the spec.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 51b82979a8e4..32096d3c4b9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -404,6 +404,13 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
>  	/* Other values not used by simplified algorithm */
>  };
>  
> +static const struct intel_sa_info xe3lpd_sa_info = {
> +	.deburst = 32,
> +	.deprogbwlimit = 65, /* GB/s */
> +	.displayrtids = 256,
> +	.derating = 10,
> +};
> +
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
>  {
>  	struct intel_display *display = &dev_priv->display;
> @@ -759,7 +766,9 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
> +	if (DISPLAY_VER(display) >= 30)
> +		tgl_get_bw_info(dev_priv, &xe3lpd_sa_info);
> +	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
>  		xe2_hpd_get_bw_info(dev_priv, &xe2_hpd_sa_info);
>  	else if (DISPLAY_VER(display) >= 14)
>  		tgl_get_bw_info(dev_priv, &mtl_sa_info);
> -- 
> 2.48.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
