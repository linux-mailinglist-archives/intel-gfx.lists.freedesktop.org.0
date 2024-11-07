Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563F39C0D77
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:11:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ED3A10E89B;
	Thu,  7 Nov 2024 18:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E/lp6Mp5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7364010E084;
 Thu,  7 Nov 2024 18:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731003059; x=1762539059;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ptuDl4mTVDyvPwfTKoiBG5wemM26UqnixqQ45ocihcc=;
 b=E/lp6Mp5GX7y+p2+bzOu0Pip3GD4r4L1c3L2EF+QBOO/+IL9RMIlTaOZ
 2dmxyplle9QRMFjfXfRnHXSP1z3r8viG2VNmm90jb0g0mOCeY2DuRjdoh
 9+rTVyo5qYq6uMFRH+1aaeIBgkcq7v+ojwDxy3guZNwfYCzk+VL7A8S/h
 SrY53zbOyED+lBUZ2c8nPMsR8fNOv8utGZFG3ypxdThfzLu9Fw8CuPbdo
 hTHmnCT0milWkfDaQW9gcl9MN4xJCDpp818Tv9mUafcFdsfurt87B6pYD
 SzqwcyAuPrP1apIKzvE69i95GhyxqHnSVvqHlrwzyndnf9JG4aG9VrWLO A==;
X-CSE-ConnectionGUID: aeYF7siiSLqFmoqKPJBMNA==
X-CSE-MsgGUID: tM2O0HHdSXCRQC6NEcCB0g==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="42240212"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="42240212"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:10:51 -0800
X-CSE-ConnectionGUID: eFXGvFFORQSvAEUOhvjtwg==
X-CSE-MsgGUID: n+TQWxVmRI+SApOfF2DVHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85509551"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 10:10:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 10:10:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 10:10:51 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 10:10:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zI2wX1caFbn6Yy1gxCjlys2GqCFoqeKUpUHj2me7mvkVwhtmhLJyLKldifFoKFTM6lvyzCMlWJ3bk7Bf8fh8eMnGtVIjax+64EKl02v2biY9Lnmpehwuj3dYIWPxd4xTSgCyKqLjKwAJ048hKFfeb0VKyqR/6H6usaWzvKn/RXMY+Ygpnnn+ZA4AuB+KenFkO12QJyLAeiC94hsaDktvlYcgjOp5e5Xl46zghT9F91QeT5EHiANBREDAsZrUrFDPood0vXTkLXAZKILwrKVcKL7VrAh7g6obeZafakAnxuIEnAWyxl6xFG5kblkiabp7cEF5gK+xsIQq6PZ8N96VKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Ee8Jc3Ird83DVyisvOrCSrkyJRFXqAw6sryZJ9fH5s=;
 b=t7lZq8y88xa9Xyjz7ye/ADebrMdb2I8dNtUY0bdvESvXNjbmOhRfpRUS0jOiObc4Ij5P3tr08nt824frfgM1ilZmJEFjhpklGWtD0k3wrl6kukVNiSrygyDaSM0OluxxENwLIoy3BzSNz4DcAtLVpjByncUjSaRVAKtX33Xh/SOw8ae1ihvB7Naxne7sjiqUUL5Y8r7kpC4LSAUERhhK3x6uMvgVnFCHZskCDmtVu2jyfkEgIYiP8rzOTuFjx61+kg7YK3FeXnSDHITAa1qC55s74s/a+En/76985M+R6Nya5ezqAaEjYyoIWVg/q/qWCcJDmLHfkze9OO2YLuvg3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8587.namprd11.prod.outlook.com (2603:10b6:a03:568::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 18:10:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 7 Nov 2024
 18:10:47 +0000
Date: Thu, 7 Nov 2024 13:10:42 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 15/15] drm/i915/display: add mobile platform group
Message-ID: <Zy0CogK0AHBpgTEn@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <e9277a5635fc02106ca69b9071928c2249323500.1730740629.git.jani.nikula@intel.com>
 <Zyub_ECW7cCu5HPc@intel.com> <87o72re3l3.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87o72re3l3.fsf@intel.com>
X-ClientProxiedBy: MW2PR16CA0052.namprd16.prod.outlook.com
 (2603:10b6:907:1::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8587:EE_
X-MS-Office365-Filtering-Correlation-Id: dfb55b17-70ed-45b6-dfc4-08dcff5780ec
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jK3dJwOD6d3WdwbeQtCLoFGljVKRALDFgTcRCss3t3LOoeYnntFnqOCKVo0d?=
 =?us-ascii?Q?9xcrUr18qKVxX5S62XKj22bhRvf+DMIraHb70/Rj6OOpNDMqV+zT4F4fZOBS?=
 =?us-ascii?Q?dEGHCJA+CIjQnzSqN6C+fxRvTi5cIuKwbfRueUFh4Pf8rmdf3NxuprAKB7p3?=
 =?us-ascii?Q?RvzqdGoj/vfOVf/+UaGOfbwnB3NAhqVw+h16RN4V3KXt9kplXjysFTkGd3Ch?=
 =?us-ascii?Q?xZR4VOhnMQpunX0rYvQqJvub9s0ZKvsxJHFyhFV+SfBF5iYByVA2gVKiY9Z+?=
 =?us-ascii?Q?miVyOZ8m4t2yvZ+UhOu7EvSmYeNZt4Jcy7O4fD0eRoMeMDS/PRZyUa6uCXIJ?=
 =?us-ascii?Q?MxS+5s5qugQ1OqR0wwCIYmgDum7CRk46KkG4sw7H7qlvUFnRS6P4pEUlmBZZ?=
 =?us-ascii?Q?A8YSXF/RKK0262vSm/pUCkhtr8rwnCzt1vj49o5TodTDLouBkflZQ1Ikyy5l?=
 =?us-ascii?Q?4b7RXEHaY8MmoUU5vpQoSnNZa8F3849tjC9cV1TeIzPHJnihHk9vMvTAtqnj?=
 =?us-ascii?Q?E71xxC2E6qGQ4RGOE7ijU42Ct+IREP3YnEcrdU3cW86Q5Y0RT2uqXFzqrRl8?=
 =?us-ascii?Q?0Liqoob0+zsG27bwNwM2jMCxVs3sab/mvb64mQTvWcmwKUw2yb6oIzI9a0L2?=
 =?us-ascii?Q?NzTmWvOipx/H4CdUYXodPaxLxe3RDksz9pHQTswPe/K5jTyimKo/tiVdb07d?=
 =?us-ascii?Q?MkFrgeFVVeXa5j38pAMtUvNICaR3W9jHpX0TUXF4AQMnSAPdXkGLZyzOvYVM?=
 =?us-ascii?Q?8JiyjAKZSYZB6pKdrAocRiphpAK8ODOjcwOeYRBL9Pisvsk1WDnVXJhIZp2d?=
 =?us-ascii?Q?Jii+Rq3Esj1Pg66n2hQqOj2dIUPuIsupd7qHdTK8aTgx3hn/ExbHwYXk/8xa?=
 =?us-ascii?Q?Iwi4+pkMVpaLlyNdtv44VhPCnat7I646GogFgMx0bWLCwJUZh67RQvvxHBCg?=
 =?us-ascii?Q?8tfaEaE2yVpxxXlr5GXZcrVwDjVGEjrDGKSzCHxop/AN7+n2Z6aXX0SKLodw?=
 =?us-ascii?Q?T5Ed+BbDLxy27MUfStLPP5caTShhYpw4T4/fjQNbT+HDhhEQTHgluC35+KVV?=
 =?us-ascii?Q?bIgqp/sumYu3c9GHiGVdDlJmf72nO8B/vm0HkM4wc2o23ircPqn8lrAQEN9i?=
 =?us-ascii?Q?bn4pGFn0A7x+IgqAEPLa+qI5tgQk0ft6q4iYvF4VDJXnVX9daxTwWd8Y+jt3?=
 =?us-ascii?Q?kD/V7a9qG9Y/OANIiiEhduvqBXsc6fzchNB5wnR++yuNiH5tUDrpu552uLU4?=
 =?us-ascii?Q?Umt2h4i177Eg8hG3psb/6PqydXURL4jsDhiKWHlILKblGI6JnIcZwWVeRiVN?=
 =?us-ascii?Q?/ERhtTRYNyeUVNgHS7AoA4WS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0xs9WkR7Qmjt9Md7DugFABCjli70PIMMcOTAGZ9eNAnxWhiopZgm1GyB6VLH?=
 =?us-ascii?Q?zsIez22FGw5m/Qz1kGl1LnV1OlNVeHxUjqbyKLnc5803QOCQDUuBUR+eGDH4?=
 =?us-ascii?Q?o2ppe8uWBmq9qtzbM9gJglmcdX33ftmEPSVKbt9wO+xAO7Dz3hZTy5Ne+iXk?=
 =?us-ascii?Q?8zUB7w6/3zWNTJuDCJh2JxipNj+aRcevzJIifsGGxznr2iFM+Jzh+DbtS6jg?=
 =?us-ascii?Q?UjWwwnziJVeK2PCSjGg5A3xX1I5zv7A4GJ0DW6KMV+YC6692E6ljFMh1a6BG?=
 =?us-ascii?Q?cT10aeujoCNLL2+wz0nc8xiElfXlAQWe1lJ2SLZDRaS4eztPly2MDf/NXrLi?=
 =?us-ascii?Q?dIwGdvh141x7cWloVkPlsQygfJ9Rjo8r60h+fdGWeTSDZovCE1TJhuLEd1GV?=
 =?us-ascii?Q?lTX1zv2ZQ6fOwx+W0BL2ih1jzaPhtgHPuEkT0SqjOPgYaCy1irRe746a3w1M?=
 =?us-ascii?Q?t4eRe+o4D0jp4tL7N7gspwf0AS97XSZZLAWRLR+wQzWqfGY3ylLSlVdwSFea?=
 =?us-ascii?Q?FYBcuscmpsox2Jfo39dAIgVHq3FqJUGBRJCBpozKQ4X4UYR6eBT9wtc+Zeny?=
 =?us-ascii?Q?UEPVqP9k61UOAb04sBEraPi2QHulTxqDqZ0pVYut2iOkrlgCrBkmK2cIGFX0?=
 =?us-ascii?Q?USTnEAmiq7zvbtcHMtyKYZULswgQB0XUoLvagLf+h5KVtyk0Pkit8764czsR?=
 =?us-ascii?Q?UQw2h4tlOkZ7Hx0+v9nMndEw/BvdSHAn7tBuJzNphOZgDdvS0al5Cxt8CkDs?=
 =?us-ascii?Q?1YS82HVBBu5kNn4Q1jLjDhSoen47fNo7osXU0V/XstDvrZbUMWeWHfmDky/P?=
 =?us-ascii?Q?489cbhwLZVEygmDx5gNHfqwNqveUVpYtdrKk9xkTSVbGIZGzwvEK7P863RaR?=
 =?us-ascii?Q?OO9b4FUQCUn3iF4NcZfHe66/+sHOwdSP+vFgXbJEoadNlsr7Vy8RG22d08CR?=
 =?us-ascii?Q?TaocHHQWzif39hB+WePdwIrrtd4darAqdQSUuJe24T2ZaqhNNn0405W5sI6e?=
 =?us-ascii?Q?XPKx6ay0+3Ts0Q9fvEgt9Bq5EouD1ruOt3zyMPcBwdBequuSf3Zp9YPqGtEc?=
 =?us-ascii?Q?hrzL+u2vVGaUE3oMT7uZVHAJEuycuJN3lc6bM4Qq0ciK+Et1R5mLLn9GR++1?=
 =?us-ascii?Q?8NX2wk3cVLI91gPvyWYHVYUf3tKoe9FowTg0RGAifGGwmH4LTpIb5CW2SLxo?=
 =?us-ascii?Q?h58FTqOefnbQ2tuPURM0ZTG9XiWDoOhc8+qS1wygvIBt0B7r9Y7Re0SGiEHI?=
 =?us-ascii?Q?X0T3J9zYuhdfoDcwl80Wbaj8DbMX9KVD+mUi8MlbRDAFOObX8eWFFeFa5ezm?=
 =?us-ascii?Q?GJpEsQVl35aE9UNhKDWGH/81neYDxJ5ee1ClwJpYsR0DJcvwNVKJHt8AWI9X?=
 =?us-ascii?Q?IzPSasJ/49pNVB/P31JaKgK+1sS6MTwCAYsLtgQCC87pLInuw6SPiWdWkiks?=
 =?us-ascii?Q?YbZvrYw35U7Kz/h+k6ywugvAyC3wdxLq79Wgxpnv3M/PP6pNfEy0+6jIwG0X?=
 =?us-ascii?Q?x4GX08aLipY79wZ4hAw2h4224xu32XHPNLWCOXbZOGqKVsBvd2JTLHGGPNHC?=
 =?us-ascii?Q?+YI6x/hEBCYlHdViITS1uDiGXCWcGnEoQRkxlbzhnm6nd61d7sfkSpxFmoc7?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfb55b17-70ed-45b6-dfc4-08dcff5780ec
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 18:10:47.6104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DB9AfuDOX9K3IdMTua4VNFjeVKjWIM8pwAFKgD8B9HJ7PycuSRtewf/yq7nPgKc6qN+pskd83n3AGrxJ74qXUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8587
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

On Thu, Nov 07, 2024 at 12:32:56PM +0200, Jani Nikula wrote:
> On Wed, 06 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Nov 04, 2024 at 07:19:29PM +0200, Jani Nikula wrote:
> >> Identify mobile platforms separately in display, using the platform
> >> group mechanism. This enables dropping the dependency on i915_drv.h
> >> IS_MOBILE() from display code.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_device.c   | 104 ++++++++++++------
> >>  .../drm/i915/display/intel_display_device.h   |   1 +
> >>  2 files changed, 70 insertions(+), 35 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> index 8ba1b4652ca9..5689c5e5db0e 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> @@ -253,6 +253,7 @@ static const struct intel_display_device_info no_display = {};
> >>  
> >>  static const struct platform_desc i830_desc = {
> >>  	PLATFORM(i830),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		I830_DISPLAY,
> >>  
> >> @@ -271,6 +272,7 @@ static const struct platform_desc i845_desc = {
> >>  
> >>  static const struct platform_desc i85x_desc = {
> >>  	PLATFORM(i85x),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		I830_DISPLAY,
> >>  
> >> @@ -313,6 +315,7 @@ static const struct platform_desc i915g_desc = {
> >>  
> >>  static const struct platform_desc i915gm_desc = {
> >>  	PLATFORM(i915gm),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		GEN3_DISPLAY,
> >>  		I9XX_COLORS,
> >> @@ -337,6 +340,7 @@ static const struct platform_desc i945g_desc = {
> >>  
> >>  static const struct platform_desc i945gm_desc = {
> >>  	PLATFORM(i915gm),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		GEN3_DISPLAY,
> >>  		I9XX_COLORS,
> >> @@ -358,13 +362,21 @@ static const struct platform_desc g33_desc = {
> >>  	},
> >>  };
> >>  
> >> -static const struct platform_desc pnv_desc = {
> >> +static const struct intel_display_device_info pnv_display = {
> >> +	GEN3_DISPLAY,
> >> +	I9XX_COLORS,
> >> +	.has_hotplug = 1,
> >> +};
> >> +
> >> +static const struct platform_desc pnv_g_desc = {
> >>  	PLATFORM(pineview),
> >> -	.info = &(const struct intel_display_device_info) {
> >> -		GEN3_DISPLAY,
> >> -		I9XX_COLORS,
> >> -		.has_hotplug = 1,
> >> -	},
> >> +	.info = &pnv_display,
> >> +};
> >> +
> >> +static const struct platform_desc pnv_m_desc = {
> >> +	PLATFORM(pineview),
> >> +	PLATFORM_GROUP(mobile),
> >> +	.info = &pnv_display,
> >>  };
> >>  
> >>  #define GEN4_DISPLAY \
> >> @@ -391,6 +403,7 @@ static const struct platform_desc i965g_desc = {
> >>  
> >>  static const struct platform_desc i965gm_desc = {
> >>  	PLATFORM(i965gm),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		GEN4_DISPLAY,
> >>  		.has_overlay = 1,
> >> @@ -414,6 +427,7 @@ static const struct platform_desc g45_desc = {
> >>  static const struct platform_desc gm45_desc = {
> >>  	PLATFORM(gm45),
> >>  	PLATFORM_GROUP(g4x),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		GEN4_DISPLAY,
> >>  		.supports_tv = 1,
> >> @@ -444,6 +458,7 @@ static const struct platform_desc ilk_d_desc = {
> >>  
> >>  static const struct platform_desc ilk_m_desc = {
> >>  	PLATFORM(ironlake),
> >> +	PLATFORM_GROUP(mobile),
> >>  	.info = &(const struct intel_display_device_info) {
> >>  		ILK_DISPLAY,
> >>  
> >> @@ -451,38 +466,54 @@ static const struct platform_desc ilk_m_desc = {
> >>  	},
> >>  };
> >>  
> >> -static const struct platform_desc snb_desc = {
> >> +const struct intel_display_device_info snb_display = {
> >
> > get static back here as test robot already pointed out...
> >
> >> +	.has_hotplug = 1,
> >> +	I9XX_PIPE_OFFSETS,
> >> +	I9XX_CURSOR_OFFSETS,
> >> +	ILK_COLORS,
> >> +
> >> +	.__runtime_defaults.ip.ver = 6,
> >> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> >> +	.__runtime_defaults.cpu_transcoder_mask =
> >> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> >> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> >> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> >> +};
> >> +
> >> +static const struct platform_desc snb_d_desc = {
> >>  	PLATFORM(sandybridge),
> >> -	.info = &(const struct intel_display_device_info) {
> >> -		.has_hotplug = 1,
> >> -		I9XX_PIPE_OFFSETS,
> >> -		I9XX_CURSOR_OFFSETS,
> >> -		ILK_COLORS,
> >> +	.info = &snb_display,
> >> +};
> >>  
> >> -		.__runtime_defaults.ip.ver = 6,
> >> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
> >> -		.__runtime_defaults.cpu_transcoder_mask =
> >> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
> >> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> >> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> >> -	},
> >> +static const struct platform_desc snb_m_desc = {
> >> +	PLATFORM(sandybridge),
> >> +	PLATFORM_GROUP(mobile),
> >> +	.info = &snb_display,
> >> +};
> >> +
> >> +static const struct intel_display_device_info ivb_display = {
> >> +	.has_hotplug = 1,
> >> +	IVB_PIPE_OFFSETS,
> >> +	IVB_CURSOR_OFFSETS,
> >> +	IVB_COLORS,
> >> +
> >> +	.__runtime_defaults.ip.ver = 7,
> >> +	.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> >> +	.__runtime_defaults.cpu_transcoder_mask =
> >> +	BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> >> +	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> >> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> >>  };
> >>  
> >> -static const struct platform_desc ivb_desc = {
> >> +static const struct platform_desc ivb_d_desc = {
> >>  	PLATFORM(ivybridge),
> >> -	.info = &(const struct intel_display_device_info) {
> >> -		.has_hotplug = 1,
> >> -		IVB_PIPE_OFFSETS,
> >> -		IVB_CURSOR_OFFSETS,
> >> -		IVB_COLORS,
> >> +	.info = &ivb_display,
> >
> > now I'm wondering 2 things:
> >
> > 1. is info really the good name now?
> 
> Why not?
> 
> Desc is the platform description, unrelated to display, and info is the
> display info. In some cases display info was (and still is) inline, but
> when it's shared between multiple platforms it needs to be separate.
> 
> > 2. does it deserves a separate patch refactor other then this one focused
> > on the mobile group?
> 
> Un-inlining the dispay info init could reasonably be a separate
> patch. Question is, do we then want to do it for all platforms, or just
> the ones that need the split here?

okay, let's just go as is

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> 
> BR,
> Jani.
> 
> 
> >
> >> +};
> >>  
> >> -		.__runtime_defaults.ip.ver = 7,
> >> -		.__runtime_defaults.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> >> -		.__runtime_defaults.cpu_transcoder_mask =
> >> -		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C),
> >> -		.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_C) | BIT(PORT_D), /* DP A, SDVO/HDMI/DP B, HDMI/DP C/D */
> >> -		.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A),
> >> -	},
> >> +static const struct platform_desc ivb_m_desc = {
> >> +	PLATFORM(ivybridge),
> >> +	PLATFORM_GROUP(mobile),
> >> +	.info = &ivb_display,
> >>  };
> >>  
> >>  static const struct platform_desc vlv_desc = {
> >> @@ -1385,11 +1416,14 @@ static const struct {
> >>  	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_desc),
> >>  	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_desc),
> >>  	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_desc),
> >> -	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_desc),
> >> +	INTEL_PNV_G_IDS(INTEL_DISPLAY_DEVICE, &pnv_g_desc),
> >> +	INTEL_PNV_M_IDS(INTEL_DISPLAY_DEVICE, &pnv_m_desc),
> >>  	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_desc),
> >>  	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_desc),
> >> -	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_desc),
> >> -	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_desc),
> >> +	INTEL_SNB_D_IDS(INTEL_DISPLAY_DEVICE, &snb_d_desc),
> >> +	INTEL_SNB_M_IDS(INTEL_DISPLAY_DEVICE, &snb_m_desc),
> >> +	INTEL_IVB_D_IDS(INTEL_DISPLAY_DEVICE, &ivb_d_desc),
> >> +	INTEL_IVB_M_IDS(INTEL_DISPLAY_DEVICE, &ivb_m_desc),
> >>  	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_desc),
> >>  	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_desc),
> >>  	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_desc),
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> index e1398689cda5..84378c787923 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> >> @@ -24,6 +24,7 @@ struct pci_dev;
> >>  #define INTEL_DISPLAY_PLATFORMS(func) \
> >>  	/* Platform group aliases */ \
> >>  	func(g4x) /* g45 and gm45 */ \
> >> +	func(mobile) /* mobile platforms */ \
> >>  	func(dgfx) /* discrete graphics */ \
> >>  	/* Display ver 2 */ \
> >>  	func(i830) \
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
