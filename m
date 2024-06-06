Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 793C48FEBD7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E47BD10E1A0;
	Thu,  6 Jun 2024 14:27:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dGZAi3wj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DB610E1A0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684066; x=1749220066;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hPs7fEgWz5q5cNVsKTwo1kK5BU1bdQDjUh/A1es7S5Y=;
 b=dGZAi3wj9lXjcJQCaDTZyw4RJspfklHic7YSwrxsM1FbwjGzIvpuGwoL
 Tg86/W7qYyfDq4oY1HAedZ1NHCzgx1qKZni6jm42ciVzxFtBVhk5MMo8B
 hezMFsxAIR1WHlNvV+0+J5kfz/tTKOgvNZK7eK/ARXgIGhb/0VhMkhZ3E
 0yImsTs4C70ltiGo+LVuoHDQXWJoX9+vMVZvJwV968b6Ytfqt2Ghrctxv
 3kIPQ8i/6iodAi0Vpo9t5UMrR4+7kMbTQnjIVSeusUedIS3iE3H8zkTCv
 X9Hrx9fnAIdQtstVF/SMLkaUvLlaL92mdV5AHiCjEfPwxvOtMprBi8Yf2 Q==;
X-CSE-ConnectionGUID: wWxRv/1tQNmNoj5Su58C+Q==
X-CSE-MsgGUID: pLUdMVq3RzmYMbegPPPgcg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14193359"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14193359"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:27:46 -0700
X-CSE-ConnectionGUID: c2gkeOMBQLG3Z5ICCN2iow==
X-CSE-MsgGUID: Lo8zzGOdTc66lYBLTJveUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38432579"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:27:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:27:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:27:45 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:27:45 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:27:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWbHV3M/KBCVzuSkG0xvIxaQ/8s+uaTTYwuYwSXEswJNy+9zvZ2PSIzlOI2HhF2Y2SoRAdRLdZZn/xT9KNgYp7isPuRaU2vedbmIEWf8rNwa1nw+vprB/YjTPkwx5qd5vmGT2aGF6I0JEdZyNzqkV10tqMbPRYS3jFXO+p3y2ZMSDZjzueIm0aR5IYSYAdkFahvz5iB650Jr8Q7Og9ein0Ga9zwoiz+PpyZ+cGSKAOeuVxJM23to7g2/V8oTaQg5GQfnudwU0sHPbrMP/MyLnhh/MuY+oqDNvyxpYB0PmnKpNGwHfhQUm7FOtr/4u/kp38KBMeRzfuoTvR22d74VbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRTEnEu68cM5gJKaBoHWebWnqMRgalyOwz/ORBtIb7E=;
 b=iiXIcy9KVKyedTtUCB0Z2cfl+skUdjAP44qJ/f3Hzte4BFvN2m7FTyDFVPf2zMO/PsY2ZtDgFDPIFAg8xELOaJ3W6c9CDcYbHm9jFO+CqLdYKBSm0jozwoqsw8aTA6PdHq8FaAjl0rcxfhZiFCrpqmM7ZpTWgp1iVkHLZ32P85O3thnceRIC7TI+Iczvahf032N14sZ8poKB83E/W/3tZGWSjgZ8kuCgCVZyZIKDDQM//PE/Exu/22UOYAAGQFG1IGPnFIkrdaH7U0izRYNFB1aQPcbN9z9jIslDAZATdf1Yw1AMOpkfcd9nDri1064KTgBWV5LcjyHebUWE1NDNAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 14:27:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:27:43 +0000
Date: Thu, 6 Jun 2024 10:27:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/overlay: convert
 intel_overlay_print_error_state() to drm_printer
Message-ID: <ZmHHXdQsNN32VWwb@intel.com>
References: <20240606140705.3072987-1-jani.nikula@intel.com>
 <20240606140705.3072987-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240606140705.3072987-2-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR01CA0034.prod.exchangelabs.com (2603:10b6:a02:80::47)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: 751915be-c147-4a4f-a3aa-08dc8634d3d4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?k6nAf3wQnydFsd6cq/j4O/ZvbD4Ve3z0Iy4T3Ehgs0jcx6qk8VbvnGutw9zR?=
 =?us-ascii?Q?4XEPWrMgYY5ruNNXmqn9BEt4m0aioQXVEwgYUSelaGJs/4tRfZmxiqOyIrIY?=
 =?us-ascii?Q?xvyDa7OzYKklkW/h4CIQNk0/xCps/Lf/b8+bFbRhYmflw9Ngn3y2D49Xf8OH?=
 =?us-ascii?Q?LaRE/5yrWlgAxQUsau4i+B+dTwIzv4JPi9fkEPcm1OHVUoB8f0V+t18amJ73?=
 =?us-ascii?Q?ifHTBSasfUL/gv+bAh7TEHR5wQksp7ME4eLJStjrjGkNtPkFa/CKxDsOcAgn?=
 =?us-ascii?Q?7PnwSI+SB0C445hVfp8LKm7yl4efTUj2H0t7yvTym7zqDuhiYx65GQhBz7mu?=
 =?us-ascii?Q?vaGZjXkOCoZI9HujQtK3Y6ON5ohbleciSqibYgpk7I/JNbRJAKjgcKiAJC45?=
 =?us-ascii?Q?TkmeYZIaJzVgT5Dz9VddkpL/T659fzEeWGG+Pq0HZdsSjzBshX7zFxIBMJjU?=
 =?us-ascii?Q?W/CE5fMY7/zoV3KAtMMSbNLv5ArtJ2gEBCSaRNicvUNUqljgqjM4IrAH+TRA?=
 =?us-ascii?Q?0X663CcuoOCNVGmZ9S4mMoayify/PohI+b7IVcUFJVuap+WxLRhzGubLm8Ac?=
 =?us-ascii?Q?HqSslccuKJYjQBfBcqm9JZQaKlzaPORAgbbirlziDofNI17YS3eIf0TzIcsr?=
 =?us-ascii?Q?xZdCIAavvredKrXAtnSfHsBxiN8TktrKsKYyBXuaTFL6XX0ghdWWjrx1x4mC?=
 =?us-ascii?Q?AvOSWqks+ufaMGt2jrpZ8tDOFPImglmlh0yDvc01khKEd1/KUrkFsupbgt9D?=
 =?us-ascii?Q?gN1C0HVXh/ZsC3cWEXl9XEVnfdoFP+RdVc/84vd6N1vzeUs8q8AoJJXjyZsN?=
 =?us-ascii?Q?cFboyh20wTZYrsKjMX6pnLN4wSMCd1QEpNIZBk27XCWqvOALgpSJ8m4sE78a?=
 =?us-ascii?Q?aQ52s1naIumDAJhgiPhdwMCy3WAlLtZ9RRDBhwN7vzTJq3+Y50Ht9Tl2YNe8?=
 =?us-ascii?Q?n0bsaZAckZBaYD2X1xA/eW+DUgeGgFJFepWc3byj6g+hu5X1ir9+M0CrGhYN?=
 =?us-ascii?Q?4sJWSXfEaxa24WQnX8W3XvR9817pSrEgcXS6y8vtqbaHqXFVZbcmyLE+56w8?=
 =?us-ascii?Q?szlMvY4P39ouWQVfksEZEaXzOlfrpVZE+aLfkMN7Q+LzJSQ2pvcSpNJgRIQG?=
 =?us-ascii?Q?+Uk/Vi4Eqj5sUFQ17NEOo7mgnbfvnY8U0UTsuG16EWgQ8RwmwxjjmPsQbgil?=
 =?us-ascii?Q?XGofDCfkSsevqWgcWTRoU7dNr/jFxuCQQWIsIuXvNCc/VnQvbfwkeCMw4zgJ?=
 =?us-ascii?Q?JpFocuJMy7eMcjHkFR660LzgBjzMgUJXqFZwzBukDSzqZg8JWcOOu6LlNYGr?=
 =?us-ascii?Q?G0vwUIQ6S7DqawwWNr2r7iHh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EjfJR3I9uEuDBgnEx/hm2jsCWyW0Nl3GK60LvVdoGCaT+zPoObiCJo3Y65kt?=
 =?us-ascii?Q?yXWUAoF2eOnDFRASRl9K5vEVkBhUrRvG7j1UCPyQdVa55YXRwUSB42Pf72iZ?=
 =?us-ascii?Q?k0DlVjSy0ktEvUJpdSTPpuBbaKr1A2hjt4rkmy6JHpaMUVM4qixtJZNTuCVS?=
 =?us-ascii?Q?ntYPIl5qISa2whG40s6vm+aeSMHPqcE9WGM3lZWYAk3am8Mqk5jKgoYfQvKr?=
 =?us-ascii?Q?x5b7ANmDc0B45mXQAoLK2iLMnkevq9Q3c7xU4cOUAktLWXwsHbV9QTq1Sby6?=
 =?us-ascii?Q?SajkxsmF60LVdnXt6qU19H+Y2EdL9PCc8K+ADYStD4Yk9kGfY7RN/VUVcpep?=
 =?us-ascii?Q?XG+Uuy4cPGLOKbWVn576piqKuwafVaeaSE8799WyNeTTl89RA9o+2ikDzs5h?=
 =?us-ascii?Q?nF8s5lyMO3fwEgPdp028yE6XtriUsJwPcep8d90yF2NMdxQ/H5FBT6Tm0yIl?=
 =?us-ascii?Q?g6gtO81SkqhCWoFNvFq6WO8l4+bNf7k5kA69En3x83qyrgULrtIu2OKTEYju?=
 =?us-ascii?Q?ZPqhqdcj3IZk3teI0uzQGWLQcURPooxh6oL9K4pHpFa9JmmJBVqdoRn7WqvC?=
 =?us-ascii?Q?zykZ8DgfjoStvwTLlLjKYiYSKWOfNi03FOInC7bYCS/YZwfkC2KfOVi8RQjh?=
 =?us-ascii?Q?K5zpwS/scjoKOzlxdbFGrE0MygA83B1q24KAt06Woeare8zCaoGIeq/5PTFW?=
 =?us-ascii?Q?CCq3qGXyShBj8+z/lIL964qSeKKK4OoOHwrZ0rtBFW5sEUIWnsp2jSG0W2Os?=
 =?us-ascii?Q?vinZRum31WSu8XetvbML9M8JeuEW9NnuMWM6EUNhsD0Bos/0K+iw/k0AJ+Yd?=
 =?us-ascii?Q?E4HDR+Gp/olOraEGhZFeYrc4hMz/+m1YxkTWElbC4V9BoaFL6jwzbTpEX1UG?=
 =?us-ascii?Q?fGMS8sWAAhB7PRHjr1ZMy5AahTA1CWh9ih+wq22XDQdFgrBxW5z3WiPldHBj?=
 =?us-ascii?Q?rKm/Ek26vnShkHGgEKv8Hp02XjCYwUgHWsfGlHBKcJQniil1kYee6u6ZQi8S?=
 =?us-ascii?Q?HEGTpFb2TMHri7fmtOGNa4ZLpg87sH8HIkwsIgdiN7B0nNgbTb49Qy2aVEkE?=
 =?us-ascii?Q?0nrrdQHWcJUpIFYqQr5yjA9a+rNe0jFs86T6bOmMxu1oubA/JdlfhtCTRjOl?=
 =?us-ascii?Q?D29GufWdnn3vM8SW6vhwZuz+LDwRpDYFakJgYRH/J2tD8tH0O1eVsuQfSZb7?=
 =?us-ascii?Q?p8VGBgOZa8f1CaKfsfYcZyw68oDL8YKlk7FZJLoOLzq9/w90pHd/Tu6XOyFU?=
 =?us-ascii?Q?QQEhswdlL0wz1r+StHVKcKCbakh+KCpOYc72mdSktN+8b6rDsnGKSIjarfX5?=
 =?us-ascii?Q?YlU4bJEqL+7uZff4mujyfPL5cP/c91M7hCCvpM3Yjv1LMfQY3a++peC6CIXp?=
 =?us-ascii?Q?idE1HmPQrcC9ANqvPKVhgmYHtWlsZVn3/lbLgF7EZ3Fq77GUosmxx3IMF3Vd?=
 =?us-ascii?Q?H1zvbmVkjCtH8oOu3GWhjwvptsKTji+o+LbRXEeh2po7MB6MZcXEoDQBzGVg?=
 =?us-ascii?Q?P/hJapaMntN9g496lxbrGG/H/XMmXftdcxk7Rw3ddtwwRlr8Nki5Zh9SHNhS?=
 =?us-ascii?Q?HewouqOpISDyKeC447kB/NAbL3WQ+gkQtLdDMuy+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 751915be-c147-4a4f-a3aa-08dc8634d3d4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:27:43.3026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oHfResNJxWOAeb2WDxyfvcCCiOh56CiiKLavasUXgjBUGqBFbt9CzXtDJGfcG2jTUDh7+9H31MEn0IcYRA91VQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

On Thu, Jun 06, 2024 at 05:07:05PM +0300, Jani Nikula wrote:
> Use the regular drm printer, so we can drop the i915_error_printf()
> usage.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_overlay.h |  6 +++---
>  drivers/gpu/drm/i915/i915_gpu_error.c        |  2 +-
>  3 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 1c2099ed5514..b97087f8e311 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1485,15 +1485,14 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>  }
>  
>  void
> -intel_overlay_print_error_state(struct drm_i915_error_state_buf *m,
> +intel_overlay_print_error_state(struct drm_printer *p,
>  				struct intel_overlay_error_state *error)
>  {
> -	i915_error_printf(m, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
> -			  error->dovsta, error->isr);
> -	i915_error_printf(m, "  Register file at 0x%08lx:\n",
> -			  error->base);
> +	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
> +		   error->dovsta, error->isr);
> +	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
>  
> -#define P(x) i915_error_printf(m, "    " #x ":	0x%08x\n", error->regs.x)
> +#define P(x) drm_printf(p, "    " #x ": 0x%08x\n", error->regs.x)
>  	P(OBUF_0Y);
>  	P(OBUF_1Y);
>  	P(OBUF_0U);

I always prefer the direct code, then macros like this, but orthogonal to
this patch:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> index c3f68fce6f08..f28a09c062d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> @@ -8,8 +8,8 @@
>  
>  struct drm_device;
>  struct drm_file;
> -struct drm_i915_error_state_buf;
>  struct drm_i915_private;
> +struct drm_printer;
>  struct intel_overlay;
>  struct intel_overlay_error_state;
>  
> @@ -24,7 +24,7 @@ int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
>  struct intel_overlay_error_state *
>  intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
> -void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
> +void intel_overlay_print_error_state(struct drm_printer *p,
>  				     struct intel_overlay_error_state *error);
>  #else
>  static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
> @@ -55,7 +55,7 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>  {
>  	return NULL;
>  }
> -static inline void intel_overlay_print_error_state(struct drm_i915_error_state_buf *e,
> +static inline void intel_overlay_print_error_state(struct drm_printer *p,
>  						   struct intel_overlay_error_state *error)
>  {
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 3fee7ad0ec51..96c6cafd5b9e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -905,7 +905,7 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  	}
>  
>  	if (error->overlay)
> -		intel_overlay_print_error_state(m, error->overlay);
> +		intel_overlay_print_error_state(&p, error->overlay);
>  
>  	err_print_capabilities(m, error);
>  	err_print_params(m, &error->params);
> -- 
> 2.39.2
> 
