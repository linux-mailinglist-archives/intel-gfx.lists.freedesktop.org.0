Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 739249C608E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 19:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77E2F10E616;
	Tue, 12 Nov 2024 18:39:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HA9FdBAL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 468A810E61A;
 Tue, 12 Nov 2024 18:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731436782; x=1762972782;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tK3UHSW8LXDW0uD+7WOKWSQzObnrUn1bhkzXTCtcEG8=;
 b=HA9FdBALN6PH8eN8YPEecHSrVDfR8E3xLO0YpqBQCXFzukhszNQnC4sZ
 6Kt6YKdJxTHYRc67aX3NXp2LvZMuhONh9VvExLGEuAoTXkIjUVbhkchqN
 kGq/RqCBym0OE31lbKlg3GGhmPOsxbMIU3X617BKuKwTVnR+TpPnhRI2a
 p0JkvH+NV+l4/qD7wwlGFFim0qK7ps+W9SLHbLNmU8/hQLeZ95uIHQa/b
 mkAlKYDx/1ka9/ZoXrJ5t2LNEbmAOR4x0ZHeP5BwzUoBBQUkf3e879aAE
 Gpek4PFSIfYiMjiAQm1isNdO1S0Qc3dY2Wz0P7X0nGMn4IJUDB0bz7eMQ g==;
X-CSE-ConnectionGUID: FQ0XJpzZQ5CVZ7Gvkc3MFQ==
X-CSE-MsgGUID: +SZCuGUIQoKAl2vbaPC+1w==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="34159385"
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="34159385"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 10:39:41 -0800
X-CSE-ConnectionGUID: oJ6yrI+2QJmMgIGweaUPrA==
X-CSE-MsgGUID: p+mCbbxwRn69th5s12QMSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,148,1728975600"; d="scan'208";a="87183860"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Nov 2024 10:39:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 12 Nov 2024 10:39:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 12 Nov 2024 10:39:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 12 Nov 2024 10:39:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y4/MKgzWv0Z3ZoiVLtyvdMEkEG5AbSnOhepHChX4lpHVcyROkgNOfV8u/GARgeEhT+W82zuHed8Oq4jr9BJvEQAmrWgsMFQ6LQPcQtSBKI4KPkPw7NpvCHVZ1OHToTZaSvYQbcw/gjAmKVQOmVZfp8JiJuOmsiq5A3N460q1A5eEZ5/1cCNtwCrV2IQrqzHa/Wu8hg7oBitEkVDbb16ZG3y1hlN1vRoV6E1qZWMNtUsvejKlOGxCwME0aR+4HH5BxvB1sz508XP3djOiTEuA2B0tfI7y+0WO5N0jjwUo/pYQOwpbsujK/yB2FGiYeXdORHT2fWA8edqLltNOds6Yaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6Rh4Ec+oelhjGer/AG+wcmjNoQ48kobeIQXQeEKVBs=;
 b=ohWxHdq/neSU1xbNj78Gcyu3nTWcw1ag57kfXrrdV6mygEpb1Ov7QxezQGTZXwGXOk8isWDkJ37q313g0C/8I7PGPZa6lRH+DxtIsk8QmcR7JOTeSF5j7hDTo0a8COuG24Ioe/NKVYTgm9OzvQbkA3aHFUg1ovJPlBjoPivK2SsoGN3fHC1cFeZD9Dw2vUJSfHkbHCu5Xmzh46Ywo6dFlUdKcUkJeeYeSJrh0cwbNlcuurpVLlKSrJaiw9HzyhjksH0scUEgP9CkeBieEpTeUY4iRQ2bkpdYltOJSnO5WUsIidTqKpb2q3JZyBXWsG7hYtZvs/V3uEcsU/BzsWmGJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW3PR11MB4569.namprd11.prod.outlook.com (2603:10b6:303:54::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Tue, 12 Nov
 2024 18:39:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Tue, 12 Nov 2024
 18:39:38 +0000
Date: Tue, 12 Nov 2024 13:39:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <Maarten@mblankhorst.nl>, <Lankhorst@mblankhorst.nl>, <dev@lankhorst.se>
Subject: Re: [PATCH 5/9] drm/xe/display: Use a single early init call for
 display
Message-ID: <ZzOg5vyCXepW_t9n@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-5-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241107100140.292928-5-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR03CA0318.namprd03.prod.outlook.com
 (2603:10b6:303:dd::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW3PR11MB4569:EE_
X-MS-Office365-Filtering-Correlation-Id: e9319c00-0fed-426a-093b-08dd03495cfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ojvfUoShqxN1S5N20iqJoUOYZ9e5Qv5hh3cAW5zfihSK5qh2R/ylAo7Yr14Z?=
 =?us-ascii?Q?k2q9hMxpalrx79AEJZNhEJJm1TWdwIT6rcr5C18G2KMvYYhJ88QhT2hyt14q?=
 =?us-ascii?Q?Yhqz48/0HCsZlKI5nVBE05Wlvb5jgcryGVWNYQE+DxBp5tLcbGr0HkgTxBiu?=
 =?us-ascii?Q?jvp6r2AoZAjookdb78nI92pbb2OdeFMd18sDVm1rgCvcDB3Rn9X2dasv7RUv?=
 =?us-ascii?Q?U7FLVcVve4Goqg1H73ZBLN3pdMxRmc7aWKek4rJhZwWdsWKqeBzFZQGoMTBS?=
 =?us-ascii?Q?S0XbHK3ccrVjS+4KEhPN6MpSa0YGKa+h4HV2l/uz8j3hmqxhdBT+FzwmaeWs?=
 =?us-ascii?Q?AkpDq8POaLYgcli8RD5thLoBJpbYPlWKomZuwiXdbfrws9Bw73QYIMUcEvxa?=
 =?us-ascii?Q?AJZignlvELemF5WhE+izn0KXQ41k78ktHjrMKC1xRxd/Ile2n4KYr3pA7XpF?=
 =?us-ascii?Q?Evm2P5k80wu+Na4ch/XEZPuWqZI7ss0uLLqV9yLyBbHu7Xv2LlTpJOIYPgVo?=
 =?us-ascii?Q?xTL+g5Mw9Z14joAQeM+vlw5DLZFy6WTBN2VmnZO3JnJwUTyMmLCjcH3bfb3d?=
 =?us-ascii?Q?FYve3QxiLSY7O/1eEsio9IrW4NPGjAO2eZvTRRovywCZK7FXRONRcy6W82hm?=
 =?us-ascii?Q?Mp7k/eWa9WchzLa8mkVkDg2jfg2SLm7XMwYLWkgtMMEgM+FD+xiCMVQgk89C?=
 =?us-ascii?Q?ZNLWCI4CSWI7rWZFZg2ChXdGki/cDq4nTT/eHsnhq+YdmszJaQ3ng9WUg2Rd?=
 =?us-ascii?Q?oq3xX0r8I9L6H1rgVmkTwL1NBmvc4NGzeFF0HyWsynZqwRQS2lNyfKv/I6ob?=
 =?us-ascii?Q?OuARDuoknEQps9raGfRuRtIFBa2eZ8+dFTZ9JiPa7Drw9pNqz0r7m3irLEW9?=
 =?us-ascii?Q?FyiAuFNrTbzO9QUYdZJx9VxVFZ0gm8aN1Eyf/WBxMzbRTM8dZlnYzF9wuLA7?=
 =?us-ascii?Q?5pAkIIgBL+mNNkFiEpc/qL04vTbXRBr1oKsCfFnIPw8X1WxClOyBAz4kx65Y?=
 =?us-ascii?Q?xVoajq74FEzhe4gQFBaYFxUIGYDLGm/AMTPizcBVV3Bui3c+w15OMOF9KszG?=
 =?us-ascii?Q?+15vYL0bWpl8cgO7lGv8ECcG+7VSa7Z9CkibW9JDovf2pJN+JvlVjSGD/8dE?=
 =?us-ascii?Q?XMBgrrkeZflEsqSsx9NZhOfLMwmsV/UX1KWBJTfnFj5NAHh9z93NIzDjK3PV?=
 =?us-ascii?Q?RU5WKCR32A0wyERmYJFlw994NdHz26Y2IhbAfn0m5lUPzwZEHdmOgVcz9fj1?=
 =?us-ascii?Q?zL7/RVsVaCBlg3OcaZse?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V7gvsdmRNMmcciW8AIkYVFgMqDApkNY4QHVeovYrGNPFa6qLDHHW1sHCEUFA?=
 =?us-ascii?Q?dyIWkoxNPC8vIp2OAAnUy7vTC18QoI2SdP6ZpH3K3qTd7FIQNWNacuXVOI7D?=
 =?us-ascii?Q?wcCQg0pdCy97i+gCosFlcfclMWafbEpxJj2pjprxl/3P0QSU6x7XYmxi5v4f?=
 =?us-ascii?Q?K3TmuT3o/IrRw03b2JCuXxUUlx2wzYDnmMPbxhXTvjRCzWIlwTgwWN5b2WDe?=
 =?us-ascii?Q?UhSNv3dKQe27Esi+MXexWMIqDdWlJbPkPuaGjuz8gn8ZJxZXwrJ4jl/8AbbK?=
 =?us-ascii?Q?QEMyE5r3j7V5BvwB9XZDAoS4ZkLDxLddwGMNHX48CojVdhZYXU+gMz0bOuQU?=
 =?us-ascii?Q?WcFMyqnnMwd1+dIZKVkEeSIFOcWXc9SfE8fQk+XF0pO5r/39SOfVEn9vhsvp?=
 =?us-ascii?Q?TBPOcEiGsyIoTpfeFJQYcP8Pdom/pC2OpgUu/ooAHjIw6lFDrEgIv17vfySq?=
 =?us-ascii?Q?+qnb1Z8FNqkSVPV9zfJSGX5U/FTi5/ZW7kJ6EjMIm7frJmlzEZwV4goOkjQl?=
 =?us-ascii?Q?JMgglz1sgL02MR1vpzm1GDVcqMRHMGavQX7TysUfdkL6zf0BmdudqeAw2G+8?=
 =?us-ascii?Q?uyn6DHsx3t/7o28jJb/YNiQFuOn2Q8/jL2HYXMNf/64B/GAKkFDeEcMWfE20?=
 =?us-ascii?Q?seQ96BKwf1gLjCiIhfpisiDm3rgue4uQlu3+rr5iwic9M4K5hJ3nqRuPfQpi?=
 =?us-ascii?Q?aJFrNZB6w8YWEkGFTgCcPl4fXLYBvQLG2m2MQ0Bf8P/Cmo+CMcExsleBmxxW?=
 =?us-ascii?Q?cZfN81jr0kTo02P1yCdmzTOVL+fLckpfTmk5Cu5UFlPKj4xbxmW0oPIx4BEp?=
 =?us-ascii?Q?5m2wZ/mx8MLtUy0DzvCwWy30NXiUgX6+DJwMIW59RgPNvwkjTFPTlqfQWglF?=
 =?us-ascii?Q?FBkCA+2RQUNO8bSoSy0xoWHaOr+C4I0WfVWi/8t5Ts0JLglK9ZX0yAuZWtoM?=
 =?us-ascii?Q?5DUAzBTSaexroLGVnEShY6kqWeU9sDDM3w693Oe2zkR5eqmFl+DY4W1wyOXn?=
 =?us-ascii?Q?0fHviZNRU+HY4owhNA1Y1nOrplyNaQfgN0wlDFXrHbZ1A5Nezcq7cUCc5W9W?=
 =?us-ascii?Q?o5YWwiGjAFOUao0jRTEX27UyYNSwEzH2PHUGG6UYeLohz2HgKUWuKQvv5ydp?=
 =?us-ascii?Q?RcqMqoKsCiFJeM/DT+MfCVt8A5XWVPUaVzjl/LKxysMxdB1uTCC+/4bibZn4?=
 =?us-ascii?Q?5jSlWr/6Wycn6ADrZiRpIsJq+lbp9dFaQGqWT4WfzDqMioVM3KIex/jDkKZi?=
 =?us-ascii?Q?eb7mwxas7h7nLyGZBKX5Vg47Gt+kXET5MQ8MDbWmVEukwsvFeV/1JHAwV8XJ?=
 =?us-ascii?Q?yiIqHqJN2qQtYQA1jfbvW0Si2zMbJ+/1X90isnvFKqlxhtmzsq2DpXgs32qf?=
 =?us-ascii?Q?k1fVJulzkh7h9HP2gYzMT3ZJRVORK0j4T2FOALDILlUS7jJaxj6RRwqyIZC8?=
 =?us-ascii?Q?bu+ghyCUM0s3OYFj7Z8FDBaWVw/utORrne91ZBiaXKvhwkvQqNI2lSqO8lBH?=
 =?us-ascii?Q?LW/lAnfMlAyRJ0zUBk+SbF5NOPhkCVuJHkBtHGid44nGQsFnjCXAYUqvAPl1?=
 =?us-ascii?Q?mtgfn7O+bB12DUZHCxP/M4ijIAsSl3JXQtPaNR3Tr/4CnX3OBw9kjCpIijfO?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9319c00-0fed-426a-093b-08dd03495cfa
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2024 18:39:38.6163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wL9loWV6eDOg4JR9QUJYGbgMw3OtcojnIa6P0+FrK9/LkJZ81nZUaIqxNXQkepBWMW+P2G6hnyte50UXFSJvfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4569
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

On Thu, Nov 07, 2024 at 11:01:36AM +0100, Maarten Lankhorst wrote:
> Instead of 3 different calls, it should be safe to unify to a single
> call now. This makes the init sequence cleaner, and display less
> tangled.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-5-maarten.lankhorst@linux.intel.com
> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 72 +++++++------------------
>  drivers/gpu/drm/xe/display/xe_display.h |  8 +--
>  drivers/gpu/drm/xe/xe_device.c          | 10 +---
>  3 files changed, 23 insertions(+), 67 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index b5502f335f531..a9ce4f561e7aa 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c

we should make every function in this file only a wrap to the i915
side with the 	if (!xe->info.probe_display) being the only thing
extra in here... so we consolidate the display side in a way
that we could later really split the display to a separate driver.

I have the feeling that this patch takes display to the other direction...

> @@ -100,31 +100,7 @@ int xe_display_create(struct xe_device *xe)
>  	return drmm_add_action_or_reset(&xe->drm, display_destroy, NULL);
>  }
>  
> -static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
> -{
> -	struct xe_device *xe = to_xe_device(dev);
> -
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	intel_power_domains_cleanup(xe);
> -}
> -
> -int xe_display_init_nommio(struct xe_device *xe)
> -{
> -	if (!xe->info.probe_display)
> -		return 0;
> -
> -	/* Fake uncore lock */
> -	spin_lock_init(&xe->uncore.lock);
> -
> -	/* This must be called before any calls to HAS_PCH_* */
> -	intel_detect_pch(xe);
> -
> -	return drmm_add_action_or_reset(&xe->drm, xe_display_fini_nommio, xe);
> -}
> -
> -static void xe_display_fini_noirq(void *arg)
> +static void xe_display_fini_early(void *arg)
>  {
>  	struct xe_device *xe = arg;
>  	struct intel_display *display = &xe->display;
> @@ -132,11 +108,13 @@ static void xe_display_fini_noirq(void *arg)
>  	if (!xe->info.probe_display)
>  		return;
>  
> +	intel_display_driver_remove_nogem(xe);
>  	intel_display_driver_remove_noirq(xe);
>  	intel_opregion_cleanup(display);
> +	intel_power_domains_cleanup(xe);
>  }
>  
> -int xe_display_init_noirq(struct xe_device *xe)
> +int xe_display_init_early(struct xe_device *xe)
>  {
>  	struct intel_display *display = &xe->display;
>  	int err;
> @@ -144,6 +122,12 @@ int xe_display_init_noirq(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return 0;
>  
> +	/* Fake uncore lock */
> +	spin_lock_init(&xe->uncore.lock);
> +
> +	/* This must be called before any calls to HAS_PCH_* */
> +	intel_detect_pch(xe);
> +
>  	intel_display_driver_early_probe(xe);
>  
>  	/* Early display init.. */
> @@ -160,36 +144,20 @@ int xe_display_init_noirq(struct xe_device *xe)
>  	intel_display_device_info_runtime_init(xe);
>  
>  	err = intel_display_driver_probe_noirq(xe);
> -	if (err) {
> -		intel_opregion_cleanup(display);
> -		return err;
> -	}
> -
> -	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noirq, xe);
> -}
> -
> -static void xe_display_fini_noaccel(void *arg)
> -{
> -	struct xe_device *xe = arg;
> -
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	intel_display_driver_remove_nogem(xe);
> -}
> -
> -int xe_display_init_noaccel(struct xe_device *xe)
> -{
> -	int err;
> -
> -	if (!xe->info.probe_display)
> -		return 0;
> +	if (err)
> +		goto err_opregion;
>  
>  	err = intel_display_driver_probe_nogem(xe);
>  	if (err)
> -		return err;
> +		goto err_noirq;
>  
> -	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_noaccel, xe);
> +	return devm_add_action_or_reset(xe->drm.dev, xe_display_fini_early, xe);
> +err_noirq:
> +	intel_display_driver_remove_noirq(xe);
> +	intel_power_domains_cleanup(xe);
> +err_opregion:
> +	intel_opregion_cleanup(display);
> +	return err;
>  }
>  
>  int xe_display_init(struct xe_device *xe)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> index 17afa537aee50..255cffa328160 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -20,9 +20,7 @@ int xe_display_create(struct xe_device *xe);
>  
>  int xe_display_probe(struct xe_device *xe);
>  
> -int xe_display_init_nommio(struct xe_device *xe);
> -int xe_display_init_noirq(struct xe_device *xe);
> -int xe_display_init_noaccel(struct xe_device *xe);
> +int xe_display_init_early(struct xe_device *xe);
>  int xe_display_init(struct xe_device *xe);
>  void xe_display_fini(struct xe_device *xe);
>  
> @@ -53,9 +51,7 @@ static inline int xe_display_create(struct xe_device *xe) { return 0; }
>  
>  static inline int xe_display_probe(struct xe_device *xe) { return 0; }
>  
> -static inline int xe_display_init_nommio(struct xe_device *xe) { return 0; }
> -static inline int xe_display_init_noirq(struct xe_device *xe) { return 0; }
> -static inline int xe_display_init_noaccel(struct xe_device *xe) { return 0; }
> +static inline int xe_display_init_early(struct xe_device *xe) { return 0; }
>  static inline int xe_display_init(struct xe_device *xe) { return 0; }
>  static inline void xe_display_fini(struct xe_device *xe) {}
>  
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index b9948b2dc8d1d..f1147ebeeff31 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -632,10 +632,6 @@ int xe_device_probe(struct xe_device *xe)
>  		return err;
>  
>  	xe->info.mem_region_mask = 1;
> -	err = xe_display_init_nommio(xe);
> -	if (err)
> -		return err;
> -
>  	err = xe_set_dma_info(xe);
>  	if (err)
>  		return err;
> @@ -687,10 +683,6 @@ int xe_device_probe(struct xe_device *xe)
>  	if (err)
>  		return err;
>  
> -	err = xe_display_init_noirq(xe);
> -	if (err)
> -		return err;
> -
>  	err = probe_has_flat_ccs(xe);
>  	if (err)
>  		goto err;
> @@ -718,7 +710,7 @@ int xe_device_probe(struct xe_device *xe)
>  	 * This is the reason the first allocation needs to be done
>  	 * inside display.
>  	 */
> -	err = xe_display_init_noaccel(xe);
> +	err = xe_display_init_early(xe);
>  	if (err)
>  		goto err;
>  
> -- 
> 2.45.2
> 
