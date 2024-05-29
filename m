Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A388D4027
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:13:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A165D11A5A5;
	Wed, 29 May 2024 21:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFvaUcM/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4751811A5A5;
 Wed, 29 May 2024 21:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717017218; x=1748553218;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7DTgTbbdpT6gfxRNpAdV6eJ4dIZNjNMiKHeKQi6Hd1s=;
 b=IFvaUcM/4a+wjwWLhzb3XkWcUB5KTW3ZIsfpI9VSSkk4ThmZHEtnAHc4
 pXqKFAHqGdGJ4IBAVRUlSEAcvWWZO5qgXi3BllHKWxwtgmpBzS8nJHLqR
 lPLz3FnnlR9FWVb1Z4uwE5KtPbVVrXLd7paja2V7z3p/hCOlEfNV/INsZ
 sSSsSr5I9XZhV4Q8mFJYANbsGcIIQRdw0PakRJKNj7vsqkO3997eF2PdQ
 MtdFK+QBBRA1xjg7U3xykm7T/Jd+IaeW56yi1HK4NWRDnKbbV3WUC3q+b
 yHOyYZCYnYM1mKZMo612RVaP6MFa1sNiw5xF+MlWMcl3DATd4rQMFa2F+ g==;
X-CSE-ConnectionGUID: D49xuMBtR6eGNwds6M+Qug==
X-CSE-MsgGUID: 7t8zqUjrSA+wullgjbZb6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24863447"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24863447"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:13:37 -0700
X-CSE-ConnectionGUID: NKNkgPR7TKimW/M2newr+w==
X-CSE-MsgGUID: ZFjUkhFKRTihK/6eVd1ZgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="39987571"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:13:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:13:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:13:37 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:13:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HcItNb94xlTdCK7SHcGGIZLsvKnVr4doP5haqKGiaQApwRauUL0m/oMhuue0w1g8FyzjawIdLoWp/2MZ258Xvyav8Pa3Z9TI6vu64Dfhi8n42cprZQ3n1LHUd79weKeKGeBz82aNm3A2bkOLmy+40NuVLnvoujeA/7UHH0HMZIqdy30Ck3PCR9sGUZo2Nk1t4tpcnj+GfX5GUKD72HgdBj1EPvOfKFtG+ut5o4wmlwI2pM3K+pioVBxuxw8Tmj4RpaNi03f1qRh/QZDImhOY9oqnz8lIpTduZg9/PQjizmuPyG6Rk6YM4JpoV75ehqdGKCSw1NfB41eWOApweaAkBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ECfqKEQZ1a9nbjn1Cya5LZj3May747cboNM90YTU3h0=;
 b=XGmpNIK3URNcrWixCl/lbUzpnxJmpX4BU+63lxMLcuyl5ykDV/ATOrzrFrHv3Qn/CW1VR+o+wmEAipxM6rxLHGenwriaVLARWuqITrPbgDzrR39LK5rjbVyoLsrTr7EHsxt3cW7KfTP0LJ0IGCxraONYk2FBs4M1HwvHxr2hHd3L6pwzBWFyidZJP/kzRMzTnTR7BctKL2L29hPU1XKMRYD1D52u/5qhL9ze+5oHyn0j808cGm26TaHUgb3ex1NNcuG9hxwdZ9ik/ne1kIu/5YIHIfb/iVLRHzufK2QYOtrC+oPF3dt/54l39sS2Kj8AwuAOiIx+/8fLPbEIkFjjPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB6104.namprd11.prod.outlook.com (2603:10b6:8:9f::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.17; Wed, 29 May 2024 21:13:33 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:13:32 +0000
Date: Wed, 29 May 2024 14:13:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 05/12] drm/i915/dram: rearrange mem freq init
Message-ID: <20240529211329.GT4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <b5d045df9cc2cba746cfd3d29990b132ddbaf023.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b5d045df9cc2cba746cfd3d29990b132ddbaf023.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::24) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB6104:EE_
X-MS-Office365-Filtering-Correlation-Id: 6dbef40c-7acc-474f-545f-08dc802431bc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?G10dNFHPffgEKOnZih39RnW7xMy6XcEoHMHuhEC77m8JMlETW6T6MX08ndRB?=
 =?us-ascii?Q?nxY0hYOWygg7a++P0D444I8U4qr0YN2hxHYl7fKTEY1Z7yvy1HRBxt4URnmq?=
 =?us-ascii?Q?HB9aMZnJczXZaGrHvLE3wC13kRA5zMF7lzb68IaB48FD7hJsC59aouKRFFpw?=
 =?us-ascii?Q?F8Vx9nP7ihKRk8jP8fCTHDR6+3fa7oFFbmI9x+iySl7Ut2GIgCDSq7+8aoU0?=
 =?us-ascii?Q?TulmRpw8g/fdk9CPo0XEPOQ0xQydwE+Y3y9sPA1M9CmBlO/enrrlKxHZ78gn?=
 =?us-ascii?Q?hqtCecnDbfSDALwJlPI9aH/PpX68w3EtRlxtAMtQ0G6qTh8FaUVVmbXbk1ic?=
 =?us-ascii?Q?UyK2W0/1rpHHqJZZNWZY/Q0mM/F+6IL/zhfDqUHbUnMMEJE/Axs0l7W0vZA7?=
 =?us-ascii?Q?9h87+wiL8PpfNgtmZCfYwkF62N0OOW5fUYfWp5nVcxftasq8c1iHbEaa9JkK?=
 =?us-ascii?Q?IiMA4YF5QxAdui7ytzm2cIqdNYEJPaMK4EePQ82zl3BJ0jic6g5LOMwMnrpu?=
 =?us-ascii?Q?PD28UQyp+Y+1iMFaQoMQvKS5YRKuxJaIgHK9ORxB+5BV3+h3S4sQsfzjG2zo?=
 =?us-ascii?Q?X8yhQl4xA1PFF/jruOQ11lVY4Fm8RvyVCndhf0cLQbTh4AJDS0G8iMsWhy0k?=
 =?us-ascii?Q?9ckHXNHsgg8eVxTUnBgWnh+L3T/5hXffuKknoPbkYzPJlq2mE182dAje8Rry?=
 =?us-ascii?Q?yM1X8tw5yoAcP8+Qxu1RwhJ1pL8Kr+eO/H1dxOS7wTliYx+GGVotShzElA4f?=
 =?us-ascii?Q?lIl5Hnf2dX2ylW+UUqRPVK80I8dvtg/ZV/t6L3SuglfKFcenfIIWeHRF3H+g?=
 =?us-ascii?Q?jp/XguDFWoiwT3qQY7pW/8kxuma8CJFLzktNN/vcT0PDfTf0h+6QPYJ6KsKE?=
 =?us-ascii?Q?VE6AqqhhRy9/cxuLNuMTRCCV/aeP9NzFXrq9U7PX73lfjmKFin/yW4vq/f6X?=
 =?us-ascii?Q?vG2tQhcnsfGHCEZVCkyVgczogjaO+c4r8rAMP6Qo0n9mS29tFxE46JiHY58x?=
 =?us-ascii?Q?9isbCD2/984Ti6Gq1kVZY9rc1RRMyy8qFqNXn6nlpBQ+0aE8oI4NNt0Uyjtz?=
 =?us-ascii?Q?d4upchdhNOJ725FYdYsr3Pjq6S7M8Jri5ppxDomUYQgq/BRcbYcB6twtRtyE?=
 =?us-ascii?Q?ioG4ktkPV91ceagiq8UA8+RVAqwGH8P8xO/whYapV1pDfxwIp2HYmUmheDTH?=
 =?us-ascii?Q?wjqmaoMKTnLqtGGPPNlO68bk2lbTQasK32uwsnnlwRIFUQlfJ+cufzl7jyl4?=
 =?us-ascii?Q?8NtRaGMXvrzBaA3riETyE5seuNlewcboE/NoIDGEyg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?akbH/XYOccIew/jiCtyaLVqz+zlCrBpmt3+hGcZxA8Le6MqdnbHbNc4lU+7d?=
 =?us-ascii?Q?VGV6VvYywuov4dUpvXynSIDh0FO9oHo+b9mKI3AKFLvdRC8AvxaLYzC4yM1y?=
 =?us-ascii?Q?BhLT2RVSP+o9O7d/pz2YYmgyVTNiYiOOmAjNwXVXNFImLN4CEJ24LODAmdnt?=
 =?us-ascii?Q?tR6o6fqqmJWJh29XOGTcIy0+xPmf0G82YdECbBOV+kMavAzg7EaY60ZZ3K6z?=
 =?us-ascii?Q?WofqkXOOq7T1OSlbzk3fpcSHs6NGO6Go7xXzH+mJ/nhY2SyeFLf6McJni72I?=
 =?us-ascii?Q?C3n+AG44OOkibGw/MpI1GDKUhxOPUFHL+ydnN7RUF/RQr+CYfJJzIt+D6dsi?=
 =?us-ascii?Q?qye9HXb5+0O+iP0j5+L71YpIWlgWR53WKAoVZHDIIHkOTAAw9Z+oEyvfkelH?=
 =?us-ascii?Q?VKy3Q4jFYUFBTAsqfrM/HrLbvP+W1G5MMo73VuwBpAdHROR/MfcGSQrplway?=
 =?us-ascii?Q?zTUyjo0rsKGcJqG4b7K6Kz44RBTwMz1NVKNGxjtFNmd7XlND8yHDURRCDMAs?=
 =?us-ascii?Q?fSKwlu3KqbPsLrvdoL4VLIUkgWIwSjyHYxrtFHTjS7vrlwgF/U46A+m+4+hl?=
 =?us-ascii?Q?6LixazeObDBf94tg2sb1wFaxI8QGev8qN/PqKGKrFAQxw9J1KYyNWot9yCmK?=
 =?us-ascii?Q?P0VBrWQhWrobWZ5yl/+rt4VNvFOLjqkXYZf0D6jg7QudZqS1y4NiRjNoPyqm?=
 =?us-ascii?Q?F4Q9rfpvMKcCKZmi2my7qFFwYAetfpO9cmihZBYgHxaQt89H1KIDJ3ksljHF?=
 =?us-ascii?Q?Uyg39rfA6/7wbDBMUTRYUnHDuXhvFwx75QkpOrRfbKF2CcBOnK1SA4IrfHi4?=
 =?us-ascii?Q?Xe2nW24qtM3I53BXfU2aaamJHpVtg4RJ/Nipx9kfqM0ztN6ckY88a08XwJ1D?=
 =?us-ascii?Q?gR7TBGfSSdteDwDzTVcXAP9ojwWmr9IrTRVcQGDr3k2aPZc82PxIY6KO/7U/?=
 =?us-ascii?Q?uqjIS3CMBVH1ZJ+MyRX2Cgp5M7Y+z3toXy3JtbRrtl1Qn+I0JeJqtqTXD8dh?=
 =?us-ascii?Q?TLmLr1QSZJRN/pVI7ClM48t2rt0thYXBCMFeWMA8QCK9TCcium022ISwBCHJ?=
 =?us-ascii?Q?kLirbw9BImFWdeOMUWHdpY6p9b0pkaRQTgdMJ1Da8Jj1eVvOpd2n77RwLoMm?=
 =?us-ascii?Q?pfvQClmGmntn430Vzkkss+qdAFHr1l2a8QFjHNVTPhUrsQCqWRjtZCNdUTtQ?=
 =?us-ascii?Q?NOe0LktxsUa9vqyK6/FufgVWFXfzveg1nBzjyoSB3cFuFtFzLMcfIkJ491Yb?=
 =?us-ascii?Q?McPpaactOXlz6jF2JdMl6/Jf5pu6ZgFeLRR3oTKank1eH8mA0VGeY0ss/bWl?=
 =?us-ascii?Q?XvmRw2Fr2VhGmZsZ6L5YCxMJGl8A778EQHOM47p9n1KydS6LAWYoxrkFcEbx?=
 =?us-ascii?Q?T01dForqMmZLe4dVzICg5XDPWIJ1nio1kwGaZ+UJKFjh+wc7BT86YmS9GEN/?=
 =?us-ascii?Q?A5b6fk8Gh/wnIDt1I1wswhdHJIF83xwRJblRgT46bMD9lIGbl5TXb9i8hul3?=
 =?us-ascii?Q?PmsszniYgDMemuQrPoST0QSO5mQWl2DJgmRIJq9lITwYo904IoVk0NZTdgHK?=
 =?us-ascii?Q?yMnr19koGmAJ1r3b4Js9PvwEGt4XZKjKIBRJwRJcNbrqSOlK1/DZjs1kEwmh?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dbef40c-7acc-474f-545f-08dc802431bc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:13:32.2887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +aBdCAcOR20qIUx0jgF/kwCS9Qwlk5NhVUimmsexkhpss6OuIH0U+ETgOeGdmSXCMK635a1GMuUiZnuWPn0t2bvCFZuMReI/UggtKzBlndA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6104
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

On Tue, May 28, 2024 at 05:24:54PM +0300, Jani Nikula wrote:
> Follow the same style in mem freq init as in fsb freq init, returning
> the value instead of assigning in multiple places.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 59 ++++++++++++---------------
>  1 file changed, 25 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 1a4db52ac258..266ed6cfa485 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -48,7 +48,7 @@ static bool pnv_is_ddr3(struct drm_i915_private *i915)
>  	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
>  }
>  
> -static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
> +static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u32 tmp;
>  
> @@ -56,44 +56,38 @@ static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
>  
>  	switch (tmp & CLKCFG_MEM_MASK) {
>  	case CLKCFG_MEM_533:
> -		dev_priv->mem_freq = 533;
> -		break;
> +		return 533;
>  	case CLKCFG_MEM_667:
> -		dev_priv->mem_freq = 667;
> -		break;
> +		return 667;
>  	case CLKCFG_MEM_800:
> -		dev_priv->mem_freq = 800;
> -		break;
> +		return 800;
>  	}
> +
> +	return 0;
>  }
>  
> -static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
> +static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
>  {
>  	u16 ddrpll;
>  
>  	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>  	switch (ddrpll & 0xff) {
>  	case 0xc:
> -		dev_priv->mem_freq = 800;
> -		break;
> +		return 800;
>  	case 0x10:
> -		dev_priv->mem_freq = 1066;
> -		break;
> +		return 1066;
>  	case 0x14:
> -		dev_priv->mem_freq = 1333;
> -		break;
> +		return 1333;
>  	case 0x18:
> -		dev_priv->mem_freq = 1600;
> -		break;
> +		return 1600;
>  	default:
>  		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>  			ddrpll & 0xff);
> -		dev_priv->mem_freq = 0;
> -		break;
> +		return 0;
>  	}
>  }
>  
> -static void chv_detect_mem_freq(struct drm_i915_private *i915)
> +static unsigned int chv_mem_freq(struct drm_i915_private *i915)
>  {
>  	u32 val;
>  
> @@ -103,15 +97,13 @@ static void chv_detect_mem_freq(struct drm_i915_private *i915)
>  
>  	switch ((val >> 2) & 0x7) {
>  	case 3:
> -		i915->mem_freq = 2000;
> -		break;
> +		return 2000;
>  	default:
> -		i915->mem_freq = 1600;
> -		break;
> +		return 1600;
>  	}
>  }
>  
> -static void vlv_detect_mem_freq(struct drm_i915_private *i915)
> +static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>  {
>  	u32 val;
>  
> @@ -122,27 +114,26 @@ static void vlv_detect_mem_freq(struct drm_i915_private *i915)
>  	switch ((val >> 6) & 3) {
>  	case 0:
>  	case 1:
> -		i915->mem_freq = 800;
> -		break;
> +		return 800;
>  	case 2:
> -		i915->mem_freq = 1066;
> -		break;
> +		return 1066;
>  	case 3:
> -		i915->mem_freq = 1333;
> -		break;
> +		return 1333;
>  	}
> +
> +	return 0;
>  }
>  
>  static void detect_mem_freq(struct drm_i915_private *i915)
>  {
>  	if (IS_PINEVIEW(i915))
> -		pnv_detect_mem_freq(i915);
> +		i915->mem_freq = pnv_mem_freq(i915);
>  	else if (GRAPHICS_VER(i915) == 5)
> -		ilk_detect_mem_freq(i915);
> +		i915->mem_freq = ilk_mem_freq(i915);
>  	else if (IS_CHERRYVIEW(i915))
> -		chv_detect_mem_freq(i915);
> +		i915->mem_freq = chv_mem_freq(i915);
>  	else if (IS_VALLEYVIEW(i915))
> -		vlv_detect_mem_freq(i915);
> +		i915->mem_freq = vlv_mem_freq(i915);
>  
>  	if (IS_PINEVIEW(i915))
>  		i915->is_ddr3 = pnv_is_ddr3(i915);
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
