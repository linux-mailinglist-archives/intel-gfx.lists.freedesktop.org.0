Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E28598FF17C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:01:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6507210E9D0;
	Thu,  6 Jun 2024 16:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DntjW3lU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18FB10E9D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689699; x=1749225699;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lNaufSyYIgXeWD1pG9hZW02CnPnr8ZL1VjNB/MsoXCM=;
 b=DntjW3lUda5C5YatYWW/p/+GYz5QyD8cuE7GVji79Mu8fH0ZmXlSJJ+4
 O1ISEt3nCYvmM9C025JdtA+ULl1rLdBzitgh+HPg12jp6Sehn586r20Fv
 h7RTz4Jl6RQmY1KP1P28DdfKcp1/qdiTphIK/GS5fzIbpRKvdLSqb2lrW
 CZeUGWR9gmDQjXvdpF9l9bPJUb29GV1x0iP/G7bqSBuc5E2IkkbCwFkhl
 Mtn1R3cMiA7r7j+BDBS16Ks52+i5X3hvBvRn1Jw3PUGSSvhba6UIq2PGR
 QFmirBvykCDGUv/le6JLaJ1zv+nwqHycY1p6zvRSbX1ukxse44a196k2p g==;
X-CSE-ConnectionGUID: F/fUPyf7TWmN/TKG8fDnuw==
X-CSE-MsgGUID: heuioxUVT8uXD0fnE7s6Yw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14177834"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14177834"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:01:38 -0700
X-CSE-ConnectionGUID: D5Ng6VR8SFWhUex1WlMdUw==
X-CSE-MsgGUID: TCsiLwJjRXSvVljS6zsH1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="68805685"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:01:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:01:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:01:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:01:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdjVFR2q6v/N+WkC763HigMp46S4zRGZ+A0NRjd9qrXR1VDBDQGepWL6JZjcqH5Ai3BHdm4z7YczoEp8uwkWZHUI/xLdMK9YzdKj6JhtJ8YLFI+kocRY5kzMwqtrxtjkszZeCzhJQdlEFzvvNDVwX5fbbmWfQzMmUi+MUDqHctk+SQiv5KaCH63yjJY2udwGVADqEmRx+PqpQqRHeYPPB/15nLarvedpfSB1UWnZMCCd1MihU1/ry53yK6KgBuaWFUZ8cC4JdtEJ8u19oNOwJO/WTf8MPOHlYujcXgFMM35VCnDSay6bVL+p2vI7835yLpvpMEG9sAO+T5mqf4jGAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1dWWl99E/VV0zzQuDELtk9bZovFohLjBMNh0NjXdhsQ=;
 b=bMnnholZ8jHBIUMK35kqgcUA5Dpct3fRb4oS9kK4NqdoLVFLPWjxXwJbNmZ6LKiL9Eom6Qxw80vxNenqFqJU7rn94BUE/+LXyMusTKuU+v+i9k/BN2K9yfeFXAeAXh5PWKDIVv+WQBeHTYnlUwp28WM4lAHgDc7ZqW/rZinDwjVYC8TqRpViVCJGvMPZDYRsp2VYqtCz8ZMILfOCA8cwY96bgrJAaQxJxicw2FUbMfiVw+xxZQd8u+OXVDkygWqYl6YyyEJ5VZVAdvcgV5qPe81Vra+41l7Hot6OuBPxgHQ6MO1ptquJxiIiCrJfpaXyM17Hro/Kfjp2j19crDBunA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6836.namprd11.prod.outlook.com (2603:10b6:510:1ef::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 16:01:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:01:33 +0000
Date: Thu, 6 Jun 2024 12:01:31 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 30/65] drm/i915: pass dev_priv explicitly to
 PIPE_FLIPCOUNT_G4X
Message-ID: <ZmHdW_Ex-hzfz1mI@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <c53a6f5cd97976f43fbae442034074d2ea9aac42.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c53a6f5cd97976f43fbae442034074d2ea9aac42.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR04CA0007.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6836:EE_
X-MS-Office365-Filtering-Correlation-Id: 70ad0684-b270-4dff-57ee-08dc8641efc9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IC6iKJZWCPrLOOyBWuTTnhP1EnwIk0CVSIiS7sl3TiEiPV8/gtPZp8w5CZg7?=
 =?us-ascii?Q?yQQihgCUFCSQz/Zb89+d93G1C4oKDDl46We/YqS3WPO6WTtPzeUlUqOWwiqp?=
 =?us-ascii?Q?Fu3hGrRa3ulr2rEvtVilkm7CsPvb7EvQecu70R7XrbJNWLCxwqvCirBYYirm?=
 =?us-ascii?Q?QIyi929w/MaEHW+R8NNWb9o7tomnvvQIw93IP9uwtJAtK0a/vXZUhDnGwkUb?=
 =?us-ascii?Q?5jVupUcNoViyw3egM8GhgumAL/fG5qA/6O1iAsgcKFV2ZwUmFhyBZCLG+3Us?=
 =?us-ascii?Q?yypzgZ4ntMwRTfOMUfE64fOD08xMPXjCh0Acf+Js9RtrhnBJC5rD7DnjmUKu?=
 =?us-ascii?Q?adUBh4X65Nv2pa4semKYQh1eExyPhGbg5Nbi8sbFdjgR42DbxXjtM9ERHB6y?=
 =?us-ascii?Q?WugBvje9Og2ZJY4mzaxGyfxRwwXfowSTSLsf3GSMugNIyUf/h/lY4+E2k3UT?=
 =?us-ascii?Q?Wp9S40mJjEtyWYy5Rp5T/co25VrXIMbXKUu2gvAt5VqjnlTrGXWzaFY08Vj0?=
 =?us-ascii?Q?KEjAQ9yNgv1NY4we1BG5XY30unaYgHL8u6sS94yTJlpc+TLojxDyS5eGEkpP?=
 =?us-ascii?Q?5OQJxXVLinhEgeSlMrHPVtymKgdPmco2BUod5N1JWN34syv0g2ggTDSmyyJe?=
 =?us-ascii?Q?wFe9MRjz/oHa8+jwHKvzWpo+4NcZrfkip0lv2CF82Mh9ljU6D1R4cZEv70ab?=
 =?us-ascii?Q?u1pJWPhBUTC6RYMJcdWZ1qEFYpW4h71S2JW7PiMJF2pwLS9fvCCIdi7aaJr6?=
 =?us-ascii?Q?6inPvirfh67ho0pDkIbmEstxGwxT6RG9lfSUFbPPR3MymX10sHJmKpce0l26?=
 =?us-ascii?Q?QO2IRNyfgvLgESYpqKZA07an2/jAyJp8OarQ7TtrqSbEFck8dgW+Tvu6Sv0R?=
 =?us-ascii?Q?tBIkkKcM3fTjOSiQ41OaY/79MLTfjcJbRp2RnSMCMBgAfsW/Fn3vEvbpRRz3?=
 =?us-ascii?Q?n+wV7yDK+kL9Oyy4IgqA54wwBT8uTXtq/EAw2i4sGRRfymJ/Hkpm4iyvKxu3?=
 =?us-ascii?Q?36zulYW6gTn1RlUIwAQI+Rnf5/gHjk56N7dT+lyXkPQTcdgTb8yzRMaFd62w?=
 =?us-ascii?Q?H/hoTommTqktZ1C969M8zqPGnaJ8Pri9xbpKUOW6yuVPup963eNBXPolPl1R?=
 =?us-ascii?Q?nST6KRMcUnPAV2p+i3NXqfRaBbbuzQuQ3ZG2TLEZuqNTIcElImhw2EL7CZZ/?=
 =?us-ascii?Q?lovU3tan//RuIZ/4n016Hg+jkiRtKrBjFYj092MhFo/Vyl+/jJ5x9MNyMs8E?=
 =?us-ascii?Q?ZoDUythnbMG8y9SmOqheBRofB7yASut5YZOayrx2C0rZ8C/fGRU/qrQgTvW7?=
 =?us-ascii?Q?+Tc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qxsRlTs9aZjS/vbzPv2TdTdLTtopexpetxi8x0KzjQRtrHLyFH6HHvBOofUz?=
 =?us-ascii?Q?8tRQ08Pk9otVQVRch/xuTfyo2oEEjgxhHaGkPxgRy+REQ8keKpDj8GM2Jp78?=
 =?us-ascii?Q?r4/5/GFlkHJgT8a3NSsEx18QyOOSz7uUcm8P1fNTGo67tTkTWli2HSfU/vhP?=
 =?us-ascii?Q?OGnHNCTLyOMU0G/qsE4uBodDmPGyqsCJLZ7Atf3pUSBbEmFbdXtU72KEmvID?=
 =?us-ascii?Q?/Wt6KY8/gihAnj2FvMhcyuumNMNAvXT43Hg769amV/ePfWOhxnPxMgFt073s?=
 =?us-ascii?Q?QwpYzqPO87ZxgdVMXmV06GMTWhaxQZtR+Fv12sj+jTIew1zpt31yKXyVPaIU?=
 =?us-ascii?Q?7aBg5MToeYGNzJa2C3c6Ym9Ti017gxF/1NVTiqKQAvXPyxR5UUvJVQUDF8A/?=
 =?us-ascii?Q?spXKwek6OhhXupZfxDgfDkV8auMfOwh5Q+hB/dv5DQxVcrIfl6eUJ7iDiuzW?=
 =?us-ascii?Q?KsYOOF9qD0YoL++wdnd1oITpYjhh3F0uraZ6CNOCXa76WFDggD+h1UDYxpf9?=
 =?us-ascii?Q?S0oKqqEXlFgLHBzTbH8+YXUfQ/J7n7XcXW+aTWcq1FZjZ2otBC7qLS7uediO?=
 =?us-ascii?Q?61T45URm8/CElNk1Cvoio/o78yGt9W/cp5wEZGH5+uftDzl71TIwhZMTVThR?=
 =?us-ascii?Q?CYD8eeLu0WqBrI3tO1/S+kDtvw5V46Bl4D7cj4Sh3zPHSvx91Lovha+Pu/kY?=
 =?us-ascii?Q?On7vVZXMqNFgwtWiAJyUSZGjtH/hWHteaCamdw3t0uzfiZt5+9OWWgqnA29H?=
 =?us-ascii?Q?fJDNXn7Ftm82RaBOXv7hZkW5W6XpqBGczGMktViVV5onV6z5LmjbBOp0pWbO?=
 =?us-ascii?Q?xvEPnPXF3S/h+kSVVxRBIji+C57piwvrStdYbiA0430vpbOmH7xruMb4cUrG?=
 =?us-ascii?Q?2e8FtU482XFRFoI0xestjO16KHemDGC4BT082SaVyrFoHkK0jE5wS7fO+rnB?=
 =?us-ascii?Q?dmsnOfPE0t/DanjApzMJgBRcxLXRPK6lhjst2+dy1B14NbH5tdZ0LaM/6hCm?=
 =?us-ascii?Q?8Nylu1qbVJg3aKC8WeLeutWHcbSCOkCWmJxp6uKNszR1KZX4yrlh+368a3yw?=
 =?us-ascii?Q?AzP8buEcYzm9dztWnMuFw1I7sL5YlpJqSm0W/md2VzIP6GeAqvA4ALdfMCkH?=
 =?us-ascii?Q?koq4hSL7+ecOXzIVqJnEX6kt1nUYXW9MKNr3h1yx+zSqbgIJ6maDMf8ejELy?=
 =?us-ascii?Q?KfWqPHy49KWZ8p1oP1cm4l4WlCZW3tdmvsFa4W9B/WZJVJP9+YUqeEsUnWsc?=
 =?us-ascii?Q?7NIVsVJDkoMuoY5WjOcwx2fqzSLA7IoAoXj+zWlLozJNiRIHFVRxIrnqpco6?=
 =?us-ascii?Q?ByBuHC0KxKxqerW3ncnvB4a70awqvk6rFJfNql76DN/A7NhO76MgTa8rZC/U?=
 =?us-ascii?Q?/8rn4MXnYYwit4WeB9/4cQxGHmhAEWWrP4rwsYTfIsSDYNdoY7wgn6b0wHOK?=
 =?us-ascii?Q?AHYqGeH/9xpcajxZ/cZCEUN9F3U89nU4Xk6IGYWM02RVP6J1z8lHmqEjudQn?=
 =?us-ascii?Q?HKRHYUI6p3RTODtmCAG9C9jLgJQTJ18YI/6i+rvA7kQ393NewYIaJHMGJlx+?=
 =?us-ascii?Q?peKZqDbldZ5dOQ3f/46a+PILObtuPZpOduWpF8VK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70ad0684-b270-4dff-57ee-08dc8641efc9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:01:33.5313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S4i19xSRCOYPPMXkyKVmUd1T8kKN1D2CwLWjG+zAd8hGAXOHUSOhXy5+wawUAjn6Wbm1vil39Oa6pzXM14mE3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6836
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

On Tue, Jun 04, 2024 at 06:25:48PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_FLIPCOUNT_G4X register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/cmd_parser.c       | 2 +-
>  drivers/gpu/drm/i915/gvt/handlers.c         | 4 ++--
>  drivers/gpu/drm/i915/i915_reg.h             | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
>  4 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> index 9cdb53015d16..2f4c9c66b40b 100644
> --- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
> +++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
> @@ -1437,7 +1437,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
>  	}
>  
>  	if (info->plane == PLANE_PRIMARY)
> -		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(info->pipe))++;
> +		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, info->pipe))++;
>  
>  	if (info->async_flip)
>  		intel_vgpu_trigger_virtual_event(vgpu, info->event);
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 039d2cb273df..bb904266c3cd 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -1021,7 +1021,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
>  	write_vreg(vgpu, offset, p_data, bytes);
>  	vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
>  
> -	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
> +	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
>  
>  	if (vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) & PLANE_CTL_ASYNC_FLIP)
>  		intel_vgpu_trigger_virtual_event(vgpu, event);
> @@ -1063,7 +1063,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
>  	write_vreg(vgpu, offset, p_data, bytes);
>  	if (plane == PLANE_PRIMARY) {
>  		vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
> -		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
> +		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
>  	} else {
>  		vgpu_vreg_t(vgpu, SPRSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d62da57afda7..5d9429bf17a8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2258,7 +2258,7 @@
>  #define _PIPEA_FRMCOUNT_G4X	0x70040
>  #define _PIPEA_FLIPCOUNT_G4X	0x70044
>  #define PIPE_FRMCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
> -#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
> +#define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
>  
>  /* CHV pipe B blender */
>  #define _CHV_BLEND_A		0x60a00
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 2e027f3ee750..ba3f734ced0b 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -138,10 +138,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(PIPESTAT(dev_priv, PIPE_B));
>  	MMIO_D(PIPESTAT(dev_priv, PIPE_C));
>  	MMIO_D(PIPESTAT(dev_priv, _PIPE_EDP));
> -	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A));
> -	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
> -	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
> -	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP));
> +	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_A));
> +	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_B));
> +	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_C));
> +	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, _PIPE_EDP));
>  	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_A));
>  	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_B));
>  	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_C));
> -- 
> 2.39.2
> 
