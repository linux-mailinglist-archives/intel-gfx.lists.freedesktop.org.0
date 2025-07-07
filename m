Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5701FAFB6B4
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 17:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C3F10E4C6;
	Mon,  7 Jul 2025 15:02:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XwBWyVFs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4669E10E4C1;
 Mon,  7 Jul 2025 15:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751900521; x=1783436521;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RmaEpwubWtxdoXsE91STg5rVFWVbnNOV1mEJOMRYIx8=;
 b=XwBWyVFszy9Uf5j0fJhotHyAoERqihv//I4aWExEsm+2jEXsNEYp98Dt
 ZOMAoWg0y2eEORIRobCE57rj0OODJ6JYYsjxqOWFWFoQLE4VgJePdFkCW
 srWUbcfOVQHmg/mVQbmDOMQIkC2OW/VYXb4O8QfzWwZTdmqRetPy7l0Wb
 zxEGZdAKIQb8sAx9AArR5SCtH9CUX7XSZiBAMUiOGHZusLPgg+/g/M+pn
 t20xvrLMvqzwf3kEB3aJXNAXZNZtgQWsBfgGEw08p4+v8oOWMjdIX8beY
 Y9B0REoFGmljntMK8+FdxunYRm4rzOY5Htn56p19gfzniNjtjQw7QCvg0 g==;
X-CSE-ConnectionGUID: 3b6CnmZlSl+mYJlcNBGk6A==
X-CSE-MsgGUID: HyPAmmBhRWCYGbka86bitA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="56737586"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="56737586"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 08:02:00 -0700
X-CSE-ConnectionGUID: 3UHt/dyTQoW9uN4HSllEDQ==
X-CSE-MsgGUID: nMv/EXWjSRCV57xAtwdaJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="155973337"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 08:02:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 08:01:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 08:01:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.86)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 08:01:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q2eY7JVjmeumcrtRFCliFygDeHvogrwke/YBMHSGMj50rEEdy6PyCPaRhb/N2uJSKHSCqS9kGvOUxtz7DDvpBXhHP0gAZF16O//LmJSB/c6MZz9f4RQH3RNsYPT3/wA55KcRmbfWQMwgN+7zK0LZbTyUjp+4NPn7qzlIoGYeOpB7hnXLc0TAffbRqQWfx5eNOl+9m4WHPfhKoTt+X2Ze3qyrYResiydEkp5CtjY+EzWGKKFlyq48RqxBf9cHN270cE0BQ/Sv0WsFIFXJ6wyJLtRDd+6X04kUNjRR3uvHYt46Ugn20aRGlOUfFIkzdbCHZqAx/6Wi8puenyej2GE2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EOb2Icr7tLebp8rxEd3NzCHNfVc9UW6JU8DS5aJqGBY=;
 b=vG/4Kxw2mMXJzHLqZLwJkBZJnYebCc8ieSwWawpaXD8peRJBdOBW9Q3rAl67CPZvPNjhxCPgT4leLgjNeU1DmYBJAPR5By4lpVbBPx9GtVLNGQes89K7Vb0+xL7CSO5HZ8eQzmijePQqjCcpCWyZBkHom0XyXvXc6t59Ueu+K48GbN370D3K/apup+UvrOaJHv4b1O5aStUrA6QRQdUTUGaGcMHz8X5fxEVFJtbxKXGv7+lwNXkOMOaCPokGdSgdrr0PVhPBjVwNG5+uIZq4xhZGjrvhgPm6zWkpA+ostCoytoz6dRHa1L+iJ8hxTrT/UgQOGDk1N95IkdA+8mrbzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SN7PR11MB6560.namprd11.prod.outlook.com (2603:10b6:806:26c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Mon, 7 Jul
 2025 15:01:29 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.023; Mon, 7 Jul 2025
 15:01:28 +0000
Date: Mon, 7 Jul 2025 11:01:25 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2 is
 disabled
Message-ID: <aGvhRapKppSGxbCa@intel.com>
References: <20250707104733.1874797-1-jouni.hogander@intel.com>
 <20250707104733.1874797-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250707104733.1874797-3-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR05CA0190.namprd05.prod.outlook.com
 (2603:10b6:a03:330::15) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SN7PR11MB6560:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f92a205-1071-45c5-c811-08ddbd6726c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?outkjN46h0Onp1gdPnRvu8Hs8pr4Zv/s8E2oElWBu8ZeQz0f1Y2IgY601Q?=
 =?iso-8859-1?Q?eNDI7zInzPMOBB805H0SCcBhm6y6woM/VXchTkAAlP0sYjq0RODFlWQwax?=
 =?iso-8859-1?Q?GEXhlVYVUJjIzEzKsIQ3IvxyEM93Uw6M2vukl+m9JkX5oqeTjyRfKoHaM4?=
 =?iso-8859-1?Q?qRPCtoRKxm0exoQB82PSR4Dbc3P0rTPvROiVRxEIS01qqlvgdhanPZ32Lw?=
 =?iso-8859-1?Q?XF/37RO80SKqNrrH0a7Qj6Wk3q8mrG7Wdmv6OLxkGyQkY/WmxkBSjQY+0w?=
 =?iso-8859-1?Q?3hV+lnUf6j6Dxd4wINhkJE3QjZS6pM63KUYcb8RoblkJ7kiJVtXpACnz9M?=
 =?iso-8859-1?Q?008m1UY8NE17OsLh3Gf0y1Ks0KuIj8nEGgAVMwQNn+ZSp6ykynfMMslNr/?=
 =?iso-8859-1?Q?dbMCI2rhJf5S+VU6z3AjY+wHnUAo39kVlpaFtMrouj15g/622bVyGMTpYG?=
 =?iso-8859-1?Q?IWV7GOWmEJOrfmjWnqoioRRRlLqQFHughAqirnfivNaKkUGQrOLqHVDfe/?=
 =?iso-8859-1?Q?ys/ELsgzillohr/udeozJlSSfLQL+47pEbwwdfDq6w89pM7amH463WrGZr?=
 =?iso-8859-1?Q?gcI01N/2hy9YLs4cXDzinKtPaPFLu7NocO5nNZdiCVsa0qTZ+gohrEl8nG?=
 =?iso-8859-1?Q?I7lAn6h63bdUPdzbFCHybe4YDRMr+UQvrJ553KHL5gJQ88B03Gv2CDiA2x?=
 =?iso-8859-1?Q?e9g2Q2rCuZWvqVfAYnc8t4U6hvKbu/SieCoUdRWasFWdO3cIs9J01waTE9?=
 =?iso-8859-1?Q?llKH/OHDAcgSkrN5dX9lZAS+nq+lyfLkv8FEuA55z8xfz3Qc1udlmyE5+V?=
 =?iso-8859-1?Q?5ILpmNRpHkqnT6HVYSE6R84DcuYuwLUSBy8VmD1XeNDXTPJY+eKVqXw7CE?=
 =?iso-8859-1?Q?KpgK1QPrF6SkctJyGS/KWfZHHJJCWNjfGPkdqaZaGp20CGBBhPC+9qu0Qh?=
 =?iso-8859-1?Q?FVHQGENAgilE/WkZYyyMbj9c99k/3B1HOUSBWmt5g3hbDwzjPayIc86x/A?=
 =?iso-8859-1?Q?ge2BuIfJrZXmO1uPROkVNl7ve2bZMqjR3asJqcRoW9BAvXhv0XJ622O7pC?=
 =?iso-8859-1?Q?Ys2hm0Dh3CKZSIB9EHZrJUbTvcGySpGoR62RXPMK1SSu2bWwTX6hlPNqXF?=
 =?iso-8859-1?Q?Wh15VBCFb5oI9FL2ilTi23NFBJGNme8kR7tPcTG1pDQvXXLIWhiD3a4OB6?=
 =?iso-8859-1?Q?nm9Z8nu+Ug8SHjPoeKsO0ccWVUw6vc5ZvpWciZZ0GpPXB1cbGOgGh/TruQ?=
 =?iso-8859-1?Q?d1fVIQvTgXIYylgoWknbEp+bWllS3WUTljfNwS3ZTGXPP6jtvBkJUupHBc?=
 =?iso-8859-1?Q?7lrJ4U5PHpeB1S/EgATTXckMvawsDFIHMjthxPhMMqKyVu8bH9Sm/QVRNP?=
 =?iso-8859-1?Q?al9v8ynygKpebZtnfZ2hmOngN6G9dGVhbPRrzkPMk2Y1aQON2ZHrQKYKy/?=
 =?iso-8859-1?Q?YFoXydXaPwbH1T+MO408bw2/ta9DZznC9JkBZkMnpu4GUHggi5U8hcrvqL?=
 =?iso-8859-1?Q?M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?PjkNp/ShFEl1Ywt7QiboRgavsZC6Yg59UCksUQQTasUATg7U0MLhTnKZ73?=
 =?iso-8859-1?Q?ZF2YMjGfOkxqRmoLeZEShg2VbjdtN8GVVJGujefngk9e27tmd9zrreiskM?=
 =?iso-8859-1?Q?kfoEsUJWlXWVUskWjfdh2s1Zx1Md8wm0D6SQ89C+ItuDB89o+1lVUGlAUg?=
 =?iso-8859-1?Q?dAW0xbvjPqN+RtPG50yVp/6peerriNMI15GJGCNgOFMjWihXW9txTPnfGE?=
 =?iso-8859-1?Q?dZIRf8v9SFTAY4IdYXKfHvcRx8zgLl6V5/5nPYl6NiHI8vyn8xSrMUKfNj?=
 =?iso-8859-1?Q?IWdJMLYybFq0eVtOHuNfyKo1Rk2iwYPV0+I4VA3e85k6GuR/Qr1CHvFA/D?=
 =?iso-8859-1?Q?iOf4FwFF9248qRqWA2IHZTr0LRfrqzhzEraRMgFFM7FefrPe8DB+/6dHmT?=
 =?iso-8859-1?Q?hhgIddfaC1FmG4B6iw8cdtBCRkOlaDEMR+H6+NU1gVOtHqAbnEKU7FO8am?=
 =?iso-8859-1?Q?ci6SOaB70KzQvRgmTnXO7FOFDr6+GhRQf6E9CfNjSXmdW1TjJ6V8ZcAjWB?=
 =?iso-8859-1?Q?ClBqhezwAKWmUTriGN1FnwcxKEcU4xBUkkw7KdyYKYuSXDhPaouZHhpMtQ?=
 =?iso-8859-1?Q?XBLnA9W/ZcHwuld2zFbmdCditXtgbaSW7Xwjz0WGmS/9MpMK83fefUisgX?=
 =?iso-8859-1?Q?DWPhCdPhp788tmK2g/qLnHFLhVZQ/V9aIvv8XfNxcbJDGDOugqTpNhNctX?=
 =?iso-8859-1?Q?rqPCufYsV41O6RIuicF97dDm1vw0iqVUrjyemlYJuYSkmAOPLIAH6nM7Vg?=
 =?iso-8859-1?Q?gHCok5dwfaILAcc0wIO6IPafKvkz4nBgKMfI1gkPKBMzXRhXtjACKxhix0?=
 =?iso-8859-1?Q?X/Iaj6z7Fh04n85Gs6K21ahnO49bQJpPHQg9+RlHEA0pDGuVbMQC+PwMCx?=
 =?iso-8859-1?Q?+CZEkNKGs10E2By2G36L4kAXqtnyCEx8S9UGxHkIV8RIIE3GJLWeDpMJ/E?=
 =?iso-8859-1?Q?OL0URoLv/OgET3Xrc9Y8Vy5+wOwg5vkxJaWcn0vDya5bUDH06ncCva3sbQ?=
 =?iso-8859-1?Q?a3B/pF9tPb44RZQIvYxiBNEbWVK7tC6ndtGrtQE2yTaMkpITKOSsNaACj7?=
 =?iso-8859-1?Q?uwriRdb4RZ+dEHzbWmakAiSzF2sMDoTj1UmVW93FO5LfZB7AVn2jwpMe/4?=
 =?iso-8859-1?Q?JgS1nn6DSHXK3WwRhjXLaQkyK+xrFQQtQeO6mgCFSXWI9WBhtqOEVGlfXY?=
 =?iso-8859-1?Q?rmsCWJG/rgUvE7QcWJNo2MaJkcBg7DgCJF7aAanrLvwyiOS8gr7Qpxv3wK?=
 =?iso-8859-1?Q?NWGVKjFmnYKf2bd51t8x1+Ql+YrJUpfs1yr64FFriuWyyrYQpUVuMvMwM0?=
 =?iso-8859-1?Q?SRGIBbdQCSj3X5y/A6d7vtscMmXTADKLLI3gCQt99HjsBqg0YbSofBH4DA?=
 =?iso-8859-1?Q?+GuBc4cYwmTuxLOwCzXmfJBvVDqckeFUE5/Nhj5P5m2wpbFTUU6ggi9std?=
 =?iso-8859-1?Q?5KAA8pG4Z+Mbk+iwKpv8MZAcsdSCdB8ubSzTqIvQRS5sWYLcXdB9ah9DPM?=
 =?iso-8859-1?Q?9Jj/PenW4rnCyW/YHI1/etNsjjBzrnyogpZGOa4Rq5rdzg9DMeO4vgCbcL?=
 =?iso-8859-1?Q?IL9bEOk4/Kxo27IRYTZE3ZTufqml4GoIuZwbe9/CBY14oJcweExzNa5a3M?=
 =?iso-8859-1?Q?NUHpeu51TH1E2/mgrfmMbDxlnk0oYOU3HA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f92a205-1071-45c5-c811-08ddbd6726c8
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 15:01:28.9184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NuY6UNZBHoQ7zJNZ8cUYPR6K/8U5aNvmbKcvdL6UOIJ1TE58owrKd1rcFBTGHQQDVaff1fxap+neeVnEKSiKXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6560
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

On Mon, Jul 07, 2025 at 01:47:33PM +0300, Jouni Högander wrote:
> Currently disabling PSR2 via enable_psr module parameter causes Panel
> Replay being disabled as well. This patch changes this by still allowing
> Panel Replay even if PSR2 is disabled.
> 
> After this patch enable_psr module parameter values are:
> 
> -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
>  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
>  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
>  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_params.c   |  3 +--
>  drivers/gpu/drm/i915/display/intel_psr.c      | 20 +++++++++++++------
>  2 files changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 75316247ee8a..1ba17ea40bba 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -116,8 +116,7 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"(default: -1 (use per-chip default))");
>  
>  intel_display_param_named_unsafe(enable_psr, int, 0400,
> -	"Enable PSR "
> -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> +	"Enable PSR (0=disabled, 1=disable PSR2, 2=disable Panel Replay)"

What about a bit mask?

PSR1 = BIT0
PSR2 = BIT1 (PSR2 infers PSR1 enabled)
PANEL_REPLAY = BIT2 (also infers PSR1(and 2?) enabled)

(Peraps even bit3 for early transport?)

This is backwards compatible because

0 = disabled,
1 = up to psr1,
2 = up to psr2, (no panel replay)
3 = up to psr2, (same as 2)
4 = panel replay on
5 = same as 5

>  	"Default: -1 (use per-chip default)");
>  
>  intel_display_param_named(psr_safest_params, bool, 0400,
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a2b5688f0c82..3215a11baa66 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -254,13 +254,15 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> +	return display->params.enable_psr != 1;
> +}
> +
> +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
> +{
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> -	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		if (display->params.enable_psr == 1)
> -			return false;
>  		return true;
>  	}
>  }
> @@ -269,7 +271,7 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> -	if ((display->params.enable_psr != -1) ||
> +	if (display->params.enable_psr == 2 ||
>  	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
>  		return false;
>  	return true;
> @@ -1415,6 +1417,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	if (!intel_dp->psr.sink_psr2_support)
>  		return false;
>  
> +	if (!psr2_global_enabled(intel_dp)) {
> +		drm_dbg_kms(display->drm,
> +			    "PSR2 disabled by flag\n");
> +		return false;
> +	}
> +
>  	/* JSL and EHL only supports eDP 1.3 */
>  	if (display->platform.jasperlake || display->platform.elkhartlake) {
>  		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
> @@ -1517,7 +1525,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_global_enabled(intel_dp)) {
> +	if (!sel_update_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update disabled by flag\n");
>  		goto unsupported;
> @@ -1664,7 +1672,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	u8 active_pipes = 0;
>  
>  	if (!psr_global_enabled(intel_dp)) {
> -		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
> +		drm_dbg_kms(display->drm, "PSR/Panel Replay disabled by flag\n");
>  		return;
>  	}
>  
> -- 
> 2.43.0
> 
