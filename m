Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D03099379B
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:48:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C531810E233;
	Mon,  7 Oct 2024 19:48:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fk/2J3sp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3561610E417;
 Mon,  7 Oct 2024 19:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728330525; x=1759866525;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GR8l/MO0gELMiUJfkDaZkFii9zAzyDfjRaK9Kt5QufQ=;
 b=fk/2J3spqTNzPZA7PSLkQKYxm5bABqkjjhF0gL5b38YAaN1hFwLUqvZH
 nkAbFpwTWP3nvNDGgta5s+f6YUTMCPvmuigW4O3IR21UnBigg5v1soLEw
 SlAZXxYPQUwxAOxo7tPMqLIlcks8jz38WwcBRFj6s3/AtwwkQ8wfcgV4j
 MkpDF/cc09K1q80taNCZzyLcdZzKcjmUJKktVp10w8hoNDozC8rOdRHyS
 Hd5ETLeY5La/qZooL//GxxHBfOx5VMsfglBCS03Gr/dVAqKYx9mmuOzP2
 5IqS7fvnlhoaGle/V59vOe3tATFACbT8xOIlgxjFOFFuYLtPgIJ52M/LB w==;
X-CSE-ConnectionGUID: Xhievw84Tn+taFqNtoC8EA==
X-CSE-MsgGUID: u/2P0HvFQlO8cC6OEJLm1g==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="31386440"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="31386440"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:48:45 -0700
X-CSE-ConnectionGUID: LItI6Jp0T3qjQTSoghldcA==
X-CSE-MsgGUID: GHn47KhlS129yXA0dBqmnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="80377085"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:48:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:48:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:48:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L3Sb/nw3jNIhmb7OEUQXHboK0tka+pDCTG24ZA2XxuobVd0eeJsxYJfmj1N1k0pXszLBPfeUvwDFiQ9YXW2awEwS43DBk2qUSoVQuAlg89TZCpQphyy51xssyvy55/LCJ803X8imaBXE0HQjMmAGCM8IXVlPvyWy4Oprak6egLOIQncYWsb4bngP3DDV0y1QblOH5PBJ2jbfhgwh5TX/TGXuIPfIC4DmZT2u632kDqXfyL6eJDdOKVUOjaYbEyAh9tGjh0duJjRiQ3dHjWLixCNYYCogn0wJoQfBjNoZd3lMFtmTOwWvmhNvRzFtaRqQFfdpO1cTQog3hE3CB/+ixg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qxeZ7vq7kvwH0rUzaB4Wr0gF/mNiiE32InNu5n7NBh0=;
 b=JLLCNS/Ib3Ejk/ltkZyvyT+JLqBhR1y0tny+/CZU3bFPoFEXKgClGS7GVC1KdimyTAsRVlGC1UV4d022AiGN1GRfVnpq2/Ihvu7MHA8JvGbWfKf0AJ6a3PSkeHYY49mzr+Eerx6LXmb5kMPVTI6/U4lJao2rsFyk1vvKb4vvGn2pIdzYDHqhpaXOMUVSmbbwvcoTo6EZgsFIbmwfPUYHzSqNls1geKetlDLo/N/catfx+H2+w9e6dOg9aj2+aeyYS6iDnVHnVhwfeHYNKwqj67CupteZw+qbu4yaI7XFd+NSXWdA2mLOe9GPXFkH6f+km+mRmHfsHT2cJB4pAah2pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:48:34 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:48:34 +0000
Date: Mon, 7 Oct 2024 15:48:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 03/15] drm/i915/display: use a macro to define
 platform enumerations
Message-ID: <ZwQ7DmeuAeVv8bYb@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c10f2ca9980a1f62aad26b8e349552db475933ff.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0004.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ab14a59-977d-4794-e866-08dce7090768
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7iVDgqrV4OT/JwcLzwUKMNOniJ0cFOadylsaYdC4EEdH3QYSgq1AumCGNrXA?=
 =?us-ascii?Q?CWYcLov3KKRydyeiaYJgRcXEairVTKZ93btzKgb9i4RKBJUQvEV9lzv48Qt/?=
 =?us-ascii?Q?5SfcTKyf2UdbhVSA5/86TjJBvJzC3EpQ0fqRM2K3jDi8Agr54/Wdzic063B7?=
 =?us-ascii?Q?CuxnBsrxunjAyPPWZSYFNVjFgw8V/L6TWWOR9LZ9Oju9vx32E9rcDQ9OIGnD?=
 =?us-ascii?Q?2qL/yFox6Ro8seBBWqmgM7b32YhKkv1UnJJUWvETotn1mmBpBEmPUlw9ztAr?=
 =?us-ascii?Q?K9tgK3WqH/5q4Yjyf1oNdHXJYTJsX8DOcgGFhvaGtk6+VoqAqvacNOLFz23N?=
 =?us-ascii?Q?+YVKvBBlwI9nbvImrArw0dCQmZhxKIGf2f2GoTXKK7ywYgD7nohd0XJkCCbu?=
 =?us-ascii?Q?9aQK/GEasvEQR0Gujo+KQiQFgb/EkixBk8F86OjwrIPAFnFqC/SK7AVyhVId?=
 =?us-ascii?Q?WlfmobdGxRG7RI6EuLhoWREaVUcv9JPzPNuO16XffYg/nC+LvXOnhm4QyiSH?=
 =?us-ascii?Q?gRGmllm+vv9MC14xvnNYik/u86HPRA2fxV2YVq8BHwTV2ZCjTTlAbLkgFDyN?=
 =?us-ascii?Q?rsBzLs43l5k/vTONUHQDbIx3dy5gtFeeGyfFtHQcT2hXd7QhBpe46t86+e/0?=
 =?us-ascii?Q?NdrUtqGdhfy9EqPkoujxsjeo+hGvNBzupOEz51Seml5K9qdAPrT12ldlYwzs?=
 =?us-ascii?Q?UbJnAJU2OIEJGV10rVBL89Hmt3vXjbdkn3B1Nv1xbO2eMl3EL9C9FbYniNuu?=
 =?us-ascii?Q?tH7EL34HNJ5iOYw3keterNiDcRu1H69wy7+Emv6D+5ko6bCA/1qvexx4X3wh?=
 =?us-ascii?Q?R/SHlwdpAanJ6NqZneoQF5M+gVlp3DVbahkb5qlKa7p8O6QoRwaSJB5AFasx?=
 =?us-ascii?Q?XFS/eAOKG1tYmoOC4m12Es3Q1kCgPlj7+TadQ253AKn62XMYgLksd3NhiIZu?=
 =?us-ascii?Q?f2VeivsMlvLGRdKhb9izSoneyb+cyb/JRty3t+KkEPTD6bCsDQ4djoIWeCR6?=
 =?us-ascii?Q?5HjX0o8uAZ0NgVjHiNigDzDtRhlG8P5bHs09s7VijT2AUzfV5KoIlzpwtSKe?=
 =?us-ascii?Q?hW+VPziqD8o2K713w+R5p97hbzCuWWWMgxHwdPqt/t9b2bKEnQz/pjQF/nEc?=
 =?us-ascii?Q?zoLUnM9AHr7sdFRRCY/Xh85RrU3osxhIoCKbdDgyVgpjEl3yJfN9wq0S5hh3?=
 =?us-ascii?Q?d7T3gO2w0xyj9LxawOyvS+HO1VripbYFf8cHUkTVXy2iU8JIIh8JmiXrp0b4?=
 =?us-ascii?Q?3litTMZ2K4AaXT/cnSbz5nnid60RIznAI5gREQulmQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9roS3CiWsto8hFdkI9tHRBYcU5fg7Tk66xaPQ4UKEV4CxpT5TTTIGQwEPMXg?=
 =?us-ascii?Q?r6WjyhwXoEmW0UHl87IiN0YFGl1JOzybrjoC1aChIpkLx40Z/btXS+UQoZDw?=
 =?us-ascii?Q?BakkjCmNiPJuPPnzwn0pK84y+aW+eZzXW6dH1VFKwnGBS9H2Dpjhp66USJHJ?=
 =?us-ascii?Q?fbnzad71Yrj1S94vFqjDPPs0Jpo/h88MVZK48XrWHOunQM+yt0p7tguu7Sq7?=
 =?us-ascii?Q?oBBjsj1PNx+73s48mz2dQ8NnIKPUv1GKX/obvV0fKdSrlpuHdEC4pt3AgC59?=
 =?us-ascii?Q?MBDBjDO5SYy8J3SGHmyvl6xMB8kXPAlQehJ8D7bFEq5nDBftU9mv5pXEbDTv?=
 =?us-ascii?Q?xPA+5OIfd2F+FCLBt7YZbvdC5v9l8ZnCOfpYFLeOPArfsn8R2ZQ1m+Z75BiV?=
 =?us-ascii?Q?uhFNK7kDa7WSc3TNaxPiTbhhKA1apLbpozXwUYAWjZpDGSVXJl5IZIoqoUlp?=
 =?us-ascii?Q?Yx2w1l4o3GlI/KnHYbIUdvegJ29AjIVjxZ8/eJ4KZC96N/SfuObWDMmGMf8M?=
 =?us-ascii?Q?R4Gx2EfY3GVnu63PLdAqQe47MkNl/Hs7/l3UKfoU22+qWnrBnwj9OO9TnlTw?=
 =?us-ascii?Q?Gi0ixsPov1bA5SQpATXCnOrk4QU5EOZCdvyVFS1UyUpB0EePfDiLoPvranmh?=
 =?us-ascii?Q?Z7O3XmTjU2rwRNpzFsly7oPhdFITq1rtoAJcEajf3wHY/gbbZV/Bx+ZYtCj5?=
 =?us-ascii?Q?QOfcOJuyDNH1oyNIRoLnKo3ygSyV5XrZwcbQjRSF2L17lTmtUqPoto+kuIVE?=
 =?us-ascii?Q?uW4P5VQQygj0PMiv0dVi9LGbX4xA/g/kAK9HYG7jw3pL2WXjJIWKbfUtobvZ?=
 =?us-ascii?Q?x3Ty5cddg3lEW7jfk1D2riSVKAP1v8//JrtoFBzOLLx4xhJbNbRdTElgImtV?=
 =?us-ascii?Q?b3RkxlieIdTwpkrszG9miRqvG2SWSM3e0H3GunICrL2KcCuzH7tANpuSfFpn?=
 =?us-ascii?Q?prBFXxwTxGiQEm+08GBvcl+FBiCV+MYm/DLxYyrfzghXvpHxNFGzJxCLims3?=
 =?us-ascii?Q?RqyDZhchAEbiTWcAdxNMmIGqTReB4FMRQwJY9e545sex+xEhFmTy44pwLVw9?=
 =?us-ascii?Q?2D4MeZE9EwvBJ+Lc696te3bDo57tRmy/1HdysL1pSvRSEz5jt5CzqjpyIIIi?=
 =?us-ascii?Q?+Ey56ehJ0uTbDLl5Uu9+O0tLh/0dprzq5S5X74Y4sIzHImfXkEHgmpvGB9mH?=
 =?us-ascii?Q?B1haxZqrX+rp2qLEkzKbg+32UCUvw8tHfTSPTAwObrbKmtjQIoNhQ/ekt9nY?=
 =?us-ascii?Q?EpxwWG7ilJXs6DnicDzrs+MZYzNvGbA+zsNL5CeXMwxP/M12D6JayXtsBxGz?=
 =?us-ascii?Q?E/frfVSIwTMKECjtdwHhXMmky66isC2AApOvf7GmoZeED7+X6Q3A2scGfI5t?=
 =?us-ascii?Q?w1/M7LLQOB92vhhl3H2pM2qqlskNCvn/6jH5pHzrW8EDHGMyAcoRoxw1n0eW?=
 =?us-ascii?Q?K73Yc1yocFSPuNyt5HM/5egi2I7G6wig7hICsROeaIjdVFSplju6YOk4sh2e?=
 =?us-ascii?Q?k4+s6uvRtaOfxNcRJNznBiYRKZDJGgJq8Sz2OY/+XiRYT7OvVVMjnfRvcCR/?=
 =?us-ascii?Q?wwu5LUxptC9R8ZXy9MCkBrY0Mx5IiKVHSkSlqha6UnaQOdrfMacYJtpl9kyW?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ab14a59-977d-4794-e866-08dce7090768
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:48:34.6594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c4kDyfcUmT8Q2Ria80QX0jINFSyLRmI2spblVqkN230V3TIPbbcfj2TqcpqGbQS9ArBfswIx+dZxmtrKR/3t+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
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

On Mon, Sep 30, 2024 at 03:31:04PM +0300, Jani Nikula wrote:
> We'll be needing a macro based list of platforms for more things in the
> future. Start by defining the platform enumerations with it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.h   | 115 ++++++++++--------
>  1 file changed, 61 insertions(+), 54 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 5306bbd13e59..1cc1a2de9e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -15,63 +15,70 @@ struct drm_i915_private;
>  struct drm_printer;
>  
>  /* Keep in gen based order, and chronological order within a gen */
> +#define INTEL_DISPLAY_PLATFORMS(func) \
> +	func(PLATFORM_UNINITIALIZED) \
> +	/* Display ver 2 */ \
> +	func(I830) \
> +	func(I845G) \
> +	func(I85X) \
> +	func(I865G) \
> +	/* Display ver 3 */ \
> +	func(I915G) \
> +	func(I915GM) \
> +	func(I945G) \
> +	func(I945GM) \
> +	func(G33) \
> +	func(PINEVIEW) \
> +	/* Display ver 4 */ \
> +	func(I965G) \
> +	func(I965GM) \
> +	func(G45) \
> +	func(GM45) \
> +	/* Display ver 5 */ \
> +	func(IRONLAKE) \
> +	/* Display ver 6 */ \
> +	func(SANDYBRIDGE) \
> +	/* Display ver 7 */ \
> +	func(IVYBRIDGE) \
> +	func(VALLEYVIEW) \
> +	func(HASWELL) \
> +	/* Display ver 8 */ \
> +	func(BROADWELL) \
> +	func(CHERRYVIEW) \
> +	/* Display ver 9 */ \
> +	func(SKYLAKE) \
> +	func(BROXTON) \
> +	func(KABYLAKE) \
> +	func(GEMINILAKE) \
> +	func(COFFEELAKE) \
> +	func(COMETLAKE) \
> +	/* Display ver 11 */ \
> +	func(ICELAKE) \
> +	func(JASPERLAKE) \
> +	func(ELKHARTLAKE) \
> +	/* Display ver 12 */ \
> +	func(TIGERLAKE) \
> +	func(ROCKETLAKE) \
> +	func(DG1) \
> +	func(ALDERLAKE_S) \
> +	/* Display ver 13 */ \
> +	func(ALDERLAKE_P) \
> +	func(DG2) \
> +	/* Display ver 14 (based on GMD ID) */ \
> +	func(METEORLAKE) \
> +	/* Display ver 20 (based on GMD ID) */ \
> +	func(LUNARLAKE) \
> +	/* Display ver 14.1 (based on GMD ID) */ \
> +	func(BATTLEMAGE)
> +
> +#define __ENUM(x) INTEL_DISPLAY_ ## x,
> +
>  enum intel_display_platform {
> -	INTEL_DISPLAY_PLATFORM_UNINITIALIZED = 0,
> -	/* Display ver 2 */
> -	INTEL_DISPLAY_I830,
> -	INTEL_DISPLAY_I845G,
> -	INTEL_DISPLAY_I85X,
> -	INTEL_DISPLAY_I865G,
> -	/* Display ver 3 */
> -	INTEL_DISPLAY_I915G,
> -	INTEL_DISPLAY_I915GM,
> -	INTEL_DISPLAY_I945G,
> -	INTEL_DISPLAY_I945GM,
> -	INTEL_DISPLAY_G33,
> -	INTEL_DISPLAY_PINEVIEW,
> -	/* Display ver 4 */
> -	INTEL_DISPLAY_I965G,
> -	INTEL_DISPLAY_I965GM,
> -	INTEL_DISPLAY_G45,
> -	INTEL_DISPLAY_GM45,
> -	/* Display ver 5 */
> -	INTEL_DISPLAY_IRONLAKE,
> -	/* Display ver 6 */
> -	INTEL_DISPLAY_SANDYBRIDGE,
> -	/* Display ver 7 */
> -	INTEL_DISPLAY_IVYBRIDGE,
> -	INTEL_DISPLAY_VALLEYVIEW,
> -	INTEL_DISPLAY_HASWELL,
> -	/* Display ver 8 */
> -	INTEL_DISPLAY_BROADWELL,
> -	INTEL_DISPLAY_CHERRYVIEW,
> -	/* Display ver 9 */
> -	INTEL_DISPLAY_SKYLAKE,
> -	INTEL_DISPLAY_BROXTON,
> -	INTEL_DISPLAY_KABYLAKE,
> -	INTEL_DISPLAY_GEMINILAKE,
> -	INTEL_DISPLAY_COFFEELAKE,
> -	INTEL_DISPLAY_COMETLAKE,
> -	/* Display ver 11 */
> -	INTEL_DISPLAY_ICELAKE,
> -	INTEL_DISPLAY_JASPERLAKE,
> -	INTEL_DISPLAY_ELKHARTLAKE,
> -	/* Display ver 12 */
> -	INTEL_DISPLAY_TIGERLAKE,
> -	INTEL_DISPLAY_ROCKETLAKE,
> -	INTEL_DISPLAY_DG1,
> -	INTEL_DISPLAY_ALDERLAKE_S,
> -	/* Display ver 13 */
> -	INTEL_DISPLAY_ALDERLAKE_P,
> -	INTEL_DISPLAY_DG2,
> -	/* Display ver 14 (based on GMD ID) */
> -	INTEL_DISPLAY_METEORLAKE,
> -	/* Display ver 20 (based on GMD ID) */
> -	INTEL_DISPLAY_LUNARLAKE,
> -	/* Display ver 14.1 (based on GMD ID) */
> -	INTEL_DISPLAY_BATTLEMAGE,
> +	INTEL_DISPLAY_PLATFORMS(__ENUM)

these func macros gets me confused so easily, but I believe
everything looks okay here and I'm trusting your compiler and
experiments more.

And I don't believe the CI issues could be root caused here,
so

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  };
>  
> +#undef __ENUM
> +
>  enum intel_display_subplatform {
>  	INTEL_DISPLAY_SUBPLATFORM_UNINITIALIZED = 0,
>  	INTEL_DISPLAY_HASWELL_ULT,
> -- 
> 2.39.5
> 
