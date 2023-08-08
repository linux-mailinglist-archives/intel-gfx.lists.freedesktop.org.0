Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 58618774BFD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 23:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD78710E112;
	Tue,  8 Aug 2023 21:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5946410E117
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 21:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691528535; x=1723064535;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zYHO5kOGd8xopxD50smYDsBn6mnLxMfUtGWwwVT50L0=;
 b=DN/gqnCsf6UVjpi7FxuqhYpVrKaqvSl35qws+lHYXrUuVdlbA4U9bJFg
 mJKW1KTXTyFG/44aHff/VcwhIZOnrczjLh1Uarrn7f+n0wpZ0LKhf5aHY
 v7om3XMaHmO2i91uliCP+uRJ2h3/CA/VCHNBTrLzXpLKN7FL4FCvXwYMT
 EqbeL5JBn9zsNyoTkqY3sSkUicwwAxe18YkVb46lVKX78qIu2cE9wjQwY
 9jyuvzfVcN76Yc8+ckzphsFc5uLrJmb+Op6L92NjdfM94gsY0ZpRIRbmj
 3qH15OvM/fGGLUeBnCGuShGfnk4LXSKM/cWLjzgwW7orgMtod2ed5X9ka w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368410503"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="368410503"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:02:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="766543735"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="766543735"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 08 Aug 2023 14:02:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:02:14 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:02:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 14:02:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 14:02:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RqaNmvsFgnoG/ENpkmww9mjIzdPc5i8gBXlWx2T4/0eisy3TnNcNmwGdGajzy4uzbynnj8+7kOzvjIw9zk7jfMqYs+9E6jJyeDhXQMT+tdmjB2qjaJ3Vl09LXQCve+iO7vfSKm0c8iBpRCmJkjOzf72IOu3W/PCP8zbq4fvLdDcLiZLSdLMbXr+NT3k/hbYCSPihkr+JFsxHGAsKaTcBtKvbvT0DmKvJjufcm5SNee4atJXwJ6D5Gq0KIldQPaslJl3bdyvYgdKApxE5xeYVM701ktNKwPiB9pUz7I6ihd2rtRCuYS1qtNiPhqktckj4IYpirmG/xUIv2TZxZ7ciLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UQsfUU8XgRpLfNHV19tCxZjyf6pmOwqq9/HNz9P/6CM=;
 b=f65CLVyF34CUSo6vFnzxe58wcm5kefDE6yQf9VLFPZB3VPEQZeSmW/br+/pxy9RkN2L20yZ/dnqOGRlk/WT8pIPm+9RQgPEX1DzXYZwHFonl4PdERzXqkvjLVqKOwDaSmhaXExLAx7SiiDinYX6B3v22fKcsufmXseYFgcvV1azAxHcHv8+bXmcwST4JcIFzBhDFa5XXcS1QnSz8JKv6vCXKNGQ3s0K/a0mA4U59eEnGtUXEn5eKpWbI3I7elG87rcMaM+bGTO+27Dnes3iOsKg7GiHLLLkj7hU0f5mvN5Sd1vfPkfYXWXxOK1gMNnuWW/bQ9SuBZ59PbIX1kGn6Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA0PR11MB7954.namprd11.prod.outlook.com (2603:10b6:208:40e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 21:02:12 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 21:02:12 +0000
Date: Tue, 8 Aug 2023 17:02:07 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNKtT96JfeN6J/pa@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
 <f4a8570881e9be28a2406134b2898b8680f9e765.1691509966.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f4a8570881e9be28a2406134b2898b8680f9e765.1691509966.git.jani.nikula@intel.com>
X-ClientProxiedBy: CY5PR17CA0016.namprd17.prod.outlook.com
 (2603:10b6:930:17::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA0PR11MB7954:EE_
X-MS-Office365-Filtering-Correlation-Id: b4b5d3a2-cee4-4a98-37f3-08db9852bc3a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IJn3XJgIcWt/F73RYaChsriDvdKT2/SVTlSnR+di4CiZBfq389G/lyfVOmQx2BpQDwYZBn8PYh2xkWIdb+9qSDVUyulh5qtAnw0U9Scnu00qR7UXX3wFlRpLB/ZW3w6reZseAHDbQdOw3FXVuw4ImSThxXkC+2cgSJkbpkF0OrQ2bcf6SzUA4GED2sqybG+DkKyr1Fu2RQ6pEPvmzojOcaTj5hdSmPVHAAe0ZMuoPy9KUp36Nbzt09D+4wHzF6ncHpWAqz0tNPrDC68R74G2u6XRLaOcOtArdsOk45TLGoU9NoNgE/y07IFqE833hfqZ4i9PX04jLzsfJpsvHlhyO3G6uYnGZkSwTyVJDy96m7F9NXNFegUBaqo2rxiT0QLku9xkeU1m2c9/zLvDKrSX4zURtQht05OB/Px4OYfVQhac1j6fkSnr0SgTrRtXDCON4ppvEjAkiJUo2vIyxp/zHQJHJIoevvZ4QEpqMZgi8sr/0DBmnIU+NiQIpI/vSh74TnCNtjrLHRdFvQTXwvCW/92ccdILH9FxvBDKvDkOa7tCG85flmlTcPLdzii7KfvgfyRkXhBnVOnUwaQmTHMhSWtwaeaMNOTB6GoLTNyVmHU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(366004)(376002)(136003)(39860400002)(186006)(1800799003)(451199021)(83380400001)(2616005)(2906002)(6636002)(4326008)(316002)(8936002)(5660300002)(44832011)(6862004)(8676002)(38100700002)(66556008)(66476007)(66946007)(6512007)(478600001)(82960400001)(6666004)(37006003)(6486002)(41300700001)(36756003)(6506007)(86362001)(26005)(87944012);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xOaKTiUyQNys33fqpheFX7OL52xX/8HXaOdok74DzY0S/opiizqREn7MGMxb?=
 =?us-ascii?Q?ADQf0ADE7WbAcEcg/6GUXbWae4odQ12sLTXDS/9aqo2L1ZdaN2khFTh9aLSd?=
 =?us-ascii?Q?K8ZckUa2d+NP9aYCuCfpBnnPxhrlbEZRVECn1rIBjYCxgIbLlEF7muXCejPf?=
 =?us-ascii?Q?OD7HHXBGkioyNHC6HA7ukOAL+xzD4Nl/dq/1cj/xMnI3wgai8qXaD6O6I4vn?=
 =?us-ascii?Q?BbcvT1NjAoPbdLWC0SPneCjhfbpCcp/RtKufksFiTnqw3QOEOlhTqDIJUv2l?=
 =?us-ascii?Q?KO0I+QGr6r0TWXQqEQyakxYu1zMycegGbEwKmwpOkhwCgAWcd55OJhu9lTyK?=
 =?us-ascii?Q?AKn/qfkjVZZ60XWykPoFzkXTIrC3WDslihu5Z5t6jmv+Ziz2h5ONcdf3oHiV?=
 =?us-ascii?Q?SI6v7DvsTkTKZaqoeLB8GfyylAIW9mWDbfDubd44xpregMPLWG6yqcsaRpzo?=
 =?us-ascii?Q?G88t+V1JDp1x5vZVnIWi1978Wk7qsvpcs5u7pv5kL8hy1LCPG3/znZhp6apG?=
 =?us-ascii?Q?sUU6UM8wvd2gGQvOt0obtiWAkXMa4BmeOIH73UsE/WYR7xGQ7ApU3kpEgg8Q?=
 =?us-ascii?Q?VoGmzSSOFr0Yah/AtcViYeQ+OBAp6nCtCQAti0oy2kbpZWHbDlipQdq8H1GI?=
 =?us-ascii?Q?fVntbEIQKhKX+PwVDvu7PmLpYLibNiaFVj/QfkAciWsyle5z4T+36wh/Nq57?=
 =?us-ascii?Q?sGH+PmFP1/MnS/MX2MilyJkkGPnYdxaGTkyIfuaPwV8AxJzDeXVFFrwYaiFB?=
 =?us-ascii?Q?nbLVAMb9sLtQMnvelx26dGKAMeu3MtP9iLQwpZ6ZQUQvUdxmBOoB8ydEHJ1t?=
 =?us-ascii?Q?sQo8pVhZ959EFoDw3i+IU01l4LYeT7ttZ3/CzNw2y3n7OD4B6GYbnWhR/BPM?=
 =?us-ascii?Q?ME7S0auKP/byNGNUgP7m/0oCHIg405UrTm7QT6tdEVCEabimfShEPeDmHzar?=
 =?us-ascii?Q?2r4zSfv22XFo/GQ2RA3Vul01HuzK5GnLNyzyNTv0Cx60swXFJv2c0mtDIxsC?=
 =?us-ascii?Q?2hVJeyrAUlEurAbpKDEV4w5DUx3ESYn0MRp4b+FqDv1KeJToeKksx1xrMdyi?=
 =?us-ascii?Q?i+5UII+SBywvtyRpbQjhks9+1JMUVu+CaDQmDOZVtJcCYccXaHMcypJp4NBy?=
 =?us-ascii?Q?7AAd6fQV1VooYXf7ANZ5VphPjTazryelEJyXrGUEZzJGwEdWo3uc+QRz4ya0?=
 =?us-ascii?Q?Bppf4Brdvk0rqDWUOevOOZWIqJE2AYgHcXpTM+sKOMB3sRP/gLiZeHO8qG5I?=
 =?us-ascii?Q?c82puRRdGFMGFSmLW9/qvdDTZnbRVz6X11HOdfkaGVRWvFbrRJOzFL/T9GLr?=
 =?us-ascii?Q?xcAKuuiRUJPVAYMFwgLBJhjdhVLZsm9Qkoe7zenvip88xbeummRxxSiOVvwT?=
 =?us-ascii?Q?Y6KdEJUxzuu7SqD7N7Y4kdtRefRU0uAwv+fFrBwdVxexCg332s2yxDswpMLs?=
 =?us-ascii?Q?0puv3pf0ChusYQ7J58WixCU69IeFzACq2Pc2EA7rzyASHVFp4U6MLPgh6d69?=
 =?us-ascii?Q?ruTM2TOwcw8EosN0wYHZZVRw10vJAxSjTROMClVvSm2+UVfOZcrEh99jQ7eQ?=
 =?us-ascii?Q?5B98SRTUxLbnGz4e9Bxz5LMXjy9G42elbyJd2VjFkRTjgI82ap6Ft/Jh8MUF?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4b5d3a2-cee4-4a98-37f3-08db9852bc3a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 21:02:11.9176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uUt6gg9vF21gqINWcTR0cX+Q02q5Oz1IlHCB2hBaTiZE9fpFS32o81IbplzbXUte/e4YRzKgRfT71QN+XULUvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/irq: add
 ilk_de_irq_postinstall()
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

On Tue, Aug 08, 2023 at 06:53:30PM +0300, Jani Nikula wrote:
> Add a dedicated de postinstall function.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 41 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 +
>  drivers/gpu/drm/i915/i915_irq.c               | 38 +----------------
>  3 files changed, 43 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a706ba740dd6..a697e0b32c34 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1583,6 +1583,47 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>  		vlv_display_irq_reset(dev_priv);
>  }
>  
> +void ilk_de_irq_postinstall(struct drm_i915_private *i915)
> +{
> +	struct intel_uncore *uncore = &i915->uncore;
> +	u32 display_mask, extra_mask;
> +
> +	if (GRAPHICS_VER(i915) >= 7) {
> +		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
> +				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
> +		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
> +			      DE_PIPEA_VBLANK_IVB | DE_ERR_INT_IVB |
> +			      DE_PLANE_FLIP_DONE_IVB(PLANE_C) |
> +			      DE_PLANE_FLIP_DONE_IVB(PLANE_B) |
> +			      DE_PLANE_FLIP_DONE_IVB(PLANE_A) |
> +			      DE_DP_A_HOTPLUG_IVB);
> +	} else {
> +		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
> +				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
> +				DE_PIPEA_CRC_DONE | DE_POISON);
> +		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK |
> +			      DE_PIPEB_FIFO_UNDERRUN | DE_PIPEA_FIFO_UNDERRUN |
> +			      DE_PLANE_FLIP_DONE(PLANE_A) |
> +			      DE_PLANE_FLIP_DONE(PLANE_B) |
> +			      DE_DP_A_HOTPLUG);
> +	}
> +
> +	if (IS_HASWELL(i915)) {
> +		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> +		display_mask |= DE_EDP_PSR_INT_HSW;
> +	}
> +
> +	if (IS_IRONLAKE_M(i915))
> +		extra_mask |= DE_PCU_EVENT;
> +
> +	i915->irq_mask = ~display_mask;
> +
> +	ibx_irq_postinstall(i915);
> +
> +	GEN3_IRQ_INIT(uncore, DE, i915->irq_mask,
> +		      display_mask | extra_mask);
> +}
> +
>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index ce190557826b..2ccc3e53cec3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -61,6 +61,7 @@ void gen11_display_irq_reset(struct drm_i915_private *i915);
>  void ibx_irq_postinstall(struct drm_i915_private *i915);
>  void vlv_display_irq_postinstall(struct drm_i915_private *i915);
>  void icp_irq_postinstall(struct drm_i915_private *i915);
> +void ilk_de_irq_postinstall(struct drm_i915_private *i915);
>  void gen8_de_irq_postinstall(struct drm_i915_private *i915);
>  void gen11_de_irq_postinstall(struct drm_i915_private *i915);
>  void dg1_de_irq_postinstall(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 8c074643b6d1..d63f79259637 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -772,45 +772,9 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>  
>  static void ilk_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_uncore *uncore = &dev_priv->uncore;
> -	u32 display_mask, extra_mask;
> -
> -	if (GRAPHICS_VER(dev_priv) >= 7) {
> -		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE_IVB |
> -				DE_PCH_EVENT_IVB | DE_AUX_CHANNEL_A_IVB);
> -		extra_mask = (DE_PIPEC_VBLANK_IVB | DE_PIPEB_VBLANK_IVB |
> -			      DE_PIPEA_VBLANK_IVB | DE_ERR_INT_IVB |
> -			      DE_PLANE_FLIP_DONE_IVB(PLANE_C) |
> -			      DE_PLANE_FLIP_DONE_IVB(PLANE_B) |
> -			      DE_PLANE_FLIP_DONE_IVB(PLANE_A) |
> -			      DE_DP_A_HOTPLUG_IVB);
> -	} else {
> -		display_mask = (DE_MASTER_IRQ_CONTROL | DE_GSE | DE_PCH_EVENT |
> -				DE_AUX_CHANNEL_A | DE_PIPEB_CRC_DONE |
> -				DE_PIPEA_CRC_DONE | DE_POISON);
> -		extra_mask = (DE_PIPEA_VBLANK | DE_PIPEB_VBLANK |
> -			      DE_PIPEB_FIFO_UNDERRUN | DE_PIPEA_FIFO_UNDERRUN |
> -			      DE_PLANE_FLIP_DONE(PLANE_A) |
> -			      DE_PLANE_FLIP_DONE(PLANE_B) |
> -			      DE_DP_A_HOTPLUG);
> -	}
> -
> -	if (IS_HASWELL(dev_priv)) {
> -		gen3_assert_iir_is_zero(uncore, EDP_PSR_IIR);
> -		display_mask |= DE_EDP_PSR_INT_HSW;
> -	}
> -
> -	if (IS_IRONLAKE_M(dev_priv))
> -		extra_mask |= DE_PCU_EVENT;
> -
> -	dev_priv->irq_mask = ~display_mask;
> -
> -	ibx_irq_postinstall(dev_priv);
> -
>  	gen5_gt_irq_postinstall(to_gt(dev_priv));

some minor change in the order here, but I don't believe that that
hurts. I thought that maybe a separated patch to bisect, but thinking
better this is not needed. if this patch causes problem likely it will
be this line anyway.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
> -	GEN3_IRQ_INIT(uncore, DE, dev_priv->irq_mask,
> -		      display_mask | extra_mask);
> +	ilk_de_irq_postinstall(dev_priv);
>  }
>  
>  static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
> -- 
> 2.39.2
> 
