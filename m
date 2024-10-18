Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25089A4A34
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E9A10E9DA;
	Fri, 18 Oct 2024 23:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bzi5HFzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CC910E24B;
 Fri, 18 Oct 2024 23:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729295047; x=1760831047;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=C4ebPlkbADIxS/fPE3VTFZZVXYr3dm8hQci5k0PQi9g=;
 b=Bzi5HFzrFj+WpDm69AYNOAYTyRbak+vvRvND+VP1RR53MOQwj9wyx074
 bNKi5war5LaEZWzSbhr2lOYT6vQ5S1M79cEDzlx2gzC8OnUVVNeZXbNI/
 HNWmqX/rKbDooOWjknIF8wxmh6C8azLH+nbH04JLukBUl4JdzlyfVLGRO
 CDdOEKKevWC+R35wgnxJPmETeN0+Y4ZEXL2MvHRZRaH1PW52o9vvFS/Ds
 8GkDbztt7JLIkCeGasOV+K81Soj4SzHEpPpQk6qJIHo+occQcqp0amImT
 xKszNbMmlLIexAgHeU6cymH3+GNjRI/doG1oyd/vUlI+QxstXHZT9ZwhB w==;
X-CSE-ConnectionGUID: MrCMog9QQxmElDg+pcT2/g==
X-CSE-MsgGUID: bH4d3JbJSaW8a51reFM1zQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="29051813"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="29051813"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:44:06 -0700
X-CSE-ConnectionGUID: Pxl36P9JQouXay0oaMkKTw==
X-CSE-MsgGUID: ZCsx5yklTCi2IXUsJabqlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="79064108"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:44:06 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:44:05 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:44:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:44:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:44:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9NUkXV864Gxb+jWZ9vY0gklob4TnYwJqb2VineS3ONTLg6bn55Oa6xSRHVO8S7kmpmUfU0GMAKWt4YYIFePS3iQdZq0wiDkv90iDSUKHNeY8XlgQyw4TUKpU7r+6xewCWQeMhZpwMTAptjkvxNDXt5WraOfg/hGJtBSJdxwThEnscOO3WjGknPVibZh4Glpqnqc3vEJ2wdqKmrPW8RpyGNfsD8FV4jFdL5cSPUKy3/ljzkGyaJ5BNCRo7Rl8ct2i2YFHCNgohajDsCYh0hdgfdKQeGMZHaw6ERbYxTv6Y9it1uEtCeUAMoKVC9K3V925l4t88beYoyEzDl9K2KsKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7V7fnpSnE+3WtQ9IebCZzliJvAI2h3laEU7BOteO4bE=;
 b=KONUahpQ5tspWEq6JQ2SnVdIMl6vIzmI2LpsTMNu8nrm3H6eYUmoSLrz1RwW0z+HWgVqpeWeryKEO2CwxqFtCY8GLqPy2pgyjBTKhB4lT3HY8kXKli/d3VMYa95U0ZqGp7LLWsS9IGQ4bYF6WIQL6q5zGcMk0G7SnqyGkmdksjouEwFCw6VZgPdEk5YpPbbn5IS3ka43QOLgjEt8nviHQDyecV58Y1mF0n5mgElSCOxWw6mGQJUgKH0PvqFqa12V27kESDwleW7ovIPYg2AnoCgt6vTIWINTjx04/BmIHKPfYibqoLJDuWFJGg4Drkaeq9e/ueDmra6YZq9St8utAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by LV1PR11MB8841.namprd11.prod.outlook.com (2603:10b6:408:2b2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.24; Fri, 18 Oct
 2024 23:44:03 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:44:03 +0000
Date: Fri, 18 Oct 2024 16:43:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Mitul
 Golani <mitulkumar.ajitkumar.golani@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 01/12] drm/i915/display/ptl: Fill VRR crtc_state timings
 before other transcoder timings
Message-ID: <20241018234359.GF4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018204941.73473-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:40::43) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|LV1PR11MB8841:EE_
X-MS-Office365-Filtering-Correlation-Id: 91370a6e-51bf-4674-5174-08dcefcebf21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j2zxug8+oD+Jif1ogWGOzhToZcbhh7pFlVF2YizFqQ5Bo3BtpF5jZDFaqQTy?=
 =?us-ascii?Q?5U0bpQxlZFwY+cuSpZt8MLUgUZH1WusJ9B7kdM6WW2iPhC2chvhkPkRRFGQm?=
 =?us-ascii?Q?flV+yGyuTI68hvimV2rtilJwYze5VrkDXkki/ydgiXH/0BKTIZDIMN6eE3AC?=
 =?us-ascii?Q?N+uRwnIuhhetWlqB72X17hgennYprk2o4JF8gvbPiKSjlPKZ5tzFlozDw/3o?=
 =?us-ascii?Q?PrPbXQGKqMcXbDqG9dqbcjGl6Gtn9ANu7CUVllYi6HhWOoZLEaL2ZWA0AELd?=
 =?us-ascii?Q?OtMDzl+oe1prhYJiVdmzqKDAEKK2lW4GHz8mjwKhVpHlabR2sTLZdjG+qWHE?=
 =?us-ascii?Q?peo2BVQHqc+2H2rarkQ3MjTlSoVgDbEl3tq+y+p9Ugqh1lWfBVmQ3uyfmytM?=
 =?us-ascii?Q?2TlkjBQDyhLf/ROIDe1If73YOW6gHoyr6MBh3wotlKK8uD+dlhTdxVBUTJ9F?=
 =?us-ascii?Q?WwT4VjGBHFjzvUtVQBv4NdV2Bdq3z8OjOZ33StTCkKjrD5QIc5nowjSuDGCL?=
 =?us-ascii?Q?WwFIHiU4g0zdPzrWjDQ8mPE3CKpkVT6+S3so75CzGt96/rL7Y/ekGh76DSPN?=
 =?us-ascii?Q?zEHft5xg7rN8lT9J+hKek2hsBqWqk7ocUdhWbvZFXFXI25jXnPqmS7hOrEVB?=
 =?us-ascii?Q?HxpI3C6g8TXfgLCwbFkteZQjy4ZvAdp0oO4/1y/+zbAt/lZ4iJm8sUWTQeXF?=
 =?us-ascii?Q?CHTelsPcq/S7A/qvo8PMMTQ+3zX33SdEW9i7bEV8x1Yo+BvR9rt9dpIi5vII?=
 =?us-ascii?Q?P09ZJCPj2DkEcqrovq/n9PHosSDWSoKmVWOB5qJUDYayLjbZXHcOd4DXIGao?=
 =?us-ascii?Q?TEBr7GRsdqdNl0EYDl0LiOzH3AWQ9xDJSJjXnZU+on0p6z5IrYhDA5hTSlc/?=
 =?us-ascii?Q?KY6T54/F5fd0gQOAkZFsyUpR5I6t1nRhoBtcUDEId6DEZ1efX7qLBdP+EADs?=
 =?us-ascii?Q?9sFLdl3+fDhvL44ti83v7ayRxG68fEWiapAUAv08FWSkape5sZFCIjofRZ1g?=
 =?us-ascii?Q?hw26SqOc5ht7/vtpKhBbyJ41MgMEDZUvqvK+MO5XThIjSPjAPZJjjLWfxKdF?=
 =?us-ascii?Q?03gmEBmP/T2PP1tOTGGrEOSvPBfj0B3dhc/XkGrf7fBOthQi98EE/XNg8t2E?=
 =?us-ascii?Q?rntIDYWEdTxZ9l9a4vUMtvZmShlWao5ex5Go9+kJSDgA0ZHmx7ULp2ccclwV?=
 =?us-ascii?Q?LoL9jInh7WhZMTFG8aJubdV+UeQvs4qosA7nRSL36gMbnR8518zyvSrnh/gq?=
 =?us-ascii?Q?BrVwe94MXxIR6pdRFR5d4fqLE9afASdktlZO5eclDz669JActgr4USKqgo29?=
 =?us-ascii?Q?rb4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w2sO2U85zBkjFxG23XOEP3CReQk4BquF9eeGbaFL7KGBSTAcmCORJbbwWGYj?=
 =?us-ascii?Q?6XJlNWBiD2Kc4R0dKvUtNd/nTapnmmzZujHnh4aF5c4wWpthVz1ummRk+U05?=
 =?us-ascii?Q?CkOVae0S2WgL/mtPwFIfsvUZnLjwkg0XlKontQAiyKR8lixU1ubF9mib47RR?=
 =?us-ascii?Q?YBpVqUxVQxmxxaCMUY63mKng900YuSLHVMOGFh2yCBqiV8kgT+QwGzVwVRup?=
 =?us-ascii?Q?IHajwLatjUL6n1eAsmaSWaA+Rg1xBeWJhhYS4u/vFVTADX64StFqohManC+t?=
 =?us-ascii?Q?OkoDHk+144wI0HGfZaY9xMBctKGW1KFRDKPRwTh9kDmDI4Gj50kWyH74drMy?=
 =?us-ascii?Q?+p+YGUfUCb4FtgRDjGm3NR+e1IFKc0arkL8J7Eh2g4ox7hi34Rvcb6Vn6gZy?=
 =?us-ascii?Q?ligfpswarV/dM1aedQ+y9HwvfRfgbYjRdtrqze7cfSdYMF9SNuQWFCIowMNr?=
 =?us-ascii?Q?rhN0VEOY7ziotRObddE4usC5qrM3cJLDiPL2Zt8ZC1GkNpJemHhE1DAX+QjR?=
 =?us-ascii?Q?CdA7RUVLBtn6bVIQs3QRwTuXSHCwwpE9rxLXbEN/aXUTD+qwn2X3wkF4njsW?=
 =?us-ascii?Q?QuDBqojZylxk+LwxWn/04+v923PgzY2K2pMGqNcKaokM1QXMSaqaB0Che9YK?=
 =?us-ascii?Q?NHPU6Jds3uzlJ/gSxBUSho7wf7HCZAgrm3T+fh7JsZ3Tgym0NnolU/SQuc45?=
 =?us-ascii?Q?Bt6+lgCKGFbW3IQMrug1a4u9WtxQZqds691fMhp+i4Mnda9sjGIjkLNiGlaf?=
 =?us-ascii?Q?cD6/QitqljLv6BBSoAA+qkOKKmkH/ETHd/VbgZ/zClF6bw0Xw4MOH3Ch2WtM?=
 =?us-ascii?Q?fDq0W42vnrA1agTAY9qoCtV/HWj6Qm2Y08RWrN7s+rsMpS/h11J2dERLa2oB?=
 =?us-ascii?Q?0CNWHFt/x25cTe0sc9rnns+wBZskOzk/b6hiPSO8UZr1gBShs3ruHmtAACp1?=
 =?us-ascii?Q?YK+PCcEix8o8rdaIWimS1wjl+NgODKUq7PMyDY/XLXlLpumySKp4LnYSK/hw?=
 =?us-ascii?Q?umzWg0ZmecLzvxamuGydUPejnl4R+PmqV4QfCJ5RBxZcAd5AypqCAX0bPFmy?=
 =?us-ascii?Q?QeugiHctGhHw1eifd1oeSYqYwOJ5UFipTwicoCqxbiNbXpG+FHLEmMTfszxb?=
 =?us-ascii?Q?EvIgpQaXsN1jW/JQI9drtvU3hKhKNGaSVnS5BAcvt7lSD4VuP6GeQqXH9X31?=
 =?us-ascii?Q?GuRXxQV+Nt3pnmWbLVM95WisXErGfwXeMubUVI1ru4uRhlNWv7ft/0wMSN86?=
 =?us-ascii?Q?IoZnjS1v91dtwWwyWN1t+pjBudfjfRgpZEV5Xm68EToIK0o8t6UECBVbS0QW?=
 =?us-ascii?Q?0i52G6uUTMDAMYezqRj6LkGhmVKBvueUM8FgQZfYyznkbnRh78c24hLbo53s?=
 =?us-ascii?Q?1FZV6nxuh7xscUYWRoGLAIMzTWYafnlIu6vCofV8H6V+6meUWLhMZ23m7ilE?=
 =?us-ascii?Q?dK+MjtMDfgiGt/EYu5qV5LWniE3hxmLoydNVV11ZxBXKTraIYjTrXyWoUH1f?=
 =?us-ascii?Q?lcbnsNYtQAByL/O91kZr3wm0T9Eqn++zIS8nee7Bkh9SpQmuzgSO1l0QycGi?=
 =?us-ascii?Q?8wVb9u5vuqztcfShp6qHhcu7XkV5oUtSo2T5rz6GhMPK7YymKYPjHhSGu1Ti?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91370a6e-51bf-4674-5174-08dcefcebf21
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:44:03.3119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1KCdFwyLZpFW4BQ1p+GpIj4ZwJDJGDRvhyTARhLVfkYia4G5ARJYGvhh2o6fBSIkju8LUO50c/+Wkrk8OAOP+newsCOx12cB3BLorj6LFPI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8841
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

On Fri, Oct 18, 2024 at 01:49:30PM -0700, Matt Atwood wrote:
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> In progress to make VRR timing generator as the default timing generator,
> rest other timings will be derived based on vrr.vmin and vrr.vmax. Call

I'm having trouble following what this first sentence is trying to say;
I think it might be missing some words?  Can you reword it to be more
clear?

We may want to elaborate more on what "VRR timing generator as the
default timing generator" means and how/why that's happening.


Matt

> intel_vrr_get_config before intel_get_transcoder_timings to accomodate
> values getting pre-filled.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..01466611eebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4134,13 +4134,13 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	intel_joiner_get_config(pipe_config);
>  	intel_dsc_get_config(pipe_config);
>  
> +	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
> +		intel_vrr_get_config(pipe_config);
> +
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
>  	    DISPLAY_VER(dev_priv) >= 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);
>  
> -	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
> -		intel_vrr_get_config(pipe_config);
> -
>  	intel_get_pipe_src_size(crtc, pipe_config);
>  
>  	if (IS_HASWELL(dev_priv)) {
> -- 
> 2.45.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
