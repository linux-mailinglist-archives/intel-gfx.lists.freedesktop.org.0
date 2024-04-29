Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF08A8B5B26
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC8D10FEE3;
	Mon, 29 Apr 2024 14:23:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cqvWdqB6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F3BE10FE86
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400618; x=1745936618;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vESezpl276+PfVQTWuQul/A0Z5Vad8Lyd5/JdpeBftk=;
 b=cqvWdqB6yNaEyJb6osMWH7kNdJCBHxJHJ2RNvJ3BBnPSAaZDn5TIp8/h
 hOt57QcjDwytXsDshAQ/MrNhgl/AIcLBDEIYyZM9tgDzfaW2SnwisCzSC
 A2Qr0y6okooR3qUGy5nFQjnU/IERmwOFk9DjpGKOygPbXKXPGo57CMSyp
 i1KSDqcX3B4uMnxUzrI4suNzxN0ANYOH9DolcLJUGqXcaZbst35gEjQls
 iPrmjk/xpQ4U8ceqr7HhT69TMpdUJmFexqPv1SAr6qV/AIavTVxfuTquj
 qX0/z4hOcb6HBB7aBFQ4KWpL0BMK6hddl6fX+Zisa46GHoUKrcJp8hIPZ w==;
X-CSE-ConnectionGUID: SOB2hy7rRoO5g674ihNGdQ==
X-CSE-MsgGUID: ImhUHxCtTcum5k3XQplNfA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9987272"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; 
   d="scan'208";a="9987272"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:23:37 -0700
X-CSE-ConnectionGUID: 4r7gb5hjTriD5lPPJ06Q6A==
X-CSE-MsgGUID: G6Lve6ChRROTIPVBycqf0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26113233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:23:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:23:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:23:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:23:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:23:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V4A527VhhE7O0WGgAT/L//bo+gRee3E27PzTpTNgUtkR93/rFzkz8Q8V/iVbd0QeNEnoj8cKvd4OBiNR9eYy0O6v0RquNoerOoAJH4YlS6AIyCNa0vS33aLJvsYtWclgk/dqR/uPkADPPAqj840+iCe7k6fikG98YyTOCY+/bxhM+Vmh2odnc0dofQNMdKdtVDjUBUt4R8KUYIMgfITiRvZB4lyrHVXUEaHoT7IRFhuy6T5xlHuwwVmVv0rhhMrO2o59jHFQK0XrKI8pzZAktMLZNhuFQrBagJo0m4n43CDCL9Be+bDyDs281IVLJ5kCjjD0FNrUUaYfKgTvO8wAuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kZgKSwBaqS8FObbTvLFle9237E8WFCavrQ0W4ZWgC6M=;
 b=iVwji6G2Wt3WbcGWaGYOPDE25d7tmcEgsJJ/iAMOCvPXK6bBlY+KhegqGnjRdAa/H4JMhmU5mgClx/nhdR8MjNiSX4lW0PkCRppeJuqiV6cbUIjnUgDdICglAibJo8nv4DnxD9tK6KtbdVnl4d613YL9e+3+yNuBwoweXw1u8wPWrFzHvF3ZUd3ThwMApIvQJpEWMCksWKS+K/QzQdpeXnhG0str1+KZPkwnE61QtscXRvgwaK72K27XNDGv0wLJ/tAP849BvYN/pShVgFx8Aqq9Dhj6xa+wa0zM3AsedyIX/tE5o85g027tfagKSs74Rj7Ne4hhCjbpTXWyctPuhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7407.namprd11.prod.outlook.com (2603:10b6:8:135::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 14:23:34 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:23:34 +0000
Date: Mon, 29 Apr 2024 10:23:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/7] drm/i915: pass dev_priv explicitly to PALETTE
Message-ID: <Zi-tYlK6-qBNAtxH@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <bf07d29cefef23ebd5d54fbb0d3bf7e41d132d93.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <bf07d29cefef23ebd5d54fbb0d3bf7e41d132d93.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0064.namprd02.prod.outlook.com
 (2603:10b6:a03:54::41) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7407:EE_
X-MS-Office365-Filtering-Correlation-Id: 08b9cf82-8d1f-4fbb-4d25-08dc6857f3d4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hsBcn+MotSWaCNmy5tH/6KyCbNVey328IpHT6yrxpcdBR+F8u6JkRwzjqzwp?=
 =?us-ascii?Q?f/NuUvhu/o5MIv0k+v0Sqf7Y3Az51Zs5lFSF7cG99oEn1KLPCP6tcWAY59dt?=
 =?us-ascii?Q?NbAJJFLMWQFaBr3RYsAv8biHX3nyxHoJocYyRHCk0G48dmK7KsoGarC6OTN0?=
 =?us-ascii?Q?OyMjzmdkME6b1p/C3HgNp2dxYlU7koo2D2MgMtbUDFXgulmh1647FBb6o/0o?=
 =?us-ascii?Q?HxY5KKS3Awrydhri59YhRqhaZGfZ81pnGQ0Ycb/+9CVBXhO7r4w0CM80X4qb?=
 =?us-ascii?Q?v6hAgIReXfFWh+rA0gnPnOVBcuXJwLK/bfWRghka+Tt0DErXF3+LtozrlWZN?=
 =?us-ascii?Q?xF4TCBa40YRVj9/dWyHPN5h0etMwE+Q4u95LsWWz9fS7Hds8DFe7ZRUOBw4P?=
 =?us-ascii?Q?/uZ88XoKJF6AZrJzcibSLHvsJ4LSiPPavAdTivcSaft4EvZODiIoXu8eDqv0?=
 =?us-ascii?Q?yZPBixHHkNZMcr2Xitv+8JL9JVSToZKTqKESWnL2fe/BKqdrNU7U2J63ovBU?=
 =?us-ascii?Q?KFjwYqqr24wIychWSL4aYx8eOsMbfNkfVcvU551XcXMQwsFqEw6hiMMTKfJ4?=
 =?us-ascii?Q?cQ5HShutC+3c/TU0ih25EbNCodnOXKvXGgvcqzTnHC3IcQaXlCdkUIIRfNuS?=
 =?us-ascii?Q?y0RpMqpbT0YqAEMt3NHZSFsKmtSQl51TQ58YBjM6/e50T8mOrKictY0CyA+8?=
 =?us-ascii?Q?QguxNyWy+uad4zt4a1g/FzMBLNTkOjO9PkzGwnkfhfW7xbwVRic/jhEL4yND?=
 =?us-ascii?Q?xhnLWBdpqW7PR8ocgTy80xKZhXuHHtssImTEWv60/NY/A7/qgkE6IgxHr8N0?=
 =?us-ascii?Q?WzPyTCQIMNUqty6hWGooVfOPGsGLL/ufRGwiwFb7NBee4LyuG+MZSrHjHtqZ?=
 =?us-ascii?Q?QWaDcm7JlkrwwAEQXEokpEisUxZcFz4jPKar7COojOBKi7gKkRlnRo4t29dQ?=
 =?us-ascii?Q?l2kdd+sBp+LmDSJ6Wrjsu+3Z3mEH/WnNKzmNasY64fNXZn/ol8LgSNMW+9xy?=
 =?us-ascii?Q?m1uFQA73vx9gaPoNGt+i8ghZk+aXDIuo5JZVzE4R0tppBWHcpGWpLRc6+cz0?=
 =?us-ascii?Q?4jYfiGhMzBqSZtLByPcq6TfTHDZKpPc0IVvl+8x8ZQ6tqUIbxqQZnQGThIF0?=
 =?us-ascii?Q?tnwabH9YAuoUDE7ScqaHvOWWNsvZIJ64AB2F0gRGwlQlrkql4Kw7Q1Y0ufSj?=
 =?us-ascii?Q?cSmst7rSg09Nckkf8wgdcKWf8G8gLPIsV8GyTmdbHEGsEPDHOgyHQHUmGuT2?=
 =?us-ascii?Q?j9vl5E7WdTCb7DuBkl/gEmobxYaUaid9tWHJrPKpcA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ndZ8IuB44MnR+7qjTTH1l9SVK8QLDtXT9D4DCCTSu5dhyrRt3Es2Oac7mjPt?=
 =?us-ascii?Q?bwSPjP9fcsz0x3bxxxCVEWjY8DjzS+uYTI5Zu30W9oY7KFzt7h400oL7cozh?=
 =?us-ascii?Q?MtGx9Dd+mhDQ4IqumqzjXFge5f4RAt9iKqNXlYnOOJNhg/91ued0GUP3vLrJ?=
 =?us-ascii?Q?PUsm0ucHbvqrof7uPQSowDbA7/4+EzQ5WxcqdvrAkFHwpoMy+cVg2ihPS7kN?=
 =?us-ascii?Q?Wsc87JCdeROZok3wLcX0jeqKFRVfFB214qUwltt0MHjlJeyG0fTJCOi8sI/z?=
 =?us-ascii?Q?qiyc56ajxiHvUTHE1zkOPO2R4xC/E0T+ZEKQDO3xUzsZmbI0RtDKYnIG7OaA?=
 =?us-ascii?Q?fvh3xOMRHpikwUwgcvFdSKQmxNLvJzV6SBBnIldoXQ67i16Oe0vs6zk1wzx9?=
 =?us-ascii?Q?eeXeXwOWbPbO0DdiMQLTjUcjKr50aB1Xx0BcMyRZsnP1WEmcnrBJ4QPzLmSX?=
 =?us-ascii?Q?a4evy2FwwsoRCOsmTlUjRus3hXgmi4GvHMEv3sT+9pw2HvJ7V6lBNuX9r+9N?=
 =?us-ascii?Q?Yr56YXwAFrdhMa7WNxG6jTYyZcSwESA+2BWV45+pg7qWlLVGTB4kzt0yr0Eg?=
 =?us-ascii?Q?UpUuQFHei5QJniF2kIwJdr7PJkF3VrNpOr/5yXonYNghibCwtPvk4CZ7aCd+?=
 =?us-ascii?Q?ttxpiiieak5r03HqD/YtxO1ba7ELLqK6JiD03Y+14iLfafRnB1AHBSehptDc?=
 =?us-ascii?Q?EyX2ZEDxD26yM05HMQg58LaT1lt54eCLSI18jjqeqzExJdde3+NM+D7D7Xnh?=
 =?us-ascii?Q?s9Js2pwdclcg9a/1FOz7iRFl4OemIKcXj2VyWJhU2dHCVfFbpvAMC3DigUHW?=
 =?us-ascii?Q?Gt03dArll+1kZ51dzYeLuzqWcOMrrm2Ti7gzqpAqtV7XB2tqA/v8iw1Yn7nz?=
 =?us-ascii?Q?+5JKWdBYtkX3hyqEfuRG8B8U60IdXXnM8bLUPJXrCpdIVK3w2nAB/TV7+VUb?=
 =?us-ascii?Q?YqXOxIsLFqMpYGLtUrGZTCS4mg0xoY5+heEx1XrvZYWB+i++U9z2XBcMdxYz?=
 =?us-ascii?Q?vlbuF9la6gJo5j4v8SpzuZEmBADX3+E1VPGlx8Gd9j/AbbT2+aAyvxV3y1xT?=
 =?us-ascii?Q?uzWkJb3k3n7ONTrdpP9fKwLH+qKGE81IodX0cTEj50N+7RzLjzwy/r4AiH4E?=
 =?us-ascii?Q?YxsJgz/DFXcQM2CyBeeBOhFeUnuEM+5QOsvtSxKryAOd7B5PssV6Of/WKcHj?=
 =?us-ascii?Q?SRJO6VSR5zzDAm7WwVPgfQUnewT5aRAkdxWV/F21IKDmOIvqZnHdorCB4ibc?=
 =?us-ascii?Q?aW34HKdVIm0ij/zrVHHUHL3dGA7MmmzcGk74Jgi7YYSjnHHq7+i5OfRsUY2k?=
 =?us-ascii?Q?6h5vjwCIze2grEKz0Mn/yCkFB9uDujvRicJrQJNrIs0rPW+9gKWlGt/Fd9gX?=
 =?us-ascii?Q?OItZR1VfFgrPbRgqLtnwdbBFJShaxTYonjwFC6+SHoKhu20z9INu8b7okY7p?=
 =?us-ascii?Q?ouJM1IindqurmUytgIjAWT7o+Xq5vK3dbVYXkeuBMiRlqa6dCk/Or6IG130p?=
 =?us-ascii?Q?XlYrSUgTywcLCV0wu0sOo3lL3fpQlP/hqkOr0P8bI4IDOXWrwXvtL1uXg5UD?=
 =?us-ascii?Q?DVfN0CJRga2qroACpTBhjYkW33YRdIiOhVXPJaOW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08b9cf82-8d1f-4fbb-4d25-08dc6857f3d4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:23:34.4161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bFLCXKkeqn3CAiI3pBPTSy6rQyl/Wvuf/kgj1yzCYYBm6SY7cvPzMbgxVoCq0BmU7q434fSZ5FJMzeiPkYoyYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7407
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

On Mon, Apr 29, 2024 at 05:02:15PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PALETTE register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c    | 29 ++++++++++++-------
>  .../gpu/drm/i915/display/intel_color_regs.h   |  2 +-
>  2 files changed, 20 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index ca7112b32cb3..edb805fc9c97 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1227,7 +1227,7 @@ static void i9xx_load_lut_8(struct intel_crtc *crtc,
>  	lut = blob->data;
>  
>  	for (i = 0; i < 256; i++)
> -		intel_de_write_fw(dev_priv, PALETTE(pipe, i),
> +		intel_de_write_fw(dev_priv, PALETTE(dev_priv, pipe, i),
>  				  i9xx_lut_8(&lut[i]));
>  }
>  
> @@ -1240,9 +1240,11 @@ static void i9xx_load_lut_10(struct intel_crtc *crtc,
>  	enum pipe pipe = crtc->pipe;
>  
>  	for (i = 0; i < lut_size - 1; i++) {
> -		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
> +		intel_de_write_fw(dev_priv,
> +				  PALETTE(dev_priv, pipe, 2 * i + 0),
>  				  i9xx_lut_10_ldw(&lut[i]));
> -		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
> +		intel_de_write_fw(dev_priv,
> +				  PALETTE(dev_priv, pipe, 2 * i + 1),
>  				  i9xx_lut_10_udw(&lut[i]));
>  	}
>  }
> @@ -1274,9 +1276,11 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
>  	enum pipe pipe = crtc->pipe;
>  
>  	for (i = 0; i < lut_size - 1; i++) {
> -		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 0),
> +		intel_de_write_fw(dev_priv,
> +				  PALETTE(dev_priv, pipe, 2 * i + 0),
>  				  i965_lut_10p6_ldw(&lut[i]));
> -		intel_de_write_fw(dev_priv, PALETTE(pipe, 2 * i + 1),
> +		intel_de_write_fw(dev_priv,
> +				  PALETTE(dev_priv, pipe, 2 * i + 1),
>  				  i965_lut_10p6_udw(&lut[i]));
>  	}
>  
> @@ -3150,7 +3154,8 @@ static struct drm_property_blob *i9xx_read_lut_8(struct intel_crtc *crtc)
>  	lut = blob->data;
>  
>  	for (i = 0; i < LEGACY_LUT_LENGTH; i++) {
> -		u32 val = intel_de_read_fw(dev_priv, PALETTE(pipe, i));
> +		u32 val = intel_de_read_fw(dev_priv,
> +					   PALETTE(dev_priv, pipe, i));
>  
>  		i9xx_lut_8_pack(&lut[i], val);
>  	}
> @@ -3176,8 +3181,10 @@ static struct drm_property_blob *i9xx_read_lut_10(struct intel_crtc *crtc)
>  	lut = blob->data;
>  
>  	for (i = 0; i < lut_size - 1; i++) {
> -		ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
> -		udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
> +		ldw = intel_de_read_fw(dev_priv,
> +				       PALETTE(dev_priv, pipe, 2 * i + 0));
> +		udw = intel_de_read_fw(dev_priv,
> +				       PALETTE(dev_priv, pipe, 2 * i + 1));
>  
>  		i9xx_lut_10_pack(&lut[i], ldw, udw);
>  	}
> @@ -3224,8 +3231,10 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
>  	lut = blob->data;
>  
>  	for (i = 0; i < lut_size - 1; i++) {
> -		u32 ldw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 0));
> -		u32 udw = intel_de_read_fw(dev_priv, PALETTE(pipe, 2 * i + 1));
> +		u32 ldw = intel_de_read_fw(dev_priv,
> +					   PALETTE(dev_priv, pipe, 2 * i + 0));
> +		u32 udw = intel_de_read_fw(dev_priv,
> +					   PALETTE(dev_priv, pipe, 2 * i + 1));
>  
>  		i965_lut_10p6_pack(&lut[i], ldw, udw);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 02033c882d7f..250ceffbd481 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -30,7 +30,7 @@
>  #define   PALETTE_10BIT_BLUE_EXP_MASK	REG_GENMASK(7, 6)
>  #define   PALETTE_10BIT_BLUE_MANT_MASK	REG_GENMASK(5, 2)
>  #define   PALETTE_10BIT_BLUE_UDW_MASK	REG_GENMASK(1, 0)
> -#define PALETTE(pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
> +#define PALETTE(dev_priv, pipe, i) _MMIO(DISPLAY_MMIO_BASE(dev_priv) +			\
>  			       _PICK_EVEN_2RANGES(pipe, 2,			\
>  						  _PALETTE_A, _PALETTE_B,	\
>  						  _CHV_PALETTE_C, _CHV_PALETTE_C) + \
> -- 
> 2.39.2
> 
