Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A078B5B2E
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D5410FEEE;
	Mon, 29 Apr 2024 14:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FvbEL0Wl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EF410FEEE
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400711; x=1745936711;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bsck2nnZ2huybsa/7hqHLz5KCqisQiKMN6/qSKHAInM=;
 b=FvbEL0WlyQuG+hsdE8KC+mpfc7cYkUB3o7LR8WzVrzF6nK/WrtqSXmMq
 UVJ4BsAoIc3kJHsi+zz26tINr0/14HA7omM07qrBmXgi15VtSmzir6KvM
 BolFaSjjkT+h0XB7pWUD0p8caozhlEZX+ZCfNeoJLEPStPDnQ24FEEqeD
 RcBLpt9+8DKnEPms6831ZjkOrqYtb8vgM7P600FrNTg8r7kYTm6LEiAV9
 E++C+HE0lqO7czjhWlOdkTdgVD5r+cQeaHLUYUFyk4gbzcC8Oo1DB8d/9
 DpJC3XS7VO9ioMlfXRS6dTLum/rzQHmP0feHx6R+YpVjtUDwNsdOmovU6 g==;
X-CSE-ConnectionGUID: swHka5GTQWiyZmxDcZwCBg==
X-CSE-MsgGUID: NzKaXX/ZTpiVB7E+xwK/9A==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9987431"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9987431"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:25:10 -0700
X-CSE-ConnectionGUID: TQOQutHOS1uB+SwTDPmu+g==
X-CSE-MsgGUID: 5d5wVF0aTheIhThFofh6cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26113525"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:25:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:25:09 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EYaeUX5ZVqw5MHP18TH7iizt6d47vrvCTsHMipsB9Zwi87zVnS1QvD1fmqHquMhYRXGU4qXibjVoRmvAthNnbazKK6rbFUV26IrcT3R0aGZuXRhGYBpo5T7PuLWIwcDUuc2RDw0CRZw9upIrfA5ApuM3CJiF4GMCfFGypkS/RlUQ1eXH/Ah7qWHnGuLtvLy42SLvZ0ZZ9JQE2oPUlegVRJGiUyV8dJD/CxVL7kGrWHlwHRlvtcAsU+BSA+01MS/GlymusHBWjhpmxJjItBaPhR7m1qNEvhyeHiYug2Tv4anXwt8dzyisXEvPxfy5T/qzWy/KYFOHdaDINYJHR9Qicg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uk4Kmb81hH8Ib2cXCdIvn0lZpt6/vIUznAKgXpnqh1c=;
 b=humMHqq5P07q+UWTWv5M+q+FV2ALds+tm4rca4Pl93QKMR9Je1ze1LEeTHj5v1mgPLgRjSAdup5xfRnMr/GBKsb1OpdghzcwVfiMUBtyjKxsGA/uQOm5t3xWgF7yZ2Sd43GmE3bSon8/Tke+Z6BdEEfy0RXIe+bpBrX8N1piLr+bt6DYdW5UjLfAkCdKFvs1R9RnXwRxBdjZpU8d+7Hr+Oz8qQzPBte3jTGhJcNz+axTa0/n1mdLY8fhV4z1E93SDl+ImqxXsEn5ELupnf6053txCMlBM+4m4s/DE12FuQiSziIr43vSIg95lRXGtC6ZX77FlMUL41TLGSumGuumbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7052.namprd11.prod.outlook.com (2603:10b6:510:20f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 14:25:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:25:03 +0000
Date: Mon, 29 Apr 2024 10:24:59 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C12
Message-ID: <Zi-tu6RWgiYE70Jc@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <62a748b685f253151b17c101dec75351577f30c0.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <62a748b685f253151b17c101dec75351577f30c0.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0153.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7052:EE_
X-MS-Office365-Filtering-Correlation-Id: 443ade7e-77bd-43ae-671c-08dc685828d3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0e32IiYTUaG17GaqXNHxYSb2UzL9kZsvslkijvHiOQ7CHvqsk372w3zDg4hq?=
 =?us-ascii?Q?ejLuDMPr9yxnesL5QeLn8/4zMhTUSOeyqMgkxWzEQ5rZW6Jxi99rItCpJ4zw?=
 =?us-ascii?Q?xkygEmy8HnXPVoOvKhaXY/XdIcQmLNvhbgXnkXbNCICy61aMpr0jpA1AQjdJ?=
 =?us-ascii?Q?xoONFH+rQTDydSPJ7Hq9nOZ8u6uQ4YfqczEG67oXiqjk7b9ZB8GiGo7jeqs5?=
 =?us-ascii?Q?FR2sv6Z0mdQ6z5DvHrVSOzaNbC6APQfBQqVQsTfGKYPZ1jaml97ZJhfKxnKo?=
 =?us-ascii?Q?FO6Hc2ohGqQW3/GR8XFlhIi9RtMdiZ4I+jAW5m7C30JUGvFEANQVLlfhQTm4?=
 =?us-ascii?Q?ugzhbfX5T+0ivizO7hr6QHlY502nFP6J5gwRM2jXvy2O6QfIffhAwxkQ1KlV?=
 =?us-ascii?Q?f6ZBloIq5j1CW/eVTyuLp1AkQIzbIYX4YL/E1pD6vd3s4ow5o5nhAOK9KKur?=
 =?us-ascii?Q?ma2VIChZscTTmbD0dKZtUlxq4brYqc9OuHcJG21khd/AUNsQUBSfUiNeV8mk?=
 =?us-ascii?Q?bnmcHVGg5RCkPKLmmcpzmfnMt9Sl6brhv/Jxm0S4fuOfOAQy7Y/0r7CV+bbY?=
 =?us-ascii?Q?inNOSXGCD1sbbAIqeTZgLGU5n/cobslMvln5MHM1wOO/UXK+iLt5W3bJNWzu?=
 =?us-ascii?Q?m7yafTNuVlp4HHdU0Qn070Z4hH/gjXY1iayoSw1y6/bjw6J9FpIibb9mdhKx?=
 =?us-ascii?Q?NXexDN4linLgMxy9G9SePLXTy32qC2FXbzStbOu2RHvFbTa3WSHJB0D0RQ9m?=
 =?us-ascii?Q?kB66AJ09ArNqxPUXcNDzHnIzBJRs97dBnb2GCoeFNrdFrb9jXO6zbZfgmVty?=
 =?us-ascii?Q?4qI2Zzsyo/IlBNkGw402uV7gjZPA9c89R2MKE3ZmElEztE43qmWTN7EfeVmq?=
 =?us-ascii?Q?+X4g3JnCsC89pId30NxBpA7lZCtE7v7TY+an7bgbpMJOGOYJTqDNv+H3Tybl?=
 =?us-ascii?Q?3jd5I3FFFDIUJ/7L5j1Ggmx7ZtDJIt1Z62yg3XR9XSLGJL2wEELoPXp17/0q?=
 =?us-ascii?Q?RTWLuXMEUblwjk8hMV7WxCzZwvvoqGGtOxtwqKQsvvr8/aygzWz9z3oBHlcQ?=
 =?us-ascii?Q?9GcNY/wypO+cNL9Iqh0Cf+Tx/RAbav6kZHcR/Smkuh+s/AzVdiS4n8cwoYv1?=
 =?us-ascii?Q?LxlEp8XpAfSAYyZlClzPjZEEYoSJ6u3scvBhY9qkmBE+eXmF3YL6HHAK91lK?=
 =?us-ascii?Q?ep39X+dvWMGllG11+fFXOTQP/FOZ0fz0XEpB6xWDkvShqXLjezBAUnwWkMW9?=
 =?us-ascii?Q?Qq9uk9L3LjBGxcXwCEOQ0144w/DNv6keLtUFzXRpEg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?X9mddMDRdqPorf+uqu/PlXaZ4MnkgXgSfpTKW9x3wZf/zrcIpJPlX19s01bX?=
 =?us-ascii?Q?61UIZr7Zwp77MgoO3mBCkjIQuGchDpGTiUl2cKPn3wH467APEJX49mgK7aIM?=
 =?us-ascii?Q?hKef9oUII99yVTLH4w9cEEMTAWtU3PM64r4aO4kvmA+1wA3sPMwYe/1wZL4R?=
 =?us-ascii?Q?xfbvuTQToVRG1bUbQxcB/ybZMJuiRSwuogLkk+VgywjCUARF5BCt8ze+QyCQ?=
 =?us-ascii?Q?WdOaiKi7QtJWrbnjMKEECLbY5PhZuUY/PBWi0U4mUje2i6yPqAjZUm4E2i1f?=
 =?us-ascii?Q?tlKHfYDY+evG9x/KP+DmBh68uF4qUwem0YUm4Ow7IYiGxFyvNvzCqyym7aMo?=
 =?us-ascii?Q?4iDmoUteugVJu2p3Qg3FCatKR/Q6oMikavDuvSRw24/LLz9i3L7QvTu3PIEA?=
 =?us-ascii?Q?zZztFI0hRW64tJ5FHGHkvQWMW4l0xBftOUJmR6EcW2X3ApEjWZUgFg58CNml?=
 =?us-ascii?Q?NQFiahqBeKy6SIJorG7t9HbzJ2cQZNopEl80mzG1ZpCu1vkCjZzlEyQyK4GC?=
 =?us-ascii?Q?Kt7cZ7j3UhHZMCJHqftd72XLKnv9Kn8SOEmUnCXNHh/npojVT58c5r32JHmj?=
 =?us-ascii?Q?p0pMVQfLQVi1LkhNfmUR77awa2FgjKpdP5MqNKFUl3/wrbSZfgR35l2nQV+D?=
 =?us-ascii?Q?X87QWn9eYPru4hGPrCxBnBpiibW8QcaV/OUw1d9TswkuRRhxj1fCRCsgOhj6?=
 =?us-ascii?Q?K1sb/MU9SiyBfxyBPCxbqby/sL1RdOabqqzOk/p7xvWBiiU3+RHof+KDOnPf?=
 =?us-ascii?Q?nc1EZMxnOn5U6acfZGREn7Zw2K3Qs31j94ERf31y++2OvbcajN6MugPEOlBH?=
 =?us-ascii?Q?5EvnX3PiXyUd05syg/jNcWU8JJpS0tZlJEd72KRoce7EzM8kJFcGR6cv8y2Z?=
 =?us-ascii?Q?M2Fk4rnyGikkZJgcYoGwPou7mmZDJFSxI0jTD01e0QGGWXFg8cGmUJCMu8Zm?=
 =?us-ascii?Q?LOpSb4s0XWozzHaz2HgfbiRWxTEJzWeHsRIdrH8CCWosXegUiJR6epJ5/wsN?=
 =?us-ascii?Q?pxfXWrceUNWwhtwGLx8YqtVyoaiM6azxghACm4QncxBJZOWba+poZdNaiXr8?=
 =?us-ascii?Q?ioyekBecYcq56HOCHNEtMDho2Lj3CC7laFoESgWPTVmJyHqCtN8yCOUwK0X+?=
 =?us-ascii?Q?MGRIh8IntKDpJxw2q9Ih04L494cqtPhlzYC5Ob51nrVlCVsdfC+s9FEMxh7s?=
 =?us-ascii?Q?BJV3LQ1UUPS1Zej9ZeSrYF/QSW9iBgAoVIRshWnyfdmqpD2if6n5BnbBkFmH?=
 =?us-ascii?Q?Bro8wmPqREdwK8DxOjC+PUDMivyC9ayb7kQAgnxH9pCldbS7KdzfuF26boK7?=
 =?us-ascii?Q?UciGAfY2KM5BOSW60pvHbi5dX6+qiqRBYKZ9jDYN1oaIT5T7+Cfwsdbaa5xT?=
 =?us-ascii?Q?nVtlpNOpNIYmtNDo8PKeWyN3cUy99loTLMWWjpFlMM5TvaLy3dSUyMgwiW37?=
 =?us-ascii?Q?MhrrsdgNrYvLef0XKrMUVSqjHVTAoK3se3kXf98q7yeE3X/dn1WlBL5Kkh5q?=
 =?us-ascii?Q?QVpco+Mik54+2SoHoIxkzwDz2Q/ZeajMbdI1naFY6hHCBR7MoMwO37emWGJu?=
 =?us-ascii?Q?I6VBATOtUEtMCxH1zGJbV33IFArEX4dsfz3j82pXOu867DktBa7IS6u8XLb9?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 443ade7e-77bd-43ae-671c-08dc685828d3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:25:03.4107 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qSc8qoXgC73E0w/JWk4wCgwzICAmXOk4houtbjD/v2A/rDJk7PvpA3Hwm7SZqoOHYyHpJQmuiFXSOJ1v+LOzpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7052
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

On Mon, Apr 29, 2024 at 05:02:19PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C12 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 11b5891a8399..a4935289729d 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -623,7 +623,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe),
>  			  csc->coeff[4] << 16 | csc->coeff[3]);
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C12(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe),
>  			  csc->coeff[5]);
>  
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(pipe),
> @@ -650,7 +650,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	csc->coeff[3] = tmp & 0xffff;
>  	csc->coeff[4] = tmp >> 16;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe));
>  	csc->coeff[5] = tmp & 0xffff;
>  
>  	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(pipe));
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 19b0255e0831..2dc876e10eda 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -259,7 +259,7 @@
>  #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
>  #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
>  #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
> -#define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
> +#define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
>  #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
>  #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
>  
> -- 
> 2.39.2
> 
