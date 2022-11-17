Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B958A62E73F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E1210E694;
	Thu, 17 Nov 2022 21:45:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA83A10E694
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668721525; x=1700257525;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bU9r+8lzbEX4Vo6YEb5fc7m80lLgrod/M9OHWCRIwKA=;
 b=UIlBKm2/Kg4UCWzLCFObFYuHuvbpdD2RSzG8GJDmeJurVo0UTZWXn7MV
 S1cNNop6zPrDmbdpjov3m8HH+sdJ9PZxPQ9tuoVZEJvVift05RQBZIv/s
 vTWKaXoWUTiv+6qJjDh4n1kebEJESpMYLDYrgeFS5meWOsem+XkDbSKKS
 pSAhDE/Z9CNEC0agAgFy9xcqOBsRb1Lg9DF08WaafbJHt1XKNq3UylbPh
 lveruqrvl0IXP6oaEFdmlxc/Sw/LyLwLc9RekStMGzizC18zLwHcPmGzx
 5CRi8KXE9i90VmYbFEOfWO+tTHIwQLKp3L5xhOvIYbddBQh1mllQD7dyQ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="314132609"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="314132609"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:45:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="969036783"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="969036783"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 17 Nov 2022 13:45:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 13:45:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 13:45:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 13:45:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWVTVurw64D02IsCl9jTE6pDIUbBecAlg2gKEXij82FK3/c557wbRojQcc3prQO7xVUNispc52Iip4p68jTCcBAwvfTL+PXc9ohO2CuRe+zerU4w2uHGv0gpCgB860GB6rUYGLTaCEN7vyeQZe4BbALdCyAWbOxyIB9e0U6WRXoFqQTBCqFJWMaG55g/HpCIwOvxqKMZSE4xVW1ity8hTLcT4AYhCa0LnESdeT87W1oNXYtVpkF6ebSuKcfxo593Q5+opyZtoGPCAeYEfeWyRUIrvUTRWFBLmJ1E5zwf5qZPGVKa+eRPgai+PmIFXI4RKEhlMSypjQzrjkOo0F90EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ic1UrqsCyeZpRyzIXytwAmfTstWA0pWNwaari5g8x6o=;
 b=FWRsuJDtJguulWmIrse9iseSVj+tDKed5oJuRwSF0Tb455zV+6BIA80Prx/m1mAOS2eYTM1Ep3WDAr7twqzpRbIijpIwCdw0g44VhW3KWJ8KWahM5aH2yAmChWFWpysnbdyONJxnemBvEIRjbCZ+2x+fgVW5+3lClImOsGI5vqbY9uaio+tGFRe5WpueDrtm5qPWHNufVsi+XsY0mZ1FyfcLz3CYD3k3Mhn7sjBMv90/QKnHYk4EaVvBZHehoEUXCrPqQNDXFhYcEN8ImhZ+52zHBzRdI8Z3SvYJ6mic1wlZ9ezCZMfUSVNqrOJ6LQAQLdBxH2QCyx2aNzZEWVcCYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DS0PR11MB7531.namprd11.prod.outlook.com (2603:10b6:8:14a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Thu, 17 Nov
 2022 21:45:22 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 21:45:21 +0000
Date: Thu, 17 Nov 2022 13:45:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y3arb2S7Du8ROLR7@mdroper-desk1.amr.corp.intel.com>
References: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
 <20221117213015.584417-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117213015.584417-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR20CA0033.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::46) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DS0PR11MB7531:EE_
X-MS-Office365-Filtering-Correlation-Id: 133466ad-c882-4fde-a406-08dac8e50706
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: biGW6Ba+Crqhs3HWO2li23kQPCoaocXfiEemVwCfDsl0p40ZxFtv2jJawQq/ZAopJ/21KfRotQBipxU7/BodCBh6fG6E1zad5v3Oc7luTvjjImcK44hUy0riwNEVkRQNsD9xlkPh2kylkjfEjBYGJAEYIt53y+KryXpewyYZWV7xgXtaI0AuQIhEObefiLMAM9zT+FG1YdScuqAV16DpJ68ncfKoH3xTG+S4lboWXjrsqZW2mobudaT1EroKs2qkRa2jALs4sThCvbXYtOUHeP5stj9cGqerocyo6OQoqXE3T6EhdiRBDazrWtdMigI0sB132UIFPXlqddvDhti26L3QDA03SeAvDA2ahj/lop7sdEDFYDkV+KLn6fPqdWsiyQWx0ckD8d7HYK1moUs/HB+x7A66t/D5H//E+6V3yeCpk3r9yNdlqnIBCLJiXNKWLci8xkIw018/eBGYTm0s18SE0LtH+CTyOj+YpBmwz40AE2vvjpcBEC41qldfRjuApnUUuJSJMgMy7jd514iy55kO2GTY8YFdH6v0V6umkwMTvbGvUIpx1OsXohzCbAj67ncTEypxixwBLMqi1ElbteKoYBj2URSu9n0a7BOZdg/c8ldBDDOMW0v6IxmPoVo4pcVt2azYG9ldJ/7WjmNcAQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199015)(82960400001)(5660300002)(2906002)(38100700002)(8936002)(6862004)(4326008)(8676002)(186003)(86362001)(41300700001)(66476007)(66556008)(66946007)(478600001)(6486002)(83380400001)(26005)(6512007)(6506007)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wVkjmKcFKk4sJz/55dWSkMgzaEKLQsADPw+abjZbXQ/rVjV8IZ0ehXrJHoe9?=
 =?us-ascii?Q?lwKyaaOgjQZ4Ie+MgGhoBl1AgZxUG8xK/qEeHfuMdsqvv1rodj1eey41lPla?=
 =?us-ascii?Q?KZR4fYOwzux9We93QyJBUoawNM/RsbUKij1tiBeg4EPmAa3aXG3O1gaLo3np?=
 =?us-ascii?Q?5V/yDb9QsKltl99VvWe5kPKGcbtl019Thp8hSCWRq/WTCmgnRbCMi03NdlCb?=
 =?us-ascii?Q?wiHh9Y/c0g2b2TND9tV1Scahz7CzJPZwfWgSe0kxwk/ilXnDgUIDRUkT7Bwn?=
 =?us-ascii?Q?Zxi9exN5OcdQepxNAWLAcMwBIVcricgO1da8CT4XwZLX1bTHi1qRw7cDOD/H?=
 =?us-ascii?Q?mtAtQtUHTcREDLmaZW7T5g+47xHBRxGXwnaCXHV0DLZiiEGU+DoRPivheTL1?=
 =?us-ascii?Q?nXv27xD3ZEa1Yx29Vi6P+ntbvBBC4BLay4ftyHbb9DFhL0svWOyYxTeXFhef?=
 =?us-ascii?Q?MOj8s7zMsugnpPEKrjd2n1v9isbU9rMWfMeHw1UEvLZErsVJZaQAOqNUC1vh?=
 =?us-ascii?Q?sKXeFWFKKm6uLrEBkU0T0GcLp3h8+NcDxmzhDS6IMD3bxOCmclUYEuZ64TVF?=
 =?us-ascii?Q?EzyZBUshjWwG+FsW60rdV6BbFroymbXkGOujn+5CRqk5wKE4oSkYnNwZqgaK?=
 =?us-ascii?Q?c5g5hMnYCMEJ3ECMEUEeEbUNVRHrysnbRI9Pan3volW0YWtN78QwwDBLd0IG?=
 =?us-ascii?Q?1CHXv5L16TivXuDzWIGE9uduRA9FWiUmJktQ2SGJ97WWivP618WWHPR7giXy?=
 =?us-ascii?Q?Tt7LnVlSnYIYNAivTDTWSGtVzRHx0JANDhDEw+7+w2Ty9rs2i1tTvnMxll2G?=
 =?us-ascii?Q?7AQiQSzFjjqssxf84aiAxJaSC/UEJVBxaf1DBagaDhVRDEbRbz2Arsms8SsX?=
 =?us-ascii?Q?1mI9t64eYjLUdKSZ/GySELXkOw/HRPfXUQkoCeaAMs8M7ktKrxAoDjj57drW?=
 =?us-ascii?Q?fMriQdimriVYqio+8W12ahJ5dCg9OhCzxeEnuKRJobGJ4tyfscpwOMTeI0Gh?=
 =?us-ascii?Q?S8T4noRmkKDVlJClQJNXcbXZbWv90uBVcYMDfvGM2P11C9Ia6Hihu6Bx/sGu?=
 =?us-ascii?Q?2AZegCL0kNW7yRk5ion6zLXZyONDGifHQY9XWfV1CPd3aFE0F6NNGktbW21F?=
 =?us-ascii?Q?59viVBgf9JYzda7/iRHVWzIKBX5ZPFHhBJSyMmVx1pLCRKdnoWVMNhT+gPUl?=
 =?us-ascii?Q?QCs7BKmbmY7K6eem6VNA5x1KqetnG2Eu6Ec90yGsNuBAkVjBoitJV9c8mm6f?=
 =?us-ascii?Q?BVZVypo6OFf+QwcWa7AARPPJHFgGLjbj51+Ej4hJXhg6NiGObu6/rMdgakBO?=
 =?us-ascii?Q?DFQj3RIDfaj0xjnDaKs1UgFm/cgSYQBMB1KQDHJEThf4kcDYiLyrXENHoUnH?=
 =?us-ascii?Q?MiphkQSugmug51bX9Jp3gMIF85AOVsWmvCx0VwTgH/MQGOdqEFRus4vRaP9A?=
 =?us-ascii?Q?ysxqSikef4v94YbPvnPuvqOaE8IaCPG9jZaS+oyxY4YDXHfa5cDzaHFze2+l?=
 =?us-ascii?Q?K+2HHkjioM3Mc8EwvE8f3k1WOimS5UWFA6RlhNUTWRWZOdkX9G4pvTRAvTdu?=
 =?us-ascii?Q?w9VQlnNyNlKrabYUD6wV9jBnIT+GW/M8wu7PVQRj7tsD9jAcKPqEwU6ZS+Om?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 133466ad-c882-4fde-a406-08dac8e50706
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 21:45:21.8694 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rm4N1FhT7Mm23ejY5w6XLP3AoDJm1SwmJzy58eVDuW6bsG8/imsD53RV1jox0zD4eKazA21nCEjAv3xjIVJZCNaD+yBfefbkJWUe8H9qRCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/mtl: Skip doubling channel
 numbers for LPDDR4/LPDDDR5
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 17, 2022 at 01:30:15PM -0800, Radhakrishna Sripada wrote:
> MTL LPDDR5 reported 16b with 8 channels. Previous platforms
> reported 32b with 4 channels and hence needed a multiplication
> by a factor of 2. Skip increasing the channels for MTL.
> 
> v2: Use version check instead of platform check(MattR)
> 
> Bspec: 64631
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 4ace026b29bd..1c236f02b380 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -439,7 +439,8 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  		return ret;
>  	}
>  
> -	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
> +	if (DISPLAY_VER(dev_priv) < 14 &&
> +	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
>  		num_channels *= 2;
>  
>  	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
