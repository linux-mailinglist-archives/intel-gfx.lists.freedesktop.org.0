Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1539A870FD4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 23:12:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2AFF112653;
	Mon,  4 Mar 2024 22:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+uGmTe6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48C5F112653;
 Mon,  4 Mar 2024 22:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709590326; x=1741126326;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kW1LlEUB8vGpEms5GIPzbtImLTFMsKGcHjzoB//mR8A=;
 b=R+uGmTe6b7mN5PaJ44WncvL5Oq9/PGVLVkRPww/WsnVkGTDnAF3lxLR+
 nWP4lwc1Y90G/lfz7qc7Mw/3OVSqF6kbo5hhpCuLQDgP+yjH3eWwTssdQ
 ukzLd9unDuytBkzTEJGqt6xX3zNbo91A+4TKiAGXJC71I968h2a/q8vAj
 ZMEcsH9A3b/tddGo6iY4D2vMpc1SDvExA8OYqX24pjF3bls4PVwIcjlXl
 zwW+tDSnkMyFL+zZTSH2OR+KOvjPPyaxmF3KxQeA8Jj3dJxc64lZbJr1w
 RfxtHxhGEvCZfS527TbNqK79UO3UOkMgqqUOxd55S0Y8fc4jGQdfonEm5 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="29535953"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="29535953"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 14:11:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9054163"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 14:11:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 14:11:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 14:11:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 14:11:43 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 14:11:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ADNbPorUE/SLTloc/ljlk/L/puM5IaovT/57Q2ulTUep9il1HbQPR7nFWHh5FTQlqS38aeOQXqadRZF582q01AYwWtaLLUXe1TyCq1BlDhBZjMGMzDEdVo4dSoowzWprZogWByXPOH8w27yfLkqszZCHFdxHC7yVPnqlPmiKQXW/Y0hQEh17VH1pir382N4+T73iZ6H7jFwCWvi6bFjb/LjYuCijCvLZF4zidh9zP9o6EeRO9snrNoUk1sWLe9F5oZpciZ+ULINgffMWE6GAsACpwSXOebeqOeeH4WqNwf5y/1w+IqG9unKzVu1KU+ISFvULr2FVR5U9xBmHDHtukQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TkxsGohuSHtzj51Ulbbn1b1zY1kkhqcX+4YgOM8mA5c=;
 b=XhYFJDQOLmmsEbw7guTKTZrCzhkqpnEHl5jFdAv/jCN2wxa+6MAy98hIw+BCf/vBKLcdt61KUr1yRIdFam9bRk3iOsMTJzPhihX6XO2IxH7j8SxmVXhU8ebeoPJMYMYyO/hVHZinKf/HKdWSUUR1z+7OLVZ8lw3Z3o8S7omtDqLOnRbC/j2VVoXuxBRlgnYl5ARovvffm+8sKOkFSDP9UIzQ9MBJ87u3ggle2p87YoaCBhG0jQrOkSPGPgXJwGxnQEe5oYo40cQb3eOTxre9jF+TLblA7AS6GzgOdxVaLvBlhlJd4Pralg3D2emGycfURARdafuQmsBQSbVtH4Jmew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 22:11:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 22:11:40 +0000
Date: Mon, 4 Mar 2024 14:11:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 4/8] drm/i915: Extract
 intel_dbuf_mdclk_cdclk_ratio_update()
Message-ID: <20240304221137.GU5347@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-5-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-5-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0045.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::20) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a056bbf-d562-4bc2-1976-08dc3c98115f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OhXX+srlV4thPJDQkkW53T7qRayUNvhRM7v2LvQZOOJ0t0qbkKjsBSBpsWnr7ujXQhdNpQGiLtfTkSigYPN+3Jw+RaKYjFTn3ZCnpY/44WYyU6EVPAbGLvcr9wJTpxovFx9+bEraNbrhD/hefy8z4P42NbeBgAu9GWIIkNHCfCcqQqmGh11dm7gePE4edpB0jZa61n5l2LtGDF5Pjkdv+nVmjALjU8N+TuuyC+IAl+N1l2Lz26DCDl3PkX6C1IQ+RwwQV3lBtxhDopC3YJtkHrW6ck3fVhp2KMIUr7J8rRSHsmUf6AYgHIcfVqk/RoW0yPCa+LKHYS2yJJDugkMgu7dhnZ32oAIfHzCZp4LZJiE3H+NHWPbAb0q1lldfoeeIAmiGq03gaWzVNTITunCWShaEnz1FBWBsrUdzM1gZPt65a8xr9tICaWlDFDlrcIrFtndttcIi9N8k3FeHXQo8NyNI8NdC59DccA5lpSsLyFKe6znN9nO9uJRBJQ4gP1RQAXvWMn7oky0K9/iYBWBItF9chGX/wrqK4JSKHIeaJjHhxJllV5NE/Mm2oQK9Br7Pbxj5WnoWnZmHyqW7yo+PcG/kpnPu605G40Abfo0h/4DQpoo45zMKoFRopTDLO9BO8lEYUHFdUeKR9ZWk8OOK1KqTjkRCF0t+ECsBPYURss0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rBrv/hcRY+1uxUq3xhFVlwqy0dcHbg83+1H3VQ0uo9eSjZxIxNKe081KGhVk?=
 =?us-ascii?Q?yNEcCg+YZ0UeYklWjv/Z9qUHP8AL6+T0OvTDVIuIdOnCkB1vMGqFwPeCBgdr?=
 =?us-ascii?Q?GH6h5agU4oJrtEZlx5zjrtO2CXUItYjtml2UbEQLlqX7ryyV15IHNAn1F0H3?=
 =?us-ascii?Q?X25oLhwrjkrxK2ZCAdeUVDEUF6aaOp+qFhoJRsy8txP58hkvQHvuUrYOU8Vt?=
 =?us-ascii?Q?9pm28Brcrxc0A/hTXJeeFdxZELkG2nLrshRKxMMT2OGSreYjgnohqZh+LitG?=
 =?us-ascii?Q?hNxxvHkTB8BHL4aGca2ntc7nafY2dN1zuFBCwwexJGxB5JEvPSkkxXqweSzf?=
 =?us-ascii?Q?cg8wIwrDQ8bxrQrUryfZWQK5wvKnXgjvAt+txTF+qXygxC6riQefVDLNbP+g?=
 =?us-ascii?Q?CxAeJURK+8tgd+8mcKOHOeH3EqmBxadH9sOHPXwIJ6k5cfFWitkh3AO3DFxA?=
 =?us-ascii?Q?u5G5Z/2JPjB3NcAbFRxqTi6oaQi8S3X2SlU71XkHCmMvWlvKKKGoYnD2tVUb?=
 =?us-ascii?Q?HJtQ2Fhoat3ASI97gTWjioIC5TPHdVY8elSLAQ0hR20RKOW9MDDp+6h4sHR0?=
 =?us-ascii?Q?eg1ZBukMsBXjUWKQ9rqIOrhLlt4z04OExQt37wBNRz7CjgI9GmVzzJy8/pst?=
 =?us-ascii?Q?HTcwTrvhkInUFYPYW/IL8IVVlNGXnr6vVv2ufkm2mVFTcxWGDTNIot9lvvjL?=
 =?us-ascii?Q?+jZLkmSnTDM2J3Tysh0PP38kQkdMQY9NWI1PnTpgFDmAwPEMDHOyhpy176JF?=
 =?us-ascii?Q?0A0+MtWdKCjZdKK6g8sawWFXJvSXE0Tw3cuESmaLBX2jMdm3I+KVUvjLZMYy?=
 =?us-ascii?Q?a1NIh9gsYMM5ITzsMDg4PNYhqzLaeSnRVGvBT+KsEhkS6ckjFdqMwK/i7iBW?=
 =?us-ascii?Q?Cd4idpA6dui1kTh2m49mvdmwbqVPu97J3MPoY/v/bHpSQatld3qAE5ENn86x?=
 =?us-ascii?Q?VVKq0f+QnEFhwMp1yOWOvJIWZsX4iQgRzI+2PL4zrkvy38CGllzzKWBfu/OG?=
 =?us-ascii?Q?8a8UhEXWTUzV5D6WB2pnwcys9LL+8QOoJC9rSqU+WQG+T3aIdNeTivMU5fJn?=
 =?us-ascii?Q?TV/dF/SZQB03s7gGFUA3WlVCDZbEUgQYWNs9EoK6DBrKFAAxMdfnxHT5Q84F?=
 =?us-ascii?Q?OG5gLq2MuU97LxY1NBmnWhKWEgYhJkuRVcP5hcgwEtKMSdkoKWu9dcAwGfGR?=
 =?us-ascii?Q?oMPHOHYusHIpq5oQIAcs4XuAj1VBbANl93Cc0LtjKNg/dtSvmyuaCb3eYkmL?=
 =?us-ascii?Q?vI9HUy5ZRJ6OlMWrc0mL6ayAieYe4qIV5aws2237iPCp5rHkqRjSTs+2vxRM?=
 =?us-ascii?Q?sw6Dq8IPOr60bLqhEOl8GjL7eTCRfgzspGwtomyVhEmwciX73vZyCeRKa3C7?=
 =?us-ascii?Q?GaOR1R5USHbkSEreL9Uje7GpbYaZSP+JBUGf1/OsEspdpiNu1oyM7K1ipyBP?=
 =?us-ascii?Q?5vbJdV1UYCOaiArQBebZ2CV70bDaPiaMDN3nF8cwuSuiAqE5TPFxoZFkhiVG?=
 =?us-ascii?Q?jDil3I5fyZYxP+rVT2/PGFjLfL/g6XFlwl+uEO938pqmrZ0kvNOV02O0tWGF?=
 =?us-ascii?Q?Nd02BKT1Y7na2z2IgND11JefJlLIX2gSgf9bQUZPEpqluFlCWCupUbQaULkg?=
 =?us-ascii?Q?QQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a056bbf-d562-4bc2-1976-08dc3c98115f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 22:11:40.5043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lF1+RXAhJ2a143Te5uCWBx1fAIhygDuMecFfuHzML8Th68GQf5Zv7nbJ6b5P9wgJXxmaAVs6fZl+O/k71KEK/pIEcbI1EkLRZJNtDoJQh44=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
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

On Mon, Mar 04, 2024 at 03:30:23PM -0300, Gustavo Sousa wrote:
> As of Xe2LPD, it is now possible to select the source of the MDCLK
> as either the CD2XCLK or the CDCLK PLL.
> 
> Previous display IPs were hardcoded to use the CD2XCLK. For those, the
> ratio between MDCLK and CDCLK remained constant, namely 2. For Xe2LPD,
> when we select the CDCLK PLL as the source, the ratio will vary
> according to the squashing configuration (since the cd2x divisor is
> fixed for all supported configurations).
> 
> To help the transition to supporting changes in the ratio, extract the
> function intel_dbuf_mdclk_cdclk_ratio_update() from the existing logic
> and call it using 2 as hardcoded ratio. Upcoming changes will use that
> function for updates in the ratio due to CDCLK changes.
> 
> Bspec: 50057, 69445, 49213, 68868
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 30 +++++++++++++-------
>  1 file changed, 19 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c6b9be80d83c..d9e49cd60d3a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3530,6 +3530,21 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> +static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
> +						u8 ratio,
> +						bool joined_mbus)
> +{
> +	enum dbuf_slice slice;
> +
> +	if (joined_mbus)
> +		ratio *= 2;
> +
> +	for_each_dbuf_slice(i915, slice)
> +		intel_de_rmw(i915, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> +}
> +
>  /*
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
> @@ -3537,8 +3552,7 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>  static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -	u32 mbus_ctl, dbuf_min_tracker_val;
> -	enum dbuf_slice slice;
> +	u32 mbus_ctl;
>  	const struct intel_dbuf_state *dbuf_state =
>  		intel_atomic_get_new_dbuf_state(state);
>  
> @@ -3549,24 +3563,18 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  	 * TODO: Implement vblank synchronized MBUS joining changes.
>  	 * Must be properly coordinated with dbuf reprogramming.
>  	 */
> -	if (dbuf_state->joined_mbus) {
> +	if (dbuf_state->joined_mbus)
>  		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>  			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
> -	} else {
> +	else
>  		mbus_ctl = MBUS_HASHING_MODE_2x2 |
>  			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
> -	}
>  
>  	intel_de_rmw(i915, MBUS_CTL,
>  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>  
> -	for_each_dbuf_slice(i915, slice)
> -		intel_de_rmw(i915, DBUF_CTL_S(slice),
> -			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> -			     dbuf_min_tracker_val);
> +	intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined_mbus);
>  }
>  
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> -- 
> 2.44.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
