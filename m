Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647D262E59B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 21:06:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 336DE10E68B;
	Thu, 17 Nov 2022 20:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A9A10E684
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 20:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668715554; x=1700251554;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L5eg+lyX8vKMmBEtSsewdgnDF4ND+lsywcM0HK+Er6Q=;
 b=ZR8hN6cjf3LVDF/gD+NCqIBfPEypaHfN9czZsHE5omOQ8YkipQDPp5OX
 V2VV9X/S5au33qykLirpZN2TvbCbUs4kYFhMj5mL4bn1yJmZGc05JmqN4
 8t3GwrqDMUZ/YHqYuGRxVT1BNJLYmQJq05qNL1eVMBjHWrSPg4JcJPE2o
 8T9K+lJGmbuh0FqQM3IsDgjc659RzmWf+7Lqj/mJpFBUwkzFN/TjJfm7J
 qs5kttJzI6bBsUDynmG6SulDIq21XJQubfAGcQy1YW4CcTgz1uT7Yi92Z
 Hgx3iFGMwasR826lpefZzsLdAz4F+OKRaMzbuD4o//XcWfLOj1pjxJp1k Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300494735"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300494735"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 12:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="728963864"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="728963864"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Nov 2022 12:05:38 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 12:05:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 12:05:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 12:05:38 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 12:05:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lnrow5OLGoPHrNRIDPXfjngTotuolqAY1flpjhfurgjlMkOnqHxbfKXwSN1iWeK+DYb/ThqAyqSJDiOo7w5TOgmBK2dLWPLPnft01yYdz+YHHXo3pZUVLAVCDVIe/swXHtwtPezgSUf0Q/e4+wW9k5Tf27DoD5yzDfl4VujvfYxQ0gUmQdCj+uQMJir5goA4CfxRXE0bYPKv+Ip1yjGfDI8xD14nmU1qLo1t0IibmhrNYMaQdcCxsriKWhj9B8gKKPxc/5zMv4Smv8CHScmpFWaYQ84ibcCyo+h7jNSxk4oOmzO7mIRnk2PQCCQ5dpFLjigLRFP47K5UkVi+MXMaaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I0BIbdQf81zOmai8PF1jjgmtiJWp3o2MPe2q9DQAOLY=;
 b=DyhK/D1hSviqt3nHd2oUgybXNA10JTPgiINzcuA8jVHiv+N9LmhMwCVbmXDKhhk0k6jvrm1DGYFwk+KchqFlSVdGL4m+fIRWBC2xdFuU0bJOmL44AvxFry0pO239Nay7ljtTfdmBF4gXv2wxBvQ5Cf/rVohTAd8NR1nB77KPyZnsVKI11ncawamMyXZn51/PnHzGkE7VOZVTKCl+zzGtVbd9IOFEoIBZMwZStPsehQ6ciDEsbKuB4TVPUSGMPr/c40QZDn6oFwtM0OGCS9yuid3011Kvwjx4E1XM81EPtkhGb9Hr42zwzYkUEmt6UbP6y71BGM+ApCrxSqn+N/j1QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN2PR11MB4551.namprd11.prod.outlook.com (2603:10b6:208:269::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 20:05:35 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 20:05:34 +0000
Date: Thu, 17 Nov 2022 12:05:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y3aUC9mpqBNYz18I@mdroper-desk1.amr.corp.intel.com>
References: <20221117192204.445428-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117192204.445428-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0175.namprd05.prod.outlook.com
 (2603:10b6:a03:339::30) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|MN2PR11MB4551:EE_
X-MS-Office365-Filtering-Correlation-Id: af345217-ff72-4961-5aa8-08dac8d715ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iAs+Z29kJeeYmWRSwczEGg74b7Pv8raFD9r0VjRhQr97TBbO4Ht9+pOMDWwha+ioc/yA7wjB3wMhASmk8zzFqcJkXny/0/M6OfverEKSIFqKRJv4R+0jy/14msbDDXNYq+xzNOJFSAk2x1h+hrTG/1a/Am5UQp5FHXlETE9pPsLkltiW0NezuG78Ze7+PV/RYMMuPdCt4xf6/oq1uVl6SrLYqXuwxJU/IM6qOrcDfU17Itj9lzvqs6Qq6ZAhTn0us8Nkxgtc5VCL9RMECHPrxa86zK605KvcGC4SHmGkF9ilbORUwN+E+k6RVM775W3XruhEx6NvuEL7BfHd5UMraxovZGj+dYkMCAAu7UzGZgbjS0XsjRftKJkCo1/mfs+ZbBVXZSnbt1XdeXWQr7duARvwS/vX4Pz6Oej80I0KZndWlaB96zkA+tXgRcPK5yFvrAHBrH+n9KmLONYUcYKpiTJws5SyadBEyAzDkwEki7gHqf3mILb+aZYRQdye5pGDzYJo6bGkH7wD1crF87aaazwzKKZ5XK6HO2ydLjA7tVpwpmN8vjGjuMUUX1wPpLKf1f42LWGgN9JeSMd/thV8HWaeOPqsdDNMVYCLF9aRMO89BNTzY7C/OF6Tw9gE1b6vdmumu7CTpLVveVqt/0YXbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199015)(6486002)(478600001)(6666004)(6636002)(6506007)(6512007)(6862004)(41300700001)(66476007)(8676002)(8936002)(4326008)(66556008)(66946007)(186003)(26005)(5660300002)(82960400001)(2906002)(83380400001)(316002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QWyXS1Xj98dVa/20ME+yJPweouaaaslBSHtfoOEJimqv25F6IWLkwEO9nwK2?=
 =?us-ascii?Q?qrZqiYJPVek/sdxabNLaJlBXZVWNSitET6NszUgneM36sPdyKm5MonzlAi2q?=
 =?us-ascii?Q?fIBdSHWRhJ9SEke5g16rC1bQKQ5eYP+25mArO1w/5bkHwKJk0BdQ2zq9zP08?=
 =?us-ascii?Q?vrPSkFnDX75O6SVrwubCWbY7s8jFRaf7pWzGWG6N2Frx3QEExuA8l9nqfuHQ?=
 =?us-ascii?Q?TkprUO1ign500I8u8jcIw/uMCZVRd40N6gOonZeXtfQEZ7Rf7D2rjR+Ar1CT?=
 =?us-ascii?Q?zgzU2pFvLt8OuV7zPHm+UoaaM6VQCKllR4wgAyJxsDZriFSE9OBWYkYeAU+a?=
 =?us-ascii?Q?nI9KM/jYNiO5r44XYicxszKRIfGAI4k3Wh5YuG+uBgMejS/9NtCXquDKbCGC?=
 =?us-ascii?Q?Hy+HcY1F35KfM0ebrBxU/HlVH3XNzML/lYgRLvRXTOVGKG0A23auYMpsVSKW?=
 =?us-ascii?Q?jF2aoOOmWeeVQXyUSpycKt6XPNU/MPJOvsb3LB96hInCl7yOfU2HNSChO286?=
 =?us-ascii?Q?RpWosDv5fCDu4Z7OYn8F3bNCx7ljkuJeMb1F/z9DUa/UUAw8qWKmTanyiwMf?=
 =?us-ascii?Q?eDVxCyqJnPTLH5oZ/4L3yhh2hRPogingQ3/XeGhaIeWgSNw5bc9EaWKfZy7b?=
 =?us-ascii?Q?mklEjTMgm3qWKT+S2Lzi1V6ggmb6lm/nAg1iLemqJPV9/zCmGHno4RCOaDJu?=
 =?us-ascii?Q?3y2nky0rdNO3QHJzlw/77rlVsIPliC0JKkj1ERxi61AnUwNnb7TxAO8cNqp7?=
 =?us-ascii?Q?37lEd7q/JCp8KaQK45qHTHRUhnQDWfVKVB3npIZHM3lVv1iWE3XREmfD7uAl?=
 =?us-ascii?Q?0iwPLQsDPxws+LbZtbyoStFYeB3pKiuR6u4faWCqAfRcizQQXRC9V/vpMRXR?=
 =?us-ascii?Q?lgY3HtSHBK+kM48FOWdstPdP/lNUFZlHnKFIeGt6ErmdAqJyvDjklIGr1c6s?=
 =?us-ascii?Q?iAsFPKipSpt0jplOof3nmixX2vQyHMqEjbAxmUkRpiCNLXvr6/BQuW7VfFeM?=
 =?us-ascii?Q?bsikmBgCVjeT45EMzJHAxo0rKEXjvULRs2E9TgpNywClx+0pc0MIqSxVCqgZ?=
 =?us-ascii?Q?eLmEJzj4nHkKDS6wXapRv9L//pTS4gVOiMK6E0CSFHdFRVkwrsxVU7ZviD6Q?=
 =?us-ascii?Q?aBgR63GzhQKYbmLPl60TyUih//b8Kj1T/pg67+5hP0mYx2NsmCsOGuNiOwwY?=
 =?us-ascii?Q?opAyk/Aeak8W1xxklqQHx3EgXpX8oyE7s2P0WFK2zSOrUZpG1zbgRiFgowSS?=
 =?us-ascii?Q?9hy1hrLQ39tVesaQfTeSNIO9gYsaPc0tlUlL7s8XY6EDW5bSCGa/MJPrCpnb?=
 =?us-ascii?Q?kZfPFfgEFGCiMwJaG870L8ZCJwxT45M2srCENjWj3TigP5JTiHfivQdBcdI/?=
 =?us-ascii?Q?zd2szLripparoX411LoY8wnf7fH2+3LMt+gVURinq8iq1VJeTsnZN7EIoj8d?=
 =?us-ascii?Q?S3lnJ7fjZsaxGEXEvvf9UCgEK/P2vZZt7aqFMAWwD0yTeH1/pecYSrfPE7Ub?=
 =?us-ascii?Q?cS/2q38+AvRGPrLe4/AhUyYm47vMg3vzI1pPIaA3QJwtayzdt2bdCFqp6rVe?=
 =?us-ascii?Q?mX4P5Uzic55Nx7a/afFGPBdxTRhpHXgyNaGFkSn0csxFmzJkeDQhFUYM4/K9?=
 =?us-ascii?Q?Pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af345217-ff72-4961-5aa8-08dac8d715ba
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 20:05:34.7372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nR+d020vcMjmkScFKFQHmHU1e9ZqfLg55+N8O0DhiU/CyCB3St47PFLMT21dn1ufb56sYfjw1hAOJLmSHA0HsT0B2+oYaERjLbi0dEroA1Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4551
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Skip doubling channel numbers
 for LPDDR4/LPDDDR5
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 17, 2022 at 11:22:04AM -0800, Radhakrishna Sripada wrote:
> MTL LPDDR5 reported 16b with 8 channels. Previous platforms
> reported 32b with 4 channels and hence needed a mulitplication
> by a factor of 2. Skip increasing the channels for MTL.

Looks like the bspec was just updated a couple weeks ago with this
change.

> 
> While at it fix the logic while reading dram info num channels.

It's probably better to break this out into its own patch since it's an
independent bugfix, not related to the last month's bspec update.

> 
> Bspec: 64631
> Fixes: 825477e77912 ("drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox")
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
>  drivers/gpu/drm/i915/intel_dram.c       | 3 +--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 4ace026b29bd..7601e1061bca 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -439,7 +439,8 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  		return ret;
>  	}
>  
> -	if (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5)
> +	if (!IS_METEORLAKE(dev_priv) &&

Unless we have a reason to believe otherwise, we should assume that this
change will carry forward to future platforms as well, so this should be
a version check rather than specifically checking IS_METEORLAKE.


Matt

> +	    (dram_info->type == INTEL_DRAM_LPDDR4 || dram_info->type == INTEL_DRAM_LPDDR5))
>  		num_channels *= 2;
>  
>  	qi.deinterleave = qi.deinterleave ? : DIV_ROUND_UP(num_channels, is_y_tile ? 4 : 2);
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 2403ccd52c74..bba8cb6e8ae4 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -471,8 +471,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
>  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>  	struct dram_info *dram_info = &i915->dram_info;
>  
> -	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
> -	switch (val) {
> +	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
>  	case 0:
>  		dram_info->type = INTEL_DRAM_DDR4;
>  		break;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
