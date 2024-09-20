Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A117B97DA4C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 23:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3113510E86B;
	Fri, 20 Sep 2024 21:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMLRXmlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E8F10E86B
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726868048; x=1758404048;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=clzf0D9Dty5xcjW15ujTNo8WLvkZj3nGq7pLCi9j8a0=;
 b=OMLRXmlxlDFyj4x6xv53ezFfAZV6raWuxcnSUBm2GOS0ummvd2IG1H9M
 SK+mNEhxiDJjNW1jDbkepTiUjcsvE8y2FDj9lEArHm5fHIJWqn7BhRXRI
 s90gbWvlKkbdxCWQjGOkstcyhoz9OmgH3o9M+3dEaayloBBePFhEyeMlC
 naRoWxP/sxS5zo6POrW4NAiB/rYzlSiILQU8gz1CAGUKn3ZEFQDhddq1T
 M7Z8bUxkoRlP2ZJr0WHkpfLUGXVr6zfLQqrDN7rEWsB4drzSnC2Det/6N
 djYLLgtawc5KCyWnoZyTZWjCI9YnjKAMjUiMEdzfqGzEglM4NrGqNjVNC g==;
X-CSE-ConnectionGUID: RahmBXdMTIGpxCVJb3DUsQ==
X-CSE-MsgGUID: wYBxUbrcR5Oo0xugPVmP7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="13615177"
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="13615177"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 14:34:06 -0700
X-CSE-ConnectionGUID: B9WTsvzaSFCN5DlbEs7zAg==
X-CSE-MsgGUID: PvypMyMgRiajb3ouv5wW8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="74826323"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2024 14:34:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 20 Sep 2024 14:34:06 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 20 Sep 2024 14:34:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 20 Sep 2024 14:34:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 20 Sep 2024 14:34:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q+QWA3YZ2cMB8pmg+BqgiBTWfTM6ZNXCxfHXB7LZkZvDmBBNpFD4BtJNdVpe12fWuwqvuinQjNyWjVj0CaQOr1af/lgErZ+5jJhNmMA9zpi6y0EpiWuZoyFvvWvGCLxoMjOHQ0p77EBushO7ATlfnf1ZwZRSDX6MK2TKh1N7m/JYtCMeA2eGAy/5oPNL8pQ0f9oRRt+gyqSkzs74qUubV2Cz0j/uIH6t7URnDHV8Gti9pOLSBcaMcyhsD3yoBcpCaDTdgfhcRTdvIRUG0nYGedknRdpQOSZdqBwh1+HtFbqWkgRX2kcQdUFiJpDHzQZSG8kJBm0vsw5T0MAZKMavww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vOhz/QUBKmgHcac9zMZ9e+8KxhX+/O1gQJmBs/2hffU=;
 b=ZLNs0zdIWcC2//PgYmd2KDbXMAToz/ul138jUsM70hoDyxHTUC2Gr/BQPhgDJEpfNH0fQY/m+otcmMEk+2f44zG6HdBGSSerSspmLYoifxk4uLrbRbNjikCrrRTQ1zCAPHMzFbM4se1qMiKUtAJJhmtqgIoE5KXQYiJCu6Bmx68bZsVtcJWl0bmy7Z7r9gQuR5oCukdS70LD0bq4YYdC7VPnnbkXd2pRsWx68fuW/IUkWWY4r/Awh0xglBEnUluZOPyqIxiMJhuBnI6hz9TusLoG6JaUc2kCS7shUbNQHUKvcxxA21xTuyscOWA6r4/lC36tUXc3NQHbWsIQ5ZnMeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by PH7PR11MB5942.namprd11.prod.outlook.com (2603:10b6:510:13e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.17; Fri, 20 Sep
 2024 21:33:57 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.022; Fri, 20 Sep 2024
 21:33:56 +0000
Date: Fri, 20 Sep 2024 14:33:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/hotplug: Add comment for DISPLAY13
 SHPD_FILTER_CNT value
Message-ID: <20240920213354.GV5774@mdroper-desk1.amr.corp.intel.com>
References: <20240917052307.760662-1-suraj.kandpal@intel.com>
 <20240917052307.760662-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240917052307.760662-3-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0035.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::10) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|PH7PR11MB5942:EE_
X-MS-Office365-Filtering-Correlation-Id: c312b0c5-7b63-4633-0ca8-08dcd9bbeec8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sDrW2EP3lwdDxAZE1XWaZNfYMml7qTJpbaeN/VkHJYyAQY3Ba9qaOzykWTqm?=
 =?us-ascii?Q?g8GFSNwgd6ydp7bs6qgyiZkdaNkK9JwZWqub9mSeUtv/y1BzMv3JVq4HpRny?=
 =?us-ascii?Q?1XymzDZNwCnlZs2v5veXFPECW3PMhquXKQb/xxlWRproSA86FF8iAv85mkiA?=
 =?us-ascii?Q?szDsOAYmkUd66goRhrmHysGWDTvSrrkiAVGpGLzPEmYJX0Vjw5H+icekDrJ6?=
 =?us-ascii?Q?7H0S9FyeDpnzVkCS66fWWO2cqVMoMR6s1upfjpKw9TcXkS860r4aTOv15n41?=
 =?us-ascii?Q?YcRROjhDdep/oiE54d/LCSSxMPvzChKhUeFKaMCkF+dvMTbEYhMAFmbkH7fh?=
 =?us-ascii?Q?n2EzMKdJGa6WXVfgH6UhbsJQTqdcd3VA18dGBSKCoyrZIbciFPIOmxCsKX/2?=
 =?us-ascii?Q?vd3C9xxyk+34ejc+D3uvpUsYyYFFKt9Kr8RcGutpvBEITJ8qmD0SugBwKEvx?=
 =?us-ascii?Q?QQnk38lSTCw36xGf9sQ9GOIFmk/AkRW1IB9i3No2pkSXpGitkAnF3/ZZOSHa?=
 =?us-ascii?Q?w66GEhUXBGqD2TH10jU7vWVbeEvoy0nBS6+in39HNnNQCBX9aYtCPUr+enfA?=
 =?us-ascii?Q?tYjw/uVjYP8YyBj8gVJ/6+x43NaRaYgx59b9bkuRonvY/1rnJ0ICzhxwQuF9?=
 =?us-ascii?Q?tT9s3Vf52GLL+MxORXC2uk+lnzGs9z+uCevGoJ68IexyCzZBbWYy/Uan9vwB?=
 =?us-ascii?Q?bLoib7kq8ZBqEt/acctI6AplnTbaMjXEbMDv0zQJQQ7t8x+OhOBmkjESA3ja?=
 =?us-ascii?Q?el2NFsMRtCNxkROLkZOhExAHXA6NL71PEHSyzNmbn8kiZik95b83RHBDs4qE?=
 =?us-ascii?Q?4VmT3pCQ08scNT1FmKcSseBy/F1qqFAZB/EDTwXqmGW7FlW6xdItitDPqsUn?=
 =?us-ascii?Q?dG0U7mJk9Z5rKV9A8HGaVAL/G7Ue8a2r3DkSUqoGDJxQqCBzExcAsRnjnmms?=
 =?us-ascii?Q?eYpMuOu8mY1BjeLfjE7n3+hBeW2MLvZKioTd1QB/qHr8kIDGXaUtiazrTskJ?=
 =?us-ascii?Q?WUcYycYloUqugPoecu6EPtiVpxOxlANXCyDN/b5cXOViI39gD680w75Zp434?=
 =?us-ascii?Q?QRtNqy6tGZBv6WqS65ksPK2KJhO9Yc26NIyFJk7vKwvWBuLUouLwiTaKgNIp?=
 =?us-ascii?Q?OLed7n866Ed+YeCQ35rA19IAgzW8lsEGP2OgE5Cl7jSlY/ugElKkmZOFdDN5?=
 =?us-ascii?Q?EdKmw2TfVkaD+5AjiBE79hPne3IaX1RQ+zV+whWcxiCmcIgxoZ8XWRfXwILO?=
 =?us-ascii?Q?omKHl7dvcMrP6CJPbhEtQLwFGLAm6FcIpZ0XpFFxbU8Nxi32cu0GhQQ5ZilN?=
 =?us-ascii?Q?0bNUhQiEH9h+u6cvkG9dNilbhpdXgk2GJ3KYe3Opf+XE5A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WixmE+HHCDc0WxwO5wT+HfPNn/qLcTUyESYxuxLupHRws5fIxkm7l9XzOj4K?=
 =?us-ascii?Q?tlZ86rzkhz68JmuxbuDvTCItL8GVDhfbLOyO3Z3Df+/Tiu+4dr2GpdRtuMDj?=
 =?us-ascii?Q?+3mFYJRluJVI5GnMOzP3AsbP9+wLr0+XNJV+hO6ATryoxUbIuCWb+JTX3/PK?=
 =?us-ascii?Q?GIrU7DH6ylD6fNTnmXU2FKoNX3rQWl9+YXSS1h5i54Xc2bNUizty5BOyy6Pe?=
 =?us-ascii?Q?PVCyENynnZ3ZeQmJve1MAziuRTrGBSKVx+0YEGXOKnt0QtSEt3Z5y/C7Rv0n?=
 =?us-ascii?Q?eX+mw/DlPpYIVWjDPLpfGK/ptY0jDaxSXLVFSBuQi4ZHkZP031RmZvDi5P1j?=
 =?us-ascii?Q?y16/vG0ZGhSeYvPUXE3Bs8DgxzmzAWkopEBT+QdfesItk4A2D+pKjEKciRI5?=
 =?us-ascii?Q?AHRDFTS1sX1ydRrUK+CdTdH/YdYKdovXcwBOK6KxcVElVTKBq+G35RzeZCDZ?=
 =?us-ascii?Q?ZFFBGfgWmVLsUnrvnX0dItMay1Dxg7O/jdsJAzOwkwjXx/dB8GWwxrBm5rkz?=
 =?us-ascii?Q?ggChelTvykuhEUQtyVGObo+vB8NBwrj7yY/QefK2/hYb6AvEVwVe4fz5/eDb?=
 =?us-ascii?Q?WoyAu+i2E0dsMrAsyXiOQ90a2tw4wMfN/wYIi0PSqaxRlHO96QnUtn7kkBfs?=
 =?us-ascii?Q?DVODy1GnIQt043scEv7ezVQ5JrN2rBG8+VcjqRS87Yms6TApqEnlO6nrPo7H?=
 =?us-ascii?Q?+tSmggpU/Z5qgAPPDToIMu+ibUjtW10y2R/kUzdYrqfCCPCXpQjYxFfKR2Wq?=
 =?us-ascii?Q?gDofGDIGWOucDH9ywc4VuRf02dcrZlPlCWwtxthv4UxYb+tlqWo9Ks8PsuoK?=
 =?us-ascii?Q?JPpngUYWRQYgGJDY79L+5oE0idpdQJBB1dEDYvIe2oOoDNlc+ibK5oISEcwi?=
 =?us-ascii?Q?FJQI8nTGQGFRmMb0b427xILfIX83o3N6E6f6MMQYX4QAm/3NOEVNxmt8uCIX?=
 =?us-ascii?Q?tTebIE/rOlS7lBSFAZaGTrVOBaUP4jPd5o5knyDTYzlUcfMRzyu1a4rpRoYY?=
 =?us-ascii?Q?Y12NlgbvHFXBJkoBu3kehMFJMM2YP4/favbqhLu5YfrCCDIQWm32xDumlce3?=
 =?us-ascii?Q?rnwyUN52Pkdfkb+Ud+HXp7op5dwXBfwmm5Cj+HzXVCik3NCGtMsEco0FNb4S?=
 =?us-ascii?Q?eFIIbj7hUTbacxeCii+pwjU5MJ6KLZnGyFBX4TebfJUf7PHP2KiNwxcKanOK?=
 =?us-ascii?Q?kX3mEbA6PZ0nCOxy2igMexZQuY0IjmcqUTdDtEIwTlkARGv8hCxVW0NDoMAT?=
 =?us-ascii?Q?vLoCo7BcFiVfzjBh9M8hbJwLocpxWoBPIPtL4wL3HOQd5nYqOwzq9tdm7Foe?=
 =?us-ascii?Q?NxxBqllDBJwnNJCZYmt9eMrERMFVB0ClwOiCHXCL0ehmBdCT7zvAQqun5MhS?=
 =?us-ascii?Q?mxnBvCpaBOIar9U8+EFJP2QbnT7QnVY2gAktSyPFiiqdAsyOrxyaq0c5ctSX?=
 =?us-ascii?Q?2KgsdhuCg+FdqO/qL5ZMgGJKVZlB1Y8Nf2ZIQ3Mp0UK470Ebbt0/4bM562tq?=
 =?us-ascii?Q?hJDL+vuYtDHAxKGnQYmjhhKR8hmxd3M1LMOGzftSfPobjiIIs7QNfBhySOp9?=
 =?us-ascii?Q?N6Lldcj5nJbe5NhmQklN0PWLZRGI2hNXt5JOxcavJ/S3OpLSCpBGNVUYqr8b?=
 =?us-ascii?Q?Rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c312b0c5-7b63-4633-0ca8-08dcd9bbeec8
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2024 21:33:56.9134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GXlg5COvzUeIAV1l39LlTJNzJxbanEidjzSmcWYpNP6QHHDD/QF5nlE3pn1T5hnqSM+rxSYhQH1RwK2pHJ7PyfEMqewf2ZlG1zGMgW5mke8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5942
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

On Tue, Sep 17, 2024 at 10:53:07AM +0530, Suraj Kandpal wrote:
> Add the reason for having SHPD_FILTER_CNT value for DISPLAY13 and

It's a bit of a nitpick (and also applies to the first patch), but we're
not allowed to use terms like "DisplayXX" or "GraphicsYY" as proper
nouns anymore.  It's okay to either use the version as an informal
description like "display version XX" or use the official IP name (e.g.,
"Xe_D," "Xe_LPD," etc.).

Also, it's worth noting that the MTP PCH is only ever used on MTL
platforms, which all have display version 14 (known as "Xe_LPD+"), so
the DISPLAY13 here wasn't accurate even if it were allowed.

Aside from the IP naming in the title and commit message, the comment
change itself matches what I see in the DP spec and is

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> above as 250us instead of 500us.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 05a9e82cac75..5429d93f67fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -1065,6 +1065,10 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
>  	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
>  	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
>  
> +	/*
> +	 * Use 250us here to align with the DP1.4a(Table 3-4) spec as to what the
> +	 * SHPD_FILTER_CNT value should be.
> +	 */
>  	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
>  
>  	mtp_hpd_invert(i915);
> -- 
> 2.43.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
