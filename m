Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69EA96C226
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 17:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F404C10E7E7;
	Wed,  4 Sep 2024 15:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KOcCe1Pb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCEB10E7E7;
 Wed,  4 Sep 2024 15:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725463372; x=1756999372;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=p1WZK2P9DPTMelZQrRTCMkoD96SG2ymfMJT9nRGUrq0=;
 b=KOcCe1PbQvqFSe2IstBzvEiiX80R0K/2AH818wRpsXLxppO0ZzxIxEb8
 3/zUMn8i5rKdlqwkjONCnfMr507gZYe+RPRYFb/Ej2yaoR2TfLb/WQ0i1
 ki9h5C4WaZL2oRaIM/fZnQG58Q9FhIUzqOnsZDQVMvSzTdsJRvuZemFgk
 NCUDgBh1403VhPMGPM0/pPcOaQ4lKvVtc13ps1FIi9mKSe8tUR8q8gRBn
 g8G8GVDZ72u+F+dacscOcp1A59oJY6G9+3y5rQYXA7584vvlhOqBobpRM
 Qrnbo6OxzVODpVYN6F32LY4WuQlmeb+AMS4G2ydfzZ1+BNAM6q1zAUAg8 w==;
X-CSE-ConnectionGUID: FvHdD/vPR0qx3oZ+t1keng==
X-CSE-MsgGUID: K/c9qziZRaK0lTsnxV082A==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24276583"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24276583"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 08:22:46 -0700
X-CSE-ConnectionGUID: ynccNSy4Q3eVyzdSm2GkzA==
X-CSE-MsgGUID: UdSHvxKMTKy41CkTedP04A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65824417"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 08:22:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 08:22:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 08:22:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 08:22:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 08:22:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ub07MlQ3T4FScL7nxOueG198tvjO/7SlAoeRhZcaMGpPfIecF2R3JmA8n1iyMmYKYV6Bv7EDcX+la97eumnvh7gZBXlvH16j1waZyztLacby75EcaXNjjPSyS1br8ZogjsPFdv5GGBzKt9vvM9vvVyJp1vznyO81jwbPR40kBti4H9ixC/1GIHwWyH19gS/k/YSI+fAtK1b1IuGTuKm4JcmAx1VZ5mTCsvNrCv+Yh3kkxJpC8BQoO2YkZAqncA38OqUVB82vvlicq8U7WUkNdr2D0mZ3qA9C2rtn4U4p3XcrCpCLGmvsO0DuBQ/tRakX4j6k6p12pPo8LAU2cgbAcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y+jdqy26I/ezn2FqTexEBDST5hCiC62e20MNMOeC1q4=;
 b=BNDb7w7hhA6quDCaPubcrVpuRJoKSr0suLexCp0QAFgGHSnUnPTCcZGsReTUvFghTO+IIMxlcNYpKtGx7e8AyEgFs+YihYtWPfVXGfZ5j2bPm4d1riQGelFu2zulWBXtQ4mp7zNyiT/hWykKIsa7XjXlobjFiLIVjpg0v4awuAH+u24cfPBlmXweOfKRbUVx+X4nLxwLm5pQ7+VtWpGopWC2iVvQEChB62WynyFgrj7tOiPV+p2CMCiK/eJTqwQOlXOZ9U4mKz2BEe03ijaO1csDR4rl8qkY1mpmLBeMkNSNXxsxxgAnQPGyNq8Eusi5oVRPGKHBz8mAUAwTxHs7pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA0PR11MB4528.namprd11.prod.outlook.com (2603:10b6:806:99::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 15:22:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 15:22:43 +0000
Date: Wed, 4 Sep 2024 11:22:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 3/4] drm/xe/display: Kill useless has_display
Message-ID: <Zth7P18cu2YLAtTY@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
 <20240903223803.380711-4-rodrigo.vivi@intel.com>
 <87a5gnub2w.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87a5gnub2w.fsf@intel.com>
X-ClientProxiedBy: MW2PR16CA0023.namprd16.prod.outlook.com (2603:10b6:907::36)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA0PR11MB4528:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fd43cf2-aa5f-4c1c-f830-08dcccf56c2d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tlxGqj1H9EuSitffE+n6YKvk9IiChs7q1JJIzl9mz++yCxAyHrOxvFm7jPIe?=
 =?us-ascii?Q?mzG0c87bUlMN2qVL7fnM78FY8sjp5gaMmPwa5kiv7Je66oFbopSpNRfyQURL?=
 =?us-ascii?Q?1hC8v+i1fHH32VA5hVMwGIJ5NerX6fP370zyb8aSnQzCBrNVR5zu28kbhHg/?=
 =?us-ascii?Q?PtCySn5qWMDn4dPxS+0Zfxfnr78DR288ye7kp/cIHR0qZkgZ+vySdOLN+VL3?=
 =?us-ascii?Q?KUJo5vVKw2MXi9GRBi1lDBrO4LWS1+rQlJqdbGWWgQlrMWgQGcLRO8Kq5QMs?=
 =?us-ascii?Q?KSEFRX8DKRRsTwwBWCfk+c9/vEJ9JT9ZFku0Z9eNiiSEsp6zT1DOdoPiDzte?=
 =?us-ascii?Q?/J4q7sl6RFj+z9oTojzw4Z+P/amjeKUiYzlimHmURNJ2s1Bn9XYbozI57Cr3?=
 =?us-ascii?Q?caHTbaR+uegfU6EvImT978OtGTu3AIlzuvV3JDbtQkjzNfUn4KYNefN1Cz/w?=
 =?us-ascii?Q?4PlqJKyNrXLEpRtWvUERJVf8mGiDinQvxUTbM9hp1oht4tH7YCje/7DAK7/b?=
 =?us-ascii?Q?VsURI5cIPzr64cExOsgvWkDja6EFo6e/vMmZul13l4gfQ+jxAiEbhVA67hhj?=
 =?us-ascii?Q?j/lKr5dQjgclXIZ7IT+3NUdARMujgdehNRHco/oV7s6o2HC8dMldb8S2J4Ex?=
 =?us-ascii?Q?5bcbTLxIbO/uo6DyNZhXvI/tDg2PHgQkdSdoI5lSuHRrc1xFIvsO4vg4awUM?=
 =?us-ascii?Q?g11XE2QizdrsVf0EI911xSINwqsjXFpkQ96Q0dXcG/pC1OEq/Kwisf72o8nD?=
 =?us-ascii?Q?S7fzxlC+fXS+MHouiF1GYlBYmPqui7DqG6pwLOgCj13CIeu32DPM8E2WG4Yg?=
 =?us-ascii?Q?fts1efaI5JVXVMvcc53DTSYzr7hKqffx/OQNPMSDWRKqthvToSXxD4bk0zyC?=
 =?us-ascii?Q?w7Ku9s4xAKpCdELbARnxPq9aamTWt+iLnp7lzTTQOLnukiKmIW2DYDMn/sz8?=
 =?us-ascii?Q?p42MQ/cDmIybj8NmOcjJyURZdUtNs6zJgzL8a6xm/SEC7+puUAdMeVeA4DD3?=
 =?us-ascii?Q?UGH4hwZhkFzN8lTrYd4u07wWohWioofdvOC3xsYCYwqh3+Yzf2Bi3vUa9SDs?=
 =?us-ascii?Q?U/fcJLnfr7H1X/gJkk35zEbKj69AR1xhnOGfk5oS1+R0YKkbzImPcfe8zwlu?=
 =?us-ascii?Q?HzjzXCFf1Nh2IcJlNGJvSmbR5hI5PGj1GVzGUuYgof2XCn9RVpekzI8YH9sm?=
 =?us-ascii?Q?W73l3YytXrEMjYnfAGozdVwJYyt/Qa2sxzCipmmhyHy5b6hAvR7ahsiOQ16t?=
 =?us-ascii?Q?w+H4D873rQ5u7Rl2NKAA6NBwU4YxduNwsZM/jXSpbP7u1A1hghm8sNKEwrmw?=
 =?us-ascii?Q?y/+ao7hOmk09OS40zdFBiYlOaeQvB+MSNw81aWm4bJYbmg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XXntMknq368RDfjT5fLqom6xuxo5kb2F+YpeAf8nHxP+BsL1G/qen+3bg5uq?=
 =?us-ascii?Q?IaZS0HuPfzavaLywkY/jnqsjDUy1OiAKd7Fifno0rlr3GTledNShJvomPVqC?=
 =?us-ascii?Q?rGMJs34UsqMwvUaG/5u3jK70uXeVsCGx11YAZccoVsJ5hocMx6lVSVq8An3X?=
 =?us-ascii?Q?0OCDQaBaIlxMP/MH8Z9eRsNqaNadRK8hHub+mffLvvwzW8Gfz3jVGvbi8D/D?=
 =?us-ascii?Q?EdOQ0lZgcyhoWtKFpN2CB8iOR0noizopTk375/BldQ9cvFcWan+KUWU4+tfF?=
 =?us-ascii?Q?mSkLgJVrsQWWsuBYaub1v1wx/DWwDxY2bRBNNlSv0HY/zL2pJnGq+Y0/LMtx?=
 =?us-ascii?Q?heu+JgbM1+PtZbAKymmMY5m5oZ441zi7wVu47dCQFZcwM0b6tyjQP1HDgJvJ?=
 =?us-ascii?Q?eebYU+7UBfUiMYmInZsvHHFtMeqUVxt+2/3Jo/gkJ59Mz+8ZWc+GT2DReZtt?=
 =?us-ascii?Q?xBrk9YWWMioAhuKWnXQo6bfZbGwlH28eS+tX+GpPJwKMWZahCHmRzsM8xe8M?=
 =?us-ascii?Q?nI87Z1opgN897coo0Ptf7df+KsF9gFB4n+USjytR6QQ/4YUXHjwRBQLfHDBx?=
 =?us-ascii?Q?z0zzxCNLsG8mBFoz8iz7xzXk1Gw7X9KU3Onrr9ZftQSyO7m/eHCTVCEBqiZw?=
 =?us-ascii?Q?XxIHMx7kWPRW+8xsF6idM52LQKR34usB9VrNmcRJ5ztnB38CyRdtEr+p/L1t?=
 =?us-ascii?Q?C9ccVdlWuawl+nIz6HhJNx6UPKQDpVyubQ9lAVjmsYxTzq3DNI1jU2hUusj1?=
 =?us-ascii?Q?Sibi8jNOkQnaZu0HgYYN2s+MmK9c1YsF1PcrWNs5DJcJvXwYxyyH7dnRIt5M?=
 =?us-ascii?Q?9lt4ftAirczqgof4iPLNGqCtKUNLtzitLpIGnDDazEQs01pTzPnvrZpJHsWc?=
 =?us-ascii?Q?oK0bSvhpqAbe1vOp5YP62iGeyiqlJfiftVFGPgZTGlfx0WbQYRdbxe4oJI9A?=
 =?us-ascii?Q?7wLCtxUtyifUp9I+KlykSCSA874R6LLOwfoATFyzW9FHuiimNOxrrWfCyNA0?=
 =?us-ascii?Q?N50pZErrl7rB5NZJkHzo4Uk9L9F7GvmoCimlC/e1eE7kF3KfYpb15+UzjVu/?=
 =?us-ascii?Q?dcnrZArStnbTEt3WIKfLIcU9rXpJjuCZmqJsAx5I80JOJGKH1VJkku+U8Wy7?=
 =?us-ascii?Q?yZjnegqDdgKM1GlfHOIQh4Ov2nJcysfn3VcDhOYEEioUTaiIehG0bMbA4oov?=
 =?us-ascii?Q?pclq+WRHsLpyAY3l8nr8/wT0joNlvOZ+rAuLvOfXr0uVJ+xjvFulqfiAinnk?=
 =?us-ascii?Q?BXYq15AO2uVinryoe6HwIJEkoJqFxkEYvgWGTtt7L/PMpRUuHOIxdvZgoWTp?=
 =?us-ascii?Q?RzxIEMYHDLUJ6bGtIN0mRYn/NGGytpCR5WWgrD1/YgNtazMcR1OEKXPz+qrD?=
 =?us-ascii?Q?hA1Ul7Udyt/ovpPNBcylHQpjyOd7yd2qi6GcTzXGjSg1jBIfyFdxXz87bOH+?=
 =?us-ascii?Q?nhrWFQBrebRltYK6rIs0P3PbQAR0YOFeD2kGhHCenfPxkUEvkC+VnhHRrpo4?=
 =?us-ascii?Q?2jcaBOMhvwbEYFQJ+zoqbTUy3Q/ibDR56RtR0n1A8KLuMXa2vf+HaMFK2FX2?=
 =?us-ascii?Q?O4StdufOQ18BNQHhvovJpH83Ks8/TCuHo50V9MXOm8KtCGPVs9tzNfzSY/sA?=
 =?us-ascii?Q?+Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fd43cf2-aa5f-4c1c-f830-08dcccf56c2d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 15:22:43.6618 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2mbVeWqV083F/FDg8zt0B5ijqIiz1FgNuC0tbdpUX/29MIh81DayIopeVy0SHf2PLsCI3Ck9XbceIYoJ/isAfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4528
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

On Wed, Sep 04, 2024 at 10:33:59AM +0300, Jani Nikula wrote:
> On Tue, 03 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > When HAS_DISPLAY is false, info.probe_display is set to false.
> 
> Where? xe_display_probe() returns 0 directly when HAS_DISPLAY() is false
> instead of setting info.probe_display.

the return 0 is when has_display is true.

if it is false it goes further to
no_display:
	xe->info.probe_display = false;

> 
> > Hence, all these calls to has_display() are bogus.
> 
> Also not quite, as intel_display_device_info_runtime_init() checks fuses
> and could change HAS_DISPLAY() to return false after that, with no
> impact on info.probe_display.

I confess that I get confused with the many no_display kind of states
we have and specially with mutable ones. But this was only one extra
reason to consolidate everything on the probe_display since that
is getting changed during xe_display_probe and not changing on our
back after.

> 
> BR,
> Jani.
> 
> >
> > With only one place left, use the main macro now and entirely
> > kill has_display() local helper.
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/xe/display/xe_display.c | 43 ++++++++-----------------
> >  1 file changed, 14 insertions(+), 29 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index 65331bbbc068..daf9b9baa88a 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -29,13 +29,6 @@
> >  #include "intel_opregion.h"
> >  #include "xe_module.h"
> >  
> > -/* Xe device functions */
> > -
> > -static bool has_display(struct xe_device *xe)
> > -{
> > -	return HAS_DISPLAY(&xe->display);
> > -}
> > -
> >  /**
> >   * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
> >   *				   early on
> > @@ -336,8 +329,7 @@ static void xe_display_from_d3cold(struct xe_device *xe)
> >  
> >  	intel_dmc_resume(xe);
> >  
> > -	if (has_display(xe))
> > -		drm_mode_config_reset(&xe->drm);
> > +	drm_mode_config_reset(&xe->drm);
> >  
> >  	intel_display_driver_init_hw(xe);
> >  	intel_hpd_init(xe);
> > @@ -388,11 +380,10 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >  	 */
> >  	intel_power_domains_disable(xe);
> >  	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> > -	if (has_display(xe)) {
> > -		drm_kms_helper_poll_disable(&xe->drm);
> > -		intel_display_driver_disable_user_access(xe);
> > -		intel_display_driver_suspend(xe);
> > -	}
> > +
> > +	drm_kms_helper_poll_disable(&xe->drm);
> > +	intel_display_driver_disable_user_access(xe);
> > +	intel_display_driver_suspend(xe);
> >  
> >  	xe_display_flush_cleanup_work(xe);
> >  
> > @@ -400,10 +391,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
> >  
> >  	intel_hpd_cancel_work(xe);
> >  
> > -	if (has_display(xe)) {
> > -		intel_display_driver_suspend_access(xe);
> > -		intel_encoder_suspend_all(&xe->display);
> > -	}
> > +	intel_display_driver_suspend_access(xe);
> > +	intel_encoder_suspend_all(&xe->display);
> >  
> >  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> >  
> > @@ -440,23 +429,19 @@ void xe_display_pm_resume(struct xe_device *xe)
> >  
> >  	intel_dmc_resume(xe);
> >  
> > -	if (has_display(xe))
> > -		drm_mode_config_reset(&xe->drm);
> > +	drm_mode_config_reset(&xe->drm);
> >  
> >  	intel_display_driver_init_hw(xe);
> >  	intel_hpd_init(xe);
> >  
> > -	if (has_display(xe))
> > -		intel_display_driver_resume_access(xe);
> > +	intel_display_driver_resume_access(xe);
> >  
> >  	/* MST sideband requires HPD interrupts enabled */
> >  	intel_dp_mst_resume(xe);
> > -	if (has_display(xe)) {
> > -		intel_display_driver_resume(xe);
> > -		drm_kms_helper_poll_enable(&xe->drm);
> > -		intel_display_driver_enable_user_access(xe);
> > -		intel_hpd_poll_disable(xe);
> > -	}
> > +	intel_display_driver_resume(xe);
> > +	drm_kms_helper_poll_enable(&xe->drm);
> > +	intel_display_driver_enable_user_access(xe);
> > +	intel_hpd_poll_disable(xe);
> >  
> >  	intel_opregion_resume(display);
> >  
> > @@ -485,7 +470,7 @@ int xe_display_probe(struct xe_device *xe)
> >  	if (err)
> >  		return err;
> >  
> > -	if (has_display(xe))
> > +	if (HAS_DISPLAY(&xe->display))
> >  		return 0;
> >  
> >  no_display:
> 
> -- 
> Jani Nikula, Intel
