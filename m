Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C271953A80
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F273A10E4FF;
	Thu, 15 Aug 2024 19:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kd9idEUG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52E6910E4FF;
 Thu, 15 Aug 2024 19:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723748639; x=1755284639;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ryeNp35E8E2+I1BtEmkHI0NTyy/cMpx91UmSoq4Y4jA=;
 b=Kd9idEUGn03/kSwhVCHZkT5ViZg/E8V3JKpeyr9zotQe9gzht6TUDLop
 F6u+gEHxistNoB0jlBxbnMfXF9Hg3C1f5wzezKPI4yJUhm3cnvnMcZgQu
 eXBwOfN2qjYhO1F8+PVT/kPszRVVoqKnIyB5Bn7EtYREhdWSWuK/tYVcI
 ZVRNXJ/5W3YBkA2daNweWABV5IA+MFotZs/MEdOuQcdUy0RH5eR/IdZay
 ThgoU8uhRntWfyQaDR98aqrliMWTSJdH8Gol+tfcK1eKJnWT5uDV3y4BO
 urE2gez3dBwi7iub196JzpWgqd9Fr3VcxCxOaHnHfuA4Ffv1V3SrW+RKI Q==;
X-CSE-ConnectionGUID: eKHqKvCtQeS4hlYDqHJ5PA==
X-CSE-MsgGUID: XYL7O+RUSWGYIp4iieHNPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21667331"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="21667331"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:03:59 -0700
X-CSE-ConnectionGUID: d99nO127TtWBbELG8LRKnA==
X-CSE-MsgGUID: y5H8h1ICQ9KYOxDg2GrBhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="63626919"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:03:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:03:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:03:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:03:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OoFjlt2wW+xC5ABuHGywx7rrhM5SMeJkT+cDAGAtoMOvWCR+1EK+UiYSXmsuSavraZpQhjujFbxeFqWI2NWmtUyxgKIdI7KqHLQAp2ql9nnAqeCKsidQF1tww182dnZjZe3HFXQWKK2u9GinGQupFAXjhoovoa/7hHoF1Agqup4ZB9PlRpLNqebgTeEbU21BQ7whZlQdXluih0o0qICYXZli+1fas8XHufmdLKqqA2ZXm7uQIk/Tmk1pE9Rtd4Y3kqweUsWxAQUtGzKKGFsnQHi+iX9CgjkCq60GVzt89OAjvWpcp+vEHhNOx27nC+Ds4YTY6bv3HeFNhgY3iVy6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zRHE2vuRBkV9kHNIslF2qpWrgiGmi5YKb79TgJHoPv0=;
 b=LlrNs2Q2QQtG6S4euH6XTwIDQrJPyE0kWG69feRqxUh5QnoUk76rKaQhELRJO015cZXe99SnjWq8OTW1IQ3j2sSArFBrrBmUtueRhcnPGT89ZSWuvfvS04xs5jdRnw9Cup4dn3wCUut3NYBRAnHjgvozezAYbfjaFMA+Wtwuq8xBSw21ZYUgfDgyjYMj+rYqwT2OK/3F/Ol0fa2J9y7vBFESZZ6n8r2xMsJchqJpFaZjtd3NkkSWAv7/HL9n+aBHtxcK1fNTa2jEXE3/LOEBl4DrjJz2HldCTOs2zzbzo+ouo27dkNlIc5U1jxcPf965/smLj8SUIt0A86f3KPKgMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.17; Thu, 15 Aug
 2024 19:03:56 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:03:56 +0000
Date: Thu, 15 Aug 2024 15:03:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/display: convert intel_link_bw.c to struct
 intel_display
Message-ID: <Zr5RE48Z9iyS04m0@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-2-jani.nikula@intel.com>
X-ClientProxiedBy: CP6P284CA0003.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:1aa::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: df9ce89a-951b-4425-832e-08dcbd5d02b0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?InBLP+YsQ/yQib6yaD50cTqTCn3uQLgtwaJvG++4gEhaKZ66TCE5GWeBmoXt?=
 =?us-ascii?Q?z3h5D7WWz5LyiVQBbfRxJ/mKsgaYE+mUcYzFh5YwH2+7QRMnfsYQ6N2jfgSi?=
 =?us-ascii?Q?zwl7PMp9rNl1Q4aH8Znjd7Z4jByPX1/B0jQMC+w4nN5Fr1skmhaJHKICtnV+?=
 =?us-ascii?Q?RxiDvoOxZrQkInfmegiekgxkBK5PlZDhu5JMuiMVwxUaoL4O+4BBUUE+6UP7?=
 =?us-ascii?Q?YUhwafgLNs/BISJkmZOAO7UUBiYSeVg6EZgLDZUEQeGLRMP0JRkJG0o0DGLT?=
 =?us-ascii?Q?VOuCqH2YwobbfylANDia+dXD8AuP8GFj52JFzeD1fK9qF0TOo9nNFf4TYIq8?=
 =?us-ascii?Q?IsyCF3AQGplJlXiwE42T4lNPsj6zwmu7ZT8osrZkuTBpUIjdosA1LPa9AK4l?=
 =?us-ascii?Q?DtTUt2CCrKY5XOInoeuOexzeI+T4qGx8y0fJmcMvLeETzFJSA9Rl2jx4kW49?=
 =?us-ascii?Q?Mz5XWYj9dr9Dx+kkiNruSAPUIjMu0nn/l8ptF0kt1ohEJwCHIl+wSvIUdAbO?=
 =?us-ascii?Q?Lp5F4eWQBTruU+fMwBXC49tLcM3Rij/HhQLKTamVDl2Mzesgl2PaTeAfNhHd?=
 =?us-ascii?Q?e7DGsncUleq3HYsA9vAidT0dnesS9fyosN6Ur0Q9/J3bppWOjppL+KJpDMsw?=
 =?us-ascii?Q?BIryDjD6YoDpaLu52dHlYQecjEMYwd+4CnKl3UpvnMmxlkkPPzEp5rCVplGB?=
 =?us-ascii?Q?KWuk1/rHTa4TGj7g+y1RX6tH681IGA2Wf0w7f8AsS9r8FzcvvaY71LeyY9Tg?=
 =?us-ascii?Q?6C8dDSITFVAg2g740zt/Sfqfz3X7xRAuVkK5sGCXffHAkzP7seCf3QmHRkml?=
 =?us-ascii?Q?9GADDXENaglIy1ruVPtb2MsTi9t1SYGpigLTd7hJ51Se1pX3Xlhn0NE8FkbS?=
 =?us-ascii?Q?ZNR7gpReXGGbO6f59AXS4H7yx2EEXPxrgtJ/sL/hGBLiAfY3/fLRQL+q9vbq?=
 =?us-ascii?Q?H5MqQ49f/BEGDAHZLPTjBqcp+A/F4NfGI2Gs/Jw6vxjShCn49/u4oGXTN1z9?=
 =?us-ascii?Q?ZnoRKv2LDi1fWFBw6m1PgSukbLxgrJ35312ogb+ZVA1bmOa4nQ1gjPBB32La?=
 =?us-ascii?Q?6VU62Rf+PFWDSQolNfMsX6Fo98zT/HpCcF5Feg1bKpAvDLONZrM8icnpsnMD?=
 =?us-ascii?Q?29ujcLr8r5LYKcy9r9taJXIKOE62ASxOGomfbUWyaGdRVcazlLCgZdq5EVl7?=
 =?us-ascii?Q?9yecyvD3ehFnu1SIwIPlR1krkJ8EvdSDM1wqN+dU8soSn9U4+2DgoPa6O+A1?=
 =?us-ascii?Q?u0o6hZqkX3h+vCc3UwIZXcKx++PSfOqRKk42NVRUiGRHpwqtXJEo1NQVdlQT?=
 =?us-ascii?Q?oqIljKz1tVU4eZlWB/KcZ2ru92lRzuGbjfx95bmRa+hWxQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dnk+Ezqi9wqZXRsnBVwDvaUrIhA+JdZVZ3BOgaP2uAcfAr/6UeJFtcgouykf?=
 =?us-ascii?Q?flSIQNslJVJ7KDco6s0/P2gVzqJGEInv27VwOu4Sjltexe1Ga/VUSfzo8m3N?=
 =?us-ascii?Q?BvQ0kHoNq97hOyYI7+TuI7XTvdBeuO2h7ITrZwdF42JtD39i6Twq60RR5U+b?=
 =?us-ascii?Q?i+/OdCLo73Czo3FqnRJk5AWUfa7tD21L9iDX1C+QDdAbHlgrsYISV2fM9Rzf?=
 =?us-ascii?Q?tzRcyPEC1qY7AI6Nc6gZSY94r/td4ELX7XnNjmqQW5xvhoQ7T7f9JcFldbDQ?=
 =?us-ascii?Q?HUFJmih8pwPPNRDwwbeR8Vw83dL4VrSkmVRnbvkqlyMa/NEzVi2spjPmXEb9?=
 =?us-ascii?Q?6PPmVgjaGdajmfJvr4hHEqDIr4rzZINzgf6eQcgaXvxunOiv3XCeHNV4En14?=
 =?us-ascii?Q?0UZDNEiLZnyphbCnDeRqJRzZDlqEIyE+c7dz30kOlVGwgyRTcci2AhCjmG+o?=
 =?us-ascii?Q?47sBwE0fFyCF+hB4W0rYL6D38mTzkesNW/J79k7KenxFI34d3SnXQpCMjLHj?=
 =?us-ascii?Q?lLXD9FLRTiX2UeuUp+PbZHB/MW1uz5vn7I4PrybZ6VGkEIzniwq6bN2UYYau?=
 =?us-ascii?Q?5aOYKEwVplpiRZWYVqA3Fg2u4oAB+EI0MV/2tzB1WFyWQcXt1XE0nn++Wh7K?=
 =?us-ascii?Q?7Yf843cZjNSI2qklAqwkOD/iPiZJ3uw97/jnhxM/4TOn0/fpDo9TghFSagSr?=
 =?us-ascii?Q?0lSKAd84VbbS1Dv+f4ld21O2hlwe6RNy+LhbZv5wJUGHGLx1vArFK1+xgeMQ?=
 =?us-ascii?Q?uBUkYdDe7fVmTp/nCI3Osgt2JwqlXzXdwJ7FQnCECjb0uK6ohQ0KdglC/x4T?=
 =?us-ascii?Q?DLv2SK6z2aUEonl8u5KO9cubmJjGQlbqWtuQxTuvXBaJ+4iU5rw/AGArFj5U?=
 =?us-ascii?Q?7vwL1PHDJ0V83uzl6lwN8UcU9egchtiVhIniZcpwIvzKyx8fZQNUxRaszmSZ?=
 =?us-ascii?Q?YPAYhoN0Dxc6mp7uiGFaOyU8vSMMjiubzp9vzKBR/5kWtmyuEzH+8M3//ET6?=
 =?us-ascii?Q?+U2UjTfxMz1LfTyBf32iWXvMoosketcaljG+0esbsBwOEOM/OKqWmVBxeo11?=
 =?us-ascii?Q?KfIpXftHPy35Yc7aC7emCrQ6pGmHkuM1q2aLMQkaiy+RfdP/3QzGWX64z4GW?=
 =?us-ascii?Q?mLoPG05GzidHB0StvRb8J81qvO14qE/2biMENuKshNWnTWy5e3/1UfCjXFgY?=
 =?us-ascii?Q?zuHp2s2jpHYX3Kz+9fFYNSbGylY6q0wdSZBf4jV6JhRAfinhG6JThG5DJusL?=
 =?us-ascii?Q?9QLPa2anXbVYWWzIkUPcSZn0jTvip/xgabiIKwOBWYe7+HEb3CbwmT1Rbk0+?=
 =?us-ascii?Q?98slIWKhiulkDrR23UJsNH23ZPjMWoj2nrmTf4ISgoe1wSAjHI7xjKBh8wlR?=
 =?us-ascii?Q?kIo66KjGSNUmN8bZHWYtcMC42wnih/C87uG4/+032tKDLuLgg1f9ayRRibKb?=
 =?us-ascii?Q?wyK2oYE7jZ3SBXsb2D0FlaLBIyHm7rlaxhRBuB3LV8fcfW14LMjbir2qqazk?=
 =?us-ascii?Q?OYmOJawNizS/8qy9MSErFx0kZvv4UGmTvlpVt8fjbI1lym5jrmiGalCoSjth?=
 =?us-ascii?Q?tdXfoPhWApNpiBHZZNuTcX5O2iWnnODrl/QbI8dY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df9ce89a-951b-4425-832e-08dcbd5d02b0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:03:55.9478 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FlhKUUnFRuxRky4LtcGScEgBV0mantdLIExGPN/W/owUSoTx2u9d4oxooLmQRRD2apWSsY7izm2lxTqvFtEalA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
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

On Tue, Aug 13, 2024 at 07:41:18PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_link_bw.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_link_bw.c | 25 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_link_bw.h |  2 --
>  2 files changed, 13 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index 5db0724b6520..e7a9b860fac6 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -25,12 +25,13 @@
>  void intel_link_bw_init_limits(struct intel_atomic_state *state,
>  			       struct intel_link_bw_limits *limits)
>  {
> +	struct intel_display *display = to_intel_display(state);
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	enum pipe pipe;
>  
>  	limits->force_fec_pipes = 0;
>  	limits->bpp_limit_reached_pipes = 0;
> -	for_each_pipe(i915, pipe) {
> +	for_each_pipe(display, pipe) {
>  		const struct intel_crtc_state *crtc_state =
>  			intel_atomic_get_new_crtc_state(state,
>  							intel_crtc_for_pipe(i915, pipe));
> @@ -69,12 +70,12 @@ int intel_link_bw_reduce_bpp(struct intel_atomic_state *state,
>  			     u8 pipe_mask,
>  			     const char *reason)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  	enum pipe max_bpp_pipe = INVALID_PIPE;
>  	struct intel_crtc *crtc;
>  	int max_bpp_x16 = 0;
>  
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> +	for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
>  		struct intel_crtc_state *crtc_state;
>  		int link_bpp_x16;
>  
> @@ -136,7 +137,7 @@ intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
>  				     struct intel_link_bw_limits *new_limits,
>  				     enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  
>  	if (pipe == INVALID_PIPE)
>  		return false;
> @@ -145,7 +146,7 @@ intel_link_bw_set_bpp_limit_for_pipe(struct intel_atomic_state *state,
>  	    old_limits->max_bpp_x16[pipe])
>  		return false;
>  
> -	if (drm_WARN_ON(&i915->drm,
> +	if (drm_WARN_ON(display->drm,
>  			new_limits->bpp_limit_reached_pipes & BIT(pipe)))
>  		return false;
>  
> @@ -178,7 +179,7 @@ static int check_all_link_config(struct intel_atomic_state *state,
>  }
>  
>  static bool
> -assert_link_limit_change_valid(struct drm_i915_private *i915,
> +assert_link_limit_change_valid(struct intel_display *display,
>  			       const struct intel_link_bw_limits *old_limits,
>  			       const struct intel_link_bw_limits *new_limits)
>  {
> @@ -186,14 +187,14 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
>  	enum pipe pipe;
>  
>  	/* FEC can't be forced off after it was forced on. */
> -	if (drm_WARN_ON(&i915->drm,
> +	if (drm_WARN_ON(display->drm,
>  			(old_limits->force_fec_pipes & new_limits->force_fec_pipes) !=
>  			old_limits->force_fec_pipes))
>  		return false;
>  
> -	for_each_pipe(i915, pipe) {
> +	for_each_pipe(display, pipe) {
>  		/* The bpp limit can only decrease. */
> -		if (drm_WARN_ON(&i915->drm,
> +		if (drm_WARN_ON(display->drm,
>  				new_limits->max_bpp_x16[pipe] >
>  				old_limits->max_bpp_x16[pipe]))
>  			return false;
> @@ -204,7 +205,7 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
>  	}
>  
>  	/* At least one limit must change. */
> -	if (drm_WARN_ON(&i915->drm,
> +	if (drm_WARN_ON(display->drm,
>  			!bpps_changed &&
>  			new_limits->force_fec_pipes ==
>  			old_limits->force_fec_pipes))
> @@ -232,7 +233,7 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
>  int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>  			       struct intel_link_bw_limits *new_limits)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  	struct intel_link_bw_limits old_limits = *new_limits;
>  	int ret;
>  
> @@ -240,7 +241,7 @@ int intel_link_bw_atomic_check(struct intel_atomic_state *state,
>  	if (ret != -EAGAIN)
>  		return ret;
>  
> -	if (!assert_link_limit_change_valid(i915, &old_limits, new_limits))
> +	if (!assert_link_limit_change_valid(display, &old_limits, new_limits))
>  		return -EINVAL;
>  
>  	return -EAGAIN;
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
> index 6b0ccfff59da..e69049cf178f 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
> @@ -10,8 +10,6 @@
>  
>  #include "intel_display_limits.h"
>  
> -struct drm_i915_private;
> -
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  
> -- 
> 2.39.2
> 
