Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151D7A38D03
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1D8C10E5D1;
	Mon, 17 Feb 2025 20:06:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lAEEIWUA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A735410E5D1;
 Mon, 17 Feb 2025 20:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739822799; x=1771358799;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=leKb59AEN8HAnpioe+heS9aBDJQluZb1TTRL5sFXnLw=;
 b=lAEEIWUAyVSloRXvLEvorF6wAbQlPhKP5CClcarf7z4CQl0Gnya0FMsR
 MWvJ/HoRJM2Jaa2iNNgjj/unixG+hb+rI0AjtaBxoCWGVNZ4pC+GGQeqd
 De3JPh3NDDG+5x/lxYgLfbSuV3LGA7dBLNq0zjt2qfsIi2hOHtkB0Lc4F
 TRtGIcOmw0GlfrVwjNdNb49sh/hnH30oaxdXOFf1qg4KGl1qEXH/iOuiv
 3GCfDewiuO3QNS2POr5Z2GuSMyo4pI20HkZ9vs9a+hovaGDdWcH4U76zE
 1D5UKlM0c2EgKiVw5e7ncI+qRwB+4IZUFNIOI7nq1X812L2nLiwnMgoZ/ A==;
X-CSE-ConnectionGUID: he0i8cbMRpGEzG43RDPuOw==
X-CSE-MsgGUID: uvzs2sc+S0WBWFmoRvWbUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="50728145"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="50728145"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:06:39 -0800
X-CSE-ConnectionGUID: D0uzdkvBQLyjNMyV9FHkVQ==
X-CSE-MsgGUID: IExYMMcRTqytqeS37LtPQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114719174"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Feb 2025 12:06:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Feb 2025 12:06:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 12:06:37 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 12:06:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H9cSEcIDvJu0FMbgwZwI1Sleef2s4QzItfTkBZBrLb7yYk6Ib2gAkJJHWFgyMczjj6gjZiZbp2cIBYcavPj/bzo1iKTz0k6atVbUVJwwigzLZvmjAmdhxo8NbfnJv+EjHdoTgK1G1tQIBktVv+oopG8b4oZtUvORtsC1OldsvWBjQCjKAVIeaVZ5GwZitnTsTXtmOjMgcMe1Z0apxgiy+wLguThXJlXAAwmgC8RyGeje/cBMct3K3zGtbqYR/loN+PomqK/KeFdCsE/AIuejgmFe8ggjTaOjOadJ876HIUgqz367x4y912ufarrfv9hjXiZxnVY12CPfZnjZR+avqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWjnST3GAuLgAYzEL7zWsakOocvsXQwe1OA81UOzhFs=;
 b=MKrLqXeN8bYSpUtHP8QqWs/IMDo4HNpbLJnmdKobI+KxuJqvnUGxMx6edCHkRgQ+FbERR+PO+hyrzeRLAXzC+SulTKB8ZISYLc1F/3BRmryHRo4QnkMzbGj/BXojsTVl3yo6GwqsAg1ihNsEZTE2ytuwVYNdS3naCUeJ0uW5pmRT6cW+1Rp7Z5wv44fn3lAW+6jZz/aprBS15GaLvD7xV+NAmGgb3hlekEPpLvD4euw9wTbox4Jhq6onL8bQB17ZaePxE7DexJGrStUbd85pZxFAYzwwO/AcuBX0eq8/uln+LcKOkJu/AYvKewT/HrjpTVWbEKJQz9TZurwj57DDeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by PH7PR11MB7478.namprd11.prod.outlook.com (2603:10b6:510:269::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.18; Mon, 17 Feb
 2025 20:06:07 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Mon, 17 Feb 2025
 20:06:06 +0000
Date: Mon, 17 Feb 2025 15:06:03 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v2 6/8] drm/i915: Introduce i915_error_regs
Message-ID: <Z7OWq3jiBTaMGWzb@intel.com>
References: <20250217070047.953-1-ville.syrjala@linux.intel.com>
 <20250217070047.953-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250217070047.953-7-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0374.namprd04.prod.outlook.com
 (2603:10b6:303:81::19) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|PH7PR11MB7478:EE_
X-MS-Office365-Filtering-Correlation-Id: aec66702-b37f-453e-1ddf-08dd4f8e8374
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?ti6mAW+Xi5LmrFddXNIE9lJuz47qKkSes64ZkvxrhAjontJXXuAyP92dvh?=
 =?iso-8859-1?Q?dLdwpc/yjMd3OFEnNsvEMXuoLgdl5A3Mw8ua49m55zKOSTJqNorG3WzKay?=
 =?iso-8859-1?Q?JAf8k6ag66eaPF3p46cDzuYc9B6UwuW40Tc8Q1oLM40eZJKbbqLcbOsmV0?=
 =?iso-8859-1?Q?B669KsA1EXIC6So5DjC6zkbedS6ngsP+UL5GXzLyv01DvnowFTRi9L7N4a?=
 =?iso-8859-1?Q?k5cV2defvwh6HoS/hARavp3yYPuFBjqTzt+krVZ44J9B9q4eyxNRQ4GWuE?=
 =?iso-8859-1?Q?IzhPK8+TlfgCzVvN/yZDyj2nI4XUkwV9RxyM2enqE3BbsLSytX6M+lafOH?=
 =?iso-8859-1?Q?nujnElNez3aGDN4iLlH6ASCCGqr+01UI/inlwCarDECGOBqLDzSEs+7MH+?=
 =?iso-8859-1?Q?omG8JmIYYW9E9yw6+JocVM6loqj+WjMWFPCIxfMJKkzDegnPeUClZ6SVhz?=
 =?iso-8859-1?Q?DwzDwIhpd1K7piYLwacHbvUgUna/QmmJZt64VZ/C4EHTwZjv+CviJQiixD?=
 =?iso-8859-1?Q?7v7Q0gifXYgGT/aB3UzQS8q/pxR9Qg59fs0J4iLR0RQBJ8pAveukB9LfPf?=
 =?iso-8859-1?Q?TUJ31bNg/J53F88ieSp1Jues0ops3EQyTBeHGlDcI4251sIre7Y1acekQW?=
 =?iso-8859-1?Q?PdU0L+WEwT4PuviBjGfuf7mjo8pOYqjCRwLz4U1VxSYj20QQyxCFC5vSnd?=
 =?iso-8859-1?Q?v6hFFJHoInk71ULzfWyw8J8/xr9XSjmXvfmtjRKN5l970b2PwPPXNk0NeG?=
 =?iso-8859-1?Q?5wUAW9FzKklPhhZc8gOOXN5hGKIcmK221DzGFfcX57RGwyOjTjSJ1ZzIlb?=
 =?iso-8859-1?Q?iHAQZaW9Xe9oeubgbzXSNEaHj1deu3jS3yJJKqvPMvM0qgAGsAf1ci8OA6?=
 =?iso-8859-1?Q?U8w6iPejzbJwkl05lVaNjWbqipeonmA3RL3cHZ0Oi6jiCre4GZfntEZ7lw?=
 =?iso-8859-1?Q?zjIJa7J0vC+F0KZUqkmk5LsmR5BFhmj03RbRjzvZ8EyFbxWd+gGVx8dSQF?=
 =?iso-8859-1?Q?aaf99h9iM59VIeiWJ0otD/sI6ALOGS4VzMa380+Ofgq1bam2BIUaLhVKcQ?=
 =?iso-8859-1?Q?VOdplMLKNv+KzYdhNrPs3TydEI2bkzhX1g6eR1hsgaJTJD4GF6Yk8f3Jz5?=
 =?iso-8859-1?Q?rg4RSKH6J5wlO7E7du83zekLk8coTPzQpcB3X+9MLxjtxWvpjnTRSMjat7?=
 =?iso-8859-1?Q?pe5yEkntrelAqtn0iy491sLxZMZX1iiBv5An3rsXdNt/z0JVzThjWthX9s?=
 =?iso-8859-1?Q?kTTgLtvSCJH4MIIj8Yc9myiI2NDnm8sw2n1GreRgBphoor+WLzfP7M+Bl4?=
 =?iso-8859-1?Q?9OisKsz60YpUxVY2Apk3Pms2/V9fN2Iq8c8t2+7ov7LoOcVKF3wCAnkea+?=
 =?iso-8859-1?Q?hzv/yWIH7gPTjwaujgjANNuJkr6A1Q8E4QCP3tjZMXuf3RJwo0w0GkaJV+?=
 =?iso-8859-1?Q?5vRVD/hOw+AXR/9I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?IyGxmV+UhK0GQW/jSbY4WGohIq4ixV2zjKfBbKnDBYRNsvz0E7XEQiJo0x?=
 =?iso-8859-1?Q?w4baicOxfUo4Q6ggUsLcMaX7Fn51rL9slOKqNiFp80k6E59yBVe1Df8TUt?=
 =?iso-8859-1?Q?yZmQlJixpw30+g8eKeLdesjHt4Pkp2WLTVp4OpmE4flOkTbOFD029A1Ezd?=
 =?iso-8859-1?Q?YqI/+V2xL1/EYlxhRsG6YgHqPojoVwjFfFkQ/1yaMD4sag2wA8wKyhmn0L?=
 =?iso-8859-1?Q?0ikyQN/Bj+11VLyG4aj4fDq90AvWIDTp0dy8aHn5sdaqSkBl2RLxWATnHt?=
 =?iso-8859-1?Q?JHu5yJB/oSNwLEC50OtGNx6GaPSh2/Q62v6LM3EUazPPjgT8IpE0zS9YuJ?=
 =?iso-8859-1?Q?HGDuhEo2BMLO/j9GW5HD6H+K7pFDJlotW4ff1ffMNpQ3l35GQ8/3p71lEb?=
 =?iso-8859-1?Q?zqF3IAxVj1UohJx57yjwiMO/fS3VS/z/Pf8S7xTbLXGLpORIWTzkjYc3OR?=
 =?iso-8859-1?Q?jyuSjzQ/KUI/3vLA/Ve9Uzcc6Xqj8+VVAmq2ZqBvVqNORH3VlyMEcO7v6G?=
 =?iso-8859-1?Q?GLlUKAzKvw0aYu9c6XOh6pjBX9GxFvyYNeXW1ggXOHy0KXyzvSUjj9/64v?=
 =?iso-8859-1?Q?FPsOA2pANQ+yuHU08vjfEr1Kdnf8dbUdg05nZJK5i3AGV80z+TR+uB8kDg?=
 =?iso-8859-1?Q?gsaf00NVAamXT5U9hxTdW06D3pjtKmFYBuf3kZ8nm+8EwujO8e7ORqOOsm?=
 =?iso-8859-1?Q?1GQ7UlvT0bRc5lI56s0Zis/646Akc+PC1XE3Gej5tsRaNvHrszqLVLjAnQ?=
 =?iso-8859-1?Q?yfjnWtBkR+XF1IGPLPSnKSGt0sZUySMmgHsS0fxkmSLCYGOV9QoR+5MsWA?=
 =?iso-8859-1?Q?JgZjGc/MH7jYZi7KtV1Ln8PYnGgxaZPRD4hKjYIV5GRXUqHzRaPGn5GCXY?=
 =?iso-8859-1?Q?UyXKPR39IKwQ0boFvjvHXDmKQgNkZqkwffJnyuSRVQj0v9r0HWQQciFvvI?=
 =?iso-8859-1?Q?Pdd0oU2T/rXi+U1T3bdLn0If2Yw9hdyWW+yezG3R0dT5tWClEqeWSd9Y74?=
 =?iso-8859-1?Q?C8HgFdvQpatyQMJ0/Klm/n2Flgm39KbNuHcEW3fkqv2XEPtHTj/hgoumTS?=
 =?iso-8859-1?Q?RZ4+Z2v9CXuD8tl4YF8KiyUvDb5ZpRedmuQ84EOX/IQJwfTOiyk+/eBfLK?=
 =?iso-8859-1?Q?a/2k6bVjNPN7AOzZin637BqHhCdg/Q/N/6br+qRHoIGF6EVsl1kmTC78R6?=
 =?iso-8859-1?Q?KePKO/xQHCd+5jQIDJ7vpR5TSUYdeU+IKOk9DrL9vT0lruTkULIT0qjuDw?=
 =?iso-8859-1?Q?vh6h0oxmSb6Ii7UzFhNy1qpbgcckb0roe2dj9pdNyiw1W84d314dyu9EW2?=
 =?iso-8859-1?Q?iZp6uf/VkxN2c5UOvcipB+9+N3MmC8iwyVtYb/57mkMAns7nhDmNFe6lrE?=
 =?iso-8859-1?Q?HMNkE6wccwMQ49WG2SW4bM/9ZamQ4MqDmTGZc1sUmIeNjBia9LbilANLYu?=
 =?iso-8859-1?Q?ifTwlDW5vobIeqb7PmlHJkQbDsYKwJ+cElDyGrMz8Bwu0A5TIfI1QZzSs9?=
 =?iso-8859-1?Q?NCeydFNImpZamKNwX4LaCUO1rZX3Nzk4SC26jIPhco71CuJ+dv0UBYH6tj?=
 =?iso-8859-1?Q?Da/4pfzvAiFsyzijjdesaS4dhwUUqggltDI3g2zxLRd7TEIP8YBccvkgRk?=
 =?iso-8859-1?Q?I+b/34Su3hyOEFkZyAASkn8v+HMlFsgRhmR5qBMWiNUuuyTq3kk+V4fg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aec66702-b37f-453e-1ddf-08dd4f8e8374
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2025 20:06:06.8734 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tV6IHDM4JNL70neJU/AGdPwvMMg9mf1nh5M5Ij3A+Oby2fJfj9OpFrThb35K8XcyAnDfhmr7z3VmpeSDjc4udg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7478
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

On Mon, Feb 17, 2025 at 09:00:45AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Introduce i915_error_regs as the EIR/EMR counterpart
> to the IIR/IMR/IER i915_irq_regs, and update the irq
> reset/postingstall to utilize them accordingly.
> 
> v2: Include xe compat versions
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c           | 29 +++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_irq.h           |  4 ++++
>  drivers/gpu/drm/i915/i915_reg.h           |  3 +++
>  drivers/gpu/drm/i915/i915_reg_defs.h      |  8 +++++++
>  drivers/gpu/drm/xe/display/ext/i915_irq.c | 23 ++++++++++++++++++


Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

to get that merged through drm-intel-next

>  5 files changed, 65 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index f98e5cc14724..bba0a0acf0ae 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -120,6 +120,29 @@ void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  	intel_uncore_posting_read(uncore, regs.imr);
>  }
>  
> +void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
> +{
> +	intel_uncore_write(uncore, regs.emr, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.emr);
> +
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +}
> +
> +void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
> +		     u32 emr_val)
> +{
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +
> +	intel_uncore_write(uncore, regs.emr, emr_val);
> +	intel_uncore_posting_read(uncore, regs.emr);
> +}
> +
>  /**
>   * ivb_parity_work - Workqueue called when a parity error interrupt
>   * occurred.
> @@ -867,6 +890,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_display_irq_reset(dev_priv);
>  
> +	gen2_error_reset(uncore, GEN2_ERROR_REGS);
>  	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
> @@ -876,7 +900,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  	u32 enable_mask;
>  
> -	intel_uncore_write(uncore, EMR, i9xx_error_mask(dev_priv));
> +	gen2_error_init(uncore, GEN2_ERROR_REGS, i9xx_error_mask(dev_priv));
>  
>  	dev_priv->irq_mask =
>  		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
> @@ -972,6 +996,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	i9xx_display_irq_reset(dev_priv);
>  
> +	gen2_error_reset(uncore, GEN2_ERROR_REGS);
>  	gen2_irq_reset(uncore, GEN2_IRQ_REGS);
>  	dev_priv->irq_mask = ~0u;
>  }
> @@ -1000,7 +1025,7 @@ static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  	u32 enable_mask;
>  
> -	intel_uncore_write(uncore, EMR, i965_error_mask(dev_priv));
> +	gen2_error_init(uncore, GEN2_ERROR_REGS, i965_error_mask(dev_priv));
>  
>  	dev_priv->irq_mask =
>  		~(I915_ASLE_INTERRUPT |
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index 0457f6402e05..58789b264575 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -47,4 +47,8 @@ void gen2_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
>  void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  		   u32 imr_val, u32 ier_val);
>  
> +void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs);
> +void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
> +		     u32 emr_val);
> +
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5e91fcf40a0f..be1aab838be9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -472,6 +472,9 @@
>  #define   GM45_ERROR_CP_PRIV				(1 << 3)
>  #define   I915_ERROR_MEMORY_REFRESH			(1 << 1)
>  #define   I915_ERROR_INSTRUCTION			(1 << 0)
> +
> +#define GEN2_ERROR_REGS		I915_ERROR_REGS(EMR, EIR)
> +
>  #define INSTPM	        _MMIO(0x20c0)
>  #define   INSTPM_SELF_EN (1 << 12) /* 915GM only */
>  #define   INSTPM_AGPBUSY_INT_EN (1 << 11) /* gen3: when disabled, pending interrupts
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index e251bcc0c89f..94a8f902689e 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -294,4 +294,12 @@ struct i915_irq_regs {
>  #define I915_IRQ_REGS(_imr, _ier, _iir) \
>  	((const struct i915_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
>  
> +struct i915_error_regs {
> +	i915_reg_t emr;
> +	i915_reg_t eir;
> +};
> +
> +#define I915_ERROR_REGS(_emr, _eir) \
> +	((const struct i915_error_regs){ .emr = (_emr), .eir = (_eir) })
> +
>  #endif /* __I915_REG_DEFS__ */
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> index ac4cda2d81c7..3c6bca66ddab 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> @@ -51,6 +51,29 @@ void gen2_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>  	intel_uncore_posting_read(uncore, regs.imr);
>  }
>  
> +void gen2_error_reset(struct intel_uncore *uncore, struct i915_error_regs regs)
> +{
> +	intel_uncore_write(uncore, regs.emr, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.emr);
> +
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +}
> +
> +void gen2_error_init(struct intel_uncore *uncore, struct i915_error_regs regs,
> +		     u32 emr_val)
> +{
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +	intel_uncore_write(uncore, regs.eir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.eir);
> +
> +	intel_uncore_write(uncore, regs.emr, emr_val);
> +	intel_uncore_posting_read(uncore, regs.emr);
> +}
> +
>  bool intel_irqs_enabled(struct xe_device *xe)
>  {
>  	return atomic_read(&xe->irq.enabled);
> -- 
> 2.45.3
> 
