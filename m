Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5B39ACE8E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4430510E809;
	Wed, 23 Oct 2024 15:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="If6bC+S+";
	dkim-atps=neutral
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E3710E809
 for <Intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 15:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729696965; x=1761232965;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=P7tXUx1QXXwUy2KPGGfp8RUJIiMO+VZkvYhxsK+ykCg=;
 b=If6bC+S+h6oGm/gkTcvBMSkK8z6J5uQVW66Hg87Ikmmq/77gElgbs635
 HnXCuD6nzJ0mKXfx6BdHJnW0sE/c6HjuUMsC2Z2P82guNeX7JMnoIiXQ9
 PsiZoaXyGCG4HZH3DwzIkxE1cAPvEcDY+gglFFN/PvhQ28KxZHIyK+CM7
 qrYe7fxJpOaDooVH7ggN0631vuiqHnV0Q/loUpSmo9jrQpFtfB3hI8DGc
 kwVvHOrjaL7TNq4+6pYQh9ICfLIqIlLvbmj3I9OuwzXS/+j9dDhX1mMm1
 AgrLqhRvz5haIGcGczjnBwLHTHzKzSuYwD8Voci8GO5O36fblcOCd7/2n w==;
X-CSE-ConnectionGUID: il0KpniwR7u756K7AsufVw==
X-CSE-MsgGUID: u2o7a/cBSCiNdfqAeR/xuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39841641"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39841641"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:22:27 -0700
X-CSE-ConnectionGUID: 26YYrCdzQjWSxxhCWMgYeA==
X-CSE-MsgGUID: o7rKgSZSQZmoYcNwg/kZeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80431277"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 08:22:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 08:22:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 08:22:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 08:22:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=COsGYlA7DQyviQrwTs1Fy/eYF5CYAM4xfodCCMJCCcstmUa4cF+EBzNe0i442lfHI8AeIjxCPR0gljy57UpTkYFXHYfbxgN72iEOe/vBVyGR2LmBAKklC+4zsAUTeAU295KfPeLcETbO3YRwa76Vo4NARhHs4y80Xu3xCzdY9FxMdUmk4Ivagke4l4/a9j56oitZQqq+gXv9M8WZzv2YKVwVOUH3ALbzYj4OCZZYAGmm78sxmo19axyDDguy5sJDk9Nj6qEWORPBnmqhVxqob8QS4ys2JXhVcPIec7Y8+3sfx+estRocfizT0px0uxCXz+rEUrFV/oICiGs8m8H4VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FZOJ51dwrJvhC+V1gq88N/MDmatK6YfztOEJAX8lW0o=;
 b=qFgfczrrTFVeEKBfABXY6cTu8zI4IallL1j86QDqPjFppPL5Azn9d0EiEo9NUszteMCi5WeOTJmF7nIde6BpMK9pRY8DrUqjzZ6g/yUpiN6IgLZVpdUal0c4Cz2Hnl9HX3+pm2zAuHR0DuQPa53NpbjDa+Z0JEeo09dcbj5fy+SSklyAJOaUlimr/Z2izz24demi/Lp1hQq5EuAITEPBpUA5wPGK99UAoHbWY1wuJi6wZvg4bpWAzFrjW0GF7WesPfZIXjIUhqRP7MtKsiViQB/zExgAqF7hhrWNppWQptw5pLQAHNaPS9+3yiJbJpVoYAVKOkB6JHX9BBj/Un8V4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7995.namprd11.prod.outlook.com (2603:10b6:806:2e2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.21; Wed, 23 Oct
 2024 15:22:21 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 15:22:21 +0000
Date: Wed, 23 Oct 2024 08:22:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <Intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/display: Fuse bit for power management
 disable removed
Message-ID: <20241023152217.GM4891@mdroper-desk1.amr.corp.intel.com>
References: <20241018195919.2044576-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018195919.2044576-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: BYAPR08CA0057.namprd08.prod.outlook.com
 (2603:10b6:a03:117::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7995:EE_
X-MS-Office365-Filtering-Correlation-Id: a405a16c-b671-424a-aa3e-08dcf3767cef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ubHFIay3yWNMN04BqGgtGDXsoiPWkWs9YskFx0Lwsc5P/hOtY7vopjgwMSQS?=
 =?us-ascii?Q?rt3f/z1B/55SbTg8J9eBgxSLEHTRCnIBCJqOBRnV59hideHaGhQMuWs1izKj?=
 =?us-ascii?Q?1QbHfbM284fB6Uy8HK5oUE+as+kjRwSze/APxjjiSAX+mFGZ+AgQQ6ufrwdi?=
 =?us-ascii?Q?vGpM2YVekTaLRAcEnXu6Uf/2CO25L+YTPpcEb19PvDeKD9sWjrTLC1TDtLPF?=
 =?us-ascii?Q?Pyv1CFQYyKAhQkQmijY7uFfX9pkeETomGfUrkWBkQLAdtrXTyDze1t8bIMPd?=
 =?us-ascii?Q?KBsc6P9zGDw4OOt2uk0ZGnnsZqJi7Zy5fwgMWT7/ZXkUPIOe4/MYCkGc+Z+L?=
 =?us-ascii?Q?OKNsW4HY8F0oGb2oZ8aVomZ6ZRAJDiJ47Ck8qrEKpd9qELl5FncALjNYHJdy?=
 =?us-ascii?Q?xgpNa+B7MjEr/JqunGk8PBu3eLmT+z5Lx6DHbQ73oaEN9yvvOBwx/CxHMNTZ?=
 =?us-ascii?Q?xUmaf7zcppMChOgr4iJIfBNNrAbyNOHJLCKHNR3Sx9baQ6Hc0JwdeasGPJAo?=
 =?us-ascii?Q?jnxzwnt5dpRFOQnru3igzUvE0VTo3ERVaLPKhfNcenGUWooXk8NJRc7lasW4?=
 =?us-ascii?Q?Qx7a5Bp+E1G/vT70K84rtFHju/A2cRJqmYK378iY7WSa81i7tb3lsOYsuYkU?=
 =?us-ascii?Q?PbLN3pieIittqQ3he/7xYJdw73WeZYpT+hqrtBu8zOqTzbRxJrtGZVVpFcZ/?=
 =?us-ascii?Q?zCfr2qBP6l2kl8Zf1JpXKCJaZ3MGWsVaRa2SMoqQiyQEtv/7kNx7/50AM3K/?=
 =?us-ascii?Q?GcwhfaO5GU81gdQ6S04GBLaWdv/Riveb/ELvyKxOBOwHusa/HqwZYgP9uymk?=
 =?us-ascii?Q?0mjuafCLpPTqqQK7jYAb3T1i/+rY5bL80UjnDSZxb8X1Zwu/8cMerhuT28Mh?=
 =?us-ascii?Q?Vu4VYuo1OBUGZ4KJS9yFvoslyUkxQj5e3vjjPXN4b0H9e3MVTSe77MFzSrHi?=
 =?us-ascii?Q?QUsj7xMhUvY5dpHaWXwew5gx05Uy6s1DntF7CqYYvFSbbzML7YKBRYhz9qXI?=
 =?us-ascii?Q?Xrm8bhnKYjOgsLM0FlooDtXP1tyYkLWRoErvQZeuPd2vzFRnFwsL5tsQxiZt?=
 =?us-ascii?Q?ybkS6NlnrImZX+Qcln81JUyYu4f2RN4lkgUn7sDs7g1huUOdlPDrwtNKz6kL?=
 =?us-ascii?Q?DcKjd9MrfUffNlC6kl2lHcKiV8uT5ZrF/1634sYaaCRstWcFeTkdcfgk2chL?=
 =?us-ascii?Q?ENql1gNYtWeBySaStEPUlJoE+eewve7exlkjyZ3foKW1OpPJzAmzT6nCbIcx?=
 =?us-ascii?Q?N0T8WOuE7uljYED2Kyq2cH1J0wJPO8cVaPj1vd6NBb8JleF7M+Ze025dJIi+?=
 =?us-ascii?Q?V7jAnSnbRImjRM/x1rsqLO1V?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MdjtyW8eSaKIfp0/O1mdcPQQJWAyb0BYtSkamkQz8jTpDJJvpP9SzMaPpIq/?=
 =?us-ascii?Q?EpK0WpyTHnEn79GRiwRC5MzhPhym3sltQQtsiuHNWH9vDnj60Aea3saXFecZ?=
 =?us-ascii?Q?fMxvnhBFujsHnkPvz4395E2LvtRDNv+9nBAfffzDr9xEw/+aLf5Rwc2Ik37I?=
 =?us-ascii?Q?P5pgMeJ/pOJGa6EvuspLmBmcSBoKXy4nkiYgJacvH7PkHKFGZlPM8s2rjTO0?=
 =?us-ascii?Q?jYUC/7/QgurH3J6ubMp50ljY1klc23Sfik/nW+aUczcPs8ahdsM/0VL8QlV8?=
 =?us-ascii?Q?CApyOPFj1lMfUuu9RHi59YILaw640jIsazeKygNGQQbcolfOG++3V5RP/GrV?=
 =?us-ascii?Q?xjPcWhXkmy6zfkzhSAUne0CxLYT5LfGe6YS+zocxdFaYd86Tc934w8cmneYT?=
 =?us-ascii?Q?jaSRzo9mHo0ziXDWD7lOSH2LRVAztwkjhaqqooKGNjr+1tsCoE3esHIKVQbL?=
 =?us-ascii?Q?0U+BwC5XnhnRBKctRn1QP94XGldMG0M4vPJOGjyH44Zh7FD+uNxpUc1xqR94?=
 =?us-ascii?Q?y5breie+By8ZB1Vktr6nZwm/NjciFFyn9IMpbHEXOycVwta/b9ZwRsxlGKcO?=
 =?us-ascii?Q?EYvu+1YV4ElATqmcBAUHi+BToBj9/UA8UQgl80CDa0lCXGrPT1rvb4SO7+EY?=
 =?us-ascii?Q?iC2+jQSsxUc6hVQvFisnwdYHsJRGMgLBuZFSDTHnbM4WevWnYSeV9/v9pMsO?=
 =?us-ascii?Q?rKcoJpmYKD0BVddhuaabxl/KGonxb1qn1PLsDa/lNLb1EXrGWSJ2VEQtTV4e?=
 =?us-ascii?Q?9FNFJ88DQ3I8jL0/nSGKR3gVR2Pi1DtnjC5Ovmiu+LlVzqeG4wMJVWXljv2N?=
 =?us-ascii?Q?8GHEcNmKx5zyGw1cWDggCWXODYO0412aO0Oh2GKcIWC2LtGHO5Qs4UqY6fMM?=
 =?us-ascii?Q?0k4mkGwzXKA8TXr3uyIkpBnE635ILloQy/8nZIDyCSMpzDMDinzCPNX/P0GK?=
 =?us-ascii?Q?G4BgfLIybMnZSqqO1tnTVKFlOSNcCYrQVlLTzCQxjOzdCNYZ9GwB+noi9Ofe?=
 =?us-ascii?Q?PcRhdrXWZZRkeIAbICswrQstUjpVyx/NTpjJYRruyHhdYNtR7Fm9zZfPBXhf?=
 =?us-ascii?Q?sHu+L2cJkix/8byxzMZDCTxrtekcn4ag3OLiba+Pzskyne5Kl3HyG5CwVzHk?=
 =?us-ascii?Q?wEXejdO87+akLGDx2OAGK04USCGhH46Gk6slWUnjs9U+fDp3xAw1zmc8M8bk?=
 =?us-ascii?Q?jdTqQ/6kxo07naVkVkmJO+V7bVx/u/JDV7WB28tthnTXZioaVcUf0cg43HQN?=
 =?us-ascii?Q?UgRCwXeKwbM0yRaWOIJ41K1IIhW71og3k6JsCrgG39EZUoQz/S2n5ApeSVdh?=
 =?us-ascii?Q?NanZY0HDEfes+TPZmb2OUl76TtGX+AH3dQ89cvLZi/XGjKzV4UiwsSgaBnff?=
 =?us-ascii?Q?yNMYjmIsYma6hmohIWGNIbcDzdsX7W7BgRPtfF7vAbRUcsikPbQr0DHhUKGj?=
 =?us-ascii?Q?CR3ik3nfqjU1r/m78suaKrfqewNB/f82YtYXebeElA1wezoxF5lzIn7qHIz7?=
 =?us-ascii?Q?NN1I9dR78heIxYCnFvcjuTew/P/XiC6yW667wp8FpbTAJ0OPUhNDuckElff4?=
 =?us-ascii?Q?XWLwSH7hOWBki3GE/8PIBEw10K8O43jO6QhL7kENAVf6EpdcJLU/tnSvaJwr?=
 =?us-ascii?Q?+A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a405a16c-b671-424a-aa3e-08dcf3767cef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 15:22:21.1900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HnqIefD+BGS+HXn2WQND7qsnvVspuut3mIEq5SNJeF1x9YbvG8RKnTkr3tdi7ZUeHysJpgkr7VLnlZxc7KCLQ5w7bhSJDs8ZgjsLXtZy1DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7995
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

On Fri, Oct 18, 2024 at 12:59:19PM -0700, Clint Taylor wrote:
> Starting with Display 13 the fuse bit to disable Display PM has been
> removed.
> 
> v2: Bit removed starting with Display13 (MattR)

Nitpicks: we should write this out as "display version 13" in the two
places above rather than treating it as a proper noun.  Also, there
should be a blank line here after the changelog before the git trailers
start.

> BSPEC: 69464

We should use/add 50075 here, since that's the page that actually shows
exactly when the bit was removed in the Xe1 era.  69464 is the Xe2 page
that just confirms that it's still gone in Xe2.

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index aa22189e3853..1ec72ac2320a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1659,8 +1659,10 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
>  		if (dfsm & SKL_DFSM_DISPLAY_HDCP_DISABLE)
>  			display_runtime->has_hdcp = 0;
>  
> -		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> -			display_runtime->fbc_mask = 0;
> +		if (DISPLAY_VER(i915) < 13) {

Both DG2 and ADL-P share display version 13 and according to bspec
50075, the bit does still exist on DG2.  So we probably need the
condition to be "IS_DG2 || ver < 13."


Matt

> +			if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> +				display_runtime->fbc_mask = 0;
> +		}
>  
>  		if (DISPLAY_VER(i915) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
>  			display_runtime->has_dmc = 0;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
