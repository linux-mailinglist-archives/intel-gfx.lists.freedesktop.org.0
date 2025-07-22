Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C00CCB0D77F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 12:47:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E204A10E09D;
	Tue, 22 Jul 2025 10:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NeNZBPNx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5BA210E079;
 Tue, 22 Jul 2025 10:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753181260; x=1784717260;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=zrYPlxqPp8QR5xqPozurXqQPlHq+lSd43P5Kb0WGiE8=;
 b=NeNZBPNx5XS1IG3HNuT1IE/nkAdIPK5JRWwXgOIfhWSvFpynRtiE7TMx
 YTh/g1RBH2LqG8xkb/3awVchbl49f6sTQPkR3Uixvw7XgW6A989M73t93
 nEnk7nT7Sa4vvS5j3Tb4oZM0cXomOUL9kBPQ53uGswhyVzmO704534JfI
 GcDhoyn3o1WmM84PDoL/FKWdDtL+MmF5PP6Ak2KBWlb4Nt5Y9yC5qTfzb
 o9HJI6CQns0tVmJ8Z9Spd8Z6I6YIEQJMMYlASzA6GhVTk6/eWt95sLrxk
 +XolHMawMVkJSvg8tuyHWT7xkkQ7mFB7TXzbX+4X4mHyaZdlRXbC8IjDh A==;
X-CSE-ConnectionGUID: j96WAwbQQ8qDbLPqNvQxnw==
X-CSE-MsgGUID: U3zh63r6R9ST93twoonQAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="72878323"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="72878323"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:47:40 -0700
X-CSE-ConnectionGUID: 8dfiCpmJRouBl9BL7Uv7uA==
X-CSE-MsgGUID: ZptlF3n6R9SQH0WFK0eITQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="158417539"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 03:47:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 03:47:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 03:47:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.59)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 03:47:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C7qcWec7M/uL3QzLJtOGvEM+S1z7Kc5Uw3WZWDGHGR9QizIrUWhZlT+zgwBu8v4d2GImIWsc4fVaprrQQg17USnhPZHKHAhQOQpRza82Lb8nAznfQfbyPKkSp/7d4sWquycVx5O+AYImZwj+iAqvUwgS/46MaWBh0pXllwoDF+8gYvoZklcEy1mhfqGL7R0eV/TT75vlKsxuesqT5jnFQV8fOShJ3Q160anIHKR9itCM4qk6XsMkDOYtErwxQGkPNMOaM80NMCMXWnR+SLPSS+oRPovhqetMovuqKOhHlgADUO6KVx9Sl1816RNu9kz6PmZktykU/kmWJTR23uMh6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I7jSHcvM1LW/CzUDCm+fvt49YAzSXsWtdamz9kbbuPo=;
 b=IKt2/ocDDivaO0+ItJu9zO40CggGR3GxFLjxVrUUTD43bxUtpBZoGRRrk1MyqV4tLTCa7pwhy0htcBnyL1nbDQx26wvUYKKVUPesU+UUQ9oXWJmzDjqAUd9Wsi5cu9A6nhCQbWBrnplyHyctGzRv5c5ZQXuaD6adxpJBDFzDFJPteWt9zZ+ANTTOuo0DPFBQt+yoFBUzZeMRFaQ0/JsGiQ3d1FwjUvtlcxRzScK6vZzKi9MDQK6P+iJ88OkaPxSSrtHhIpkzofCQr2rqmiw88+rX+jnBj3WxHpcFrIYSSgrUzp8186rFwSQfsRGN71pt3BZW2gaMl7ZsxzbSzfbZzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7920.namprd11.prod.outlook.com (2603:10b6:208:3fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.29; Tue, 22 Jul
 2025 10:47:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Tue, 22 Jul 2025
 10:47:21 +0000
Date: Tue, 22 Jul 2025 13:47:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/xe/display: Block hpd during suspend
Message-ID: <aH9sMxdRfHQB41PE@ideak-desk>
References: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250717085425.1347043-1-dibin.moolakadan.subrahmanian@intel.com>
X-ClientProxiedBy: DU2PR04CA0293.eurprd04.prod.outlook.com
 (2603:10a6:10:28c::28) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7920:EE_
X-MS-Office365-Filtering-Correlation-Id: 886fceb2-4248-43cd-fd22-08ddc90d22f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OAxSvm0qdu1/faAbNeJS1iNq0zGmPFvnoeXUtS3uxGyo07g4YyLnfYycYQGP?=
 =?us-ascii?Q?67ZBtGhFBXY+0gD4PmuZZwoBbaD+7EjcBJXfszPxQTyV2jjEJjqFTh+QVGBT?=
 =?us-ascii?Q?Wvj0RocHg+YCAx4jPZlccNS42e2za1htD1KuOuJUPYKZe7ZLEWo0dAtW/V1H?=
 =?us-ascii?Q?W3ekHM8Al/Mikec4yv7nruPFXkhbWkZL49x6yxGkV0QFyUEi4DOQte64xSYB?=
 =?us-ascii?Q?4sLNZY8o6Zu53brxg46EcDf5mefAckcQAWvq4olc2r5KIzK58uCV0bZUnpVY?=
 =?us-ascii?Q?95euzCF5OCFdC0yy4SlIdYShFejbdN9W04i/dRGt5dzBSLU/Y//gNsbmZMyP?=
 =?us-ascii?Q?IL7FjTF2AY0Tim2V63ZpZ8ODTolklYEQZjTndsW3Cl1MyU20MMFZxIFHe+m9?=
 =?us-ascii?Q?cW6hrh1CTtmeCkyLs+pUUrYlqRRnIKJKozYkg9BUz3Z9sCGPzfvIWAZ0gJTH?=
 =?us-ascii?Q?HwvD3ZN+V2nLX8IVfXRK8fYNNvap4XDoDCUsG5KnjlSt0dZYgNJ8sldMsKre?=
 =?us-ascii?Q?zJX9N89LGmDXwbI3BQD8Hx8LeZshtSgg69G+NC4EmHtPpAE94zTt1yYCCzsY?=
 =?us-ascii?Q?2Ikf0O+JWb1DhWMiCWym0ELBBdB+v+Ipud96ck02Dbs94wxs+Io+838ZdKyp?=
 =?us-ascii?Q?/vthIxwGcSUDH/c1NtZebRK0F5o9PyCDQyQNj7dq6CfZmnU0nKKMp5dZh8B6?=
 =?us-ascii?Q?VBI7kwB+TRUot2DTV7whRuzOJSTcJlNm8i3e9fAL+detg+da890bj/u1NPWD?=
 =?us-ascii?Q?5FYkO50XpjIp0IoBI/r9x0yJO6sP3Xc7An+NbecPXQpCHgMDjWXt+LFdD/Sh?=
 =?us-ascii?Q?4S9to7bdBSbf9KiPMlVcnIjcy/4ZBBSn+4LpfemjJ8981OMqYGwl6w00oJn+?=
 =?us-ascii?Q?r6ovgZnnUNKMqr8FDOGHIXO36MiZe+pu3DTuBjI8fZiIVccB3/HUXQcvYdmt?=
 =?us-ascii?Q?cMKwmsl5D1nVpKPsSLJOLd57cVcYbWD1K7jJFguNH+/b/t5izOwCxHUtTQ5Q?=
 =?us-ascii?Q?lagmiptbTMFFeb6ElmGGkzzoVxngU6l2VU/hOxMZD0TenPPt2oE+AM4FiPvy?=
 =?us-ascii?Q?CjasZoM7Ue5LWJo/hBHQXVDxnhj/5ugpDfxG538oM38/NsavVg3iw0LVv7m6?=
 =?us-ascii?Q?R8gt5lCIvXqxjLlmpp64Vnqb4OCdGSIfFfjsI4fxMYOBbcxS6etVeZvc5SUY?=
 =?us-ascii?Q?a+SEnUF8aaBvgo3//9oNg5m0NVatyTt5IJTe2Ykrz8YxlkC4t92hk4i2dvqX?=
 =?us-ascii?Q?db7fmDeD2da+oIFRyU0p07AoXpdD+0FaqywnbJJVHuwMnznmISt4EC1PnP/P?=
 =?us-ascii?Q?G4dWl+FayUPRYmzrYcEvyy6Lq4efS9wi4lQYro1yHv6CfrA79TmmAz8DtdII?=
 =?us-ascii?Q?Jb2EAY8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yD2MYc62v1nhtWivYkQ3kTDvb+x0GcvWP83wO81ONfNJPdVZBg+xm1O0YkxG?=
 =?us-ascii?Q?qLGOjCH/4PbZIMBMeu8e5L1A3FvHYdxiI9rskBT8EKVyJ/Z1yQLLpAbZf7Js?=
 =?us-ascii?Q?/y9g5Yp2/A29uosUkYXwwUEalc0p7yHZVDaqZh7fP8JywzfIXSR9hYa6btuA?=
 =?us-ascii?Q?DGUvBDieAmS9E0qi7bV3vEu7Ne1DdB+7D9QC0pkl7wOArPERexyzby2VZVuS?=
 =?us-ascii?Q?TVDDsBWsV+2CEnQh6y+WMLUPVncMGGZTDZ3/gxONsUEP3S5uSVy9pOe0loZl?=
 =?us-ascii?Q?9LDk2sT/j5gAHzOINKOa9eX3btv3iu5sJMUXYbLm2pwBxwPSlT893u8H22kV?=
 =?us-ascii?Q?K195P5iqsBxT5c9uawaI+dTY99zjAL/CQI3aBaRUxI2JTa/BdMfcIzaNQxRH?=
 =?us-ascii?Q?CZxLIF3BGRkEIGP7MDl9cQcQWKO2q08t/+EGqxR84FTsSSJ1yTR9TOWR53F9?=
 =?us-ascii?Q?0PkB/ua/FthaUVkCr5laMvjsDvgQQr/XQojA7AKXznQjAxrOtnRHFXqfc9iC?=
 =?us-ascii?Q?7+SL3yvbKU4v6fyVn78HHMtLcotl+FaX3aKNbUOOqiSJ0k3sGKvhuTGEQOpM?=
 =?us-ascii?Q?9ZsZu/pERH78EAOB3I4hUO/d/04OTkO21EF45WDmt5syg10zRfV0uPV8MSiI?=
 =?us-ascii?Q?ina4o5PHHoaEKRcKLCvEiGl+iEHDmsfE7zqXzmea+mIIa09Bpb5qATxcQtt+?=
 =?us-ascii?Q?dq6cwX5cL7obS0kMSbBsvVgOrOhFztNFqcmmgwIIkUTfQGFI6yYRtDbs8znj?=
 =?us-ascii?Q?odZLrveKt3+JpP1Xk81YggaCNBIN2BUPIitsbyPFTHCkGvyqRXgNAaqTy0c6?=
 =?us-ascii?Q?TKTvYgRkb9o38hg9RWsCH11TFAdOktLTqpwbM1EG45MqO2ScbcOZDnZVvA4s?=
 =?us-ascii?Q?lfD50vCDWY++hLuWdboPKFi2GGEMFRsIP7erJBwcg4JNYKC9nrcaUTzW2d0y?=
 =?us-ascii?Q?tcybyM48sBtwyoaQlHKQjq2plTe8n0uoyP6Rau5aRFne/sUQqpNkLgfYkdJ4?=
 =?us-ascii?Q?n4fKNZXQcXF4b7GqB7BjJJGwgn+MEI9G7/09pJ44fLXD3mHSezr+zQorP4B2?=
 =?us-ascii?Q?EGJo/HEvSMAdia9YFOBOvzm73ErqZQwwXzRV7FZIboaVf5WIYvbNxx9BkJuU?=
 =?us-ascii?Q?9q3EF+oV39eA8WbzFEbXs4YqoNcTHHPdyOCOxn0iL9Uitp4PxTGQnSV0spwI?=
 =?us-ascii?Q?MFpQygmbUveGs0qPtb1WRb4Tu8V7v/cjF/Bspc8evrDqwa1nV9TVYgLGPw8Q?=
 =?us-ascii?Q?rqR4+lYWp9+fperit1zjjRscv6KcfDMj6V65lgJxCMIYuHRCLyQ0ALbQEwdp?=
 =?us-ascii?Q?ostHVboOBugtQEg6NApWIw8MY1nVHfm/w4ciVQxUkIidKBRlLRsRVoYZmGoz?=
 =?us-ascii?Q?AixEE5s8ZHeXfjkJ8Gf3x/2m+iPjseVM+oQw1EEkyi7xmPaxfCgV0BgZqaLF?=
 =?us-ascii?Q?SsgzQPmzu5NKd5hFUCrivWHcMGXPSrcboNPbqLzIv3ivm9LVVXVon5ApZ9ZB?=
 =?us-ascii?Q?XCyGqnS8SuGqq3f2sSyTwbXihji3OAS8AdUc1kFzy7/5+6NYApMtUy+UN6Ro?=
 =?us-ascii?Q?cjK3okzLd8zdOR4YTVsqcgkokHHZ0Qy6PNqGm99WiXcBLODae5wV2ees2P/p?=
 =?us-ascii?Q?5UorGPSxgTdx75rNWX08tfxLQKuMVu+vjUZiEJZpHv0x?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 886fceb2-4248-43cd-fd22-08ddc90d22f1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 10:47:21.7124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1ndmYkabuEHi/VSUKMoGmQ412IFEf9D5ktgxGT9uB81RaHV3UBWDivxItD4QDaVOx2/Dp6QNVPQHtuzlK6/HEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7920
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 17, 2025 at 02:24:25PM +0530, Dibin Moolakadan Subrahmanian wrote:
> It has been observed that during `xe_display_pm_suspend()` execution,
> an HPD interrupt can still be triggered, resulting in `dig_port_work`
> being scheduled. The issue arises when this work executes after
> `xe_display_pm_suspend_late()`, by which time the display is fully
> suspended.
> 
> This can lead to errors such as "DC state mismatch", as the dig_port
> work accesses display resources that are no longer available or
> powered.
> 
> To address this, introduce  'intel_hpd_block_all_encoders()' and
> 'intel_hpd_unblock_all_encoders()' functions, which iterate over all
> encoders and block/unblock HPD respectively.
> 
> These are used to:
> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
> - Unblock HPD IRQs after 'intel_hpd_init' in resume
> 
> This will prevent 'dig_port_work' being scheduled during display
> suspend.
> 
> Continuation of previous patch discussion:
> https://patchwork.freedesktop.org/patch/663964/
> 
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 24 ++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_hotplug.h |  2 ++
>  drivers/gpu/drm/xe/display/xe_display.c      |  4 ++++
>  3 files changed, 28 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 265aa97fcc75..7ffd8ded1c26 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -223,6 +223,28 @@ queue_detection_work(struct intel_display *display, struct work_struct *work)
>  	return queue_work(display->wq.unordered, work);
>  }
>  
> +void intel_hpd_unblock_all_encoders(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_unblock(encoder);
> +}
> +
> +void intel_hpd_block_all_encoders(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_block(encoder);
> +}

intel_encoder.c has the intel_encoder_{suspend,shutdown}_all() helpers
called in the same suspend/shutdown paths, so I'd also add these to there
calling them stg like intel_encoder_{block,unblock}_all_hpds().

> +
>  static void
>  intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
>  {
> @@ -971,8 +993,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> -
>  	display->hotplug.long_hpd_pin_mask = 0;
>  	display->hotplug.short_hpd_pin_mask = 0;
>  	display->hotplug.event_bits = 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/drm/i915/display/intel_hotplug.h
> index edc41c9d3d65..3938c93d2385 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -34,5 +34,7 @@ void intel_hpd_debugfs_register(struct intel_display *display);
>  void intel_hpd_enable_detection_work(struct intel_display *display);
>  void intel_hpd_disable_detection_work(struct intel_display *display);
>  bool intel_hpd_schedule_detection(struct intel_display *display);
> +void intel_hpd_block_all_encoders(struct intel_display *display);
> +void intel_hpd_unblock_all_encoders(struct intel_display *display);
>  
>  #endif /* __INTEL_HOTPLUG_H__ */
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index e2e0771cf274..51584ea3ed09 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -340,6 +340,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	xe_display_flush_cleanup_work(xe);
>  
> +	intel_hpd_block_all_encoders(display);
> +

Yes, I still think blocking here only the HPD IRQs makes sense,
disabling all the display IRQs suggested by Maarten only later.

xe_display_pm_shutdown() also misses this.

Also xe_display_fini_early() - which is called after disabling all IRQs
- misses intel_hpd_cancel_work().

>  	intel_hpd_cancel_work(display);
>  
>  	if (has_display(xe)) {
> @@ -471,6 +473,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_hpd_init(display);
>  
> +	intel_hpd_unblock_all_encoders(display);
> +
>  	if (has_display(xe)) {
>  		intel_display_driver_resume(display);
>  		drm_kms_helper_poll_enable(&xe->drm);
> -- 
> 2.43.0
> 
