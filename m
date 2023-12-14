Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C98E6813627
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 17:26:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0002910E1BC;
	Thu, 14 Dec 2023 16:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1EB610E1BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 16:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702571179; x=1734107179;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=JlyMda1gjkbKkBoOrCq6PhGVM9IK/wH2O4qVcrbLVs0=;
 b=DXV0+qfSmojzD7YbMjndB9rbxEm5sIOqzHT9enD2H2AcFoCdYNptC4fC
 8VNo50LkyUIJk+TPrR+i5iJsETmtfQyPvZnj1czpCXOzg4ToJgmAp5ueP
 cT/j9DdD0YnFJJOCES2ZDIpsvxYD+47c4yZFr39mVxRveX3N87IA5JTLA
 junccgEzDpbblUv7Eaf/6zUHUbxKI4rAc3nRVBy5uFgwj7kThXVT4OmiC
 0Ry5RG7g+bqYHXI6O+TnU4ZXLqh1G2gs/Zozq9eAqkYE4GucpVZb+/Cb4
 6DVHPlTJj6gpWaYCE7X5n+zkPjeq9FGBX6qrcWs7sfwHMy8WnrdjU0Ucf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="374649077"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="374649077"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 08:26:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="947631778"
X-IronPort-AV: E=Sophos;i="6.04,276,1695711600"; d="scan'208";a="947631778"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 08:26:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 08:26:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 08:26:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 08:26:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kVn4vv9pIuZMmeCE5JQjYKVAUjpAkuKntzuyFFXGIxasYAEuQ8Pq7umEKuzAZ4Eb0yC08GLpOJq3UXgjjJbUM1Q0hBihDx3zhvOvA5uQ7CL9C9OwXMA+yDJStF0KzSyT5u6E3X1MH3u79iqYaeydkPcMTMX6l8HiObUfNWosU9/N3UC8VdzvH/EMyH2AXYBjahfL2bVtSdIxlhGK61RSiyeLk8iBI5ucbYhwYJl7GEtKiLfzbhEA6/gEOR8EuTAw66EmI0I4+8qEqAAkGNI7Eos2Z0Wh7Pp1CWiS4Fbr2eYNn2S0oTkM9IUvcKbhDA/bOUwM1szHyc2eT3EKUPEqBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YCJK5UXQb4toFrKYVDIOxABSXvowRL90D1/+2DEO8VQ=;
 b=fRrmsqxOHZM8rWjrK2FapjSbp73W0a8VgV8lcjt+71NKzGrdGwzFDBL/oZ4cTjJ9DL68S0BxFcRdrLr8cx0w4XwnxDc9DOl/ntcSH7zWRZC8CztYXmFWkA/mP2C62zsasdCYJhksTYYjAcTyvoZOnUnpGFcsHOM1Xo71WLntSpPKHgYpRjZ2fELxKOYo0d2vx4QATFpgxrFK4QPKf2kJp4LD8U0CwrHnqwO4+vELXeq5L7SBcOgQEOQ44sAx37VupU5yaOEmt9XiKlX2KfpPNgsyR/LvvQkpSQwGom3fJJ7+PcKdy1cDtI8Sl+zUgzD2q7KozbyNs5jhQqR1MMeJWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8442.namprd11.prod.outlook.com (2603:10b6:610:1ae::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 16:26:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 16:26:11 +0000
Date: Thu, 14 Dec 2023 11:26:07 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/7] drm/i915/display: Remove intel_crtc_state->psr_vsc
Message-ID: <ZXssn5mhi52nx5mc@intel.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231214114838.1113648-2-jouni.hogander@intel.com>
X-ClientProxiedBy: BY3PR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:a03:217::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fd78fe4-0971-4b27-8732-08dbfcc1624d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L7PERdgg5MTKh8Q5Xht59FjqKShvMixcLsCRqUXFlqWNN9QNiW3b4ooaU6eMUKKfe3RF8wMqmbkVgbS7qznNzq/oM6vCozuZ8M5tOGkn7BU4LSMpx7vzCOeBAcFQQ5aiMgoIme6I75NYNABz7Vd+6z+A4aCDKgnqgvV9cLqATw+3F2mTDDvI+GlJljo0lPKBbarFO0fqlCNQvJcL4y/5k27K9wlb+vkWo/lXU+sFfuZQAMl6yTsDronPVTQiDVuys63IIy6PGuWLisQnvvWPOUVsUosJ71emzhpbV/01WqHmFCze1qUHuSGIjw+xFJRAYH9wJPStRNEuit6FEIekpUIkycnEt+pkV89qKiPHQx6NSvvQ/QZQ1Pk70I95zg9j2yj/3ZnBehRcGfaF1RL14VseWTOJ0xH9jPGgFM8yNus9OFM/wRklcVBMK/8qUe4IDKZrZV9CV8E6iGQiaHj/C4nqnb4Q6DRuy7Nkv9iZgARN0/qMehkwu2jxFdGLLR88akePaf+sgEbJju1mm8ivT1QI3/km5DjRb/DasDUOmmpdHrToz6qxof8F7sieAyJB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(376002)(136003)(39860400002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(44832011)(478600001)(5660300002)(6666004)(82960400001)(2906002)(6512007)(6486002)(6506007)(26005)(2616005)(86362001)(36756003)(6636002)(37006003)(316002)(66556008)(6862004)(66476007)(4326008)(66946007)(8676002)(8936002)(66574015)(83380400001)(41300700001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?vIZtX89oBqKWbjeNj8dEaUqMdSilOKMrNLSTGT/cy/D/NBR9ulLGU+2x3/?=
 =?iso-8859-1?Q?AClqhBYNdu4ucYs/WyygmV5Bp7fU5Bdi9fObEXt6lxx1fZEzCgRLL5iKAk?=
 =?iso-8859-1?Q?hnikY2t+zHrUAd5/8BxE+YJWGxdiqi97eHv47kZusWixIkckG2S2qRN4lF?=
 =?iso-8859-1?Q?8Jci63zvKMsvCaE7kVedkQUHS72fxtQpfUX+ZVfWABtyrqVSNBFkmDhnFp?=
 =?iso-8859-1?Q?EqY743hOG736Y/o/yHAdnqeezEFHxnTjejuZleEqTW5RfRguTZFzhNDnQb?=
 =?iso-8859-1?Q?Jq5h4NyNbHVfj77Lisn7v5dPsntS5PLGPIBnWfI/frjsAWs8cFRs1nGto9?=
 =?iso-8859-1?Q?aLsSL40Pz/ZjK9pppb00hU2BZhSWi/L0IxvTWHRI9WnRrlL/HVNR+pP4YZ?=
 =?iso-8859-1?Q?cm3py+uD1qX8rQpZUeXViwOslcRP4FwwCi3UNbNGoBJeVENRLX6zd5eG0n?=
 =?iso-8859-1?Q?J+fukokGb/iVjWrsRSCn4l1+w5MVoNqTlaRqQGDg4oMWHlXXH9bpuvqo9u?=
 =?iso-8859-1?Q?ViFgFY8CPQb4SNWjWqDox8Or+HugT+jvuwQIXiPp0dRzSCyv3A1FScfes2?=
 =?iso-8859-1?Q?G/5Uq918ckQTfAGEH9sBkVCyVpUBQhfYN3sN736FSJRiHzVu/GSaVzHfq3?=
 =?iso-8859-1?Q?7Y7tNpLZ6ZgCT6zvVzmxU+BFvlpxwP95PUAMTp9jZrkZVNUbyLCzLEadMd?=
 =?iso-8859-1?Q?jQup0qnQ/1+mayTG16x4KQxwaeOOM4xk3MhwWOGoxdXDnVfCBrOX3UPGcX?=
 =?iso-8859-1?Q?wDqkhhKypXcvnZmvm2N1Db6ds/Nr8SqGAvt+zwZY+PTPyZLTEt/nLYvVV+?=
 =?iso-8859-1?Q?B+8UJEdy6Kv2Q/FNftP9FnREFwf/YRgb22WVxDofF6jV3vjzwDRMQQZ2I6?=
 =?iso-8859-1?Q?lXAvr1cH9F9m1ULJfY21mYnVQmm2E4X2qxOhnMpcCkbntZyYomCsSNtEaB?=
 =?iso-8859-1?Q?Eds1FzC65HKdTSECGmCN+DY/Pq55dvYA6PXrdqBhM7Q9faY5aAX7BdTzT+?=
 =?iso-8859-1?Q?XXxcE1ZQATvpXkMzhBdb/yC6OqsAaHQdtfFM7NulmN8+TDaF9pTr0wXoMj?=
 =?iso-8859-1?Q?2QvU39Ld5oetRSn1zASjU5AR8Hx84RzjY/JAV+Xy1VyzTvdSlbpvb0tA7Y?=
 =?iso-8859-1?Q?9Q+OOorC5LncQbtI9E1MjqjlKwPs8DHDOllDfn5vFOph77sXB7ZssYQcVJ?=
 =?iso-8859-1?Q?Z3L8hyYlj2pL1U0aVBd0LehrV2qWwA0aGY7/O1FPuY5KKBl1HUnH6Fjs/n?=
 =?iso-8859-1?Q?Tct2O9idMiXjEb0dFlanCXmgm/NcBuaKPKI2rXgIuiyPwoAAL8o5OzSLCd?=
 =?iso-8859-1?Q?088lSxivlMa175rvPkHiC+yo1ybVEH802X+55xT1MYghqhPe9nbhKEkDNZ?=
 =?iso-8859-1?Q?lN9dK5IG2SC4e7pxhHQYnsRWqDyytatGXT4tNtIveRtwz2V1X7zHjO1ypQ?=
 =?iso-8859-1?Q?fgihiTocpITXDpmSZpYKKEkTu3oT3LKsP+zlfjb1kRZYl/KhqVl93XwZbJ?=
 =?iso-8859-1?Q?z96LLhQc8PwWr8du43HjPF6bRFRzMVpALqH3LXZ4t123+91ICJnzJFkQc7?=
 =?iso-8859-1?Q?MvPQUq7KheD1t5nxXW71gA7NKpnQHITzGB717DjWZ9qrPNCZ/ggs18cnBp?=
 =?iso-8859-1?Q?j7ZR7piIEvdtGWhugkFiIuH2kiEiMYWMX4/SfUnYe2YITyXaM1b/bwpg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fd78fe4-0971-4b27-8732-08dbfcc1624d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 16:26:11.5705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EdgSYFxYt4I20wVlDTkTrScS6On+5K/dNyfTlhNZ8qdr599k8Cibmx6LO9E7tSIsxzB1FXZnpC2lIUfx7HMpNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8442
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 14, 2023 at 01:48:32PM +0200, Jouni Högander wrote:
> There is no really need to have separate vsc for psr usage. Use
> intel_crtc_state->infoframes.vsc instead.

I was worried that this would mess with the regular dp path,
but then I noticed that that skips on has_psr, so

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 -
>  drivers/gpu/drm/i915/display/intel_psr.c           | 4 ++--
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 341d80c2b9de..a9c9b6edcc25 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1220,7 +1220,6 @@ struct intel_crtc_state {
>  	bool wm_level_disabled;
>  	u32 dc3co_exitline;
>  	u16 su_y_granularity;
> -	struct drm_dp_vsc_sdp psr_vsc;
>  
>  	/*
>  	 * Frequence the dpll for the port should run at. Differs from the
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index b6e2e70e1290..9d5dc3fb6f20 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1380,7 +1380,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_VSC);
>  	intel_dp_compute_psr_vsc_sdp(intel_dp, crtc_state, conn_state,
> -				     &crtc_state->psr_vsc);
> +				     &crtc_state->infoframes.vsc);
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,
> @@ -1652,7 +1652,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&dev_priv->drm, "Enabling PSR%s\n",
>  			    intel_dp->psr.psr2_enabled ? "2" : "1");
>  
> -	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
> +	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->infoframes.vsc);
>  	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
>  	intel_psr_enable_sink(intel_dp);
>  	intel_psr_enable_source(intel_dp, crtc_state);
> -- 
> 2.34.1
> 
