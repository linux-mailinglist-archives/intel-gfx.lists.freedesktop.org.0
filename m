Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 309338977B9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 20:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E979112200;
	Wed,  3 Apr 2024 18:03:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iHxzAyPP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA6E112200;
 Wed,  3 Apr 2024 18:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712167384; x=1743703384;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NS2qSUdIoHPdbtTm+BBDlUdqmIYuhnyNLLd6HCPlObA=;
 b=iHxzAyPPiE6NdaoxBbqJisXN0HdwYdCl0ViwRmErHs0XR5vZ+O6VT5B/
 +dGBtaE8kStcqvTqWeHxciEqdgT79c4QiTkzEsw2vl3KOPRAk7WMkTVVZ
 rkP5GDNyTsFPBVy6DRveAZfGuE0JujgC1LCN93JZWT85Xj3zSJM7RIrH9
 Luqn/EQCcj4wOtEgDJ2Ymm/61aPvSG7LAJpv3FOcNmuXQGfN+y25/SPrG
 Y3bIS4+zbRuBRQvTJ6vIZZjZGSWpUp85SbSvGVfgGtER3RDzBMShjgE0h
 vddm+Pzsm/uox7WEFZSSPzZ/qG+2YVjwuJCM8hUEZ3OzU21OMc9xUENcq g==;
X-CSE-ConnectionGUID: frT58lBYQ/mrnrROKjU1vQ==
X-CSE-MsgGUID: 9Rx1q88xSNG+NmqeKebvRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7652400"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7652400"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:03:03 -0700
X-CSE-ConnectionGUID: XbgViGbeQVScnryYZGti+A==
X-CSE-MsgGUID: b4l0NcgaQ4e503CTcIlPLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23200426"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:03:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:03:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:03:03 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:03:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/zA3v0ODl+ObDJbtENKldYOaMJxIJmZf4gqBNTrvnLiwAjN8P3A5Luu3g5KX27J/QA4FCVDmJuhV223r0sBYuKlNyIAzVouhdfuLjePDov4DwWdZKFKHBi6FgU/BoTheaLABMtMP/LR6VgB429B39FTETX+YX7xZ4mbkoEQwJb3AL27kPCJPBK9LoG5j4l6ASfJZVmTMbOzQztCkaQpPhIq3phzbEfgigewznvNezf9mkwlyzfSlDb2qu5xBo1UvmnSs3wK5cpeUfXpUWJuXw78ICsCfEyuQ0A8w1jZxGOcqiIWdTf34XTwoi+4i2lcU7EDC7BVfvYBZNXKXgXqCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GPo93ulvU9tOQf/hDZ6lLuj3ABkxVRyOlMbIALoxjs0=;
 b=IUA5zJY2nt+tipRxIflxxtAThOHnC9/cFpilW2uwW+eQsOyIIkdl/RVknp4fETyv4rGxV4xkipR+r7n8n5hdbEbTFA63nBG3eEnU/UcrmUQtRFGt1q+WBFBNS7MiPyQZjs51EWZG1YNqFWhEq2t/F+ebFU/Z7iZxhByS9nkVWltgnbLuYW+sYrdwIiffA4HAzsjq67c6Fy0wwyGGajRLOo9UBaQRu7XY4JoVelm+21U4aHfn+eiDg05U6tLS2cGauO3XDbzFHx/gPNWSvKMZ8qoDMZL1JNYm3VyzPYT+uNvKCouIcNu0bolD6DFqUaUrGcmo4Q1g2R84aSjwj1IltA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7668.namprd11.prod.outlook.com (2603:10b6:806:341::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.27; Wed, 3 Apr
 2024 18:03:01 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:03:00 +0000
Date: Wed, 3 Apr 2024 11:02:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH v2 18/25] drm/i915/display: Enable RM timeout detection
Message-ID: <20240403180258.GF6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-19-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-19-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BY5PR20CA0013.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7668:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mg/Yr5WycVrY5pSil8gvq1RLNX0eGu4UiVw6p3k31aARsDEwSnjZgO/25MrtipCv5kOECdam5YDg9zZY03DTluDoI8WvmK0HpTeqWEaeLRUi2TrwnkVVDY8z1OL9fWFJMuPLSxr3ht4MaznQQVzonnntsJjjpnfQtjTzZ7qAi4yi6bk6u90AlNPxNyzT6Re24yOEQkK6nidPCgc9WeCZFdZXTTlONE7fdiLa2I9K2DtjL8crPucOUeOUr5Jmy6TpbqQD535Iey5rztXK89px9/xEYpYYnd3IFu8kv5u5EhmN6OdCctLk6CKuMIvCbbhIgAA1N0tnVAB2gWpoxZmI6SqxkHFzh7prHalnyeZfy1lwyyJ8yiweRUbe4CNHYlJzweRCiYV9ncqJieXJ5/yWV1hIVeQrczWQGd+uNHrZDNB6Y/E5EEDJAgY+zs8Z9DR/3GqIHp5DEWfd+KElNFc10PvZN3qVsP9+KqGjQyYDUKdYgDcyr4xuAW1rs/VmR26OhCp5XQgaA7Hvi/9OJg5FpoB3NCvKWjbcirk7pz4KnaYpCX7mgbdtEoQ1DhbcJJo1aAjYsLIVFZRvUZ+AIyL9bN7wVD9QXjjssVfRTlVYlgEYDqWOgxEdOupJBQddgSS8CryxjHaWke8jAHZkeLEEIpV8AzLshFdCCo9TrBTj3Zk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?plvKdn4SfkTJbypOGgzXVEXqFRKRok09/ZO9s3Ivhph25V31zBKM6BnAMqv/?=
 =?us-ascii?Q?A8LF1XqUke+4pTb21GH5IprGGDZDi3NAI/6AWvfoERhGSSPPSSK1sbi2FG+J?=
 =?us-ascii?Q?bjwk54FDju1ej9UUCzn0/mavWwv3rStKofQ00v/4x1n6UCNG71b8ItV1w25b?=
 =?us-ascii?Q?R8wHhCAmLtdWTcFwv/lzxViocRALRYRMnaoKxFH4gVIhzKlYwPr1jflW0Lh+?=
 =?us-ascii?Q?I9LXdAGc9bPp7VNP/+Gitkb30A+GUYQmz+G02s3WMsSSjvPvjM0bRsOSlHMi?=
 =?us-ascii?Q?HLu/SpPA7X+xpVw5YAHro0US7vi0mf6dNAmX5uIfA19/c77wyopbqYfwoFF/?=
 =?us-ascii?Q?0BIJjTRDH1gvxnVFK+oXbrNPD7bBokvCXShjuzGy7e81JkvCortdL/Rc+TnZ?=
 =?us-ascii?Q?ajDqYYHaJwXIigkbU5tR2oeWNOjk3OK05oRljbd0n3YEpVMtTgA9vNQV30Bk?=
 =?us-ascii?Q?/Xg/51lbVvWLh4hhsfv/h88m0HUQWKq5dkENOgCXJuJ8oJBwQyA2Vt+fBVGq?=
 =?us-ascii?Q?YN7M3J/Zm0NhZLRTQQIwbsg6znqzXrYO6kwrtVTl/QlF980KQFi7QE5fLfAo?=
 =?us-ascii?Q?EBgVW5LljLCRD+5jX+HPpL8TfTWa64GIeUItK+WrkRztJbW/uAOCDc2UWenE?=
 =?us-ascii?Q?pF2jeRpABfwU2RB8SXM2+JPKLGopR3t9KCqy3PH8rASrsPXwd6AS0liS5WzO?=
 =?us-ascii?Q?51WcueUEaR58XDG+bKIwdUQCbR+vPVV/g/VXHzzZnDSExjDhDxpKRIa0PiuB?=
 =?us-ascii?Q?akDc8hIWFHFRJScVHbPcYtNw1C+U8uzmePJhavMNK0rlmBU15POVZ7kMFx3P?=
 =?us-ascii?Q?LZx3Au9UKJso//Ez0x03nij+RFZPlHP0zQbVtR5hu3ON51xZZXm3QkahvCt5?=
 =?us-ascii?Q?qiU7/kJtHbdrmnFK5OEJwx1Az6yn3SepWoTENb8kQW852t5puf7FpOiWjfcW?=
 =?us-ascii?Q?XWvH9+W/4NzaHRaxyMJg8De4Jr+Yblo+SozMg/WiZUNCsrG+n0FCGLzE/00s?=
 =?us-ascii?Q?VsRY4HLx0b3Y6AUN3qWmvOzYC/C5AuzSrKFjCT08WmOBM64stF0ZswkTB8FG?=
 =?us-ascii?Q?q/H2J52UY/KBbRdrVubM1Ari/9pM/gHYca9bArID3tN0lEZTTVYnOJoGOpVI?=
 =?us-ascii?Q?pz+Zas5j5d/PebK+6dOAC7k5prgKixMHTBDivzM/MBsctmkv6tmed2S2rWeL?=
 =?us-ascii?Q?in0/FnZAACDAkmcpmchr1JcW5Afcc3IVmLyurUhXhVrMhWtVAma035F23aN1?=
 =?us-ascii?Q?id0rnNwIt8MlhuVciWZyB4Gbec75tDDLXdBSDM93S8K8UPYz4g+rGQKkPvx8?=
 =?us-ascii?Q?RUnCbLJucEpxCQtCV22aho+V1pQ37Zt1YhiAce6NqemK0uA6St4AiRXEkC8y?=
 =?us-ascii?Q?VV85mY2H4m5VQBwn8xjLfxuwwD6nfi7mVJLtJz69TgfxDmORCWoWloLEZY8e?=
 =?us-ascii?Q?PNuZa5IHgdGzccWei4Nb5cnzjzEQCR3VC4QKmfgqabHsdveZ2I2Z3peO54rq?=
 =?us-ascii?Q?rV/O9HPfgD/4ONHHMwfJ75VrP7BoWlJyq546Yn6HXVlDqRAeHLIh1I/yLZ0a?=
 =?us-ascii?Q?N/FzF8U3gSdO38FjCD8gml5uHW2SAU418gWeyjHVPK6+oELn54jeepZIY2HJ?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d75700eb-f42a-4c44-7458-08dc54084ccc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 18:03:00.6903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6KTTNBTBSTPmTL0ggERPuaq2MqWunIWLtQgosaiPe/oGv/CnHmYpjEhfgYGBvhln9U6dv2NN1yTXsVK3ZlATH0ppAIWkxZ2JXqV2xN/YQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7668
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

On Wed, Apr 03, 2024 at 04:52:46PM +0530, Balasubramani Vivekanandan wrote:
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> 
> Enable RM timeout interrupt to detect any hang during display engine
> register access. This interrupt is supported only on Display version 14.

This doesn't seem to be true.  Bit 29 of the IIR register is still there
on Xe2_LPD (version 20) and I see no reason to believe it won't continue
to be present after that.

It doesn't seem like this patch should even be part of the BMG series.
This was a new interrupt bit first added back on MTL/ARL and continuing
onward from there.  It's basically a "hardware is broken" interrupt that
might be useful for debugging, but we hope to never actually see it show
up.  It isn't something that's related to the general enabling of any
specific platform, especially since it's something the hardware already
supports on a few other platforms already present in the Xe driver.

> Current default timeout is 2ms.
> 
> WA: 14012195489

As Jani noted, this doesn't belong as a trailer.  But it's also untrue;
this isn't related to any kind of workaround and the number here doesn't
reference anything in the workaround database.

> Bspec: 50110
> 
> CC: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f846c5b108b5..3035b50fcad9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -851,6 +851,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
>  	bool found = false;
>  
> +	if (iir & GEN8_DE_RM_TIMEOUT) {
> +		u32 val = intel_uncore_read(&dev_priv->uncore,
> +				RMTIMEOUTREG_CAPTURE);
> +		drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);
> +		found = true;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> @@ -1666,6 +1673,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			de_port_masked |= DSI0_TE | DSI1_TE;
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) == 14)
> +		de_misc_masked |= GEN8_DE_RM_TIMEOUT;
> +
>  	de_pipe_enables = de_pipe_masked |
>  		GEN8_PIPE_VBLANK |
>  		gen8_de_pipe_underrun_mask(dev_priv) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 875d76fb8cd0..d1692b32bb8a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4212,6 +4212,8 @@
>  #define RM_TIMEOUT		_MMIO(0x42060)
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
>  
> +#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420e0)
> +
>  /* interrupts */
>  #define DE_MASTER_IRQ_CONTROL   (1 << 31)
>  #define DE_SPRITEB_FLIP_DONE    (1 << 29)
> @@ -4398,6 +4400,7 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)

Given that this was first introduced in Xe_LPD+, the "GEN8" prefix here
is inappropriate.


Matt

>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
