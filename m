Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8EF87F2D0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 23:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D18710E0B6;
	Mon, 18 Mar 2024 22:02:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hNmIbLDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E93D10E0B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 22:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710799355; x=1742335355;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2PnKoCLiQTe4JTQZdl2z9lXYPtKszJgrjhGsFu3iFYM=;
 b=hNmIbLDpUQ6N9Pf1wyqS4KRDoa+AK9nPTNaPkEz+aWZHm6tyAbdXRch7
 zaHvuMR26pcOs9ciUJHhmSOFhJT64g9tDZq8toAPJT+nCssIP7ZNVVpDA
 AR73VvI9H64fxOE3Dc1iM4UmTevvIP69k5pM83AA9hHIqOXAB8TTeK/se
 voX/Xe3M994dgUnT+KP42G9saPeBvQYUid91Nk8m6iWtAQGCUIKQ7mW2W
 wNmgLoFJMPTjENQyKq+Wje9+xk9ruGGRPCbmvaX6fkYO8gYV8ketFTarf
 kNN7niEbFImhdNLqCX2A5QLGoMpdONKP68If/PeWxIEqlaomhSFZY4ptm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="5518357"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="5518357"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 15:02:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="18292566"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Mar 2024 15:02:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Mar 2024 15:02:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Mar 2024 15:02:34 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Mar 2024 15:02:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aw0XBJr8WI0aAbAX4qOeSpaK+2HBT7xuLHOoWjoQu1uREMy87ebtqu8TPiEkTHQdAtzj0wZU7ZtEWQSgKesGRndKIAnCwQHPvIzm4siOPR226xvwNPZ7XHeL6xysgEandpQV6HYQ+p3ObP9j616XA+SnzhiJvrXa6SEgVEEzMHOydAgdsgiy72qGqWPkVzHg27Ls5l507Jx/Sna6TYAS8s7MAZAg4P5g7CJ8PjHb6V/mcIz25o5RfhiG4FjAXgfhOHQ2fUeuDRqTvDdZGiV3UhLRcuooBAnkVVzcRQSKJ1SHRKciOE5z321TgGyLydGQgGcBR9W8ivpuHHZx/g+JGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4RRKZFw0LfO2TJlkK17TUlDv6Jgp+FrBL0LaMFoQCU0=;
 b=Z4fnvSHCacylFi3MhFzzmuDIAGfpHz1+nqpmqk4psdrYVsXbEMT4OwdY8Ejskg+tMUjjdiiuk2xe+tDTZOUpeGesWUxxMwd7T5ofi2wVE8vYd8xz5mttN4GmptFu8wkO6MfQH7J3xiXXQY0QZWcLzKgnM6/ABQqadSo8u0LTZJeOBn9NweAEpr9wnC5hmQJaIVsP7ussW/rjTzRheH96fIb4h/7MPDKjvm8JRs9CKEXkOeluKYsznxKzkdXLMuB17M5G3eFIM54ioQgAYX7b8wQhtY4nJ5CCGnQNBHuyuYTGQPmMjjg+sEU+sqdggWHIOIlMQe1uaA84fQD7G/D5DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7090.namprd11.prod.outlook.com (2603:10b6:806:299::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.10; Mon, 18 Mar
 2024 22:02:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7409.010; Mon, 18 Mar 2024
 22:02:31 +0000
Date: Mon, 18 Mar 2024 15:02:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/xelpg: Add Wa_14020495402
Message-ID: <20240318220229.GL2837363@mdroper-desk1.amr.corp.intel.com>
References: <20240318210025.562698-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240318210025.562698-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR06CA0057.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::34) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7090:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4RhtXH5WzzEGSb9BBqVHL2cncXWcz094iLdsbD7nHXzN6H+bvDCbWQNh01n89XVUs6+P2HmCoEzWmvwTS+tVVAr2D6lhI27ZvRjHNLPfm8Ne8P/VXoZd5v+DpZxTM+bbkyRQiyrM3p4A/TcGkkMC1cOaC3IZQG+69kWXxWKu1e3Ayq2UXFusxxtVOyLxW673J22Ht0gO2IWUMfXflVBJ6J6lCJghmO7w0vaxH/lhY9LwhI7OtaPPaX03/tKIv9aLgEdMYs8ZEm+fb4Hv6CGkqsEAB2bcEDe5cct63TMclN2ZjgKRS9WxKw4hqmDCTOFo9a4iLVlRtqfL725SOAnkBeKCLKhdu3jPTTa8R4zKkZig7HlS1HVsoVXuzpHNk2yTg6+gl+UDMUS2mx1KLESjjBbs/IKb4nZ8JnSC/NMsu9zlCZYZaU+o4paoxzz287okBnWr/Dix0uQ7CTqoFU7r76bP6KSyt4w1v/p5np2zSgOF8Vo8Pq5hVME5jcXFa9mWlG27NPhd8eLhN2wUuHBB6mmJtNx7MQcmU9DMZ+n5Wbq6CS+jIhLy0wRQanJgfBIbaU0CImt0WCBy+/EVNGoVRPhWhTSukiEifyRF/ykn1rLcSs1RKcHBWykd+KKuoiVXAtVBSAGqgUlT09/8dNjv+nb7H1GHnzwq26SrKSoAxOA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Qd2HFsBAj0Ycv6nE2aLi50JY+yFLxYCqy/6effEhu1MR4VbBCpKiI86PUYzL?=
 =?us-ascii?Q?xOvNjd2VSYQtLDW8jWu65wVdnOxm9zUaLVx5PZBk8AJVwTyBAwbdY9YvPjxc?=
 =?us-ascii?Q?SO8A/KMAmLvTAVzsJWlnxroLxY61m+igtaerBe/L03hSMWPUG/SvnFFAjZQO?=
 =?us-ascii?Q?E+uwQgB5Dng8pkUsZ0qPwzFd3Pp3cfQ3RIE5cqQeV6mnpItqMSEr9IlevAjh?=
 =?us-ascii?Q?IejdvXZ8e4AgHNifHiK9Pd/4i0eZ8F5axqGmADzzhsBQqKL1+aBURfGXjsJ/?=
 =?us-ascii?Q?n2gWlPdkx0zmKLw2ufxyGzxjQAIo+v1gZro62tvjdmBfj9qV2rF6NUBXUrX3?=
 =?us-ascii?Q?RMIn9zj2GaYfM/72oQDH0WmmIODH1EGCERJeHI+Dxsx6/33uxwxemRuIRu9m?=
 =?us-ascii?Q?CBgQxB0dYMUa1p7hp5g3MH4wWydalUwxAbYV8tQ3RmDDMpx+PZEkYvisPl8F?=
 =?us-ascii?Q?3gwyqT+KnXNqDU0dsMz8FeXFYVIdiyhOyXVXd4s6Bdc3ilBE72Ccv7xTK13S?=
 =?us-ascii?Q?Yl6v4Vpo45D5VdP9iNsVpYW0OZjLXqkjIhlQWVZJc9Tncba9eWMECTlX23Gp?=
 =?us-ascii?Q?0CFN0SlQurU23t+PR2cVRYNEIi4JAJu2vTbW/tGZf7LdyNPbNANFM0KRENcN?=
 =?us-ascii?Q?RiMVCr4SxuBmXzv9LSkAvcxPtNyWzwXyHA3EObXtiUdYEi1EaQ8NcIPD5t1I?=
 =?us-ascii?Q?AadhH+6laAcLp+uw28Sc0Bm4o1ASZlHZFc/6JHnU2A2IuFIX5sgd2SpIG0mj?=
 =?us-ascii?Q?A/gZCcRopr4Tqzb53rV+5HnzMYD2JoamPFNWiTZCSgqvp8MJfR2GkHBfa5uH?=
 =?us-ascii?Q?68Eqdq5KVEQw9j5pnerFRy4TAAyDQfX+CNuzx5irakwZgg92N+GbnmY5tpdD?=
 =?us-ascii?Q?jFc7DGSwqAYh5c1Po/Ae7BfzbmUwOvJVbS1xwFdERCcxZmGyOY/eyXk32k1s?=
 =?us-ascii?Q?fMaZaH+rK2tAn3fUKOGmIVJ3I6J+bTxNF+52WduCxzmdMTZt4HmldL7ZJZXW?=
 =?us-ascii?Q?RPYhLbMHY/yn8C/ZdLmK/qLgEKZGa9uKS0qf3DT8OdgZbbIu4ui3A63p8rxD?=
 =?us-ascii?Q?pckL0RIlDCvuhqIIRKguy/jY2aKIw/fsUVBcLrHODI78Ak1AvuSJK05kqJ6S?=
 =?us-ascii?Q?YyXDZEO3ElFlLSx6YkCtz4S3sycQ2P4opXmMZjcxYwjeNtmL3A2auVYl7gtJ?=
 =?us-ascii?Q?Dk2hRlFO8qKodmsUPydWiFVJcsPGl66z3hcRKsYwiqjNtDSR07b+ZSu5aq/L?=
 =?us-ascii?Q?2O3bOXEMWV84OcPcke1KvpgApP+bklQOofFmlFb96KRaRHVc7QuSoXd4UHaX?=
 =?us-ascii?Q?Hx4rj4GLef+CEL8BrNfb6nbTN58/A3U8xQDjDgp88YIKhAbC38qV/EP+mj2d?=
 =?us-ascii?Q?/4BDeD3oQb/igy3WU1b2IMm5Jzze3YNPpydueVp0rOo91b0vynnOwsbOSBeX?=
 =?us-ascii?Q?G/5lpO6mIsDi+/zS5tGWRdEG48Uif1130jK3Y8+X+1Fq+i0+l0BcKa6PQkds?=
 =?us-ascii?Q?tHAopONmNt1P7qmoi3PaKh/vCu4Bv5a7IrsX3KF1IaQrNteQl1EzDxNaekmc?=
 =?us-ascii?Q?wMwFSrVgOHL+p4N0DzWE2AMIewuwnwz9PmAHFU9nqRyoLJHvYM5Xr9Q+ixiE?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d8edcea-1222-408d-2008-08dc47971bdf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2024 22:02:31.4931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sojN9E0b++tboV9U36Wq+1Xnxn2Js7pbndfP+lkRWSnb+YcKp7s/iObObFy1yhjoZS/pWfoV8ZhFCK2wTfLNzZlfQh4XS8nPFgFDp80SYSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7090
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

On Mon, Mar 18, 2024 at 02:00:25PM -0700, Radhakrishna Sripada wrote:
> Disable clockgating for TDL SVHS fub.
> 
> v2: Implement in general render/compute wa's(MattR)
> 
> Bspec: 46045
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 50962cfd1353..1f778b77f4f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1215,6 +1215,7 @@
>  #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
>  #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
>  #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
> +#define   XELPG_DISABLE_TDL_SVHS_GATING		REG_BIT(1)
>  #define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
>  
>  #define RT_CTRL					MCR_REG(0xe530)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index b079cbbc1897..d2c63ecc490e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2892,10 +2892,14 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER) ||
> -	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74)))
> +	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74))) {
>  		/* Wa_14017856879 */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>  
> +		/* Wa_14020495402 */
> +		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, XELPG_DISABLE_TDL_SVHS_GATING);
> +	}
> +
>  	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>  		/*
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
