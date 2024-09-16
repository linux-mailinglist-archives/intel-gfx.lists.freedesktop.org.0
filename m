Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E1D97A8B9
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 23:25:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C00DC10E3E7;
	Mon, 16 Sep 2024 21:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+L1C32e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7DB10E3E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 21:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726521948; x=1758057948;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WFFlIfZVwIE89qUNUW4CaKrD7D7BuF+2apOOvgrhWBY=;
 b=V+L1C32eRamOg4ouumvAwCzFz6wpZ5Xv6HJKcIdBcviE+5rj/UPK7MBA
 f22wUQYDnjWMPW8bOXIOz+EoOj/rZs/gnJkKgghu3KfD4A5buLHn54mYB
 jhqf2Bm6fx6wia14LM0vgSjCwASYl9fOFF2cIk+grZQVp0Ipx8xnJwVz7
 X+1itJolFESeYuQUyOP2Iz+TbBVgtemztICXSTPqcfjQgQSxaqQzMyd1u
 3c6mJu7oxDm/umvuxSgbSjH7/ba716hTfuepD3an2/ljkk6/ngG/lmvbQ
 Ph3IX9nz+hfF2HnEErl5MwdbpxD0QuJoew+gvbAUzac4aHK1AVri5Hkjt g==;
X-CSE-ConnectionGUID: o+VKN9gjSV6CvLkMKCXnxg==
X-CSE-MsgGUID: vMOFFrh+Q/eu86BmyOsfzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="28277204"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="28277204"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 14:25:48 -0700
X-CSE-ConnectionGUID: BdFwr8reSUeKmLtOfymtkw==
X-CSE-MsgGUID: a0X9S95qTaWhEsSYY23U8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69760275"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 14:25:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 14:25:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 14:25:47 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 14:25:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dDL3LHe98T+X3x/hO/drut51c2eEiaeKS7Ni+S/VCZP3Dp9GGghE2JL5uaLZtNSI732LUu16bOS9MZHNTB5Q+L+coj00g8nR1uDuwxydbfMNtpx086Dkvjm/fSCNY8OjCo4dnNG3vD79IS3Tm9TOLVsHXlqCG5GfOayS5i0pOuUvP07PJZDpcJPFMwrTzG8lrkRYl8u41l/TyBOtXS+/b1FIhq0VoU57JcIrYUj0Af71LnkfB2yYpLKYc6MN8An+T8n6cKsoldgkV9700txC6niFXQyO6hsmilbc86X2SZbQAucXMVOqdRKTVrshV3w0woBF17MpGN1g+DA2HrPElQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVVjlK93FJX/3nY3DW8Vwx1P8ddzkvY9wWVdEOxXYsU=;
 b=icZqnaSwS0nR+1wmO4L/6xm2uDeGJQzRpxr76Pu5Npovw8f3+QUB8zfBTPNbido7ZgePrB6ep51RcqPW0DzQ3BtzG9HklESm9ztMT7S9q6k8Cp5F8AOifQtLIt8WSwLpHfycqVJ+9DUUfkivzUjjqZzFRo2Bi9NsZou/WrrNFRgTkUoocYrbEPb1Q7U9UrXuU+S1wqNhDy1snsM92YDXyiDAfzJl99dVlp22bv3MYq9vp1VnDH3U84Ukse6jkmAQPDQjEI3+FHMxVqieQuWZqVvOAx5ynHf7OhWhtyq6DgiH9MBvj9N5ya29kkwTdB57ffFne72sMdQ4KT+31cAPXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Mon, 16 Sep
 2024 21:25:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 21:25:44 +0000
Date: Mon, 16 Sep 2024 17:25:38 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Jesse Barnes
 <jbarnes@virtuousgeek.org>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Convert i915_suspend into
 i9xx_display_sr
Message-ID: <ZuiiUjsibLttMH1i@intel.com>
References: <20240912174534.425015-1-rodrigo.vivi@intel.com>
 <ZuQgetl8IlS4MQ28@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZuQgetl8IlS4MQ28@intel.com>
X-ClientProxiedBy: YQZPR01CA0065.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:88::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB5934:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c95d86e-2df4-4f07-8a27-08dcd6961f9e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?QPHoV8ZF2ixELwU9l7TIU8xOtcab1pcucpHQxz0tCqEaRUgwXMGGcsI4N8?=
 =?iso-8859-1?Q?VQ8ieMWa6sRdNkHOejap0EtgahUKjXUpqePTfPJBVsjY6UREXcZS5F9BQu?=
 =?iso-8859-1?Q?/p8gb6MRjX9EEAc1hQ8iSVZwQPIjqWHcSyagUBsm5O9ishp3BqXePG+pIy?=
 =?iso-8859-1?Q?A87a1DiA+c6Y0SAGbIXslQVADCLN6jXKSU+Fgzq5hVSozL/P9TOfk4hxDV?=
 =?iso-8859-1?Q?6hhRCVzDjDq8Cfs8cYYwsGJtXC6Z+r/UU9Ss/YogP+tYprkLm/uMlvPvi3?=
 =?iso-8859-1?Q?qBZRwwob32E+zXbLpPP4BTBGBN5nUJi87vfEVghA3oArUia5Z6QimvcPNk?=
 =?iso-8859-1?Q?MKO2HMNugk2vvs0VnKOWpd1qwjnM73/CODGL9RTDL1ejoqu3PxG/AasgPZ?=
 =?iso-8859-1?Q?tI6EkEY6aHohgnPL37VLNByc11KrCVYphyzREjnEJwFUHTRShUh8/vpK/y?=
 =?iso-8859-1?Q?aER52RoY7nfOUEL5510QiOONH1P5DcrnA3ESvJWBgCExfNqjeCnyT2dfc4?=
 =?iso-8859-1?Q?NixbsaN2B7TkCEEE4oA43dWqz4um24KXRJF/wpwxWT4BVUhm842kGOJ2Ba?=
 =?iso-8859-1?Q?TqaIQpmOi+sYbXVu/vsUNGqt3pMNWa5+eNzXpxqSU3FTi2QBCC7tm/gCf8?=
 =?iso-8859-1?Q?pRX4XmdKsQ1241S4+BAe+sDTC6o1U0y9t6HSy3+g8HAcQRWOCvybkqmUE4?=
 =?iso-8859-1?Q?ZJZahHZ/5NnnmlfwqmRDD7PjkyJVfgoKS+d7s9HIe5LeMJ2vs88ITanx3j?=
 =?iso-8859-1?Q?hq1+mu47+Io6sTBogNVUCjGjNzmwGY1ykI6JDBREhhT4TDFTy1Enugv359?=
 =?iso-8859-1?Q?d5xxH55Saypcpq1508xZAdpj6p1qLKL8b6idXk/fwVx+W/sKeooVnW1CtT?=
 =?iso-8859-1?Q?XnWSCKVNlVQ3NWqVjZvaKA3/ThsQYnjj2uhVYbBkmAH12m5X/0c/YYWIkx?=
 =?iso-8859-1?Q?2hvt68WBIb2K7LjKzyGzBvd0vHsIY4wFbW01VDRpkWkvCAgiJleXtsXgF1?=
 =?iso-8859-1?Q?u75IuvYDbGZ4CWYuyDi+g9Su+XrKGz/mc4h5Wokaivambp9ma2/TbusZwr?=
 =?iso-8859-1?Q?u2gp40OWW9rFrobEZkuQ0NXICmghiIy1bQHpnYMS7/sMfnnGB1ec1njgND?=
 =?iso-8859-1?Q?NaF+FMcpJwR1hCYT/3rTI4mwYAN6USm4hwOnk6M1Q6RGbIn1VpbaeHocYr?=
 =?iso-8859-1?Q?uP4t3J4RkgFxZL4ixxoNBMAClEp2ve6MB5d8fFgL8RaMI76Qb0kmQlAuUv?=
 =?iso-8859-1?Q?/3KKvcDnvn+pP70xGrdcZnwELmh/u+RBRH8seiAWQCtuPHKws45cF56d0V?=
 =?iso-8859-1?Q?Jx+QE4ida7YRHk+EbmCSiO0d3YDpB85CF+pXa59EYzop0vbvOfjwsfH/m4?=
 =?iso-8859-1?Q?VvpGEoSw2KZKZRfJ1LSQ+dUJyvyldmBA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Vqdyc+O+suyyGyejk99ICMevU58e7+tTQZOiD2cozsn0T5eV/Lw7yJcod3?=
 =?iso-8859-1?Q?q96Q0P0vVinAwJ1dIzJTAyfg/uGo7AOsnrzsufoPqDvOUTNI3Bn7WIbStm?=
 =?iso-8859-1?Q?kNLDYc95FOcNdjn+DvhEuH4XIdl/C58rOYB/M40ZO6C9EeT3YMn93D/VKp?=
 =?iso-8859-1?Q?64aD7j6sXQVJ+HhFdsiV4/GpUl0XUuDvrvKlRr97ZuPYs8aWf0LYICMkaP?=
 =?iso-8859-1?Q?SqMAEiFlpCXhYCn6w/agur9bzDA2H68LHT7U7C47gwjDPfBzixII/BzUwz?=
 =?iso-8859-1?Q?lVfPz8UFTEfxhFHxhyBUYAXUUMN0Zmrsvzgt3p6d0cD0j/YjsvlwGpTL45?=
 =?iso-8859-1?Q?fTTKkQQj+uWwc+MfvkpO0+Sh0m4n4eOj3aoMaDMB6McJsx/NT70l76qjKj?=
 =?iso-8859-1?Q?npfwGyiceCYohabuJMDMwaJ4dCxdcO9wEJZ47mFDCaVJP0fT+xPLoQg0GU?=
 =?iso-8859-1?Q?bPbwT3XfiVDPNKI/Hnhp4n5k6HuWsIF/ajVwJIRgxItvdvxoVxe+lm8se5?=
 =?iso-8859-1?Q?JhYpGvs2+MAiTG+cZsgB8//Pp75GYpr5NYwcV/nh17KjFlJgTQX1XGAyBD?=
 =?iso-8859-1?Q?xagQnOPRbrjDzsQxfau5/HyT4oqDNVkgnJQWOUwgYlxBBv748XIkhJt6zi?=
 =?iso-8859-1?Q?kuN+wNFtcISPYDE/fWRtlTPpt747jUIZ5DzDH/c6YAzd70Xv3hgEvFtsaD?=
 =?iso-8859-1?Q?jraX0cZa1l58Ps9LILx8/ohn2+nFgS0h78jPccQHkB4WpXebPY3pnkC8m+?=
 =?iso-8859-1?Q?v8ukqpuawKKCGY2pRYD4iRA1gWfE/nUovpT5KcubJpUowGfjoVp3KaSwbR?=
 =?iso-8859-1?Q?xlBoMVrSgwRGJJigH5bcov2rhetBUT7QOzrthr8qBaV5jG1Yd9gS1vQgyg?=
 =?iso-8859-1?Q?k4lcKmaz4S5a5TU0gXDdrUiE88nfBjiYH0UQ9Jbb9wbbdWEQda2H2futd3?=
 =?iso-8859-1?Q?7VkpIwMlI+R0qQxtFa3dzCW3rMyaa0CbrvUDdGoZ8V5oFUbtvECO6bDUcF?=
 =?iso-8859-1?Q?RXjxcE0ySl0b+jMAIWyXXxdyyTmJC284hNv6AQp3S/7RauktnPGor04QHA?=
 =?iso-8859-1?Q?0sZxdMQaw1Jll2BBzHnKW3J6pDRxbDyN4QiwyWJumQ/tZE5VYZsktqh/xR?=
 =?iso-8859-1?Q?BXHz+IIcH3TuqBUpzrMj12l1adahWNXzlnILsgR3XjoEYTy8bRxypiWLIg?=
 =?iso-8859-1?Q?TglKt3j5lU61bPRaaUnXnLhdsHMIWCW1BJD7zeBCEdnicmLfSjox1o0SAK?=
 =?iso-8859-1?Q?HaVhiah5hznMKAC9j0e92WiAvXQTYowfvPc3n69j1GFhKAbhz5fY4syvJE?=
 =?iso-8859-1?Q?LhYQiF7N2skaNB3Sgpp+JkNevODw4fWvqTRE0BCGX5zyASRdEa/Ly7R/VM?=
 =?iso-8859-1?Q?eZMM4TXP4aBzbDXPmPANEydbdXz/iD6Jrhm5qqgLk3kK3/vk/pkBR4ZHpR?=
 =?iso-8859-1?Q?1NTC8uTQW6ob2LEnXbzfGcwyBVfhpefStKLzYsZwTyD2yjF6ERZypjv2j7?=
 =?iso-8859-1?Q?2nczj4QgxIm6EMaGAa8q0UtGTF3DJpBbdhXF9LM/1VhsbXc38oaYGh90CD?=
 =?iso-8859-1?Q?SvZgJ9Mzp5Hs5ohA7qBjelFlE2mhSHRnCQnnlEkUVU7zrKuqfwarpulHz0?=
 =?iso-8859-1?Q?i3cD04GMH7Wyw8hfstNJuH3t0am+GFJXWh4FBMby22cxUElo4QV3WNvg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c95d86e-2df4-4f07-8a27-08dcd6961f9e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 21:25:44.7197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GylkJT7n0UCLnhBdZ+R7g/uyqSpqfGyBhQ5F29ddOCgdP+tS8Q7IZpWJkT1zUrZ6mQVga3OHE8e+JVQ16ke5TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5934
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

On Fri, Sep 13, 2024 at 02:22:34PM +0300, Ville Syrjälä wrote:
> On Thu, Sep 12, 2024 at 01:45:34PM -0400, Rodrigo Vivi wrote:
> > These save & restore functions inside i915_suspend are old display
> > functions to save and restore a bunch of display related registers.
> > 
> > Move it under display and rename accordantly. Just don't move it
> > entirely towards intel_display struct yet because it depends
> > on drm_i915_private for the IS_MOBILE.
> > 
> > While doing this conversion also update the MIT header using
> > the new SPDX ones.
> > 
> > Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |   2 +-
> >  .../gpu/drm/i915/display/i9xx_display_sr.c    | 119 +++++++++++++++
> >  .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
> >  drivers/gpu/drm/i915/i915_driver.c            |   6 +-
> >  drivers/gpu/drm/i915/i915_suspend.c           | 141 ------------------
> >  drivers/gpu/drm/i915/i915_suspend.h           |  14 --
> >  6 files changed, 137 insertions(+), 159 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
> >  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
> >  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
> >  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h
> > 
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index c63fa2133ccb..89f04bdbc27f 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -30,7 +30,6 @@ i915-y += \
> >  	i915_params.o \
> >  	i915_pci.o \
> >  	i915_scatterlist.o \
> > -	i915_suspend.o \
> >  	i915_switcheroo.o \
> >  	i915_sysfs.o \
> >  	i915_utils.o \
> > @@ -219,6 +218,7 @@ i915-$(CONFIG_HWMON) += \
> >  i915-y += \
> >  	display/hsw_ips.o \
> >  	display/i9xx_plane.o \
> > +	display/i9xx_suspend.o \
> >  	display/i9xx_wm.o \
> >  	display/intel_alpm.o \
> >  	display/intel_atomic.o \
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> > new file mode 100644
> > index 000000000000..211cf41119ad
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> > @@ -0,0 +1,119 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#include "i915_drv.h"
> > +#include "i915_reg.h"
> > +#include "i9xx_suspend.h"
> > +#include "intel_de.h"
> > +#include "intel_gmbus.h"
> > +#include "intel_vga.h"
> > +#include "intel_pci_config.h"
> > +
> > +static void intel_save_swf(struct drm_i915_private *i915)
> > +{
> > +	int i;
> > +
> > +	/* Scratch space */
> > +	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
> > +		for (i = 0; i < 7; i++) {
> > +			i915->regfile.saveSWF0[i] = intel_de_read(i915,
> > +								      SWF0(i915, i));
> > +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> > +								      SWF1(i915, i));
> > +		}
> > +		for (i = 0; i < 3; i++)
> > +			i915->regfile.saveSWF3[i] = intel_de_read(i915,
> > +								      SWF3(i915, i));
> > +	} else if (DISPLAY_VER(i915) == 2) {
> > +		for (i = 0; i < 7; i++)
> > +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> > +								      SWF1(i915, i));
> > +	} else if (HAS_GMCH(i915)) {
> > +		for (i = 0; i < 16; i++) {
> > +			i915->regfile.saveSWF0[i] = intel_de_read(i915,
> > +								      SWF0(i915, i));
> > +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> > +								      SWF1(i915, i));
> > +		}
> > +		for (i = 0; i < 3; i++)
> > +			i915->regfile.saveSWF3[i] = intel_de_read(i915,
> > +								      SWF3(i915, i));
> > +	}
> > +}
> > +
> > +static void intel_restore_swf(struct drm_i915_private *i915)
> > +{
> > +	int i;
> > +
> > +	/* Scratch space */
> > +	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
> > +		for (i = 0; i < 7; i++) {
> > +			intel_de_write(i915, SWF0(i915, i),
> > +				       i915->regfile.saveSWF0[i]);
> > +			intel_de_write(i915, SWF1(i915, i),
> > +				       i915->regfile.saveSWF1[i]);
> > +		}
> > +		for (i = 0; i < 3; i++)
> > +			intel_de_write(i915, SWF3(i915, i),
> > +				       i915->regfile.saveSWF3[i]);
> > +	} else if (DISPLAY_VER(i915) == 2) {
> > +		for (i = 0; i < 7; i++)
> > +			intel_de_write(i915, SWF1(i915, i),
> > +				       i915->regfile.saveSWF1[i]);
> > +	} else if (HAS_GMCH(i915)) {
> > +		for (i = 0; i < 16; i++) {
> > +			intel_de_write(i915, SWF0(i915, i),
> > +				       i915->regfile.saveSWF0[i]);
> > +			intel_de_write(i915, SWF1(i915, i),
> > +				       i915->regfile.saveSWF1[i]);
> > +		}
> > +		for (i = 0; i < 3; i++)
> > +			intel_de_write(i915, SWF3(i915, i),
> > +				       i915->regfile.saveSWF3[i]);
> > +	}
> > +}
> > +
> > +void i9xx_display_sr_save(struct drm_i915_private *i915)
> > +{
> > +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > +
> > +	if (!HAS_DISPLAY(i915))
> > +		return;
> > +
> > +	/* Display arbitration control */
> > +	if (DISPLAY_VER(i915) <= 4)
> > +		i915->regfile.saveDSPARB = intel_de_read(i915,
> > +							     DSPARB(i915));
> > +
> > +	if (DISPLAY_VER(i915) == 4)
> > +		pci_read_config_word(pdev, GCDGMBUS,
> > +				     &i915->regfile.saveGCDGMBUS);
> > +
> > +	intel_save_swf(i915);
> > +}
> > +
> > +void i9xx_display_sr_restore(struct drm_i915_private *i915)
> > +{
> > +	struct intel_display *display = &i915->display;
> > +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> > +
> > +	if (!HAS_DISPLAY(i915))
> > +		return;
> > +
> > +	intel_restore_swf(i915);
> > +
> > +	if (DISPLAY_VER(i915) == 4)
> > +		pci_write_config_word(pdev, GCDGMBUS,
> > +				      i915->regfile.saveGCDGMBUS);
> > +
> > +	/* Display arbitration */
> > +	if (DISPLAY_VER(i915) <= 4)
> > +		intel_de_write(i915, DSPARB(i915),
> > +			       i915->regfile.saveDSPARB);
> > +
> > +	intel_vga_redisable(display);
> > +
> > +	intel_gmbus_reset(i915);
> 
> The last two are for all platforms, so the function name is a bit
> misleading now.

Indeed... having another patch to remove this from this function
before the name conversion.

> 
> Also we might want to do the SWF save/restore for all platforms
> as well, because technically we should be reading one of those
> to determine the maximum CDCLK for the system (if the BIOS
> has chosen a limit other than the platform default). We could
> get into trouble there if the driver is reloaded after S3,
> assuming S3 clobbers the SWF registers (which I'm not 100%
> sure it does, would need to confirm it).

Well, if we end up needing that we can always do a s/i9xx/i915
later in the name. But I really don't believe that we should
be the ones taking care of the registers save/restore. Some
one else should be taking care of this save restore, or we should
simply stash the boot value.

> 
> I have an old branch that does the SWF read for BDW only
> 'https://github.com/vsyrjala/linux.git bdw_vbios_cdclk_limit'
> but last I looked Windows was still doing this for all
> platforms, so we should probably we doing the same.
> 
> -- 
> Ville Syrjälä
> Intel
