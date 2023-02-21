Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 564E669E8BB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 21:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7C310E18D;
	Tue, 21 Feb 2023 20:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB18F10E18D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677009655; x=1708545655;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GcUpH1lk37NPRJ4konH+bjeoqxIqVJ7utiYq6bDmwow=;
 b=IZ2Iaedz+01H7Ur68VmcVKbWICG0DgexFuC5sX3gzbBoIWJYoSNvONkt
 FRrhJCfJsXmHVobV6D9Zqr/bZHO6hpkT/QcADNlxRLUKX7hrPYGEF+ij6
 1ekgLNnrLKT+dF8eJIMEqA3SGw2Vgf4FNAEIB2jPdcDwuuetghLaXwY3b
 mXE7hOcXj1g8w178G+Ln1Ye5mfpqrGs+Mop4FdGZajo/xIktDWpcQRrHR
 c8KJYUZvZydxC6lnF34hQY+F9wkYwfJq/rCyTagNji9S2jBUdjI1et3Kq
 905zaI6NquQXPQFIw0VUKChe9eZR+qJL3v7CUqQAojDY7dvxvVm9k7e7q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="313111381"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="313111381"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 12:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="671774344"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="671774344"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 21 Feb 2023 12:00:09 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 12:00:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 12:00:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 12:00:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P9eQsq2AJ2u/b6xJ5UsXTNyhXQMXYApuml5VNPPr51Qq0khH5sxujb+i528AeUFGchndbpBzzHcM71kPYL8QpjJeGRyT3nRDQFYjJILpU6xDsb2IL8osPTyOZotAe4AcIIXyOjv+X0eI33h3LSAit9TgS5StDolu4GpjysnJhjY+lSfml2/tEWaYnMi/cnSi8t6Q7291n0ntedNH8AxL+LtYMBuYi4tqagjHD6IF2+QhY81mb1srjioacBMRQ+pTz9VFZNdxZDGBaUtF/kwWva8rZodvl7fTmmx8uJvDr6vSSet3f+11UOz4yMYuVROPnw/n3O1zYUV6gR8da5S7ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ow8O1QtDqLCxyWKiGLLjEqZTxsUaG7eqqvfPD7cIPDo=;
 b=ARU3HrYoHe8sz7DvFdzDTtbW6m8MyKQHdaUql46px/sM0d9t6r066FCp0LDIznhW4kBlm7qbBydfISjNQqlo45uw5Z70zK9aR99H8r57dDWuJV2Hw5o/yLblzZ9NEO/0KI4TClk80r+1RBi1npCXi0US6fEBIh9owrIXQo0+ttJj61JqUlkFZW49wSOQkAILPakUpcClWfS2g2yobidNeQiFYP6XN3ZwRONr5vn1Y7XKYo2ky5mJwnjSEaWJoW/xqfm0aAdvj7h5RmVW1W9cZukgQydODSuzA0ldVOFTKsVvnrAsOBwq0vnBxDIAutea+26wgdjIArvsfmOr3idPDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6499.namprd11.prod.outlook.com (2603:10b6:510:1f0::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Tue, 21 Feb
 2023 20:00:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6111.020; Tue, 21 Feb 2023
 20:00:05 +0000
Date: Tue, 21 Feb 2023 15:00:00 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y/UiwJPNMJUdKKkp@intel.com>
References: <20230217111836.864959-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230217111836.864959-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6499:EE_
X-MS-Office365-Filtering-Correlation-Id: 45fcb3d7-76ef-4cbd-a3ed-08db14463973
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u12EizweM7T35OxO5OWnIOcbd98FZUiIK6HQO5CCKwHvrmI9JD6EUn28FSoMpEpy6IfqNZekDRj9yDeMhO69jmm3q9EviUq1nx7/jM7UEJ7y5zQjOS/hbdVyMPt/6fgVORKELDxKv1bwXV1MHodzRArE19GxTSyIqwn4HWtaoiEDJZIaMNmTcLlUGUcPc8J44/O6FKRL6YfByQUWS4ac9/09OWnOvjVpxI51JdbJh5u7BIjax7nhfCqdviWTIRvmMAFAlHhiJRBo5qAKWRsHKt7L57oeWLggIVeHgOblzLcLl4qGvcnVNtAeT+UJJseLZak5YisNqhNbksOFbd6az3rHtAY+OQrK8leijKgcYeJs5nCrb+cTMG1rNPFu2GeJrbVDvbZMRlxWfKjlSEU0nsRdYQSK051EMjUY3yuJtt/XiKslGAGkG9TngBu/MMKDwWCCZCGi30mlAj2w7xPD1yzqKG+f06jHsY9nKKFDeOcMWkyVRJvIDZkK0FqJg4LIbuQEvjy2IhUUnxhN/1mjIS+BZHK+Lo0OpZEGWY/Is0AoPDwq0fP4gYhCyT6+qb4B7VjBjd7Obq4tjhttCFjQolib4F+q4GuP21JEEZ7uM1rEeGcSfQzTx2FoCrglrjyz4JsYGPfnFbvSazTpc/tQ7A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(346002)(376002)(136003)(39860400002)(366004)(451199018)(30864003)(44832011)(5660300002)(86362001)(82960400001)(2906002)(38100700002)(6486002)(478600001)(6512007)(26005)(186003)(36756003)(316002)(54906003)(83380400001)(6666004)(37006003)(66946007)(6636002)(4326008)(41300700001)(6506007)(6862004)(66476007)(66556008)(8676002)(8936002)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ngWiZR74yd6DRSi+5xr4PV/f29gftQNhak99V6HzQ3damyVfMoTLcFt6vBqn?=
 =?us-ascii?Q?oGPZM6XrTIDnsHcsixJKFghhz1/lxg8FCrsu2JFu/6dBaVtZ282j9i9eao6M?=
 =?us-ascii?Q?1OKSAuYLC3+L3gG8m/aSjHZzUVrOEmmu0G+a2z35NLyOYZ9zOn/JnJkrr2dx?=
 =?us-ascii?Q?hmLOfUSUd6fNmIYNl/W1bxvUIQaVXX9Aj2797zsOjZK/22u9QoSiMhvYWsFG?=
 =?us-ascii?Q?ss7OGlhQqaJJvnbtJ38Rq7WcqV9EelNjC+ThHBbmHwD7DsfF3gKNO7Kl4nvq?=
 =?us-ascii?Q?PS6/A+aG8rK0PG0GgeEvzBQt0Ge3jCQ83NwpzkgB3PF/AkRVw7GQRBj4g0dc?=
 =?us-ascii?Q?3YN9pahREkWHSpaUoRY6H8OFCz+P5JeewfsXyRNolZxi91GXibScYl9LMwpl?=
 =?us-ascii?Q?JZJxiHaOWAXpiLN/r1NZT81lQJgShkaVC/GZ6VE6Ms6xX1qy/a8oyCwfeuZP?=
 =?us-ascii?Q?xwjoLugwspEl6FVcHQbqKOO7yYF4jwoVT/JtwWfIIU8OKfNe2Q2pLfBYR0d/?=
 =?us-ascii?Q?eMMagoXk9EwsSn3xbm/DF/6v61p28O2Ux0gsga2FsmXPcc+JcBXnS6kEjqYa?=
 =?us-ascii?Q?5y8+XBEnec07gECbdwbYd+fjP6qfECy66If/yPoF/LXsvvFuCAcuWZuVPr/P?=
 =?us-ascii?Q?vBDXlSrpYCZnFqkVL0ZGBEPK+/eqnEBFMHcpz+ozTFGSnP3JtUlr8H9DbarO?=
 =?us-ascii?Q?2PpQvcsVjMPnd1JUxtz72SK5qM+ldVRoFFxa9WzMeR8GOM8m0zqmcvufR/5Y?=
 =?us-ascii?Q?AplosaFWA9l9ILURQD4M1fuiuUfUXksKOfO3wgXFSyPCG4iNT5dR+EwvXVIh?=
 =?us-ascii?Q?NYdfM4ABkNrBJD4E0zCuoA/SOWD8mnUlF1jq6XyszGPzhaTkKDSFAf6Loj06?=
 =?us-ascii?Q?qXVsGZnL/g+a2dGbLEPHgHvEbxZbT8NQy28uGsfSapkxzldCPglcwRRvHmRa?=
 =?us-ascii?Q?fQQ02Mm8KHVh+a5B0KYAYL10jrzZsvf/NUFNRHqLLd0gBSJ/ORaSUZOukXQc?=
 =?us-ascii?Q?EsLlnjSgmgD+lEO6UQQK+iMoXuikP2jV5r/gpGTHf4dThD9UknzyMMgxqhCt?=
 =?us-ascii?Q?VIGsLIHwN9BT5aPKMNfa8dPjZdRFytFv4/2fhAgEv0WVHdHgmk4x91xdvm9K?=
 =?us-ascii?Q?AofhpQ5lGts+XGqRN2dmxkBc3rns3EKIkvsrk4po+P13ZVkjKuWYluL0XpL1?=
 =?us-ascii?Q?6MgZpvUGgJI1FG8tr7Z9J9gYVT8MpkR6B5nGW2gXrj6UulBeIKW7ihOtccCv?=
 =?us-ascii?Q?H+1QQzv7CwiEMR5jHqp8eRVm1GdLEidPn/5iMah5LdyJ2Ncvl5BHcJpatPLV?=
 =?us-ascii?Q?ICMCnCljZ6R/76W8sZ3njBJ3jKqLrj9L6n1ConxaKUD1rAxwUBGbwd6xq6fE?=
 =?us-ascii?Q?I22/3oJjKQfSI3p6bMmI3aRoEWWco6YlloNMO+TGK8FU9ijVn3lAjclg3fnV?=
 =?us-ascii?Q?JTgW5omKMBSAp5eCtt5KKXX7TLMVBe65wBkD9Uh+oqvahZfwpH4iB+LgwMo7?=
 =?us-ascii?Q?Y4wPZ7uPlXh9LzF0OcVQKbSEc/JHYUYABszJQEJT7ArekcXyHQcbYTu1JTTx?=
 =?us-ascii?Q?RtlvBXyPGX6IV0X6pVZrhc+waPoZDI1T/REclhUp6WNhK6vx1bZwCiV7JnVi?=
 =?us-ascii?Q?sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45fcb3d7-76ef-4cbd-a3ed-08db14463973
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 20:00:05.0327 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +6HXB8JOZoAfSyuU8uhQ3UkiwKw9qjPiKEJcZl1bmv1w8Up28DlgkhwIzlPgp2eKLFzG8G5icLRMlcKmIeNA8A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display/power: use intel_de_rmw
 if possible
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
Cc: intel-gfx@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@intel.com>,
 chris.p.wilson@linux.intel.com, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 17, 2023 at 12:18:36PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

pushed, thanks

> ---
> v3:
>     - just rebased
> ---
>  .../drm/i915/display/intel_display_power.c    | 49 ++++-------
>  .../i915/display/intel_display_power_well.c   | 82 ++++++-------------
>  2 files changed, 39 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 7222502a760ccb..743b919bb2cfd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1260,9 +1260,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
>  		drm_err(&dev_priv->drm, "D_COMP RCOMP still in progress\n");
>  
>  	if (allow_power_down) {
> -		val = intel_de_read(dev_priv, LCPLL_CTL);
> -		val |= LCPLL_POWER_DOWN_ALLOW;
> -		intel_de_write(dev_priv, LCPLL_CTL, val);
> +		intel_de_rmw(dev_priv, LCPLL_CTL, 0, LCPLL_POWER_DOWN_ALLOW);
>  		intel_de_posting_read(dev_priv, LCPLL_CTL);
>  	}
>  }
> @@ -1306,9 +1304,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>  		drm_err(&dev_priv->drm, "LCPLL not locked yet\n");
>  
>  	if (val & LCPLL_CD_SOURCE_FCLK) {
> -		val = intel_de_read(dev_priv, LCPLL_CTL);
> -		val &= ~LCPLL_CD_SOURCE_FCLK;
> -		intel_de_write(dev_priv, LCPLL_CTL, val);
> +		intel_de_rmw(dev_priv, LCPLL_CTL, LCPLL_CD_SOURCE_FCLK, 0);
>  
>  		if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
>  				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
> @@ -1347,15 +1343,11 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
>   */
>  static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Enabling package C8+\n");
>  
> -	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
> -		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
> -	}
> +	if (HAS_PCH_LPT_LP(dev_priv))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_LP_PARTITION_LEVEL_DISABLE, 0);
>  
>  	lpt_disable_clkout_dp(dev_priv);
>  	hsw_disable_lcpll(dev_priv, true, true);
> @@ -1363,25 +1355,21 @@ static void hsw_enable_pc8(struct drm_i915_private *dev_priv)
>  
>  static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Disabling package C8+\n");
>  
>  	hsw_restore_lcpll(dev_priv);
>  	intel_init_pch_refclk(dev_priv);
>  
> -	if (HAS_PCH_LPT_LP(dev_priv)) {
> -		val = intel_de_read(dev_priv, SOUTH_DSPCLK_GATE_D);
> -		val |= PCH_LP_PARTITION_LEVEL_DISABLE;
> -		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D, val);
> -	}
> +	if (HAS_PCH_LPT_LP(dev_priv))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     0, PCH_LP_PARTITION_LEVEL_DISABLE);
>  }
>  
>  static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>  				      bool enable)
>  {
>  	i915_reg_t reg;
> -	u32 reset_bits, val;
> +	u32 reset_bits;
>  
>  	if (IS_IVYBRIDGE(dev_priv)) {
>  		reg = GEN7_MSG_CTL;
> @@ -1394,14 +1382,7 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) >= 14)
>  		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
>  
> -	val = intel_de_read(dev_priv, reg);
> -
> -	if (enable)
> -		val |= reset_bits;
> -	else
> -		val &= ~reset_bits;
> -
> -	intel_de_write(dev_priv, reg, val);
> +	intel_de_rmw(dev_priv, reg, reset_bits, enable ? reset_bits : 0);
>  }
>  
>  static void skl_display_core_init(struct drm_i915_private *dev_priv,
> @@ -1616,7 +1597,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  {
>  	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>  	struct i915_power_well *well;
> -	u32 val;
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  
> @@ -1668,11 +1648,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  		intel_dmc_load_program(dev_priv);
>  
>  	/* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> -		val = DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> -		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
> -		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0, val);
> -	}
> +	if (DISPLAY_VER(dev_priv) >= 12)
> +		intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
> +			     DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM |
> +			     DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR);
>  
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 56a20bf5825b4a..6d1d3284eddd3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -333,7 +333,6 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	u32 val;
>  
>  	if (power_well->desc->has_fuses) {
>  		enum skl_power_gate pg;
> @@ -356,9 +355,7 @@ static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
>  			gen9_wait_for_power_well_fuses(dev_priv, SKL_PG0);
>  	}
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>  
>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>  
> @@ -380,14 +377,11 @@ static void hsw_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> -	u32 val;
>  
>  	hsw_power_well_pre_disable(dev_priv,
>  				   power_well->desc->irq_pipe_mask);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
>  
> @@ -411,29 +405,22 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> -	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>  
> -	if (DISPLAY_VER(dev_priv) < 12) {
> -		val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> -		intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> -			       val | ICL_LANE_ENABLE_AUX);
> -	}
> +	if (DISPLAY_VER(dev_priv) < 12)
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
> +			     0, ICL_LANE_ENABLE_AUX);
>  
>  	hsw_wait_for_power_well_enable(dev_priv, power_well, false);
>  
>  	/* Display WA #1178: icl */
>  	if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= ICL_PW_CTL_IDX_AUX_B &&
> -	    !intel_port_is_edp(dev_priv, (enum port)phy)) {
> -		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
> -		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
> -		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
> -	}
> +	    !intel_port_is_edp(dev_priv, (enum port)phy))
> +		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> +			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
>  }
>  
>  static void
> @@ -443,17 +430,12 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
>  	enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> -	u32 val;
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  
> -	val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> -	intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> -		       val & ~ICL_LANE_ENABLE_AUX);
> +	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy), ICL_LANE_ENABLE_AUX, 0);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> +	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>  
>  	hsw_wait_for_power_well_disable(dev_priv, power_well);
>  }
> @@ -515,19 +497,15 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	bool is_tbt = power_well->desc->is_tc_tbt;
>  	bool timeout_expected;
> -	u32 val;
>  
>  	icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
>  
> -	val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
> -	val &= ~DP_AUX_CH_CTL_TBT_IO;
> -	if (is_tbt)
> -		val |= DP_AUX_CH_CTL_TBT_IO;
> -	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
> +	intel_de_rmw(dev_priv, DP_AUX_CH_CTL(aux_ch),
> +		     DP_AUX_CH_CTL_TBT_IO, is_tbt ? DP_AUX_CH_CTL_TBT_IO : 0);
>  
> -	val = intel_de_read(dev_priv, regs->driver);
> -	intel_de_write(dev_priv, regs->driver,
> -		       val | HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
> +	intel_de_rmw(dev_priv, regs->driver,
> +		     0,
> +		     HSW_PWR_WELL_CTL_REQ(i915_power_well_instance(power_well)->hsw.idx));
>  
>  	/*
>  	 * An AUX timeout is expected if the TBT DP tunnel is down,
> @@ -789,12 +767,8 @@ static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
>  
>  static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
> -	val = intel_de_read(dev_priv, DC_STATE_EN);
> -	val &= ~DC_STATE_DC3CO_STATUS;
> -	intel_de_write(dev_priv, DC_STATE_EN, val);
> +	intel_de_rmw(dev_priv, DC_STATE_EN, DC_STATE_DC3CO_STATUS, 0);
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  	/*
>  	 * Delay of 200us DC3CO Exit time B.Spec 49196
> @@ -833,8 +807,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
>  }
> @@ -860,8 +834,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
>  
>  	/* Wa Display #1183: skl,kbl,cfl */
>  	if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> -		intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> -			       intel_de_read(dev_priv, GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> +		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
>  }
> @@ -1162,18 +1136,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
>  
>  static void vlv_init_display_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	u32 val;
> -
>  	/*
>  	 * On driver load, a pipe may be active and driving a DSI display.
>  	 * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe getting stuck
>  	 * (and never recovering) in this case. intel_dsi_post_disable() will
>  	 * clear it when we turn off the display.
>  	 */
> -	val = intel_de_read(dev_priv, DSPCLK_GATE_D(dev_priv));
> -	val &= DPOUNIT_CLOCK_GATE_DISABLE;
> -	val |= VRHUNIT_CLOCK_GATE_DISABLE;
> -	intel_de_write(dev_priv, DSPCLK_GATE_D(dev_priv), val);
> +	intel_de_rmw(dev_priv, DSPCLK_GATE_D(dev_priv),
> +		     ~DPOUNIT_CLOCK_GATE_DISABLE, VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/*
>  	 * Disable trickle feed and enable pnd deadline calculation
> @@ -1289,8 +1259,7 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  	 * both PLLs disabled, or we risk losing DPIO and PLL
>  	 * synchronization.
>  	 */
> -	intel_de_write(dev_priv, DPIO_CTL,
> -		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
> +	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
>  }
>  
>  static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
> @@ -1302,8 +1271,7 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
>  		assert_pll_disabled(dev_priv, pipe);
>  
>  	/* Assert common reset */
> -	intel_de_write(dev_priv, DPIO_CTL,
> -		       intel_de_read(dev_priv, DPIO_CTL) & ~DPIO_CMNRST);
> +	intel_de_rmw(dev_priv, DPIO_CTL, DPIO_CMNRST, 0);
>  
>  	vlv_set_power_well(dev_priv, power_well, false);
>  }
> -- 
> 2.34.1
> 
