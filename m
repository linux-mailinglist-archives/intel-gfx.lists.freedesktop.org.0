Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A8B963221
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042B410E5D6;
	Wed, 28 Aug 2024 20:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xb2AS5Hy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE5110E5D3;
 Wed, 28 Aug 2024 20:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724877692; x=1756413692;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Lwtzolx53OQWQxXoQfLuTbq9mJV1DZNg7Xx4EOySdSw=;
 b=Xb2AS5Hy5lU51BuoxbhKnuLrqIF4VALTJQ9k1cYBzQ1x7YKbQRUou9lv
 a+RMf06smxelxBQU5f2Fa73A4zGzestGHAHtQWcBDUe9gSianuapv+3JS
 ZZsoIZHq3m5zp8Phk+RZDb6+ENGBCBub7fuQqWdst0mga+bym9hzAI+qi
 BW8NgQdtvrfwAsifzFZmhd61LEjUaMcDjPMx2xGg8QnCiEhm65b9B1HgQ
 t3s2kUqj/lAAsGgOszaeHZmrZuIRBaVR0IOVjovRTq0xGsmycUTNAxc0T
 3ijD8JPSjPcHP0ueOmXW7hITv7O2+kOvtWvII+hwCFLTmCTrB38OxynMS w==;
X-CSE-ConnectionGUID: G8EhRFdvSaCrqu/z1bOY6w==
X-CSE-MsgGUID: wX3p1YvgRXaDYHqFNFxMqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34819285"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34819285"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:41:32 -0700
X-CSE-ConnectionGUID: cwXohungS7mfbewWWtuFvA==
X-CSE-MsgGUID: PmcLKXylSiSY7NDjs7GhIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="63185349"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:41:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:41:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:41:31 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:41:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:41:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rRPdvqw+cld75YYvX3lcXHBBkOm+oWB1HT2si18r30vTk4kTgmuXPe5Rflr/B8IrRh46TP523z30wvycDBxOP7AKMKrcyuWFtDc7oPWvI4OxbkPAnrwhy43ezYw3Q8BPCQJBXZ3CtZZy4cnvzkM+zWmzKsbTf2phtHe/x4OoY7Q9g489eAKM7+i7dHREYBjG5+O0PVxyux+lrMdlUI56KRBjwrKIyZ1Hmu/1WWrPaZsNiuwxeokWPZ9PKJpQwdbd1pJPjnc9+89yxqj+psSE4lLLMFU2lm7Zuj3/dTCOTEn7fbwqZngt7+tssXeN0Ohb5HpmXU2ZVpIYUlVrN+76ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNqlAYcOGkvekxBRgxaQNhqH5eZzgdv10AEwfRArQqI=;
 b=eCWk5rSe900s3FOitlJOeZ0+f0bWrcMbY/lMAMhfwcrptFoMJ1huM+ddc3Wbw887un/lGMdWAfz1mYSxPmGrtzoyFibT/Q7tUXpzxVCSPZWmcHRPsNelM2kAucnhXqoNLDjlxNanUo3eSQfAZAhxDPq8Xpn6YBgwadD9DF3ZF0JIfPhVLECqi3udx8QlRXRw21da9qeEJTOQ8ZEw/LmDnbYRzbTzb704TuSU2Cubkp28hX54bJ+pVeYxdUNw7RuPdhiTrCCouE6UzT2Y5An2BEG1yAs7ffqU8YoUMpa/gGQCURCNij0UjrBBJmsqq3GiL+jJoEzbqvQPgYOF9rP+hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB7416.namprd11.prod.outlook.com (2603:10b6:806:316::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 20:41:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:41:28 +0000
Date: Wed, 28 Aug 2024 16:41:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 0/9] drm/i915/display: platform identification with
 display->is.<PLATFORM>
Message-ID: <Zs-LdJYx_lVDt9PC@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0029.namprd06.prod.outlook.com
 (2603:10b6:303:2a::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB7416:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e4b0676-432b-4b2b-426f-08dcc7a1ca54
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZTykC0sKPQ1S4XESut60XLV5n8mXfwcTrbII2u7pdrx3s6JsgENRcIk1pKF9?=
 =?us-ascii?Q?UWi3oH2AxXs+BlS3O4pBozoeI8I2SKaGbNMl4ODSpO0l0/LIAt+OO6ajRU3w?=
 =?us-ascii?Q?iDENTbnG3GU5yyW+ahADDBSEBxqfUGw3OoXSwOrHZuiS9Q5GtdZRryYrPhQT?=
 =?us-ascii?Q?KcQlnsx2p96N1nFRN6TmhnNssMTWcJzW5ohSLXF/uqmKRckMBfy6qQQwK++L?=
 =?us-ascii?Q?J37QshLQQaELUx46yU53Cvnxj53/54fWtPtSWvLSEGxLaLDfFW2901geiUhf?=
 =?us-ascii?Q?zYosDHO8IAkZEWmLH1ZROqToShbF5KJJLZeYPSvhZxDJe2CxwxLtlgiBa45c?=
 =?us-ascii?Q?x/oZHs0xwtC5D1nlORIjSHl5I9uLaAElq3rHk9sNYxpjGLzcO2DcEoSoj8lD?=
 =?us-ascii?Q?RyVkNi24cvnQrW9cfzbwWQVvZEYv1Ir9uR+eI5Axbv5I65Ubbg4LC4vsgMUG?=
 =?us-ascii?Q?knpfflufwqkvnvDlWJCky3NaMQaEyyIeQ4YQOkaNFS9mK3oJKmMnKUc7HDs4?=
 =?us-ascii?Q?fsIVlKa9jf+z29AdQ3LKe1VkvaXxh3wQm4zzkw7VgAJDCMIjWEkTgc2lujf6?=
 =?us-ascii?Q?Usbkn8e71jz0L1UrXYflWjsg3odYsptFh2z9TwJwKnfjCrp6xdnBPR416FYE?=
 =?us-ascii?Q?q9AgwliLngKJd7ZqC87o0faQ9hK/V0NBy/roClp+U+QyC7A4oZ9Rk0N4JAA6?=
 =?us-ascii?Q?vErjYg/sqG8oIzRSBGOGaA3DnxbtCsZ8GCbpNCtIfaohdelCUpzMemkhy+XL?=
 =?us-ascii?Q?KLVOKLFGLGCIhBcWoFNXdqqfrJSinYyVJRPZWRL1ybajCu440Z7XbLqCWGHt?=
 =?us-ascii?Q?LrLk7bz1ZIXV4UWmICa3/qfns/D1j7pUHu2VeuCBjSIhQ5BkwERBLUqGR+5P?=
 =?us-ascii?Q?MTIqdbDkHdAU9Z1QfUXYaQ1aREyQRnvFFAY72xqNFMPctJeLPKzloTfA9fPT?=
 =?us-ascii?Q?YNNfcU9TYRes+3ooHwvq2wg73HhYvvmaHSnNS6wv7h9AWh4FByxygfFnhdTD?=
 =?us-ascii?Q?WI6+MrjL1vx//hPOsOC5vRX04Mo5RnU2sahhOBkZszH9V19mBYzwG5Vagm/h?=
 =?us-ascii?Q?zI1gPkkAVDozTHsGyBWQ0+eLeSjItFsFjBLz+BI5oiL565kqctI0uD0/reqv?=
 =?us-ascii?Q?0RMhzVhHIT4vAcJSTpoToPcDI4s2cedpFocdhmjyNvpY3bJf1WshxGzkhbWa?=
 =?us-ascii?Q?zMEykLYgSg/Z7mMoXNdne5f0V0OEHTGSVauBm7NdahdUqlnpLAWtWO/VEjfK?=
 =?us-ascii?Q?LiCTFQArnydKTs4gePIPRFxzwVWSdX341YrwB1KSe+P7mehkg4EkpdaenZGv?=
 =?us-ascii?Q?29I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cgxL7VEhbMxd+u9ivfgOUg6YsqGHRjrq0e15khSFGLCPCRkijxSUr5X9SLNQ?=
 =?us-ascii?Q?IRRHbUd4S9rbGaQHnrZdgLKPLvFUr4lIvzSZo21j0XozpbWJ1O/NXEqhFUdO?=
 =?us-ascii?Q?sEM3345dAbKKfqWzEXAnoCJDT9zKhQCk3edJac6xd/sd6yac8hD5QU80BK30?=
 =?us-ascii?Q?72hIQNRHKEndv+wL5rl+y46NMz1qtILwe8s1BjMxVwpmCuc7U1r4PCeoA9HM?=
 =?us-ascii?Q?b1Zl3ktvhn5S4YQdYQYOu8PJGiGXONGEVZu1qFii186oQ7m/11XUSfE8YDCg?=
 =?us-ascii?Q?VFvdZGwSy3+BP3R9dk5bZc/lGow0rIF9VjhTuLmP9yyjzXJID+tAmDO5tWzC?=
 =?us-ascii?Q?OB4umjneks0QZ9LhkUavH2g9cXUM094/GZ/bpY/ezEkMA16jNmkVK3TyBuIV?=
 =?us-ascii?Q?CJfZvlRMdSPQlaxUD6/Y+Z0ZoT1/IC0fGfp2e5mPkv+kYL6eAaCd+e4yMFTg?=
 =?us-ascii?Q?xZoSfclyAqDSoCML5HBPd7wfSxOwaoRppJ7U3IZf/uHTmU6FJ7w+x84fF5TN?=
 =?us-ascii?Q?bgsglsY2SCVa3QTucR2RtJaMvsXplOqGQ4hlbIPFBqwu4MTB/gAw+tQQAIPB?=
 =?us-ascii?Q?LTdzLwVwz4Owe626REyExxap8kCMbRfNriwP317IHjIdxtKDTuqHi12De/fy?=
 =?us-ascii?Q?zJ3w02chbtwAw+JPINyqiIahK8sLRx66CRjuQLgzzgGw/lT9Ln9uv3FPhFi9?=
 =?us-ascii?Q?ddNDjZdQ2kX2QPPwJUVlr79VH511mToqsGpad8kvC/G5PGczSexZ+mAzJaa0?=
 =?us-ascii?Q?rGMF6BB2FC+iRN8XK2JXHujV25PeHqQMK3GUey9n+AAbxnoI2bN/X/KDJ0HH?=
 =?us-ascii?Q?fpde2ZFaJd1B8kDW4XSAr1iUtOFkkPEm3BZIjN4NgDBT6E89ve1icdXq0vUs?=
 =?us-ascii?Q?lcJ4EclcIzDH7SvYX9xD72B5wZOtAfk6y4F4KTc68zkWYpvMtK6J15lO8dw8?=
 =?us-ascii?Q?1CV6ft/28BKiIFA/Ymg1QoFC3D1mpDF7xkRx5SNf6Ag9jqnMOCAVdUDX8NTI?=
 =?us-ascii?Q?BHqt9lGXL62j1fAnDapydi7xxCDyh10rIcRJ32562k+5MlKcfa4YjL9zKeMf?=
 =?us-ascii?Q?s/x8GfZIx0GwW85oAeKi04PDc6nwcJ1IN0RSc0lLHVlvdGwMhKsHcG5xJ/1/?=
 =?us-ascii?Q?8uRYksP9VG1ppe40IAL+REtlzq8i+NPmIaAWe/NOgxTINSBwXCGJPYLl5H11?=
 =?us-ascii?Q?VmxpFolwRIXfRod1iyKtnzEKJoCQuAo+bPaTpFS/uP2pMClpzh+XYO7mDhgh?=
 =?us-ascii?Q?lr9VKBXYWb1d13VJMKoE9QNtBj5073uARyc0Ib2fbbnFUlet14hZ2XrOqu/y?=
 =?us-ascii?Q?rbSHBuaFy4ubcszs1tehme0hh/jkPhx1uAPI4R9nZ6TTVOurH5g1tfDHBZpj?=
 =?us-ascii?Q?Skv+bSu91oEffnnejl+EsC5rt2dbiE2Hh7f+6MCHGDmD/n5/DMIHoU3bugOY?=
 =?us-ascii?Q?b8ip8ggVwtIMlJ8JgIYWZuHEkaD3IwQ1YIRvV6J/sUDWOkpW2U8pPqf28iva?=
 =?us-ascii?Q?U7zU1Cr3twMI+zsIK4GgD1uW3kHmxWbX2qa672TVEq9NQ63fvv9ElwMIP3PO?=
 =?us-ascii?Q?FZggo68I6zjiYl6X1weAzn1zedwfwcNy+8QVYbiEJtvumXeq5RPOiGoatxnx?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e4b0676-432b-4b2b-426f-08dcc7a1ca54
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:41:27.9871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5WWO0vHRIViEDCnbEqn9s76yCuentXznmhcgmH/irZ0zlZpwHXsRsZvC9Rt+HTWTt6YwR9y1157xi7xJj30WYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7416
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

On Mon, Aug 19, 2024 at 09:44:27PM +0300, Jani Nikula wrote:
> v2 of [1]. Please read the cover letter there.
> 
> This addresses review comments and adds a few more commits on top, in particular
> the last one showcasing the approach.
> 
> The main question remains, is this what we want?

I don't know why, but the 'is' thing is still strange.

I know I know... I'm bad with naming myself.

I think about 'platform' but that get too big

if (display->platform.BROADWELL)

I think about 'gen' but then it is overloaded....

then I think about 'ip' is worse...

'version'?

'name'?

if (display->name.HASWELL)...

....

But well, I like the overall simplification here in general.
Without a better name to suggest, I guess let's just move ahead...

> 
> BR,
> Jani.
> 
> [1] https://lore.kernel.org/r/cover.1718719962.git.jani.nikula@intel.com
> 
> 
> Jani Nikula (9):
>   drm/i915/display: use a macro to initialize subplatforms
>   drm/i915/display: use a macro to define platform enumerations
>   drm/i915/display: join the platform and subplatform enums
>   drm/i915/display: add display platforms structure with platform
>     members
>   drm/i915/display: add platforms "is" member to struct intel_display
>   drm/i915/display: remove the display platform enum as unnecessary
>   drm/i915/display: consider HSW/BDW ULX to also be ULT
>   drm/i915/display: keep subplatforms next to their platforms
>   drm/i915/bios: use display->is.PLATFORM instead of IS_PLATFORM()
> 
>  drivers/gpu/drm/i915/display/intel_bios.c     |  36 ++--
>  .../gpu/drm/i915/display/intel_display_core.h |   3 +
>  .../drm/i915/display/intel_display_device.c   |  89 ++++++---
>  .../drm/i915/display/intel_display_device.h   | 180 ++++++++++--------
>  4 files changed, 174 insertions(+), 134 deletions(-)
> 
> -- 
> 2.39.2
> 
