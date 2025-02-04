Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828ABA27F42
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 00:06:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E53710E70A;
	Tue,  4 Feb 2025 23:06:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VniU+1U4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AD2510E70A;
 Tue,  4 Feb 2025 23:06:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738710401; x=1770246401;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iBrFlxTPGU9G2uhUu0adOU2qHHGbTygyVgsKsQj1KmY=;
 b=VniU+1U44WimIORaVT1WzxrLX/7ktbz1mZByhAZRDo53ugXKKikP2h7v
 uzMRNpXjVYnm6g7lAyKtMCeiOHeXkDNt6154xiAC/ato9bFyFy0N7fG6Q
 RNy5mDcGA+JvrolZH/jcXINWxsyVzW87h4yPXH1ilhKgdRB+2AcTUWOab
 Wywb/iwV4WbwYvhCM/5/EczF4iv2UCm+/PZMDFTvbIgS+jL9PCeMmG8wW
 n9jgafTseC74j59mNN68xRzqsm/RAnbP3t6eNNYCqcMwNj1416haCZdxC
 HPY3SfrYVWfZClzWsXlV3GrAu7tRZlwX7ExQ+MhjZQRDjkVwL/oSdxWSh w==;
X-CSE-ConnectionGUID: n4V5jT2YQyaxWRsbcyJ08A==
X-CSE-MsgGUID: Tc10HGz0SK2kQepdcA6hag==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26861732"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="26861732"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 15:06:41 -0800
X-CSE-ConnectionGUID: yaVwcao1Sd6xcTd0eGbrjA==
X-CSE-MsgGUID: MJd0zHjyQJ2fIh+ex4E7Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="111308529"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 15:06:40 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 15:06:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 15:06:40 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 15:06:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F7n6mMulZXBz4uRYBXRT5koZMnKwVKq8Refj18UlKF/xoAI7UPTiPhmgKAzFOXvW2z568gauqL/hTC26XVou15rdj7agHCmiXOApbIlQqI/IBOi64eTV0RuNdPP4BU2B2o39AiVUMV2KHyBz0AnGSOf2GMyhZor/BjTvjqZic6+gRXDrV+4j0fy+xPzP+/HyeurISSztymsYgGaIVTIUlMn3n4zZPXkAzPxd3pO6iSXzn69u74JpRe2/NCNfHflL/pu2PKrSY5pFcMY+lz4wkRv9O5zpCLY5+Pm54pFU05keTjA8tf3qG+h23sXg3XS96S1iJ2IdPYPD8Cl66IgKhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FHrefGper/6IhbTMTCMhLaqFHJuBz7LGl+l5jvhJ7tk=;
 b=RKbtvDXL5CUKk5kTxD3bVoFz5s73bMsfnNk7Tz55BEIQEH6HwWhJwhJCPSNdGLuAuUepA0nlwE/ikU5IQmo25mt/MkHP6BhzffLDcY7tDhEIosKYBTJY9bUJdDklfuHU+7cm7ob1hqPH4xe4ik4AnOKYhm0fAmTlkkxq7EgZNdFcUGwcBgv21OLTjkCFCpRyfh/vdA+TGiqsACD6hAcsrhttsoTr0aT03jGXKmFlmO+QiUF1ngyH2m4knjzHBDWedX+nRFxWRzgTqfoACIeDqTkRjnzLaLFXnI5ZpY3gdsyzAVOn44cTj7OwcQp6J4SXmIqwWuDAqS7j9vNOKAeG/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CY5PR11MB6187.namprd11.prod.outlook.com (2603:10b6:930:25::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Tue, 4 Feb
 2025 23:06:37 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 23:06:37 +0000
Date: Tue, 4 Feb 2025 18:06:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915/cx0: convert to struct intel_display based
 platform checks
Message-ID: <Z6Kdeu9mch62o0vH@intel.com>
References: <20250204134228.2934744-1-jani.nikula@intel.com>
 <20250204134228.2934744-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250204134228.2934744-3-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0031.namprd03.prod.outlook.com
 (2603:10b6:303:8e::6) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CY5PR11MB6187:EE_
X-MS-Office365-Filtering-Correlation-Id: d03231b6-dba6-43de-c24d-08dd457093bf
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Cas4sSKaye/noX9TepWLI3lKi9j60jKr+KcHtiVbOi3AT/w4AcDd7+7itovc?=
 =?us-ascii?Q?jLXGrkQyzMlPS+qPcY0SKsAmtgRFVPCgjsvZH9TEsYuNCMncdeC/r+Jmlu8o?=
 =?us-ascii?Q?fq8G4S7pUJ/8rQ3sRX/OM6G+NR0MOAjiW1rq9FrsN/n0GBWwtD9jIl7CYvRC?=
 =?us-ascii?Q?XJ2neVntVEQt5N9Uv6T9qhxcnvWzriluQt0pH2vEc6QS6NyNp3/u7fF5BC2I?=
 =?us-ascii?Q?7jE0qE5eOBZTPFqounQVMtvc4SNEyivKpviS1bD1DDbrgyXSKcTlMDStGI5o?=
 =?us-ascii?Q?kWaX57Fq9Df+vz8QzhNemIoNyybsWaZTEx0L/fDuBuIAawZuLC6PIfCGMXF7?=
 =?us-ascii?Q?+rjGqWeRjWOCsVHDRNLOMu3Rq6DaCGNA9tcoakCvxfsAciIEp+YWW8+OAfPo?=
 =?us-ascii?Q?xHusgtPdRgq+6SIKh20GdHN/NHCEwCrAUluciS9rxePkcQdzPmFlp3pn9oKk?=
 =?us-ascii?Q?IDuSWx1948OPzvnPzDhA+oZwXzFOkVB3muZ47qQVKztUlBbtdHq6YWlgDS1d?=
 =?us-ascii?Q?5htD8PbmMfWHaWvGqon8snRZiNpH7qvqIYJXYo8TVQPcJ0ePJwIs927yhb63?=
 =?us-ascii?Q?bfVuVDj7hJ2QQDIpF8kKAVhQ4yLsO/3YrHpUr4arwIToqo8h0gsWKmdERPpv?=
 =?us-ascii?Q?Jb3htb5OAoYB/wLb1FiGbptPTV4YfSEZYhzngyY2qcOvHCRpVW2Yi/9C31Jy?=
 =?us-ascii?Q?7116kDJX0H94CXVukQKBaViRky77sAjX9a6yFyripKQdWy/6Zk8EL01RyNx/?=
 =?us-ascii?Q?3GWLo2nV9QW8fZAhHFJetoGOMfTglXlf0ZpUdNbWIu4NV8r/efxptcAi2wsE?=
 =?us-ascii?Q?NzXPnVqVuvE6VWO+8L2QOhaRKzzNkYVKi07EXyqI9xUo5Q7EXhb+u7UiTVG3?=
 =?us-ascii?Q?yfO+ap37DPlyxDdyy+tya0FJ+rgFqv5Qj+z/TWg7O0ZjRk+5WQ7XW49un43g?=
 =?us-ascii?Q?yJAyI7pA3yOQVDqmQGuYhpJM9xfPTGwTJS0t0E39C96IqBsYbICjq3AiF6PV?=
 =?us-ascii?Q?WYsBE/VdWxnUnV7XUHPbqFO433juMQpOy0bIkYmDi5nSqZ2jFip5ASjc/v7E?=
 =?us-ascii?Q?PQQG7ok3Ib2yVqSaPQ+1eKz6ZUftPZ75YV7Q/PuESD53mvosjV++DoP7ea1l?=
 =?us-ascii?Q?4xjVmq/oa9c/HiNTJLFt5OLAZRmYZVGRcwnmBHYt0e2ty7FU48NspV6Vov4S?=
 =?us-ascii?Q?8eiOZ+AkNAdpAdzd6Tm4Np22+40olTEiRyE7SZh/O+uiF9U+nLmtleD4L1m+?=
 =?us-ascii?Q?4G1VCDnDkDEsfZCIobPxHxNSsQq7aHkgTbAJEmniqNP468aS17uoY0mMbFR+?=
 =?us-ascii?Q?SxVyvViRD3An158rFiv1Sv5lX+v4jxFvc2Fy8lR/BI00w66d83lGwGXf3SHS?=
 =?us-ascii?Q?1I0TA2Na7Il2O4UJLoSQKoXLOkYv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gBaE1DTXii+Qkc9t2ykQmIpOYBO/NYLNP7F7s2qseGcXrjATfIvXcBXR9wjy?=
 =?us-ascii?Q?KxmeSh7I+tQcxjYOJ34e3UTTngBYAOnnxxxz4S6uKovo92bPZaUSFbtsIOCf?=
 =?us-ascii?Q?OSsLbES3O4EZF98YZJVf4eViWBQ+YniBgEDLTeKddHmgRL0oEx/AEHFGwxWz?=
 =?us-ascii?Q?2EphYVXRzVpaxBJ4eV25Qhob1s0Y54EUz/Zoqx9Lm9NXfiJb/8FOyW/qAcA9?=
 =?us-ascii?Q?PoXXbwJjbHaYx7FWcbZdUf5YYaPnSbjPWDfJsXB6UawvAS7xHtxmbBQxnv5y?=
 =?us-ascii?Q?4P6yuDPHMEUxVFpoFEJps8vP3R4KAqQMBVQYryDsmEPwCErFm5WgkZzK4VKv?=
 =?us-ascii?Q?2zGTu5GAiKepH5ruQTHIEJI2ISl7A7VYbdC0fUj+YVBcb/vObVL2HrAg0Ygn?=
 =?us-ascii?Q?R+wOVdrWc3lOMWAX4t/SW5dvhIOfYgsXotzWsePAbmo4/fL/ZT/NudCiNQZN?=
 =?us-ascii?Q?atsf8RqGWU03OfwrGO85sh8Ors3VNjbtsv2qBRSCIX7rnSNn1gQMmNmclsYZ?=
 =?us-ascii?Q?lM/kEOAOfPUQVQG3hu3nNGsuu8BtyJBJa8ay175jB8vpZ8M6hkSz9AJYCpuu?=
 =?us-ascii?Q?IIa3l8d0/47N19PYtsDtN0avM1eUcq6NdWKxzf/0L6mUoUH+JW3riL5++84C?=
 =?us-ascii?Q?1StNVj9bZAnL9tBmBYxs1X5qPGCNMy/lhMY+3gUB/WnWlzUiG5t5aW8vJ43e?=
 =?us-ascii?Q?5uRk+77kdOH3636oTySkina6OOlzv4KcYkihRITecYu8NG7mtR7fk1ey009A?=
 =?us-ascii?Q?AZqesz+JsTJo8XZ4grBnu6rQe7S/lGcb9VCgdzldD+qjNzDjz58pywtx6MuU?=
 =?us-ascii?Q?3KS1NePkWFojN5fRaLwXEwRE20e7jh3HA1o7VpGeVqkZkykm0M6g5OjgQHQY?=
 =?us-ascii?Q?0iDL2/XRbEBq5c43qfY/StUW/ePZOChkJf/l+8U0MtwB1yxyngp6kTAn2nSF?=
 =?us-ascii?Q?nugywMWWDxupoxWx3/8t7oUyx5MM2yHvoq3MWiObIfe/xYgYlCqYqrzBaT4g?=
 =?us-ascii?Q?/IsiIifnVdOdHrYfUq4f8Tmuk5SMyeN8vOgskd/35T6TF8fhyLHP+mIRkD59?=
 =?us-ascii?Q?LM/tfQD1hFoYyS7ytxT3Hy5lOhOBsN/V+ep3Rqev8D+3DH772NcxGygIctLs?=
 =?us-ascii?Q?uLmY+y+TvTM6avxxx+UN7qgPI/g7qHjWbETUxrqJHnsSJxkwEZ8MQOMijpgE?=
 =?us-ascii?Q?4A0PHZe379jkmyDl4VMouzeWrnVoTuguavbeYo10T2FqU+Hkx3d5hk0Cp4HO?=
 =?us-ascii?Q?yrSkyfGdjnGfOVQBV9Q85GvjSXXS+pRiJPnDShuRQIxfkdy2WydZfWhOqj16?=
 =?us-ascii?Q?kw11+04F0h9dgymjRqKD9wvfdY7G/PK7OuMZLhhlrovEmfcfGC9R9+B1b5x1?=
 =?us-ascii?Q?lbN/C5ROJaBEI8CVqnSoE6bxMKtiMiVNe3jUnlqlXf+EnohTptkxEg0bXm4o?=
 =?us-ascii?Q?xLHkhX6UmOzuVt+Ax4ZmLtHjkIDH753kXS1/rrB+LwAIHtX4zt5iGKJz7OB+?=
 =?us-ascii?Q?dGZ+V4Lb9B1Se7scPrGdFGtM9Pz6znt3O4mExgthV0ou/3LeelCIkYpyybHd?=
 =?us-ascii?Q?j9Et62sAtW+qyG01FAXc/UNQNUkqtwAjJCAlaiLeesx0KInVQS3Ds5i/aBpJ?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d03231b6-dba6-43de-c24d-08dd457093bf
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 23:06:37.5819 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SP40SQenEYdejUzoH+VM6zTPowsrRnmGlW2608ceBHh95uMLibMR0ih8ugGtu7FyWgmbG+TM2iG5+vc9g+qUgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6187
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

On Tue, Feb 04, 2025 at 03:42:28PM +0200, Jani Nikula wrote:
> Switch the IS_<PLATFORM>() checks to display->platform.<platform>, and
> drop a number of struct drm_i915_private pointers in the process.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 48b0b9755b2b..0ff76ef10d4b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -34,13 +34,13 @@
>  
>  bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
> -	if (IS_PANTHERLAKE(i915) && phy == PHY_A)
> +	if (display->platform.pantherlake && phy == PHY_A)
>  		return true;
>  
> -	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
> +	if ((display->platform.lunarlake || display->platform.meteorlake) && phy < PHY_C)
>  		return true;
>  
>  	return false;
> @@ -3216,12 +3216,11 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>  {
>  	struct intel_display *display = to_intel_display(encoder);
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	if (intel_encoder_is_c10phy(encoder))
>  		return CX0_P2PG_STATE_DISABLE;
>  
> -	if ((IS_BATTLEMAGE(i915) && encoder->port == PORT_A) ||
> +	if ((display->platform.battlemage && encoder->port == PORT_A) ||
>  	    (DISPLAY_VER(display) >= 30 && encoder->type == INTEL_OUTPUT_EDP))
>  		return CX0_P2PG_STATE_DISABLE;
>  
> -- 
> 2.39.5
> 
