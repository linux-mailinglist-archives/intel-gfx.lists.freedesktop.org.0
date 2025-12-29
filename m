Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660EACE7BA8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 18:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4403C10E5DA;
	Mon, 29 Dec 2025 17:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Su/mSkqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC4910E5D4;
 Mon, 29 Dec 2025 17:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767029054; x=1798565054;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Us3iTvcLxeHI5dvn2cSsnKgVoOFO3WoLNBBl1kjTFdc=;
 b=Su/mSkqXqXykjZeQGEEFfEGTPzpkg5vfxL86rBedwR9cJUyXuhAX9fLC
 XUnunJKt0cT/b2pTS7B3M+S8+f8d1iRNEUYrA0q/ziJeFJC5bClRJ1zs2
 XMffCrw7ApoX5HRvd53NLfGHpqlnT0x6uyQ60Me4Rq1dq0FlwwO1a/8jc
 wCnFc2WDEuFeyh45pHTE7LThApA0EJZMhdLvA3tcW3oWwN4Z8LlOVacI9
 8KlhaFgvPP8rsZ3T8OuuRIdftH3u7F/Jm8AXQC/JyX9FhW6WG3wzl/4BF
 N7HATsk+F3cTjIiOhNcVoFINQYsY0l4bDCIJDJKj/fe7Y8ava9yKQEHJ1 w==;
X-CSE-ConnectionGUID: UmKZXDppTFSzS2JrWPBDbQ==
X-CSE-MsgGUID: 71JQSWOOTYiDJ4soFw2RJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="68525881"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="68525881"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 09:24:14 -0800
X-CSE-ConnectionGUID: DqrTcz4tSDmJAQxW9S28Nw==
X-CSE-MsgGUID: lfDKdsfMSne5FK/zTUICfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200930978"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 09:24:15 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 09:24:13 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 09:24:13 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 09:24:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=guO0pEcYZP0sGEF9hX6V2D3Hp9TH7fTofP4rq0xJNwMbXw3KJSQfC1YXrs6Lgq3g1dRyue7JMgfnj2k/DeQTwyPiOXujJIYnL6lXYfKh8AgG8ashAp24O+DOObhXxJD3YXfjp3peXUDcxjf6N8WN8Sm6Ywk2CRftKPh3z0pf9HbiTkE1ijmgISOxhmwnRAZ7gWlkVu2kGXnM6m7q+RupcIF6TkxQYAlk2s+gQscCI8fQJ7BvIkGcbzc0qCpJfCMU5mRQNYdOiPIb3nBbX87V8ekAqCsJJLHT/r68yEDcFVuIj+Dqeg95dxkcFchCYie1YsKuUrRck/SLeBqex7zTYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6GcubcObzXNlAOSqfkydYVddLWERdgD8bzo+jXWUmh4=;
 b=Bp8RYzatVorJMekp2TuvuQDLehpqlNgeNPYFppqsMeIFayL1170IcSjRIEaagViWQsjbQi1k1J0hY2qQVkOWUlVo73kj9gD5zGLjwmpZ5NX9KJ0LEtqxO7hNpx/Kvtk5q5YPfys63HIIKPq1AwaKZ3PO5XAJEb84xgRqQkrTrd7oDDgK0u1qUSDoP706UYiCWq8SBLliGBD1NNkzqQcvsfs8pEwflzB5bobPIL/kOlcA15kdx+elENuYJV+LsC2ew7ICwvbgOmDPp/UYKqC0TAy5g33+MOCG82ntkrchGa+cGiUfrLwHacUmzbUZyFZhZyWbIa7a8VlwtKvtnY5AFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 17:24:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 17:24:10 +0000
Date: Mon, 29 Dec 2025 09:24:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/3] drm/i915/utils: drop unnecessary ifdefs
Message-ID: <20251229172408.GI1180203@mdroper-desk1.amr.corp.intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
 <f40a1fd365cbcfb77bd76ce0041c4523699f6052.1767009044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f40a1fd365cbcfb77bd76ce0041c4523699f6052.1767009044.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:254::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5009:EE_
X-MS-Office365-Filtering-Correlation-Id: 17f91254-be4a-4188-8270-08de46ff1459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SCPzsRaORpH/9PHwTwpExEOze3DTKZIluvMgCyTVEp9jD3NAh1qTZONPtNYa?=
 =?us-ascii?Q?/VNr2R+ipXGKI2PsODX6AGNpcszl6iOEZ5kHUAeIzXJApbggVcob/2/emr72?=
 =?us-ascii?Q?EjhM66ntHmSnaB/QrJx8c25C8cSrXbG1E+V2uaZ0CehApj9CkjW7aIs0Qkx/?=
 =?us-ascii?Q?ObVinktbVdKSXeRFuU6Zpw6qRNgZJ6lTRUwgn1pDpxbo6143wM+MyEjid5gD?=
 =?us-ascii?Q?qlADjOZJPj8caH8Fj10KhT+UnXcJy0abk1kkvVESWF2hwEGhbZOo1U+kGJS3?=
 =?us-ascii?Q?oxvdF9ICjgX6eZlHC8WRkNi4TFSiPlgyMVoB2IlhlOye7iRAITvWBHkMIDbi?=
 =?us-ascii?Q?Wcsu5cty4AX7lgFA8VLrQ8fxYh2lnGxXAL8Igxw5mmvdxOp57kEVA+fouwBL?=
 =?us-ascii?Q?2vI8yluDnp3dpAnNrRrv4QHGD0lIGa8sx+zIzpr2d32L241eRouu4X1BPVVe?=
 =?us-ascii?Q?3wB0nqVzu5/jJZ+bwxXD/OQY+4SkVovibjswfV44nldlFfoj96047RqEirBC?=
 =?us-ascii?Q?V8foMlyyoZCJ0u0sx3fY3Wu2ip9YzW9Wx4yi6382XM1yu20Xa/JhWdM41XET?=
 =?us-ascii?Q?p+wujn2js5a06fLNq9VHcPdysnetVnGvN8SqrFNMyH0l5ayn6Rb8DKDd7XDo?=
 =?us-ascii?Q?xwoowW7Fdz7kZtdnn/dT9rTlYawYr1lHZeiq73FgEfPVaaHxaA8CFX9dJGXH?=
 =?us-ascii?Q?vwJFEyDc4GZ8/8DLMsxH2yfGXx2eU+Hm2/r5A8ywd3xzzh8c1eRkMncw4jwj?=
 =?us-ascii?Q?/DO1943xN93IPeynRU3TMEO2MMijp2mgzpjtzibHcLrEP8mKR3KTFTZTv+lI?=
 =?us-ascii?Q?1cpX58jz+nftKGTSq4wkjm4HTPtdQ4MygLhaw7nB3EcBU6aBMnyCqw5v3wy/?=
 =?us-ascii?Q?yV+mPnmWwmkuHQNvJ7FzO2b+OBtKF1SdOM79DrjRYPxGlwkuNAQiJ6iv6I2w?=
 =?us-ascii?Q?Za2pG90FY7Ri2xOCGcMDOWCvX8YRIZw0rNOyRhbLX1OLQl0NVGfVTEGypz5p?=
 =?us-ascii?Q?jjMA/FH4UF9bP/HC7uryo2Lfe0qiGIH0FNArCABoPtAmzmw8p2j0Cf/UIZUi?=
 =?us-ascii?Q?W3Ijtsok235WygCgUPWVm9BDcogu/HfDJOhHKr1EAAK8rKH/PoJQoXtfVY+C?=
 =?us-ascii?Q?DY8m4vaGQoYuI+iMj9QH2OirK/DL8BI/Fi6UK34Cnn97FsqJws1dyqbu4ME9?=
 =?us-ascii?Q?8KUjMSvTjivUA5z7ANYIY02zSwkEzyr8+kwFLtbkvU5woM5SePnfynwFC7/K?=
 =?us-ascii?Q?T/VZEjmpoFFzRqNmTOMNWOWk0XEocYCwqG5KNnJSqaTKhnKBsDltqavKlx4/?=
 =?us-ascii?Q?yORDokkF0jgUAO0x3Du/WEv2PuKbdWWw80nTKd0jfXgXATgMPbBtCfHSxxDP?=
 =?us-ascii?Q?UtQyNNI2DObWGoYGqE69Kuc3G1RL1tGfZTkyj3JozqoQsmbzYUHcRVsUbNtR?=
 =?us-ascii?Q?v2WUFzrCQ4uktJhyaFoq8u45vJWs40jk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?40SFpjUKJsEVl66A/FyFI3pxeteTai0U9FY6sEjbFVBW+fVRhKE51swYeIxN?=
 =?us-ascii?Q?SXWXjzTwMdurF5Rs1fIIVpbx7WsBaWALgGQYrVHTHCM3Cdz9SY/3Pj0eDQk3?=
 =?us-ascii?Q?RNHfwaKQNLYJNdBEegiePtZAYE0RHN6da/SMwORH+RCmDDBJwy0nT9qc//s9?=
 =?us-ascii?Q?hFCvleSq8cMMg1mn9kEGU6ibFUtEgmfZK16gkAoVmYcwHdVBTkC8m3518JVP?=
 =?us-ascii?Q?wCycs1488hDh1KG6OXp72S8XC1zxboI7Ape1lEG1vEOk0Wu23zP5oUoqw8bd?=
 =?us-ascii?Q?18gjYL/tB/AtYBSN08Kx3p4Ajagfzrel/V1uWSNqXRzmIKuZ5Q03vDlqZAis?=
 =?us-ascii?Q?iCFvGT7XX9uROD/AEBYKQ/6B761GFRS4aM7CdRMETyt0gW1V4yn1TgMfme+c?=
 =?us-ascii?Q?WOsQkFcKiZMcphEq83EUarUUPMn6pEhuu5zzoGojya1HX/it6ada+cXSZur0?=
 =?us-ascii?Q?Acrmk4yMmhjqmCkJWVs/yxNJKBKuQQLRXhz4SDeoHOAtxKLUMsQma9Brq4XZ?=
 =?us-ascii?Q?FtHQW3Iq1OV75TYr8qmVraH7dcpvKm58rxHZpsM2Fw2mopXozqnPr+f0g20D?=
 =?us-ascii?Q?dUkDWg+/Es0m0AC+inF5ZZ58r6wRwBBaTFT0APeGAwfwaGBVLwse/5HzeXlV?=
 =?us-ascii?Q?0OfjkYikUHUSAdF//bw0UIcDY6rDKZq48VdChDCJB50WvCdVtUlPgkQc6wxD?=
 =?us-ascii?Q?YK9IcF+IW6OFflRA8yTgZ2iSVk/eWfMPZ0KIyk2oZAGhCUjHOCoSY94sGBiA?=
 =?us-ascii?Q?VQlXUjTZ/sv0nTkySyl8u3zxNhwD1ukXhCWXRcNw1Iro/Tifu/tIrNV4zT47?=
 =?us-ascii?Q?puiF0mMttA98HVnRO44s32bxXxQFKyTcnFu7wNF2+busbONm31RlGedKPhcT?=
 =?us-ascii?Q?ykYL6U++IfujYQ3sJhi1yEmFXx0oBbmQI7DvixNfDyPTIa+ETnU0BZj4saR5?=
 =?us-ascii?Q?aoXXgmwUtIxWGecVT/QtjFmAlrqSbqjQ6pWZH90U+e3KUY77lUMYPX9LwW0K?=
 =?us-ascii?Q?AONxXx9iMpG/Su6ESHehzR4wDR3rKpWdLFeCFoXuqEwR3zt6y2O9IpWp2Z+P?=
 =?us-ascii?Q?qyCKob0c/fw/5hHVfdoB/sd89J5h4A6W3GDbLVmSzrVG02wuiqg3pXrcMa+r?=
 =?us-ascii?Q?s/s8hQjFrkReT7hKVkUSe39DS7kiFg4wuSNk7m5a7gQUzDop2HVb8sL+OlqV?=
 =?us-ascii?Q?W5vfFmImcHQHS3LFTFHseCVRgMdoPBARYsow0BSozaB6rULqXVLBBzHD4gR5?=
 =?us-ascii?Q?aE13FCgLb7aWUS4T6mlZXjXYFLzAywrW0Mi0YCyyw2d0QSHHJ+pyKFpz3vbE?=
 =?us-ascii?Q?dtKXtYZoFHiIePoUrM0MS61ixLLNoLskdBxzuJHbY4CdvVgwDxsPTudO3hPg?=
 =?us-ascii?Q?EK8Ur8K8K9S9IN+xbk025+hCqyTNUVgLVqOML4xzRM9hxwSNweL17PSWQqcc?=
 =?us-ascii?Q?kw0Cu5y4JUEt35+wtBgzEGwXacYZuoyKp4fb+WWrD89wVfB0oSfzvn5JfA4b?=
 =?us-ascii?Q?SspJucAGcDaWTuqM/u/4tDqSRGwAxrNTNK19AavTt1oST5u1F78R+qRokWpq?=
 =?us-ascii?Q?wktYwLep7jDERdmevNxIa6/XLDpgZ2wEDbNp/awrYbwCrImAGJl1+vQjJ0Q4?=
 =?us-ascii?Q?T1nkDRKEokJesS5kbyfRKBDbttIq/Fb4igro9CeB1d9K448fczZCT6kubzdU?=
 =?us-ascii?Q?0jEQ6G0ljtYxH33mBxpcrbvaQo/hAhwzC4+dtbQ+lnDiamxAKt2Uh1+wAlqH?=
 =?us-ascii?Q?EGBBwiZKdLeuU2pnua/adeu1peX6QXk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f91254-be4a-4188-8270-08de46ff1459
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 17:24:10.6762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZFnIkun+nrYLZjF5E/x5ZrpcVawbXStw8cF0p6irqOtDhDVo6ofQBvqP0+c7+dNRFSg0T4oNzfEH6Y1uy6eQHkyg68LcuNvLHaSXaIeFvus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5009
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

On Mon, Dec 29, 2025 at 01:54:45PM +0200, Jani Nikula wrote:
> The i915_utils.h and intel_display_utils.h were in some cases included
> from the same files, the former via i915_drv.h and the latter
> directly. This lead to a clash between MISSING_CASE() and
> fetch_and_zero() defined in both, requiring ifdefs.
> 
> With the display dependency on i915_drv.h removed, we can also remove
> the now unnecessary ifdefs.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_utils.h | 4 ----
>  drivers/gpu/drm/i915/i915_utils.h                  | 4 ----
>  2 files changed, 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
> index 2a18f160320c..affa3179f52c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_utils.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
> @@ -9,18 +9,14 @@
>  
>  struct intel_display;
>  
> -#ifndef MISSING_CASE
>  #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>  			     __stringify(x), (long)(x))
> -#endif
>  
> -#ifndef fetch_and_zero
>  #define fetch_and_zero(ptr) ({						\
>  	typeof(*ptr) __T = *(ptr);					\
>  	*(ptr) = (typeof(*ptr))0;					\
>  	__T;								\
>  })
> -#endif
>  
>  #define KHz(x) (1000 * (x))
>  #define MHz(x) KHz(1000 * (x))
> diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
> index 9e5b7fcadbe2..ecc20e0528f4 100644
> --- a/drivers/gpu/drm/i915/i915_utils.h
> +++ b/drivers/gpu/drm/i915/i915_utils.h
> @@ -38,22 +38,18 @@
>  
>  struct drm_i915_private;
>  
> -#ifndef MISSING_CASE
>  #define MISSING_CASE(x) WARN(1, "Missing case (%s == %ld)\n", \
>  			     __stringify(x), (long)(x))
> -#endif
>  
>  #define i915_probe_error(i915, fmt, ...) ({ \
>  	drm_err(&(i915)->drm, fmt, ##__VA_ARGS__); \
>  })
>  
> -#ifndef fetch_and_zero
>  #define fetch_and_zero(ptr) ({						\
>  	typeof(*ptr) __T = *(ptr);					\
>  	*(ptr) = (typeof(*ptr))0;					\
>  	__T;								\
>  })
> -#endif
>  
>  /*
>   * check_user_mbz: Check that a user value exists and is zero
> -- 
> 2.47.3
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
