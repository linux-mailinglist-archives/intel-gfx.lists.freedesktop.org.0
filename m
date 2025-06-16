Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F13ADBB7A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B3310E450;
	Mon, 16 Jun 2025 20:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BIx+jUJY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CF510E450;
 Mon, 16 Jun 2025 20:48:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106927; x=1781642927;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FDtYN6umrNCFe9X1s8vl49UJ4AlkYy1gzKowYklZxOI=;
 b=BIx+jUJYS2Jwo1ooMAnbeXLIWO38uR7DMAFBku9MeJ7mCU7rS0Tqhq24
 y7RPlljTYcb3isQg4vIn1jJ9jRM3ludeAVR8zirW7s3ePBfT18Di6xZge
 R+2uY/2wltT8xtcTRo+StGIYF6xjFZfsbQLj6BMQe3DRdU7od791/A3Je
 kNTKRxE0ZjzcAPC57PdJIq9vHsHgJKnytenrXgFQXS4q2XUCZ+f7JeHF8
 1vUnlrsKWUSQeMTFaXFHp2Bz4I+ASNfM4nX9SqqDqfbZJJhgbVZabMKBm
 dvfuBKPmbFELtVIa918CgwuKZVg5w1uMruGkNYK2YOWmSHNxr3POCKvAQ A==;
X-CSE-ConnectionGUID: VSFSBG8wSw2UXkx13WoYtA==
X-CSE-MsgGUID: nkrmAXVhQEm3TUrZYfX7KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51970267"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="51970267"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:48:47 -0700
X-CSE-ConnectionGUID: EeIHB/x6SmCGBxZaWDW0pg==
X-CSE-MsgGUID: g58kfsWlQA6/pOAGCi9Qww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="148468617"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:48:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:48:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:48:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.42)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:48:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=h23fn57IvqcIIir92y/YkjoZMdT+eZ0svzgExMsSyXRkbmDHjtVE8dt56UFWfj/EZ6rn37VcvR3D9mAMjwjb73lW6Fc57IanFEIyV26F9wDYZ6tDXGBX0PvXMo4gWzyqCYhU86CGzW3IoekHkKohzQKEr103Hbwq6Dm6la9D5N6k0YprU6Ve0lMzwByA2+4/3F5CG3Vakp6vy7ueJblHh26hvVnVl9FhkNHRLDkuKbaZA+LGcJBBOS7gqc7jJEFlzfWFcZy+CMckzkhLX7Gu7cDORDYdIP69n17XHYefc1xaTbnUMiCeeBQJtIHW3qRvLABMRA0I6/xi5MV/0Dfawg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1XPRH1gG2r5hNva5kTetNkaPn4ILgAvMMuHc1G61rc=;
 b=gRyNMqhl4L9tDcsj6ovHy4TbHepz+VWWg7nbHSKtCqmN6bFDzlUHH6ZOumHIkJwJ/VwoxNXfWWHPtuVlY/G12Ql4HXYoHI7jyACbuNHOvlMfxj0A7B5U1YNRjRMkBRzr2QO4qzlcQyn/sf7F570yaqvEjHH2BbvWmDwgvCZcT8uNxyoNccI7H9x7ps1nO2Amcn5nJXsg+SHkYakdqM7XzvdBds9bukPjxB4m+S8YFsWK26AR4rG1WOz2z/Afx7+Sr10broIkxIWTlTEFBy47s7LKm/8toUWy/DFrq3z6Fyi6I8DFCwnEWnv1jkVWsgdWiX6xvJK8HCquZxewnFtAKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CH3PR11MB8591.namprd11.prod.outlook.com (2603:10b6:610:1af::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.24; Mon, 16 Jun
 2025 20:48:29 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:48:29 +0000
Date: Mon, 16 Jun 2025 16:48:25 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/pcode: drop fast wait from
 snb_pcode_write_timeout()
Message-ID: <aFCDGY7KAg0YbDQ5@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: CH2PR20CA0030.namprd20.prod.outlook.com
 (2603:10b6:610:58::40) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CH3PR11MB8591:EE_
X-MS-Office365-Filtering-Correlation-Id: b28b8638-117b-4406-12cd-08ddad172619
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?viUbJCpbbZRlBi+ciXP/LILWO/GWQexOPTC74h5UkERDxDqbKSOdPSLfP6PX?=
 =?us-ascii?Q?einfOOcTPF1wRcCGJlO/xIN8F+ZQ76bOCujsy7HhFKikJBsRbzxOaTrAmjbX?=
 =?us-ascii?Q?9qv0EDzDwx1ycepkJogxa+5zSQDxoKKfu3IRE/8mSO5YGHdvPq2EivpMlGmA?=
 =?us-ascii?Q?1pzGRnU+ueBWgZEFSnjmtzaGOu3RT1D5g7hZRwsVEnhC65QxJ2pU54y7Ikmx?=
 =?us-ascii?Q?FTr8Z1+AYt/BVfd8IRf2AhZ6mH2ATvPi7vbwl+F5PzTIPaflD9E+vkWUFNP9?=
 =?us-ascii?Q?az7kQGewUJX5Lkvl6jdQoHpb+VukkOBsfIx9ooo4Z8BjfsyD/EjBm4HgUnPE?=
 =?us-ascii?Q?T+OdQc+qNsamXQ2Kj0kvM3LK6mSnhqptaEZ1kzTnR7tZiSqzJ82Qx5dCSE5Q?=
 =?us-ascii?Q?Zz5FhTOAd50KJJ59tt7/YbP6WrT4GRY+Q0WmS7+OPqexhaXUBO79c4WCI46P?=
 =?us-ascii?Q?5CJ+/XQX68apWVhq0cZ6IO/78wuOKal7qzq7dlkTxgq19ekQuynqJFbyTXQ9?=
 =?us-ascii?Q?n5za5Cx7IQqIY5/THaSmd5JH7KiVyExcRaQBysvmiRWMFQC5NrBh54PyCdfl?=
 =?us-ascii?Q?oT1p43lZnkStXtHCFSc+AZwOdgFWa7I1vpZ7bASXDQHl9F6TNbU0A30S520g?=
 =?us-ascii?Q?uCYGZmtQ7bhCSXMP0hvUW/RAotUOMdeTsDOjkukKlL+uGFLUozJH/+XdE5zO?=
 =?us-ascii?Q?j5Cw2lqsr9mg2KyRDcVzZmOgHlf8o0dZTrEjVMl3SXOGTuK1JnscXKqpcXDB?=
 =?us-ascii?Q?3Kx/Whp/oPgzEYB9fL835lyJy7DGAqMY5etM7UymW8QarqOlgI5LhCEYKNd/?=
 =?us-ascii?Q?QkRCbaMiuMY+WSaM9WPTyinopkc9B6Tl5q6jWrwUUNubhplG5lgSyVUgWT4a?=
 =?us-ascii?Q?xSRNNBZisJVo1Ht2oHPwQbVSF8biR44NEqFvzT7VgoVwValWnJmhJKtSFPpL?=
 =?us-ascii?Q?ZSoRe4JCR6BwvZoTA4Dvx3R5duR18L4PCiMYakoh7EehnNc/jRfjE1STOUom?=
 =?us-ascii?Q?hio6+kg4ojZn7ERp/1bOMbYrZo2IN7I1j0p78p/fSql11CfX434Z2wYDg8YX?=
 =?us-ascii?Q?oqkklvoj4Ee5kI2azQw5az/7uZz5QOzviCzmeUV+IipPUBliKlp1uXOQ9yL4?=
 =?us-ascii?Q?WzbLtk/+Kzf9yKH/giynXKPBpxV3O/+Ks0f8TGSwHhfZy9VG7F47KeMGAYet?=
 =?us-ascii?Q?hlNBugfBGTA6tPVCKUBkP0uoK9satGEfILjwYm+Ef2z1J3uZtEPsbJYmwOG5?=
 =?us-ascii?Q?t61xlcQpeUcEuxtMGumCnvGX3yvfzN3JanxJnsQ3SjIDzHXg3b9x/0N2U1Pm?=
 =?us-ascii?Q?+Pl5AliNiK7S7IGxlokY0/rEhtrrKFzgKYTOtjQnS7YEnW96rBEdD3Cq0DS8?=
 =?us-ascii?Q?bzHwrdYHYxRaxJLxXoY42hcPlnf/JQ3051rITt8jMfH6ccBO6ZGL/wODianu?=
 =?us-ascii?Q?xIwj1HtKR2c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kE3Z7Itx9hxQub+h4iDlEtYM3ZBU9Rnr4NhQyPKFtlVItcQuUT4FjcyR2vKL?=
 =?us-ascii?Q?m6aRE5a2Xwt4kHfgPYMsEYj7rnljmjqb3riQ8pso6IgWuLZ9sYRtIx72xohU?=
 =?us-ascii?Q?WQCj/dllp1WDsz8vEBwcEhYc0itNUMLc3nE3Ln4T0EsQzzo53PrPRHYjiwUN?=
 =?us-ascii?Q?PT0x/VUpgG0762qmIXElXvXahVWXLXubikXgBWoBtxn945epzAJW6qOoV7d4?=
 =?us-ascii?Q?6h8FCGerAKC/nz/tVFo5iex5KJoGdKMtHNCANO3yGOpk9K81a8qntqxyF4j9?=
 =?us-ascii?Q?z+1zyIgs7jHPUbXOZu51IkNHIZL7aCCiY78pvGgU/bYmPLqOaq6jIRiBbnRE?=
 =?us-ascii?Q?xs9V7JfACB1AbCmp34CKF8uKZ/tQoihc76JEfoqrT4A7DtcDGN3I8YYQorG2?=
 =?us-ascii?Q?aHrCf80hlc2ZPfsXCnucrAUEuGLHUWo9zSz6/WZyhC6ZVufTeJoUf9h/fW/Y?=
 =?us-ascii?Q?/V3M0DayEawvqRF+EBvDCYcm3jWXXT04EpX0p7Q/WItcvREZFY5WCSGBus/H?=
 =?us-ascii?Q?eg6e0Saa2e92Nnu3EHTA85x0tGO0+jSx24fXLXuIveJ+b0fjQ+7HYkG3dSSI?=
 =?us-ascii?Q?KMlrZendcGNSd/YRTlViUrCZ6lC4DY9Eyu35r+o3jnvA6pniJdWusHsfUXPJ?=
 =?us-ascii?Q?nE3Ya2yf5VLjzciMwLyCDHfsMeEFer7WmWCGF4fyCVBRMpi0Kki2gn3R4AMZ?=
 =?us-ascii?Q?J1Mpkemydip1U4rXf6vH8ohjcc4APz9nxKr654znaN1jykk+0B/ZAneSxCNQ?=
 =?us-ascii?Q?kQIfGWHxyCascZBjV8S6GFEhBzAZLk0kyJ3CqouVZ+LIoPFkmghQv4AFC7tr?=
 =?us-ascii?Q?ziXS7eY/E9uKxIwP6xJX8w1t5kagUNSK2XrJGHdKxEgukMq05Dny0yeflebE?=
 =?us-ascii?Q?OGuOg9j8xSHdCQQLRS93iohgUa1ftrgF/TYJ3TZdR7ssvUAa3OGuPJQmWW7J?=
 =?us-ascii?Q?7gPT4SbOPdeSjMLYnbCLJIj7yc69bbwInUXqcglvkDkyJefQLfXSvzDEDv4L?=
 =?us-ascii?Q?qjrcdXU1vJxvyArSSMygNm47/n1zdwPvGAnGRaB5Lj/r6Bu3qi/iYUWhoK0l?=
 =?us-ascii?Q?hpiXuzNUHCXhKozhqRHseTsrnrb/pYOGTb8P/nfSFSvjSXiqmY5LQcT5gdiG?=
 =?us-ascii?Q?b5Snqq8h3jRV7PZJHtpJDKX5CB4bc147I4o01WgEzXFrGgUt1Kc7PbzhuJDN?=
 =?us-ascii?Q?359/tRSIl3AtuiJdBAdqtmm/0eVoUxlpdNZ/2Om2pgMQ5m5CLDRG3vrGqYVc?=
 =?us-ascii?Q?Hyw3Cg1BOvbkpXyLtZ8+x5E3V/hwWE5GUoZlM8h//dQSZG54sg9ksgYFyvAz?=
 =?us-ascii?Q?qjz7WC1QEqTuEg7YSADlybCUWfEXjeA9DY09axkKz4wsfsABODxvGQu5b8Zu?=
 =?us-ascii?Q?yJHhRM5B8aSD+aqF4TxmRp8362Qr/CRFwrLJtsZhfpa8WeHSwMPyKpPlQetk?=
 =?us-ascii?Q?HCJtWdao0GVWjivphFJmqbq3d3vR6wndsHSS8BwZFWoPmZ3NNKE4K8+Mgjuq?=
 =?us-ascii?Q?GCsM1hmLl2Skqo8y+dhkUN+HdBKMqyHovtPeVD0/I9Zw5/VHnym2qF58f51k?=
 =?us-ascii?Q?mkKJ9GmH6ObOjYs6OXKCTgC5hn9cJVRbQvvvOa0IChJ8PPIIyk0i0KXM1bjH?=
 =?us-ascii?Q?uQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b28b8638-117b-4406-12cd-08ddad172619
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:48:29.3388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d1LmvsOnJahKwRvxUI70Hi20WsPM6guMG09MdIjGLZjq8UY0rBjd4rRqV48jh7zzKNbWE7IJpWOo18L19AO1FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8591
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

On Thu, Jun 05, 2025 at 01:29:33PM +0300, Jani Nikula wrote:
> Only use the ms granularity wait in snb_pcode_write_timeout(), primarily
> to better align with the xe driver, which also only has the millisecond
> wait.
> 
> Use an arbitrary 250 us fast wait before the specified ms wait, and have
> snb_pcode_write() default to 1 ms.
> 
> This means snb_pcode_write() and snb_pcode_write_timeout() will always
> be sleeping functions. There should not be any atomic users for pcode
> writes though, and any display code using pcode via xe has already been
> non-atomic. The uncore wait will do a might_sleep() annotation that
> should catch any problems.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 ++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
>  drivers/gpu/drm/i915/intel_pcode.c                      | 5 ++---
>  drivers/gpu/drm/i915/intel_pcode.h                      | 5 ++---
>  drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h    | 6 ++----
>  5 files changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f0c673e40ce5..7ad506da7d3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2147,7 +2147,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> +					      0x80000000, 2);
>  
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2187,8 +2187,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      cdclk_config->voltage_level,
> -					      150, 2);
> +					      cdclk_config->voltage_level, 2);
>  	}
>  	if (ret) {
>  		drm_err(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 02e3c22be21e..e60f60ddbff7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -485,8 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
>  	int ret, tries = 0;
>  
>  	while (1) {
> -		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
> -					      250, 1);
> +		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
>  		if (ret != -EAGAIN || ++tries == 3)
>  			break;
>  		msleep(1);
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 3db2ba439bb5..b7e9b4ee1425 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -110,13 +110,12 @@ int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
>  }
>  
>  int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms)
> +			    int timeout_ms)
>  {
>  	int err;
>  
>  	mutex_lock(&uncore->i915->sb_lock);
> -	err = __snb_pcode_rw(uncore, mbox, &val, NULL,
> -			     fast_timeout_us, slow_timeout_ms, false);
> +	err = __snb_pcode_rw(uncore, mbox, &val, NULL, 250, timeout_ms, false);
>  	mutex_unlock(&uncore->i915->sb_lock);
>  
>  	if (err) {
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 8d2198e29422..401ce27f72d4 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -11,10 +11,9 @@
>  struct intel_uncore;
>  
>  int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
> -int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms);
> +int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms);
>  #define snb_pcode_write(uncore, mbox, val) \
> -	snb_pcode_write_timeout(uncore, mbox, val, 500, 0)
> +	snb_pcode_write_timeout((uncore), (mbox), (val), 1)
>  
>  int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> index a473aa6697d0..32da708680c2 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> @@ -10,11 +10,9 @@
>  #include "xe_pcode.h"
>  
>  static inline int
> -snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			int fast_timeout_us, int slow_timeout_ms)
> +snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
>  {
> -	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val,
> -				      slow_timeout_ms ?: 1);
> +	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
>  }
>  
>  static inline int
> -- 
> 2.39.5
> 

