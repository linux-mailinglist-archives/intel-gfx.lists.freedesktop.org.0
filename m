Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3067F824BED
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 00:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628DA10E553;
	Thu,  4 Jan 2024 23:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC9A10E553
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 23:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704412123; x=1735948123;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8AQaSO+xRXpC0BXNC7qC5QP2FUOfJgOFzTa8GZ9j19I=;
 b=QLi7mVjzUEBkbFV+025X/gitQCxycCQKYrWr6ioSfWXG/RChwBUgJTCu
 LbAZTKrd9NjFq7JbWSd7acbrwFz0+W5xiR5ptyo/omgCEBjCRTiy3w58n
 0r5IXWoSkCv5MsFGwljduFza7G6jtbinnkbyZktpZPmeIwM8RQleI9CqS
 OyYl2CUcx6hyq/8ljVOX0ntXqyoERIY6hM1kqfYalPfvvtDkF4EI4do0h
 2FAy6cOPNOnZ69SJL04B/UWGJyFrV4Ql1dEKI4+LX+CceHISKZ9pHFVPl
 OFMypM0hK7HW6VssAk5Dw957tX9GGGy2ZDuJtdnpUqhGKsXU2I7GscPkd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="387842676"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="387842676"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 15:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="784044620"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="784044620"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 15:48:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:48:37 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:48:36 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 15:48:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 15:48:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OSMAcBQIARAB9Azn3IVf03OnwOwGZu0fNce97DjQovcuw0LqlT8OEEiUGHpx68Y+AyvpRllzYgumbuXGE1WWYw/cnyCR+2ilxocc2D7E1mUb2UUiuZZNwV+r+qQoharV7aRFtMOwKndBpvkCf95nn9Gyy9D+8hW8vXvSje/hRs7xLtjzFkauKBNu3jhkMzUQGFAYDj5k/6BvLFJt8Za+XE4ZlPRNHl4xCvqjG9DFfzR4TAcP66OnPTrK1vDaLZqpDW+IKMHihw+vhC9usegsE0nBf/wm/tXWTyi4CYg0U+UJmx+wwZSscQM0o+9zUSiEZqIIsL2NkLXBxzcpfqryEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f1UK43SEFgB/OR2dCw/g+j3BJ1ENLnBv1oa6FcgO4Jc=;
 b=FeJLGN/ZTdEYH8wT+mjxCav4rSEL7iaON4hdiUPGJnG+U0laqGJw+q2sjkex49dGNXdcl7w4EQz31w2TfqxZPvpQRT9a9OzZbP5HReT6mUmwqUKvf+7WaWShGGu/MFJJ5Jbeh6gR6R0Ss4qPPPTwnsK/Ovw6e2dO/k5DUrLMowvuc684GEotSN6i2xKRwMyzFBHqbFyre5n8rIBqXeYDQ98IRO/jTx1D9g82lgXlnr+al2Z6wRrsNe/UTRMQcPCzwEQLApdVPsEq2MnLg1JN9Oy+yUztZ/BLJWzwyB2+akLHLI+iN55cMUwjTPtQehOHmbeoZMp3Ys8BNnEX405kYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Thu, 4 Jan
 2024 23:48:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 23:48:34 +0000
Date: Thu, 4 Jan 2024 15:48:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 4/4] drm/i915/cdclk: Re-use bxt_cdclk_ctl() when sanitizing
Message-ID: <20240104234831.GZ1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-5-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104032150.118954-5-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|BL1PR11MB5979:EE_
X-MS-Office365-Filtering-Correlation-Id: f53e16b4-7631-4b3b-82f2-08dc0d7fa9b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vNIBCha4ngoTI3kJ4gyQhEamyydlDJRd0nOD2yH444GBneGE6p8YrXt/kwYMGfPCtL1TovVAnl0Rj0UQZdZb0TWf+cCNU40GrtSa6Fcr7+TuXYqg4hdrB8zpA9jrMYgUAcuPrSjzSAXzqICJ/a04UTDPOWlllMmLvQdXU7fqg4HMWdzxIVPZTV/1fn3hskJexdu7kRoWxg9SKu3IkRwbUIYDrRufns/VdJmwAe1ox1iZTR++zt8H/01dAFQvXyduEyUG9QqH6rvhGTGsrMkb44LwlI2avQt9mTzUpitJPXJBcF4ZOc+JG+oyF1ZKjU9TYSonmR29ephbw37fN2iz3Y1lHEScKf49eb9rgDtbZ7E9zoO3endFM8X9VaFXO+BVvJKZRtBB8CsKsm3QvIzEs9edpq9LId+kdzI4us2GxlqNYaGOVswE3xQ8it4i029VocCVfdCOzuQ0a4kCrtWKfOI2fNm57yFhHEkSR7ctMWjpBlVasLclSAztBA2bP6t0phWP0sZ64kycXI/mzJ6LK2Xmn7veLUHfGPwEXmcf1yrKwYxZ/BkiCL9TEX2txyYG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(136003)(396003)(39860400002)(366004)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(33656002)(86362001)(83380400001)(82960400001)(26005)(1076003)(66476007)(6486002)(38100700002)(6666004)(6512007)(478600001)(6506007)(66556008)(6636002)(316002)(6862004)(4326008)(66946007)(2906002)(5660300002)(41300700001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3vI4/XhsX+KEHIyki9PaPo7tih7L2ahyBuFk47PXp8Mr8oIZlC+HGE0TitL2?=
 =?us-ascii?Q?tUhUZwvtn4K9rNhjG3hxlPRcME1kX4wK5hJwmHB51KSDy6MljKz8fjd0zSzc?=
 =?us-ascii?Q?eNM8mCUEZeRpQSyHqaUW8gIXnMjUqrl8hEHG7t0N4YY3E5U+8G+qJxV5VK59?=
 =?us-ascii?Q?5KUFHfcp0Gv3FKzTsMrZejOki/kSdUvK9XA4JFHD+pgUN2oS+xfr5LFRQwYB?=
 =?us-ascii?Q?0um93P+4+rFuvfdhq1+35Uqn2HDfPsfYhzF003VAFLdI2rYASOKaQT88ZEYL?=
 =?us-ascii?Q?nWIKHI66F0cG6xrY/NMc+ehZUYMnZwMhT854MpdoxYrzKjVRqyeNEwsRaYdb?=
 =?us-ascii?Q?IWauIDy1NrN9Wa9udG1uTcuM0BlGm2QTgtFvAAjMq4zV9EuyBOqFXtGmP6IF?=
 =?us-ascii?Q?uGekdhb4DTo0a+NqoSQTJqJJchynmCP4TSOJsosLG9fzttRHZEPz3Q2k78Lp?=
 =?us-ascii?Q?N1tkwttMNHMA7s29T31anmeY+DVoGHDYsiGA/0cxJcx+9F9YeVDPKVxBULYR?=
 =?us-ascii?Q?XJQKmdtWcQ2d+E5k3uAOwiM6YsOVkMFX9FPH7K6cSHrvMaU1FNPCx/11B4ZB?=
 =?us-ascii?Q?gJI1q3NRrAaFUQeUEOwOIsUk8+CnVoo3QWwi9h6bN+beTO0FCD5v3vQVu9N3?=
 =?us-ascii?Q?twlQsKU49qKX8MBfaG/kvt1Kz1g1J9UYAa8D0HjMArGD3a2TE4Htf4fZWpfL?=
 =?us-ascii?Q?Ylcz/Gip4nyvovCpzcguGrrdj6o7xcsFpFF9wIdZq7lw38AW9a/amOcHL/AY?=
 =?us-ascii?Q?4fHfA+B/A/PffcNCcqfqvq/UHhfCOKHXGWHp2AjPn6Asppvq97Fh4XKh9vw7?=
 =?us-ascii?Q?glNHjjunEpkjpjrqRnltf8+n++/LlLFyMgWCTcDJ7shOTd3mv0w8Az/u2NX6?=
 =?us-ascii?Q?NMxQgymhUw4SYLJ3gkNQljodi3yzsF8GZCz7XHmy3KJtugNsuAqJPleE4ds/?=
 =?us-ascii?Q?ndhBMBqyucodQszLbBgAscFvAief4PeVWGWl34YDD2jZaZ8WrZx0cEEWqco4?=
 =?us-ascii?Q?E23WveGi5hBvg6cBA/o916D1b9AiNYoit+F0EKV1Flb4CYHnGfWlT1YWznX2?=
 =?us-ascii?Q?e7qyUaXwt0x8J3sDxwR9tQ/8zDWBQ93o7pfb7yvM1i8zGbo6ek7M3Q4+MR5a?=
 =?us-ascii?Q?VE6yWJd1ej02MVY47LR8P3J485mOIzyyYRi8fSkObWhsJnJB4GDZYkfNqy3Q?=
 =?us-ascii?Q?oOL43Nr+vqxT1MNXn8m52nIj55qB71MAQzB+hzHGu6YvgMnQr/bJ0wkKZTuh?=
 =?us-ascii?Q?68q8RiMNPdKJewGU0uU8aaFlOXeybEu1/PDhwG3JvxDiSlq66svwllqGCpzk?=
 =?us-ascii?Q?0sCtNM4cPozyqdVRoiqnuIRPY9CKHU6o4K3Q3R1umvgjIPbJQ2tBuLErJ9Zf?=
 =?us-ascii?Q?1qHLcfPak/l0jOW6NUGMn1FhPvXopDKqPws8tXeVzBliW4wIOP48kBj/imB8?=
 =?us-ascii?Q?SejLQq2qrjNKKZSZkPlzTiGd/vc9/dZqAG9ysM4xbkXWcReoG3Zs9GMCsiyq?=
 =?us-ascii?Q?Az4oeryAfZ3R/ha90IuSDhCHG+r/d6rCiaUNDEd1IXhuGC6MUdsor7/09FIw?=
 =?us-ascii?Q?jIPQP9RV8CNntHXTZ75Hbc5MlevfoHt4GAZVVKIDXkCtVkIcjK2jQVvKr0Lq?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f53e16b4-7631-4b3b-82f2-08dc0d7fa9b4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 23:48:34.0417 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U6o2QJTYWCynXuCl2OUUB7WHOoF8dQHcSEkrRvSGjRo1Z0+OY2TuuEZ7sUYnTMbdjN241iFaaMjPnixPqwOXSUjDcc936NCmqUwMpXy2v84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5979
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

On Thu, Jan 04, 2024 at 12:21:50AM -0300, Gustavo Sousa wrote:
> That's the function responsible for deriving that register's value; use
> it.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 +++-------------------
>  1 file changed, 3 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fbe9aba41c35..26200ee3e23f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2051,7 +2051,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  {
>  	u32 cdctl, expected;
> -	int cdclk, clock, vco;
> +	int cdclk, vco;
>  
>  	intel_update_cdclk(dev_priv);
>  	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
> @@ -2076,6 +2076,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	 * so sanitize this register.
>  	 */
>  	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
> +	expected = bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk.hw, INVALID_PIPE);
>  
>  	/*
>  	 * Let's ignore the pipe field, since BIOS could have configured the
> @@ -2083,28 +2084,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	 * (PIPE_NONE).
>  	 */
>  	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
> -
> -	if (DISPLAY_VER(dev_priv) >= 20)
> -		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
> -	else
> -		expected = skl_cdclk_decimal(cdclk);
> -
> -	/* Figure out what CD2X divider we should be using for this cdclk */
> -	if (HAS_CDCLK_SQUASH(dev_priv))
> -		clock = dev_priv->display.cdclk.hw.vco / 2;
> -	else
> -		clock = dev_priv->display.cdclk.hw.cdclk;
> -
> -	expected |= bxt_cdclk_cd2x_div_sel(dev_priv, clock,
> -					   dev_priv->display.cdclk.hw.vco);
> -
> -	/*
> -	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> -	 * enable otherwise.
> -	 */
> -	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> -	    dev_priv->display.cdclk.hw.cdclk >= 500000)
> -		expected |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> +	expected &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
>  
>  	if (cdctl == expected)
>  		/* All well; nothing to sanitize */
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
