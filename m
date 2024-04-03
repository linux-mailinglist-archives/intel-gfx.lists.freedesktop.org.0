Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2718978C9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 21:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A7FD11283B;
	Wed,  3 Apr 2024 19:06:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BX7C4pLz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB77111283B;
 Wed,  3 Apr 2024 19:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712171171; x=1743707171;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eiHtNww+sinN4PDljKdf7HtwjfKo+eywcTuCHdDT3mk=;
 b=BX7C4pLzw8m+ieLWEa3d0/1GLnkWnfpxRmd+JR2qC7EQePbkhWV93tlR
 J85UIr+fQdLOSOK2CxtG4A+TsTTKZtQ/EeYiZLmxihVjxOkNQg4UG5fSS
 bACUPDeBNm12f0JOLqCt+EnEDv1W2EerYCUuzU9q5mvrttxFmK37h4C/s
 LMS8wJI/KlB5vobw34o55of0haV45X2sRPMl+OghXJcPP+Fz+Y2TE2MlM
 MUrJCIk32lAT5a1yEugXfxU0gIbevSYa+kEP/IcSJ4KgEexH0NuNcYU9f
 iLTfUsc+Ea5y/M2/249HF8jTx1lUmxukU4U7MmvU/veBF7VDDXwcmWgPR A==;
X-CSE-ConnectionGUID: pOGvnjKISzyhJl1UuEYO9w==
X-CSE-MsgGUID: rPFsxY4jRDuvE3wgxXoeVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7561494"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7561494"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 12:06:10 -0700
X-CSE-ConnectionGUID: pnRZu6nSQGW1xijuCDjPyw==
X-CSE-MsgGUID: ZVpp9T6PQsqBPLkgp89YLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18587283"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 12:06:10 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:06:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:06:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 12:06:09 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 12:06:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bU8kebwM12azs5+A+BdnSrY+PvLlvIUhWQ5Ofc0iIv63sYNcmHFbaNW8GUqcjfUUPZRovOjBmc1jtw2Fp/Q9xnYufBvoOHPl/EyFPOzcWS9gU1uBnWUKuSKchMP/Sy8IoOmpeb/NqP7q6Jn+oI824vz+ZK5dM9WeAjS2WSsanAMKMbeB0Mhnce6iKqHDbxenENmJuCkYIsH/ecae9ThJKTq+69+lsPUDTqEmUHf7SCl9x5QXscxnUgkVaufAKDlk2qGMunYxmvVm4y387NLZPxeli2FrSgQiQRAnsJHj21GGsOJfyyxKlhfu3UlRawIK+SlaHqK/w2VSdSWn9TwjPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AvYXccJ+P9IU2srNQHSSRQPaJ58cLUvnXulyP9V7k4g=;
 b=fF2P/7azSL+ip8x5NcTt2v7H+raTvO98bveqaqlVaXlOi0R1nPsdbf9ed5P7WtXMeZ1xYxJzsESXox6D2nNbwfvZlQ3MdSjatT9ignWzagCXtwKwzk8R+dUxwI5N5N6YUsyU6M8jnBl0NE46AXyLIDg9SAxMP+S6bGKL6p7o3GbAOltQkYuZ8e/BNgR8Of8Xszt6I1LBgo2rRsTDwm54qqp4JJPi6hozQwlpBTpRpsknPDg2WI8TQlZBV8JdugAtsgd8616heHS3NZ7gMxlANuQAGlKCHMZjU2HbXjZeQhso8vky3U+JZfc94QIXDyGLhzLViaNVsajYr0RDll3Nmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYXPR11MB8712.namprd11.prod.outlook.com (2603:10b6:930:df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 19:06:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 19:06:02 +0000
Date: Wed, 3 Apr 2024 12:05:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Clint Taylor
 <clinton.a.taylor@intel.com>
Subject: Re: [PATCH v2 06/25] drm/i915/xe2hpd: Initial cdclk table
Message-ID: <20240403190559.GJ6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-7-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-7-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0166.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYXPR11MB8712:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8/ubMVWX4zPXQ/hjuV0i2OQxAom4O0FEpUqmX6blA5tsqEGTeXvHISbka6ntsmfYbFZ31Jh5/ohinClY9PZeTriepJk2YhFdJzxzaZzq7wglnjxhkY7CiNV6FxkXFwhZar6x7u0Qop7xcN2E2A7UwAY/xD4osut1LZnJKSpPbuiXTPV6ohdeHMrNRi0J/5tzQSje8pZjeRWsVhI1tYpqJ0gcQJ7e8tCUpijGN3nTCh1KVWVc/7bJUKSZRmK7Xo1hjcYUZn52JGgSy3GJVySbcVdTkvG6t+/aFNsiEJLXw0mMqiTEk7nONI/tCU0tfDYQ2x2PeFAdr6w2/IZSUdgb3ftxYsGuqVvfqzeqFcFBTTRtEjsSYBXpDMQ16jxzsIVtIZVp71OyjuVNLEwqr5vhoimZh1XEuvMVHqof6m7Sgtu/+6i+5aCwhTDUkQlRVK3U9r5mYI3jT+yKJh5WV1oLBzpnDRlf0PpPkwp89y06WzNv7styztde+c7TKDIYZTkKGXFbrGnceuLD+EAuUocxMmDjMloKObYO82++Pq0hUIDIQuqwAyLWfyxthucOzqyAwenPcDMnnoMO1doSDra1k+np2g9pH3/ziT64/qe+4qKk7eymDbzUzEfDc9XYNTvUQDanAknDADmTCAU8saAKnZtB7bWiD7OVQWXJpCWuecc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kgheI9D3IVIYTdjgOzCwUljsiDqiXdbq93hUnAUdcL76pveJYp3jhK/IbcFp?=
 =?us-ascii?Q?uwFwd80VJyIO5JuY/qZWIw2UNYcOAwlUQNPITdt+SWiOFaCX1sOG4K6jYuYM?=
 =?us-ascii?Q?4y8Z1bmWsAfZTjCY87lQ+/pEdNEmKEl0aCa9I9ERcbrH1b6B73laky8E1QwV?=
 =?us-ascii?Q?dXa7TxjoiwADX7xId8hrmTsPuR3EluVyXvEQkWeuITehD8mNWFBRbAdopETP?=
 =?us-ascii?Q?AYxRI4yUl5y4DU9mGesuH+IcTJd7yvtgXGf9rv9yFrfF6yTKrhnRSjbcTeHJ?=
 =?us-ascii?Q?WR+FAkdPb9Es75Ge9O8O4l12Or6CHVMpqlrATOCRboM2ZQz61Mx7mo673DHZ?=
 =?us-ascii?Q?CBF14C6o3FAHqRLeG5ITSDC8bPI5w7w8qWqCsNnZ3iiLOSJn055IconWX2eL?=
 =?us-ascii?Q?4Ac0ZtiWbA+ahBqxmbSbBqbERETOC/Wd2FdPjmfMcJY1GLnAjkzvRQwRCrdw?=
 =?us-ascii?Q?rwl71TGvnMhpJb1YLvspBkMSZixdit9//VhpImmY7j3iAurjYjHQVlBFGkK/?=
 =?us-ascii?Q?46iK439NmP7yW9A1Y9ML0QxOCpiKAjYEWB1n+W9mIbDkCscD1tRP7LbqSAG6?=
 =?us-ascii?Q?rhfM2KCTWOpFw/qE5lNJZWZ1ewbzbbnzh85jUehABARwrq+OpTg9YznpDeNA?=
 =?us-ascii?Q?nMacEJED+uCcXkA2iP3ofHiPQb8KvPXhoak3hNSvhFXuyznwY9XqM64/zG8g?=
 =?us-ascii?Q?QecaYsU0JGmRiWRpgnMNgllrIn0u8R3au8Y4DFkP+NOkBhOv1Z9tUYkCmf1w?=
 =?us-ascii?Q?HrHO6sOWkAUYUUaSE4/vTQC2jMUz0Q0LLTCSEBGlU0FvmmUCbmBMAJszyV/t?=
 =?us-ascii?Q?BKc85EQoSO/pcczDkEnL3RutRlKftw6zhCECuDdZeVlx0P5LKA5AfkPf86MR?=
 =?us-ascii?Q?i3ntsJDrg+wBj2iWzlJbYJOEthixU40Td7QmZZ6Ze7OZTw09zurngqcw2iWx?=
 =?us-ascii?Q?21MvcaDeJrn+VWxx/ybF7Y8KFRayYj6JriI3sCImzldGKEROJckozws2GY8Q?=
 =?us-ascii?Q?RRgDdQyYORSFWltVoyFqqaEldqOvN68vuI0ggiI1n0CQgGTzibyeir/kBRDW?=
 =?us-ascii?Q?Sh93+xTLz3b/ieamaXn06lTKhhDOMfubQjMizJwSiFvnhYhO92yzaLX2H0Gs?=
 =?us-ascii?Q?juslS/Ax3zFE4fBvlA9OAG/KGpNE31oG97+1pa3oGxPzRvwB19FaHhFcNRge?=
 =?us-ascii?Q?y7b2AkxFxEXnEBlZeU/BECgGr8fY+q2DSEKtpEWr/RQ+zaSvlAIhg4MDjMHD?=
 =?us-ascii?Q?InISF0Vp9j1L0HEV8Q0vnlAXiLVCPHySJi7ROJ8hxYtmgBFBPY0hL1WW0yey?=
 =?us-ascii?Q?emu4pwW4bN57iiCDvAnoDPhRAv4LPkwHURP88gYbunh/YWXKTvvR46v60w1s?=
 =?us-ascii?Q?vPgV6zI6FBRh/7USw9FR/hwyEC/IS8rht960C1OAFQ5UBWzu27oakMtNPohh?=
 =?us-ascii?Q?fJE3zrFlZQMSzYZg7bB5qLx1Pu7emPLCtCOOLK+ZErVXfzdZgbWbfpxm12QX?=
 =?us-ascii?Q?gpeVN3GR/5rqdNI3zT8VU086zyUyCXYZyd//GXpqOBTB1fUMmFgZyodAQ4SA?=
 =?us-ascii?Q?M5rsHBcawGwPA3aLjtomcC9+fIHdmyo7y2twmqXT2U6AV+Rl+qv7CZl6C90a?=
 =?us-ascii?Q?bA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 31f8651b-dc51-4767-1312-08dc54111ac5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 19:06:02.1341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HxosdhIWezZjpLS48RNNOoG58PDjrD8AUiN/39d77Ajou3PlbWYLZGzku+5WAKxcanOHKrscy1d5zd/SHxdDiqwkKx9lb4e47RsDuqlT8oI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8712
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

On Wed, Apr 03, 2024 at 04:52:34PM +0530, Balasubramani Vivekanandan wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Add Xe2_HPD specific CDCLK table and use MTL Funcs.
> 
> Bspec: 65243
> Cc: Matt Roper <matthew.d.roper@intel.com>
> CC: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 31aaa9780dfc..da16c308670f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1444,6 +1444,14 @@ static const struct intel_cdclk_vals xe2lpd_cdclk_table[] = {
>  	{}
>  };
>  
> +/*
> + * Xe2_HPD always uses the minimal cdclk table from Wa_15015413771
> + */
> +static const struct intel_cdclk_vals xe2hpd_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
> +	{}
> +};
> +
>  static const int cdclk_squash_len = 16;
>  
>  static int cdclk_squash_divider(u16 waveform)
> @@ -3768,6 +3776,9 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
> +	} else if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1)) {
> +		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
> +		dev_priv->display.cdclk.table = xe2hpd_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 14) {
>  		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
