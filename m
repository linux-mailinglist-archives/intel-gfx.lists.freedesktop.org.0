Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFC595C067
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:44:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F6710E0FF;
	Thu, 22 Aug 2024 21:44:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jN0zETvl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78B110E0F8;
 Thu, 22 Aug 2024 21:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724363066; x=1755899066;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=clWEJrIyQVkBfV0asZFD5lhGSrSQeSRZjDJTrGyse5w=;
 b=jN0zETvl6CGCbtXUAFHqJciC+TR/m27ozO15alMp/lsWPbBqnLvX+31a
 eSQ5HQ6lWHvpXwhsHTZQmMgstnVHVqlt7RJ2h+Cv6XDymhAwhR8V4FYEc
 61vNS6P8bnUJ5XqoBziCLuvMQaXnQ5lRbOa01k3RHcgRA+XDX1i6XIYWt
 87xtpBcBzGZyJ/7Lwi2tnArj7xi8O9K7rKuhplXB3pYUjpxJ1bci76yun
 fGfKFkA0g5NA4F5I/3lc/x0wjIDLptM7Mi6zx+sPaHdwA3kq44ZPz0tOu
 o2PL5kci29kHe0q7mcs6IhJQzvehN/dgd4Uk1tRdz8b38HrR60sW73peg g==;
X-CSE-ConnectionGUID: S0EnznEdRVS+eFNii25PxQ==
X-CSE-MsgGUID: 61mOVyrmQyylg6zNgXd11A==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22974240"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="22974240"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:44:26 -0700
X-CSE-ConnectionGUID: 4OiY6HlRROqSEUURQ8xsjA==
X-CSE-MsgGUID: K8PgrrFPTHeFMnjfOIv0iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="99112636"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:44:26 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:44:25 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:44:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:44:25 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:44:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IiE2J+rU15U7rLi4zmXj3jMVuwHAPbmE4RTCVUSPAr01IKOJBnV/hBjQZTNpxREb9+61njibgyD4mLpFifsXGEJo22zSb40rdLAFSinyZe2LAcAClK4Sm4R75BtwZXgBYNLRB70Yrsc1A0yTIfNpSaq/bAALU1DCRJrEmPXhYuorepAuPo+H5SoZcUzhMPbbop5vWt8Q3e0A9jdgNh5E27V0wi6mOz4UBCTfjvxkEN1XHPm3FnMHOZ/qFszZwoClE0N7QcjqycuddQ1rURCQRSSxddDQXRfShff3eiPzOb3+DsPiRlWXp3I4QIyAeiZkUgncWFRX3ENdbd5jvEb+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7LJW15FmUIkS/vmWM+EWP46YVkFkOQexCCyhgNNJNgM=;
 b=gMLnxFyT4X9db7LuK06NONYIEop9gLBKDBYS+4LQgsI7JNUc9Ur97VGq7IjWfzLA9TbLP3VPN61PUKsxryulFuzCstax8L8uPzRcBjROn7GBGgjk9TgS38EDKgHIVc2ljOX7aU/NvvVImsI3sx66h00+CryBcjdEzADMrHWJ70hNzdN57n/Qi88xap8WmkeA90D3cx1z8cfs+KsTdKkegiU+h5p5aKxX7p8S7X9dA3eLD/fjXqCZi9dclFH0S1dlH6ZX4z2G0XnCa+7k6duz+NGB7hdvkDD3eeAm5oa9ery0ZCSe8sb9SYWCLqbxPWcHhDLS22JNwrByVqEKu+Mp6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.16; Thu, 22 Aug
 2024 21:44:19 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:44:18 +0000
Date: Thu, 22 Aug 2024 17:44:14 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/7] drm/i915/vrr: convert to struct intel_display
Message-ID: <ZsexLmIx7pkhFhsA@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <1d25a08c62a320133fbb0a89dac3dd1081139487.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1d25a08c62a320133fbb0a89dac3dd1081139487.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:303:2a::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB7424:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d1f0118-bd14-4bf8-0098-08dcc2f392fd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?81qifS2uwdGf/EJXlxp8HDPZHbYmcg2Rmdp3V7/A8H1yD9Z4MU7zo/ACTsK9?=
 =?us-ascii?Q?DDVrFM7E2aPL6IYrkhq4Bqg1Rf+BEXyc7Jw2g5cQTYk21d23+nCgsWG27AMX?=
 =?us-ascii?Q?9J/z/kM9HZaNCpC+lzPDrDZNoTd5ihjr502v5aeigY6/StQ/M0Kofcy2u4X0?=
 =?us-ascii?Q?+fxEACVEluuw2sznuw0L3rjQra/Hq3OwDY0/HzZiSYoBOQo+yjyuBA4L8QJa?=
 =?us-ascii?Q?Ys86urm879mNIU9woPU45giTCBvW/chuTsyOPRPoscPRkmyuofJzIlXaQVLP?=
 =?us-ascii?Q?SOj76H3V32K+iq8B5OSW9yVcPUNyQl8wSQHDnRDztgHQt8bu67sBub3Bo6Qv?=
 =?us-ascii?Q?FqxAKASis6l8ZTPuNnTcqTq6IsXeHLCd9ANmzxbdKsrhxb7TSf5CoBicvN5q?=
 =?us-ascii?Q?XIqf9aWNkZYJEQCoXsXH0x140oFmQnS6IEeTNbsE+wd4WeByS5v9fUYyi4+a?=
 =?us-ascii?Q?/yLVfes9cr1q9poV/O0nP1bewN12TnzU543WO89+pt3S5ELlNgNhvZtbN5Vp?=
 =?us-ascii?Q?SV6UkaVJW786G8diOHT/MkpZ/lUGZTIrDUAs+zELAvfR6hZgQw0JHw6qAVh3?=
 =?us-ascii?Q?DMAH9PDZSM19mwq7mZr7lRpGFTcC1upaMunh+APzsARpaagIJPeM2bxr4+QU?=
 =?us-ascii?Q?nC3yHlIglih8dUeqZVrXCt3dbtrn2s54u7v4Xsiqm9qsMmIhKn+1PpOlmYOW?=
 =?us-ascii?Q?6jzhZ1s7rKQVK0g67qvQ7sw3zG+cVgwkR7TGj7NZZKHjtzR6aMlS9rlPsViY?=
 =?us-ascii?Q?LRg0Rp605fjz6+E8dzDtRUH6R1fPjtrRNk7bi8c50UXk3UuwcPC8oavcqckL?=
 =?us-ascii?Q?aoTb9Uq3NhN+fohKlTCK9JdJtnAzXpdYIf1g63stNmW9YszM+a0XF6W/KAYP?=
 =?us-ascii?Q?8+GQOgwSq4leCnH7YvPaVyo+Sx+IHiGBWKhmgwtsOnQfReZwlr2c/1YqMK/q?=
 =?us-ascii?Q?8Q/MM9e02u+e2qAmdV5/E/+9UkwmcQDYR8LZmab0r3vNHy3DUSoVwtXfv7b0?=
 =?us-ascii?Q?pUAE0x/uxe/HbV+EeLejRlGFR04OpoUh9vzqduI4zyuBRsLGI7wyFxkwFJwF?=
 =?us-ascii?Q?fioW2toT8XjoNgVU3nmIN6182Paswddhh902mUEGjDTbVSEZQIeLH6Hut0zT?=
 =?us-ascii?Q?ftuhANHvl89Mc+O2HquYFo0ry7UJP/T2WoE+cIt2JXAmaO3svV5NhdbL9mXR?=
 =?us-ascii?Q?vpXuKZIcB8KbvWVF4RtuQlSzXNWBRYtW6Lglirfqlj8Pl6GW8Rf554oFBlBs?=
 =?us-ascii?Q?kbMt4KZ/9TumFH/F4Qo7+e5cSQJs+HQ1DyHRGb4GkYraaWRupKs0oOq5Whyr?=
 =?us-ascii?Q?qRdvTa7/je2Vw8YSgQGo0CefuerM+OkenOaXZcxRK9NvWQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pVWgUJ4keWWL7PqwxJcmJ3uzKWT2vz3YQJG8ZUoBw84JImbc5KhgMoJCfBd6?=
 =?us-ascii?Q?DjeS6NyuGkHLueLoKeIRoBezXKPtxW2GEmTO0hsOld+7dXE3Hzyn0Y/DTHgD?=
 =?us-ascii?Q?DQQoTgYVdRf1wQOxEWuWbHw529rem4NVJCks8gwFnUda8B5OAl/cgzUbeQvA?=
 =?us-ascii?Q?zgmLZppoO38Nh9VTRGSL2IJJyobCVYddRMw1joFnxCcOiFxWm+2IwAqHOdd7?=
 =?us-ascii?Q?k4MJynsF2SWNBcN1rJNyneN9NfGLirjrOP6qpYlrAiKUjvcIFYbfqivsQiV8?=
 =?us-ascii?Q?BO5uvhrcanYLr5ShadxyEGVhNw9gXwYiHYz/AW3weVhW05/BYbSiKRTCzJwH?=
 =?us-ascii?Q?Stu/WAd2wKKdBANSFAkDRQTCrkJIfnOqLNgoNKQANABhc1gapWtZ3RWboIFO?=
 =?us-ascii?Q?sMXpEEjzkVBf2+SUrqMLA9I/aNgPvcYCI76aATjq8B6qh64QI1OEw20uOh/w?=
 =?us-ascii?Q?N5uWq81fFWmLi2s1vXNuR5kKCIZplFrLDMvg/LEQlMLjZVDndtlXN4utsHA4?=
 =?us-ascii?Q?BUM8U58X4NyP466D256NBiGecIlukWnK34GJLLvlOx/H1Ct9sig0FmI9ou5f?=
 =?us-ascii?Q?E/Uz8cHX7zTkdVvNCbwsYnh2jlh76Wik3KtlbfwrrIfsmqc2Y4agZpGnWkN8?=
 =?us-ascii?Q?rAXzsXmyFNzC4kacG2dsrXDJDH3Ii21Ww7MGjkD75zcFFlYNsg5U8ScRr1LB?=
 =?us-ascii?Q?JymNZzDMo9US/ujqtT3PJaY1hXWGOtMcU0AMIF8ErEhqQXB5qoAUFuHXlcbU?=
 =?us-ascii?Q?hfWS5mm53wbXiFrP77RSGIWzRBwFcYSXwuvdcDS9Xjx4+hJd6gMibBj377WY?=
 =?us-ascii?Q?H2Ea7UUQVHj3i+JZ4VON4kptVXZnJhdLwQbq3TcKMaFAQmbRGlAw+uhFX+fF?=
 =?us-ascii?Q?ezbstU8cbC9qpNrcS/JjYGpyfbbppa2PorI/k9i6Lud5zCorz0bJd5ghiA8U?=
 =?us-ascii?Q?bRDwXL+XUrwcsscESTqgiack/Yf/fD8xtuks9EADh284UBZjYQXJRwEWpW63?=
 =?us-ascii?Q?D0flqX7rpaXIUrHkVhM9h2KRTnTw83q39cw7IGx81NUp22C4QWuQwsuI9Cnf?=
 =?us-ascii?Q?HwYBpG7QztIIrFzYtXGAEw80Jus9R3CWaIFBsdSGPvPWazSQKAaRPcJqwbjF?=
 =?us-ascii?Q?PLtSywic9m6UczKN38QaOE5Ox4pArAGuHWWC7OHzJXqE1V9ROdL9eKn3kNCn?=
 =?us-ascii?Q?a9oUXhZiYrqDvLc+uGgmkY6hBkTWh2ypO6wONITKn5xftKRhnOG8YaUSxr8F?=
 =?us-ascii?Q?Eg0PURpbzb65ri9kMpUU1W+03UKf4jFx0s+rtJ5eBCeJA2XwK9Iew9Q61VAR?=
 =?us-ascii?Q?czjfaf0JHO4TwVGderwJ/U+pRp8jJHUrPgHyDYQNkwwggakPtAm0Bg1gETvX?=
 =?us-ascii?Q?HHjodpWN25GTAo6Nax8OWAROMOXBKYzrQ1dPCru5UT2M4FLIkaGgQUJ9pV9P?=
 =?us-ascii?Q?ZFfBi4b+SPS/SFBeYbntu2ft3kNiFkalcm8P/ncerac2/F/FXyfaslYvD/Sm?=
 =?us-ascii?Q?VXRGxDTjqn/08+Y6hVr+iiVpTp1q0sD5r9Cc2pBFmFrm0xrW71DfrW/mNbCD?=
 =?us-ascii?Q?F4YmZrgJqsAy2ZMCU4qsDYYgtss3iWl6Sdxvjfn098FCJ3ztGtl8CaJZbvT8?=
 =?us-ascii?Q?sQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1f0118-bd14-4bf8-0098-08dcc2f392fd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:44:18.4694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8CR5k7Z0RyFQV1e6AmK5/52YLAXcKq5P9smvEF+IzBlvvrt2SffrUyGNpz6SpPqwaNMouG+9tPb+vV044bkq9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7424
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

On Thu, Aug 22, 2024 at 07:04:52PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_vrr.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 127 +++++++++++------------
>  1 file changed, 61 insertions(+), 66 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 7e1d9c718214..9a51f5bac307 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -17,8 +17,8 @@
>  
>  bool intel_vrr_is_capable(struct intel_connector *connector)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	const struct drm_display_info *info = &connector->base.display_info;
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp;
>  
>  	/*
> @@ -43,7 +43,7 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  		return false;
>  	}
>  
> -	return HAS_VRR(i915) &&
> +	return HAS_VRR(display) &&
>  		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>  }
>  
> @@ -89,10 +89,9 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
>   */
>  static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (DISPLAY_VER(i915) >= 13)
> +	if (DISPLAY_VER(display) >= 13)
>  		return crtc_state->vrr.guardband;
>  	else
>  		/* The hw imposes the extra scanline before frame start */
> @@ -113,11 +112,11 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>  static bool
>  is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	if (!HAS_CMRR(i915))
> +	if (!HAS_CMRR(display))
>  		return false;
>  
>  	actual_refresh_k =
> @@ -161,8 +160,7 @@ void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> @@ -186,7 +184,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (!crtc_state->vrr.in_range)
>  		return;
>  
> -	if (HAS_LRR(i915))
> +	if (HAS_LRR(display))
>  		crtc_state->update_lrr = true;
>  
>  	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> @@ -246,7 +244,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 * For XE_LPD+, we use guardband and pipeline override
>  	 * is deprecated.
>  	 */
> -	if (DISPLAY_VER(i915) >= 13) {
> +	if (DISPLAY_VER(display) >= 13) {
>  		crtc_state->vrr.guardband =
>  			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
>  	} else {
> @@ -258,9 +256,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  
>  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
> -	if (DISPLAY_VER(i915) >= 13)
> +	if (DISPLAY_VER(display) >= 13)
>  		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>  			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>  	else
> @@ -271,7 +269,7 @@ static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>  
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	/*
> @@ -279,133 +277,130 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	 * TGL: generate VRR "safe window" for DSB vblank waits
>  	 * ADL/DG2: make TRANS_SET_CONTEXT_LATENCY effective with VRR
>  	 */
> -	if (IS_DISPLAY_VER(dev_priv, 12, 13))
> -		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder),
> +	if (IS_DISPLAY_VER(display, 12, 13))
> +		intel_de_rmw(display, CHICKEN_TRANS(cpu_transcoder),
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
>  	if (!crtc_state->vrr.flipline) {
> -		intel_de_write(dev_priv,
> -			       TRANS_VRR_CTL(dev_priv, cpu_transcoder), 0);
> +		intel_de_write(display,
> +			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>  		return;
>  	}
>  
>  	if (crtc_state->cmrr.enable) {
> -		intel_de_write(dev_priv, TRANS_CMRR_M_HI(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>  			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> -		intel_de_write(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
>  			       lower_32_bits(crtc_state->cmrr.cmrr_m));
> -		intel_de_write(dev_priv, TRANS_CMRR_N_HI(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_CMRR_N_HI(display, cpu_transcoder),
>  			       upper_32_bits(crtc_state->cmrr.cmrr_n));
> -		intel_de_write(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
>  			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>  	}
>  
> -	intel_de_write(dev_priv, TRANS_VRR_VMIN(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       crtc_state->vrr.vmin - 1);
> -	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>  		       crtc_state->vrr.vmax - 1);
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  		       trans_vrr_ctl(crtc_state));
> -	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>  		       crtc_state->vrr.flipline - 1);
>  }
>  
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN | TRANS_PUSH_SEND);
>  }
>  
>  bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	if (!crtc_state->vrr.enable)
>  		return false;
>  
> -	return intel_de_read(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder)) & TRANS_PUSH_SEND;
> +	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>  }
>  
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>  		       TRANS_PUSH_EN);
>  
> -	if (HAS_AS_SDP(dev_priv))
> -		intel_de_write(dev_priv,
> -			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder),
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
>  			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>  			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>  
>  	if (crtc_state->cmrr.enable) {
> -		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>  			       trans_vrr_ctl(crtc_state));
>  	} else {
> -		intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>  	}
>  }
>  
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(old_crtc_state);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  		       trans_vrr_ctl(old_crtc_state));
> -	intel_de_wait_for_clear(dev_priv,
> -				TRANS_VRR_STATUS(dev_priv, cpu_transcoder),
> +	intel_de_wait_for_clear(display,
> +				TRANS_VRR_STATUS(display, cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
> -	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>  
> -	if (HAS_AS_SDP(dev_priv))
> -		intel_de_write(dev_priv,
> -			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder), 0);
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
>  }
>  
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
>  
> -	trans_vrr_ctl = intel_de_read(dev_priv,
> -				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
> +	trans_vrr_ctl = intel_de_read(display,
> +				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
>  	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> -	if (HAS_CMRR(dev_priv))
> +	if (HAS_CMRR(display))
>  		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>  
>  	if (crtc_state->cmrr.enable) {
>  		crtc_state->cmrr.cmrr_n =
> -			intel_de_read64_2x32(dev_priv, TRANS_CMRR_N_LO(dev_priv, cpu_transcoder),
> -					     TRANS_CMRR_N_HI(dev_priv, cpu_transcoder));
> +			intel_de_read64_2x32(display, TRANS_CMRR_N_LO(display, cpu_transcoder),
> +					     TRANS_CMRR_N_HI(display, cpu_transcoder));
>  		crtc_state->cmrr.cmrr_m =
> -			intel_de_read64_2x32(dev_priv, TRANS_CMRR_M_LO(dev_priv, cpu_transcoder),
> -					     TRANS_CMRR_M_HI(dev_priv, cpu_transcoder));
> +			intel_de_read64_2x32(display, TRANS_CMRR_M_LO(display, cpu_transcoder),
> +					     TRANS_CMRR_M_HI(display, cpu_transcoder));
>  	}
>  
> -	if (DISPLAY_VER(dev_priv) >= 13)
> +	if (DISPLAY_VER(display) >= 13)
>  		crtc_state->vrr.guardband =
>  			REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, trans_vrr_ctl);
>  	else
> @@ -414,21 +409,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>  
>  	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
> -		crtc_state->vrr.flipline = intel_de_read(dev_priv,
> -							 TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmax = intel_de_read(dev_priv,
> -						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmin = intel_de_read(dev_priv,
> -						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
> +		crtc_state->vrr.flipline = intel_de_read(display,
> +							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.vmax = intel_de_read(display,
> +						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> +		crtc_state->vrr.vmin = intel_de_read(display,
> +						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>  	}
>  
>  	if (crtc_state->vrr.enable) {
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  
> -		if (HAS_AS_SDP(dev_priv)) {
> +		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =
> -				intel_de_read(dev_priv,
> -					      TRANS_VRR_VSYNC(dev_priv, cpu_transcoder));
> +				intel_de_read(display,
> +					      TRANS_VRR_VSYNC(display, cpu_transcoder));
>  			crtc_state->vrr.vsync_start =
>  				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>  			crtc_state->vrr.vsync_end =
> -- 
> 2.39.2
> 
