Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD388D2220
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 19:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6771C11244D;
	Tue, 28 May 2024 17:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cod+qgIq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A74811244D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 17:01:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716915717; x=1748451717;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=py1Iqo2jno+YyZqJlxjwF0wC/07RpnAGbDd7aVJV0os=;
 b=Cod+qgIq+UrzdiY3OITFOHIXyY/l88/WNBQ6PUVSuJOpx7OV7gfw0RtC
 xDUH/j6Tgbky01Il+T1JQemMKbx1SuQ+NtrECVo+kvd7zOE31pFq3fqcU
 gjaFQ0JW8SA9O13XXB1O7KWwTZw7duPnfJBcOGh21UOvVGYEVofyMrc42
 pzwVUi/QeWgKpx6q01l07muCYDyPG2OvKtvxWNYAPM30xLEm/a2cmFDPG
 JdI699s7jYbY1Rl6BXKAKDEONP3vcuns7QyhK41Pit2kOvuKPW8jL73MD
 NnlfLA2o0YnAarkip2QEn07VH65GFq+Ha5Sm1FOvBE0IebP5qfvaLjjSJ A==;
X-CSE-ConnectionGUID: xv7mxl6AQDeMoGGCQRddSg==
X-CSE-MsgGUID: OVDzG9VxT2aTPV5anzB2AA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13119710"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13119710"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 10:01:56 -0700
X-CSE-ConnectionGUID: ZuevZIz/Qg+ZphY2GBtSoA==
X-CSE-MsgGUID: ms7t0a0fR4uRWqHZuE0+wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39960272"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 10:01:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 10:01:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 10:01:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 10:01:52 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 10:01:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MeCwY7z8JyFV62pWBwtPvsMu3kvTnMBRAoYNe/9/UEg7gBQBBMewdnaOLGM5FVewXpXdSlDKp1gKJxGluwggn0RXwyZHoYEdwL42W8Nr3C+c4AY+iLI7Dscc1DRTovtN4nh451h2qTcsN48S70y1p/erE6TJ4Vaskx8D/2g9UvPyOgYxa5+ZMyvh61JcLobh9YUUwkAXEqpmxYiniQ4tOUwvh28wmb8aYnVHGviXxtQ3M8iOE3pbccKbLTPvefRLs0DtwZTG6dy/H/OZw+ElVSotyd2P7lmvYo+7rz7VCWO3lkaxAwXj5uqjBYpw2+k0QG9SaZW5nH41eA18GZOU4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jsjbci91fZOxH1giYxu9h6njUpVNNYAp5gHw4GSZUKU=;
 b=eq1YvS3tcEAJCahn1bGjQBol6D1jSyIrf91JAUu+yuzs2EPR3qciV64MHC9FP/w2WQcggwGjhOnq2J2B/KxBaOkJfr53dulUPabJfCZi2WST3lS0sSmQz9pU5UXMqhZCByfAFDG4Tdx21d3WmZ1RJ79wuYidoICRWEBuS4nXdHKC2xqzn7KFnA/7hywTgFFAyQf0scX3mxVpwUFOzxq/CXsM3fKO6/iXnYSHsSiroUCxgugpvuf/Z2Jm7wz1WKRwzpMZQyVC2cUcMn7cuRIWinc9lfPh02jrSqkhegE0g07IcOzKugAul0h+ingV2h6diPkCxaewMOKBAEOuYemWbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW3PR11MB4715.namprd11.prod.outlook.com (2603:10b6:303:57::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 17:01:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 17:01:48 +0000
Date: Tue, 28 May 2024 13:01:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <ville.syrjala@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/bios: double check array-boundary in
 parse_sdvo_lvds_data
Message-ID: <ZlYN-VQ4xtC3Z1Vs@intel.com>
References: <20240528112901.476068-1-luciano.coelho@intel.com>
 <20240528112901.476068-2-luciano.coelho@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240528112901.476068-2-luciano.coelho@intel.com>
X-ClientProxiedBy: SJ2PR07CA0001.namprd07.prod.outlook.com
 (2603:10b6:a03:505::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW3PR11MB4715:EE_
X-MS-Office365-Filtering-Correlation-Id: b1c8f5bb-08d2-407e-45fc-08dc7f37dc9f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XPYSr4vpyPYHJooaL64XUPk9Qv2GUYZ85iDPG+9ZxDRq5Fo2+xeLlv6Bu3zc?=
 =?us-ascii?Q?b+UVLPi1p2k3gROm0A30nN/eOSxSCBIHvL93hMDiQCctN0zU6Nccedkmr10m?=
 =?us-ascii?Q?5Nv/LRTQCFn5PVREiG/sqobUQTysAoYSl6E9cyjxig0f7GFQEs59nt8/nZTk?=
 =?us-ascii?Q?3QxckMIuWnzDCyFIH0nK2sJv54S1rk9G5E7Y6XV52Og5/MfWxMplD2b+B5by?=
 =?us-ascii?Q?GiUGnUH/nginvODZVF0a3zlYpMwbhJhLyuaPT6seD2YUtuB59R5dTpfZbX1g?=
 =?us-ascii?Q?JN2bMTOgqlZj0HW8qCL+NmoCW5ymYk3owhjH+3SCG+7mYl5dMSnt9dOcKtVV?=
 =?us-ascii?Q?NKztm/gzgaw07JFZBqbmFvKETsCQLd7o0PK0MTwggnSbDrtyX1t3jcsYqIUh?=
 =?us-ascii?Q?70axhAYHuUDOvnj4RgBk2+K9NIgSTgM5sK6Sh4HgemxpHSEK2LYSDpAZDQXy?=
 =?us-ascii?Q?DQwyqkvMAPUyv7ZbHd8njU0Rgj5/aCmC/uFTpQNllCcT4LaO1q9DRWaVWotm?=
 =?us-ascii?Q?C1rynKuflXZjQi8K5SjWhl9530hxoogWmOewkXVf29Guzdzwf6M/y/KVpC4S?=
 =?us-ascii?Q?bf91ypo4I9Tye6HUn/zoc+I8wlTeLWoFBs7yMJx7zuAD/Xvzqel6eXcVINiK?=
 =?us-ascii?Q?APrXW5LatVonB37NoK6uYqHAqmgHdSH9ecI3l9ydrv/hW4y+heXzh0n6eSdv?=
 =?us-ascii?Q?MsxlbPK6hXvYSjQh1uYUbxQSvXrCuluJ86GLHniCIDvKZNnkGkKmPdfP7O/q?=
 =?us-ascii?Q?z6NDP+GMX5a3DvJtwr2OYTkuay+qewQsW3qpx9+OSoQdiEUCT9Fj8SdypcSq?=
 =?us-ascii?Q?pC00VGKV88+NIvSa5TkqG9lEMEEBqa9KOvP7Ug677fiZ3XmK4warc+vagsoQ?=
 =?us-ascii?Q?WuKhK+hM9GurzBDUKvP+F461vx8eqyMqIbFN6Qcfo3oDGsH6UCIwJmnhU5tG?=
 =?us-ascii?Q?UuhNQo6499B6dcWuFmETq8qAgxe15+q1Dd6oKaEQ2jX7U+2FZtmqlnYWz/x4?=
 =?us-ascii?Q?DzKHUHXehjPP3WqCEEckmGp0UbvKB2GfzcfU/BhG394MwPuSXDqMZj5SNcSd?=
 =?us-ascii?Q?DwoF+3g5dTnCL45+3ZJdd06TLdcCyelESkiwNdTGB/kotKsveaCbk0VeDQ4A?=
 =?us-ascii?Q?zNucuuZPFB0tmOU1StKzbH9J+dOsLKKEyezcb6C8vnReM4DcoqGp4nFzS8fw?=
 =?us-ascii?Q?O2XkkNm+JldDXS2KjCdBrIitTg/a1sp4uGNx94rC0t8zIBMpdtU8MpLQ/XZv?=
 =?us-ascii?Q?hOdQXoKLYKq1/MCvhGhkZ1IHOKDsN3N+Pa8DTDvoBg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ALBpADsyuo6MtCNQMWYVC8ciPXPsqs3kifs5LAgQgE/SABALr+u/e0FFDnlq?=
 =?us-ascii?Q?aJopKMubNRnpGJcyz6BoWSdd7Fdj6ksX5CIhWCobbDKAMbtNaHhfC6uDMYDp?=
 =?us-ascii?Q?fo7qqBXW6XmIfMnyhX97ntMLzhwkKJjuTLjbuwFPP1yH2UxE7Y7SD1vHc2kt?=
 =?us-ascii?Q?zwCQn0Vp5BHDbXaoLM6to/MXVqezxLhZbTWjq7sRosHtP2ymPIughwU2bEzE?=
 =?us-ascii?Q?g4wujD2hDkF6dfHbINeELXxqu1nlaKwQYG2DZFv3Oi5uBGrUbeF9KpCBS+lq?=
 =?us-ascii?Q?6Nb2B6SAjNe58F3kyi+F8cmIxw3jzQI/5kqhihDOX6Mdq/NYLYEra7Ekkc/m?=
 =?us-ascii?Q?sSICuBe413Hfb6IgYF+/471frNJRFG63kfh9zwP/ABY9JqtOdRquVTfI6bMz?=
 =?us-ascii?Q?FydbhJMPT7RYy6z8iFq18FtuVd7Iq+D9jSjs9Q5jZY1CLLWYRoaWbqfuDWfF?=
 =?us-ascii?Q?3bJUPr8l+KcGTN6H1J3N/j5b+Anl90Zb3YQMAxOYemrVcmgXR+V6aYbf6IS4?=
 =?us-ascii?Q?eEr6vMfg0fOgNwRWGiHgZ99ua5jm9x+MWUSzu0sK12OK4t6N7GownJm3oamI?=
 =?us-ascii?Q?JbJwrgbZ44HCQEXYFs2UhG5hbIE1HKnjPmAOPy258eHpmo7+cMurI0aqaWGO?=
 =?us-ascii?Q?jG8EIr3TJcBHoyz5etXW2R8ONi1DqDE/Mfce7uC9ELAv/dUuYsjO/+qmDizJ?=
 =?us-ascii?Q?eXPWtnQirxKDj87B7RCPE2U6VBMXUAy3FpZyBdiD82GmylocgoeOOYPnZA7n?=
 =?us-ascii?Q?tpJCKqinJ/VvZ9X3zeot8/PnbC4FlH26DBTlmbpFN+IY8qQzbEzw7+MImFNr?=
 =?us-ascii?Q?ThKTfgF6yqV4X/Fn/LR6zGAftsvvluvyR3qHsmlBec+4WduxFiO4G789+H3P?=
 =?us-ascii?Q?6sWGB7ZStNzZWP/kGYhjz4jTbGJcsW4pBhlb362iqfDoYnxp3IKLIZ3jYCMR?=
 =?us-ascii?Q?aYD0+NfgXmVBk8HsQ8rz3Y7Dv6ZBM0mgJqKAIbUvLr2yB9h5FopcQg7lBhFd?=
 =?us-ascii?Q?dxVhz9kXsjG6mcLcwMGlEaEiUzy6OWLRA5Vicuf2u/gYzeIv/HWJ9hqojbmW?=
 =?us-ascii?Q?dw5otUi32mMPCFMoXe5y8ceYHdfjm3KTIi+2C6wk8Sz4jQWPqyBaYAgILzl0?=
 =?us-ascii?Q?yfDuptHH/2AFKR3j5vTuERMFnSiFz8Dhb+sc8ZYgBP+CtWPzMiwhVtyX1uZJ?=
 =?us-ascii?Q?vijxRga35Dd+kLhS3uFzgzfoKoXjO25Ep/0okmlNNDoU2ItQqTn99zWHou53?=
 =?us-ascii?Q?edUF0FS0zdXQjoIswFtOzRu7bs05o+a80EPSItGJkeVosVCFpI+SvodPY06E?=
 =?us-ascii?Q?DHRn5lzphzI1RYZBiO5fAPwaBqqEo9AEIVEnjKv8aL9g7DfnW8UPEFPnEsAW?=
 =?us-ascii?Q?ZUCMVbOfI4iiFuCpDD6OwQuJbfxSpl8r+wIVEPRn/1tGFjmUW8/ONwUOLU6S?=
 =?us-ascii?Q?8VsRjT/oDDqKtwLpRuZTQddj+GHmx97/nvVg4x2w4yi5rickQcp10r/1/VYs?=
 =?us-ascii?Q?IpD3rPjIXijWUQa/CVqYPgDRJNZPhnu315+uoHjI8XEKL2kwONwdWuW05QU2?=
 =?us-ascii?Q?N/diSNQYM7TGJD7tUQc0h02eP2hLSmOMjH95Ykup?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1c8f5bb-08d2-407e-45fc-08dc7f37dc9f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 17:01:48.3612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: npu1hs4uTX0rPegNF5Yrei9E3UqdrH/fVPpLSJDverjqYE2UQpOopB3VbhWYQpvsluLAMTz6tA9j3MffiuRohA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4715
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

On Tue, May 28, 2024 at 02:29:00PM +0300, Luca Coelho wrote:
> During static analysis, a concern was raised that we may access the
> dtd->dtd[] array out of bounds, because we are not checking whether
> the index we use is larger than the array.
> 
> This should not be a problem as is, because the enumeration that is
> used for this index comes from "panel_type", which uses an enumeration
> with 4 items.  But if this enumeration is ever changed, it can lead to
> hard-to-detect bugs, so better double-check it before using it as an
> index to the array.

I feel that we might have other cases there that could deserve a
protection like this.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index b0a49b2f957f..128fe9250f40 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1120,6 +1120,18 @@ parse_sdvo_lvds_data(struct drm_i915_private *i915,
>  	if (!dtd)
>  		return;
>  
> +	/*
> +	 * This should not happen, as long as the panel_type
> +	 * enumeration doesn't grow over 4 items.  But if it does, it
> +	 * could lead to hard-to-detect bugs, so better double-check
> +	 * it here to be sure.
> +	 */
> +	if (index >= ARRAY_SIZE(dtd->dtd)) {
> +		drm_err(&i915->drm, "index %d is larger than dtd->dtd[4] array\n",
> +			index);
> +		return;
> +	}
> +
>  	panel_fixed_mode = kzalloc(sizeof(*panel_fixed_mode), GFP_KERNEL);
>  	if (!panel_fixed_mode)
>  		return;
> -- 
> 2.39.2
> 
