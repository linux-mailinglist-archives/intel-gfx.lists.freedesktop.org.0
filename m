Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DD58977DF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 20:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA65112E20;
	Wed,  3 Apr 2024 18:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kjeZQHHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF350112E0F;
 Wed,  3 Apr 2024 18:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712167923; x=1743703923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ks0FwBm7cWFdtRIwsySzd4mYMQCaTSrrPb/WxnJos04=;
 b=kjeZQHHemt6+VE6I3tFSRI2NykqtSVnDcXpecniXPI6Zu0DuZqYrzz/N
 /CXj+xOAVvDBJKvVRTzgatlKb3ABFti0HIQb7S5EiYIlIFKnpdnSDZ60A
 bxy1S78i6ZHqNWeF49QM+Th/ZQ4wbW4M2GJaUrPCHLgi/bJLU1t5cANiE
 yP4by6G2eoz2FWPV0GVI5Ayo1fcx7+IqWe7uRTU0/RvrI5tPExwwG6Ckk
 lr5qpdP2AXdRxOVZWuNEaeBBu5iGF2Beiu4YjSP8RXhdrKhQsFriYN6yf
 Y2OTHoE08NJCi8RDEZVeD3uNfjgUk8ahpxBc/Z8lYW1mUuovDU2fL+2Ir Q==;
X-CSE-ConnectionGUID: lsYrgqqfSSOZIkLZ1od8Uw==
X-CSE-MsgGUID: Q+a5sVWMQBqSEeS31Id9Fw==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18780015"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18780015"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:11:58 -0700
X-CSE-ConnectionGUID: KNj2TCIlR4S5MekQbQJpuw==
X-CSE-MsgGUID: nBuUoiSaRzKJSESbzDOvyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23168988"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:11:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:11:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:11:56 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:11:56 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:11:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZScNv9dvsKxYa5FUZn533Mbtww0IWl1VkXdgzIJpcqLPmxH3NetI2QZXuYPvRFQjFa3YHvD/8Uhk9vMToOVHxrjPS8xaOOkZDsRqasXU8xKIiT1a7dBPgeTzdWzLMnP4Kg0mZPo9LeQSmMCb+9MPZqb7AZnnEvbSX1U4qAf7Gs2qc28pT8mu1lLn8amoEi/7mtmDn4s+BiahjIUQgaRsOg9TU9kTdN3hS31PTx+pV/4YOtiAyWaKg2CgiabmPUAzWBd3XGR/BHDRZY2e5/faFm+PCBIsqSu0hQLJNR2oMdtGRadX4CcIQKy9u4CLu7BcKDJnJKeechiI1Fh99FkZGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mpkXEutGI1aCNeNjgxMbL/yJCI/QmNgrCuWw/rnLTiU=;
 b=b013Wh2HjXk4F8m4fuZa1c4NTR5/6KpYjSJs7N3Y7GuCHcainA1AuNjEdWaFXJ+41VDBpwiuatucXL+S6bS1m7O+K55YTfCznPLsAukwxp8C6xAAMSksDUt6HI32pQrG+UM0JQYfI8eQZR4urJMMHhPi+FvfnqyefKiNEDq2bVfcQPVZikXrQZr7xKkfs+zZiVEP/4GbNDuGrCWzg0v+dlZxtXW30iBv0DsqZ7nT3a2ijOoRYE/HWnZalFvDjyJUZpRMRJjZjALHrBQIyVuvy3Y2pUmTKV6rxcllwME8oXoHITZjrlueztCCKATSmuMVReS6KKM12ABLjO+neGW79g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BL1PR11MB5269.namprd11.prod.outlook.com (2603:10b6:208:310::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 18:11:53 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:11:53 +0000
Date: Wed, 3 Apr 2024 11:11:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 04/25] drm/i915/bmg: Define IS_BATTLEMAGE macro
Message-ID: <20240403181145.GH6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-5-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-5-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:a03:40::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BL1PR11MB5269:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H+AFUWEXIXl5sDQBcVQSD4Sl68civoGZZq7tZBwxxIeOIRkjf/I8Ckc/drfw1KW10G91rr3V00CrVpkpong5JGc+kSgDAG2DCkSK1qU8RHwxZ/Kfr8stXpiVsHAg+2W2DDEa6Umq7i4XMrx1geUKrCLDVpFIRa76yP3hpUR1Zuq6l64L5puybBTWRhxjQrAp03KM4Gyad0aF+G0q+38Kk1GKQ4mQQZkK1FrUqemKsFKJvbPhzyQROW75cclPkBygcEhP/l6wIB6kgA4CRtxZn8IoqJkz/x7TKO4Xtk7p6wtn8wIzSB7xT0N5fk+7VsCWdcfC+ih5jxZ5GKrTKQeAjZ61Uvl6XjGsfLO19XvLjpY7fc2LU+TrLIYgBgr9Ch07nCSwZuzhayS/BGZQ9OZmbvag6hS2elgBlUEo48NVRRUDGaCTCd0t87eknlK6xu8fKnxYxQusSkF8n0XwTO6AyuXZscd0g3hqPNyLlGzihdyOwnX2JgHdhXHMNJ3HCIQs4qMh3a/Su0dH20PXrKZrB4Rh/7ZcEN8dkIxcvhJcVl9Jx7X60KW0yupwFlZ5gb3yqcZWxEHUXp1ullRt4PbPvk6MRPug2oGhEm/r3dNTqRivaq/Qqn2TNvpY4ORHOO/MlgiEeO4w86yCBRPZzqtwClCPCJQrg59V8OXPWHTF4zE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mGzhcQV3NEK/HOcFUyZCL2b4rX1SDKNOrQHgRYRcYEZO4cFQbKW1xiQqL73G?=
 =?us-ascii?Q?32oftLjceLavc2Tp+j1iBlXWf0uYRLLemEpUhMlDVA7sM7jivfVFydUK699H?=
 =?us-ascii?Q?HMayoZXteS3KUGJeRKN+865FIhXK6iOfpPSiE0MIvB2mfsBw377EOQ5uk1M9?=
 =?us-ascii?Q?AZAUsnLXsl41Z/q6p8lczjJsY7ihes+PtlNmMuWls3NH6DqZoAf/54tGIX7j?=
 =?us-ascii?Q?TOSYdkJtBwteUiRhDWtt7oW6n/+4CFMC0LI5nAFWc4vaQBMWwaYizLYmJtqU?=
 =?us-ascii?Q?2ZzneaDPzedokzBFLy1e3ddvRvmvKPceNprprJCBeb2NMWeg5PkgzgSZ/IAz?=
 =?us-ascii?Q?yIj7Smt+Hutd7aBMbL6i4oD+5IPIRxa5Drwuw0VlA5k8H2UUwqNq8eQaqioj?=
 =?us-ascii?Q?ofXWqS6o6P7QIwIrQLadLQQhQ7tpqlZwZh2FNd0fWhpnGX2PYcTAZyuINaZ+?=
 =?us-ascii?Q?ZGajDVfFIdts26QDkpa38Z3HLReVWSljsIwkyXqnLxrm3XR374y/N12J9+S8?=
 =?us-ascii?Q?Ku1NBVwp+54PmD54ZRO+NoNP2f5KA2ykIAW+6M5ovh1DPJ71ARNDo0r/qWtI?=
 =?us-ascii?Q?CenQilWIZk8LrWHwb67NyO0YL9ltA+9EfhX8RQacWta/eNvRRdjQZEV3/DmB?=
 =?us-ascii?Q?7h2BDRbk+1nR9BbRHL02C1t2U+TocG1oDHDdcikKSuO2Hv2AurZNVuZ3AuSh?=
 =?us-ascii?Q?KNmH58TT23O22Z3xvZRXt9PlGIAtttO+AOkTd+5bmiQv2Q0+el0a/W67l4Mq?=
 =?us-ascii?Q?TE5Q+lI2CD/sHPgZ0cgI60sNl7VCRYydnCfB+dT1RaB5b56zPNoHF2HNP9pe?=
 =?us-ascii?Q?ZYAs4QMZTuLRDpYJ4f3jZ4YTxJOoswZZFC/5Co/MYdJd2paKhKXR4PrUTgXM?=
 =?us-ascii?Q?8EVYUBz7pL6pEgB+otOgTPrqLRHJ+3i/HxuyAUv09/2dNMkwX6TzfifyoII1?=
 =?us-ascii?Q?NaGuKkmfgnhDYk/FjvLGFecFOqlriSacegrJ+hqU91pCBAU6U2zdYHNJNu5q?=
 =?us-ascii?Q?J4z6G+S83WexI/5uZU0ImPVf/p4S21bmUSyJwdP92YQQe6HKWOqhGSALEFlk?=
 =?us-ascii?Q?RZKEslqshUNAJlY+973DXvJDqTaDqMpdOipwyrEz2wc8u8c8cP9Y1LIK/Aar?=
 =?us-ascii?Q?yrrwhhiKSeJJqLrl1j1mz3bb6EVLLAVt3dS3jLtvekZ32VcjdX1OFoFwczP3?=
 =?us-ascii?Q?xoyNGpXpR6fV+b36RvviFXB3XAZy/ohNFDhA2QaDXd5jQie+OobaUrdTf9JV?=
 =?us-ascii?Q?m7/+eoKpDUwp6a7xQNzbM1iLG1EwkOw4kyWCITINmAFAtNISYR3YRJueUx0/?=
 =?us-ascii?Q?JBhee6Unwy1ih3q0pEi6CDOqKDg9czHhQvHQM206bwHNgLlFv4hqPBN4V2Nk?=
 =?us-ascii?Q?aJbvht+8GZOqNpTGWO/ZD2hHO53joR0Nzuk/6YeqtkA8zJesCkM6IUT/lwDs?=
 =?us-ascii?Q?xbien5ZnZxeZSKznPeP87jcfmJ9zX4fiPfK6nnjf+/XJZv5/K9CE0fbz9a99?=
 =?us-ascii?Q?VICxyYctWGKNUnIM4o+YHl5YXhXDWXUGUMNCLvi/NPUbCQBGolUmHwNoTmCm?=
 =?us-ascii?Q?dzBhI8gPToV0LmHqYNS9b64A0s109t9lB0cv5B+aVvHIQQ29XWEZhEzCfZS/?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ed7060c-8c28-4e06-a27c-08dc54098a21
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 18:11:53.0289 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AWrP6aw/Xzc7cobOVVdKQRIGyLBzfPxc2yIzW73+G6+Z2uIVQy8KFLNBSgkw5ZNjaEPtU0BzDhOgSYx1Gx8toFNPTQsH7sWINgdOUMouXfg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5269
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

On Wed, Apr 03, 2024 at 04:52:32PM +0530, Balasubramani Vivekanandan wrote:
> Display code uses IS_BATTLEMAGE macro but the platform support doesn't
> still exist in i915. So fake IS_BATTLEMAGE macro defined to enable

I'd drop the "still" here since that wording would incorrectly imply
that i915 had Battlemage support previously.

Otherwise,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> building i915 code.  We should make sure the macro parameter is used in
> the always-false expression so that we don't run into "unused variable"
> warnings from i915 builds if the IS_BATTLEMAGE() check is the only place
> the i915 pointer gets used in a function.
> 
> While we're at it, also update the IS_LUNARLAKE macro to include the
> parameter in the false expression for consistency.
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index cf52d4adaa20..b41a414079f4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -546,7 +546,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_ALDERLAKE_P(i915) IS_PLATFORM(i915, INTEL_ALDERLAKE_P)
>  #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
>  #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
> -#define IS_LUNARLAKE(i915) 0
> +/*
> + * Display code shared by i915 and Xe relies on macros like IS_LUNARLAKE,
> + * so we need to define these even on platforms that the i915 base driver
> + * doesn't support.  Ensure the parameter is used in the definition to
> + * avoid 'unused variable' warnings when compiling the shared display code
> + * for i915.
> + */
> +#define IS_LUNARLAKE(i915) (0 && i915)
> +#define IS_BATTLEMAGE(i915)  (0 && i915)
>  
>  #define IS_DG2_G10(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
