Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6B8785F26
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 20:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8766A10E0BF;
	Wed, 23 Aug 2023 18:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FC6510E0AC;
 Wed, 23 Aug 2023 18:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692813866; x=1724349866;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=82MpiioSF2yM40JmT+Xh2LGMivrO9OvZT+fcrrAzF0c=;
 b=PqM/wyc/HMugE7r/43K3eKkSMbxbUFlrT/+/aMyT0JBQYL1Bt52cMkzi
 cgESOZ7vswZ+nxi8F6SmjF1U/3wrUAwZnNZ4sbpil7MMinKUTjFbOcAt1
 OqGMzhL8o7mjWHgC6FibOlvlkTFV9//UselfY38DmDoojVWSBnmrikPx5
 cqp9QFh2mwdJUEb/GZvTkRliNChZrVQXwX9qM4jMOHmpCpLhN51roG598
 qAfLOcY8JD+tVjspTmwFqJffsJZo2r4F6ufPMYOq0q9s4p4Xwqq9WYdl4
 n+6G5sLquj2o5bYSLsb5gFZvevgIeYtH2b5HLWnT9z3LLTLK/jGAiCEky g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374210497"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374210497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="851139599"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="851139599"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2023 11:04:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:04:24 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:04:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:04:24 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KbZRPBcuQzOtKCPFr9oHsIzjejq9ZJfvz0ehFLO6LHGgIwC16hjoUlBYr6x7W0dqUx8mTMeuVCGxF6Vx5AqJquMH5QasRxjWroHHPa0Nv5rDmaPwSClLvQ7s68i1L1kecJW05sSh2qzEsJi9JXDDF3dnoXEfMvqs1Aob/rhM9TqTiDmTNVWqoq/gGF+3kya/NvbKGXUCT5kV8nApV5pp+7nvp4s+AOOUcQJrCKt1+UVZmClLsl3qQ5fNwOwJb5HJxdCZXK79oJNDs1crAwBoG9cHz9TG8zx3EZC+YU5+FP3c0jWFZUSfNQhyvDQQYfQvpM+2h68Q+Nw2dOQ2z2K+wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OtkuAqZnmek/WpoZig7d1Fbm69zB8s6wZKrr11DM6aI=;
 b=ZDG3ujZyq4L4m5dxngx+Ah9K+BeitNJeLwZae905apDL/JKRgnwj4lJ2pVOPII4PYCBRZP86c1zW/z9ynRf5JI5fyAYboKSju3sihc8CPavK1Xg8HALfVIKLN+M7siRDxvQeRVLIEL/+SrBJVkP+FDKoS/ju7cQAffbT+QBIa2HPKy1MuoM79e4n0TsnCA4fTc1ng8XWdrd2vXyo2zlZzerLYQZh1OjSgXK5rCePQm/MacW5xXwH4Ogg3YQ+OupjXWhELKdQeAZhkrSw7KFUMkZcNrnEl6Yt0m3v8QlGdM6LWqy68SEOogpsVfhvtXsc0ShnQca6701qIwgB/YBuAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB7340.namprd11.prod.outlook.com (2603:10b6:930:84::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 18:04:23 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 18:04:22 +0000
Date: Wed, 23 Aug 2023 11:04:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823180419.GH6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-14-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-14-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR05CA0089.namprd05.prod.outlook.com
 (2603:10b6:a03:332::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB7340:EE_
X-MS-Office365-Filtering-Correlation-Id: 82793cb6-a72b-4942-5376-08dba403614f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 87h0xz+nytsJCEmprCWs8ehiOKnL9sajSCkqhKs/zug/jvzFRC35eAc176VtUPS6816afs1V4EUM2cuW/TEWs/ezS8wQBdHRpgaXa1gJ5KlO3x5v9A5te850QX8zRFcgOGgwY5iRGYtxdesRt1WP9tR5M0gywPZp4cln1fF8OTOaZ5lwXbQIPaFEXcpJAasRa1gs2msvZkjY54RBWhc8gAlVTnJieXcPQJFI9WOuR7kGQ8kKTbQJaCsFnNFmc5v6W6H9FagKziH12Z7Ep4UL+SVK/sChpnkYdKFpdBxDu3HcDHks54oErsr6l5fha4LXKJCj7auI2xMJw0IrqnRUc2QSaRSUmDjY/B4ES/WNjJVBAyzG7+xmrZ7RQ9SkePeD6gMtPsgoXSvU7VQDLmlXIYVbDJ2RKCoYc80yQZtIeKl2R5luRpnU+caLsUEzueGg6qjv8FVCnfIYy238QoroRnHd6OfcxsodKt4sGsACD/VvfZuG59ANq7XurKA63pElexFvYviHtCqnMUqlPY1LrJhaKSMa2LnU2ZDP/PXC8eN2qe1kKpZlyKoRz6NA17BILXBGZqbR086O3baLI0oGCfTI6Xkz8ItexAv2Ga/HFOaK5mft62hhBD/C/U47sGdr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(136003)(396003)(346002)(39860400002)(451199024)(1800799009)(186009)(66946007)(66556008)(66476007)(5660300002)(41300700001)(6636002)(316002)(2906002)(478600001)(86362001)(450100002)(8936002)(4326008)(8676002)(6862004)(38100700002)(6666004)(6512007)(6506007)(6486002)(82960400001)(33656002)(1076003)(83380400001)(26005)(169823001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XFgAoEeWAiyDY+IIhMDcCFcbYLERpmYc9MGhyyfSwBw+qeIdSYUZBPT5QlJu?=
 =?us-ascii?Q?YgzRwiotOkqjqfGwGKnflddMpCxXhSBTf6hEQYtoujkd2lHyWIlvpuqsNtbD?=
 =?us-ascii?Q?+2UgVRqXSK11ti6Dr0yo8nO9gHy7uhgvhyznb6YTWw/aAXP4Zth95IHX1GmE?=
 =?us-ascii?Q?Y0Xl5VttlaY4jeIbVdW8HoAe4hAMUBL7W9s8lbxY0tLv67041/snNwCVY7jd?=
 =?us-ascii?Q?NjjwIJJrdGwnVAkQpK3yG37guJT+2WPI1gfrhK0ryKghGlIoNA0i34xP5UH9?=
 =?us-ascii?Q?2RBdlf6bP59dD+nho4cBhpzBGysrFyw0K6Kt7QHGlcaUffNJcXvO+gfC53aP?=
 =?us-ascii?Q?R7dwc7qzxGISzbcGLuFwOpb2d6SGZFRJWrUq6+WALz+w1FO2Vgk/YcSlQbh6?=
 =?us-ascii?Q?HmboxKsW4Nd94hSLl4IMBOw5p2qD+jJamkLddcUQujNAMUm28GDxPxyyP1r1?=
 =?us-ascii?Q?VPxjDnpVaGogJuBGqKqaX+xpiIi+xcpdN/+5JNqfQQx58w9FEi4HjFCXW9hI?=
 =?us-ascii?Q?KWZi4vTLa6bvGnDCc9aySQLFbi5ROFl/3/AyoknO0owhY5k4a1rOjpuQGCJC?=
 =?us-ascii?Q?3KR2nY7LrY9ACL/dl5IngFBc+t8hsiTeJjTYs30XJuUhhFacrWzRfZB6YslQ?=
 =?us-ascii?Q?jOYIBbA+4nzIp644Uhnyil2OKyjHJssR9RvAvX8a9E6V9rOp2QIfcF03b5aW?=
 =?us-ascii?Q?lvTpfAikb+3uGGmNp67o+vJ5ZSL7QnnI8x9g6Fl1cFFwg7Fs7cUmWAE7vplM?=
 =?us-ascii?Q?x6unKfdorWJBfcTLrNYINDmmE8lESccghh+NdL4XHFVzI+LqGApHB7g7BG54?=
 =?us-ascii?Q?XrWhWP7GXyK/SpvrfYKftvqVQiZa1PdR1jUUqb8dkpLxyqiDzsrGTyMIOst9?=
 =?us-ascii?Q?oUC+TJg9sGcDxIMCOSgsE64KJi+663ztODnTtPBD6fStW4M30k0Oz42TeiIn?=
 =?us-ascii?Q?21DgzG2hlUl1YbsJSXSYFe0pHTrdihAoYnJxe9fj1X2JPtH0higDkGsEEMNs?=
 =?us-ascii?Q?WoP4ryIrAWMGZAnAAPu1Vnlxcnp+wSl+zlyuUCEcG1qNWqA7L7ZvvMPm8Iww?=
 =?us-ascii?Q?W0k65nPuFRa2HI4xUjE8fAi4xX4mAZTvQYXJxVs+dMNLD0TJFhO7D4cKwadm?=
 =?us-ascii?Q?zagohwRKUEC4KrCuJdk/I1SWzUhG6RMeOs1sX/I+JzSchtZMmNqiD9tdO6ej?=
 =?us-ascii?Q?2zEnFNu4iKi8VcIfzVgFZcLo2U3vAwPh/hZBDVIYkP3/IwO9ZUju9+UECnWS?=
 =?us-ascii?Q?W7QKQG+TJq0Acz2zhooJj6sPmdbN0VQR7OzoVniUpZvqHxbBEEeFUd9vD6hx?=
 =?us-ascii?Q?skVlO2dNIj5Vx+vrWwPZmmXg1O5epVfQt8g60E3bpo/oKNmnSdz5OQv34ERz?=
 =?us-ascii?Q?oQ4Kz+acjNL2IRG17qRMwwb3scP9Xo8FzAAFCZ/zXeZX652kRewkkWUXC2iM?=
 =?us-ascii?Q?PezM8Zai3TOtpiui+mSnM8pe3qNuPnmFzkTR/mCzYYvjgVJeQ31MtR0xN/X7?=
 =?us-ascii?Q?lYBlHhzC4pUOYMaLfFgdSjIhKcuCTE7lQ5QElElimUH6uYpFnKb/4YNNpPxk?=
 =?us-ascii?Q?5wBOsL/DCaPgRaxVy10tYsSRmGcSzdHzhhloRG9OPnQe/YAvVFpIjnh4Tlsc?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82793cb6-a72b-4942-5376-08dba403614f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:04:22.8782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4PdXRib01SGAJstiflVoDl5dGN1q7wW05exBgDogo7GVKhYE3APUOAOK1EFcij17ES/1jql1z0Gd435xLOIbd9n9HILMF2zSIDhKAiFrgeY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7340
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 13/42] drm/i915: Re-order if/else
 ladder in intel_detect_pch()
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:11AM -0700, Lucas De Marchi wrote:
> Follow the convention of checking the last platform first and reword the
> comment to convey there are more platforms than just DG1.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_pch.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index ba9843cb1b13..cf795ecdcc26 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -216,13 +216,16 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	unsigned short id;
>  	enum intel_pch pch_type;
>  
> -	/* DG1 has south engine display on the same PCI device */
> -	if (IS_DG1(dev_priv)) {
> -		dev_priv->pch_type = PCH_DG1;
> -		return;
> -	} else if (IS_DG2(dev_priv)) {
> +	/*
> +	 * South display engine on the same PCI device: just assign the fake
> +	 * PCH.
> +	 */
> +	if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
> +	} else if (IS_DG1(dev_priv)) {
> +		dev_priv->pch_type = PCH_DG1;
> +		return;
>  	}
>  
>  	/*
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
