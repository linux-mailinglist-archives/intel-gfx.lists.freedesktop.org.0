Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4238D3FF7
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:00:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073F710E2E0;
	Wed, 29 May 2024 21:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IapJ+nBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B86110F4D8;
 Wed, 29 May 2024 21:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717016425; x=1748552425;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QPcrmegvPW+qjwQD5RvLIxWmCGeR27yZDPe15JQGfiw=;
 b=IapJ+nBUwjjiKqIskWTsm8VH9EE1OFpKlr2VoqwIe7UX+rShR0E1SrCO
 9QKln8vs/GMwwD48KB55/TDrYmGYM1FAF7moUbcKjdwCDYHWqQEWbeHuj
 KIScSY4KA1iqGKSI4d+Gp4uINtkRZJQOdBm+Q+8XTG+XXAcPHCds0VkrP
 yGPP2rn369lYpb35p0DqJFDdVY4uDg4Nh/guwCFh0fo0KPJ9mGCd0yruY
 th7Z1fJow++vSJggjl+eyfOAFaLMXg60VaR/ggPOG8YE9UZVwfZrQ3l7I
 kpKqrOzZPVY8zmAi3UOuXNaNAi+JLMr556UprJAt04bdjNtF5QB/tZP3p Q==;
X-CSE-ConnectionGUID: 22K3VhasSnW6UYBPnaWtww==
X-CSE-MsgGUID: PHvOPX7FQTOLiIJ13dDuhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="24105830"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="24105830"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:00:11 -0700
X-CSE-ConnectionGUID: 7TB/v7/HRviGnohW+wopYA==
X-CSE-MsgGUID: tQbd7j3DTaK4duExEMZV7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35520582"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:00:11 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:00:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:00:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:00:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:00:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T+AoIaYtErhx+ADZUByJ9mAFF/QvM1oijx0oCN+y9DV6fJC6u0Ztm7PXwdtUNyr9F6UakL6gJfuEBuet2fixLugcUUtYh0l900qXhLgJlwKZ8vISzPNshGqSAYbXDd2nESAQYiT92B0MoZXLrhr5OY1L1D6tJc26YkQZWmqF2j74zhFNXkg+2bVidNiLmkvzXw5VVvKO4fKFZdlfYJftLLw4PMeTZc4nFKiqiSRlBuCfh33L9X1f4XRbAkaUhjxV5eYraFRwaT23wVDGx48pvzalIP1LKBkotHfs1qFPFcIxSt948F2FYhjX5Efz5G/gi+YKva/WiMMuSQUSxTRM8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/jIO09dsIGGiMx4UOA/jKWw6e1j37i9bXfdh6P58M1w=;
 b=C8PQ4aneGOfggPWCn7/+qe8ZxX84iPIS8aIEr3hbb36SL3a3/hy+gz0/P0CUZClZ3GULYZqqSSQ5abzazQpw2yOFZhGV8Ii3GgHTISc3IyrFWMgsH95MZKqCF07dxkTxsa95QrU8R4RDeXejjiSxVf+O4P7n5tjgtexS//v+hqXEiD+7Fakc0mURt6zMNyYEyaQu/GUQB5E39A1yJdEopZZk28fXcCM9KwIgy/xqqm9D0hre9ztt8CuYKgN4nCpkcNToypEMAMfTWyce6QleMxgPXpUj3meM0oFoUQvIuqE3L0eW4+/gCoBQapmbr6AEP7Y+tNS1+823H4XGtOZpEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MN2PR11MB4710.namprd11.prod.outlook.com (2603:10b6:208:262::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.33; Wed, 29 May
 2024 21:00:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:00:07 +0000
Date: Wed, 29 May 2024 14:00:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 02/12] drm/i915/wm: clarify logging on not finding CxSR
 latency config
Message-ID: <20240529210005.GQ4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <bd4ac9a69db1b2be4159b5ed97a16f2e845cd24d.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bd4ac9a69db1b2be4159b5ed97a16f2e845cd24d.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0231.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MN2PR11MB4710:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b2c0003-2a81-4dfd-827b-08dc8022521a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EFs3dCzRlylwTMaTBNTDORwrIYmy7pigqYTDtioNChbkQjybTt6QPO3Ghasf?=
 =?us-ascii?Q?PIzItcBjH+Bfr6rhmw0b5tgzwut+cb1giSu0j7lw84HNbVPKRDxKwG5r897y?=
 =?us-ascii?Q?2+a+RKq7rDJi2gNO8WU8szDv18kJAcccmPBT2XPHmSIx6CSVqdRufh9opQ9C?=
 =?us-ascii?Q?25ej+uzLtwlEzA+zfSW7z4UaWrEgHmgHQoYfo0+u4f+h4ExCXw1dAT7BMebK?=
 =?us-ascii?Q?xt1xWq10aZPlHdHT4LhM+w9tKPPwaBv2xVM7F3lcQoIZW+1LzgbnGDXM5Ego?=
 =?us-ascii?Q?ADuaVpoM4Zg1apHM23t6M1FfGNb9ZYiUgUBrcpf6z3vSzt4Ef9BYLurJYiVn?=
 =?us-ascii?Q?TwXVshhvocKDELkhRnnK7qjXTPfz/9sbCdRhh8XquWAm7FQf5QXeDD6163XE?=
 =?us-ascii?Q?w7hV0CaPNDGaTZYM+/DRf2G5yYK49Xwnkao86MbMJYEAFduGR8GjSoA0Rrg1?=
 =?us-ascii?Q?m3OIrIjnKfvcHrCILei9iUl1I/DwCAoMp/DutxPF17srfuOrLcJi4fxnctdW?=
 =?us-ascii?Q?lB5dd+KOLb+sBIQ/UpgDOIPaKoHC5AgPwbSHiT/kWWXDpwlIEc8pGrPQqXUx?=
 =?us-ascii?Q?VaQ4MJFPlHA6qyS6A6OMxJIMY2Dt4Pd+XYOUX339Iu+okrwEzRCGD6veOfg+?=
 =?us-ascii?Q?NaHq5+hdr6dPreoJxsHUXslMTxuSZYME+XJKx7nCbP+WZSU+2qk6oBt+YvHL?=
 =?us-ascii?Q?l8etc5G0DrT9NBcL+uSI41bkdgHduTLROxS3Qk0BFomq04lKV6kEu7BYfta0?=
 =?us-ascii?Q?WDaCTCSlaUJagTY4+rEbtiQUuHkQ65MW1sk7gN5kFeus4T1cPUvNGh7FG8ru?=
 =?us-ascii?Q?nA4f0k/8CeLEA/5xDJmiZYxTFgd22sBnfZaOzposOn3bxwquM6U+VVUQbDSC?=
 =?us-ascii?Q?srzI+HGGTmHodoYOFDYltLKxNOOz/Kkl5VzFPqZCJ1dx36E/XeUQdU2+HdVC?=
 =?us-ascii?Q?DM0ytSDci3eKfOQquPDfcfRTgw6QuBQPx5K8D1zFk9qMAzq+wIDDhiSDZq8d?=
 =?us-ascii?Q?kKyRWaO6uTcjML6fU93s5F41n8CDr31YyM5KLlYk52vaa8qBsEfaY+IBO7lo?=
 =?us-ascii?Q?1z5yIGwfuv3kI3PQxHkhzM82yhunlSusFnl6G3p+INaCMBoXlJN7lyjLcHx9?=
 =?us-ascii?Q?uGs9fL8Te8xu9SyenRnd6KWtIkBvn36faCaeIv+A3e2gfYYsg6iOLeQiIrfD?=
 =?us-ascii?Q?hRx9/yAapxwOB5TK62nng1FVGlayHLvW1XxmBgfrHRqcgcSUllTk7dhNHdLX?=
 =?us-ascii?Q?LFLT1/CvcSsvQQOQlQB4SfmF5ziugfzoC/FZjk/k4w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6czXyl0g+QxJW5hgmyqVFoyr1+N4tduGeJxepAK6xOHocSh+oQaQk+/D+ETV?=
 =?us-ascii?Q?rovemdkcuDsLIbnsl7WGEEJPdKjxS2D5HesUsS11CXSOKitsBIb1VRCzvQ8w?=
 =?us-ascii?Q?4zsbpributUjvxBJMWbDyTCvJkmBNwtwRSU6FBauuYhjrJS4fvKy4fHNuvqD?=
 =?us-ascii?Q?uyghJYOkanNruR7r/P3KGKUVYLnRhSnxzwf1jfhmKYziHXh9Uu4puMsM/NlL?=
 =?us-ascii?Q?DuKjjyiZKuHIaGxApv3yTHlH03EL8PrKjBpciLYx+Li3inN4fT2yHBfEgoiS?=
 =?us-ascii?Q?kiHaTLJNWOElHLhAIW1BVERqSn2jLbAQ46D041iZYJYyKz7RSKxM6pNyoL2+?=
 =?us-ascii?Q?6Da5UtKy7ucarR+k+3cl0xrcCB11UNF7FH3jYGOWuqGZAl/5C2l9N/JLcacn?=
 =?us-ascii?Q?/ta1C3z/yeMK3JUeoREo6cFU3jzau9Ti415iF0vPWDyVOtwA4tVWkn9g0IoF?=
 =?us-ascii?Q?LZVbcZyflgJ4css4jyynuvqrMwbPo/h9tS3UJd/xh1yBVtgoKiJ4aeCjVzsO?=
 =?us-ascii?Q?MgtcfbgK5Az8YRwgop+2Jq8nV4RfRQba+Uhkpc4QGef2lRKJNhW6qgalrAmb?=
 =?us-ascii?Q?yfztUoLCp5kpuYb2YD6pVT1rF97u1G43qjRDoVqy3Pb7cRjhzJ1OaCCpNFNb?=
 =?us-ascii?Q?MGgOr3N9qjkH8aDW9sjGNuuTjo6PTZV+6+XWpiSw2iSCzsPGnZ0yeLjSsCt1?=
 =?us-ascii?Q?EiT4yHceN0m0nUpeCubzsfoHyPN7L5/QU/t/AlfKfmK/K7w6B/zZbAkyGuS4?=
 =?us-ascii?Q?eqzU+P7u7fjVKab3kAZNVxzuBc7e5GCk/aI/VtqDNzEfxWo5Vte/GzeocHIF?=
 =?us-ascii?Q?O4vOIDNG1TAZ/Pqkr5KiMBWdlcqATfycdUrPyq5JASCYT7w0dHKWs45dH+6y?=
 =?us-ascii?Q?23lTOOifhY7zJ5Yi7Svv5DzU8h3VjZZfc+V3piu5T5nIma3Ibo30zcO476Kn?=
 =?us-ascii?Q?qS6IroMfH/8WqH90FHUZm+3s9z2NWGAjujrBd665HXwzhodujkVHivqzvaj8?=
 =?us-ascii?Q?1CzkHh1i1i8404l8wCtC60035Nsmuvd1s+hj/XG2R3imA0V1UtVCG3+t9G07?=
 =?us-ascii?Q?PGiEvTLOdgASJ+GBv3HOjPpUOGWSdE56hBAY1Alk6/PJLnbrSxLSDDZWnGgo?=
 =?us-ascii?Q?Pj8BjYwEFyn6c0JqshMnIwtxu5xkLHaFhlX6u1JbhIAkf9zohWmNzJtIoHWk?=
 =?us-ascii?Q?H6rhDrFxyqjkBCt6J4+rL7S/RaVC+hD8URg+KBvLmA0K1arkTpoFrafQgyqG?=
 =?us-ascii?Q?JNX5QDWefB9ZYLboQV/SV5zyH+tY44RpHitRSTSSWqrWjIZ49UqIYh47nUUq?=
 =?us-ascii?Q?jc6/zIGtX6DvssrN9jKU4gGrgYOG9q1YDMFh+PJKy91db97WuJK95nibbZo+?=
 =?us-ascii?Q?gUHBLPngw6eWYYooUu5xE8YdDT0C9qbBY9owf0AEGAo9lSA9AGf5HntNJP2Z?=
 =?us-ascii?Q?pLf+F+rAF43TikLPzXMGT9mdluXBm+Ro1PJKqgQY3Ew4oOqNLQ3Dg8Kx9vzy?=
 =?us-ascii?Q?ID/gUfo5umlbQI8wV5QdJK5bJ3qV5XhM0O8Q7L66F1YoLF0EkStOEjwrIPux?=
 =?us-ascii?Q?2ohbyr0I/rkHwBNB26KvF8I5dcuqy0BefEnSd48zaS7PKMybq6mqTd9YPIal?=
 =?us-ascii?Q?Mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b2c0003-2a81-4dfd-827b-08dc8022521a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:00:07.5606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KQ9YltTjE0eFCmsC/j95qo8ZdHAc52vY4iZiEMxtvqoWsQpRkgouAHD7SFK5pRc2Wc9+SkBJHWUmYLtUZRqF6lA02mMgmK8KgZRJN59XGho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4710
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

On Tue, May 28, 2024 at 05:24:51PM +0300, Jani Nikula wrote:
> Clarify and unify the logging on not finding PNV CxSR latency config.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 17 +++++++----------
>  1 file changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 8657ec0abd2d..8b8a0f305c3a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -75,7 +75,7 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>  	int i;
>  
>  	if (i915->fsb_freq == 0 || i915->mem_freq == 0)
> -		return NULL;
> +		goto err;

Is there even a need for this check?  0/0 will fail to match anything in
the table and will just drop through to the debug message anyway, right?


Matt

>  
>  	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
>  		const struct cxsr_latency *latency = &cxsr_latency_table[i];
> @@ -88,7 +88,10 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>  			return latency;
>  	}
>  
> -	drm_dbg_kms(&i915->drm, "Unknown FSB/MEM found, disable CxSR\n");
> +err:
> +	drm_dbg_kms(&i915->drm,
> +		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
> +		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>  
>  	return NULL;
>  }
> @@ -637,8 +640,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  
>  	latency = pnv_get_cxsr_latency(dev_priv);
>  	if (!latency) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Unknown FSB/MEM found, disable CxSR\n");
> +		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
>  		intel_set_memory_cxsr(dev_priv, false);
>  		return;
>  	}
> @@ -4023,12 +4025,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
>  		dev_priv->display.funcs.wm = &g4x_wm_funcs;
>  	} else if (IS_PINEVIEW(dev_priv)) {
>  		if (!pnv_get_cxsr_latency(dev_priv)) {
> -			drm_info(&dev_priv->drm,
> -				 "failed to find known CxSR latency "
> -				 "(found ddr%s fsb freq %d, mem freq %d), "
> -				 "disabling CxSR\n",
> -				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
> -				 dev_priv->fsb_freq, dev_priv->mem_freq);
> +			drm_info(&dev_priv->drm,  "Unknown FSB/MEM, disabling CxSR\n");
>  			/* Disable CxSR and never update its watermark again */
>  			intel_set_memory_cxsr(dev_priv, false);
>  			dev_priv->display.funcs.wm = &nop_funcs;
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
