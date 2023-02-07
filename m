Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F9368DE4D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:56:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8422D10E4D6;
	Tue,  7 Feb 2023 16:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769F310E4D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675788966; x=1707324966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B9pLnqFqpOCfl7ZGfaKmuiC1ZtRGutfuANlvWtjpw0U=;
 b=ayi8V5adAbU7gPpDaaBY8nClRd4VJvjsQINZGh5vjhrFw675kz/1+iBi
 3JEihMWrW8qomOmWVl2mrVCyfXadCz3iOxvUURFymp0WyU2XvYhZ/3I9g
 xE5uCF2SbBiqRLAjvMulS0hMpq3BkT19S/6EXA8ovahAl1sXJpXvAASbT
 P4cyfA0uJuud1mePWkfURWTg7Qr7GWLlclHslzB8UpStpaKLczwyjU1rk
 rHQNZtYYoPFJmBM8h2hqTAaC78d9CwvrPBmqcQErozY4Icz79cSSN/1l+
 OdMpr9y/qUD4V4x3IqFObzSUQxnrga02N3eMVQU+P4wKEiSp3avrEr7kc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330850971"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="330850971"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:56:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="660300213"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="660300213"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 07 Feb 2023 08:56:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:56:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:56:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 08:56:03 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 08:56:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nP8McALAUvHMdQlLttt9mEWbRLrv2yiYnRs+bYHZwIY0sTLLZ8UNWy5lwn2+vWM8+PxPmB6ZeM0zGhi3roE6k1k2hxxH04dvIC4OuaUOVLCbOt7MDM0xfxjhuSD8WKMLOhHP3LWGW6L8nJC6gxme/Q7Lk/wSkbCieL7kWyzIXG2KZaPDUC9P7X3rm1HchvdZ+imQ2u8x2LdFygqoAsZquPqvjAdmeHIHLvulyfqxVzpPdF7kPQIIZmMuaWy5XRyZh983rFysIEAaIwyuVei9/oVQwd7Oo5s0aI5NLCA1eKN7XrZq2FfaTCX5w+aTYiiF84yozm6KszHByiMrGfg4tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UCfk2N1WWpPktdzLQYJfoAoeZJ+I2jhnk65YKN3ntXc=;
 b=Fazb9IjYFAo7A0w22YRt6duGMUjAfL/SopngPe2wcwAvzfa6zbBQgiEThe/xd68MkdT4d370Sy2CvEEq8u4J1UMmViek+aN//mQ2QXmUmsCnB9S9jIu1KcV0TUJuaTa935dsbiHmqsZqDDxhzgt/m5G2DvqLClHU/bmtptFSoWoc1B7x3LcJx0QHVE/WpZz+GNQAdaEw6Zgf1b7UL5lj+a05fSaxc7+CQrROE5vaRWGmu3cLuMSMnSGcFQmJHqSzKkGZkMuDB82iDI70HqLLedmiUZUJ9I5cCY7fd1lOQ84bA6+Y10n1yhZOXV08wTerybw2ElbQqR51q6ZSA1wQjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.36; Tue, 7 Feb
 2023 16:56:00 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 16:56:00 +0000
Date: Tue, 7 Feb 2023 13:55:52 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230207165552.zzu7f3zj3l7pvgqj@gjsousa-mobl2>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-15-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105125446.960504-15-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR06CA0054.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB5087:EE_
X-MS-Office365-Filtering-Correlation-Id: a0efc65b-c2ae-4c21-ae73-08db092c3047
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iO+zccDAqmhf4sv/JsVFZifBfKZ69KAuJo5h+UjbvPfYxYR6J1RabeXxL/90r3JWBVB2ojZrRm1iDg4FRtfABEVZrTDKmu+3XF2b+w1MVnTTiijMpEeFlRby8Nc3sTBcrIcBacph6bFXjqq/yWo6NvPvOjYMv0V6KglluNuHw6oQ4ZC/ORyQCbZEAZL77Xr/47ZOPonaAN1HdF2wCi8edigM7fkCp0mCslGh6eA5ook6AR9yx4eRfJ09vPFhXEGUHVg10+QAE02wlJy10ekBp/kl2i066XJs/ph+M/oZPIwWcaIZ+iHEJgqM4slFtJdEucWG0MPz4BcPmsij433TbtaO4L5tRAPU3sD1Xkxw8qBcoU0l4Rl/rxCrfY/0bDJ51PdfksV8ARKK3IZr1qZYy7Ni4aYLaqb1DCt0hPFPfqgMw7ZXY50KLovkgHTuBPNZ2Y0HLwwUclovNYSSDM4OR2JW8qY/IgXmZdpxo35HNBYGjSlA23BunlttfquOdI+mAS3vHVkLXbuZwOyUnVIL3ERXY/4nYb5fRos28LAC75seh5mGOuy5GNZG9blMdVOq8eES6cmBgckEVQSS8lqShvt7vCORpTYzGLRMSqA02EY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(39860400002)(396003)(366004)(346002)(136003)(376002)(451199018)(4326008)(9686003)(8676002)(186003)(26005)(316002)(6512007)(44832011)(86362001)(33716001)(2906002)(5660300002)(41300700001)(8936002)(38100700002)(6506007)(1076003)(6666004)(107886003)(478600001)(966005)(6486002)(66946007)(83380400001)(66556008)(66476007)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XivpJAe0lFCHlawAPxlBG++2nilpqXv0HSDa3bj/r1Y5w+xgP1i1hYIRHL+v?=
 =?us-ascii?Q?lzkfdw4EsMzLp5T8a2Tcuwt2r2CwrQactHUPFmj5banAt22SeTIDW+Kyx63i?=
 =?us-ascii?Q?0vccd4K4NeGhWVhvprJzBtEupNH9t3FKDYKW84D+gbMvxa2bt0Utuc29kyns?=
 =?us-ascii?Q?jKd+BWn2itqAO0ATsC/QbKvICddf+CZhp1Yt4dkG8GfWMTlq6m34exdkrRXd?=
 =?us-ascii?Q?1a9sv4YztQmlFTIWJZ1qUnur/qE/FdCpaR0hy6VGJ2nZkuw+e6xx+87l6o92?=
 =?us-ascii?Q?svYRDkF2bL6L/vi0/bLWbtqWbyEODsSImlPwSf4SuZdDrvR2SbWeg2ZgPgur?=
 =?us-ascii?Q?HN8Xxd4lz/ltAJ0azVwT4+Dyw6ik1qDigZLvFbIvSsGWBaMu9GMRnYRfNa1o?=
 =?us-ascii?Q?LSkGfITJ/OLp3u2Me+6TzZjnxVR9m75Zs+kG089PBWz1S3CGetM8Qs7lDsga?=
 =?us-ascii?Q?CGNPS74ig625RoInPIZitPSlYO2afUhIPPhv8GMyDk/lAlRk+O27N+K+DB7G?=
 =?us-ascii?Q?S+BoNJ608rDQRSsxeNkxAL5CTwLV1UTcuOqMApcMWUX4RRkXD9AUoAoqD4Yo?=
 =?us-ascii?Q?Yb4/I1lwUBSs9M/I8y5vq5CWG0NgqwxVafYSqWFvOAEtCesaYkVI8jnkWiSN?=
 =?us-ascii?Q?sEzLuVx9kc9K7xp7JQUcTuBUl2WbX0hZHZvo+9hlFjKignadpkRTCtjQTe1O?=
 =?us-ascii?Q?k2+6dox4Xshn0XdTRjwYvQKJQe96eb+dnhYfKh5vyYxRVFS4COYMqm3YpnwF?=
 =?us-ascii?Q?+FE7Z93qjrYKxJBY/7jNEYQsKPXHNQ4QusV5T2+KoM2GynDdGzn8fEkJXYDU?=
 =?us-ascii?Q?09vk4qyJ3k6Gkt1buIzJLiYpWiskqcutQiFoOCCPhzh5RIV+Hk18odbeeh9a?=
 =?us-ascii?Q?SaPghz8TrspJ7oyF2UPOLg7UKxgIvJzaKWeoTp4SsxIPZ8WRnb2JMEXn7nI2?=
 =?us-ascii?Q?hEUYRuFondSYRZA6vFlx6ku5DznWffPi0ZAiIMCulV4NVmVwCetd8ED7yrN7?=
 =?us-ascii?Q?yNqrnPNTRhEo32XQs3g7NmxUnDm/DIPbhuwRNmYggNhac2japUnE6BIF7oWO?=
 =?us-ascii?Q?vBqZwPi3C+/Sbcf4FXbbJHUsYp9HqF8wCffqUT1ssST1NulYMnv+eIBwXg4K?=
 =?us-ascii?Q?cjcBg/ELrTpQgcghefM7mqDEHNx0Wlbek3AeJbWsinOPV9d1NNYiJU5uOqo6?=
 =?us-ascii?Q?Q0olKxKRYD56jM/dFMOokBd/0CrEmTj/5wl7MV1rSxXwA7IyVD81JPnHlFM/?=
 =?us-ascii?Q?WNN2pnoMHD6G3wO40JnIW3kiKaiCc9b/+SeWLehVZ141fz9SS8WeBWpN8SKH?=
 =?us-ascii?Q?rX3QhJlNbiK1SyBc1a2uLQq5MGYtVKNGTqgQM0FfsOBnRKT0ho6YwUaBImaf?=
 =?us-ascii?Q?PWL1qKtwYq0BOiwkMO1/Cyav2/gkVECeu/fXcn1E4GiMwNyoJ0Z4+g6d00+x?=
 =?us-ascii?Q?k3qd3mQBEKqcZ275G4rg5t59od95V/JXrZtA9gvMv7Nc0tGE7/etubyLvJpn?=
 =?us-ascii?Q?Ux9w2eUXTBnw3JUkiqnNR+4o/94OMOtMJhQ47HcfFgqF+ppz07uvjbHlwXof?=
 =?us-ascii?Q?DgYe8TMGNcb+cIZcTmYZ5pCzKrDUX0lIV2AynmHuVEaSjHIeSllPdv42qskk?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0efc65b-c2ae-4c21-ae73-08db092c3047
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 16:55:59.9084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3vBGeZJnhC/xlZNsycvrfpT6QJsgSsIpXxmfymUIu9TXSIA7BpkHD4aFY01q+30IZd7MnuaoK2egN7RD6ZcfCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 14/21] drm/i915/mtl: Enabling/disabling
 sequence Thunderbolt pll
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 02:54:39PM +0200, Mika Kahola wrote:
> Enabling and disabling sequence for Thunderbolt PLL.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-15-mika.kahola@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 137 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |   7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   4 +-
>  3 files changed, 139 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 67e8889aec29..9218f99bca4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -14,8 +14,8 @@
>  #include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
> -#include "intel_uncore.h"
>  #include "intel_tc.h"
> +#include "intel_uncore.h"
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> @@ -2365,8 +2365,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
>  		       XELPDP_LANE1_PCLK_PLL_ACK;
>  }
>  
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> +static void intel_cx0pll_enable(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -2439,7 +2439,86 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> -void intel_cx0pll_disable(struct intel_encoder *encoder)
> +static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
> +{
> +	switch (clock) {
> +	case 162000:
> +		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
> +	case 270000:
> +		return XELPDP_DDI_CLOCK_SELECT_TBT_270;
> +	case 540000:
> +		return XELPDP_DDI_CLOCK_SELECT_TBT_540;
> +	case 810000:
> +		return XELPDP_DDI_CLOCK_SELECT_TBT_810;
> +	default:
> +		MISSING_CASE(clock);
> +		return XELPDP_DDI_CLOCK_SELECT_TBT_162;
> +       }
> +}
> +
> +static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> +				     const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	u32 val = 0;
> +
> +	/*
> +	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> +	 * clock muxes, gating and SSC
> +	 */
> +	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
> +	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
> +
> +	/* 2. Read back PORT_CLOCK_CTL REGISTER */
> +	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +
> +	/*
> +	 * 3. Follow the Display Voltage Frequency Switching - Sequence
> +	 * Before Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
> +	 */
> +	val |= XELPDP_TBT_CLOCK_REQUEST;
> +	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
> +
> +	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
> +	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +				      XELPDP_TBT_CLOCK_ACK,
> +				      XELPDP_TBT_CLOCK_ACK,
> +				      100, 0, NULL))
> +		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
> +			 encoder->base.base.id, encoder->base.name, phy_name(phy));
> +
> +	/*
> +	 * 6. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
> +	 * clock frequency.
> +	 */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> +		       crtc_state->port_clock);
> +}
> +
> +void intel_mtl_pll_enable(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_enable(encoder, crtc_state);
> +	else
> +		intel_cx0pll_enable(encoder, crtc_state);
> +}
> +
> +static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -2491,6 +2570,56 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> +static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	/*
> +	 * 1. Follow the Display Voltage Frequency Switching Sequence Before
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_TBT_CLOCK_REQUEST, 0);
> +
> +	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
> +	if (__intel_wait_for_register(&i915->uncore, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +				      XELPDP_TBT_CLOCK_ACK,
> +				      ~XELPDP_TBT_CLOCK_ACK,

I think we can just use 0 instead of ~XELPDP_TBT_CLOCK_ACK.

> +				      10, 0, NULL))
> +		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
> +			 encoder->base.base.id, encoder->base.name, phy_name(phy));
> +
> +	/*
> +	 * 4. Follow the Display Voltage Frequency Switching Sequence After
> +	 * Frequency Change. We handle this step in bxt_set_cdclk().
> +	 */
> +
> +	/*
> +	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
> +	 */
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +		     XELPDP_DDI_CLOCK_SELECT_MASK |
> +		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> +
> +	/* 6. Program DDI_CLK_VALFREQ to 0. */
> +	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
> +}
> +
> +void intel_mtl_pll_disable(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_disable(encoder);
> +	else
> +		intel_cx0pll_disable(encoder);
> +}
> +
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  				 struct intel_crtc_state *new_crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 8ca77dfea24b..141802038f12 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -26,9 +26,9 @@ enum phy;
>  #define MB_WRITE_UNCOMMITTED		0
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state);
> -void intel_cx0pll_disable(struct intel_encoder *encoder);
> +void intel_mtl_pll_enable(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state);
> +void intel_mtl_pll_disable(struct intel_encoder *encoder);
>  void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
>  				     struct intel_c10mpllb_state *pll_state);
>  int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
> @@ -53,4 +53,5 @@ int intel_c20_phy_check_hdmi_link_rate(int clock);
>  void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       u32 level);
> +int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 829c90b17b08..c2b9a2053732 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4419,8 +4419,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	encoder->pipe_mask = ~0;
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		encoder->enable_clock = intel_cx0pll_enable;
> -		encoder->disable_clock = intel_cx0pll_disable;
> +		encoder->enable_clock = intel_mtl_pll_enable;
> +		encoder->disable_clock = intel_mtl_pll_disable;
>  		encoder->get_config = mtl_ddi_get_config;
>  	} else if (IS_DG2(dev_priv)) {
>  		encoder->enable_clock = intel_mpllb_enable;
> -- 
> 2.34.1
> 
