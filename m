Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9549A4A5D
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 01:59:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E827B10E9DE;
	Fri, 18 Oct 2024 23:59:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="agAI7pbx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1108610E9DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2024 23:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729295952; x=1760831952;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0cXFox+k4nNRgCXtnMZ/im7HV/z1UP3+GIgwDMJEHF4=;
 b=agAI7pbxuvSlnxIuQ/f2w4Q6b2rbjKF93hKBlHiM4KtoWfrGshk+cs17
 OrlTT1tGpGPdMIPxp1qpyUiNJpxjFwdUBxgJea0OrjWNQZ990GyvmX5fC
 zrTzKw4dLbr2Th57bITtymTsIx1wbzwsfUnbvPl3rSKWsZjzDD5kz9o8m
 2q1mlL+QnO3KzeW1iZwCdAKFR2zOXOzaMJb3FGLxtylTUp67kwNRE/fnQ
 XXuhM2EWuHhEvOCgbQ+Y9jxQFCgmVSXv+G0KFgxWRblhNYNYKWnRimhwb
 HGetI/++az30vYG5nEUi0FT2sVoTHQk6Kc4F9Ez02fDH/5qwAZVnvei1X g==;
X-CSE-ConnectionGUID: Me/EDeToTWK5bN6Vvb8nGQ==
X-CSE-MsgGUID: PWc8Y/YmR62IsGpHq/I1yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="40206206"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="40206206"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 16:59:12 -0700
X-CSE-ConnectionGUID: dB2c17vxRJKjSVUUmlJiLw==
X-CSE-MsgGUID: Cpvjx5IIRZqGfW/G9TVMLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="82973876"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 16:59:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 16:59:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 16:59:11 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 16:59:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bvVhuzmA8ziVOQVjCVoe3sNEwmC2KtTvxwYTv/atT58IDWp/YXqKmZXTHOkYJmBJuDA+pKXpllcAS+ZV2fNrdQvFLMmyWyybHZvDT256ZWQtccRQ8JjVr6kKD76rIUEhp4o4S3/Wq6HmFUCISZBipk1ddwAUJRVTtwEQ8rfNJyCUxuVx3nI3Dimgld8ofeczLjgRGRM0Obxn2gUFcXBEBGTWjx3xv2GSm4Nz3rsigFNlFmyPbEccJw4bWP0d5VhQ7xq2TdepBdm6Ea0u7loVqkeQe2d+1Q7AEy1eSUCcXW9SGViRBXgbsPu+HR81TgjbsGtyXuhTMCC9IymI3xNzQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UkUH1t+Lq0XcMc5O8ili4zeY936da2VJEPXRR1kOs5g=;
 b=UFE6kyvGyADRPg+wUuYkcQm/gx7QWNCHJzTS+huNdpsyHgWjLkYPDUSSWVKGnqOmnuS7hPL7v/QxpkVXEoiQSyBwVbpB3nlOXYQTx2L+IVxHdCtLI5lRiI3cixMLKwijBh53LMks1d8creMqGmD8CZvnbRIYw0KEEcTuMOUlKYbLqFrBJI2ST7dBxNXr2VQqTR8eYdjZYkgPmWN7avnbX36BxLcm5UbGZLKSWdUYIM/ycVD8SfEyrMR6YCFfir/Yf4xlYa6RwK5DySuJMZMt6NTTcs8DUzXaLjDvTxHowA350jfDo60m/BF8s8exu9+XUIlLdSfzN+3gYksxfsMBGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7328.namprd11.prod.outlook.com (2603:10b6:8:104::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.20; Fri, 18 Oct
 2024 23:59:09 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Fri, 18 Oct 2024
 23:59:09 +0000
Date: Fri, 18 Oct 2024 16:59:06 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 2/8] drm/i915/pmu: Let resource survive unbind
Message-ID: <20241018235906.GJ4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-3-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR01CA0029.prod.exchangelabs.com (2603:10b6:a02:80::42)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7328:EE_
X-MS-Office365-Filtering-Correlation-Id: 373c6e5c-8d33-45a8-daf3-08dcefd0db1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OdyFBZjzlQAsezlWlqhGBcc0NOMujNPfOWSXr2JXTcb5pgaHefZYzLHw/DnS?=
 =?us-ascii?Q?tt3w9gL99zGavje0ofry2KOGGt6F5zh8uq7vRGXkcqvCBOgQB5PdyObYZpaF?=
 =?us-ascii?Q?CzdFnl4XbB32aDmSuLBLclftZGJ6a5VNtjTFk+/T2TLUYcTiZ+FW37vlOMS6?=
 =?us-ascii?Q?Bl7hGVx0yTpvzig6LawAQ8dBT9YgWu4pyH5LAF+Gyd+mT45nnJrjObMglul9?=
 =?us-ascii?Q?v+3lQ7WkONH9+iYgrYB0habmDLC249pQu1xexGa1S2njpL2NbgQhifKhvpRl?=
 =?us-ascii?Q?EC97sTilpvmTIwWftC2oSnDEoBAs3FWOSF1KsA40ZSB842p/qMnQQhUZSiJ5?=
 =?us-ascii?Q?ngJLkFtDQ4mbNK4njo6ebazmqSVvxzAQF9wohqpQc9s1Qs/gnBH3Ejgai4Xh?=
 =?us-ascii?Q?rohyF5SwFo//0d+I+WWnbHvAklAp+PUpcbkPVYGMaT2/lBU1hvStybdjySFI?=
 =?us-ascii?Q?7H/IrScqfxWSkuVEa3Ct1k5+7PxK2isFEm6VRh43ysJdAXvkSJYMsrFmcJCT?=
 =?us-ascii?Q?l0OQppcDhOqpnLPASHIdhAT3Jru16vZKXmZco3q9xArod4nz3gsPFsh3ffkF?=
 =?us-ascii?Q?tF1OcZL2mtdYrRMP6EUQHq0ht0S4kVfgf8TA2qGESNhuYKvNUFvvNHg96erJ?=
 =?us-ascii?Q?Ev/IY2tJPzTmFYVSk+kpbTwz33lCHmiPUIDz+qK2Q8IaNiaxfL+YYfi1wTlL?=
 =?us-ascii?Q?loZGwsOLqvIkuEAtBjNPtbwW75vP9qSX6Cd3y96Ispnhv8JtyNLamkLp3Z33?=
 =?us-ascii?Q?OS/bmf3+ENcr/GrGLJWTA0xAkX3w930knT6RQO0w7eu1zxnbWDtQC8PLu00/?=
 =?us-ascii?Q?q0YpOcM1ZjMHlkXZhRne8pBbpPF8sH/EPGvaocQZhzuRFBj1a84DN/uo4l+C?=
 =?us-ascii?Q?KUnBBsTyOpqt1a1bcQ/7ubsnO4Zpr2S/wC+oLcG/mTZTiY+mEZn1NwPeQYr+?=
 =?us-ascii?Q?lnmhrtkfRoI6Rqxgy7zAJsIElwAk3z49uj7JxJAKh9NJNyqQa7lUiZA/sPda?=
 =?us-ascii?Q?ZF5m4//IXMyHkBSyUNL9NYU7wuBKdlLoIXzqZlig3HAA7p6UZHTG1Ys2SrpU?=
 =?us-ascii?Q?iz/Q058KrhdLTHZB+3mNXhgoOZu4yxnh8xRWSy75fcSLWCSaZt9wsAIzhCBO?=
 =?us-ascii?Q?pwl1OfT8x97am18EXPpk51v28+qQdPUFJ9rqzfzSUhdE+soO/c4QgVwCwMxe?=
 =?us-ascii?Q?SlqS2bXpvlK/lGGmE054jpLMVatkAfznFto+g9/HUurAWaBm1aTvPoUfwLVq?=
 =?us-ascii?Q?xVi4kfPypUCt413cyX/Fvrv4+E5M8OnHCKoIkcdKKPopbJa2tJgjc08sk5uw?=
 =?us-ascii?Q?JoQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ADCkarhGr+VzKbqQMeUju8xlHv015bYpearm+6Wgi7t4TX/R7/LHKQTNLGeR?=
 =?us-ascii?Q?E0E+dwy6btKTQCjYY0VmfbYFx3kEMKi7UL0J6J0Jn7M95tWuJwWxlmoFCPEN?=
 =?us-ascii?Q?ySg1GqzKTXNzsg/L68zfM+EJFrcf+3m3bOpL208U1zHPF5euyikxJgMaCLoY?=
 =?us-ascii?Q?coOqxaLWezRAWCXy1RbLKo/kCNGkSi7RGGrkyhZKuSCs95WcrjIBxYfrewSL?=
 =?us-ascii?Q?8nMaVYAPflb13ie/PRJ8Y4PkjXkHgi+UGoxIv30tZnHj7mA9oQfpb4CewHv5?=
 =?us-ascii?Q?KierZFy9CbE54g9TSF0MD/5BwCYwikUDBqphUuD5138qUkYhRRvW2mBOCmyn?=
 =?us-ascii?Q?mugbwcWMJnkEurxHrc80U54GRlx1Z6tFP/nQuL9FZb8CPoRfY4AgNF+wrGMS?=
 =?us-ascii?Q?aR47a5RJi/oR6ysLlAvmANDPdMrcAeeNK/ZhO+kaEUMbQLcJkjCi7fVqokPd?=
 =?us-ascii?Q?D8E3f5L+gaYZczp0rbs0xsW88F5OIeKT2W3WSXduAR/GnJMxJe/tyRIdmGM0?=
 =?us-ascii?Q?0I7YDOmyLLK6BEifGmbYdbpUC8Z7q5resK3rovdU97Ur+NODrlgp1QEt/jDL?=
 =?us-ascii?Q?cCupgIf3TAlEz56x0unLInYOT0aiNsR4jKqAY28Tt46vBraXhr/Cx6Elb5vu?=
 =?us-ascii?Q?KgCx2tqTQsi8/hBWCHZalM6xyU7XRs7wxczo9W+XZp/QHXtBXdIUe3r4KwQx?=
 =?us-ascii?Q?jqovKdEvrLnYL4Fq5f8XuOKIR4bLLa8w4YK6HMdlBwB4t9rSQbUQbhCetWcb?=
 =?us-ascii?Q?YY4yPYUkaFmiuFA4StRcGCCxMsHPD3AK73Vf5uNV8hYn1/7Ef0KZ6yJ6ygZI?=
 =?us-ascii?Q?iC+X0LJIIJ7NLWIskZbkf22Qqqrx/yG4dtt6iMF8ExnIkWeLmRLBogMKt1ca?=
 =?us-ascii?Q?AowcpeZJ67C3kQHlY2S5f5UWt3UTPBOqGarpbfNPdjOYyDWhlmBDNSeTG/7B?=
 =?us-ascii?Q?NKsDFbxMYGngLcbeixPcH6jYMbhNV2viaAAO3o5Wz6p3dPDfvgJjMllFYb6I?=
 =?us-ascii?Q?syK0bsyItZxJOFSaDfSrnaoQlo+sZ+Lab7REWCAkQWnFLomuHv24j1+DLbDf?=
 =?us-ascii?Q?ij0LIPPYLlNkM0KujvyEq6Oni2IXLCWWNy1EuDzHQTTqfPpydHZtpjbubkKX?=
 =?us-ascii?Q?kUwLiEPu/FGm/UtMDZG93nkdwqjTxWojzOoaP440m6hmuAP1a/OlvXQ44IBn?=
 =?us-ascii?Q?ILGWuTAWRZnrf84OhvsP69hFUWG9RlHdwR1WGA0jgxjkGAgJhtaFBpsvZvOQ?=
 =?us-ascii?Q?kSwYO2I3MgxW2I+7nlYm779Xy1S2j7LN9BeCrpJSNWlwJMeLQE+eBvGyb8je?=
 =?us-ascii?Q?MrzLy2CcQ2iyLLYZUVyp5+aY+E/qHR06L+M2GhQx25jxheh3BaCEdcOOYP/T?=
 =?us-ascii?Q?n4zLj/Hw4UM++Uz+Tuzh5wiPXbiBeWH7+gtkXiAJ4IJD2NZyu/xxHPPS8gX8?=
 =?us-ascii?Q?3dvXo59QTdEuZQaN/Lj6EgvzW2IwrW1bimFFGPo7FwcJw74Pi91Dd8txIePA?=
 =?us-ascii?Q?AmLeciWw1vEhpSBZNmH3cVv2id4/tYxMptFPXjBTojxQgXmX5pKONOCfwI/g?=
 =?us-ascii?Q?fhvbJArbZ7H+91hAHxG2DHE7mKrpN6fusxcv21WG98Hg8am1ooqz0GPhDKvS?=
 =?us-ascii?Q?Vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 373c6e5c-8d33-45a8-daf3-08dcefd0db1d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 23:59:08.9634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +gg687bCWOqsgPSNXmyzapKzggN8XJM8Re4bH+yeWil4xY3pSOkSd8+8c5zDmgx1bz67UgpPqIxNuDxD58w6Qll3nq35AR2l9n4bMsvs8ko=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7328
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

On Fri, Oct 11, 2024 at 03:54:24PM -0700, Lucas De Marchi wrote:
> There's no need to free the resources during unbind. Since perf events
> may still access them due to open events, it's safer to free them when
> dropping the last i915 reference. It will also allow to ask perf to
> release its own resources when dropping the last reference in a follow
> up change.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 21 ++++++++++++++++-----
>  1 file changed, 16 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 67b6cbdeff1da..4d05d98f51b8e 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/pm_runtime.h>
> +#include <drm/drm_managed.h>
>  
>  #include "gt/intel_engine.h"
>  #include "gt/intel_engine_pm.h"
> @@ -1148,6 +1149,17 @@ static void free_event_attributes(struct i915_pmu *pmu)
>  	pmu->pmu_attr = NULL;
>  }
>  
> +static void free_pmu(struct drm_device *dev, void *res)
> +{
> +	struct i915_pmu *pmu = res;
> +	struct drm_i915_private *i915 = pmu_to_i915(pmu);
> +
> +	free_event_attributes(pmu);
> +	kfree(pmu->base.attr_groups);
> +	if (IS_DGFX(i915))
> +		kfree(pmu->name);
> +}
> +
>  static int i915_pmu_cpu_online(unsigned int cpu, struct hlist_node *node)
>  {
>  	struct i915_pmu *pmu = hlist_entry_safe(node, typeof(*pmu), cpuhp.node);
> @@ -1296,6 +1308,9 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	if (ret)
>  		goto err_unreg;
>  
> +	if (drmm_add_action(&i915->drm, free_pmu, pmu))
> +		goto err_unreg;
> +
>  	return;
>  
>  err_unreg:
> @@ -1330,11 +1345,7 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  	hrtimer_cancel(&pmu->timer);
>  
>  	i915_pmu_unregister_cpuhp_state(pmu);
> -
>  	perf_pmu_unregister(&pmu->base);
> +
>  	pmu->base.event_init = NULL;
> -	kfree(pmu->base.attr_groups);
> -	if (IS_DGFX(i915))
> -		kfree(pmu->name);
> -	free_event_attributes(pmu);
>  }
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
