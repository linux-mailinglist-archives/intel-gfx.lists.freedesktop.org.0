Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BE96786D9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 20:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53B610E1FE;
	Mon, 23 Jan 2023 19:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB73E10E1FE
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 19:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674503572; x=1706039572;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z1oiu6F1L5ZkRxUYMPad+ny937gitP3IUU32kN+BXkY=;
 b=FOU/sx0eZEqIMaY/wlqsI8dfs/gPqjpRON6N0oo7YlVUDxLH52vL6Vyy
 u113BbEZt5it7+rmtzgXhXD2qvWEf3NwWImhiz3MTqvvw8wpk/udm4wFi
 SZC4VKD7ExTfoM+EQ1Oso6VFy0KebeFaj5mLgCoasv9iBoQrmRg9BeVp3
 E3HKPqVLyhmSMUDP9iqBG2m+f4sF1ayH/wMWnMzrhCFl9T8BEpKt7KJg9
 XAEjiAkz5xmS/rpQwlWG94QDWtpDw/D8qhRUQLFwEgQmak2Ay55Dx4jdG
 wtYJDy3FLXSDw+uw7FPouw+skmHQvLy3UlitmyA3p/zyICU6T9XR1Nbt8 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412362455"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="412362455"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 11:52:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="663793519"
X-IronPort-AV: E=Sophos;i="5.97,240,1669104000"; d="scan'208";a="663793519"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 23 Jan 2023 11:52:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 11:52:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 11:52:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 11:52:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KZ6zi0QhLgbUxhmFHZ9gvWYoXS+fFeHDfZxNMMHRuD9Q9YfprIxyQ3UFR8UXABadgRyXxxkmk9hOtSLOgsQqfq1bkT4nt3OKaEsyRkcth1TJ0tCp2tGr7aaZ+W2Jq1FV8XYwjXeWlK3pYAFu86Xvy/XeTIuoOM4bySdQaclLFbnOeYDrRl0KmA0VBPd/t5lqTBa9tWB+35rnZMsVo417QC38sK489gSvyaJ6OB+bRY0mpjrwBlFx1689YewM0TWZoDUKhPlAH5OIsIufh5bd9e4ejIdSzJRJWMz8znGVz1cb9zbm7A/HItT88KlMqS21vswUuHWE24qixLTVeLb9mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFbVh4RA8mprYP6/G3xxUZ4fX2EF8oYeMyMyIcXSKuY=;
 b=ZN6PhI3rI27Ghe8yDHkBvBmFJyO0lLaA+Uc8UngeEuibMTSkTzZQ3oBN9h3BJ6Dh5N8b55cGce646tECwSQv3MmHP7aafcVmCMAyxrUS+a9/jz2cc3hpsgF1hPiz6Io2/UCdhkb28t8laHrp/QntS4uGodQtu0e03G0R6RjB9jPU45wry8NHEYurzXwhEfk8HwX3hQzpOR53mflYW/dAsFV+S6I4XkPRBu9vCZOV5l/DhT/ihwgSUFuFmvaJEndPFszgLcT9CbfODhAbxklDZU2nXC9iE4B1rPMHfwcfaHKhSjXa4YH+/9qgdkwyfYUqvHjJYw+h6gIS9UiYnEAq0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7957.namprd11.prod.outlook.com (2603:10b6:8:f8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.33; Mon, 23 Jan 2023 19:52:42 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Mon, 23 Jan 2023
 19:52:41 +0000
Date: Mon, 23 Jan 2023 14:52:37 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Y87lhZqx33Lva//7@intel.com>
References: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230123131611.2149-1-stanislav.lisovskiy@intel.com>
X-ClientProxiedBy: SJ0PR05CA0125.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7957:EE_
X-MS-Office365-Filtering-Correlation-Id: da42d465-9282-45b5-f80c-08dafd7b631d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Qy2QWk0ODWG910o5LCutWMQRO9Y9+ii+v6/TyS6syd4gQqttbmKCUC+Oidif9T1tFe8HX8bGt2FL4BFdBantOh1gjaCR8FWjzIukj9+fVjrqvXYGSmAIRnxcfB+XMsfvpKAibSbdMrNqdqXcdNBMOrN1VubSDTjphu7iQs235gkVxnX4pELk9Z6jphfES0FJgxpmWdOhthn8kYZBcyBHe5DTcwF+B9HHxAx4gV9tWg0Z2J3+P4QC2eoOLBRMVqcYeU7ZEl3G6Y4Rb3nsanas3KM5dcIsmKjV1N2corqPYE+eI9JvjCMVFeNu/Eu/gvA3KL3v/Ys9OyWl+MqYtTzeLCM+iBcDEQdiKUPuk1MQ6tZhuCzt4TloRCYecTvJ4DkhjvOWqnMllJ4j7DgnPz0061NckMgT0uqRuyRE72PoBISP91NBfxDm7DlUXwrQeDZO8zNbb7LlrpmZruHlC2kh/ARyScyf7nqMXUNzscqG8bffj5zPdo8/NlDXQbsWGrSK6oBQEPniF2Dt5OGnUs5LPqMXXffZSzkQRz7qFiFoUmvvEOHh+VBRlhwNOlc0SRyracH0PPM5C6AjgUWEN7ZBBj3Y9Df4mPds2Rr8mB21BuEuSJN9lvV+HMlBV6fyIjmvLiSsNgJycrNsTH/DduAXwg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199015)(38100700002)(82960400001)(6512007)(186003)(26005)(8676002)(36756003)(44832011)(2906002)(8936002)(6862004)(66476007)(5660300002)(41300700001)(66556008)(4326008)(316002)(66946007)(6486002)(6666004)(83380400001)(86362001)(6506007)(478600001)(6636002)(2616005)(37006003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3sY7sSNlawq5mmguYqDdHe8F1LnAaxLLlOkR7XbRd/MVTpksyS4TxCuQ5MUM?=
 =?us-ascii?Q?Mbh904OCeQJC85XhG3DEGAUGk/um/JaPdh/2OBJiJ1Lp1q8Mmv9dHljYmciY?=
 =?us-ascii?Q?QvjtTNBKTfo4H4CiEIecF6XES0+oHtKL5mwxtYPcUo5Stb0nHBtMzUiH9nus?=
 =?us-ascii?Q?y2yt/g2w3OrM7dIeTNrkwfVzGDtLveHhofeYg9+13KHHDDdWyEDR9wsjaN5H?=
 =?us-ascii?Q?FmBlmqC7Hrr7YUNiV03wwoZuLdHe8fDMN7PS0/ugJBqhAkj2mv5T7BlkWsXn?=
 =?us-ascii?Q?5lwr4TQOYBBx2Y6W2P1oZqx7OjeEQFt9taMXsX5YHAgV29i3qW8YnpjsGKCV?=
 =?us-ascii?Q?0UI6GwVQrLde9s6qeSU3jAFSHiqbRkhQSz56/Plio+SszVntYqvG0YKyJKXz?=
 =?us-ascii?Q?8+B65VEItSMWNJmQVh4mTfLOXSViYg8ghGUmlFZfoViGobLHKXV9D3+3tynq?=
 =?us-ascii?Q?GxpGiw3I/F9nBYImd075xaFwismPs5+1ne7+YIMff+vz/GU/pY5J1z+3QPM1?=
 =?us-ascii?Q?c2gLsNmdJiUp6xsxRRkGDA7s7U6Qcd81n0GCXbz2Gdlxxmv+vjn6FwMyL3eF?=
 =?us-ascii?Q?SqCalPsA3li08bX0x5G1XwREex1jTpvBsqQXQc/5hMQoX0WqMkIpPSVMX3KL?=
 =?us-ascii?Q?LpqK5j4kUzwLsnL0ayZUNvSFiQNiFKLaA8BMBoLd4BOOQCR9U48VhD1O1DfM?=
 =?us-ascii?Q?V2yKq46+x5aphak6mdJ7SdeNZ+/UDUs6X016Uo+TilyXeHUKNE22y1Vs9kM2?=
 =?us-ascii?Q?oPFpXfttkcAjoh/w816iQ4k3D1PiMgVwN93XU8tfbrJHx/91vQN1YlOgNyz+?=
 =?us-ascii?Q?dlxhLw3rLPpcpl9QaJA484ZXH30+s6tuOV1c/wr5yJ/PVWaf4sixtOqCuSMp?=
 =?us-ascii?Q?gtYQkNG9D45zbiUOvVGRYCd9UbTXAsPyTRfrKKQXDZ9ux6nZhmhxK0oxmBGx?=
 =?us-ascii?Q?b9BZo3V5TKa8frJ0nuICK76fbM7VIv/+AbQsNECR33aQBPanMmZ+Oy34E5bP?=
 =?us-ascii?Q?JQbxOzoOBtKYIrl9/lcp10Isf8PZu4C6rDNm1drQlE60vNOsELspOapYi/uJ?=
 =?us-ascii?Q?jkKTQLx6j4Y/iznf1pLbdOGRXuvoZ/rbs2XxRIOjDBZhfde5ta2IXB3ti6Uo?=
 =?us-ascii?Q?YWv6d+JRv/ZHD9INMYD2Ps0yBdORCIQs6XgM4l6yNnUee2YQ/u7i+rR5YcJc?=
 =?us-ascii?Q?B/tJM/8dQtjLBK39dPWNXUcvzdpwsDbbohH1K4H9jyl1MOFpxNJiuGXqtxGJ?=
 =?us-ascii?Q?fZ2MsO/RNela2Oe3ylUjiBoU2xFodPciOWK9Ydb1CKG5/ZZh6GF+TrMIbXi9?=
 =?us-ascii?Q?RIu6eGMhql3XiOfbQJ0F0kgdIm2/xpKPPZGrftrMnnkZI9BS14OKWMUCfSUN?=
 =?us-ascii?Q?uYkyBSfgMad/OKliVzFiMldnmYMHkX/jdVvLg9JRL9sDoYMHsOqJDo0MD5Gl?=
 =?us-ascii?Q?0UMupqGKvGBCTAx6pd0Ewjgr+QoN4as8q0/7eAn8UwA+7h3KWiz/GWf7WveA?=
 =?us-ascii?Q?T4MCcs7DG6rmYhXWZoZe1OSEbv7DWGQw5EUMsx6D3Ru7Cf86fLY2sOT5jxP0?=
 =?us-ascii?Q?zNvG8V9IvWPNMNaPzoEFsWGp4LFrRzGyn2IBpkpBfbUrqn36ZaNYdRZf0JpL?=
 =?us-ascii?Q?Sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da42d465-9282-45b5-f80c-08dafd7b631d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 19:52:41.6902 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dfNbA+n/8w6RsNI8MXqrz2uUiC/B31KiT0inWLyfLuY+6EpOlevzp2MrOet3ZQ27TBMwXvnjwcFZvAH1273i0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK
 PLL disable/enable
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

On Mon, Jan 23, 2023 at 03:16:11PM +0200, Stanislav Lisovskiy wrote:
> It was reported that we might get a hung and loss of register access in
> some cases when CDCLK PLL is disabled and then enabled, while squashing
> is enabled.
> As a workaround it was proposed by HW team that SW should disable squashing
> when CDCLK PLL is being reenabled.

What's the WA lineage for this WA?

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..e338f288c9ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
>  	return true;
>  }
>  
> +static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
> +{
> +	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
> +		&& dev_priv->display.cdclk.hw.vco > 0
> +		&& HAS_CDCLK_SQUASH(dev_priv));
> +}
> +
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			   const struct intel_cdclk_config *cdclk_config,
>  			   enum pipe pipe)
> @@ -1815,9 +1822,12 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
>  		if (dev_priv->display.cdclk.hw.vco != vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
> -	} else if (DISPLAY_VER(dev_priv) >= 11)
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
> +		if (pll_enable_wa_needed(dev_priv))
> +			dg2_cdclk_squash_program(dev_priv, 0);
> +
>  		icl_cdclk_pll_update(dev_priv, vco);
> -	else
> +	} else
>  		bxt_cdclk_pll_update(dev_priv, vco);
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> -- 
> 2.37.3
> 
