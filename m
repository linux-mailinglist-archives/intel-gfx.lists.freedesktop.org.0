Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1108A55F6
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 17:06:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14F11112657;
	Mon, 15 Apr 2024 15:06:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hu/s+ed1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E09112657;
 Mon, 15 Apr 2024 15:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713193561; x=1744729561;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=viZ4P8OqaPLJ9auneV9VePswOr1BGNpPmH4YXAt53as=;
 b=Hu/s+ed12tNpX9WXb8J3cmWxRpiHTMObsU6xJepJpBXNNQ2Q3Mn23+dV
 MvAhmXftwXuiPiJ9X9iaim/vB3Und2H4U1piW2KudHfoWvArXWK47LUN2
 7d3NXcUtob+Z2OrQaJe3u9F9JEezjKfeY1dP5s0DGFhR4E7G/l0CZR1rW
 JtDIGlVqib4b6sQYNxB6Em1DIU3fMcJVTh0P+fyq95sNqN1ctw0ayUcr9
 x/lNvdS2xqRe2a7O23Rdwcx6aOQa3A9hQlpO/RQphPMfDKeavy/9LCVb/
 8CBffS4FSbPUPICr8juWaA3yKbJOsd7Xdlfm8dwc/nLzQ3bDx3sbAKJY+ Q==;
X-CSE-ConnectionGUID: 4H76eoWBQkeJ6FUIsz2uIg==
X-CSE-MsgGUID: +uVKhpjzQvOw63Anj+0wYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="8459433"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; 
   d="scan'208";a="8459433"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 08:06:00 -0700
X-CSE-ConnectionGUID: Xyl64go6S1CUkFTW1FIV1A==
X-CSE-MsgGUID: rdoEgX9kRyW1OCCqU4JHYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22008794"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 08:05:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 08:05:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 08:05:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 08:05:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UIblmg2tk69p8dVPdunHYP1uaVr6isems68qjuNknMLF0MZGFCIw9marccWN22uZ3YvIYT43j3e7A1MpiU4JTYrio87+JzJyTzeAhSUSI8yFmSmY8Da+/m/R+6ai3p/o+T00Y+r25f/SBOTuep/heR9DG7Gv/lpVEDOiODmClIoievklujI4ENuBu5GecKcMU24v6xSmDEY0IIA7gzGO/2nyGxeVOGaSLP3UQpkBjXyVnM0rgznAarVFQW2Xt16zbA/dOW1TnRQZu6rGIc5SzEXuhu5r4fMLRUkRZ+Qv2oA2gXmF7M45t6TtzKYZCWOn1m7uqDQbBLUEWq5ljDJg4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZGT2VDskJ62FhZ2VY4cWt4ewoSG4gqalXZ0qg/pFCZ8=;
 b=V1QIN/F058NaccKRSedjb8zga0hxl12LMEQEqdh9dpC89tfTPqgBIuT1zIOYXOQC155HfZKZLemp+XE1OmL2+uV0a7TxkCLFN6BGKBVepQFIYG3BtojDz8FSBdnCJiswMx5FQAN6KV8ERvbTum2GRTPul6f3h5uRC7lhHJACkoz0TW0ZOZ7xaOaUf9PMQNlQeWyf+FUluQegkUSCENzuPOXUFHuT6OcH6l5Ak1K8jQY9nW5I61iblZKItP54uV77GEsTXY3GxdNlTxBvFthi/0pdB/zoepVcXyWp3QAxWEmx90aOQQw86oPhvK3e75Vnb5LHUZ5ReTVVEE0++t89uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB5100.namprd11.prod.outlook.com (2603:10b6:806:119::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Mon, 15 Apr
 2024 15:05:56 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 15:05:56 +0000
Date: Mon, 15 Apr 2024 08:05:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Clint Taylor
 <clinton.a.taylor@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 01/21] drm/xe/display: Lane reversal requires writes
 to both context lanes
Message-ID: <20240415150553.GA2659681@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-2-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240415081423.495834-2-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR03CA0351.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB5100:EE_
X-MS-Office365-Filtering-Correlation-Id: 8db3ce78-3df0-4d34-545f-08dc5d5d8cf6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V6w7uxe+DoNzP3gZF/b21e+eLHR3vwAicJIEsTQMH6RXIVotEC6qJYXVwL/4UTyLHJlsUmgZGCkQFy8ac6Ovw2Cob2LhLlWAG4MdL7+huOCM+ny/WzQZflWaqI2f3rnLhIShJD77FIwz9lXr6zh34Kj6oVjKFYcDGLvQfXxYQtA2FOtTYjKaCB0HoTtOY299omEbi8NG7TndfIi+XF7dyPmGXL0FwmYqYWIaBxjcpYpCbWjrtOR+BgvXRsIO9VCW4uzhp4LfPlUI/kj4jVRUcsHYFGgWchDKp26BkpwC1WiB5djn/Yg0Jfkd5yH83bsXqBWrKTJ6t7XErJV81V6O/eykvxoPFFD/EFoe1i8cTBzRPx5nmRVpEQN6sWBWVuVG61JGnUbJyRdgGVTXnAMHq4R1/imK2OwFC4pLt9e9i9S/v0W5ru3xEpFEics4pT5hLJfqr31h7NWH/WM+rPYKGpKMixPxY4YtmH/FM6xFbD2pFuRO/m14UDY02q96TTaexhNWvHdCDcxw8f4TjBJHbXeydU4bfmQmcpw16Lq35gmxreztF3XrKWpDvQzM4gIQ4AO6Mme7RxbBoHAwsM6zE4p5NP+eRymAcS0ZEViDVqfF16Be7Uu+PYu2cel5lOMxy4Z1lnPv30V1B7wgdpGg6IcKKFM1y/byzXpLyktA97U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yjLK4A+BtiTIcTTFkKCn5s2rKziJJHdVOMbup+ARVnBpDLMR9B3VlUhwZEqX?=
 =?us-ascii?Q?YhLM7NcwZ9nZKduqZD33Ro61uq995uCmAKSHdGZ02tJTscQaUe8tFVDNwpbu?=
 =?us-ascii?Q?A5A4K49szRULSCAu94WFOW3SdxH40O2trEeXHTokOLDM5HcqdZrif7DVNNOU?=
 =?us-ascii?Q?Uf+qg9koB1cI7Lfe5rVOz4NzNHcmEWejXGF+FjRFZSIujWIjvH/xHMjYxPT1?=
 =?us-ascii?Q?4Ve1Gukt3bKQJFHgQN+pQkG5c86nuppeE6dPqiqBloniaYjy4qwAzG/L1nzy?=
 =?us-ascii?Q?Reo8ObwKQWV7F8rlH1aCY2gdQoYuDVO09wqVEVW6pB1bZ5zFlWZyCv4qYYI4?=
 =?us-ascii?Q?h0PQT3ChIDA0OeZ3X3Jn3vq6JpjqaTKmg2gey1FH/7ycYD1iji6M6hGI4zCA?=
 =?us-ascii?Q?LuWAK+kUZI4n/FOkTWIq8cSjM3oiDRUF8zmauveWqv9DMrQdiQjMUP2cKPG0?=
 =?us-ascii?Q?aNOQwgsgAsk/iZtm0+ePbUtZ8wfbSFcIj5R+629a0TbMFlWfs9rKIr+jQDkb?=
 =?us-ascii?Q?reop7sjOXlR8AhsI41O7R4XBHkgNt3wM5WSUORbD7Jp5dDCTobSsCg/5tGF3?=
 =?us-ascii?Q?KaQJ8IJN6G9QqcjweIz1shB1bZP0BOtEos4yvR+9aramTaDnTSJgoc20SBc9?=
 =?us-ascii?Q?H2hfxW26Lh2q7eNcj+Kkz9jqUmzypfGGfH5/8wlaKPqEtKqAHCBTtR1Bf8I9?=
 =?us-ascii?Q?J9ztqFAHN0fYZXoKkElGvZ4W+tFGuhh4PAdyIDaDhV3oYpYH3tzOcA11uHp7?=
 =?us-ascii?Q?nzc7/Z/kRo8qx8Runjt1LI2dyR+KzNzBLXkvZ9m87htkQ/Pi904X3OdApyTt?=
 =?us-ascii?Q?EP+LOoYlHGx9BdrQGHiJsowN/t30dTayh+6agxVH/rbDuG5j0F3Ncy6WgWEI?=
 =?us-ascii?Q?T8PUGfZptyMs6lu60lHo1//k4SWmWdQ/1ov0NPPW7a1k5uEo2CywLABM9KxS?=
 =?us-ascii?Q?vPR/PQTupRo8IlblwfK8hKOLm7YLjNy29t3OqZ29CS8ldduGzIuq6AF1BkVr?=
 =?us-ascii?Q?respELG/v194Nz5nUa/wIHxsTYQnZv32veCpT5X264Zw7NlhD840yTpSgen8?=
 =?us-ascii?Q?nPLdsgDxFeIbvkbOeOnTht61fiLqNHyEX6gYNQHohlKx3Otnk+a2bq8IWtX9?=
 =?us-ascii?Q?5pHdk6d2/LF4bEnNlHAy7S3v1rzdX9TlUSgd94KMLzkyEyIPG9w1JRzNh7R0?=
 =?us-ascii?Q?lFbcNqVeQq9SX3k0M/Yk/rx4cRgXXLRrPUNvPGnHefX/vISb0H8HeY61Km5X?=
 =?us-ascii?Q?kd0izraMRnjTWZWO0H44+9KH7dHPwj++viXcELDf+KGGtpNIkXmkCizZQfLf?=
 =?us-ascii?Q?pUAEAKdW/2zkY2qh3ZbCj8B8CLtbE2o2NJcd/yPPfaunrIxV5Rx+iwDgzPt3?=
 =?us-ascii?Q?SRw1hbq40oyDV4hWuJj0+ZZZeB65sJRjwtC7yWNhEMkWyErSoSwG8DjAhyxM?=
 =?us-ascii?Q?iUiNAJunOBuk6Dlw0u0PoKhVn94qKWs4pxzIvmuGKmWI3KEpfFXx2lzqUUSY?=
 =?us-ascii?Q?Jczyo+IsRUj4DOE2R98MCfwbXxpZ/zYo4RDBYkC4Qiljaj+JKRqNZoh5BcNG?=
 =?us-ascii?Q?EGQuAIkIVmUPXHm3dcLmM2WAhHq2ua3YttF38TlhiJgxK7O7CRUW0nXzjwlw?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8db3ce78-3df0-4d34-545f-08dc5d5d8cf6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 15:05:56.0591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sfoQStxQqB2WBQ+lGo7vGu7Jgf3sKk3fcSOZVMnquGPzyQ+MoiL1jgzzhGq9Vg6oTjo1RHmR7VzVGKczPOpd39HWaf2NZHV3BGi6lUKzPkM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5100
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

On Mon, Apr 15, 2024 at 01:44:03PM +0530, Balasubramani Vivekanandan wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> Write both CX0 Lanes for Context Toggle for all except TC pin assignment D.
> 
> Bspec: 64539
> CC: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Does this commit need a Fixes: too?


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a2c4bf33155f..5cf5d9b59708 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2337,7 +2337,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  {
>  	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
>  	bool dp = false;
> -	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
> +	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
>  	u32 clock = crtc_state->port_clock;
>  	bool cntx;
>  	int i;
> @@ -2402,19 +2402,19 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	}
>  
>  	/* 4. Program custom width to match the link protocol */
> -	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_WIDTH,
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
>  		      PHY_C20_CUSTOM_WIDTH_MASK,
>  		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(clock, dp)),
>  		      MB_WRITE_COMMITTED);
>  
>  	/* 5. For DP or 6. For HDMI */
>  	if (dp) {
> -		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
>  			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(clock)),
>  			      MB_WRITE_COMMITTED);
>  	} else {
> -		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
>  			      is_hdmi_frl(clock) ? BIT(7) : 0,
>  			      MB_WRITE_COMMITTED);
> @@ -2428,7 +2428,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	 * 7. Write Vendor specific registers to toggle context setting to load
>  	 * the updated programming toggle context bit
>  	 */
> -	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
>  }
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
