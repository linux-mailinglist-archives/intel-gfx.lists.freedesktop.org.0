Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206E0A44DC7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 21:40:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E22510E7E0;
	Tue, 25 Feb 2025 20:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mb/ZKRPv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A23D10E7DF;
 Tue, 25 Feb 2025 20:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740516002; x=1772052002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hquaAF9zJoIeKnmh4o1PqdHhvaFQxJBgUVP+EusVD/4=;
 b=Mb/ZKRPvNVf9D/7QndUcNdgnLgEW8/MVTB62Rlh0e236JghnQGUT5HOs
 3ayI0NP0c2ryPW7fLVs0hIXL56x/x1uFUqteqCW67n4M/sM5m3jEZR5BZ
 WvL1qAMkA6gE2mG8rx/lANYWtAuKTelX/iL1R6qvOHoZV3BZPZ9aDMth8
 Tndw1PR9mIPbv2PYwiRSidJBsMrI7lT9uBObgiR4DfbdwchYZyuDtUcWn
 2B+2P1kCn1s2a4fSxaLdfriP55xlVfZiOD0uXUc9Lpp6uBwgv871CdgRT
 WhZ0pVv/7X4w2REbKmTEFdOwJRfhbr4lZz/gcgT90Qk1xC19tK9jFacXm w==;
X-CSE-ConnectionGUID: kSRkiAWUQYm3eyYdLDH3Xg==
X-CSE-MsgGUID: CiwweBI4QXaoEILlDf08pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="51557521"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="51557521"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:40:02 -0800
X-CSE-ConnectionGUID: aMFdeOSNQFWh7UV3cs9nAQ==
X-CSE-MsgGUID: bfDYPu3ISuCmG/nN2q/AzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147407348"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:40:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 12:40:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 12:40:00 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 12:39:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W58GMiMFUF4HPXji/ORaiEEMz+eRvO+bI3Xz+OKnrYUomXzG/G+b+kQbUNB/GfxAhOmI73iFACVCEycHmdyVWCyXrztapJJePcST+lx6BBSpmmR11rUuwQUkUYx5czXfuG+73eGSKb9NmzEdIInERP/jKGVpNegWHRw7mlSqREPjIWcitZttrh2gmsW43715svVCqe2jWJmfUgARpFWEWgBcYJsiRuCP/ROuzvIyuoQU/b7f27MR3/Xu7XBPUjtUBpTRaNid0l/OcXfcPm5dGNGTipjbxvufU9gMBP5UXyfX39mze9j/939N2WoQYrbwrCJiiGN3wIkzI8vUHbYBOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R6M1oJDfFwDRCJNN1Q1curaqOn4niRRGn4Iuimgjnao=;
 b=dzqDNDzPgp9fb9hNnI2XLeRaRXvhE4tF9OkjfD94WSpAjbtdxJ8kyEDv0qkGYVbEDqezVKZaVtPP9nphB29QyBXiJe5qQ8+oGhZ+EvZEzHJm4xOjrLwiTU+al1BpAE8/VQlLTwLP91iPI85E9bESyyJOkT+TVtF1aFTYD6dK86vhcrTlHmYA5Yx/EI2dnQzirEZXBivs+680cQuU3TSmZr5WnsDoL8jhdsBPaI0zBvXp9XDEXNaqg9uohJwqYtQT70+XaK/36pNCyagrF/k5BZ35iwJ0Bi/rPgJRUdJ9HcpAGbI0q7w2DAg36rhEhMbFRZdK5wQAYLIDIBql2yQNhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5767.namprd11.prod.outlook.com (2603:10b6:510:13a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 20:39:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 20:39:12 +0000
Date: Tue, 25 Feb 2025 12:39:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 8/8] drm/i915/reset: add modeset_stuck callback to
 intel_display_reset_prepare()
Message-ID: <20250225203909.GM4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <5807a95e88bc058752a2d5cdc03edd20c4da5884.1740481927.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5807a95e88bc058752a2d5cdc03edd20c4da5884.1740481927.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0388.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b93909f-0823-4448-0e63-08dd55dc7621
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?B0WK4cFa/xNQL98cgKagqTSnTSmvOYemsM/c8iKwFIUjEUtYN0oi8g4dMPOH?=
 =?us-ascii?Q?rFSSImL2ADvNIO8jtHXNy8b65urMfiTwo9IZz3RfzmZDg6OYtAvgi1zbt7h4?=
 =?us-ascii?Q?ikYPwg6DMIuYEOpMdkpAzGq+olXqGNyakP0wnaELeOG/xbOseVHiJcgMlnrJ?=
 =?us-ascii?Q?PkE6mCGgyqRmgD3sr4/g/PJgoUpSbUhJU/7Y/n094txNtksQ2JXtIv+z+8eF?=
 =?us-ascii?Q?2SePh0aHNR9tBQEOD3JkVDLqYb7aXDeDHzeO2Q3fLlcWkXc/aLV75X1JbvBM?=
 =?us-ascii?Q?kFMtpOmZCIbT6dzQAewXAUwJ394zDICLw5uYiqdjZuNEBrov6+EPPTijEajw?=
 =?us-ascii?Q?reKjMlnafej0F0IuZJU6XANlUJnVPk/hbSWfTcnTdGGlPijuRsQB/ZtTh4JI?=
 =?us-ascii?Q?EbKwp830ZqdzOxpuJUdEobxubtIxPscQj86L2J1oSpAG8+lLhz43SmubGLEJ?=
 =?us-ascii?Q?REEuwCt7PTDCJb3U2n8M1hRXzvtXcyUULs6WHLeetejYpIDC+sYkh9D2F8d7?=
 =?us-ascii?Q?aX0Rzsu+LZLh/QGvD8ZDFP9Gczx4C32THach272ZPwxT6uSzSqm776TauCfk?=
 =?us-ascii?Q?s0JZWcbkU8TpebfJ0p+3R0DZA7pGDpOtHUgZDh7w/WSblIl62vxgXHRJYCC6?=
 =?us-ascii?Q?Bq+a9LNfMFjtLVt0cdr77LraKmm/2c4xUL+J0UjKkeK7hnAa/ISa4Ok0s3LY?=
 =?us-ascii?Q?eLXi4XQFW6TRQzDajt7CybhQkgzq50smiWlSus6hk7cO2tLNj5yOMN8p0VGv?=
 =?us-ascii?Q?oh5OmXocc5FW1kD2RKKfWv3AqMp3h5IpLgUwFP8mwck/kZl/lzxklBmn+qYw?=
 =?us-ascii?Q?cDwDQICuKDOwtQ1peDjoNx5p7UV5kukbsB/OXlq6eMAaSbGDpm5SRyEh2h6R?=
 =?us-ascii?Q?G9xbofrVvGj8UBPwQcOvNDSpygpKJT2sy06c7lzPCCjmXqtGZ1mzr95JgebX?=
 =?us-ascii?Q?rwr3wP16U2nTfVEZc8FKQ1FJt13kjMjKFQGhIcl/8wJOeqJLiVrErdDMod/g?=
 =?us-ascii?Q?lszQHwd0EqEuUAwogn1Psj72nMivpKH9kRvgP2qLsgO9fzVcmVuO6K3bCWnx?=
 =?us-ascii?Q?nHwZ56yq8TQ43BaM80xAd8s/UgEn6drtGFZ/l6Q8xMv08yMcsbnQIbzvq//t?=
 =?us-ascii?Q?xsT/CpfuZU5OlKvZiyCe1ixlrBxWFPu1EN6liPC0cVeN4KIw2/4BDOxtV5b3?=
 =?us-ascii?Q?5PTq43OjQ2Z6Nc2LTTYBAssKvnLgBsfKM1Vf5OHsdjRog53UuvFwsqdPIvou?=
 =?us-ascii?Q?f9PzJK4ilhNa8MIFunb+j+tF5c5CKO/takHHzx1GgLpKhsx8Z/dH5EiAy8mo?=
 =?us-ascii?Q?SVYMavu3QTFfpfxKvSEZofZ0J0cxW9zK/e3oy0mOkKwWtYhViqMSpiBVWB9l?=
 =?us-ascii?Q?0GyZ7UjkO6N+pQo0qv3mzcPKFJuk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JKkl8JNcjeb3odapNq+0ezY/4LrMYZitr+dlU0gC29zRNs/RU5qAhtEiS0It?=
 =?us-ascii?Q?02LiO5wRH0r+yANoXusiJyl5/WCBHcb8ihLmTBt0sXIvyqzR3bVJa5aSyXiY?=
 =?us-ascii?Q?OcJEc5LTl3C7egjj4AYLtwDaoIwTutRCH0P/lawLWl4Q9nYE5tkPYrtMtCi/?=
 =?us-ascii?Q?QcPZiMCGLwkb0Mg0G/4dCXz1Nw/P7XQtEzRgae4C//Vjhm1PRbAzuoQXRLbX?=
 =?us-ascii?Q?+5DN74YGMrSWOKHzDg3DLfbCv/tCJM7gAy7+BxAn8jE3O68LvreXpCMAqoP2?=
 =?us-ascii?Q?GAEHq1MGlk7Z7MXu2USk7HXGEIt6zDe85Cw3iDSDIT74tRRgJbeFvER01Pf4?=
 =?us-ascii?Q?X/erwbFHBIPsMHc7fW1KTzHNqWEOV6F+LbCFsUzqk219/YUoplqHaw5d7CW3?=
 =?us-ascii?Q?WVWpMTB+y8cen1kUCsfkPbsFDl7ptQAKUbw81wNaGXjRyUJtambtvAvVpPr6?=
 =?us-ascii?Q?s8CXR1gE1//o07Tf/LEvpizCsTNcO4Mix2XO8+BsZJ31YmXX3WO3keO6cFK3?=
 =?us-ascii?Q?EeZxZStE6VAE+QozHM7nMIGo8Fhf4WkPu2WYOrLsURvRRvErYu0fiJVGi2g7?=
 =?us-ascii?Q?nvG/uV8xwrHQT2l9YtUnFegMp8zDoDi+Pq/eQShGVoJpQY3G6Q4ry4aNRh3Y?=
 =?us-ascii?Q?NpmFPJLxDoK1MK0mdSZ4fXTcvV3PlIRSF3hGLyLyzhU8nXg8mR1I3kMBB1zW?=
 =?us-ascii?Q?3S9CHAorz0HHwOS7o7HQ0twgXNep9v3t8i3LziUJL+T6DfJXs5nWUCn7Xbv4?=
 =?us-ascii?Q?V/2/8BWqPuqBRPpdZDKz3OcsilBa/4qG5Rka+qdmbohGm/ycTGSurm2KhwoC?=
 =?us-ascii?Q?MLPAxpb0KaZwiFHtbiWUEGe6pvMvHTlfj4phcdx3fUoRJroxIQcezONMEfyA?=
 =?us-ascii?Q?Seho/ZrtwCjRd0a7R4k2wEzeweQtjxMalqtAXcqlTSbtMcW8Ci7lvimXCYFO?=
 =?us-ascii?Q?7lzrNW6ZeGwfsnRy24gsvwJUAm3OPrYoVHGrIe5jaaF1R5syN+BqyLwI/Zoe?=
 =?us-ascii?Q?2jqt1bKbJjS9dXGuDcPXAWJrCaiAoEAkcnp/rghRCC393daMbIJjQRmTnA4h?=
 =?us-ascii?Q?jzw+1UcRCQsawSgYOhW1wr8E0JZmoak3FSNgheAJImWySJUimavdibqnBHpP?=
 =?us-ascii?Q?LoGQWAVRhDepPrAMWUe58RZ0abpwZBJ8ZCXMjIV5D8yf0Ip4wEPk4EPT87hn?=
 =?us-ascii?Q?O5Ahkk0JyZo7WEM55RNzBXA1WojaNj34JSGhDNSnv2IRFath6/fuWz8TVawM?=
 =?us-ascii?Q?+kCwTeYqO8Pfsk/wi6T0tlb5G/tPBxlooeGbFuyLEPNOoXE39KgS4ANSOkZs?=
 =?us-ascii?Q?qBuUGhI4fE3DFqGln/JKh3zGZeunJQ/ub4Q+3Qd+PjBX6Apalm2h/FKm6bOU?=
 =?us-ascii?Q?BhNIM7VI/x4LunpKb5NMTT2rEZ5K5w3TpZjX5YvI/WmEhnwqSv97TJKjkLvN?=
 =?us-ascii?Q?7n3O0BPRFoyaG7c7cOLfO+jaScU8bOyIlTLvLBWV7DlPLDu7WoZzv2Lo8FvY?=
 =?us-ascii?Q?ur6Zvfh2AiflaZpx0Isgcan8EyWeiiqs5FDVO+RmBN65UF/ft2LAc10vYebE?=
 =?us-ascii?Q?Rv47W/bsel1wVuP2XeW6EC6BOlVpMb7r1yZDzd9ahHyejyt4QtV+R6r4rtv+?=
 =?us-ascii?Q?oQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b93909f-0823-4448-0e63-08dd55dc7621
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 20:39:12.0550 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qp9OGvnP8usEcm4pRJ4DipX2GLoklHQKfp3naKpKbJ0G9P6g/eZhZh+rhjy4RNWaxUYAbsvToC03I5uson2PmkuSVphzehu3iRibGOVVWbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5767
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

On Tue, Feb 25, 2025 at 01:14:22PM +0200, Jani Nikula wrote:
> Drop the dependency on gt by providing a callback for trying to unbreak
> stuck modeset. Do intel_gt_set_wedged() via the callback.
> 
> It's by no means pretty, but this is perhaps the most straightforward
> alternative.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_display_reset.h | 5 ++++-
>  drivers/gpu/drm/i915/gt/intel_reset.c              | 7 ++++++-
>  3 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index aafee2df6501..8ef86c896158 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -19,9 +19,9 @@ bool intel_display_reset_test(struct intel_display *display)
>  	return display->params.force_reset_modeset_test;
>  }
>  
> -void intel_display_reset_prepare(struct intel_display *display)
> +void intel_display_reset_prepare(struct intel_display *display,
> +				 modeset_stuck_fn modeset_stuck, void *context)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
> @@ -32,7 +32,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> -		intel_gt_set_wedged(to_gt(dev_priv));
> +		modeset_stuck(context);
>  	}
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index 985766cde001..053c3e90ac77 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -10,8 +10,11 @@
>  
>  struct intel_display;
>  
> +typedef void modeset_stuck_fn(void *context);
> +
>  bool intel_display_reset_test(struct intel_display *display);
> -void intel_display_reset_prepare(struct intel_display *display);
> +void intel_display_reset_prepare(struct intel_display *display,
> +				 modeset_stuck_fn modeset_stuck, void *context);
>  void intel_display_reset_finish(struct intel_display *display, bool test_only);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 2ca12bbf168f..84a8ca167a4e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1405,6 +1405,11 @@ static bool gt_reset_clobbers_display(struct intel_gt *gt)
>  	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
>  }
>  
> +static void display_reset_modeset_stuck(void *gt)
> +{
> +	intel_gt_set_wedged(gt);
> +}
> +
>  static void display_reset_prepare(struct intel_gt *gt)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> @@ -1419,7 +1424,7 @@ static void display_reset_prepare(struct intel_gt *gt)
>  	smp_mb__after_atomic();
>  	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
>  
> -	intel_display_reset_prepare(display);
> +	intel_display_reset_prepare(display, display_reset_modeset_stuck, gt);
>  }
>  
>  static void display_reset_finish(struct intel_gt *gt)
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
