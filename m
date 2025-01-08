Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7504A06719
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 22:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E5410E948;
	Wed,  8 Jan 2025 21:19:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bDgfEAHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F1310E1DF
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 21:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736371174; x=1767907174;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AVj/IiWVcJbyrUezyr//FPsbdVWktJ5VxLxMNmnAySw=;
 b=bDgfEAHsUR1c5GiOfBhN6EjiDU8mv58ckARM5vs8khZEOqlbCE85cLOW
 WJfklETSPyiZbbu2W7z7wPYtPR7cbKiXuOpE0IPMDBIUI/s1S1qqXxmwo
 BlRajJgowW7rDy9oRnLXeNkGyIzZCHPZrqmSqNlslAyVZR3lAXq2GK36x
 C8SYU52UWDJ/lhXTE7yEzcQvaOKU1zCEvHRaWWc3co1JBltcdvPV/Kjcr
 DlgvKlc9tQaPTS8FsakTBdPN4cdsex7yXDtayHQEVK+88M7NX9PQy6TYf
 Ypzb6M0ugYLTBrAO+SmDx/UUC3mRtqAH8srI2qZzV+a13OD/N4ucl57YF w==;
X-CSE-ConnectionGUID: DX8mUa+SR6GQYqoSEmgwSw==
X-CSE-MsgGUID: 2k4uYg1DS2m+YEIcWperfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40560045"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="40560045"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 13:19:33 -0800
X-CSE-ConnectionGUID: 5S8S8drWRJSxbuvfLxdLGA==
X-CSE-MsgGUID: 5vVtGk3/RvGTpHZeAUfFcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="103418395"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 13:19:29 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 13:19:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 13:19:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 13:19:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b2p53tgcFMNqyyYyZ4aERkapsLdJH8Ma3zSBqWbox1CO6prFPGb3bPJ+Whe1lH3qxFyauyiAn+p4rKWuywFDqNeoqOdtuBX8Xj4NJTTAzE0DMb24vof0Ml/7wbAFF422Ph9N9uTj/Y9pQowWq9Ykexsimlejssd8ihX4DEK5U5eJ1bsWtFrLslqNL2ghfq/3NdoDEPTRFdAPr39njalka/pdObswfKJ6udC0di2SQhfzkBfH7O6Dc6DKWnYalyv3zxgrQQr5CExOrX+7Gz4iBRw4ri4fBT8Qm4luTjZyvn4tGhDf6Ap6MxgYpefLIWMRS2EBJR4jIzVd5njkarSkcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TFu9q876BtuT2lNiBB0K4DChoVnpF9wDeH8OZk2yELo=;
 b=fcEycMwaa86tCaWcK50zG+j295QWKSKZY/9ve+7dHhXGSRY3LN45JrC9/agAEFwTBS+XkxZIwx/MYQ8Lv6a9HU1516IBPzXR9D2AzmRlK1azrG3c0n8yP7/CEF9EZKale+pjJaUXycRnLn6RbneQ4QVZ15tAtlVRx+jYEoFtti2z33yt+QC2IMAURVTWAfff1wsrGsKSMGdATMFOWMcp+vdLO3brcS2OAeUFU5MQBl/jI1ntfFIlZDH27DxN9Fh/3f4UBU1ThjcfGzJv+BZTC/wSDzUc6tdK6wYlKVZkxydqPtwK1z9HsbyWflug1TWiRSlySSUkdGxOs8svK/Wk+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6323.namprd11.prod.outlook.com (2603:10b6:208:389::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.13; Wed, 8 Jan
 2025 21:19:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 21:19:13 +0000
Date: Wed, 8 Jan 2025 13:19:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/6] drm/i915/display: add
 intel_display_gpu_reset_clobbers_display() helper
Message-ID: <20250108211911.GJ3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <14809d0398a260febbeb0e4bf2c25f97cc3bb8d7.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <14809d0398a260febbeb0e4bf2c25f97cc3bb8d7.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0020.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::33) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6323:EE_
X-MS-Office365-Filtering-Correlation-Id: fb660e56-0ed8-4c15-155b-08dd302a1983
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?kao8OEBXylnglQ9J2tOiHb7DtPtvNCHlc1SJJPd/OWiQmdx2BJV+L2ucQjAI?=
 =?us-ascii?Q?NaNe4gTar03Ezg5msl/6uarQnZq2zGRQEK7EsSjfHbD3GQgo2M5kLQtGhBvR?=
 =?us-ascii?Q?U1cYzy1BFYneerJ/nrLtL5t5MhQYnAXz/NMvo8dPlJXNFCEkcg+P6mYIOUC9?=
 =?us-ascii?Q?GKIDYZru62F5OcnZwcSusPLJaH+yId1WKQjJvprnm15k2TaI1MYGy0AfoMlx?=
 =?us-ascii?Q?I41nWEX/RmMvjxGAp2SoQGjHGLVvVpL4atHBwKosi81VFcJcXtyV8hyGHSjD?=
 =?us-ascii?Q?SXwKZt8XPjds8sjw00SImx/MpXAUBauqYCtGALMjMlp1tVxJ8OHCiggtfILM?=
 =?us-ascii?Q?M9VFLGDvT2MuAb9U7MlIpsM/apnIQvMYPsk1vUqGIT+msPmDYuQW4SzG5167?=
 =?us-ascii?Q?uJQY3OM2LAiHfIWhUGewmG0O4bV2qVaY0DmHw5l/lwolPgghQVntcLQPLu/s?=
 =?us-ascii?Q?wlUqnN4eZyCRdrQldJGTLS7xMNn+4d3Ds0DBzc1D2MzxJETKrItaXMcmXKdd?=
 =?us-ascii?Q?AM70svB0Pi0wh8G/KAtovL5HxG6wkGs9OFeR4z3a9LNyZQZzi/wHggapPbaW?=
 =?us-ascii?Q?DPEa44fBy2jESQq4b+NRdgYLtHN2eDlsEdBbwGGL/t9FTmnz2OP+81uazwb5?=
 =?us-ascii?Q?Kglq2znkFsw8GKyQHwCD0cGAutU+oDcfADkkcEXbNUGDFL+H4Uudq6m0Kasa?=
 =?us-ascii?Q?RYFsn8YnyKypqjdh8a8e2LXfw5Am+naxZXjIq/ImXvYNuCsOuBcZUNsSIKNk?=
 =?us-ascii?Q?s9kPOfNDTd+Oj9qpkWFB6fBVP+o/2SljPCBkidT21lz87nBOFdEon6G+qDTZ?=
 =?us-ascii?Q?0C/dCoPrAiKSVQpumAIWXrXWNMqpnsArd9C6N+xKoWKEC5zW1oGPBH0BZCKL?=
 =?us-ascii?Q?9A7mvQS/kh9O1iCQC0NycFNmtX8tj/BYUaM5o+YpJtvlgdFb8er2LUp4bW9N?=
 =?us-ascii?Q?9Yu8ACpUktRcedRgnQ3MYAoeslk4zhM+N+IROt7UlER9aSBeSHyatlemzunB?=
 =?us-ascii?Q?gw22DrEi9mutx5QeGboAIvm+jFGhS3P1wd61jl0AXJDoOFP2pr0UD6oA0iEn?=
 =?us-ascii?Q?bU3EGqqWfW6bfbES4+TyTODvx/KnaiUFX+g/Z1r7zGKdwExGoNeAt8j6+vwK?=
 =?us-ascii?Q?4j66smkypch9z1RCVtZ75tA94oQ0SoNn0jPqhcwAb7y6aDyoz0Oi6pcsggO+?=
 =?us-ascii?Q?sMnQ2U18m+i7leUHBb/4wKIs0CInlcWgLYXI1tDFs+HyZq2UV3rhf2llIq6Z?=
 =?us-ascii?Q?NunywZuaoPkkqXIHOEsmU3YODaQ0er2xpZoV7B+M2VyaBqkxJm7UNortZFhn?=
 =?us-ascii?Q?j0b0XCGVoaTWj2ucYxSEhsbYRsrGBnwW07GdZsCXA4wK2x1bETa287wI+LzX?=
 =?us-ascii?Q?8ypCl0GKyFIJgIpFtxuzalOI90db?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kkat8L3pB/m9F8YgI/E4plcdBnYFyQLymR+x/1ctv9l/dOJHoyQBvqzpGNfU?=
 =?us-ascii?Q?VcTd5/Jh6CNEGaEBDIxlSowMd18hgQyRqTjUTZwUxIcp2kPNthUsVvOzIxak?=
 =?us-ascii?Q?S3aZQnIkEZOMAnny29w1CknyUXbR8DrsE3zo6cBpjDXmY+1IfKtLsI8fd8ZF?=
 =?us-ascii?Q?OsXLH1yGmkdRJ0H5Ud7hfTQHrMqyslE+4foUbnbMkHfYsIuK/OP43j2EzPfR?=
 =?us-ascii?Q?oBmDIGE4Y99EuDYMVhK+dvmc3HZnZBzAxkmZCVFY/qM3jZXS8ZwfAdENOVkX?=
 =?us-ascii?Q?33FO+WJtTekEA6XUxVl6SC2h8oz47Rhw7rqXKRR3ns49ZREF4rfg2zB5vVYh?=
 =?us-ascii?Q?lvDHVDfosP+CgBZi4+ek7Sariz+gtJzxzEejnTjc16bnNwtuugb0p59HNw1M?=
 =?us-ascii?Q?YZ+J5HLAibys62Qm9o3y5EdL7uwGLSOr/DpjgFh4qmf/aCSVjsgKYR1a5n63?=
 =?us-ascii?Q?qUPKX/yz+OzIkSNirQEdBFZB2UWfhbFA4mTkIaIImo9ReX4gwihb+6xZlYAy?=
 =?us-ascii?Q?XigiohHbIjJXIrsCL5ITTYwUk9p7DoRpRAxOKHyXYMnIcCW01sMiKzKEBRlH?=
 =?us-ascii?Q?TLw1YXkpK6zgODib59m34LOmigandSz+0EpFUVYnkfTtqdSP2VC7H1JpeNsd?=
 =?us-ascii?Q?e/DP2uDKdhe+PRZTXG5IQ5kIC/rN9T3xIdIzxD0qYChsfT7LZ3rvHwJ6byeC?=
 =?us-ascii?Q?gi0zHSjAaYIInKoKSmftTc/pIrC2gqvChDJrD54deA8LFosaum5NiPMi9ait?=
 =?us-ascii?Q?DtHxUWXG40RJO1rsgsqZBfmNo6sfcUQf9tg3y/0/mQlhK2m4JjFHacIaGH5l?=
 =?us-ascii?Q?LG9uhM0l/1D1N0Gh3KMCkBciNAqFi28BrxEa0j3+X0OsyMwRJv1VXhS8RDx+?=
 =?us-ascii?Q?5LrzksQXQO0wej5wpkxO9WwqRwxGW816hHuknnziNzmnATxqhrm79ZnvYB1X?=
 =?us-ascii?Q?ZSKeMso51hQhvaoKbckuS9OBZwMY/aXadpyrh8A2q6dF5BwimrPRGuH9bgMe?=
 =?us-ascii?Q?qAQQNwIwcechI9HY9o/fgp/Bw95xSA1/bSFLCHerGnHxTXqI71Pc6pRh+jY3?=
 =?us-ascii?Q?FaehwoteylHsTzDxz8Xfi+DvysOj0OHN/swsrdSxonD/w/i9h4tpasT4/Ic1?=
 =?us-ascii?Q?5ifkhhZIXjpZNFehMjbH8kZd6NQ1HZmnsVTFn40t1QaWCpVqPmauotPxe9kM?=
 =?us-ascii?Q?LQSqRPFqDhei8ghGyPwTSSOWBPbdc3yE+H5ARlYfnWh+KdkeiV45mHR8SXFY?=
 =?us-ascii?Q?jCrF+bRC+/Zzon/b1KlnFYGjlu7OMtkGBjivdq25wQc2rd7/TsQ9ioX3JQTS?=
 =?us-ascii?Q?uGC+Mr1zMEKzZcEzgCv0y7myvxnh1L8wa1447duIItF38akCokSNlAxAs6C/?=
 =?us-ascii?Q?h0oxVXZi82JXGuRJkhtLkX6/gws8EwX3HKyCLVwKcGeTco8PTCD8zoSnYdor?=
 =?us-ascii?Q?b6The3EcgKEIKLQJxb2Zazt9F438MRoYKipkk6SH3KTV2XoCkzf90a79z26i?=
 =?us-ascii?Q?hQoGLQ1J7WCPZLtCyldYeXh4PVD2HZ0QCbiy1963VM6Crewyhlj3jA05ISI3?=
 =?us-ascii?Q?pgtcrIRl+xg3lxPsvFiK4ofCj5JWed0WYIEZWhdLpokqbqqcj5Sqyja73h5L?=
 =?us-ascii?Q?Tg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb660e56-0ed8-4c15-155b-08dd302a1983
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 21:19:13.2685 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HiPMlxlsuX+xpQtjbgdthsy0xpGB/Lu26dPHOLFx32sg4N5B8ggZG1iIMOuP8o7Hs5bE6TG7ebaFneFLcJ12yIwXSWE8Z4EJWZnIAuz2rj0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6323
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

On Wed, Jan 08, 2025 at 12:41:19PM +0200, Jani Nikula wrote:
> Add a helper for checking the gpu_reset_clobbers_display flag to make it
> easier to relocate the flag later.
> 
> We keep the intel_gt_gpu_reset_clobbers_display() helper to not have to
> duplicate the gt -> display pointer chase.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c | 11 +++++++++--
>  drivers/gpu/drm/i915/display/intel_display_reset.h |  3 +++
>  drivers/gpu/drm/i915/gt/intel_reset.c              |  3 ++-
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 1e6421d51c51..93399ace7761 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -13,12 +13,19 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>  
> +bool intel_display_gpu_reset_clobbers_display(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
> +}
> +
>  static bool gpu_reset_clobbers_display(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
> -		intel_has_gpu_reset(to_gt(i915)));
> +	return intel_display_gpu_reset_clobbers_display(display) &&
> +		intel_has_gpu_reset(to_gt(i915));
>  }
>  
>  void intel_display_reset_prepare(struct intel_display *display)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index 9a1fe99bfcd4..5acc07aab7b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -6,9 +6,12 @@
>  #ifndef __INTEL_RESET_H__
>  #define __INTEL_RESET_H__
>  
> +#include <linux/types.h>
> +
>  struct intel_display;
>  
>  void intel_display_reset_prepare(struct intel_display *display);
>  void intel_display_reset_finish(struct intel_display *display);
> +bool intel_display_gpu_reset_clobbers_display(struct intel_display *display);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 0d863aa58fb6..774caaaa4ce5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1181,8 +1181,9 @@ static int resume(struct intel_gt *gt)
>  bool intel_gt_gpu_reset_clobbers_display(struct intel_gt *gt)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_display *display = &i915->display;
>  
> -	return INTEL_INFO(i915)->gpu_reset_clobbers_display;
> +	return intel_display_gpu_reset_clobbers_display(display);
>  }
>  
>  /**
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
