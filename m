Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B645A0667E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 21:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8C910E0C2;
	Wed,  8 Jan 2025 20:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cUFyX1sv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8077510E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 20:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736369009; x=1767905009;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=U81iMiLgYt1m1IXtPuVdiLRKVsQEFgszpDp0Bqg9m1g=;
 b=cUFyX1svgeKA9m/esQlTOF31Y2rM9pThBmv4uakKNjt/ErBFph4fkMrx
 Ll+vRDzAQbIovWtpWEDeSqaDQG0ulXq6OVpGjLnv2nRtjJnsBEvdP5MUa
 IO+UZr0Z8GqqwMjyZf1mftKTmvN1UIS+4OxRNAy8ZwslbZMIEfucg2YSC
 8fpQQ/tg6YaUtdZYdlg7svvBCQXhIoHIs2YU7liwZmgaeQRTMW2eOvOjs
 /3g3ROthd6No3TUoeS4/G+xr7EEkG2sRDQR8QXkMo/6W/THqi3CJIPDP5
 esK64lidMiQx1RWnSeercf6smYIsxJ2JjDarmviwsVVA6UYNn43xztMxn w==;
X-CSE-ConnectionGUID: 3nya3MhHTXWKf16nR+7mNA==
X-CSE-MsgGUID: L1ZY5SqeQYe509dLcNb6dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40292198"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="40292198"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 12:43:29 -0800
X-CSE-ConnectionGUID: iSIQpB6rSXKkFiRqDSKPOw==
X-CSE-MsgGUID: o42qc1CfTm6PYOcwK8KCBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="103271323"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 12:43:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 12:43:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 12:43:27 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 12:43:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gws76XQyyrbaI6o+Jn1XNQsSVBRzxUj/Ntdon0yer23DKfRVsGtYLZLCm3mX8NIL9XvAb6q94PL92JOyNath6eGJOWKcl8HOWTS4oqHGH2BkprBfSAPskgmTUA/6X1pdIwEbozR1m8t9Z1blpvvn1idL06lEzeSNkH/rAUS29nDkHsnptYmgqmWsX22OFUiXiSL30ErwsZCMIRrNas3yXEhGaKiEZ4wwHZmXYUXQHfAeGvVYDRy86L+5U9G3k9xhDqrTlSvTG+p7kr50dfVCtK6fURIyjBwcB8NL+N+LXubmxsV3uf2JOJ62Uy2OkyJyIcYrhJiM6gmz1n7kSQqFcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zBQLXG8tuVNOTjvfnUHb0lHlZEdDM8jWFs39t/MRV2w=;
 b=FngFSDsx9aHWP0TUW3IKSjpKhk/vZj3oHpZcjjPU17Qskj3tbrhllIExhmMl3fFOS+3kdyhlkfsoTcdKaxwDVRNGz+6x36c8VFMAy+C0pzmGPduwTgsBj+f/mzKdj2O6vf4PnOq/bbLkoWsLDXj3w6O7wKbSJGXMA/2Pc2CT/I4ZV8+pSrYrS19UQ4XfDNL6GEbiP7tjqACS5wIXblnnwEGh3A3hVpEAw3Nr+1U/cfE10MiCCmRO/1OAk+8ljRjWA5eQnthR9Nqs/p3/2p94LsDzYteCk9SClRcez/wTwA5qsZ/SnJEQGP2jYy1L4Dkd+GGfS+GYTMzmkV63qNh+jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5058.namprd11.prod.outlook.com (2603:10b6:303:99::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Wed, 8 Jan
 2025 20:43:07 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 20:43:07 +0000
Date: Wed, 8 Jan 2025 12:43:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/6] drm/i915/display: convert display reset to struct
 intel_display *
Message-ID: <20250108204304.GG3224633@mdroper-desk1.amr.corp.intel.com>
References: <cover.1736332802.git.jani.nikula@intel.com>
 <635fadc88d5d07d06ba78382227a0b3bcc06a073.1736332802.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <635fadc88d5d07d06ba78382227a0b3bcc06a073.1736332802.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5058:EE_
X-MS-Office365-Filtering-Correlation-Id: b62aa9af-97ca-4c02-24ab-08dd30250e37
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ydx5R3+Dhlshpjgvq5Alpza7a66ch4BOTosU7uZDNKsHOzoPoLGlMdTXCm2y?=
 =?us-ascii?Q?5WDaO4DB4aiJXLzzOIUIiiQchYGpv6ppFNstmxFlaXT2j6ur6CwTj59gTQ4x?=
 =?us-ascii?Q?duk16ciMaP1mnPn7Xxh/CJ+5ocr8nYPZnGe7CBUwOWoY2ajPix/+HmRmjKdM?=
 =?us-ascii?Q?ywL/jqVa99LQMwgRIy0UKONtThPTzfvNWM8Tomknh3ySG8g4OCEegfGEpJPM?=
 =?us-ascii?Q?GIJ24ihp1IkXL8C0mqwn/wuu4Zv6Ot3WBI+3vU26XMhFJFPfCARMQ3ip6pg7?=
 =?us-ascii?Q?il5y0a6iwXNY0ddjqut/l+5y0Q1pY3oTqV21GY+rgcsnaPkNHtxd1dqYeDYf?=
 =?us-ascii?Q?FkWOvALzokmyn7Kg63mzfBkPi0WQuOnolSUw9FvGw1I6YLRJkGm5Zi91XAgW?=
 =?us-ascii?Q?pzPXOAkYSmXiJZzWIF01tEtTOxz5p14TUEdIeiXiyz380x5SO8C+unRij5Gb?=
 =?us-ascii?Q?5wfkd7O2abjnolZhmK9JbfiioPSNtHZyjTV1XFXc3gR3+B7+4tb9p6XubWiJ?=
 =?us-ascii?Q?+o4YVISMrc+mEe6tOEx6vzEiZ2trBSDdpIHtraUbDjJKDZhY7ju+EGwZRIIp?=
 =?us-ascii?Q?07Hb/hEMhQ36P1gq9XsPOXmFg88HJMH12sGZOozP59LqFzt2Bm96xT5BxxbD?=
 =?us-ascii?Q?qog/q3PSI05O/nXj+CpkNLqRoA5ct/F+wl11pXlTHIuzxchDV8c9RF4LeWYn?=
 =?us-ascii?Q?ivQTkm1b2BGYXsbpQoibTMsD07DvVh0qdV2Rm6m4FI/7P3ILWiEnfxrRgonT?=
 =?us-ascii?Q?3DsNaPyNjpGWvw6R6j2vuf2VkO3oEMUTBB3rhfl7Mzl53HgnIRzzYMfixSYh?=
 =?us-ascii?Q?NP3XFj8m8chJKUZJp07Jl/T1LIjt6ltrrxidx6IzcUX7/PFu62sy/wnOatw5?=
 =?us-ascii?Q?RLoAES4jWMeJQEUfaOGwslpCv9szcNvTd8+oUr95wLVtggd8jvv1w61cCzk3?=
 =?us-ascii?Q?nN64u8LvT35A8fw9ugu3ZkeP+gb/0AaEoV/T94GwLKynnGn5A3O0wUyMbGwy?=
 =?us-ascii?Q?uxUyCBGoQOJukGGPB3n18jyN8PeZcPcHqWO0qfgO0JITbJ9iDqRbKoo0g1nD?=
 =?us-ascii?Q?zXdr3hOyCLL5rJftPlvKfJ1bkQuHrJlxyZ9EGWD48R0kbfnMe5y4PeEas6rL?=
 =?us-ascii?Q?uhuXhsMbmQkuZ6J2juUFN8puWvcm431eaU7SFFk1d+mpc1i630VcvC+dWJQt?=
 =?us-ascii?Q?rlAFcsLwuPfemvmhTM5w9X8HzcF+9/3OJINdQ1HS0K+qELG3B8DHbF3k5Wbj?=
 =?us-ascii?Q?7Jgst2wiuilZoMF/RsT1Is3xDudwKITnX2l2cmmgCU3s4TdhtrQFCFcFOULn?=
 =?us-ascii?Q?Eq98lbGxKoWYlHXFr8DmMcXVqpNXx9oASl4AgtA4fir18o5LBG3MLXHuBGzI?=
 =?us-ascii?Q?yd6mhgv0gcQvy/fjXC5F/88cdPbz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?k9hARw66MPC7ByCp0yHcyuVqk1h0JLJKs1EgeJNMbHl5tSTJxe3GyyYk1b1e?=
 =?us-ascii?Q?VfzsuI2Puc9RKLVx/Wv0/udlEl2EV3GKBOVqrERl45aOSjdnitTWDFjcn/nm?=
 =?us-ascii?Q?gvch/iPp6uvp503eBJr2ZwoIr57mUN4JWLhC2dAQ8HyVSPDZaElShtNcr09M?=
 =?us-ascii?Q?1lAm6EnGY3+CO3EFBLNV8lb2+Near2ztzBoCtxmbAVt2AaHQjH1erPwjuiVK?=
 =?us-ascii?Q?bKxH71hB2it8+bU0M9dEZIKk/Xhaq1+7FbIp+FZZToeVQoI19k512TVigGPj?=
 =?us-ascii?Q?7IMVjmqXU65xBDUN2k/iPQ/LrcyJ8mUX4tEy0cZFZy58Qnt09zhstceyhyCF?=
 =?us-ascii?Q?gIJGy+KToUlAJ8XtGsef6bu5X8hF5+7+KY5/zgWf8ix/sMDRLs385iOxz+Z8?=
 =?us-ascii?Q?KJaeHQNiyFqiPfsbTPgTbwJSIu5OnS6Ws2e4wW7FFcAnWuk6BtXcarmTb5bi?=
 =?us-ascii?Q?6vy63c09/+QNpLkeUzF7PU7LPFEZr8rj3kwHjgxTNQPYpLe+5aSL4tp2Sm0n?=
 =?us-ascii?Q?eCm0v9x+l545Ydx10DlONFtBFzzpWtexqgo82g7Izz2TdlXWrxn/Oma43q+T?=
 =?us-ascii?Q?kYiltCiayAWwSqXriptMIYFKKw8572ZdH6TQpDUXCWvaXI2Rtp8xJmsxrun1?=
 =?us-ascii?Q?8cexTVtqwziuHuht9TWm8cSWiH1AvQh+ek0m9Z0tCsARCSPmPZJHesVlTfpi?=
 =?us-ascii?Q?y/qSN/SKDvmdnMxpSdBqZfcQEXFkX+FPYCQJ8jomAm0NXtWrAt+uUKaS5w+N?=
 =?us-ascii?Q?P9B7CZiw9q1wY7IlDfGCFD+ljpoAbh9/axR8NpGoKdnkoyy+QfujczzYpNJS?=
 =?us-ascii?Q?K0zIVsJ70dEGa4MSRogxWKiFs6+cQ12LKWPKoKR+SIWStTfpepYUE+XfWNBO?=
 =?us-ascii?Q?DWGn3/enkxNBY9r91rutGNYkXzxGChu+pz3CB8vx63Axr+9cZfwIRIqCc5lD?=
 =?us-ascii?Q?lb4NGXFK37bWQTiPoTfW7No2Bkm4mwNpthVzaQfkQK5MwoPL8XqxZYBBIchb?=
 =?us-ascii?Q?EYQ3pdCU1YLolT/BDvG4gAU28oPc2yhwy9aahlRvbEi86nUKgbtqoQG8McO1?=
 =?us-ascii?Q?2bMlK9+cxbxTziB7erMFwDNP7KIJmaahGmLw76JaKa5Wlei4XVozr8Mx4aZF?=
 =?us-ascii?Q?3kkyXT2dv+viwjwwaNRkivSpDpEzIfaEUunDAxiTinkbZo2lVDYc1meiudVq?=
 =?us-ascii?Q?40h6azog+XSKm5LIpgw4rbI6BBVssALdNTXHocCOCuGLqwH3melX9xCAKdvb?=
 =?us-ascii?Q?sPSywVeYFIlzJsaJmrmiIDuo6V7JltyikGsiyR+uVynzVuJkqstaFrhClTC7?=
 =?us-ascii?Q?ype+pts96Vi6hOSR5ZcsMoob0RiJHc6r5se0cVDvRKTRchH702ktlrg4Rl7K?=
 =?us-ascii?Q?r0RiQfiSxZAOylsoNXVdnNbewdvgs5rYiTawAaLavx1P5EoU2r9CJ7+x3lPE?=
 =?us-ascii?Q?hj9FuDy3JIW6qKnvnkVkdmm7KBhTzRsEMjiIEQHCGDruyuvAkoktxHNYpNO8?=
 =?us-ascii?Q?s2Unu3U8KBs5WPu2awFCf1p9H+40xFPS75yjmFjkQSK22zNqNEeJiN3uICKl?=
 =?us-ascii?Q?8ZV17eCcYw+l5c844GqKSntDY2yVqQHXg/AYJLIwU1k2Vp8vLNMtHg6a8YCY?=
 =?us-ascii?Q?2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b62aa9af-97ca-4c02-24ab-08dd30250e37
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 20:43:06.9055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yAZRSBeXgPrG2bQTZehOgs9+mWam3zcu5H/R6sx+UCoHjuBwfOrRM88I7vTHEs0baQM/Ab8Y1BOdzltCg+2WxG6ko76p81hgqt7+8DL+p3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5058
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

On Wed, Jan 08, 2025 at 12:41:16PM +0200, Jani Nikula wrote:
> Going forward, struct intel_display will be the main display device
> structure. Convert display reset to it as much as possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Although this patch does make me wonder: is "gpu_reset_clobbers_display"
really a characteristic of the display itself, or is it a characteristic
of the GT initiating the reset?  I can see an argument for moving that
function into the GT driver and then either not calling into the display
reset code at all, or passing the boolean as an additional parameter to
the display functions.


Matt

> ---
>  .../drm/i915/display/intel_display_reset.c    | 51 ++++++++++---------
>  .../drm/i915/display/intel_display_reset.h    |  6 +--
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  7 ++-
>  3 files changed, 35 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index 093b386c95e8..3da70bdbd9f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -13,24 +13,27 @@
>  #include "intel_hotplug.h"
>  #include "intel_pps.h"
>  
> -static bool gpu_reset_clobbers_display(struct drm_i915_private *dev_priv)
> +static bool gpu_reset_clobbers_display(struct intel_display *display)
>  {
> -	return (INTEL_INFO(dev_priv)->gpu_reset_clobbers_display &&
> -		intel_has_gpu_reset(to_gt(dev_priv)));
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
> +	return (INTEL_INFO(i915)->gpu_reset_clobbers_display &&
> +		intel_has_gpu_reset(to_gt(i915)));
>  }
>  
> -void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
> +void intel_display_reset_prepare(struct intel_display *display)
>  {
> -	struct drm_modeset_acquire_ctx *ctx = &dev_priv->display.restore.reset_ctx;
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
> +	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
>  
> -	if (!HAS_DISPLAY(dev_priv))
> +	if (!HAS_DISPLAY(display))
>  		return;
>  
>  	/* reset doesn't touch the display */
> -	if (!dev_priv->display.params.force_reset_modeset_test &&
> -	    !gpu_reset_clobbers_display(dev_priv))
> +	if (!display->params.force_reset_modeset_test &&
> +	    !gpu_reset_clobbers_display(display))
>  		return;
>  
>  	/* We have a modeset vs reset deadlock, defensively unbreak it. */
> @@ -39,7 +42,7 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
>  	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
>  
>  	if (atomic_read(&dev_priv->gpu_error.pending_fb_pin)) {
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
>  		intel_gt_set_wedged(to_gt(dev_priv));
>  	}
> @@ -48,10 +51,10 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
>  	 * Need mode_config.mutex so that we don't
>  	 * trample ongoing ->detect() and whatnot.
>  	 */
> -	mutex_lock(&dev_priv->drm.mode_config.mutex);
> +	mutex_lock(&display->drm->mode_config.mutex);
>  	drm_modeset_acquire_init(ctx, 0);
>  	while (1) {
> -		ret = drm_modeset_lock_all_ctx(&dev_priv->drm, ctx);
> +		ret = drm_modeset_lock_all_ctx(display->drm, ctx);
>  		if (ret != -EDEADLK)
>  			break;
>  
> @@ -61,34 +64,34 @@ void intel_display_reset_prepare(struct drm_i915_private *dev_priv)
>  	 * Disabling the crtcs gracefully seems nicer. Also the
>  	 * g33 docs say we should at least disable all the planes.
>  	 */
> -	state = drm_atomic_helper_duplicate_state(&dev_priv->drm, ctx);
> +	state = drm_atomic_helper_duplicate_state(display->drm, ctx);
>  	if (IS_ERR(state)) {
>  		ret = PTR_ERR(state);
> -		drm_err(&dev_priv->drm, "Duplicating state failed with %i\n",
> +		drm_err(display->drm, "Duplicating state failed with %i\n",
>  			ret);
>  		return;
>  	}
>  
> -	ret = drm_atomic_helper_disable_all(&dev_priv->drm, ctx);
> +	ret = drm_atomic_helper_disable_all(display->drm, ctx);
>  	if (ret) {
> -		drm_err(&dev_priv->drm, "Suspending crtc's failed with %i\n",
> +		drm_err(display->drm, "Suspending crtc's failed with %i\n",
>  			ret);
>  		drm_atomic_state_put(state);
>  		return;
>  	}
>  
> -	dev_priv->display.restore.modeset_state = state;
> +	display->restore.modeset_state = state;
>  	state->acquire_ctx = ctx;
>  }
>  
> -void intel_display_reset_finish(struct drm_i915_private *i915)
> +void intel_display_reset_finish(struct intel_display *display)
>  {
> -	struct intel_display *display = &i915->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct drm_modeset_acquire_ctx *ctx = &display->restore.reset_ctx;
>  	struct drm_atomic_state *state;
>  	int ret;
>  
> -	if (!HAS_DISPLAY(i915))
> +	if (!HAS_DISPLAY(display))
>  		return;
>  
>  	/* reset doesn't touch the display */
> @@ -100,12 +103,12 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
>  		goto unlock;
>  
>  	/* reset doesn't touch the display */
> -	if (!gpu_reset_clobbers_display(i915)) {
> +	if (!gpu_reset_clobbers_display(display)) {
>  		/* for testing only restore the display */
>  		ret = drm_atomic_helper_commit_duplicated_state(state, ctx);
>  		if (ret) {
> -			drm_WARN_ON(&i915->drm, ret == -EDEADLK);
> -			drm_err(&i915->drm,
> +			drm_WARN_ON(display->drm, ret == -EDEADLK);
> +			drm_err(display->drm,
>  				"Restoring old state failed with %i\n", ret);
>  		}
>  	} else {
> @@ -120,7 +123,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
>  
>  		ret = __intel_display_driver_resume(display, state, ctx);
>  		if (ret)
> -			drm_err(&i915->drm,
> +			drm_err(display->drm,
>  				"Restoring old state failed with %i\n", ret);
>  
>  		intel_hpd_poll_disable(i915);
> @@ -130,7 +133,7 @@ void intel_display_reset_finish(struct drm_i915_private *i915)
>  unlock:
>  	drm_modeset_drop_locks(ctx);
>  	drm_modeset_acquire_fini(ctx);
> -	mutex_unlock(&i915->drm.mode_config.mutex);
> +	mutex_unlock(&display->drm->mode_config.mutex);
>  
>  	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.h b/drivers/gpu/drm/i915/display/intel_display_reset.h
> index f06d0d35b86b..9a1fe99bfcd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.h
> @@ -6,9 +6,9 @@
>  #ifndef __INTEL_RESET_H__
>  #define __INTEL_RESET_H__
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
> -void intel_display_reset_prepare(struct drm_i915_private *i915);
> -void intel_display_reset_finish(struct drm_i915_private *i915);
> +void intel_display_reset_prepare(struct intel_display *display);
> +void intel_display_reset_finish(struct intel_display *display);
>  
>  #endif /* __INTEL_RESET_H__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index aae5a081cb53..686be6edd2e3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1413,11 +1413,14 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  	/* Use a watchdog to ensure that our reset completes */
>  	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
> -		intel_display_reset_prepare(gt->i915);
> +		struct drm_i915_private *i915 = gt->i915;
> +		struct intel_display *display = &i915->display;
> +
> +		intel_display_reset_prepare(display);
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -		intel_display_reset_finish(gt->i915);
> +		intel_display_reset_finish(display);
>  	}
>  
>  	if (!test_bit(I915_WEDGED, &gt->reset.flags))
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
