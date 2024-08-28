Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B18D69632EB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6133E10E5DF;
	Wed, 28 Aug 2024 20:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnG4noke";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27DFB10E5DE;
 Wed, 28 Aug 2024 20:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878340; x=1756414340;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=i4/Ir6eP5gX5ttw6ocNWHLu1eF6FuaopT2MiNNSaFeA=;
 b=fnG4nokex9iFynyXJlqNIMj0d5Ef2z0SmPAdHjiA2LGoqMJ5n69L8gPz
 ua/VosRjY+qX/Yeik9sBSxOfRCoC8TUyeztJ28Dj2dKGia/4OpIY4uq1w
 tcGfIRL1UvO9kR5hr2HY7qTlNSMt8/GECp0rZ+iPF6TieYmsQuOAs79GN
 sAn7J0s0OoUyN1hTsA8BomoKyF+G8xvpTF4wMtyTk3fujijo2oftb1nTM
 0ThUvPj/H9IB/rlXfjk/P5yWMCsJoSRCnN2IKsoSUVsjJ0dvSG7fcwqxK
 XpaCIxL1GYfaAVGV16/wHwrbSV/vM0AA8LDPEJeuKa5N4ZEdEMhjc0Q9V g==;
X-CSE-ConnectionGUID: Wrre4crwSQyzmIMHmcoDJw==
X-CSE-MsgGUID: m7XGxswCTx+Ei6CrQZgfoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34010278"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34010278"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:52:20 -0700
X-CSE-ConnectionGUID: r/aljMyGTUCfQx2op6SS+g==
X-CSE-MsgGUID: RAwQP8FlRE6oI/QWRCzQlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="67714292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:52:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:52:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:52:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:52:19 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:52:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q+O91LPzaF5oSCpXuTXrlKzyDINWAnVJr5g7cV9x8uoPxDqyOBbACg1/gXWwMcAn140r1A9GXKXG3BvOSj7mmIcFDIdV2tI7tnu+LJ9OoC44Y8q9qYVa2u6PwWLjVlVQHq3RxlSrxc8gDE2m/a2YEBm3QGmnihFmOva0cKLPUvvkrumsVW63Gt/82HWZ6NYbo2bJ/9WKrgleaSpuPKv9OG+W6//VWcZzbU2hPYTmViQ96YNPL1uCwrN/OHOAyXJY3IDg9yQ1u6BK1WC8rrHY6SJnOf+LmKnaB638R/cAZpUCyc3oDWotov4YhA7ZfvUPAUP/UQZVGLNiA8FXWyDhvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AG/sIQVMaMMeZy9eXQFZDZ5M0Wo8dazGfmOvssgO0eg=;
 b=vrhg4McQwV/Rm1UHUPs4zGsCFXjNgUopis5xpVv3kP4e6vX/P3LIq3YyBZxqOyakC8E2cwaX2wMBYIusB5XJcMCMl26pOatQvtg9sFOM6zZQHn17i81/GpHXm+irWbNgTcNtPnGtMQfWV3iz4MGDQZY/6lBTWqyfm+ecU9fe5OlATZ91AcrOiei6WKd9QSsRyJYKLj68EwKg4E6p4I/wdwXYViizBF3V2QYZY9zh6J4USHmUoYS66V3iBbYmuK0iJXOlDD8CivUch76Gg1+zjz2VHbmnDBPv/WGo8aqfNIx8xOwHwMMg/30eU+EBKE9s57vncCaKJZSfmCp9FDPoZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6676.namprd11.prod.outlook.com (2603:10b6:510:1ae::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.23; Wed, 28 Aug
 2024 20:52:16 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:52:16 +0000
Date: Wed, 28 Aug 2024 16:52:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 8/9] drm/i915/display: keep subplatforms next to their
 platforms
Message-ID: <Zs-N_Gd3tCBWV0IK@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <43a8e73d499d909741e4b6c78ed4e20895fe1b24.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <43a8e73d499d909741e4b6c78ed4e20895fe1b24.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0199.namprd03.prod.outlook.com
 (2603:10b6:303:b8::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6676:EE_
X-MS-Office365-Filtering-Correlation-Id: 028a0a29-cd13-4de1-bf42-08dcc7a34cee
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wY8wTX8HTuhdNb6MWl3CAVUrUkYnTw8FP2K/wb9A/cO7d4uPDS+8ZqK7Smxm?=
 =?us-ascii?Q?qEPGceOnHLhj9zLI6c9wnGc32YdbMyVT0r9fTTZ872xr8jA+EAmtAhXGRhI3?=
 =?us-ascii?Q?BAN7gfteDJgaED+mM3QHmZI+oOZsIOcsQQHeu4P3qWYIfWBN4QBNXdYP+owk?=
 =?us-ascii?Q?nygjDndUyBu8SIU+KbXKTZLPOR59JXs9pc//5rn3wQ3O9gxpesC1RBiMjW5C?=
 =?us-ascii?Q?bed1jzmX7ojARBKsntJNyWFBoI2dt07mpqvOQsOVGTxbwvxDeyxl2I8UADu4?=
 =?us-ascii?Q?HcxpxhchF6G70fsHdE8/tGfd+Nef303nQGQLJB0fPtS48Md0sLxbQer4fK/e?=
 =?us-ascii?Q?IFw1Zf0Dczxs4DVwlKkHa+ao8RgnnuJ1p7MDgKbQmXzr3US77DimaSeVuiPf?=
 =?us-ascii?Q?69X4YutqjNHOYhBiLxrBkkSnP6RjZswCmwrYxWDbufHM4OARTeId6R8UdAdN?=
 =?us-ascii?Q?M3BfWy0hqU2nqlCeu/7Ey5hBbUg3NJwENPJKA6THdZcofeJJ7/EX14aTCdnq?=
 =?us-ascii?Q?LkPBwOmqoVRrcyPXBUys/CEj2RxWhSn5FIQelqk7IbFAg0ND+bhF7DI8NFvj?=
 =?us-ascii?Q?tgsgnbxidvBFMvioW1uF4a1tm+LQEwFNh9O0qOwm57HuNBNSFRZDm63zP+Jd?=
 =?us-ascii?Q?nyyTdgmwu8GhcZeiCQjjIMnpkoiCA4jk9NyVqvb0xTJQ8yfpIYzZme9NI6Nr?=
 =?us-ascii?Q?tuWOnSUifHa6QKamjwayeiM0kP/yP39ju6dxO26mKBcKDlYArFsC3JLYKkx5?=
 =?us-ascii?Q?eU0xE9bOhpDgA5r/ArFvngrNbbS1ZKBdsVaFrDojdTbaWBDLdKL7+N85jmay?=
 =?us-ascii?Q?WkxocCpmbuxGHTSKGYcrCaZawUTYQLIe1X4E+EJijpSAZ8pRL3Tk85qj50X6?=
 =?us-ascii?Q?W7uJ3ax25EKD6OAt6CGBOKw2XdldPyHx5eIsmAAVnUTOTPWGILWolwftwSUI?=
 =?us-ascii?Q?eRr1TMOrVGnftU0uansUuSoO6TiJRiuDLqgHhWGvjwn1yA9+gGStAFoUdRku?=
 =?us-ascii?Q?pAfzfafv44La/CVOx3aMW534icYA5gsUnO5UsttsY1TkhkVWy5ORr1+4aYdW?=
 =?us-ascii?Q?ZTe/+d3hBMq+Fw+TRvtbBDWGOI/QcYkt3Q8WIYyAoZv9F00dyqL3UHesRxun?=
 =?us-ascii?Q?/G5ysHgEQiDq3hq9N13PlPw/x15kF+pt8cG9QJx+idwJOH2ULCO0+fFSZnQU?=
 =?us-ascii?Q?2sqjtgHaTfYUnXH8e11j+D2QGcRR2lNgSK+zUqE0UKcDK5vLVpOsxKI60MZZ?=
 =?us-ascii?Q?Lv9F9pmYVfEdD5x+qJCXs8mjJTGc2mg8ncJFX9hH9GF5aJDRi6RdZde5rp9k?=
 =?us-ascii?Q?lTxWR248/9HsutAj5BZRpKZ3ajxRmkKxt3xNjbcB5l9a2Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gferLmz09dmVjtXipUBjsP3gh66dn2r705ey49oJuMTpAh//1CSJ5Vc4//yO?=
 =?us-ascii?Q?es8OIXQNfS3sCxvaZh7Vu1vnBTTfrJGtImlZNKEk7zRHFToF3qoRnAzPLZ0O?=
 =?us-ascii?Q?DQ+CRl1X8D/JNbxw+gew1+zBj/zHI+5BP07eXuLtIM5tNWxOgOK5i+atL6jY?=
 =?us-ascii?Q?jV6H0BsUplRRaKW4Okxss4LWrS7t/xTEwpo8UNEeNzRFRJCZpcyBQi6PejtX?=
 =?us-ascii?Q?juM1LxjKojMn+ykHLOkQerrpkyujXKU3z5QSgZYp//3uGR7G13vgGkOcvhoF?=
 =?us-ascii?Q?T9CKUYniPLAtWQDsgTtw3bmfKoxydOQ4MHZ7p2AHdtz+WboasHuhDKdAJQoF?=
 =?us-ascii?Q?kFrTlQMEtGPp5jadwr+htC0fWoLL+fIhtkzE28aTE/t9W99AhIYVCYj9byXF?=
 =?us-ascii?Q?KK3DS1mEhOfzYm6ZA0VOjCcDWIZsD+GLi7G5RqDE48j9N5vhwkaFGz0icmZv?=
 =?us-ascii?Q?NJONUcnhGQg3URZgVtKoSDY1IaiKqwyMeJb7Q/ge3pZvCZRhaz59HRfTfI40?=
 =?us-ascii?Q?s2STwiMxUspDZi+0H1XN+KE999z5j7yJIbO51MXVIJA4A16yhUI67sOfhtMl?=
 =?us-ascii?Q?a3/R6sDlRn2SV0wlkn+7TlmA0rnEXZ0TuAwGmecZ5u+kWCDQ+vw1tmuWyT6s?=
 =?us-ascii?Q?tEz8AIb7pvEEgSgy21GmLWsYE5m6MUngUCh7qsQqUprJm9i4oAHI0Ny+ICfS?=
 =?us-ascii?Q?ps0As9uzr8p8pCL+s7Ac7Y7eQuVP7r5uj2y390CzYuyEAhkWIGJ8PYWzenw4?=
 =?us-ascii?Q?Pf2Kq8j3/uO3ICfNKP15ROheUoJlDuh3kEEwYujdReeH2mpPTC/0vT1G7LUB?=
 =?us-ascii?Q?xo+eEZn/qtU7+A5BzchwurQnh+VR2Tea3dk1OoKrxkdDUYieDs+zfratnoDD?=
 =?us-ascii?Q?68xDL2IjadY5kEFeHmeRexjweto69wDcbTgPu/Nh23liXt9iwTu7IDBFNBmX?=
 =?us-ascii?Q?Y/luJfo2kDG9nL2H1q5RGlrgkYx3nFU0c+OIo4Np6UWTlaSqKbspe6rFj7z5?=
 =?us-ascii?Q?cS3+W/HHPGSQtyN+NwccEsH3+r1sW0vI9tWbJsESve2VD5b3K0ea7uqTqR0/?=
 =?us-ascii?Q?IsFAxA7JS/mAUFoq5nNRN23QNV4a40v3r0Jvjqb4AhHayohPmIvvqVSzrkur?=
 =?us-ascii?Q?aWD/TSdTiF0afAbmCZBFcmkXlTelPafP02rJYiC4s6rYVy+wB8q3R86+nzYU?=
 =?us-ascii?Q?sP4IzvJ08MHIYhdgMA2662s4vKcICiwD0yXHByu44v48TQjC5c/AezX6L4+J?=
 =?us-ascii?Q?mKqgZsI9MUHOtu4AypPYpasIY5/VceJDQDF/GDHINosBBST+ClBnQOXNZoYY?=
 =?us-ascii?Q?UifJ7wyUujxm57G99pj+qJMUm07DHWIlOwiHr1cwCu2B/PVf6JXkj0QHwRYZ?=
 =?us-ascii?Q?BAZ8hU6reh7lXBh/yb9ezKV5FAxQXvNR+D3TKb9pvLT2CZdM23Pn0Gr1N0rN?=
 =?us-ascii?Q?4+CIbWuEkxWs+tRa+dCJn9j0ig+eIpsXodgKRHbNiO+4nmLuV+FZ/qbQeX2l?=
 =?us-ascii?Q?0ifEoURfejj+rZJcQnPaTcJ/qwzc7GPcXqMpkaYwRi9qh59o2S+C9075lSUo?=
 =?us-ascii?Q?T0TLgeGOXJqKv65AZpG05I1IMn+6by8cIfIaj0T+qbJsaMii54e65Ewh0l8z?=
 =?us-ascii?Q?yQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 028a0a29-cd13-4de1-bf42-08dcc7a34cee
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:52:16.5709 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 74mBnTpmKTjnpdv6ycWV8PjuDB1nL8daNuAERoKbRdTZwcNph/rQIeERr0jEr4ukOupwtKpvBK5nX5PPPBJv9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6676
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

On Mon, Aug 19, 2024 at 09:44:35PM +0300, Jani Nikula wrote:
> There's no reason to keep subplatforms separated in the members. Update
> the comment while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   | 51 ++++++++++---------
>  1 file changed, 27 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 6d1f3de46836..86664b999ca9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -15,7 +15,11 @@
>  struct drm_i915_private;
>  struct drm_printer;
>  
> -/* Keep in gen based order, and chronological order within a gen */
> +/*
> + * Display platforms and subplatforms. Keep platforms in display version based
> + * order, chronological order within a version, and subplatforms next to the
> + * platform.
> + */

I wonder if we should do the reverse other, so a patch introducing a new
platform doesn't need to touch the previous one to add the '\'.

but,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define INTEL_DISPLAY_PLATFORMS(func) \
>  	/* Display ver 2 */ \
>  	func(I830) \
> @@ -42,56 +46,55 @@ struct drm_printer;
>  	func(IVYBRIDGE) \
>  	func(VALLEYVIEW) \
>  	func(HASWELL) \
> +	func(HASWELL_ULT) \
> +	func(HASWELL_ULX) \
>  	/* Display ver 8 */ \
>  	func(BROADWELL) \
> +	func(BROADWELL_ULT) \
> +	func(BROADWELL_ULX) \
>  	func(CHERRYVIEW) \
>  	/* Display ver 9 */ \
>  	func(SKYLAKE) \
> +	func(SKYLAKE_ULT) \
> +	func(SKYLAKE_ULX) \
>  	func(BROXTON) \
>  	func(KABYLAKE) \
> +	func(KABYLAKE_ULT) \
> +	func(KABYLAKE_ULX) \
>  	func(GEMINILAKE) \
>  	func(COFFEELAKE) \
> +	func(COFFEELAKE_ULT) \
> +	func(COFFEELAKE_ULX) \
>  	func(COMETLAKE) \
> +	func(COMETLAKE_ULT) \
> +	func(COMETLAKE_ULX) \
>  	/* Display ver 11 */ \
>  	func(ICELAKE) \
> +	func(ICELAKE_PORT_F) \
>  	func(JASPERLAKE) \
>  	func(ELKHARTLAKE) \
>  	/* Display ver 12 */ \
>  	func(TIGERLAKE) \
> +	func(TIGERLAKE_UY) \
>  	func(ROCKETLAKE) \
>  	func(DG1) \
>  	func(ALDERLAKE_S) \
> +	func(ALDERLAKE_S_RAPTORLAKE_S) \
>  	/* Display ver 13 */ \
>  	func(ALDERLAKE_P) \
> +	func(ALDERLAKE_P_ALDERLAKE_N) \
> +	func(ALDERLAKE_P_RAPTORLAKE_P) \
> +	func(ALDERLAKE_P_RAPTORLAKE_U) \
>  	func(DG2) \
> +	func(DG2_G10) \
> +	func(DG2_G11) \
> +	func(DG2_G12) \
>  	/* Display ver 14 (based on GMD ID) */ \
>  	func(METEORLAKE) \
>  	/* Display ver 20 (based on GMD ID) */ \
>  	func(LUNARLAKE) \
>  	/* Display ver 14.1 (based on GMD ID) */ \
> -	func(BATTLEMAGE) \
> -	/* Subplatforms */ \
> -	func(HASWELL_ULT) \
> -	func(HASWELL_ULX) \
> -	func(BROADWELL_ULT) \
> -	func(BROADWELL_ULX) \
> -	func(SKYLAKE_ULT) \
> -	func(SKYLAKE_ULX) \
> -	func(KABYLAKE_ULT) \
> -	func(KABYLAKE_ULX) \
> -	func(COFFEELAKE_ULT) \
> -	func(COFFEELAKE_ULX) \
> -	func(COMETLAKE_ULT) \
> -	func(COMETLAKE_ULX) \
> -	func(ICELAKE_PORT_F) \
> -	func(TIGERLAKE_UY) \
> -	func(ALDERLAKE_S_RAPTORLAKE_S) \
> -	func(ALDERLAKE_P_ALDERLAKE_N) \
> -	func(ALDERLAKE_P_RAPTORLAKE_P) \
> -	func(ALDERLAKE_P_RAPTORLAKE_U) \
> -	func(DG2_G10) \
> -	func(DG2_G11) \
> -	func(DG2_G12)
> +	func(BATTLEMAGE)
>  
>  #define __MEMBER(name) unsigned long name:1;
>  #define __COUNT(x) 1 +
> -- 
> 2.39.2
> 
