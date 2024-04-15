Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F165A8A57A9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 18:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9441126E0;
	Mon, 15 Apr 2024 16:25:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6D9qlXX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B45571126E1;
 Mon, 15 Apr 2024 16:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713198347; x=1744734347;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DkZ9E62p27m010Kn2xwcLGS0rwJJCD3EaN4Eny2WX94=;
 b=G6D9qlXX4lut85ixyJLAzvqHvgkiVz7bGQ53s3My1mA9QnISvh1k3RfQ
 RK/QAuKVKwBbBPVmiyBmEncneGGh6pHYjoypADwxwsVce53YRJ4yBWNEu
 t4IV5QqwnTYHdijq3sizdBXeTGZeSz8gR2t4mNg+vSyM2LJa5uONcA0Gp
 cp2+b4D2agUTgHfP09XYS4+FGLcEuiTig6A3RV2HZpWLvGOugHDnvhTX9
 ESvdhUjf/vqtPKBk9a1wvZ5kQecuTghOQZtUpRcWCVJjGSCZ6JHUFRQuU
 m+LeaUd7C/M4dbf2erzZ/Et1Mm/nZtyM+zeKB+TyN+f/J4XpMt7NX3jn/ A==;
X-CSE-ConnectionGUID: McJIt5Z+R1mqib5OVCB9hg==
X-CSE-MsgGUID: Z+lHQH1jSsOKXCDsfuNKnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8819088"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8819088"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 09:25:46 -0700
X-CSE-ConnectionGUID: R2+MpiDCT2qDaWES1UlN/Q==
X-CSE-MsgGUID: K72bIyHWSiO6iThpAD2kSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22059460"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 09:25:46 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:25:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 09:25:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 09:25:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 09:25:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H5EJ/+3ddVuJtiZrmMbJRFSeHMkvgxnbsjWWqM3fEz/1t1riJ3nslxPMVnJJ8MpsdrNLs4zseE6XToFFMAYqpSXKhD1Dc+efITt7DU7Ut9EFzBi6GodctgQPnvUdYqyK622+HUHzX8lacXIoCugNapzq5uQWCv4da68KI2hu5L8h4ZwInKl5RolQ/bFcTSJV1HIzeuS5+jMzdSCX4O/XZ8sxTdvWE4plxddnIOra5BFJfT4y1ueQuvNLb0m3ErXvMKZcSGILG/ExGn3hikUnzPDzJLZfn/EBpyyj7p/TAr+x1A+Z8xoNuJnNeLN9j5rkQL8ghgGXKZ0UGvmWNmmpFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vk80//7gvuuBliNI6+Vn7eij491FLvNH/k7JR6ISbx0=;
 b=nXNzLCLbGEsLsdJcE+oW87HS5PgiIxfuIutRjKt1PEtQqnJ/idXDv7aquCjbxA6MwQ5XbbvVdzcKziti+U6/WkTRX4xeMId/DnvTYarA0WaR5auNJG0qfut7x4DtKqRFMjb3EbSI9NMLfxdzjmrE+ksBcYWhhOkFJvt2wLKg9uR9PPfjxMuXwTD8AzjcXbRHXV8XvIVtLaEdurKCtJ0ou6FHTzAKhNR4jhtdoDeiMeQaCjf37HjeFvhtO/ugXsXpJu3xCm9H2ZnYyjWuuqxitM5FX9raR6I2j7q1XrWC/aFpw440Ez8QFg89XzleWOTkl0f9ZkbpDUwQpQYhPbY14g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB8498.namprd11.prod.outlook.com (2603:10b6:a03:56f::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.28; Mon, 15 Apr
 2024 16:25:37 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 16:25:36 +0000
Date: Mon, 15 Apr 2024 09:25:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, "=?iso-8859-1?Q?Jos=E9?= Roberto de
 Souza" <jose.souza@intel.com>
Subject: Re: [PATCH v3 14/21] drm/i915/xe2hpd: Do not program MBUS_DBOX BW
 credits
Message-ID: <20240415162534.GE2659681@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-15-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240415081423.495834-15-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0051.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB8498:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a9ce596-47bd-4313-80db-08dc5d68ae6f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 16fGP3HvAlC2MSb8y941JS1/urJw4i81DovqxzD4Z6oVLULDLY1HqOI0zIIU+QxMZR2WyaigjltWYboIjMrqsdUkr4STyDJe3Zts74fRIgvMAWTrTb3Jzc94mnoT69H0+vSb3Fvoac1xqW33AX015mMDNNG0SnqvuBt6PdRdmDSn9vVKF9L9grnVNx6Iks2o+z5H8ds1rGIc0wfOlKvpzz7wzFKMk1GPtdkKoH1MZETNwTf67WYzQDBZhFz3mD6+Cu8BO3LD/VqjUh4Mj+b94NTf0zmMi3xAjKCV0oR7eQ3VyNh8nb8Q35jysAYjMiHZJ3eVEhY5ubuKDj+qysmetI85dR5rZy0XpVdKVEPMsiNzrlqR7liGT+zqWeXBdrKQ9/Bzkn50DHqck5ngo7crmaWaRjDKADjrxp3kCn70L+VMYOcuUG34Cu5H8lbXe/o6tdrkR5n0khTtApwLOwRoV+T9/WXnXiLCWyh67LEIQpiPuNqiwtN1ttXy/rv2rMxeMi8gfX4+PWXUCNt01cEc9bAjAPZlTHUXDVPEJydZyarVyjHdaLYaxEJ8607FLfROydYBUsLWAH7BOD7zHQOjKDesqsHu9HKdbLn74WneqsFQfTcgLLPIyLB5uBrSgURV4XSc6BL66s94ilQAwnSzKhMispJ3ejdg7+fKbwytiC4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?MdJ030ZVPAqivHd/u3P7LGXgAlvN2I10hHTqX5m5R0HH9HN0lfJb+rTDv2?=
 =?iso-8859-1?Q?BILaJlPTM5Jes9mJkICmswW1E1gNq9RrmXyUIkSa6e7wD7LEUw5eazqbb/?=
 =?iso-8859-1?Q?WiyYd441Qis/+N6SsybMLUT5CyC1PO0Y3Va73lrr45gAh5AoyrtumlUyTt?=
 =?iso-8859-1?Q?7Hu0R5f4UG6X9hiwGotpMqNQqfmGTLuUw19y/Z//n62nSgK2YdiX5aB9UB?=
 =?iso-8859-1?Q?DuNvotd4mz9g8lCJXSQvw3XOvO3Qu6kBQYEfe1GfwkaNAPCkO9a+WWLuoz?=
 =?iso-8859-1?Q?wliPquQhs9rN1utdbElGPK+S7lqBCTvzWhlSkBCnTGm/l5brfL5l5ZZ5mm?=
 =?iso-8859-1?Q?Jr+D/jONrZ1b/DunTHPtwVmqKC6NbWL4cqSbv+tkJ3SaFVAhFpNFC7XDEY?=
 =?iso-8859-1?Q?kB2Fa2uNeLXpxKetJaG8ML4uC8nRK0yHkIyKCncEm04uheJ4fu9NaCJ8+h?=
 =?iso-8859-1?Q?8GK3YNB7Sn62N1ANAx6+kTrF+5EdX1OWZPqiqHu9IEAfRiNxttgGZJd9OH?=
 =?iso-8859-1?Q?5zalBnm9SziVkbzr+ydFY3I0FXt+pZqFR69JDCvVAJWHJa1CXyop/W6pEb?=
 =?iso-8859-1?Q?TInxf0CvkiQNrnHlEX67Qm7jMWIq6l8z3BWFFTtljGZ6P8Z0UdR4n1R8a+?=
 =?iso-8859-1?Q?QV4mJTQs//9iuJ8KB2uIiJRXZRBZtPJNBrvxEMRS/YGmFtJIAyttfffgZd?=
 =?iso-8859-1?Q?B871mFSxIEjydeim+iKMjNnDUDWvt7RkjTPeknamNopnTPQBK0TXulVBjj?=
 =?iso-8859-1?Q?WtSQwCsYXb7EUCFujHE+nfBiJK0sOL2h2foJrFmgREit5Pe7Xoyo+EE2j8?=
 =?iso-8859-1?Q?Dvg3lboHCRnqsqbVQdZ03nZplWmKQGO+28E5dfwMpZL1aHYK8In7f2uIHk?=
 =?iso-8859-1?Q?rY7tqLGJlRxrrknHTBeFckR3Ux9KMow3E8eYCb1WU4j46wy9AOn2RD4eAT?=
 =?iso-8859-1?Q?05WAWqGdwnq4BNvCrfOS3RfQAYQTeRY9AbjhDStnNGCSWDQltsL8V//oOl?=
 =?iso-8859-1?Q?ND+zDD4gmccE4rCQ3hiZr7OPSRDgSFXn5p5SrxsylKdN2KUQ7m/k6ltMTH?=
 =?iso-8859-1?Q?fwUtQh7fik3+l3TU8N9tQ+4HAHg8J08/Y50asz7qgvM3Pmvko8MSvd//Xh?=
 =?iso-8859-1?Q?rgt9+pI4pSGCI3aOIXwW15ycAlaTojrP1z8kTQX1NRh+fxIaPpaU2hyUC4?=
 =?iso-8859-1?Q?Rnc6XrHbNWVManAGAywsbB4pYdoGU9POWZ7Y38rbh4pUjGbYJr34apXSNc?=
 =?iso-8859-1?Q?VWLZUgZs6SeYsL1aDXMJeN/LOjKRYbczbHKpoRT0M5uvLPj9P5R6kxj7Dz?=
 =?iso-8859-1?Q?BZZF92uag5O7nKlRV38sa6gA/Sy2jo5vxOTtl7AgsLaQFzJ5Bc0IlSel6i?=
 =?iso-8859-1?Q?gCkBEVkg1qDT/rMk2oa/wRgdYdwoDvgPJdQEuIL9YUOnviIrU1OczYUFTr?=
 =?iso-8859-1?Q?ZHC+aXfB/2TsounfT5Y7RZ3Hfvz+G+QyAQey6aDS++IlXs2Wfj1xVB7Ch8?=
 =?iso-8859-1?Q?o/9dtg2vc5c2khZNVMDC0XdIrw75knQxEdXXwXrZWp8+vkkk7iMCPoxQiV?=
 =?iso-8859-1?Q?VcZN8pONkyxHpPvW3+dZaSzTK9t63bslY1v9OL81ZhjPzPjW7tH0pROpup?=
 =?iso-8859-1?Q?NoB3I0FM66NvV9VqCTWEwp/AAa3TKNGlqVNMfJ6LpysFDSePPWRERoRA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9ce596-47bd-4313-80db-08dc5d68ae6f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 16:25:36.5461 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rqxedCqzww+8CC50EIaxBzDQL4eHEDhKRR7F5L1rkW4ojLZxuTDE2bo0O7YAJ0wzReJl10o0BaN+d0ShgFxuhhBqAzVA8gxJMLGtHYzjHwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8498
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

On Mon, Apr 15, 2024 at 01:44:16PM +0530, Balasubramani Vivekanandan wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> No display IP beyond Xe_LPD+ has "BW credits" bits in MBUS_DBOX_CTL
> register. Restrict the programming only to Xe_LPD+.
> 
> BSpec: 49213
> CC: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 8436af8525da..baa4b5ad96b7 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3604,7 +3604,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
>  		u32 pipe_val = val;
>  
> -		if (DISPLAY_VER(i915) >= 14) {
> +		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 0)) {
>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>  							      new_dbuf_state->active_pipes))
>  				pipe_val |= MBUS_DBOX_BW_8CREDITS_MTL;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
