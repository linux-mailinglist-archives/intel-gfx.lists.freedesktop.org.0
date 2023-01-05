Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE98D65F530
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 21:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7C310E80E;
	Thu,  5 Jan 2023 20:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC7E010E80E
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 20:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672950479; x=1704486479;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=84YefLga3S15+NVjMX23ZJGYK+twHq20YD5D9jhPFDQ=;
 b=FSsXKxeRdJEcJZCEl5UNqqPmwcoO1K/5NHeLCKvxKjgLIVofPWJF2Lxg
 Mp1eIg5uYQM7XhxTWrM5AecU7iV6FyLufWIxu03YzTu/4NFeU/6E7Tf1I
 SZDQvO0BkwnPERXTo3KP06na0Sm/ttymmQOaZPE9WPxrVNdYn6LCkmdc0
 4LlHA0nqaeUQwTYargKanvvYMsWsLKxGTsjMGMUHUR8cpch1zjnjSwHbv
 td0eCFUY3O5JIQT+Ul3OPgxdNkrh+87ld9kkzjyH0jtZwcmvw6z3v2maH
 Q3DqIHtSzzLxibB14hQiVxsW5Mq3ynDMGfvuJ4AP8WccrsZe2G68ChBUm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="305839014"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="305839014"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 12:27:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10581"; a="744391057"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="744391057"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Jan 2023 12:27:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 12:27:58 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 5 Jan 2023 12:27:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 5 Jan 2023 12:27:57 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 5 Jan 2023 12:27:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiKAP96Uh8KWJ18oMxjYD7noq6URP6qQ/2Gn/PL+VijsIeBbAo8fmkaruNxa8zOWYLFMNNYOg3C7qnrT82s4R+IfnP0vxc7wYVbmzee9ckxOZki5vLCn0TVGzQGXnaPUoVMVFxEwgCpei8iq0xOwtnYEXsGqyiIGcyi3Ehzdt/zY2Nd+wW2v6BD6DnEHudGFYWPQtHl+w+JIvMWo14OsWi919L5yRmvV2XNwUMYT5WoLog1m6KtFOzFfPfJice4UAV+xRBQAa1Jcruot1Ed/Mnnic07NnSINUU85T9L2HnnXaLXjgWAeeEPpY7wTG9flUgGquYdHVEGDzvqmPuz5Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gI7GQD5ZmBkDC+QmLMuIrudXKbfYaXlNzBr+fCyV32Q=;
 b=lQ7Uicj991Cq6DimEc9lBbojetd0JMJ11oAjQwFB4TF54Q0yvW3G/sTlFumygnG+VDBcVHggvtt5e5R6Eo3ZXwVcwdPH4VA7/xoFqhqTqW4IV5wpxlRFCkPagzQ6sByybNqMID3+fNbjJ/P+mWs+Bdtz1Hd5Ih0MehPOHI0uudPvLRdZC/fNgS7OfeIv9KFmNDp8HzD1WgXYGK4aJUxifFrmP27SOQNEOqHBdASsJ2ok+oQIx6RhmkbUU8kxfv27Evpxd5QjiFGcVV/ZAzV7RwXxWUCUspAXpbtUBCmY/u7OfEz0YNh21cNFHp5jZ7tw6AJ6Zx0NKTe+YptvHYMQ4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 20:27:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 20:27:52 +0000
Date: Thu, 5 Jan 2023 15:27:47 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7cywxMBJPmR/Vfj@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-2-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-2-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR02CA0007.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB6349:EE_
X-MS-Office365-Filtering-Correlation-Id: 04a5a081-2b88-4603-2c4b-08daef5b5210
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +p4HJng6g0nHK3u5xaFF1fPZa0VrGd1gdDBLGcqP684ciVigQ7Yj9DhVVXhQSo+n5SYJsLDJN95dZ6eNjDRh+gh+tbRdRMAHf2u1Xiv45pSI/uTPK2W2QmT8NwyH4ZHssal2hHgX0blp4HJ9qFma4a+yZDw1F15GSuhbza0y7zzoFUkeAAfNtz8BC/HSFGOK0zhaK9KvqIQ86TDjlvWcVf3U10gX66DmuT+gF63z2bumPTQNKiGb2PeMkSOo5eEkdICG1I1RxUJuEFBx31OcPT8Uie5E4N4oTS1DECt3c02opKnAPMRu7Y1AZHZqbpHM0eXw3qbmO4zpijZyxJC1AZUjvkk+QRgDA/HNQh4z8Dx4wprP0L6ipKUjorYgUVfCNEYroKxAWdmYC3XP7EOv9sSD/l508HUnIn53diZsu8QN4Wg2MFAFAV/FD/GZ0vz2C0OFLIpw4r0Z29+UDHpv3ogMlFZv5bdUAOxagj+Kp08Q+6pxI/M7xO/Fm2kTDT08YfhajubeZTIdHlc6M9dMa0b6gvAw5x6XqbdwNiGGnfBlq4L2m9TMUCPNjaEEYnrIRTm/FUYpGnWOPSVuAtjXNP1hmqIy6vIdpdHu90YH4FuW1+cWfIRF0i3PCAisJdsqI46PMs3iNnEeemUeTM9Utw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(136003)(396003)(376002)(451199015)(2616005)(83380400001)(86362001)(82960400001)(38100700002)(30864003)(36756003)(54906003)(44832011)(6636002)(37006003)(316002)(6862004)(2906002)(41300700001)(66556008)(8676002)(66476007)(8936002)(5660300002)(4326008)(66946007)(186003)(26005)(478600001)(6512007)(6666004)(6486002)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j+5/u7ikkUXdGVPQlxgNNQFReNzIeJDxJAvxYvehlM/eeMJVH26CN38xWF70?=
 =?us-ascii?Q?+gXuTqjDuYFte6sLk48aUZgQ9SVbPs3XLGttOOIxbwgCr2n/uTQ+ZUYVRXuB?=
 =?us-ascii?Q?4fDsfAJaomYaI+gcjTucJPOHpx1EMeF4stmf3Uom2ytVIYzr3f7ONk6iBV7r?=
 =?us-ascii?Q?wVj2t49xC9YEtGvSdxLRPvyuoRj9I3GEaKJ9W2GpSthiayGxGneb4Db8b/7T?=
 =?us-ascii?Q?u4IEXNFBvwHyv3DNLIB4slYXAQaErenf4/y+wR/VVJ/qipVTu1NH6vU6zkYz?=
 =?us-ascii?Q?qtnLN2dbTUnRDT59WZIBXdaOV2MxOEdQ1EVVimyxGWJWg2K4nipCYNwn+QWJ?=
 =?us-ascii?Q?gcwZmYah0XyAtOhKLdFsKlEPJ6jvIFWPOsrNDOKHigg2XvHvPnt8WJzwABeJ?=
 =?us-ascii?Q?MpwTzrg+70eToEFr6ct/Am7H1xReK322dBiuD0Kekm7a7btUcq+iy37W2uzk?=
 =?us-ascii?Q?rbr6KgaeoiESltG4JitCQrzxfboQD9+P0pR+UvWdV9m4M36ryxDLnTqzPyLY?=
 =?us-ascii?Q?dBvwrClWWH1HucU5+LJiAve0YMdiEbZYSalrXzvqIx5APCixPSfjbShPor4L?=
 =?us-ascii?Q?jwvXi8gfRwweBLoJIKkpaqX4KB696WT00hFsXsYwrueC2JoRQl30TNgoSgQe?=
 =?us-ascii?Q?0wSn/rGjIJW4v9FNkCp/gBMhM/f3mCcjP60Q2973BQ4C0AEplr1TH9F2X6c6?=
 =?us-ascii?Q?+o6gDwGLeaha38Akk7mot19vqUln0RyjLvJthQ4L9bbbzAwtfZvZJ3Gt+dte?=
 =?us-ascii?Q?+LljmnjM4cfwG2Xt+BdJbzIXm9PSe3amEoY1WhX3Gi2uc5Ev87+rMXTbywcI?=
 =?us-ascii?Q?LvsaBBmy59+G3nOg3XJemO8KykPvo8IDSlroCFi+QMtN1khAWnsMN73QZ9bz?=
 =?us-ascii?Q?ry5RZ+DaHF8rX6c7Px5RkkshytKzRZrqvcFsToxLA/AoxODBD2WgpWf22kkP?=
 =?us-ascii?Q?1QqaSS24YLl3JGvJjLvR12cO0GMbOIUEFdO2aOqdVUBrBRYSlzf0ooUYsLgd?=
 =?us-ascii?Q?fSmskgt/X6lr2NEOy2NXpaTuFHSG9P0Sh139E7++frcD4HPyGoQan3WPb6Zs?=
 =?us-ascii?Q?aIHayWAxwv6pggEdt1AQsd/DVyIjejBxvFaysKF4FMi3UKGVaCQ3NvZy49A0?=
 =?us-ascii?Q?dGuvusqrdTBKs6+eNqEz2pmn5rVgc7YWRBJJunyS188Gr5ei+6IG9XYqNjef?=
 =?us-ascii?Q?L2+XIqSoWnbGavTzJcYUHWNwcKTGt5lNyVS89OxAsvt/ZzUQ2qZfGngZSSPJ?=
 =?us-ascii?Q?ogI9pPPNqg8q8w/9ZTsZ2kRPhF1qPRDLU6MMay6qec36uXx7kU8Yv4jou72L?=
 =?us-ascii?Q?8c4ztIDGemH29p4rkrhWraOS7QEt7TFJfvC2eCNgXNCg6HrB1dDoP3zX1Td/?=
 =?us-ascii?Q?Ykwaizwj1YpPu/iZ815YDTC5W0bMZZoon5CI86X8MxI2X3THiJTzzG/9Yz0i?=
 =?us-ascii?Q?/AeV2CLs+XnGcLEBWfE5tcNtSAnn8eRHiV0vxEvESEewuFh5QIhyc69rf7iy?=
 =?us-ascii?Q?51uuPehxB/4OelgKZyXzmHp6OlYEyyWbzhd7Eii3Y6ZrGbP8aLQ3rerTcsop?=
 =?us-ascii?Q?QXtAkZoDFwRzPxXMgadxgwL0lPMfda+x2saaMXAeAJNv5Ajv0B1z0aLSt0pI?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04a5a081-2b88-4603-2c4b-08daef5b5210
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2023 20:27:52.7168 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TLE4hkAGX/HdOrpdmIh2DlOmGDe9DwS50G/ZIwgsmB2+CKlwDcTpfiWkuXUsPBLNNuS0OV50nQ2/BTIZRtsBmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/9] drm/i915/display/power: use
 intel_de_rmw if possible
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

On Thu, Jan 05, 2023 at 02:10:39PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 49 ++++-------
>  .../i915/display/intel_display_power_well.c   | 82 ++++++-------------
>  2 files changed, 39 insertions(+), 92 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1a23ecd4623a53..90d7a623d6e3cc 100644
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

I believe we have a risk here since we were only cleaning if not enable.
But anyway this looks the right thing to do here...


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  }
>  
>  static void skl_display_core_init(struct drm_i915_private *dev_priv,
> @@ -1618,7 +1599,6 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  {
>  	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
>  	struct i915_power_well *well;
> -	u32 val;
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  
> @@ -1670,11 +1650,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
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
> index 8710dd41ffd4c6..05b431f968cb49 100644
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
> @@ -398,29 +392,22 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
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
> -	    !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> -		val = intel_de_read(dev_priv, ICL_AUX_ANAOVRD1(pw_idx));
> -		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
> -		intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx), val);
> -	}
> +	    !intel_bios_is_port_edp(dev_priv, (enum port)phy))
> +		intel_de_rmw(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> +			     0, ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS);
>  }
>  
>  static void
> @@ -430,17 +417,12 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
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
> @@ -502,19 +484,15 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
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
> @@ -776,12 +754,8 @@ static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
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
> @@ -820,8 +794,8 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
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
> @@ -847,8 +821,8 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
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
> @@ -1149,18 +1123,14 @@ static bool vlv_power_well_enabled(struct drm_i915_private *dev_priv,
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
> @@ -1276,8 +1246,7 @@ static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private *dev_priv,
>  	 * both PLLs disabled, or we risk losing DPIO and PLL
>  	 * synchronization.
>  	 */
> -	intel_de_write(dev_priv, DPIO_CTL,
> -		       intel_de_read(dev_priv, DPIO_CTL) | DPIO_CMNRST);
> +	intel_de_rmw(dev_priv, DPIO_CTL, 0, DPIO_CMNRST);
>  }
>  
>  static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
> @@ -1289,8 +1258,7 @@ static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private *dev_priv,
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
