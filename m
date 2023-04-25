Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 212326EE849
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 21:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6AB10E083;
	Tue, 25 Apr 2023 19:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8083010E083
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 19:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682451223; x=1713987223;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TsT13Ds7kJcSeC4c67LPgfc8AX9NiRC55+Jb00hab4k=;
 b=oAuos9MapHNCdk/M67QpGlF2oL4X5mko4TAkDwEe0rp+f9kyHC4WuX26
 rMetanc6newzH828msBlHsIa2gOnQ3y9nDDzKF0F6MPsGGyplcj8IsNZg
 uaP3WaUl8kr/1kJngvIY2aaCOEks94v6Wk5plJjDYrJ4pm5In7z4JIXzv
 aP5d5O6aNgn2h6uupkFG5gvpStXbdk14tM6bS0aAU9zTWPmPgP4b9Ky2t
 RyPtcODYnvPdUODSmxnYkuWNhhviVAgbpsl5XwMhuzn/Z0ianKy4K2/qO
 Y9rHluEuJ1PHiS83/SyBlgo9zyWDtN0dEmWIYMfxMAMlduXtcgcscKcqO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="349671020"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="349671020"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 12:33:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="837565949"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="837565949"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 25 Apr 2023 12:33:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 12:33:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 12:33:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 12:33:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EhUP3TUjE+LyjsJcNmRd8h2JLQPR0wbSCFVsNx5G0CpiAqZ+nU+hZ7MAbwU4rm4mjjDDk3vVUm5X1sHslXKnYXvRIt4nT5LRq5q+/yIDx9c8puyl8FI8O1dOkLAoxdmFzR5Yd6DHl//LOGVvj5qUd8UBjElTXa1N3yfStTgRDx1lQA4tTLSoEwjc7RXmwUlBgLVtr0oDT2AJ7+iJnkhkNnpntBc5P8yQN6mtiVgGZu88VGnEiPMSfwZ+PtGt+j65UVK+dRug48trAjvgjUdsf0iiPKK7g7Cf4j3MaKzWFr2pNBFFMNkg++YOyctDSAzkWjpb6QxzocdWKNI3Rhyheg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rag1q4MWYxvZvs0PDMrU2vdxURrkWLT952JWAA5BZsI=;
 b=ENHWPEkj87/Pj/JoAgkYBAbb8HAWVfnX8OW/93MmlV1ZvmltrcnSfBlGpkzyQEyLFUQMPtt+ptX3cZWcXj78bctmyuJSHdU6C1enCdxppbLUBJsD4ONC/kdfvhvjEJ3cPm4GQLyJPMHXoJhPttuwQsfKmsmHq0dpNQV1FU3OWe2Kdd7vD9UsRES0HbCdsZbWbWUesP76Jv58sWEjKl7J1EnloumMzx5PQ0/8gOSCHJh6tYDv5oEAQuSlWYHGcxiY5mfocqiaerpn4u3OYOGsjUdAGF5W6Yu4mJldpTG96OzHyOr9DYQl+KdtjWcS7UNFmxnV+Jh7T3hqRKiBHWU/dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA0PR11MB4591.namprd11.prod.outlook.com (2603:10b6:806:9c::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.33; Tue, 25 Apr 2023 19:33:39 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 19:33:39 +0000
Date: Tue, 25 Apr 2023 12:32:33 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEgq0ZP7kxfoeX1r@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-8-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-8-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR08CA0013.namprd08.prod.outlook.com
 (2603:10b6:a03:100::26) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SA0PR11MB4591:EE_
X-MS-Office365-Filtering-Correlation-Id: a9f40852-02ae-4318-7d48-08db45c3f871
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YN1nH2mmpyZTFFV9D78gVAl5mAQM6Vhwj2/VlGqb2WK18SMwQmkdRQLwUYP0jSSJ8MIr3APuG9roq6iP6P2W5ZpIUZmEZ8Q0IfnVBW2plp6LX3mLwnMvg65RKVMESSP6fbu/PREAZW7dSop7AJUlirKTHzyQOhGkBYFQWlzC82VrUhRfWEcUUTzs+p7KaeTlPKPe6TMl97CHunVU/utsTIjzEHTUU/tIi6FSCNqg2++ED7ALr6n5mT/Nd41P7+hS3UlO9eWh6Q0BsSMSRTLXGhz4ENmcbDn1toP/Ywd+t3Kgpt0CKdIuWUogQP3ptPd9XDlpkvXXIUt/1AYgNS6RWMyIBR6NXXWudTqKV7ogJxyymoQ+F2554SbBdyAbVMJt58wyMWKMm7p8yQp5JkHSQpAbARXU5C4AVKjpMBY458zbtar5b37moH8ZChiTgGIW60D6+vSMsQLO01ocItVG2G6EZMGvdYjsmmwvAkrPQgDDOXg14Ln8NsveSXagaajNY3BdiSYD4ZifgiZfJpOirCqPHYIQrcnIlaqEX6nGXchx+JSklQ9FHuFe6RvSk8bX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(39860400002)(346002)(396003)(136003)(451199021)(8676002)(66556008)(66476007)(6862004)(6636002)(44832011)(8936002)(66946007)(38100700002)(478600001)(86362001)(41300700001)(2906002)(316002)(4326008)(6666004)(5660300002)(6486002)(9686003)(26005)(6506007)(6512007)(33716001)(186003)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KmJMXJm8T8eFnGGo5ri4NzDNZDXIkCMHx1bk4w0O2uxwNBLS+ZitPNfMbvul?=
 =?us-ascii?Q?VVUh9QDAPGojHiiYLYj9t6A35RuP93BBXpRdVVW1LjnuONkEfvpL0wH7j6Qw?=
 =?us-ascii?Q?+VGLqp6f99RFJsEutalbWjxukpw9pkVZ9LC6CioZa8BvwcDoF4hncEwnIgLT?=
 =?us-ascii?Q?/Mi0AVHxRiEGdpc0S2cuO0vnw17Rmhntl3TZnktDXDThcXaT7QoPV8Mu14jE?=
 =?us-ascii?Q?vJqDEMEMMN0EQI+eAgexzJnVs0qqk62OND2XG1Dp5IGIwY8U5oBX/DSmVjpT?=
 =?us-ascii?Q?4oewdIaMuXpdzByawMEN6t6VWHyqJHxBAyv4iThEJjnOyQ/t2nfdTnt2g6t9?=
 =?us-ascii?Q?L14I5WKTI87SrRUDql7xw3rhSwptoCyd0PPvmQ9Y+R8xxZyTvmES04YQml7l?=
 =?us-ascii?Q?6lD8LMRxWVJ2wyvYDkIP4Rp8F6106l8XckiYsf/pbwjKg0LCD4oqrKtarKpb?=
 =?us-ascii?Q?IxN/fPuE1GD7AgwBNtWAwSAHMFwB2tNDNdRmdAibatm4jUjdQDi3YkagJqrr?=
 =?us-ascii?Q?ENaYpiEw9Bqu/JA++TVSLv75z/OJCwiRzgv00x4cGyQi7n4YC8w3lQzRca/+?=
 =?us-ascii?Q?eW0WufVQOJY6sgmmbyQTgwgqMBiOEzjzfH0pgMu/uHHzT/71N1vSbU5WvfEB?=
 =?us-ascii?Q?aUoFsglG+fXLSHak2ZCGqnP7xC/kRYt4FMSahF158MbgaI8RpWrniBeyoXwY?=
 =?us-ascii?Q?ol/+PHOaeOvGfdJYN0eaH1uNJsPIVjyzjBaIq9xmrwbVuBiuZSy/S3NN90FK?=
 =?us-ascii?Q?wRkr05JPY0BvHy3p+NQ0kmiiF0cXkmt/4Tx4+vuC+I5CdvsIHrww31Rr8VOu?=
 =?us-ascii?Q?ZSnLFm/1JkTcqNtAYAPP/lhBiGvLvtZGT5iws3L27pI4x3Xe+IugjcDoUOkD?=
 =?us-ascii?Q?xZ4aoLAgfERTGBa4opStq7ee0ZKbKjVhycyR1s8oJAy3Z9SShIMXrI81xlR/?=
 =?us-ascii?Q?vMl18cgrFa9UDXJqXX79RyH8t4n//M7PIk5AQHibL+7wgh1uDYedHSRM+M9K?=
 =?us-ascii?Q?DZFvxatY5Mxe5jGZErzqfQ5fNBFafHfCYpiqinma6JWIxbxcenC6HP+qchv2?=
 =?us-ascii?Q?zx5NLavFsH46oOBVwH+f3yKlJHjrZAjkcFz2+JTxELZ+OkhHRegQHbhK6W4U?=
 =?us-ascii?Q?L8n8S3f00OTqRDtP6PdLJMfO3kw2XAO4hAh0iwNklOLZO8dat1Xl8nBxwMY6?=
 =?us-ascii?Q?AXSkEzZe3LV6YOuCzpHRvF6q+UTj+NtxeFouJyHWT6FeQzIAfAJ17ukqBJZP?=
 =?us-ascii?Q?SLClPadLvfagFEsgJo+MCuPi+8g7J0j2cO2qrjUoAb/oB8J7IGYVLs1zzqkK?=
 =?us-ascii?Q?Dsf/9Glyl0cQSrrlCzpU+WYj0e+TdJWsV620abbmB7TyV0CMoeGd8KJnVz0X?=
 =?us-ascii?Q?YsPSokp4rrNSZT1v/l0791F6na2WAkfuJWmwQkCJmxZr+VJcNo0H7pFkznrz?=
 =?us-ascii?Q?1LX0Kg2LWRkkOOlsUZZEBjLcJgAxSkjoLw6lroFeNskxREUoLW2THu2iBv2H?=
 =?us-ascii?Q?IYAsFHeNmfnjDk//gBA3oRos0I1zpv5w3DEfSG3MnG868J49AoPGLhoX6Yx+?=
 =?us-ascii?Q?stcgzD7YycrW6JJgk15iP/vJVwq374ZjvPt8TY8rBMCGLjkldHC/MXJat9kg?=
 =?us-ascii?Q?/o1yXUCBaiX6qAeKQTqyk2E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9f40852-02ae-4318-7d48-08db45c3f871
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 19:33:39.4243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AqXR+QbWPIGBTJtfwZLqNzK6OBPq5riz2aEx/77cAAItX2aeQ1kQEVtlRpIrhDJR/BVdJQ40chAkF2Gp15St8FU6nPVNxuwnbmVP5/o38n0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4591
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/mtl: Enabling/disabling
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 20, 2023 at 03:40:44PM +0300, Mika Kahola wrote:
> Enabling and disabling sequence for Thunderbolt PLL.
> 
Bspec: 64568

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 135 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |   7 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   4 +-
>  3 files changed, 138 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 4231ba98f075..9722d3f1b926 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2600,8 +2600,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
>  	return val;
>  }
>  
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> +static void intel_cx0pll_enable(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -2676,7 +2676,86 @@ void intel_cx0pll_enable(struct intel_encoder *encoder,
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
> +	}
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
intel_de_wait_for_register can be used here.

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
> @@ -2728,6 +2807,56 @@ void intel_cx0pll_disable(struct intel_encoder *encoder)
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
intel_de_wait_for_register can be used here.

With that,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> +				      XELPDP_TBT_CLOCK_ACK,
> +				      ~XELPDP_TBT_CLOCK_ACK,
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
>  void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 83bd3500091b..9ea6310b6d79 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -19,9 +19,9 @@ struct intel_crtc_state;
>  enum phy;
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state);
> -void intel_cx0pll_disable(struct intel_encoder *encoder);
> +void intel_mtl_pll_enable(struct intel_encoder *encoder,
> +			  const struct intel_crtc_state *crtc_state);
> +void intel_mtl_pll_disable(struct intel_encoder *encoder);
>  void intel_c10pll_readout_hw_state(struct intel_encoder *encoder, struct intel_c10pll_state *pll_state);
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state, struct intel_encoder *encoder);
>  void intel_c10pll_dump_hw_state(struct drm_i915_private *dev_priv,
> @@ -42,4 +42,5 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>  void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       u32 level);
> +int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8e6d6afca400..c18226edacac 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4779,8 +4779,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
