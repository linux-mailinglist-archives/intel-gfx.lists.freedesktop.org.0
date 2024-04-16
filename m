Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 463D78A70D8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17149112D3A;
	Tue, 16 Apr 2024 16:05:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WGz2I18P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13422112D15;
 Tue, 16 Apr 2024 16:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713283539; x=1744819539;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7381P+bqvucRnjdvQusjwHseXOrWmnGHZEQ4WUkn5fw=;
 b=WGz2I18P0RKLdgmHnU6zDMg2zW6hpuayNfz6frctipVC83Bk9rYQVkPO
 6nZHqiXlarD2hP5luZpRJCB31WewujdHgUHzLPuoR4Vrm6QBY4e50etHP
 nUScudx1HvQDtaJyxdydHq2LqKsRuYGeimRtoeuFUYjPaXUczetW28x+f
 KbEuYOiAoMTusRox7g1w9HkEtf8svCS2K3PbKMOWV0hqyp/tUW0Y6kWgE
 EwWDnRiypVB6T8TMnWGx6/8UKOIsE1IjDtBB++Bvd1qd4c9YGj45jSE3y
 ka4N9r6kTy5rr0fFKF1RxVzPpoVX35dGUErUT/SChiIvrJEQAD5teYI+B w==;
X-CSE-ConnectionGUID: rpdmNGX6TfCiLChOSoXNyQ==
X-CSE-MsgGUID: a3gm4eypR9iQq588yQs3iA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8655152"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; 
   d="scan'208";a="8655152"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:05:39 -0700
X-CSE-ConnectionGUID: 5TyefJLgRn2QMLxUgG2AFQ==
X-CSE-MsgGUID: bGePnhGDQuiNsGl+Kl0vcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="53292669"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:05:38 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:05:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:05:37 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:05:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GwRreuN9it8f+571A/hG72DYY52o28Z7rxoVfz7PunWIlm+YyBcUBoi6qveg+SfqKKRXVvhYwq1ygKQ+F2msTHKly3auTWNHEeF8Uz6aNoT4LRAPnK32EcZOgqf10wz7kxUJ9avNO6XA0vl9V/6b6QsRiNjr8RKBQERpFyU1RanX/JRW4OKcD35c6/o6B7CwElxEe1qfgiLqf1JUZ9z6Ef/OdRWickWlWcA0q8aGT4yWFt4XyTaxYOjZf+Fi2gmq0mX7U0DkHgJw9y+6xOjLe+kko9CH+kqzlyXzhVRne/LlvrYzUATQWl44yhOPsPciePrOX+mhtBqpNm3Dex9Dhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jnZWEnz3dLrj75Cj66KLOZX5xCs3QPOlRjh68vKeDbo=;
 b=OGKkikk1w3HSUk/gDA4eiOJ/k9QGFZWNf4Zj8UwdI3Djtww94ymobeMxz3Xzrm4wHK/p71owyLvhSDn5D2kN87XJgPtrHqPnQ6UsDX4o2EKct470vKc79kwUVWqVxOluK5pBirnIbco3gsT3YJ6M+4LInGSq4hrF9iQlYQP5eGYzv9vCzEcUo17xSJeb7ijlhLwzK8jWk/MM1vjNGMxppLpzt0LTEVE6/GMDNjylkSczVE4wrropQEfF/2OEMpTgOm66fEvwLGaejxvHoKV5Eo6OeC7zAxXq2ELIhXaIIy9yap/3xfi89SBByWoUmRp4mhOmDTF48Ctn77zD65xryA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by SA0PR11MB4768.namprd11.prod.outlook.com (2603:10b6:806:71::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Tue, 16 Apr
 2024 16:05:30 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:05:30 +0000
Date: Tue, 16 Apr 2024 12:05:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 1/7] drm/i915/display: add intel_display -> drm_device
 backpointer
Message-ID: <Zh6hwjmUQyc_nseG@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <aedbc76b3d01e25bea691b61a331f71a7c63f3b3.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aedbc76b3d01e25bea691b61a331f71a7c63f3b3.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0018.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::28) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|SA0PR11MB4768:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c947470-7500-4798-034a-08dc5e2f0992
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 06gxxgU3d0CnO6Weis1H/x690bN2w7MIaUC/dERC2RyIogFatA7DBCooyp+7cy2hBpU3Lc2O/I2AY3yaGD3F9pXqiMSgNNnwzWq/2LoNN8nPtfFTO62t11fFeWp2cxxBN6+yvCTmDVL4fz3qSll2b6oYw+iUFljd0uXGCymA0vdra8p9IlQZiEb/rniv2pB/Xhr01hlifgDXfh5iYeH6wTcbYg5mbGbv03mpUl3MbPy4BKptgI6m3KJK30Lj1VWCVFG4fqyAHnKepKLPC06wAx3tuPRU9p/f8IuBfnJ1WSbvHwQKvc6kTBl+VhMIGRiVoAcGN3NNdKazcdMrlNMufcETCijUFpbYuhENZ0z7Njr1s17pgYd4NIlKOBaE0jEemcVAJ5ibrzEitZA9NGNNbA+mer/wL1N0gLa8IuxWqI4b/qNLOQTuSia94kEJef9OkXUZRzXDy+Tpcb1AWyAxAb1bOFW5zDzgA3HHVAq5Z638n78CkTvLX+J2gEHuMrXvS8OC42tEnV8iq6rxA1M8Dc+JtN/JZHGQ926hye/wQprOVUZJhNMal+CLkfLxT0wOiMRlgDUs9ak2kwv0gQqKltrFAoZAjtXkKowga+W2tWre948lFxLIYrMuZxKwjTWOEIUzk8P6nfFr/iLmYdD4AHRB5qH/R7GG7RHLL+KVZDc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EZXItwTCfMsXSvlA9gNzG8OC1Gya1O2VNZnkm5Yk69eNkbQ3Him8TsJbhfHT?=
 =?us-ascii?Q?unjPsxrrVq/ecRFM9t4YidqqN83yXYCQ2NBvohJCusU8LeLuQKR4M92Evi4Q?=
 =?us-ascii?Q?feOhTCNt20r2UjULJUVT1TKt+iP/AQN6Ia1kpFCn34GOXAxdWxiCuQepty55?=
 =?us-ascii?Q?IJ/ZSbGK7El8ecpPWOhCc+2i3TmDinRTdu96rK8/g0U229PRhc+0mMYWVnAh?=
 =?us-ascii?Q?2jLRpw8ZZRUivJGVxkYB9JCFSKpq4dQVmWo33l0diBbmLWi+IE56Pa2g0I4l?=
 =?us-ascii?Q?V91aZ3vjPRpoZX3Afw3bkFjbyzju48QD+P6DD9T4jihlEHvfZC7CmIsEgwM3?=
 =?us-ascii?Q?nAckriZ+8VRlyzoXugbabYuc6WOFSh6TFxiH9x0JbW2FcXrFsUv34cifCs8V?=
 =?us-ascii?Q?/S9KBM6CwWTHjkfd57ehyAgaNIjfTpkSVGME+FPHfnOzcyYXHub3X7lDce1G?=
 =?us-ascii?Q?sbwsg5u5Gm3B80GtsE2KNrS0maHNQkITZKuO3/nL7pUmuh1H3NBZK6+alWf9?=
 =?us-ascii?Q?3smAGkbi1HVLmDYMeR9TJTJJ+2oNzy4ahFTCcyyvAnrOq1N34HsIDuwyg6Ps?=
 =?us-ascii?Q?txy0ghNN1c6c7dYWnTLeRrLFv2kmCZZgceYWhqvs9vqwkF6fKewpBbLxVkws?=
 =?us-ascii?Q?xc7UrTXs7eRQqdv+MDmuqe01Z0kc+6AEYNd160RGUxPHZgD8nceKWCOVnG7K?=
 =?us-ascii?Q?pj2N1KLA1xpmgRbRBc4mtdu8EFjVgtd3O4tpMhlWQF4VAeCf2iyxIa5kau4B?=
 =?us-ascii?Q?ORTAxdWKZo6XrRfRcPYBvIBisAtcxQIpr0xsD2We5lM42YVTWdPIgJKiP7Cd?=
 =?us-ascii?Q?bFS7h9hfKWuYd5oWC8/f7OjIu3/3d8dEQmMzFNeTr9kQfwClfrzXTzYOy88j?=
 =?us-ascii?Q?eNM2OqU6wms5YQeE0LK8Fw8zIwQfISOGPTd+qipUmiFSZe43MsoozUbDehkY?=
 =?us-ascii?Q?131Og+xtPdzXAdzmZL1T4rsgU7lsVVly5UCM7zB6lHbeCtp3JSxbwPaO4w+v?=
 =?us-ascii?Q?kO6LBzp1QkIyCSBJFsDq7Hd+OVR7JRPqb1+e2qjDgQ4DyhvDYa+iRAHUYgAx?=
 =?us-ascii?Q?/TWiq3AY7QMuc62HNUu0Rx1UyZ6YZdY8rpYTA6OVOwYA6Kazi+UwDjOrxG7z?=
 =?us-ascii?Q?HGpzkxcHc3RrrHHa9OdB4JaodF5Vzv9GDL1lo+GEfW3HHqrposiAnKUBnmgc?=
 =?us-ascii?Q?y1KUhr4Ax3zPrMfsNIJG0HQxjBRLCiWVtyD2ctG/GVj/0/4uQqKs0KuVoZaX?=
 =?us-ascii?Q?m7T0AZxskE8omVW5rsXndcsqTVBu1zQ74Lr2GZoQjb9Fdln8oimd0tpiu9E/?=
 =?us-ascii?Q?C/uSOjKSncFivKToPSki0XX+9lIrPJ7cu6Lt5T//32EDGMljbQ88rkHo4G/V?=
 =?us-ascii?Q?GdXpBEr6GW3K4CgqbpGc2KqExIarA4OOJzZGE4Lfz0Zq57ZPfSJKxrbpuwuj?=
 =?us-ascii?Q?43uZTwm6eGt2uiPxQjIs/X3Yfmu4+goufpC0Igq7vjfB4bwx1ZIwTPe9iNBt?=
 =?us-ascii?Q?1o5iB3hEtKLRu4xDemdtWSDFit/TIBsq9rUko2uI2ewtVmm8RY1ba1Mi9eZy?=
 =?us-ascii?Q?dieyp3YwpXCuAyWQsCFR5CJoPgsUU2lTmzasr2LH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c947470-7500-4798-034a-08dc5e2f0992
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:05:30.2526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EYvWLx1ywqWSQDgRA/WEZEeY0PD8Fnb+XxNQHJDi6DraaWQouUS3WSj092GI6HDqgkFGKKzj9FClnyZvH83vuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4768
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

On Tue, Apr 09, 2024 at 03:26:43PM +0300, Jani Nikula wrote:
> As a baby step towards making struct intel_display the main data
> structure for display, add a backpointer to struct drm_device that can
> be used instead of &i915->drm.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

I needed that a few weeks ago when doing that display metrics,
willing to add a drm_debug without having to go through
drm_i915_private.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h   | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index db9b6492758e..368a4953bc1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -282,6 +282,9 @@ struct intel_wm {
>  };
>  
>  struct intel_display {
> +	/* drm device backpointer */
> +	struct drm_device *drm;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b8903bd0e82a..120e209ee74a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -927,6 +927,9 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	const struct intel_display_device_info *info;
>  	u16 ver, rel, step;
>  
> +	/* Add drm device backpointer as early as possible. */
> +	i915->display.drm = &i915->drm;
> +
>  	if (HAS_GMD_ID(i915))
>  		info = probe_gmdid_display(i915, &ver, &rel, &step);
>  	else
> -- 
> 2.39.2
> 
