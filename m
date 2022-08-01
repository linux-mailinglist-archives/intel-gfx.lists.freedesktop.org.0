Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6CC58737D
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 23:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C13B10F59A;
	Mon,  1 Aug 2022 21:45:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CC9A12AC0F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 21:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659390330; x=1690926330;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lRR3qQ3ixiunsAmrggTBw4XLgr29uw7ec/1XZ/JuqoQ=;
 b=Laf52Oz5csHv9yjTaBA2y6lPZxlx9eRyvI4dPB1o8mUkeBEuxMnocEqf
 ngunzR3IZJYuHayCKKQ8/+zyaZzyuP5uq1ohUOaT/orsPG0dML5vKZ+D1
 FX5su6YMuXBxfSGCm1WKIscmRxVhWrRan+uS1es4ffZLV/FGiE6pZfZBD
 uwtuf7zq2ghKutzPcjwqzYR00TKBKCngPuOiF8E3WBYyXAj00chmfocCT
 Ci2cBGTgyzkhTVZ9xLu9zCWoXq1PyYSuJkqPUjBvJvbOjBdXBhHpt1Zm8
 yRqqvWqJqOUvU17CgSmtuSKh8jLWZLoZhn0yRfzqYKOxW1AQa3DDaIW7L w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="269639899"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="269639899"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="599081830"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 01 Aug 2022 14:45:29 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 14:45:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 14:45:28 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 14:45:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I/cm7A+qpBlhxRbvIOaxxhi219F6j38/ig+RIdZ9nQjGNZ9EEjmLhjhGGbJyKEfdQr8YST1Do0tOSuqXc0frtvv8ohE0m/QhRHQy+pde7TxCv3ViM4HRP24BxyHTVpgvtWnefgANZ4WuxSz2I0Vw9jB7GRpaGCO1RzHHEPQ4xCRXsMawhNG+GSUDwAuTbrzKv+eH81wBnKHurwPhinjxPW0RXUQspF/UYe4F7Drn6xTh8TiDLRJyQmtDOrj2hm3g/a/6Ov2uUynjlb63St28KlUpIvH2yOI2Lgcs5VttU+7tkygy7R4nO17SD0CGsL0KaEp7sHYBzfcdH3DmWGRvmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pERJGDvIQJzQI/tnTlRQqfHsSp6zxXjGl8YTxdcNJeI=;
 b=X9ajCMnZGRsiCvhqOQiG7tC51Sz5BdPzGCofynXD+kvSlngY7xyJN0fmLg3QIQ9zsEO6HD7Ex4BIzGQ0jb1v3Gl9B2LeNJWpfq2Xc/0IGDPQId4EWHwS5Jn8no6LKiFe9a5jG6PtsdByfmSEOmSmpAxWN96HtmWQpyqXGAioQbfR9DnGvYs1mQIsjV7LRykdtvQqeWlqp+LH3t4pVyBjBUNg/vzGsV7XzOwaEJh9KMrCeL63HX3zXTZNFR4a6gAb6qmDTVqzVfYQqKBsrfENITyV8vBvPpe1UtCmztL/+KPDBDHxF9n2exjyCwSP5JjJXmKg0u2a7UA46TyRKy5JjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CY4PR11MB2023.namprd11.prod.outlook.com (2603:10b6:903:30::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Mon, 1 Aug
 2022 21:45:26 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.012; Mon, 1 Aug 2022
 21:45:26 +0000
Date: Mon, 1 Aug 2022 14:45:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YuhJc+pSMQ68En1u@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-9-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-9-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR20CA0034.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::47) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d793661c-3079-4841-2970-08da7407251b
X-MS-TrafficTypeDiagnostic: CY4PR11MB2023:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YKOSmMKPs2EBgWrUxRuCcjv/jw6D2y/7QWq9ZE+HT/WfrUdl1vA74dRYwz9NSJJs7TlLkWfikCv9ImOelTbYYDfZGiRb8xEY+36N73dCtS6nQq+PmO/cP5vJ6ywEAytxh8vXdgLzeZzYb8Ibgl4vsRagvRuc91rVhUMY/xRBhjAydrXm8a6+PWKMUnNHurLyQp6MLq0bIVbQc242DUy+12WzN8tCUq3phpYQH/IMGnFNzZafdVZHx1swuopC+u/pPrTP+gBlhZqav283g3dt0cd2/DrdzL7Hm3Foc81vwLU7poumlo2qgoSydk8cJyutBCwWtDYA6K7rEJ8h2or8XRJU1jfTaYckCt+1wyLPqZvKyUAvVvjZAvvGUhxODrY50MD1yaPd8IjoXxJ31e16gcrcf5PWESgWSy1e+ITx+8W2RKS/v9s0sOTFSqBwaRxDJ/sp2BESiKl3t1185+IhnEyQLI6YWFuZKL/eo4HeW+Le4F54SvQC/u1kOz4aP48nUjF8FLYIxyqIkqUSK/KCoa4oueQKAZjTeh3AmXWAE0ULIwY67+XZVbHGCzFxuwPb8fJ/Ob2mgUQU1DKB8ppRczacfvKBzF3bMpm6JxB9JJdO/dw++r/ebL0N3u2UW0e2AQmLRrZ63RD+jgB81bGG/R1RmcI8B2eMrXXuSahcPvhtb7pA8lifIypEdEj0XNz6KiLnHrMxgowKmYFEv3ALKFoYrBJMPGqjFXP6dwRK8WIh0GYo9hUabrXVJwkZSSwhtJNbxVdRWPQkmjAwltyboEfKtmMEYaCNE9bVM9BTuK0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(366004)(346002)(376002)(39860400002)(6862004)(8936002)(478600001)(6512007)(2906002)(6486002)(6506007)(5660300002)(26005)(41300700001)(6666004)(86362001)(38100700002)(186003)(82960400001)(83380400001)(66556008)(6636002)(66476007)(8676002)(66946007)(4326008)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZmHPSgbhyqF+czuvpVS+wCVKnyWmfZvA1N1GvoW/rXnSICsklvmQH+ZfKysj?=
 =?us-ascii?Q?GAjrBwri6CnGFVjeXJ97L6W1taKAW37Bn/E6yNRhgQt9sl0N296tCxW2NJhc?=
 =?us-ascii?Q?MqJRUR6/HO1/gxs848EsSkYLyhC+ylEmshlBEAXuQg/7YAqVmSkPRUQ8qIIC?=
 =?us-ascii?Q?/FS9bTgKA1QhAzfIw4e/CSIJuuIonTX8xk6m8vnajUgGyXKI7+PpJu9/PYiI?=
 =?us-ascii?Q?JetRbj8AK0Tg9QaoMd7AmdGfizlLXkpCtliHzHEhDOxjAYPuC3ez/U0xv6bJ?=
 =?us-ascii?Q?c/0dQn0jyAA4/m6ItURKDG2cWSoPzzx7vDcj46N1BXg4/iCWSJwtphWeeNvt?=
 =?us-ascii?Q?O0pp9V84+hobLfXaSSqU1Znwjk4VLd3aH0KjHDhIppgxaLXxyRWLNCCczK7X?=
 =?us-ascii?Q?PeisR9uCKmuk1eixuyqxtSWCc53JHkqhJnK+PqOzFwAT+YxxLLuwc+VTsy+i?=
 =?us-ascii?Q?V04vNjLkacDGyDC2r7Xq/pX36/Qd9K0etZ467JHa1avROTSNQhRjWtxK/5TM?=
 =?us-ascii?Q?iNYRQaHXwoIWhKPpr8Uu/RuQn5KQNILwIksBoLKihsPsP/hmDYBoxSh9dPEl?=
 =?us-ascii?Q?VXpYOTlZZ3kzte0VjiBTUo5xP4/rYDSkoY5e8cz230aaFM+1IKQ5Gamw3epj?=
 =?us-ascii?Q?crwtDQrtJc+fFChx9fHs7Hwj9HM6fMLGVtBi62OeN+eefBPNCYGR+hlxpbHs?=
 =?us-ascii?Q?2/XubRKG369X4/IVjpnuvn+5irK5Ul2a9k+AngQr2iDEuLOPFidYnyflBjLR?=
 =?us-ascii?Q?ZnpkOko5cUoLrwRWYHf0byEEfbPTejPGa0XJo0tXn1zSBWtYZbbbgjy15qcX?=
 =?us-ascii?Q?RgVavlvSX0XPq9B6pEwdcl4wgP1gVC+J1EQRvBma5lxTFundMS5MaMMQqOfg?=
 =?us-ascii?Q?D+rHydIWkU04FdSNPtIRQqSZC18oyiSQi9hClaLN2kwnTXueHaFZlGalvEeR?=
 =?us-ascii?Q?gEgPlKEXwL1b4TYdIW1vqd89yH+AaCWayRSeOCSD+c4thAuKx8gduZXygfIk?=
 =?us-ascii?Q?8KN+NpAELY5LdYeyOUavMx2eCDbiftFSC3Cd398QGMeSU+o8Hf1738AkG9lk?=
 =?us-ascii?Q?qoIl4blyGes5XwN0jIFnJAOGaHqWeq6LpV1ju5T7eakH6oruTEdD9WwFiU+A?=
 =?us-ascii?Q?nAAE+J1MHZlGm2o8i9xUuXJaNf8FgCe2R8hM0bjw59EbFc8JH9s6A3U+Tgqi?=
 =?us-ascii?Q?498RiyAlzzvxDsrHUH4e1G8tHqQsFipekJy9E/jkrt/pgVIk5iLbL+GPM6Sv?=
 =?us-ascii?Q?BUoAMuAvKSTzh5jG+nODqVkTfNsMNs/MJ1bLFMYwlkaz0MkdE4DA3pyLO194?=
 =?us-ascii?Q?BxAwNTxLK68fCVWnU85CMkZZFodiMbpNxsqvs0BIF37xDoK98fFYJeA2Dv4b?=
 =?us-ascii?Q?k90mnNY9A6u9LvLDnblIBR/5NbmjUoygKoYi5ijFiUPnAxe5ca3fll03Gfe5?=
 =?us-ascii?Q?q1phi4IJKftoPpK1PXz7z9lJjm1JKPPBOoy6Ibr2KJq58IEthnwLSTk0euzb?=
 =?us-ascii?Q?CzBL54JqdZq9Co2XRhJv7Ewu3svszxbHxfEqf3j22SqY1YlyVPjwI5jjGQZu?=
 =?us-ascii?Q?S6GHY9+3VsqvUxMgZUuW6L77U0xSErYyAvtsM1yyBcfWUkWHuZPPrKQGwV1/?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d793661c-3079-4841-2970-08da7407251b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 21:45:26.4663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aSeOC3q/oJ3JSxDLMG4aZPy8xLg7JET70y5iILaCjSjfi8MTR22KQrESr03RHwPwYEf6I29WfMgj1v59vAMSX+CdSznhMvaEO2dTGeFjRKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB2023
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/23] drm/i915/mtl: Add VBT port and AUX_CH
 mapping
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

On Wed, Jul 27, 2022 at 06:34:05PM -0700, Radhakrishna Sripada wrote:
> From: Imre Deak <imre.deak@intel.com>
> 
> Add the proper VBT port,AUX_CH -> i915 port,AUX_CH mapping which just
> follows the ADL_P one.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

This doesn't seem to be documented in the bspec in the usual places
(e.g., page 20124), but in general we should always assume the next
platform inherits the behavior of the previous platform unless there's
information to suggest different behavior, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 51dde5bfd956..2971505bcf2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2418,7 +2418,7 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
>  		[PORT_TC4] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
>  	};
>  
> -	if (DISPLAY_VER(i915) == 13)
> +	if (DISPLAY_VER(i915) >= 13)
>  		return __dvo_port_to_port(ARRAY_SIZE(xelpd_port_mapping),
>  					  ARRAY_SIZE(xelpd_port_mapping[0]),
>  					  xelpd_port_mapping,
> @@ -3576,7 +3576,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>  			aux_ch = AUX_CH_C;
>  		break;
>  	case DP_AUX_D:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_D_XELPD;
>  		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch = AUX_CH_USBC3;
> @@ -3586,7 +3586,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>  			aux_ch = AUX_CH_D;
>  		break;
>  	case DP_AUX_E:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_E_XELPD;
>  		else if (IS_ALDERLAKE_S(i915))
>  			aux_ch = AUX_CH_USBC4;
> @@ -3594,25 +3594,25 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
>  			aux_ch = AUX_CH_E;
>  		break;
>  	case DP_AUX_F:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_USBC1;
>  		else
>  			aux_ch = AUX_CH_F;
>  		break;
>  	case DP_AUX_G:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_USBC2;
>  		else
>  			aux_ch = AUX_CH_G;
>  		break;
>  	case DP_AUX_H:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_USBC3;
>  		else
>  			aux_ch = AUX_CH_H;
>  		break;
>  	case DP_AUX_I:
> -		if (DISPLAY_VER(i915) == 13)
> +		if (DISPLAY_VER(i915) >= 13)
>  			aux_ch = AUX_CH_USBC4;
>  		else
>  			aux_ch = AUX_CH_I;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
