Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DA1A48B19
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 23:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E865910EBA6;
	Thu, 27 Feb 2025 22:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J6xasq3Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D7B710EBA5;
 Thu, 27 Feb 2025 22:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740694088; x=1772230088;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/GL9/HC4jjxaDUTchocmxUpYwaJPHrEq8VO8ib0t060=;
 b=J6xasq3Zh9s6pkrKY5YF+D84oSb4f+/dDiyrsYpE7smheIgF4oWoVKXX
 Gj+GJ0F89njAdcAJPCNZtmGBcE650LRPW/TBKYRsKyu8Nfb3GPV2qaNVu
 HFAH3zafeJDkP6XLwM9S+v+jRWPsKAVDKUkhSbQBk4/WmiSVBS2onK/KW
 cGAhUpIhtvrStyK6U2AD6057oyKsW5R3YfMuT7igfWawbcc7xpdGzoMKj
 3EFSmxPftYs6W6u8HyWWA+nC4CC5T1NVFHh4Bapf4ZZD6CIwBTcOWyZbl
 CX6aLUI34nJ17OUMOH9PXO4U8mS3W6MlwjAM0m0vMFWfdlCRWbDhQIM7d w==;
X-CSE-ConnectionGUID: MJzxeijMRaq0+1/3s68wsA==
X-CSE-MsgGUID: y0KSozCKTGOfFVI0iNLlwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="59020540"
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="59020540"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 14:08:08 -0800
X-CSE-ConnectionGUID: W/Y7qKeSS2S8Y4/U9YO6eQ==
X-CSE-MsgGUID: kXa6ddZlRiyOknOk0DALsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,320,1732608000"; d="scan'208";a="116952741"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 14:08:07 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 14:08:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 14:08:06 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 14:08:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=otLSvbbcIOYeQsl3LdxmokDWQQM0TTmI9OodYEnDRScjah0LplcQ14rcae+oNe86heO7xjdfYV7HdMkjzQdha7Sk18ddnO0nUJWq+DInppcAL5hk33izZL5Ki9RWi4DTWJNcyFpgWGxydqYVHiuEfhI4szc8+JF09qd5ltq8OnIFCuCa0p+UgPD/VRfzuH+0EFB7EGdWThKx744gwuW+lWuqvfs7xQ6Jd5fhi3aGkPHf74QpxnI6hCBsZKuRmbXJzlJVZWw7RTTPw5jBwBwN0PXEg0v0QXRSSfPqvN2pcDafTiD/xDa8rb1aqSa5qHHPyLbCbJAVSVrRgaYbnujSjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1d8d6LXrzWAGJwnR14bTrjoVh6NKSwrYF3wcILQIK0E=;
 b=JOOPG7Sy/4KvCBsNiPgO45clEgRwMGTxHYBBdKYtF8Loz1GNJz9H7Z81i28BC4OmLSslySo5bp9CaUV4GYqtnMYYw6UxxWqnrGrAGUKaqKdmvC43p3FStJusxKFNMzPFhVah9tdipjDLcYuL5viPAgRox8Cl5mAF7WDAVY9yU0CikW/Jh7kZg09cypFRRCGC1xJiBsGFgCAjnGbK5AqzTS8a+Ksl7hCKUb1TkD+EC7DNlr14pJvlXo7T0K4+C7FK0G3A/8vqgrG2AjQbeg4ICyEexbMtMzwMm5MIcRk+zxfR8YhCqktgllXcP1GW6YsTA12du9ESPoUxwcHXbSrtTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7568.namprd11.prod.outlook.com (2603:10b6:806:34e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.25; Thu, 27 Feb
 2025 22:08:01 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 22:08:01 +0000
Date: Thu, 27 Feb 2025 14:07:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use IP version check for
 Wa_14020863754
Message-ID: <20250227220759.GT4460@mdroper-desk1.amr.corp.intel.com>
References: <20250227-xe3lpd-wa-14020863754-v2-0-92b35de1c563@intel.com>
 <20250227-xe3lpd-wa-14020863754-v2-1-92b35de1c563@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250227-xe3lpd-wa-14020863754-v2-1-92b35de1c563@intel.com>
X-ClientProxiedBy: BY5PR16CA0034.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::47) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7568:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eaa5da9-70e4-4da1-bef6-08dd577b33b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S2/ZKh2Ma/Lehbu2Ji4xSt5OoGs3s+riHx4Z3SfWOj4CC6L6Z9QxUxTDlWT9?=
 =?us-ascii?Q?zxkO6GYp6eJ4q8eZqNXMwNKpI0rPPd5bx34edRMWpKutOIq96rBZDatTUkbm?=
 =?us-ascii?Q?Vp9kO3Hx4b5wV68bD6y98pEUUWfZAKU55uD1X2fhffkTw2ITBYNG+ALeWEoc?=
 =?us-ascii?Q?2w3cMWouWAI44ybuI+dBHWBzdXSHIZ6d/2sxQ2FTMeb/mJJsZ1Z8SUHasaPT?=
 =?us-ascii?Q?hrOrcEgU0gBcnc8ElpAmOr4aS9zDxdrcRqluymzz6THNpd3e1gNoAwVJdsEu?=
 =?us-ascii?Q?sQbGt3ZB66kh5ZykGNPlCdgIs9JJYqovVQgkzmgKvhm8xXWtpphnPAEM4JM/?=
 =?us-ascii?Q?VyBV+CvtDMnOPnLoZSU0iP5VcSFptjVgIseFt2orTxX62jcHvYB72E3rMNS+?=
 =?us-ascii?Q?NxI3ocXSHnUfuUFv3cBkxJCGV75caNbVFDDFomck4e2hFeIpK7dhFxoheCRE?=
 =?us-ascii?Q?kSzBQSpLQ1s6KFxrC2nb8VYoa5wEVkT3vhcYiJv/XsYWWlmWEJVvl4MU9/JF?=
 =?us-ascii?Q?zq0uj0f4cVyDkAgZ0IrE3GTDShz8YBgclkPqzWclwnTJiucMacIZM7uOUczx?=
 =?us-ascii?Q?pLLI2MX6b42/wHtl0iXBH65OZr4CsnBirpQyzC31geQtCN/OHKxey41mSWq8?=
 =?us-ascii?Q?zJjk+JmEeFr3TRKeomKYGUoRT9C6/HMdr3jSXsRYIdGMqY1rQ/AM/IksQoVe?=
 =?us-ascii?Q?MkBuYbzal4FR/Qsz1QjU6J1YE4b4VgZYULN1rI/jD2cQ5jdWfsG9PotxZX6y?=
 =?us-ascii?Q?g/Yx8sSz16fcB3Re8IGOhvtTZRVjHhu31mxauZJRqt/Ca5ukC3PGOUKvR5RB?=
 =?us-ascii?Q?Z71Xk+AinGCHgwNMhUF3x59ssq8iAyafqnZRszlpnBh86TJ/76bowNBWomI8?=
 =?us-ascii?Q?ZPwvnicm7Avai+yGg8DG3pypTv+ibwr5ZQgwO6Zaj15FHPgVsdzmvPGNCopY?=
 =?us-ascii?Q?MFNmh5njkt+tFh10B5sAf+u3U+1fiIBZfm17L67z2O5KDjXQ1v0oq8PbAMZn?=
 =?us-ascii?Q?0IamGJC3ZjePABnKPYtM/ORF4Sluvg/3ubZozdoqu6dcjpkglkGVYoy39H+W?=
 =?us-ascii?Q?4IxLNpI5yZ0hAck9vu/NbLrfSybhWks9bkTHgd1EpTIaoIi1RbA2cUlOsXjl?=
 =?us-ascii?Q?zNvo7sabW6ojYcyWq8jfI604MTpAWyFHX8LKS0Y/BLSiUNN9LazEMdMKlIjy?=
 =?us-ascii?Q?uLoVfM8OZR/Ij3gtyGgBoGNbSKSzoxbmffYweY6vvq8fEL+wL7aNhXSwqAUh?=
 =?us-ascii?Q?29yKlcAApnF5iXzINfEqwfQ1L1Kbd9GYDjlV+m94GiuChXO4ewZjfgjDgqbx?=
 =?us-ascii?Q?w832aW8/iCXRlLzG+xuRUxv6Wa2fVazaOXS8CXR0dN5E+znAtGps4WC5cHIu?=
 =?us-ascii?Q?KCGtCvG17H+IPYWG4KHQ5Sq9yao0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wB7GLoQVXkkNSKOeTDCE8aYlGx9wUD4Mgmnep+tte4zxPaVkftpWDUPdS95C?=
 =?us-ascii?Q?BVZL/Z5xUAr8P0G9MdlDjoebJdJnljP+8jPmD3aAuuHh6IEV5ZI/I0Ky/spP?=
 =?us-ascii?Q?CqXhQce4PZd6glCYYPcqDjih4eFb8Zhhw8JtBrMUNG6CN+izNUhSpzfjPCBs?=
 =?us-ascii?Q?j+PSpn5Kts/83YSGv8chj/Yw2xZ9Pq1pN7D0Ux7mlZ+VuI4FXWNvLcu+w2Ov?=
 =?us-ascii?Q?GuGaGtFSxfe6HGRs9VCocMgsXocsqERBWQMshTsF1KCRjsS/5ycYFLq7OSRX?=
 =?us-ascii?Q?RE8bL2vHRjOhs4Znbt9/4aGdRgSXlAp7fV7pk0Ub9PBiGXZdoDk/L5M2speR?=
 =?us-ascii?Q?/MvwBuasMntYFiEY0GrG0T/sg24alCiHIpYZPcMs6zCvVnOcfE9g2s6/9JhV?=
 =?us-ascii?Q?waWKRjfNHZSzgiLeg/qfk9T6gh8h5rVAKv50x1uTxVk1RZJjkJ1QySKkB9BU?=
 =?us-ascii?Q?jMc58fLy8yRHCIohYZL6d5CDmM5iD4K7PdrCbv2CQBnKLxuwh2L0wvdjG83i?=
 =?us-ascii?Q?nJROP8z43cltekpXiOCfVuRrmjx55SMLGeDPaLYdneY++VG0kQ8XZJgeSmAW?=
 =?us-ascii?Q?jSYa8eDxTRfZ8dLbNgl7p12xyWvLkRtFg3GouVMbK74o4mkQj020THEEWxq9?=
 =?us-ascii?Q?Z45+0MzVAncy9oV16J1NZ2XPIVP0XBqMawHUSFGuYXDX2GqgUieXbkgeIUyP?=
 =?us-ascii?Q?UhakBBvJhI5trGjRvLyPqDpDIsQGah2aLCfSIUDiAOquEn2Q8Co/3wFcD5lk?=
 =?us-ascii?Q?lF62LBx0nn8mzzgEBmFUY6ZBqVl2wFANADTvo144kCLPJB6pmALZ75l1eya8?=
 =?us-ascii?Q?KDeG1qpnq2LXMfaTs10AnDHkYk3eTCg+JL19RM5/hcoqSqq7Gus/7kzSIKuZ?=
 =?us-ascii?Q?gFS7kUaK7Blgk0LMTTOlfJ/f0udCUQ+QlLWxBC53wtLTwfaZUGC8uVUIIFr4?=
 =?us-ascii?Q?GucWKAgmeyZ3uszFmYXmUsiQ1X+o3fQPmhfJASfIJeV5th4VSHq/pc5KAfP8?=
 =?us-ascii?Q?x55z5IkIZrQNL3hrp8biJA99nirFhCu0URgpSBGKPAtg2lcfHzrRq16gRsvA?=
 =?us-ascii?Q?pIzR6FeR7f+pBGeBxQ60XfAzMWtQtXXfilGOtUMTHo/fTbx2WBwPLG7rQUfF?=
 =?us-ascii?Q?lHycaHwdcAhbFbcEkFGvbcUObmlBvppn18vz5/Ms38ynyAWD8xZxkNKQrsvC?=
 =?us-ascii?Q?8D9/3Ej2gWaVd3EO9NjttmdUXYMMYUxZeuP2rKFoN9bUOe+bmASnalQR/auc?=
 =?us-ascii?Q?SzrtX3+iBOJ5EdefH2hqD6PBrJz94rIyRuUGYhV4bVJNKiDyHiXFPOa3Woor?=
 =?us-ascii?Q?Fk5cq7tVrXNAwG+Gr3fT9rkOk0Jox5OQMpjtb3gKI8rP9Y+RjhbYmxm1nr0y?=
 =?us-ascii?Q?CWSCFzon63nbDrEljd5C4yf3VKMX0N0pZU0aFUJboqsUMs4Pq/l2IWwKO5/Z?=
 =?us-ascii?Q?wkXzxkYLgNAUjgjDZng5i0669tJp8o4bLA1CCxwRmSCNQ83ygxuFK9fEy8/Y?=
 =?us-ascii?Q?8m6Ck74y+SEOzSXx44biYno2yRXdqetWaUMSLSwHs3vfTg5qaRILne8HHGPm?=
 =?us-ascii?Q?25zK0QWOEACMb6QuCr6J8hbdFtcG5SKFUG/OUy3laruJq86ZAzn+BLmZsPXA?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eaa5da9-70e4-4da1-bef6-08dd577b33b2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 22:08:01.7988 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dia8pNF5vpUIFI7l2eThAWtiUdK2raTB71Cu2I4fjZyYhPzS7YVQ8UEbM/2Joy6nfXOdlWijRhkNsJI6OEvEppg25PlhQKbJN/ERLRzOBtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7568
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

On Thu, Feb 27, 2025 at 05:28:17PM -0300, Gustavo Sousa wrote:
> Wa_14020863754 applies to the display IP, so we should be checking on
> display IP version instead of platform. So, let's replace
> display->platform.battlemage with the proper IP version check (14.01 for
> Xe2_HPD).
> 
> Furthermore, for workarounds, we should be checking on full IP versions
> to avoid applying the workaround to some variant of the IP that could
> theoretically appear in the future (which is likely to have a different
> minor release number), since the issue addressed by the workaround could
> be fixed in such new release.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index aaba438ab41e3c1c06d609593dc40dff33785d3a..115c30a5ff70063850e45ab40527d1c17d0173b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -190,7 +190,8 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>   */
>  static bool needs_wa_14020863754(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) == 20 || display->platform.battlemage;
> +	return DISPLAY_VERx100(display) == 2000 ||
> +		DISPLAY_VERx100(display) == 1401;
>  }
>  
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
> 
> -- 
> 2.48.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
