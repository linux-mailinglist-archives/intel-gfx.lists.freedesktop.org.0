Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA366E2E5
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 16:57:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFE810E186;
	Tue, 17 Jan 2023 15:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17F0510E56E
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 15:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673971074; x=1705507074;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4IB50q3vILPgfjQDC3rDWVTrgoVnLyha33AZ/EPrykI=;
 b=Zp5r1d4+c/Qm5Dii5tthSxOrXcrlWtjp9ezmtnmFat2Bwwr1q5Jhb+LH
 e8xx++Bff7studkaqKxWrQa8vkXrNOjsxo2luc6HugPpOhbH4Xs7D/Mix
 CC6jWtq3gFNW1pJe2h8/kW1AnOjJIjysDqRlWKM45xyreDzYcgQEpxnAT
 53oUIt4OGcMW+Zms9HFSAAYUzeiMeNbBbcU1RCLuzd4QmDBD77rxQ9frI
 adjQ7WjxFsJyqw+sxAIKLPh83EUG8i2SYiRQSaaSrqiG1hEELVMmEZ6LB
 2B/5nZGiG8uYsAXFgDSFPGvCp9BOGoAfd1Ez8GMk31K0BLXNhU8vzJ13A w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="308291253"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308291253"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 07:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="988164616"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="988164616"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jan 2023 07:57:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 07:57:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 07:57:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 07:57:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FdZmD9aIcOm4aou2V4LhPuy9xkNh67DzS7QhpxNKit9wJGqyZcBJ8NoEvOFoy9RzRulR+ZGHnRdhnK/ExHgBF8CVIlTzvpmN/Z1rfqKt9v3hCCF2/D99tCDHC4VVVgDAp8KVh/Mn6xFx96ebu5TWEqNH5AHo5fzA1x+UeUcOox9uilTqj1MSmEp7teDRQGivlUP0i3bP3qj76svrH6yGiHU14jIyljybvnwsjwFbdZKnTUNNtUrYlZoS1MkzBm91lVHn5gjI3AEbLmP2JZKUM7kGIBBQOLlcr/Fb0qpIB4TRaxScoCfsYxSK2K5Cf1GnKp6eZNuO6jowaZgG5XtS8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGUhSIKGsUJAmJNl2bul9VAsUkTXHqHJ4127DVFBL4U=;
 b=NvGEfufcrqO7KYpzBo1TY1Zt+DoboFdqOIv4TCjh/cHZcQeqbfUdA97xpD9oWJcnKJKSniFQ6tZVVOS+4wJvSq0eRtRJOhiOVp8ONQmr5xT6byYo2FIePoFDaBqAgEBk0Jjrg/TQWcPgFF66RkvThkbKNT3LEwpTP8oc2/53xw3rkMfAVu0lWAEo3vOMdXJ9HxhSwB8Z9dtORX1eaMlJQiIOWpOn2p9GaZ4yvOZqCyjTaWQBtAcqVDf2D3BixavhoxPf005GmpalPK+yqpibr8/Knejrq7o/bvjkqnl8V8ruINNrFo4bGkhdpKxEU8g48Z0VLdk1HbYEFNFiIMHJpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN0PR11MB6087.namprd11.prod.outlook.com (2603:10b6:208:3cd::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 15:57:48 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 17 Jan 2023
 15:57:48 +0000
Date: Tue, 17 Jan 2023 10:57:44 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bFeLgIe/KYzImi@intel.com>
References: <20230117143946.2426043-1-jani.nikula@intel.com>
 <20230117143946.2426043-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230117143946.2426043-3-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::11) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN0PR11MB6087:EE_
X-MS-Office365-Filtering-Correlation-Id: a4393349-d2dd-4543-ee3d-08daf8a3948e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y3ZOr2NdshYDvv4oHNleMNBB8E0Gr7GfQNW3a9o+q8FFAyiB910gruylfgFzu8rwVFampq7DecxSAGa5qhMswqv/jOrkNd9lkq2OeFjaRJ7oxZoWgHbqXrsyI5Smon61wfSR+faXHOOjsI5+lBLnHw8UpD5nFhsvtKFQHDqxy00mObUAXfHwUdbopphjCrZs+BiV5qdtS+mqaJjYoIgPHU6lQ8o3vAPTJGgQ1he5qCul/ZXAKqVgK91pdAZ7iiXT6ZlbUBMG0hMzcQJ91O3ZUC6783p6duz5WcnJtCrtOa5ZF4YccmXlLLv8JVD9ekroQd+FpYAkX83UsjfwdcgPKJoIpiwM0zOdMU/VqPSJyfuvHuTfvBrZ0XQZRYCO2ScZObUqUPTzogFrL9sIk0ahqvv2RQYQXBs8ziGEYy2ociURHNuBM9V9eVjoeBhTObuFFQNGVPQl0CDXHXMApxKMbwd7FncAsj2PAkXdook5glD1ZrKrM//nPX3c5GjgI8PnpZ3EQXN8IvFZMBj2EtU8BdL5+Ln798Ux/Dmo30himAS924jJcvLPHckI1XWbarcgvcAur3TDYymUaYxg5PvUw8ipcMhcrS/XbfIhItYY8LVOAB5EtRBONqHRAj3R0XQcHHleVELW1HhtZTnj5giyDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(136003)(366004)(346002)(376002)(451199015)(478600001)(6636002)(316002)(6666004)(37006003)(36756003)(86362001)(38100700002)(82960400001)(83380400001)(2616005)(186003)(6506007)(6512007)(26005)(2906002)(5660300002)(6486002)(44832011)(41300700001)(8676002)(4326008)(66476007)(6862004)(8936002)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ec7uInxdbFWkompmy5YmTsnfVN5jOdqVLT0CReZ9TuVyC4CS/FSyqC3sHNin?=
 =?us-ascii?Q?JhQuIKetbzUfmnL4pNYykfh7F7dAVin/sl4T+tBRub0aDbs4F6j+JD6tFY2K?=
 =?us-ascii?Q?UPj6OZevf4yxnudjlfYirmwqUbcFipGzX18Jnj1ctpBzaMT2zx0prYaJL9F+?=
 =?us-ascii?Q?14sGYhQXhfOOno3i49NWFt1TyTOuCsypk6E6Y9E3i45RtsjdVfrQPaxeJj/g?=
 =?us-ascii?Q?HT409vHEV0J7tOA+bVrcdEyevr2TIFSwRGlCmxYma5e9pJJvFf9UARtmBdpi?=
 =?us-ascii?Q?SM+g6Tfe5548/11LdkwspRVbGFaAHLw5tVwcbxVDwS7tf63a7LJIgxZBoUtH?=
 =?us-ascii?Q?vlCrQAmrSQ9eCjW6xkpp81VvCSQ/qNEdVrUERA6szW4DGgKMoi7fqlrD+5vX?=
 =?us-ascii?Q?taXb6JI/t/yRUIiXaX3buAR2nRdreDrReDvxxoIKveCbJgskmVuu6nEnAn9P?=
 =?us-ascii?Q?5gAxvP2gDNuRhsIibAs9UfoDtSI1Zcd3fK0Ld+Ge7JCyEtim4he38Xq9Tsvh?=
 =?us-ascii?Q?wT3tJciuEkFOfcFw+XFQUz5ZY63LmfiEDRGa3vuFgpA1e1an2QaxPUXYwFah?=
 =?us-ascii?Q?hztGq8RKj1ceh6fkhlQmNaekk+kVP4L8s9XTpkr4JiE0abUjnotp0n/MiMcS?=
 =?us-ascii?Q?rWA4kA/khAyRx5easCtH5rHM5RUYRysBGNm/Z/9VVQ7lhToucJRM+djvhsQ1?=
 =?us-ascii?Q?WxRAApBAhtk5FqR0CGR06fNeZtfiJR+WE7pFcI3CaGPuZL31KfAvNNhQGE3t?=
 =?us-ascii?Q?BzjBT7dFx1EHXW7WMHruuhBIUVFBI2V6FL0MdRC6lKj6Q3LD4sA6/i3/uVCs?=
 =?us-ascii?Q?FBp7FBpkMvK0tzmbUsVWwXn7dHaFebxsHHVYU50LLFsmJQpQGDG3U8+i5pdL?=
 =?us-ascii?Q?C+t+5qXKwNH/SlwwpOpghEC3wyeYYoX39mrcbO/9fAZGDXyiKhMG11GHvDI+?=
 =?us-ascii?Q?h47bbWnn7JI9cPgW0iJ2TENspawDnEKkr44KzuA6JjDHQOYUozCM0uYgYWlF?=
 =?us-ascii?Q?BbDaRDfk2SZUy1BKeonTa28yHe/PKQhTFoWYh7DXOVIfPJesJnkglaVpzpEF?=
 =?us-ascii?Q?brJb0p54qNdhqbM9/bVoaCpnEptNinlaMJub0PMmmCZVvA5Ic9BG/2uQrt43?=
 =?us-ascii?Q?hy2NzZp3tYRHX7N//JEPN6OcjHdg7LNpjc7/V5fFrt3b088ONP7ZVkBIlgBZ?=
 =?us-ascii?Q?urcknpmWzAZ4F0FAgBPq2LzshlpWulpy8c5H0gQSB0OwOFTQDvHXTPOmmrwp?=
 =?us-ascii?Q?uakYnBmUSALFwP6pmaVVai+chPAaZqlILQ2Oq6FmdmQgoKJUIMfSEcX1zchv?=
 =?us-ascii?Q?kqW4KPivs9VU3nijEkgrka5TT3igUkOfe77B4zqecnxluHNMS34ZUU/WZHhk?=
 =?us-ascii?Q?kvg6wGZAK1hdQXogsVxdd2WJS5Y8Na6NWj4IBFqa4FcvETOLRoB9bsGU19R6?=
 =?us-ascii?Q?M0D1Cqw5f5gk47tFOQrwV8dt322OHiBC6GiT6nsokG7Pr/tcyxjI1TB3PdJC?=
 =?us-ascii?Q?lgwdAuUR1n3hSyVI6bDZhrypEqw9LK7FtUcucJSgC7HsVG/4qZjO0XWCJqe7?=
 =?us-ascii?Q?7T5E+Cw+OitLPjj6ODcjunppGb32lG5rZB/thxVrpB0xNOd66vUb2G7xO6Kr?=
 =?us-ascii?Q?Ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4393349-d2dd-4543-ee3d-08daf8a3948e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 15:57:48.5379 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jVrR0V5ZrwjU3lsqN1ctwtdIvdqVnJ5Ch3j6oCf9VF5uUy9DSpAEWUspCwpK+pTr3RC/bGqDMJqQofF6APsBkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move chv_dpll_md and
 bxt_phy_grc to display sub-struct under state
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

On Tue, Jan 17, 2023 at 04:39:46PM +0200, Jani Nikula wrote:
> Move the display related members to the struct drm_i915_private display
> sub-struct. Put them under "state", as they are related to storing
> values that aren't readable from the hardware, to appease the state
> checker.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

For the series:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_core.h | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_dpio_phy.c     |  9 +++++----
>  drivers/gpu/drm/i915/display/intel_dpll.c         |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h                   |  8 --------
>  5 files changed, 17 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 734e8e613f8e..419537a79255 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3291,7 +3291,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>  	if (DISPLAY_VER(dev_priv) >= 4) {
>  		/* No way to read it out on pipes B and C */
>  		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
> -			tmp = dev_priv->chv_dpll_md[crtc->pipe];
> +			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
>  		else
>  			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
>  		pipe_config->pixel_multiplier =
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index c0eb753112d5..24c792d44b8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -441,6 +441,16 @@ struct intel_display {
>  		u8 phy_failed_calibration;
>  	} snps;
>  
> +	struct {
> +		/*
> +		 * Shadows for CHV DPLL_MD regs to keep the state
> +		 * checker somewhat working in the presence hardware
> +		 * crappiness (can't read out DPLL_MD for pipes B & C).
> +		 */
> +		u32 chv_dpll_md[I915_MAX_PIPES];
> +		u32 bxt_phy_grc;
> +	} state;
> +
>  	struct {
>  		/* ordered wq for modesets */
>  		struct workqueue_struct *modeset;
> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> index 7eb7440b3180..565c06de2432 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
> @@ -376,7 +376,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>  	if (bxt_ddi_phy_is_enabled(dev_priv, phy)) {
>  		/* Still read out the GRC value for state verification */
>  		if (phy_info->rcomp_phy != -1)
> -			dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv, phy);
> +			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
>  
>  		if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
>  			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
> @@ -442,8 +442,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>  		 * the corresponding calibrated value from PHY1, and disable
>  		 * the automatic calibration on PHY0.
>  		 */
> -		val = dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv,
> -							  phy_info->rcomp_phy);
> +		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
> +		dev_priv->display.state.bxt_phy_grc = val;
> +
>  		grc_code = val << GRC_CODE_FAST_SHIFT |
>  			   val << GRC_CODE_SLOW_SHIFT |
>  			   val;
> @@ -568,7 +569,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
>  			   "BXT_PORT_CL2CM_DW6(%d)", phy);
>  
>  	if (phy_info->rcomp_phy != -1) {
> -		u32 grc_code = dev_priv->bxt_phy_grc;
> +		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
>  
>  		grc_code = grc_code << GRC_CODE_FAST_SHIFT |
>  			   grc_code << GRC_CODE_SLOW_SHIFT |
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index c236aafe9be0..4e9c18be7e1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1910,7 +1910,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
>  			       crtc_state->dpll_hw_state.dpll_md);
>  		intel_de_write(dev_priv, CBR4_VLV, 0);
> -		dev_priv->chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
> +		dev_priv->display.state.chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
>  
>  		/*
>  		 * DPLLB VGA mode also seems to cause problems.
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 9ac80a45362f..e631373cc1dc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -300,14 +300,6 @@ struct drm_i915_private {
>  
>  	struct i915_gpu_error gpu_error;
>  
> -	/*
> -	 * Shadows for CHV DPLL_MD regs to keep the state
> -	 * checker somewhat working in the presence hardware
> -	 * crappiness (can't read out DPLL_MD for pipes B & C).
> -	 */
> -	u32 chv_dpll_md[I915_MAX_PIPES];
> -	u32 bxt_phy_grc;
> -
>  	u32 suspend_count;
>  	struct i915_suspend_saved_registers regfile;
>  	struct vlv_s0ix_state *vlv_s0ix_state;
> -- 
> 2.34.1
> 
