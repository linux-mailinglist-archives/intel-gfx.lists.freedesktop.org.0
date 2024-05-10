Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE798C1C3B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:52:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DDE510E046;
	Fri, 10 May 2024 01:52:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rg9DT3ka";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43AD10E046
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305959; x=1746841959;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DexAz5WLXvT5rzovYwIoAJhnYoOF76bAtCfffSci4LY=;
 b=Rg9DT3kaNiFN6Uwo+yeCqjnBCXzSXQqAjMJEvomVtCBuuow06rDLPhwl
 Zxj9XSaWVer3aoYEu0UuF9wx8TEiYOXnAChh/ILq5kwaG49xN4Izx488s
 CtcZd+0hMNHU/zGL9pfYsgvjuThcf37Hd8R5if9hDLJd+qzBOL9/vQpVT
 lfJOkENnyPltuw+QUcrWBCiUql1o9td+rvGpu77NtldZH11jew53SjehH
 kBqbfP//1y8H5EE3AxSJMpLI9Pk+ub7Rb//aydKR17qPdh/pv6ZDT/4Gn
 PN3uSh/Y8L4M5LoSfPuYjkIO0/NL6p82PsW4eeP9MshE4KT/uEcTCtW7E A==;
X-CSE-ConnectionGUID: JtLtnAo9S2ez4MkBtHKRSw==
X-CSE-MsgGUID: PUyUKzT6TsmdNM5ZW0MSbw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11428154"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11428154"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:52:39 -0700
X-CSE-ConnectionGUID: +G5ljPeHQDGBhKZgLtqnKA==
X-CSE-MsgGUID: YEYF2Z6aQNO2yHzLT12xZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="30000092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:52:39 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:52:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:52:37 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:52:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:52:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CQsJlfea+TxOQvrpVhGEcRa/B68geUWPWiuMDs7Gm8XpGDRzoVd3TlnUcYNoyLUwggoKzf2/wnzXDaEGBiUdIVuWrkeH4ZjjfukvoHu1Zw67xB+7CZ9TrFuLSUhBu3I9rm+m6Kmcb8CQACp6Cm7i1qFmDyyDB6toKSECvIv/B7iuAmOSDRrJwKUmjUC8j6dkKfCVTMp96tLOxiVw9yMid5/MDIazAlF2SlMuqpjrHUJ/lBv5yM+z9Ho5rH3YbBl3DALVxKOehWakTtrTetg3OuSIpZzGM3UH2994osPpKd3cciFmSUlVzmbJsFQ+r7cbZW7ZVBEUqwGgNCcOqEE/gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gnv5fRr5q0JfP8w5oOMxMLQ/oT8zXLyJYTVq855gQ00=;
 b=baPyV9ASOvkJMyBEfw9NyuSTJXfSTH8cOF6+0DLv4nMaGbfBtHBcUGoJz38VsTS5CL5InrGREu6qzR/n/5/c3sIIOgxSSLKW4/A23Ns9wotF2z4Pc5nBxdRA+R5Co4mneKxP5E7dBslkrwJ4LM55b6QS3f8CDQjdx0IZn69YhlY4Jo21F/CtNGKt3Jr0LpTWkUPiFtsOKPdGbHVhcK48CQcDYVySRESVeHMQhd5RlotznYGdCkWOtX+/fNI8d8QQH2LaRy7DpHtLfjfK/Rk5BAY1nToaeG6ScuS4x5tSrTPCWrI/s0cMmfllm4CvLoK2CBV1q5d4+ETr8uokpj7ZZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:52:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:52:30 +0000
Date: Thu, 9 May 2024 21:52:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VSYNC
Message-ID: <Zj192vT73b68t2FU@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <61b464bedfd75a97ca214e066be5417d790ccb26.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <61b464bedfd75a97ca214e066be5417d790ccb26.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0305.namprd04.prod.outlook.com
 (2603:10b6:303:82::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b66c023-1ad6-4acb-2b51-08dc7093da00
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a9ryPcRLR0BBf7t0VtGJ8OrTdLllsV02QO42mVj3QpTY50ORfqGnLuYBETmz?=
 =?us-ascii?Q?bHJ3S1cql9Xx4xJFEPpGAnUuITHNg4FeKDre+lVCCI64WMlv34Ubn83nWqnr?=
 =?us-ascii?Q?LOFOAL0TIXlNVT3HSE+1Ux4OS32VOoOt8QJEwQNn5u+/qrZDXxuj26jYzdub?=
 =?us-ascii?Q?lVW0+dr1P/xSgSDplJ+GSA7qPRbjLnrDkTKG8/pmafDgYbKtiuxiqw4drCqz?=
 =?us-ascii?Q?FBLbYyHaTQQQ3EkKl9gNpzG2s0YEJZrW+49Bx6qliBt2QxAB9A42giS4dvsI?=
 =?us-ascii?Q?uu1vqVa+V7/C7CbsqIzZ6jetz1mlYAqDbWf+21BMrfw+8A6IJE5eS/il6fZl?=
 =?us-ascii?Q?UpT8gGft7/JnnUDniSKMk5bBrUcMsAYqTESlUbYxHdCpwzeKzYpZ2JVSpKrt?=
 =?us-ascii?Q?x6PHLx/gOtuSxNA8aqx81SPiYB0Q7SVgVGYT1cNCFxPm5vZKM22ejr61Mz67?=
 =?us-ascii?Q?Wx39YI8hUAx2kCmgta8Sx9lROl2h5l6kYm6ZL/ZK9pYaak/hkemlL6pWNHHt?=
 =?us-ascii?Q?SO+GDm9LO1ZEZnhlNN/2GmYGfGnJbvfPRpWJUTSXe1W1bnvOtQ6LFUTC3I26?=
 =?us-ascii?Q?Zw75KJNB6xc1oXjs9kKC6BpY70w7iU9oqHsdpg7InA8aEwPDeRaPe8OzDiDV?=
 =?us-ascii?Q?U3unQbjIYWhAzhi6tpGRXyWx4Op8qs1QG6yiZfbsVI85PsWZH3rjjxja3F0w?=
 =?us-ascii?Q?BHFVaFIGCZ2YcxJb9cpQ6SgXHllclaz303C87Xv+9+sSgay+lrY+nq/JBkzd?=
 =?us-ascii?Q?lB33ZrWNdce6cSyauDP0fIsOIW4VPbmiMclprncg8gVczmCGel4rfHBTrRCv?=
 =?us-ascii?Q?wEX6oEN1g95vkarMS8pH7KNfyUgf7xQAaJgHDGB+wNm1DGPIvNyzrSAJUkSf?=
 =?us-ascii?Q?0ZBK1/VizKnQ9fBnXqQ165XN68ypeY2vVwnGp4DrCiny6wFnbSg37tgX9FHX?=
 =?us-ascii?Q?bKMpvz5TM6Ih/ziubDvFcTFbSkrvOpRxeFM31+hv5YPOPvoNJEmh4vVp7qso?=
 =?us-ascii?Q?eL6NMb/c3H6rI8YUfo9A3VlbeE0JOrDVIyQP2e11YKna+qQZpUip8q8p4vQz?=
 =?us-ascii?Q?VZojvBWEGckjfv/KxjrPXC1v22WsTNKJBLM+2FSXJ1uOiKpBMT88F+R+g8QE?=
 =?us-ascii?Q?Umc3HqVe3ZZQ69Dx187UT/h/tSHGQljWguDTHhX83fGGkyxIGy268dHBHUXF?=
 =?us-ascii?Q?3iSGfggb79Ohd+JZFW169iG/6i1Ovlmk/pSV+5R0NT7hD+HIqr/+ttiAbTzA?=
 =?us-ascii?Q?rQTyn3VH13ot9xG/Zwc6fRLzgC9ceiN7MRStXncerA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WIZsXZbg+fG8eT8zv2ndT0WluH4e7cCoJK+c6iTV1QI5M4yZjUZ2RWM+kGbA?=
 =?us-ascii?Q?1ZpRYROAt4I6R5iOXWvaLMt/tk7Y95PlXbpc1C9rnrGSrB8wqYS5D4S1whwy?=
 =?us-ascii?Q?ifqdydd14UJfipe8N8F5fh7HkvRAcW8HJQtFY+3umFgKF2VWZVlUllhBSHFe?=
 =?us-ascii?Q?SgqGUVvSWGhcb3HcGgw0/2FES3OsMoItVMfRoBLRI9WNL7TzM6G0DJwnouo7?=
 =?us-ascii?Q?2df3BucTttUukuQRcV/t5q4YYpd87Zr1RrkSe2bZskcAFVL7+y2fZXjkyvYl?=
 =?us-ascii?Q?v5roJTGPLottwIctsu5rBWJPRZrVuPfxeJstAHfXTgvHOfqAjJ6AcEPx8dAr?=
 =?us-ascii?Q?6gw6t3h1nmKdSBIRnMk0ZG85Yf9S5RwNjYqOR5BpH0qrW5A7pqkK5yoDlbz4?=
 =?us-ascii?Q?8nOPvjj234NghKAtnzXZYnWoks1APRhlqPDnCeALq+P2sUzYmx/RWzUbAgBn?=
 =?us-ascii?Q?kCJU3h69AF3y9v9K+cweawVb16IKkDr1LJQsXGH/Rmi4ZhsM2Yvq9emjESb1?=
 =?us-ascii?Q?lPxYz+GbVVbe7vfCQGqPZ6tE0s57aJL9DKksC/HeAjdjueyme6Y1uF8InUB6?=
 =?us-ascii?Q?Cgkt029z4Esb7IYaVuI+iRHBv2WfejkwPVdXs1MHxYM3fpQvvmzWqr8yDUZQ?=
 =?us-ascii?Q?X32RWHv4C2mcUh/kZNkg6Du8vso2lOiyuSEmi2fye/H3l6Z/33maphW+R2cA?=
 =?us-ascii?Q?H/HnFRHDgaJ/vKH3wMOiZGJo735EA3RyAX2lEcIRw1lmZ112hJoAP6oOmAoc?=
 =?us-ascii?Q?di2soBUy1TJr0UmzT5zTollwnGelMVByKwc1jXqKJzEvsU51EmBW4W/ytVZv?=
 =?us-ascii?Q?UG9N3ocmv+mUUtdQcvgo8TNkEFOKv3QIaZrgXWGYJG4BD4VYHP8PlKoiippw?=
 =?us-ascii?Q?v5rDN/a7X5UiMwZqM5e1nuFmpO+PUqGs12ets7ZugSiqZoaykKvBp0vTULHd?=
 =?us-ascii?Q?W9afQzdRNjbEghiokN+1wz+w4hRhxLO09MgA4B+cyAzL4tHBpgBA24VwF3Qi?=
 =?us-ascii?Q?hMihymercLnDH/kVnK9/OBEOPO1p8RS1dNcBtWM23A9Q2ArwrEzOioHYv1LU?=
 =?us-ascii?Q?viAWBfm14+rtttvGJCQwKYkoLUtsr74VQS430D5+xTU6NTnFVYeocKNDXoRw?=
 =?us-ascii?Q?bkPD4TPGejGipM6KfSMVDp5o4JOmhicwptCUxN5JjSj038OSTdij41TLadvU?=
 =?us-ascii?Q?02ytQNzmGCbOEc4tBcHLr9GueeCYg8pG/jr7znMsbQ9Uar5ydwYgPP6JklNN?=
 =?us-ascii?Q?oP/Cc+7rK571aST337BuGsGeMjayyYVG6RuGLdUEUEXart0slPO54IiLbMXm?=
 =?us-ascii?Q?7QqG1SSLAbeAMJJ70s3r/KZOGBuPYwtIbDv9dDqn6+lDdVD7dXGgdEnXtPwn?=
 =?us-ascii?Q?0JIR7QHU/tkMWvM1RcbxKe8MDszEmWfjDXB0/sroEXDvZsje9GS9ZKJ1JHqU?=
 =?us-ascii?Q?Jr8O8JjNV6wf0aeX2UgZC05+tPzvLR4G5lI4IgkTLerPvMwfTMicmCEwWBSn?=
 =?us-ascii?Q?1IQJtA/fjBLeWwYFTI4lAVdz471mKRnNV1RKv8zarNG1izwBvzoNCO506AOZ?=
 =?us-ascii?Q?T9k+TYxa84MW8zsVcH2CmuAvgpzE0fAsZTS5xVPvfnT5wMQPs1UL7VHai/dw?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b66c023-1ad6-4acb-2b51-08dc7093da00
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:52:30.1684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +6sjP4O61wvDQ63ZtBBbbYkNlTOdbZkPpawU83cXBbxrKr/2P+Uhy32j+1iDcnFc8FqE1NelFJaQJYQ0DSGFxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:56PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_VSYNC register macro.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 9 ++++++---
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5031b7ac8007..fbfece3f687c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -265,7 +265,8 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  		       TRANS_PUSH_EN);
>  
>  	if (HAS_AS_SDP(dev_priv))
> -		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
> +		intel_de_write(dev_priv,
> +			       TRANS_VRR_VSYNC(dev_priv, cpu_transcoder),
>  			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>  			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>  
> @@ -290,7 +291,8 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_de_write(dev_priv, TRANS_PUSH(dev_priv, cpu_transcoder), 0);
>  
>  	if (HAS_AS_SDP(dev_priv))
> -		intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder), 0);
> +		intel_de_write(dev_priv,
> +		               TRANS_VRR_VSYNC(dev_priv, cpu_transcoder), 0);
>  }
>  
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> @@ -326,7 +328,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  		if (HAS_AS_SDP(dev_priv)) {
>  			trans_vrr_vsync =
> -				intel_de_read(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder));
> +				intel_de_read(dev_priv,
> +					      TRANS_VRR_VSYNC(dev_priv, cpu_transcoder));
>  			crtc_state->vrr.vsync_start =
>  				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
>  			crtc_state->vrr.vsync_end =
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9d443365b85a..7af0623bb9b5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1322,7 +1322,7 @@
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>  
>  #define _TRANS_VRR_VSYNC_A		0x60078
> -#define TRANS_VRR_VSYNC(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
> +#define TRANS_VRR_VSYNC(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VSYNC_A)
>  #define VRR_VSYNC_END_MASK		REG_GENMASK(28, 16)
>  #define VRR_VSYNC_END(vsync_end)	REG_FIELD_PREP(VRR_VSYNC_END_MASK, (vsync_end))
>  #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
> -- 
> 2.39.2
> 
