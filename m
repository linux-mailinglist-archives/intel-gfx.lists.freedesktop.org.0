Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75ACDA44DAA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 21:37:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35CEF10E69A;
	Tue, 25 Feb 2025 20:37:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WDlXoRlX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D2310E69A;
 Tue, 25 Feb 2025 20:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740515837; x=1772051837;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tacs3Ypztdrm1YIFvI7zSr1wJ/VSKRsT0OAFB7pOFgQ=;
 b=WDlXoRlXK2VRXbG4tonU66FIMoWtGTAGj1LkYyMMkFbxraGZcE1c4D8Q
 /ktsDorEDCBwZJ3iDDKYp9nrh/lz3rahPHdPem7USiUUv5La2qCPGMKYW
 6TAMmOmBjFQ6iK8bvVFhy4kGJjWhAGXxvLC+FP40r4P4C516+TtKiq5Dc
 NlFXEGfjYNis2aAraoQJ2CO5IXCEIVi7FTNJZNQ/+JIban/7wS69N17Uk
 kDHVBLsP7iyXw/i5H8FuPLwSQ860fHasEkYiDd3C5IB+YC5y6L039wLZm
 0VMWYGqO5YKzN/fPXcY8BjBOyIsHSV4Y3c9T9ssUK8Pl2Ayx9DcKKifoi g==;
X-CSE-ConnectionGUID: VEqSNNYhR8S3VBmGmIIu8Q==
X-CSE-MsgGUID: 7vimqunsRz26FKP/hGmfSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="28934550"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="28934550"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:37:17 -0800
X-CSE-ConnectionGUID: fHjYuUEfRsy9Gi9j/wpCMQ==
X-CSE-MsgGUID: 5I+uceTNSNCvmJyGYwdcKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="116512239"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:37:17 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 25 Feb 2025 12:37:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 12:37:16 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 12:37:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=itn6Ogk12z0IhmbYeR0vJxkfLTX3xPZSl7e/C1R+kXzgvb/EyOQmVUS8llZLa5TyLTIQPuQc0GqRBq2spNlMSlGvgI6DB1b6itsmorFgZQO6rwD9TEbnKC10BjvoKfMqDZ8SazrRerMmDlWlz4g4/QEiMt+p7o652hdwXRx3ZspTdZS0rWji1c0DnFpw1FkNZEK6Aafcq3pVBz+E1fq/bht3bg4Ng70f24xQ9UAcqGz2CBjQBRwn0Ah2BB9bXxbkfH/rp5D9zl/62j9veRmV2U7efpyNaILsL2//d2kpZv7q5ca+POGT30aUNtFCT60EPLReo4A/jVbH6yisQofKvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JWTh9RDCWrryvYKlyLxnwcrucuRlbyENlaF7E/x0wGw=;
 b=u6NzIoBdFteJVxY2dvttLWoZIvr6oMXyx+X18HnG3HLQIbKENLtYCIFA5++5wSLIy1yfLvBjVnu3t9p8PY0+ZtxuhP45A7Cf8PeftKeAeMU7+r2q9KI4mK5RDVG5mf0XQlts5ORtMR7LzEbL/prWU93V7DJJaKLj32PHdvGWYeoKY2uBtzh93Emz+kBxCouLWk+3UVVCyAFjJa2qXLTP9eCM9FivsR3Nz6v5xIURg28JYUz5QiPhC3yQz1UGdU85mfI92i8rHmb3WBHHIdBeLuudhQLeE2x0WkSiXk14/e/FhJZMQikpQ5dxOGRwsAPDf2bZLfchH4qODdwp4OLg2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB5767.namprd11.prod.outlook.com (2603:10b6:510:13a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 20:37:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 20:37:12 +0000
Date: Tue, 25 Feb 2025 12:37:09 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 7/8] drm/i915/reset: pass test only parameter to
 intel_display_reset_finish()
Message-ID: <20250225203709.GL4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <11e61dca26781cee507f14e0beb7edcc06e86906.1740481927.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <11e61dca26781cee507f14e0beb7edcc06e86906.1740481927.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0280.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: 4da4bea9-7f6c-4d86-30e5-08dd55dc2ebb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?d6xDDhg9nJTUwj3t3Urj/tjy6tOBEbSnM2ftbPPrMVDIFqlFuxSZwqtV2bjt?=
 =?us-ascii?Q?qLp2Z60JjUFO7cwpxll9IyP50sNFMVb1iZU3Teu555dnalEKjqTpFOYhKgAp?=
 =?us-ascii?Q?mxQBvoRcMKKCT46W4wUnNzm9kc+6tOzPMI68krxh9ua44gzlD8JqaJlXXSKA?=
 =?us-ascii?Q?oITFIxxFEZKSJRycpOAkDtpNBcIVJQz2GEZz+gFh6uzmZHLoyHFJ+3ym0QzA?=
 =?us-ascii?Q?YQQ0wxbj12fAQW1wWVUWEVhW3n1ai0GJesBq3X2/Za+u3I6DsV4eCVig8/xq?=
 =?us-ascii?Q?Ca5G9Ov6KilG1mHn0qHjJC8c3CshNqzTGERmFarIDDNB8EiB2rSwSSz1q2bx?=
 =?us-ascii?Q?yeBg9uxPADDLkpcVdRO0LTVN+8fIz/mO8hcPHSKNcHEUZECMqijbBE8BOwRD?=
 =?us-ascii?Q?ZGMTOAZRZYbBzg4EWjy/Z1uWvtgnz5WFs+jfknsY+ERiBtZWv8AQIIe+wbgU?=
 =?us-ascii?Q?aPMf14msXhC4fVlZOWojNsKeV7EaU4u3cOzoghaCPR2+8wpkuPbQWn9MF1V4?=
 =?us-ascii?Q?g/cgPvPdjYO2JEfkpNJHmrZYlEHbgqj8pmd7vjpBHFnvcJhKPfnpVsgB+lKZ?=
 =?us-ascii?Q?x0KFwVveEdjSinH7TkTF5Il6Hbbbq1hbD1UXgBYHX0rOugZBpovNm/AgGiy0?=
 =?us-ascii?Q?IyYz4sUXwSeI5luaIf3vx2g3etS9t0rKr196mITK3WFaNvN1efOKyXuYNxIb?=
 =?us-ascii?Q?CmhbiVtLTtGuV2KchwDRlwBQBHO8EbKTOmssUr+vE5RuFJDNq11KDjA2k/7K?=
 =?us-ascii?Q?zdIdBptPuj4wowOoWtfB+s+R0XiacM7jKz414NqHsHQqJrdty/MN8WiI0vSQ?=
 =?us-ascii?Q?jAU3x1+zgB1j0p6oqLnPub778eLK0HK8RIwDu/W8PwVuZR2/umypG5uU2UcA?=
 =?us-ascii?Q?+3YNQHjl7quk2zf+NDQDpsEs9L1IvmmCLD0UGGRjpVde231bPe3uMY/hilrh?=
 =?us-ascii?Q?4a+f0tzrJfS6EBTPR+zuW/29VJ8w7NnOCeutEHolNhoEbXHLjbnQFEuRZIFP?=
 =?us-ascii?Q?TIplR7wSfsAPAEZzKo7Fc1PTBtV8p5n4HivCs+gKhw4VccuJWczbmvbm9F1X?=
 =?us-ascii?Q?Gr2VrYU8th4ny+SObMpaq7+0AE/ad2Vi1btPmsGDe/0e54Ln/sLA2o5QO5Gd?=
 =?us-ascii?Q?hkodYnENkLBbyTy63k2EZvYZhXjQ0OhJvvJeV68W49I8eMQM1zSjHaDez8jl?=
 =?us-ascii?Q?n4kWX+Wro9JRkyF3i16soKFHED2t6uApzciJDM8tqepwAwUsEjqMV9HWhX5k?=
 =?us-ascii?Q?rq+Ey2GVVwKmqsC2yOtSVm5xlsRkXuA0wLuaIMoyClWoXzlBHwjxRGtN+l8Z?=
 =?us-ascii?Q?22tO1ArVt9LWe6l25J1KQtD4n4tLBG7Wd0Z+FyRhlXzZXfCrihbFsdFoVo5L?=
 =?us-ascii?Q?kyS+sI2XYBuiNGwpSrdV7qjqXT57?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8w3O+gincM2nuzyf+vEFTbKeVCXWnL/6e4wOdU9C/c6rlZXo0vJXdrA575jl?=
 =?us-ascii?Q?W6Hv9EA3Ez7WoxtQuExhlvHIQI6TWR/fKBboVuiS7LzNi79cQVl7jucai7CM?=
 =?us-ascii?Q?po6wXHcurd5pSgyi8ZM50DL16LXq5w1XzytbyLWW+s0KNiSifNa/djqkfLx9?=
 =?us-ascii?Q?vlpdhp77Pr2ooa7/njBbxMgKh5p55Ru3uUO4D5sSV4WN67VyE6VRvTpasby0?=
 =?us-ascii?Q?JSpGuuBJV09F1DTXzv+1j+YBbH6XqGnMNg+M63epEcWQDYksVM4f50T9O5x/?=
 =?us-ascii?Q?jed7dFV9ws8hdKLgye/LoH+jqBj96nudwAD3514Ph5bZVB6+Vq61IfDJXqhh?=
 =?us-ascii?Q?8BB1rCCv5TqnTlAsCWb3xAbf5IL7ILCSocgvoKyJ4rKQ7aBt0GsDot3yXmaP?=
 =?us-ascii?Q?LlWPPZZLE/rpps4WxXE3p82j3Mve3iEVSr1bB6h9C9bxSE6SfOIwyVLB2TQ3?=
 =?us-ascii?Q?z6QvqzeBpGhPWcR5GFGrPq5doKFqgYBZVe2rNbteZ/UKBMyFSgHFwEYxy7Wu?=
 =?us-ascii?Q?/y0UmstcQSUlUgy/RnoqHtHC93dxiatXITkBzANsUl8meyxtCQB6YDAyM+xz?=
 =?us-ascii?Q?/49QF0jqpVGexf0yIc9fX9/fO21Ot7p9KEtxaqE4Ad7UOMTy1etrqRCHj3F5?=
 =?us-ascii?Q?cRsLhHbK10hWla1kyx8gHB9gAZuIDbuVUXwtd2Gt1ZPWctweQMY3eqy9ts6V?=
 =?us-ascii?Q?vJNFRap187A2xW5Bx2rRKDWjYEMqL9/QfXqXVT3kTEX4BAG+eHfwBS9/tQwk?=
 =?us-ascii?Q?kbzHIFJsmoeQOu2cawcIx5I5wGkEMbdXqbL47aacxyMx9haQHS00IH8G5enP?=
 =?us-ascii?Q?i0ag3FbzSW8V01cARGCGxjxGnTH3hlYYTQPEc9/W8EuW5VvyEmSl8j+t/dxE?=
 =?us-ascii?Q?1CdAIAXelp10vjZgioJdEqekJPFFJNomRIMwVU+OjPiFsaHqoZApbtEGY/Fa?=
 =?us-ascii?Q?8GXZsSjplcxkv0Xf2VNbSoM93PTwGsZAAONf5IK/wvQ54G2F8dce+vkn+vy2?=
 =?us-ascii?Q?ali4earz/9mm5MALtyWIy4XxEmLxtSLKIAucT2+vwGYnr2lx7TyZj3yi88Qm?=
 =?us-ascii?Q?uVQQ5Psiq8UmqwquizMRyRQ4sHOJV/6Du51jxJk2IBMrPRHbSYu9K3CnrYIr?=
 =?us-ascii?Q?OMXfceSag53WwRqQvdw67+2uQApw8/ZwZpZL8bQVPUTz37q/pfFiWnitg+he?=
 =?us-ascii?Q?3iw5dGsm5vaSG4UQXylErFpItyw0nHdGR9QvuKXin/KHaEhJ6hxZ4eNixsTU?=
 =?us-ascii?Q?ltdgAuosfwRk6pfEhnBbzm+C1UkNf1rAGfmSvUkUEL/D9T4M5NZVyLavwUuw?=
 =?us-ascii?Q?K+XNId1D65ecK0V5KM0JQeN3Rr4lKzp4SLN/2kVTU8gqrAMVRIgMrDl4RARm?=
 =?us-ascii?Q?uqq8c54BPd+9Cn/nnz4cLmY0kpL/41oB7AF3+Qr7Dh/yZ760ULQk8erUyvCm?=
 =?us-ascii?Q?a9qSud8tRct5Hwb03ro2rCzxmS99HXJp1k3UGTpRRS7a1O0U7bjctJPFTQzU?=
 =?us-ascii?Q?3PUhw/flfMXGWxDIBSHitBTeTzSU/QXv4ZXVQd65Szl6/8eZ5fiooxRo62wL?=
 =?us-ascii?Q?+bXXA5vRn6cGAoSNYBCyxBNlKE9uwV0in7K3nv24u/n0KEvHTMHbOgSv8v4O?=
 =?us-ascii?Q?XQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4da4bea9-7f6c-4d86-30e5-08dd55dc2ebb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 20:37:12.2978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xQhpiIPytGxeR2qqZBfz1EQ6vaQv0lNCWfKX3Gk/zbRpXZ6TQfBuhd8cYWcjxppSdoTMXnT0D5uIqDRRI0AgtT8AuWLcIuLt7j8HsrcTPOU=
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

On Tue, Feb 25, 2025 at 01:14:21PM +0200, Jani Nikula wrote:
> Deduplicate the gpu_reset_clobbers_display() part by passing the
> information in from gt side.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 12 ++----------
>  drivers/gpu/drm/i915/display/intel_display_reset.h |  2 +-
>  drivers/gpu/drm/i915/gt/intel_reset.c              |  2 +-
>  3 files changed, 4 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 362436cd280f..aafee2df6501 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -14,14 +14,6 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>  
> -static bool gpu_reset_clobbers_display(struct intel_display *display)
> -{
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
> -		intel_has_gpu_reset(to_gt(i915)));
> -}
> -
>  bool intel_display_reset_test(struct intel_display *display)
>  {
>  	return display->params.force_reset_modeset_test;
> @@ -80,7 +72,7 @@ void intel_display_reset_prepare(struct intel_display *display)
>  	state->acquire_ctx = ctx;
>  }
>  
> -void intel_display_reset_finish(struct intel_display *display)
> +void intel_display_reset_finish(struct intel_display *display, bool test_only)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
> @@ -95,7 +87,7 @@ void intel_display_reset_finish(struct intel_display *display)
>  		goto unlock;
>  
>  	/* reset doesn't touch the display */
> -	if (!gpu_reset_clobbers_display(display)) {
> +	if (test_only) {
>  		/* for testing only restore the display */
>  		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>  		if (ret) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index c1dd2e8d0914..985766cde001 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -12,6 +12,6 @@ struct intel_display;
>  
>  bool intel_display_reset_test(struct intel_display *display);
>  void intel_display_reset_prepare(struct intel_display *display);
> -void intel_display_reset_finish(struct intel_display *display);
> +void intel_display_reset_finish(struct intel_display *display, bool test_only);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 62590ed91cf2..2ca12bbf168f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1431,7 +1431,7 @@ static void display_reset_finish(struct intel_gt *gt)
>  	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
>  		return;
>  
> -	intel_display_reset_finish(display);
> +	intel_display_reset_finish(display, !gt_reset_clobbers_display(gt));
>  
>  	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
>  }
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
