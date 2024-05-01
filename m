Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ACC8B844E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848FB112FF8;
	Wed,  1 May 2024 02:20:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QpxWgqDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BE5112FF7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530052; x=1746066052;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zN5KNTFRKMLaVvPywi7L5IaJMsEVkVe9t4DIXU8sIGA=;
 b=QpxWgqDzqYefpyGGha2pn1J+vlaxcv4V1uKGqgnS8zI1gov9voZdbiyE
 +wND1f6xf+3GfPgkeNM79w0/7X3WW7pmeRiOWrQN01Kxmk1SaN2sld518
 FIp5L5iq+jA0C9Rz9qI/HCjYQ0XsUSQ9LsBuFKiZDDaVaxCa9GVF9aqdG
 yHmh599p7p4upxEbnNCdSSkZmpNEVyXeJRzcCof/48iDcuGX5fwQxR6br
 ixew8jJ4XWBIHZ572qrSuuL3mfwhVIJ28bZXS1nmMJe7zAnLkWzJh/wLz
 O+tcn94i4OtcNfYn9rk6s0O7tc7eSfeGjFSbw0uWMcuaiYcguTz9BL4c3 g==;
X-CSE-ConnectionGUID: 175NTQrWSHWhsbhXX83MDA==
X-CSE-MsgGUID: DMZgGs35RnmlPv/43v000A==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="13188936"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="13188936"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:20:52 -0700
X-CSE-ConnectionGUID: T7uxkZl9QYKdci0ZuIM46w==
X-CSE-MsgGUID: KoGW6hjgT2SPzMmiST+6Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31273274"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:20:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:20:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:20:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FiTbQX7lYEYkQP+QUm661RgIiHufhPL2GPReBK0SbU1/X6R3bkVOpXyFasTd3BzwcOA/7sN6gxk2qU+YlKcVF1WgnETrxSKuAxP2jdJejFPUE8WJqr9hc8Dth/olqOTiZwtRb569BmP2rESvBZTHgY+dNQQqYi5zzMGlOrcOAn7Q69plVaBTFH7Bf6acjUOYxnU3ep8DB1x7T2jD574tEnrfeUAIZTEf+vixIHRPGpwVDq42Oj6xQqnQtltniK1yq9LB8MuJMv73RL90blJvM9hshiOR+y0mfJ7PhRzgH358257EOZL/vi+7P5Q3EFdgk6w7xfHlGnFvqoRVcJUPFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wBSC3D9dTEYcNXVG0oYRshIAqr9wElKFaO1ef1jrOiA=;
 b=dP9ilJFIsGTaAg1jKcisJwD6ALmHod6OlxuHDHrrv2/rTaIeTnEJrdEKdI1r2HwnCGahdAmbH9FxKa2MOhp+h/PDVXNdQtYA1S3auVkpNRFv6mJwePw5nfoVIWjZRFL93eaQR2oBmMuoS57hvoQn0tKKdwsedQIIUhDHtYtFx0B/k0hIMYLKhzOiDFelYwjC/gAEe45wqaOr9SgCAwOWMqoUEcTnWwuFAOHiE9WKTr4EzfCE6GYyN6oxjRZSVv8TLorhb3vbXu1/d4crKhhThQH/d2c34ijSL+XethrgHjMOP5jekxIg3ydvEQZnya2ablJx8AQ59tOsNvszkTIsGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7731.namprd11.prod.outlook.com (2603:10b6:930:75::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:20:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:20:49 +0000
Date: Tue, 30 Apr 2024 22:20:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 11/19] drm/i915: pass dev_priv explicitly to PSR_EVENT
Message-ID: <ZjGm_QRunJ-gj2lJ@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <9bc5819afa46416eb8f12ac050ed4d3bcde34b63.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9bc5819afa46416eb8f12ac050ed4d3bcde34b63.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0330.namprd03.prod.outlook.com
 (2603:10b6:303:dd::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: 182e69ea-d089-4af5-6278-08dc69855121
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hBDjOuJ84AUB/JFzzMT+rXoUKVOJFIMJJr5Zvy0LGOnea9vwBaquMB5iGfTw?=
 =?us-ascii?Q?fsi5RpaDSvehuyqq79I9FhUhJklKTuV6DMvvM7qXQBa2GLfp8lR79E6quBgy?=
 =?us-ascii?Q?Lr14gDIbby/svJyr9r8D+/mp6gDKelm1qvz6s32J0geNGlm+ixbcHm+EmBp2?=
 =?us-ascii?Q?l3KT5dKOawIv5tbVuDbEY8VaQeD4yttu6RD2tIlPUafRquexDfoOVnLmBoPN?=
 =?us-ascii?Q?bnh9kAv7RTB/05Gtcw6Y0vlrLrEKOm1UZu6KzjaDNQWCR9EYD2aFiNGXKmC9?=
 =?us-ascii?Q?KYOcJA+Jrz2mRxEm6o7w2IZdbmBF0LhP8DXT3+9ZrQpQsWXmCBsaanjpZoYk?=
 =?us-ascii?Q?w7bdc4GA1B7XAlRkJhAM7Ud9MQQUlLWFq0YfKvCcywU1IDOETI00ZM+bI9k6?=
 =?us-ascii?Q?MrZDZe5RP9m91iNX1x5Uv9RlcaV/gQbruFjgI10mQOXCY4T8w4zxczMzHqoU?=
 =?us-ascii?Q?c42C0vlyxcY86BbDoecdXXE6eLQwGWMbPrI1YakwhIUpiXDRSoiy/A7F+sA5?=
 =?us-ascii?Q?1n5AhxAxCl8LBUnRgElWVXDqjfnwZi5XyKDW/1OtkLQQDjhEjVyVqtd93ktg?=
 =?us-ascii?Q?tNz9olEWpv2HHmPiXt7GANvlnezQ68USiw7LY7boKlAGGLq4P7sA38JFRVHy?=
 =?us-ascii?Q?yyv0t7hSMCHUO46TFDKk+HvF95n8/yMhjKk2+DeJBfDr2xiNHshvLltF/jgF?=
 =?us-ascii?Q?GqnDWGviVx+TNyMQEgd9TY9bc+3foKl1U63YlVFJSeDXrYp5YmlVPrVZZG9h?=
 =?us-ascii?Q?/LVU0+AXfGOEeLSVBqs/uqOlN8eCuiesQFQV+JOgIRRZ09IkgknLn0movJaT?=
 =?us-ascii?Q?NjFEYCcMX1ktnUSBsuWjHkJ29PswBRryQ/RbcFiEoymbIOsNOFoOKALtixG0?=
 =?us-ascii?Q?UOE8Mj3N55/VfqgyDglugCuqZ6ghZocLePpLbOJAI+eCOLpoG90F3y5FP1RA?=
 =?us-ascii?Q?sr4qgaAkHoWLElyHSXpqRjEFKrCRS1CcpUtO8PWcWYZ8PSIBDywrmsB9yufv?=
 =?us-ascii?Q?yhUeVH4x8xcP4uGDBdcVjGF/bK+KdM0RANTsdV9fM0Ay/wffuc8YIAB3uywV?=
 =?us-ascii?Q?FstA108gUEgfgHaZQ+/mJlQol2dMX2253uTIEAiA4y2yqpEkyZ7v+tqPCnox?=
 =?us-ascii?Q?WVO1OGO5PmBq320nIN2lD8ZOKzpUQ5RvYZKB+oV8ciOQoZ5ggKRUcLLOFwX8?=
 =?us-ascii?Q?R9ERFmTC7rV6VllgGuv3P8M0xVsTcmOXuGH7sAmqvR7Sdi6qnuoPqzBeue0J?=
 =?us-ascii?Q?Ej4Yc9B89kQ8xRsUCdZ4+oVduybtXTgmj8Hzz0MHtQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VlejkEm4q4RgK4NIB0ri71HKb0ZuzWsLgehRNDQ9eNGGu0nKVJvHu/4JyiWx?=
 =?us-ascii?Q?qIg3w37IZh69x7LCDYf4lQcCEryy2p+SIPOEhmQLrzsy0ILkjMpzr82G/BJJ?=
 =?us-ascii?Q?rOtWDhvSsbrJNBSdcxmD2CjT1f7uaDIoxw0ViIolvP3WXVCSs0GgQhtIJ0qj?=
 =?us-ascii?Q?7rAAxix6HEPWmAIxxAl0T3gb+AVJSOaSFmYElmRD8vVKXEK1yKs5OXOlyBxp?=
 =?us-ascii?Q?DwOfr83pkgn4ntu+rsOGn74+l5PqWFbO2Pt2ah//hT1lrckE/uv2MzXZjdot?=
 =?us-ascii?Q?F7XZCP9h3776XD7bELz+OXGzwNqwsNXjGkwM1CSzGl/Q1oJ1GIscvVciLL9M?=
 =?us-ascii?Q?+3XjtpyF++SOaey6Ey0fcOPTlrI2mmE2e3FGSnRhtebMZgufqlQ1nZydWPaH?=
 =?us-ascii?Q?m2tP/a/ylAw9D/2LcdBZzfayOeoeeXkW++XqJrl+3ZTR+CFyO2S9htkgEO6j?=
 =?us-ascii?Q?0kOGy3aSYW7TdBLMNR2vO2BCVDCApzaOHdsCfm0IkkM7RE8hmEAvcFLvdYNC?=
 =?us-ascii?Q?rGrQTG9XbvOH6uF6GveQCcS1OrgvgP46b73KalFS+gAQ5Zgpm0piT8YsJd0W?=
 =?us-ascii?Q?0io+BoqGqYiiM9RRZIOy9chmesdTPRF7eT6ebBlnqhUmNQ18pKr1hMvyFah9?=
 =?us-ascii?Q?dVwwGgpXQy4cRD80kmsrGAhbL3JPWWSJbAg4Pd1tmUeXnA8GLIhZwFFc+u3B?=
 =?us-ascii?Q?Mrge39hD7OmiWlXYsN+o36ShyN88Hiw8UM9Aloc1q6NpyHNsMvQVhzI3bx7n?=
 =?us-ascii?Q?KfydUOGEKqlrXKCV8+9Ffhk2l7QS65pcblerwRRu0rwA6v7LTE3mmmORhre/?=
 =?us-ascii?Q?rIzjbSubRkOUis/uee6z2kC736VmWhslXJ9zdAEx1i0VIRfS0cUDNkGXQXM8?=
 =?us-ascii?Q?r26bk4c1/0ViUA03wtzduFxrGKBsZ0H5pcTRDGquc+7tOdX5fCE7GSJMNtjt?=
 =?us-ascii?Q?YlIQQDoG9tkYmJ0/lsN53pyXpstNVq5Br5HeC3nKXDe/BxA0rXfrY+cmQ+Ps?=
 =?us-ascii?Q?HTGA8xZXcIevdQqqFAu9RB/l+GOB1mUGAeMlSAgemM1XoIhQh/SEBHetq8Jn?=
 =?us-ascii?Q?3Q/43kkDLs1y1em+bNPqKuXMiENwEJE2Wu9yozoIIEf6TbWtdxHbCWLrQe7C?=
 =?us-ascii?Q?F2vABtUqqMR2/61B+javk/vzPPgkm9FdDXIKHOGI5wNeBnkkoBdnBC50vYg6?=
 =?us-ascii?Q?vQSCoa6cjpc+GZ18Y2DSLT9MICIQLVW7HU7gjj/0cusAHoMlZpw+aI9wqPAo?=
 =?us-ascii?Q?eYvGm9JoVX1HeLdXs7De4FPSBZbYJ9MXWi3COpTh6W6ictD4FwpOXPU3ka3K?=
 =?us-ascii?Q?XHcx38qTmkGSkiudvZGNUzXy715ea6O5CiY/9Fm3lwbUUg18EbYfIEPz6Sm9?=
 =?us-ascii?Q?K6Mim7ueXckieuOXv9B5w3wLKD2//aHBitYWydjZ0PvYicueVS+lo31qxIf+?=
 =?us-ascii?Q?QFCtTUq2O+Y2kqi6aNKfj7H6YU2fk/9OnuyEgoRQ4vmn4mfE6ffNgeyLGba7?=
 =?us-ascii?Q?oGacVE3jVrTd83I4oLoHMmYAwvEYvzPJZrO0N1MsGHyR26/B1f2Qvcx5YzF6?=
 =?us-ascii?Q?TheauHJD1Jex96nJ3Rtnnap07bnwGh0YL6wEkXAfKsHwLXPBuKnPPUyavLcW?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 182e69ea-d089-4af5-6278-08dc69855121
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:20:49.4444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K1W3rTUWXXm74OMDXwxO+I/OxIGbsJOBeQw3SmNl1PWaI9ZNYT7R2TOQJOa0OPN09W8oz3csPvFgkJDwSkBw1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7731
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

On Tue, Apr 30, 2024 at 01:10:05PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PSR_EVENT register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 4 +++-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 156660ab7adf..2dca9957a06b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -415,7 +415,9 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
>  		if (DISPLAY_VER(dev_priv) >= 9) {
>  			u32 val;
>  
> -			val = intel_de_rmw(dev_priv, PSR_EVENT(cpu_transcoder), 0, 0);
> +			val = intel_de_rmw(dev_priv,
> +					   PSR_EVENT(dev_priv, cpu_transcoder),
> +					   0, 0);
>  
>  			psr_event_print(dev_priv, val, intel_dp->psr.psr2_enabled);
>  		}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 785e4f9e7828..817bc372bf35 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -195,7 +195,7 @@
>  #define _PSR_EVENT_TRANS_C			0x62848
>  #define _PSR_EVENT_TRANS_D			0x63848
>  #define _PSR_EVENT_TRANS_EDP			0x6f848
> -#define PSR_EVENT(tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)
> +#define PSR_EVENT(dev_priv, tran)				_MMIO_TRANS2(dev_priv, tran, _PSR_EVENT_TRANS_A)
>  #define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		REG_BIT(17)
>  #define  PSR_EVENT_PSR2_DISABLED		REG_BIT(16)
>  #define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	REG_BIT(15)
> -- 
> 2.39.2
> 
