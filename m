Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49675AFC4D7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 09:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31F010E5B0;
	Tue,  8 Jul 2025 07:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IsmfLNRe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13A110E5B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jul 2025 07:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751961558; x=1783497558;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yoUqvXIL+ad8iAViL4vr8zyvbL4Fw5WL+LCAURvGje8=;
 b=IsmfLNReZqoqHRyeokM4EXL39/BBuX6OluAoc1TvIIT0tnoLIDMep27f
 03KNHxtzBYGEplbw3pOtvipE5qSfym9pAzs+qhurjjM+FOvtYeZ8rxEed
 cXs0BLc5sXqLU0m+ytKeWTbsI04lZkoEaLN9bRP23rcHvhR07dDQyRmNa
 qS+eu+Be8P2R/IBq6Ho+CftVBwS3cdLKF2ymn6eLJZjsVPUKoPsAQegk8
 dATEms/E0SdmtVHKfsdo5JOE0fBf/U9Kt6XOUU94x2K+ZvFw3GvG4ti4V
 /0beNWorHjSMEXRN/nE+ScVcdyZ6NL+vzdzOYx8q7gFCpdbtDsr0YqXKN g==;
X-CSE-ConnectionGUID: XmlxM48JQ3W0/O2RsFPFjQ==
X-CSE-MsgGUID: RCEusMLNQimtvlQNdyXRAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="56802221"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="56802221"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 00:59:16 -0700
X-CSE-ConnectionGUID: iZZZHe9PTyaL4ZwOay/yOg==
X-CSE-MsgGUID: CutgL40sQ5ulp5IpH7boag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="186387285"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 00:59:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 00:59:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 00:59:14 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 00:59:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nIz1/9q4xqO0qyRyYonP/I5srPyvz7WTP2CrJ9Vo1pxMqly1yg7WMVCYVK4jsZw54g/RxJ3a9JngWUAYo/1gyLlESCiqhZoq4ahbBdmkfhQYk717e1akZgKkQYb9DWBHKVnq4wwNJ8t3twjeRpnfTzC74Cwr5y3kv6k9S440y2qIGhi8DW14gzb+28y7hSnu1X7NC8ZJGg2MwcbolS7ELxfSiQOaSp1OCj6R1jcAFtE0pRI3WEZAas77YgQX8/cn5oTuQf1AggHtt1QI5QYWRV6b7xw67PcuNddqlbl4y1AJC7N7Ob/g8t4GlDNId9MyJu5iFwY7/IR8RW0vAGZdaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=drwbPCJsnT9lL4ReFSTLdUdfQY3B960A6ABFgOecZ3I=;
 b=QxWTzm4dIVAR3EAJoDBngsjk10Mn5OL5DvdiI4jU39tIUmuPHS4VPGwTUfD6THK8BzjEJ7vQkLGIiT21dHGlSEuufbIkDirE3XtFfcehhXDZbE5SmMU5038Jj9LypC9uJIxfz0ztekOLVCy4L21XOwk0KKv229hXQAg7Bzbdw5HJJHid+NUyEP8DDJtHe0Uo2lE04wewN4vsCyhb1pqRFO4iNBAgudYUdE8xTi8MilwD0GNkOkAJKkNyazVaJbZ7uJQvFZic5Av2CnIbn3UbJbHnC5qHwJV1VYireO9EBwTfM8tM7aJqAFVOoESjfuS670S8lVtR/jJxJQ1HS6Mumw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DM4PR11MB8159.namprd11.prod.outlook.com (2603:10b6:8:17d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Tue, 8 Jul
 2025 07:59:12 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.018; Tue, 8 Jul 2025
 07:59:12 +0000
Date: Tue, 8 Jul 2025 01:00:55 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jeevaka.badrappan@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Fix dma_fence_wait_timeout() return
 value handling
Message-ID: <aGzQN/a3oFjFc5tM@lstrano-desk.jf.intel.com>
References: <20250708073327.1947354-1-aakash.deep.sarkar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250708073327.1947354-1-aakash.deep.sarkar@intel.com>
X-ClientProxiedBy: MW4PR04CA0051.namprd04.prod.outlook.com
 (2603:10b6:303:6a::26) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DM4PR11MB8159:EE_
X-MS-Office365-Filtering-Correlation-Id: 3530a53b-fc2c-48ce-716e-08ddbdf5537e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DOaox4/66UntdVI/EYkGnSRkc1lqt4b52yMnIGZNpT2rfNcX+dI7Vk2ltpbB?=
 =?us-ascii?Q?GkQWHxq61LdlYwusSA2/dtZSXiFpKlMQs9aHS7/04A7+OG/pCli24+EC5J/6?=
 =?us-ascii?Q?34C9TI2gbAi0/ZYUPGShXi3vZbZ432ykm7iwxxefiO1S6RQkNoo0TMYPD8j0?=
 =?us-ascii?Q?LS648A1VyzU57d9A+N/ZGJwaEw50ZV/KKxmRi3r63e93RWowSqFTOpnnmjpg?=
 =?us-ascii?Q?PklYyw/TwWRSwJdH9CEdKlFcvdzmk/yUM11ROEzX+syGDufijDgh5x24Qb6U?=
 =?us-ascii?Q?E6ZPda+0VLQrCD2dU8XhAIAbsz9UOA8wfDdVLa/jD6ZBy0OL/Gsc8mUeqHFt?=
 =?us-ascii?Q?+HDU1Cq9rJO3FiOSM5alBMouL1Fm6YkyD8W+NOOMPBf5A07DRHnqiCzVfZSt?=
 =?us-ascii?Q?pz+qFoZ/AFXaQPKTnn8T4Tyk4FfsLRMBf/TD8dZnoSKAEiBGzggydlhH9zFO?=
 =?us-ascii?Q?4sbMeShUp6pMlcCuJrS/iuXLx5DFOmEE71tK2qQ+noz7tpUGTcxQit96YEaD?=
 =?us-ascii?Q?bz3O5ceS0V7Yprt6d3IwgWeBdAdFxrI8zyg3E8JXhVEvsr86gWlPGn297aoF?=
 =?us-ascii?Q?qYMnORpr5ovOQWLUKsfRb8U5qhd0+rIinVo8lIXWgkmQurRAUSG/jzkPyNl3?=
 =?us-ascii?Q?I+E4V4VRqFfFVN58+ki4/sacN2D3zBLCRQRkfhgTmjbJIO5iG+1exbW2B9aS?=
 =?us-ascii?Q?FYOshpB2eJOe8KJv/NIZstCFQQr+5uglCi7l20JCwOucFP0G221qUwhxoWWC?=
 =?us-ascii?Q?SU4tVH0HZTHOonR5acMxzpWPWHcfvtOAGRVaehsBc5iHu+PIwqS1TeTAWSBX?=
 =?us-ascii?Q?B/q39zchMH90YqROYd0MPR4lOszxB0MbzNDxurFEsrT4AwkyHRaLGm3xkITZ?=
 =?us-ascii?Q?o/ftFifXRnQ0pDQXP04gAxCZIzOU4qAESrz+ZAMcqJL5yD8N+Z783zedWIdm?=
 =?us-ascii?Q?QZkbQsORJbGVUtSIdFXhaZTL+BBkv7g9tIBVhafTnxWA/VmL9wHFGuaIczD3?=
 =?us-ascii?Q?6ugN+H5WN2DfYjF9vH38LHkU+FGWLsYX03EoqJiysmRnqIGV1KGCMnQTGs93?=
 =?us-ascii?Q?eA72tkhSWarZ9rJswuCwnlyEGI7SQWeA2tOufxz1ctFzg6ImtNZXDC0p0xBK?=
 =?us-ascii?Q?nYp8LsZvoEZQADN30NYFZJAkRckU2EocviQ4QatTjSht0pzW8dsVJkl+uFn2?=
 =?us-ascii?Q?wu/EblHZEN7N2ReWNZ7mY+0fWmUtl1h74hTK2Gqr0u2HcCnFMMPCxgUnj9fM?=
 =?us-ascii?Q?h3Zdys/T/ADbVt+ICJdkACFst0BrX1ywuWF+v1Ymlubfu4d5nPipLoMlalYT?=
 =?us-ascii?Q?bauOhvbvSbsXk3aUb3KHDKqofKSO5U8Qkg9jyNLDcvzSRsWhH2RKFpL9iMS+?=
 =?us-ascii?Q?H3HkZ9u3xBzbESyYskDmEj/Oe04FlWZnM79F1g0URiJ2MtFcRXNyEZPOdEMP?=
 =?us-ascii?Q?0TA64m0CYnw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?elpOG4w7Vk9DA+ebHHcnNRLUdwzl4ovpxQZuVvfIYSux2HCoJI5/q3ZoQ6d8?=
 =?us-ascii?Q?HchCV/bCBgnqI4D+Rqcgj6wUA/dxlAvdQce2xGc7VxZVUrbonbDny2hy9lVi?=
 =?us-ascii?Q?H4qr/YPimVaBPcYhXmOEbGAP+raf6wsTO/3lS28Kc69Ok61H8cc+Tbu8m7Gj?=
 =?us-ascii?Q?y5zWaZGYyppdzz02GSZdIg5wkdC9E7XWROluzyKVZ/04LeyZd0hFUMw/5FmJ?=
 =?us-ascii?Q?KbkWV3yk6ulkI5oxIzLuQThGxhKWWDjQz/0dhlCR5RfvIddR8FcpavuaZLbT?=
 =?us-ascii?Q?DgEqB2TWN0p0plgDLcrJO9gTYHUuz/aVjVdltLL6iA2ZHi//uyb6gkoYG+4A?=
 =?us-ascii?Q?ie5/QxQLHmVUiw9wzBz3caKLZaG+kfqQjdVfesOzMlerPaoL6J0oEiPtdOQV?=
 =?us-ascii?Q?KXRXr4Lsshw33fhqTczcM4JRWY/GzuTgQXFo7xup7gS7IxxjzadjRxkthvck?=
 =?us-ascii?Q?qgBUrsU3TXz9tDW35NDcETtVGY9X8eT6YBEBkjHqFcEzBDwVqDE7hb8nPQbC?=
 =?us-ascii?Q?W9zPl0OqYXImnEExnwASd9WcfXzcobMdCJiKfw9wvOlvbaF1BYfTteOxaL43?=
 =?us-ascii?Q?IH4Q4hyhli1OAXZdplyEQvErsz/1EKD09mLLdhxkx0IAyYsBAypCW6OGwkEx?=
 =?us-ascii?Q?GlaJ6kdJhDifzhJQq7+MnGuKA99irpy34/AkpFAYcV5Iyy7oHiWNcFeNM6Bb?=
 =?us-ascii?Q?TtQNuX1AAD0ag+LYU82MfEXcfIQNdSCSSgb9gA8O16pRdI4j5kvLiB1KqvrJ?=
 =?us-ascii?Q?ImBe9gH0kV0vX9QVRy3AxZy5TVlKQJ35NksrUFHyZkNuRVK38tAxnwnuTZDu?=
 =?us-ascii?Q?4hcgQEjvpIq3kafJ3xfU5OTB7JI91UTvFeYbS8mG9+uxaFU652frE4UxToF+?=
 =?us-ascii?Q?geOdskRJ2S7himWzBCDhs/5wAA83MRsYj2wphqWDlYNhWfyX7aGkzqEqEmwB?=
 =?us-ascii?Q?+C6vPmy6KcDz5NEE2mx00WAC6tiODR7Rd2xJrnZZRdfJnatgw6eiEaxUe2zq?=
 =?us-ascii?Q?tVEPURNZQ650vW+aUEK7ADuL6HjcW23xxJceooPY39XkBMPEU+1sgguLiuhJ?=
 =?us-ascii?Q?LES2f8a9PphFUZ/J4EAPKesLhkLWqaXOWd/XR2c80oXJcpTNJ64F8rYZiejB?=
 =?us-ascii?Q?zYQ0GQ7lGHlEy3PUmT5ULzd7TatlSsD3X99dzjT3ZBeYeWG1f4m6g+rWHyPk?=
 =?us-ascii?Q?Q4H0YzhHN5h+Xr7hsrhUFDcrq3mELnshYamIVzaF3hYan1oNIi+Tck7F2b7A?=
 =?us-ascii?Q?ZTkUlf3CsVPpDkRjsMbIywXz9cNdD+XpjighehYU7NSEEim/kV/KuidPj5LW?=
 =?us-ascii?Q?pULuHsmHC2Vf4icoUS0Z9dsV8SwExF3l0nx4mxeGb4gKNL/3b63aMuksgTZZ?=
 =?us-ascii?Q?wj0xrePsNvarNdRMw5mIMqkezBQNU2+hufhjoADTVs3xgoYvI4bOtgmHJaIH?=
 =?us-ascii?Q?zU4eJsGzfamJgBddB8W9N3AA/stV5SS1yWntK97ocZrAMbGZtXGEC0vd4CQI?=
 =?us-ascii?Q?pgCMSaxFTvcx/B2nBZQDk7lDZ3exOGP1dRkW6nIq9H2b824XHqhvbEWjsg5A?=
 =?us-ascii?Q?SwnhOVpxlGfCVcKj8OkIZOIJUQ/h2PVfvmH9d3st/sBjEE2pKXY1abGDwjN9?=
 =?us-ascii?Q?VQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3530a53b-fc2c-48ce-716e-08ddbdf5537e
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 07:59:12.3293 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++Xh/QZS8qkxE2qLuL4OZbSznmI8aMG3y+o4yol0HFKGXmUnuin4AJt4+ZEhYmrhcZ5ihusRA6bxFR62joEnWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8159
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

On Tue, Jul 08, 2025 at 07:33:27AM +0000, Aakash Deep Sarkar wrote:
> dma_fence_wait_timeout returns a long type but the driver is
> only using the lower 32 bits of the retval and discarding the
> upper 32 bits.
> 
> This is particularly problematic if there are already signalled
> or stub fences on some of the hw planes. In this case the
> dma_fence_wait_timeout function will immediately return with
> timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> the fence is already signalled. If the driver only uses the lower
> 32 bits of this return value then it'll interpret it as an error
> code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
> 
> This issue was first observed in the xe driver with the Android
> compositor where the GPU composited layer was not properly waited
> on when there were stub fences in other overlay planes resulting in
> visual artifacts.
> 
> Fixes: d59cf7bb73f3c ("drm/i915/display: Use dma_fence interfaces instead of i915_sw_fence")
> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>

Keep my RB:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 456fc4b04cda..7035c1fc9033 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
>  	struct drm_plane *plane;
>  	struct drm_plane_state *new_plane_state;
> -	int ret, i;
> +	long ret;
> +	int i;
>  
>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
>  		if (new_plane_state->fence) {
> -- 
> 2.49.0
> 
