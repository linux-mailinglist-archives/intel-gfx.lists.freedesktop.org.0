Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF949C912F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2024 18:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39A4910E824;
	Thu, 14 Nov 2024 17:55:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxtWZ7Dl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549A010E36A;
 Thu, 14 Nov 2024 17:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731606931; x=1763142931;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TeJfOyc1/RUO/MfHg99Jw3WOGfdnkLUvIWmYxgmuqr0=;
 b=SxtWZ7DlN3pUwv+5vSZggRV47yipCHKzxW6YpGBzSCOzi3ViPesnsYXo
 Ps7slttnmc6P68rJBQdVjLjaCqZmTem4Cn27rMsZUfzdbt4T5ebs4Wo82
 wos9Gp6xs6MmkH4Ywr0XcJ3JR/KpfxxF5a0ZkwuIu2tHNwhz3IeSUMclY
 mm6C17wF+WFx1H68aHzKrLrY5AGd6qpASCA2RjrTd8cXXVlNiNRckNJ4F
 WegNSSdTaI18APgZQok9OlrEcaMdFy1ywQU9rsnKVaWeVTzhCb5ykBVuh
 7G41YHP/gCBA6ik0U3Lfxz7DXxmhBsVanRpZrMbw8QzCPB/n77xGXsD9B A==;
X-CSE-ConnectionGUID: aG5KW71tTk+uCOOiCd7/1A==
X-CSE-MsgGUID: M80bIvbjRrqd/b/neae8JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="31738650"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="31738650"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 09:55:31 -0800
X-CSE-ConnectionGUID: fsohnZyETkObuP6IOF0TAA==
X-CSE-MsgGUID: j/4IUEASRfqaDLOFXZQjjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="88283934"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 09:55:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 09:55:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 09:55:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 09:55:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u/+0kk2aXb7by6Qfn4i44gfiCLOtpq+Hc6ENFZIn0j0MYgy0T2+Xc1ckfZYlMA/IrCzw6CF0fsBJSsvrrg4/htvPebh72UF/u8/7zGJPyLUQGteYWv9PW47v/twUWr7bYmqV7Qm+y13N6v2q8BzhqYQvbDubtJmmQVgSVsnqmXrD3zUPv8xLuRtniwr/aakU/fxhbUZnmB+j435sUFdNCrJOtiGWQ0B2quF2Is2l/oxNG7Mmq8AHOd9eFmnvO3SM4UnHJ97XavY+8fMQG/BnjpG62G9zQAAkF0P/oKBPl0Tl1cOjiN9twRvE4IM/GaCApRJXqU9vSVkhqHdJibPXNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBq4xFgpwMKWK+A9iWYzOHVDl4NKx/0rjqjOr7JW1GE=;
 b=SFLUS4yKHgOs//Nn2HXhIEkRnpMVPv9k+VFZ0ZDJ6neEovy5aqND7s0g0rOeBdEN4bUKW0ICG0eYanILzQtfw7U7lWyTBTjqs07TAE9bnJ3y/gNnqsNxE+5K5DS9Fffz/dYED84yexQo+3Fp8ZHO/Sf1XvxPBqbMH0xJTr7fugukjsFT7a+8quLiZX4mHoBlxvtntW8j8MCkc6DwNealAVSuO1SLqhHrmwSO/0NOFuBlD/4vIY55oMi2E2JCUY71pvo3fDy1Gu9RKAF/O91wy5DrpuwOyYJZ7n9zLHBi98tTZWrzR/RkfrTcQAE1y8uQTufKp8wZZrY3xY6OUiLSEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Thu, 14 Nov
 2024 17:55:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 17:55:15 +0000
Date: Thu, 14 Nov 2024 12:55:11 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/irq: hide display_irqs_enabled access
Message-ID: <ZzY5f-p1ERZwH7mj@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <6dcb90c7786532c7df0281e29a3e680c9551f060.1731347547.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6dcb90c7786532c7df0281e29a3e680c9551f060.1731347547.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:303:2b::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7718:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b28185f-4d5d-4038-4929-08dd04d57e1c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?U738SJyT3IOG6rRosYWYXVfAE8clR3uWHXnTdFDLjTEbRPz5N4j+LcumJpXv?=
 =?us-ascii?Q?4KuoIE4OfyLLouoV/Cu+EhUD+lnUvUIiBiwiFnoLezRHTYXBV16dMfivd3TK?=
 =?us-ascii?Q?T90v1d0O7kl+R3lTwkF8vyMBE/Pu6FRP7MHu7lKFHJwS38R5xfj9Hu2WlR9z?=
 =?us-ascii?Q?fNqZlILbsg5n82ei68Rk1u4WNT8rgc1nWwzxdENtYXSRjsFxDzj144/1k6u5?=
 =?us-ascii?Q?wBcKWICR+GXJongkqnNoDmUOK31Eh8wIM09GI7yaVX3O8XYustFdIEr++UPx?=
 =?us-ascii?Q?edX2hObqbX/fITFHszz32C1s03/d670p4tobQgTKg/L+i3Oo271rWdT4hzwl?=
 =?us-ascii?Q?cOC97VsnMI+PEz7XGgDl8NCRs+tjLlhWQVCR4f8hi+rkfqCsrzXcsNQOiJBh?=
 =?us-ascii?Q?u76LfCKWKsayj62TpMN/u3K6xFsf7WfdhTyWFPXulH77GMPPnFBuHV5mpP03?=
 =?us-ascii?Q?rCKg08OD+WeyAUU9TgO0C5VUaMbEkt8KZCSHkfoQG8Ox4jRlI4WLiZG+dKRb?=
 =?us-ascii?Q?xmSVx5QGjVAJeCfzDDMSu0xLJCz/RhkZhumc9ffAGWd1NrQD8t17nqUvVhgd?=
 =?us-ascii?Q?dGZ9fBeSS9clg52DS2UnEItnkzRxEqaTF+lemLjHoQHP0DEInGROoG9Gmx/q?=
 =?us-ascii?Q?ePIpYB44q3VdpeolGXqUlNrkIzXTiUVo/GIEsAxVVTx4JH6Ec2xlQpBxjC1F?=
 =?us-ascii?Q?ET+wsxMUkenvpBI4/5XthfToxJCKx1FfRDYghR8pQwpFBwuVUPsfGyiAozDM?=
 =?us-ascii?Q?0f3XjIBpEj1DIW/tV/KepLKHOgq4OaiqtE2pPxnPnRlFokEknpL154zG7B/h?=
 =?us-ascii?Q?MHD95GI+881izc5LUIwjHq20upnbgwu7zmQX7Q3szsqPV+8L0lRlJpHobutG?=
 =?us-ascii?Q?6bxg3U4XJnhAI+BpMQXx0k4Gtxzn98uS1qA46K3eivQGo4wp/CH4C/x7Kyd6?=
 =?us-ascii?Q?wweWNhiKf0H7FcjucBkIKCa7WTNSDctX5uyDyqnKTIvei6BlXXFF9SIs1YEd?=
 =?us-ascii?Q?OGnbocYnNAp5qD9ob2GPcNP+XJZyMb3UJi02LIQB6JQlWe8gQDQs6DFyyqki?=
 =?us-ascii?Q?s4nD4lKcqRWZxta6E6MJg528OPGcu8yJvX2PJpkZyz4BwJ3vprapTwuS2g6I?=
 =?us-ascii?Q?N87ahqRftsfTDbJC7zdP8YmsBn+uGOPYBNhjyMLSOFIKnsXWOcrfgr7Z7/zA?=
 =?us-ascii?Q?7kbObzDH3nzxNHlcDAUnDbzRL40rKMW8Mbo9i3ojb0btZMNCoXQ2HID8h9V9?=
 =?us-ascii?Q?YfoBldDHOOfIAoM+m8QDb7BhKsLeN1k+PKdU9fzPmiCQAJNQqfRIagnh1FlP?=
 =?us-ascii?Q?dTq26S7m+kS1ggfODa9PW6wL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BlEa4vJvEkMTbuOFUTxhIjnj+SGAIBUysoCF4E0tk4hlbtobp8ipAzI/WM2u?=
 =?us-ascii?Q?P/Nxes7jqUpBkhlrZvE4ILugcmLE2rHi4V5odTmEiT04JXc9w8WW3iqLG9xG?=
 =?us-ascii?Q?icBOnfpm8eDbb2z4Ch+ffrQt1HiYFB4DZoW/JbBS1rLB9JS34tSJq7uJrm8v?=
 =?us-ascii?Q?XlPB/KxAnWaWjxTzt2jY4ttBnNroWSG5JR1fBCDQNIJJmloMMauHj79KXKIw?=
 =?us-ascii?Q?EUiiVvFfsHo4dv5YkZSdoJy/mwIebkbCPE23WiB2mUJ0ug1z2l3zHV1nqJ7h?=
 =?us-ascii?Q?r7D4ztYQ38xJnQtWGMjR+IXQLX5G73C4YIY++m8eBQfgsLF+wtoQ7s2WELFv?=
 =?us-ascii?Q?yNortyVnlvPOxgI4IRql2JL6at/X8IulAwM9XcgNindKGbFgJHQzSC44NoPv?=
 =?us-ascii?Q?IR8M6/tIg05PUjlUUifown/NNJ+FIwsQJMg+29nCMy6t9eTOBK6f6uJ/eeWE?=
 =?us-ascii?Q?YWrxgsrso6Tt+N3x8RsJ86bqWpIIliDEU5O9bPosBFd6flac6nqnO1pzxeUY?=
 =?us-ascii?Q?C5E1nQ4kSINd4oc0Io0vKNXCYrxo+B9OkKmfSTTRT5IKec7GAFmBhRasM0Ce?=
 =?us-ascii?Q?m3Yw97Yj3sqA4nd7QSc9gt8rhMMYiCDSHrjb1MbT7ywyEAf9Gk+AsFy0vghf?=
 =?us-ascii?Q?s40s1XLI3XO8/GuUXMUVh9BtihWK8NRFV/NLphEKzL/Tdd5UsS7R6nWys3ym?=
 =?us-ascii?Q?hSmNXxwvmBi6NUr0NGoQycs4DmJ6jhRMitKyeIXDoB4ErX6/azu28iElEW9N?=
 =?us-ascii?Q?P6Z6W+1VrCGuOhNmrFsBZ1zer3NADAy6qOJkiqEyStQgo9wLjudew4mRTGWK?=
 =?us-ascii?Q?7Vdb5+3CZlEuy0BrykCqmp6nXk+xCBAGNuupKwH/iS4hvDtaEF9XAvvj8XpH?=
 =?us-ascii?Q?Et/F75AdWzE5jpS93AuzJy786NnSzeOzVseQ/G3eHm4PBW69qYFyHUx38wGw?=
 =?us-ascii?Q?lp++MbjZOSAos89oQMXULGXSED4JtkRJGlLDKCte1S+MlcmMBcZleEOPc2+1?=
 =?us-ascii?Q?/9CXCVu2LAf9TEBeBaFwfyrHHFF7tFxZ8fjEjw7Yo6o566HBC3HpCIcbHYY3?=
 =?us-ascii?Q?evam6xsNlEIinbdSjzpmkA4bX2ru1XqJM5Wd46JyP7d2IVfjU0MOn/mT+pPQ?=
 =?us-ascii?Q?ZsVn0dRbEyrIPRjm5tvSxWknyvvbi2+EyeCPuPvEz2sBpzf/4+JlvBtGeVTg?=
 =?us-ascii?Q?FPNHbWbEkYge+tiN7PdvKUzU0LkFRGKuos09IDp/VTTCbN8NrxMiAULuqGiQ?=
 =?us-ascii?Q?Mzk1ivGJxCgxP1Tgy4KoFoGFhzv0YJZucsoPx0fpbpAnGd4i/Awhe7mGQbiQ?=
 =?us-ascii?Q?NoXjWW6ojpRwUWLZ8DTYBgwvnu+jnY4f1AuMknAFt8Mn8z6WoKEDccWasYWZ?=
 =?us-ascii?Q?1OQ9wIuuq2G/wey7Ecpbas7R6NM1Zg6a/gt+uOn27vtejfgDG+DgNJ0ZEopn?=
 =?us-ascii?Q?plhCtXvepS5Sk7jyCnU5zFmNmUbMAqYznEIUGRGvd00kZJ9sGOiU91sWz6Gd?=
 =?us-ascii?Q?Dn1X6YmyNbd+tqHfgI7SaVnGOaXa/2vWcerRD2gWngId7Wke1GV0Fat83Kqd?=
 =?us-ascii?Q?YrNGxTuZWITw5wuWJoUKGaaHdvh4g1hN8jtVBmbcmCPkg2M3ZW8ht7EezAaQ?=
 =?us-ascii?Q?8w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b28185f-4d5d-4038-4929-08dd04d57e1c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 17:55:15.0184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SJGai+lmbp6XJeYkzqWRN1riv7hWOTgoXjozM76hq2Eup/PVr9PpBTFlcyfPi/aDF43VKMIi0fYN2ehzE7Ol8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
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

On Mon, Nov 11, 2024 at 07:53:33PM +0200, Jani Nikula wrote:
> Move the check for display_irqs_enabled within vlv_display_irq_reset()
> and vlv_display_irq_postinstall() to avoid looking at struct
> intel_display members within i915 core irq code.
> 
> Within display irq code, vlv_display_irq_reset() may need to be called
> with !display_irqs_enabled, so add a small wrapper.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 ++++++++++++---
>  drivers/gpu/drm/i915/i915_irq.c                  | 12 ++++--------
>  2 files changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index e1547ebce60e..d5458b0d976b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1479,7 +1479,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  		schedule_work(&display->irq.vblank_dc_work);
>  }
>  
> -void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> +static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
> @@ -1497,6 +1497,12 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> +void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> +{
> +	if (dev_priv->display.irq.display_irqs_enabled)
> +		_vlv_display_irq_reset(dev_priv);
> +}
> +
>  void i9xx_display_irq_reset(struct drm_i915_private *i915)
>  {
>  	if (I915_HAS_HOTPLUG(i915)) {
> @@ -1516,6 +1522,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  	u32 enable_mask;
>  	enum pipe pipe;
>  
> +	if (!dev_priv->display.irq.display_irqs_enabled)
> +		return;

I got confused here. this likely deserves a separate patch?

> +
>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
>  
>  	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
> @@ -1694,7 +1703,7 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>  	dev_priv->display.irq.display_irqs_enabled = true;
>  
>  	if (intel_irqs_enabled(dev_priv)) {
> -		vlv_display_irq_reset(dev_priv);
> +		_vlv_display_irq_reset(dev_priv);
>  		vlv_display_irq_postinstall(dev_priv);
>  	}
>  }
> @@ -1709,7 +1718,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>  	dev_priv->display.irq.display_irqs_enabled = false;
>  
>  	if (intel_irqs_enabled(dev_priv))
> -		vlv_display_irq_reset(dev_priv);
> +		_vlv_display_irq_reset(dev_priv);
>  }
>  
>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index f75cbf5b8a1c..7920ad9585ae 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -658,8 +658,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>  	gen5_gt_irq_reset(to_gt(dev_priv));
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.irq.display_irqs_enabled)
> -		vlv_display_irq_reset(dev_priv);
> +	vlv_display_irq_reset(dev_priv);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  
> @@ -723,8 +722,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.irq.display_irqs_enabled)
> -		vlv_display_irq_reset(dev_priv);
> +	vlv_display_irq_reset(dev_priv);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  }
>  
> @@ -740,8 +738,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
>  	gen5_gt_irq_postinstall(to_gt(dev_priv));
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.irq.display_irqs_enabled)
> -		vlv_display_irq_postinstall(dev_priv);
> +	vlv_display_irq_postinstall(dev_priv);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
>  	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
> @@ -794,8 +791,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
>  
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.irq.display_irqs_enabled)
> -		vlv_display_irq_postinstall(dev_priv);
> +	vlv_display_irq_postinstall(dev_priv);
>  	spin_unlock_irq(&dev_priv->irq_lock);
>  
>  	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
> -- 
> 2.39.5
> 
