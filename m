Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63D663051
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 20:27:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3210710E46E;
	Mon,  9 Jan 2023 19:27:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD19010E46E
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 19:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673292444; x=1704828444;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lxTzeGWQ3MuOLe1rH3UOBlVD+0dzbllMdp21WkbxdtY=;
 b=kpeS1MVnnq3SVLXdvRfq/PGaIV6RfOpyddAXt9S3r9SNJfTo1cU5OMTK
 XL+qweaVYIu0eFeJ4Nuu0oCkjLK0QNffgR4BC7yEkThdn4hY0NJPmt7sY
 Ve3tjmxYI9gW/CJ2sid8phPg5V1xnCVqBUlZqmgTmYF+Bm009DO3iPaY5
 wIxaX5Iz6cvedJg4+UF3/tsAqDZ3bshAAKipZZUeRYXsHNKUqbykhAW2G
 ZxYpin8nrRzcH/MqfIwBFN7OZhEO6mM0P9pex2OUWM32+Y0MUhBtEUmhK
 5jafh3rAxxc8gkTlgn7KgpE3voFtDowCmFViFLY8c2tvR9GhVz8NE+tMB Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="409209169"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="409209169"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 11:27:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="780796437"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="780796437"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 09 Jan 2023 11:27:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 11:27:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 11:27:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 11:27:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 11:27:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TYuQlIzT4snYeK98EY+T98HSlWI9w+nOXGiQXj6ky4k1Wjp7Dq7usurBMytAnxE82eXEhv2q57MALrB+J1egajCdn5KQmL86o/wtDVV8Gz+tvnBMB/Fnb3dlbwkJfa+KHIt8ZTj/NP/fg33H+p6uGZ+DYrxvQMkMsaOy0lSo5mRMh3y5uPk0L5SthW5gbusTGP9zk9/m8E9jSuNjdXAqvNyjkuTw5RHHoBd6FTrQ2mcmvloua6d/iuV0X7EwUN4GLpi8HdmQnzG0FTADxPeQrmwu2vfe+p+XecEek4S/tCw0vMbw2FvsDfauwwdlNODddDkBsnHIFbncsMxMfWDzwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oZpkRsLoAiWjtZq+9kJFNwM65TvYPXONMCGWlHg4xuU=;
 b=cygRDLBgCKXxx2/+XHtGiEqB+Wr/R/wFZkTC3kyducKtMYfuOlf3or6HvdOx08fzc/M84IBwfpTd8J4Hap4vwJkYjpfmmYCKokMVXZ5nuSUCP4rysNLcgpdeza3KSi+BchJQK70IuAQIoop4TR2vNKXDK0Ib0sk6dalTL5vlDQNOZedL9nRAlERf8aNc7JJz75iIjnb0PS9gEc+ae3ruAvxRij3rOyHQ9Wv9GN8j927nFq/j5zjUuJqnvzqd4Te0JZl4F8qlcOdCoRPU9Pte+05yFW5FF6J/nJyy7QC3e8WWAXiPtlezP+ojvnmYhtfbggJsQXqxcqTXKxW15EiN6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB5616.namprd11.prod.outlook.com (2603:10b6:a03:3aa::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 19:27:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 19:27:20 +0000
Date: Mon, 9 Jan 2023 14:27:15 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7xqk3HKlq/50SSD@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-9-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-9-andrzej.hajda@intel.com>
X-ClientProxiedBy: SJ0P220CA0026.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB5616:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c9c33b5-3006-4054-ebb3-08daf2778612
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WbnptaCpfHmJ5CsdmNsqA4ELPsz/NR67NfNexqMJpMYPtbukW3b1wxYuqpXeG5l6TYwQUFIdVt79uPFXxz7OSZ/lfLjLXyspLzu8gddc4HR8FxSKLcewrGHBW3zlRC+mS0JXORL4HLBDuv+u8bzN4tBITSHn/AN/9uBD3T97+E6tTjB0jF3wp53ie8TzinkeZKDVC9ksb9Ug1KOVYxre21LbMKqkUTlvPo0T5Vupcm0Wr/9r/p8jyKHPjh/vQ4D+u2Ejr+WecGOZM6iLY0GcK/Urzcguy78EPzmVpgvsmKbAlQCEuPt0kuHUo0bHjWS41Uat45iAo20pEq7px6tNVg/Blq0DU/PFVrIT211Z6ByU5vHftmNlsJ4Hq3X4Ptj0znyQBj+hGip8wb6pYIBJPh2EOeTsLeiGw38AqgbFEkyNY0WfBfHZ0v+0x0k4r0uBDjWHf+L3XhAnuWX4awJ+QmowSf+dKlLaMfHvQW7ZvFozGDaHuMl8Nk0havbGT1tToBbVm0Dftu8h26FE/eMCsRkwrKzFk+eg23WeoXR3f4vh5L3YRi94hwopqAxh4eJTQYOkp5UJVv68x11nXtLIBMbCZpsTRal/k6+Tl6JV4AoDNd9czwm2iul4MoAPBPYMcgUfIxvVkzcvtLsuQXtQ4Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(366004)(376002)(39860400002)(136003)(451199015)(6506007)(82960400001)(38100700002)(6666004)(2906002)(478600001)(6486002)(2616005)(26005)(6512007)(186003)(316002)(5660300002)(44832011)(83380400001)(8936002)(6862004)(36756003)(37006003)(86362001)(41300700001)(8676002)(6636002)(54906003)(66476007)(66556008)(66946007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PItnoUlorc3+9wlqIVeV07RYW1XkAVMBb0Q1SK1aAATzSrzpLN6P6UscJIwT?=
 =?us-ascii?Q?QfhjGdsaqMle7xCm/pP1xqhQsRFErkECcvBkoNF+k+SBeTqPqCeqOyQ01E2R?=
 =?us-ascii?Q?N/ElSpW7ni9zswZ3q22MECPs125ifqkLNM5GLCIXuD04zFXSgTYH3s8oKlS2?=
 =?us-ascii?Q?sVa+LfKYR2nnfJeyNTFXSrMeQgNK1b2ogdtGKjtautreFep8T+6rIZ7xm9Y6?=
 =?us-ascii?Q?wQz64aFk/fXMxSeh1SvsB/dMgI6sljCeIyqqw6kMeUHEo1aE/0sRt8odF3hm?=
 =?us-ascii?Q?GBjo7vue/KdOyWRb5hZtaQIMcy03/wcoishSQmuA62xMvyDs4T5LjtHeYERa?=
 =?us-ascii?Q?wSK6d+rXVLcIdzkCNlBGja2cT6Zhz9rP6zPIQbiLp0sjtPt/m/TedONrGkMT?=
 =?us-ascii?Q?OajyoSSy3GIPmODpDNwU0UbCn0uUfT/cbNiPNkjEM+OQ35aWP0topdg1mNPd?=
 =?us-ascii?Q?k1bQ8eRmSU0ChR00tit8FOu70OA82UtUP1yQkuPJpu+TNDlAALwhzCEgILOb?=
 =?us-ascii?Q?5WbIOwYsSX2Y5LWS+KScpRuU1QkMrlCoWQWuWQyG6YciJgVxtFGAHKM2E6cQ?=
 =?us-ascii?Q?KqjNshH9faXErHRWH2RZmwa2Bcc8kzZ9l2ezO8PLpnHcoZGbRaKOTpJ/dfOJ?=
 =?us-ascii?Q?E5NKJrUKwuygPYVmS/HPBBjcyMoLCDfmYJ8ceXjf8a8IEVZmlmvv0bT62kGc?=
 =?us-ascii?Q?TwNACGhdYXBvz3KaJPOhiaJ0wK1Ce+7CHVwA4AYC42MrRZ4/blKBsMtgV4ti?=
 =?us-ascii?Q?1+FZlgBgRFRdgCfamnoKz/HrQLYpxXP80zir7AG+KoiX2C5HwrKEtVoRFA+b?=
 =?us-ascii?Q?y0vGTeMQJM2AAu68tmgY5XqGBc/9LrG5z3JkRRILPJjZjh0ZhYXu9CGY+XQQ?=
 =?us-ascii?Q?wmE4zHoRyFPkp3mWdAaCv430TKisl/OmEtCxRwhB17GZN5V8P/ukhMn/dAvy?=
 =?us-ascii?Q?vlUZLDl9JdGYhC3x4L/bEC+1x8pGAsxaZqG6Rl2QOyFBm26AZ7A0fsfRZ/6z?=
 =?us-ascii?Q?9FiUUXFJDQSVhkMPnuHD2ohSAT4kEIOVqIW32wMFstPsShA7wvonaMYHJaIv?=
 =?us-ascii?Q?MGuUJQeAEeJlrF8d1/R/X5ITFt5mA78eIWAtNTdhtnB+U1n38517+6UqWnsX?=
 =?us-ascii?Q?fDNgR9Sqbty1UZ4qohDgWbKQpzflExc0AIqwgOEJPkC0O8vPJZggHNkxy4kf?=
 =?us-ascii?Q?WlDWZlkZHUqZ2v24C/UA05OAyavucXnYotA0omfnDjAnDaw/17nYQ4lU+dJz?=
 =?us-ascii?Q?JyfOdvL4dLa50Ut2Fg9nv+VKMR+y3X0dX+HtnPUAwo1zdhk6rs7jnX4/o9Cj?=
 =?us-ascii?Q?bMy0FpZDtlCyxqroRM5++/ug3+6xZ0SgqLrwi3iFg3TUuID6dUfkBd9ozWtm?=
 =?us-ascii?Q?U7dzWzPQMIMNt9+N6M11mEuPIPxYV5JUOlo9ZCjsoLAgsJt3RKaZ45c/x80D?=
 =?us-ascii?Q?ua/O1T1ggaQF69z1YUyMslzefx9AyEzoYMNxdSGv30xWEhjnI6daGJUitLJ5?=
 =?us-ascii?Q?0A7M5aOYmMW6Jok7mA+H6WZ50eCXU8lMOqQDR0KfVtZk6DsSZLWV2PIWa48y?=
 =?us-ascii?Q?04Tu2eg39dkFvdB5jMglhpoi+8t590XJ+gP7Jwmf9GkmPXI2c2dbQ2jEzSdv?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c9c33b5-3006-4054-ebb3-08daf2778612
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2023 19:27:19.8745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WEmyRv6+y9W19+U1m0+cFMRhmgcTRzoyrxtGWMr3nJ1XgLDrpIHZivaWXQEd9Ce3XIUhE6iUm/Gebf9IhA1Jug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5616
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915/display/misc: use
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

On Thu, Jan 05, 2023 at 02:10:46PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c     | 12 ++++--------
>  drivers/gpu/drm/i915/display/intel_drrs.c | 12 +++---------
>  drivers/gpu/drm/i915/display/intel_dvo.c  |  7 ++-----
>  drivers/gpu/drm/i915/display/intel_lvds.c | 12 ++++--------
>  drivers/gpu/drm/i915/display/intel_tv.c   | 18 +++++-------------
>  5 files changed, 18 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 24ef36ec2d3d3c..9629b174ec5d2c 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -136,16 +136,12 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
>  
>  		intel_dp->DP |= DP_PIPE_SEL_IVB(crtc->pipe);
>  	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
> -		u32 trans_dp;
> -
>  		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
>  
> -		trans_dp = intel_de_read(dev_priv, TRANS_DP_CTL(crtc->pipe));
> -		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
> -			trans_dp |= TRANS_DP_ENH_FRAMING;
> -		else
> -			trans_dp &= ~TRANS_DP_ENH_FRAMING;
> -		intel_de_write(dev_priv, TRANS_DP_CTL(crtc->pipe), trans_dp);
> +		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
> +			     TRANS_DP_ENH_FRAMING,
> +			     drm_dp_enhanced_frame_cap(intel_dp->dpcd) ?
> +			     TRANS_DP_ENH_FRAMING : 0);
>  	} else {
>  		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
>  			intel_dp->DP |= DP_COLOR_RANGE_16_235;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 5b9e44443814e9..a52974f5f66042 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -68,21 +68,15 @@ intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc->drrs.cpu_transcoder;
> -	u32 val, bit;
> +	u32 bit;
>  
>  	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		bit = PIPECONF_REFRESH_RATE_ALT_VLV;
>  	else
>  		bit = PIPECONF_REFRESH_RATE_ALT_ILK;
>  
> -	val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
> -
> -	if (refresh_rate == DRRS_REFRESH_RATE_LOW)
> -		val |= bit;
> -	else
> -		val &= ~bit;
> -
> -	intel_de_write(dev_priv, PIPECONF(cpu_transcoder), val);
> +	intel_de_rmw(dev_priv, PIPECONF(cpu_transcoder),
> +		     bit, refresh_rate == DRRS_REFRESH_RATE_LOW ? bit : 0);
>  }
>  
>  static void
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
> index 4aeae0f3ac9172..77d413781020de 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -444,11 +444,8 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
>  	 * the clock enabled before we attempt to initialize
>  	 * the device.
>  	 */
> -	for_each_pipe(dev_priv, pipe) {
> -		dpll[pipe] = intel_de_read(dev_priv, DPLL(pipe));
> -		intel_de_write(dev_priv, DPLL(pipe),
> -			       dpll[pipe] | DPLL_DVO_2X_MODE);
> -	}
> +	for_each_pipe(dev_priv, pipe)
> +		dpll[pipe] = intel_de_rmw(dev_priv, DPLL(pipe), 0, DPLL_DVO_2X_MODE);
>  
>  	ret = dvo->dev_ops->init(&intel_dvo->dev, i2c);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index aecec992cd0d2d..e8f47b7ef87649 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -316,11 +316,9 @@ static void intel_enable_lvds(struct intel_atomic_state *state,
>  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
> -	intel_de_write(dev_priv, lvds_encoder->reg,
> -		       intel_de_read(dev_priv, lvds_encoder->reg) | LVDS_PORT_EN);
> +	intel_de_rmw(dev_priv, lvds_encoder->reg, 0, LVDS_PORT_EN);
>  
> -	intel_de_write(dev_priv, PP_CONTROL(0),
> -		       intel_de_read(dev_priv, PP_CONTROL(0)) | PANEL_POWER_ON);
> +	intel_de_rmw(dev_priv, PP_CONTROL(0), 0, PANEL_POWER_ON);
>  	intel_de_posting_read(dev_priv, lvds_encoder->reg);
>  
>  	if (intel_de_wait_for_set(dev_priv, PP_STATUS(0), PP_ON, 5000))
> @@ -338,14 +336,12 @@ static void intel_disable_lvds(struct intel_atomic_state *state,
>  	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> -	intel_de_write(dev_priv, PP_CONTROL(0),
> -		       intel_de_read(dev_priv, PP_CONTROL(0)) & ~PANEL_POWER_ON);
> +	intel_de_rmw(dev_priv, PP_CONTROL(0), PANEL_POWER_ON, 0);
>  	if (intel_de_wait_for_clear(dev_priv, PP_STATUS(0), PP_ON, 1000))
>  		drm_err(&dev_priv->drm,
>  			"timed out waiting for panel to power off\n");
>  
> -	intel_de_write(dev_priv, lvds_encoder->reg,
> -		       intel_de_read(dev_priv, lvds_encoder->reg) & ~LVDS_PORT_EN);
> +	intel_de_rmw(dev_priv, lvds_encoder->reg, LVDS_PORT_EN, 0);
>  	intel_de_posting_read(dev_priv, lvds_encoder->reg);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
> index b986bf075889a1..e1b0034db9be66 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -930,8 +930,7 @@ intel_enable_tv(struct intel_atomic_state *state,
>  	/* Prevents vblank waits from timing out in intel_tv_detect_type() */
>  	intel_crtc_wait_for_next_vblank(to_intel_crtc(pipe_config->uapi.crtc));
>  
> -	intel_de_write(dev_priv, TV_CTL,
> -		       intel_de_read(dev_priv, TV_CTL) | TV_ENC_ENABLE);
> +	intel_de_rmw(dev_priv, TV_CTL, 0, TV_ENC_ENABLE);
>  }
>  
>  static void
> @@ -943,8 +942,7 @@ intel_disable_tv(struct intel_atomic_state *state,
>  	struct drm_device *dev = encoder->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  
> -	intel_de_write(dev_priv, TV_CTL,
> -		       intel_de_read(dev_priv, TV_CTL) & ~TV_ENC_ENABLE);
> +	intel_de_rmw(dev_priv, TV_CTL, TV_ENC_ENABLE, 0);
>  }
>  
>  static const struct tv_mode *intel_tv_mode_find(const struct drm_connector_state *conn_state)
> @@ -1945,15 +1943,9 @@ intel_tv_init(struct drm_i915_private *dev_priv)
>  	 * Sanity check the TV output by checking to see if the
>  	 * DAC register holds a value
>  	 */
> -	save_tv_dac = intel_de_read(dev_priv, TV_DAC);
> -
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac | TVDAC_STATE_CHG_EN);
> -	tv_dac_on = intel_de_read(dev_priv, TV_DAC);
> -
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> -	tv_dac_off = intel_de_read(dev_priv, TV_DAC);
> -
> -	intel_de_write(dev_priv, TV_DAC, save_tv_dac);
> +	save_tv_dac = intel_de_rmw(dev_priv, TV_DAC, 0, TVDAC_STATE_CHG_EN);
> +	tv_dac_on = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac & ~TVDAC_STATE_CHG_EN);
> +	tv_dac_off = intel_de_rmw(dev_priv, TV_DAC, ~0, save_tv_dac);

this chunck got me really confused... you are now doing a lot more reads then before.
I'd say the previous approach is better and more readable than the new one...

>  
>  	/*
>  	 * If the register does not hold the state change enable
> -- 
> 2.34.1
> 
