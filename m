Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351092ECC2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 18:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B1B010EB05;
	Thu, 11 Jul 2024 16:32:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3hLr8aL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5922A10EAF0;
 Thu, 11 Jul 2024 16:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720715522; x=1752251522;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8iVr3IMQz+08NvE7N8uKAEN1GIIPI/91gOQyyVtu8AU=;
 b=k3hLr8aLcrQOWJZosbRvG1MA3yzzEFbznZtbu8JKzSA31Miu/mqQjfSO
 3LO4zl+tA6kN2SZQA5e8/N3tWVxqIwSAD3RxkeFykKhFfr4f7k6hYBzq4
 7dUI8EVCPRJ6gjFTcvTCLzEP8j9QlU3UBw+8VjFb3Ei6rgivcBChCfRL2
 zI2zycMDp2MbqDDQiprOVHkkcOdT2rYutRWQ0J8MCsN/Te6+ml9anN7Nn
 z2p7Hx+gyztF/Dn5iAR5AfFOn77LBZK4NRi3RnIp8nFiictycC973OXq1
 l9ewsRwrse4e744HBJFvEVrtnbKjwBZLmA1oL+NjcvuAmVc57Ad1UmkT8 g==;
X-CSE-ConnectionGUID: iZufZ6ivRJS1AMQVwfvECg==
X-CSE-MsgGUID: yvOa3wi6QyebvhI5UNwL8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11130"; a="28718490"
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="28718490"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 09:32:01 -0700
X-CSE-ConnectionGUID: 5qvJYXXzR3OqdqC6lubsPQ==
X-CSE-MsgGUID: F1rrRUeWRtCVbEgwoiWzZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,200,1716274800"; d="scan'208";a="48686414"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 09:32:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 09:32:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 09:32:00 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 09:32:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 09:32:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tw1CxyBnlTCMOt0nqCHVb9UHbTfgd/GAeP5kRGuiKQLkxsf/ZlFFM37D9PSgEdg3bZMFYLXFqbhEIHfrMiXtR/Qv23s/RESJOVFvCPM/n01lmB9JCFc62cxhGdQ51RkMM2GUUftIoufA8vdkuqIsZ0D6IRJVwsjFL4+VRTDjzXMD9VKAqM4EkesOr1O/eO/wHPGMUPk6Kl9nFp8qQp2kvSMiuvj07xLf+xWT2FHXDUcyJs+1LPIN3oik3enBuVlc9DfYy1Sx0WoVqXDmLJs8FmbG7EZitPZYiN8pwrQB+B7w6SjdYOZQHAsti/egFC9LtmIdNI5tGIrcqMKjFcLoJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e5EX2kWeXHrypZKLpIi1YogEyDh7Q8sBRZldjrBmee8=;
 b=Nj9TNzOIfA9MSDdZcovBXZzMVUFX0p8EQjfe8qqrTSUX2tlz5CKfijxLrzA5dxERbm1nEZTMEDkZrzWH7mnsxe62jExpOgLdSI5zQi2ve5l9CVu8/nOsWUjLfpPISkMBzOYO6U5v7MarS4ArMw1YtyeIOU8OCgnqG4j1ESu2rA7YDO3CHk+FkycHsKPW7D1xS0gidLK3AUoDhtLU0YXAalRtBT0zLqZWnzqSa716XG91oXm1xHxhf1epS0h4uqldTqvTw9MIe4mTqmeekEDJ4CseFjTrALSXwqgW1abj4d2+Xcy82u2VouFeMmppEKlVvTpNyCdh3Ej1MxTqbmdPTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB8124.namprd11.prod.outlook.com (2603:10b6:510:237::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.27; Thu, 11 Jul
 2024 16:31:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.7762.020; Thu, 11 Jul 2024
 16:31:57 +0000
Date: Thu, 11 Jul 2024 11:31:54 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <daniele.ceraolospurio@intel.com>,
 <vinay.belgaumkar@intel.com>
Subject: Re: [PATCH] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <phpidsyio6aub43cbfdcll44k7rrh73chqsuktraenzx6575af@645b423aaz6q>
References: <20240711051339.3289552-1-uma.shankar@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240711051339.3289552-1-uma.shankar@intel.com>
X-ClientProxiedBy: MW4PR03CA0175.namprd03.prod.outlook.com
 (2603:10b6:303:8d::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB8124:EE_
X-MS-Office365-Filtering-Correlation-Id: c21a2acb-41ba-483d-ae90-08dca1c6fb75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Rg69Z3+h779e3SAV555xhCoJIlH7c3rcxOl2uMvH4gJRQW96kzAa2CAhwIaC?=
 =?us-ascii?Q?tL+0LFSIxKL3is9ERrbYbsLxN2qOJ6w58pyYq6V4TYp+IKnlUHYarFzUxDlJ?=
 =?us-ascii?Q?QP0okSxwhWCLwvJDw7T4o+ezvSE56WwEbcL4fX2C6MVf9iymYKyIR+1CnJnG?=
 =?us-ascii?Q?sBwi1/6YVWJJwBUDa/YXDQsQpLCMkqI7ZL9B0GURjgJ7waCkiBe4nqaalBDI?=
 =?us-ascii?Q?moEzx7ZQ6JeP/WocMHJBfBULQ/2N7wMLSi/ovmP1Bd7cM0L54qCg7sBFOSA1?=
 =?us-ascii?Q?jLCCCL1WkjLdAWqWPaGfFAVRsqUAdrtpUReVhIJjHcQEMuhGc/rHeayfdzpi?=
 =?us-ascii?Q?p6p+OJKiJKbyycXs08JFoyw8fldiHV6R0qV6rEMa81QHz/h/r/rrxwqiZmah?=
 =?us-ascii?Q?RtMjlA/fLo3OxDIFQeNs7pEInANMe3kcpu2OQWUV5rlDJKrkI3q224VcPfdn?=
 =?us-ascii?Q?4qUBIGtD/3y6drGJTtdwLBGg7iPRvDm/rfYwutWmYmK8V1X3VN1ZNfG2qyeu?=
 =?us-ascii?Q?bPYHa5SIO76GXRbHq8nYpGuDdQ3goq+5bD0n/FnzHEcNTOc1t63xqYBF/dzJ?=
 =?us-ascii?Q?DizuYVfyM5X8yft7HHH3xxu1i54RiitjjFSkfOVlGywIPLj8fT0oMVAxS9Nm?=
 =?us-ascii?Q?aDfJu1vhkVVPdu98wjfmmH8NPvsFsts+OhH356OD1Ludz6quYfMahXgCS0O+?=
 =?us-ascii?Q?fMoJVu82ugHLCR2NArzIgG27iSTP3KtWEYpa4T/XhFRzjSLXs/CLebuo2nXm?=
 =?us-ascii?Q?vlXas/WsdDCuS4NdzaZ5RIi/0MyLNmsRJMIHO+tR9AyYGwCmhVDO4otNvYuP?=
 =?us-ascii?Q?BOR1Te43m5TldC2m2T3sNvKlE7l1V355LeLmiCEXyCCVM0Ajnyp0xLF9H8kN?=
 =?us-ascii?Q?Zqjgv/PEgvRR8CA0wo5lH0DGFgQGFvacxzVuWF+QtEwUSGE7KK24WmEJPF/t?=
 =?us-ascii?Q?BXmPAoNxklBWwd2ra+uhI0ZWSy59EMZpIS8jwikCo4/xaaq8B9MvEak7NVY4?=
 =?us-ascii?Q?3FzOxVbjYWKcNRDvoTRHuWoUPfVowlEmHjjpKvdfv/0mkQNsnXAjlJ1kjyya?=
 =?us-ascii?Q?Zu6AopxXCBa/rCDyqg+qkdIjMg1DggN+YsBuqiIk26HoIfUDS0rONA1Y97fq?=
 =?us-ascii?Q?v2GG/gzu5y5n1YFbIfTZ28CvK+z9m07HODtUuuxjVtSAC/BAuGYUXqJ7msAi?=
 =?us-ascii?Q?7iv6Iqe3ZJzAilQS4BCfJPp3VCg2pj6y8FgLmj4NtgpzyV6pWRpPqjcH62m7?=
 =?us-ascii?Q?kUgH41HLTDgrNlj9sGrGP9AP54VdsHDZrSkO1Pw7HGAlnJzx205JyCZRRI0t?=
 =?us-ascii?Q?New3HuOOOaCYhrULYi+aNgLYoQVFAh0OKQ88Ei/uF/G+LQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1wm+EdFHnoeOcSidCx2s4vAONmgYM9w3+/3IRc63mcyOC8gw5ocFMOmtLdi1?=
 =?us-ascii?Q?Mnkxlous/rWBC5oBLRuZEjEQ2+XWsUcJAWewrAk9G7Oz5wlSUS27jdBBtGOz?=
 =?us-ascii?Q?kg9UivmpAd0z1MFuNbycUJsP/iqq3MmpR/z5d4mFirH276tX8ydPHm+vCl/3?=
 =?us-ascii?Q?PNaluaZMJgeY7GlzPUFnxkCO2+4B9uisyR5159vb8v141O7OwvQM3YAqydpb?=
 =?us-ascii?Q?xCVbHOMK24NUh+7dCwO5bJ/i9IWkfmewvBEjk7SAzIWQIM/RBELZ0skBuqJa?=
 =?us-ascii?Q?B0AD1EdmJQOB9HVYyVoPsLtLZgQIVmytTXSa22v/Rg/TNG+SYNLrcxMm43DG?=
 =?us-ascii?Q?ixKVZqSeTZROBtMQuepJsv6NNxwo+suBKoRDGe0PCsp3Lk7V0txtKOBP+Byl?=
 =?us-ascii?Q?AHUYEO5K/F48qV6CQuySQUt9GoN7grZa9EZduO1jDrGptPccb9Pe/lDQ7FUa?=
 =?us-ascii?Q?+BcdT0//iN0H1QMnbDqjg1BqlWw9QTzPnTOQd4sLIqsYXBMRkFtmqJ/H8H+6?=
 =?us-ascii?Q?4iVpBSeUsDbmoXgYhgWFHvvrLx+lOSkEAVmo1L7WCXyD9gAaKCdsImVeVZsR?=
 =?us-ascii?Q?hhFIgUUjW/ov7C+SmwR60n3+oPbsEFJXb/j4GLwVUmjUkAyUZDTYCOS7zRYZ?=
 =?us-ascii?Q?dFEfAuelHvUoPrq1oKGoGKHQqMSqYffuDTE9du0mIwZEmBYmy4cHyfiuqmd2?=
 =?us-ascii?Q?pQ0Vjnu+KRiQHoTem2OJROd+tNzFRzLPeXpud1DDcO2kMitT1W2nwPk+b05a?=
 =?us-ascii?Q?Vz+WksCuBTGXIxAqltuUfvHpdTtCG5nqOBaQMQ3Yi5iTAZKQnmmIO2ohUt1q?=
 =?us-ascii?Q?p6HB7ylQOiTiFMwuCLwyhXLWIQZBXI5w2L8QbCyIozW4oFXcwALcRjuYfyvv?=
 =?us-ascii?Q?2l+gGwoR4oELr7UBiV/YovoU/ExNbR46ejSEN/BXX5qd4pmEJQudED0LsiYk?=
 =?us-ascii?Q?HJ2c/3aq836K9ZH9bzBinzXMR+jqLMGbn/+RfhXcd/okAkWPG6fvLH2CvHmC?=
 =?us-ascii?Q?5WatErNVFNh0W2mdMBjYvSarUAYI1uyCoZVbfJLZpg5hLs8bwR7sioG1ey/A?=
 =?us-ascii?Q?a8ssJRhAiUhVrISbFYD8xMz+mokC/BvATKVefwWxDYUzoB1l8PacGHrCNx7m?=
 =?us-ascii?Q?a7/HOPXqUEg/lGZ74a+li55dwf6wh53X43Ul+U8DHEBeNQ3/2yClvO/J3+4m?=
 =?us-ascii?Q?E+kfMZu8uwa0Y3UN+QhhbFPGgv6/Dt9KSQgYIcQ9obOrXcJMPaH4Povn0GjU?=
 =?us-ascii?Q?UVm48WgFEcSbUIRd+ISX4H8aGP5HKlPaqACFPIYoPvPEfD8fdJQjTflCSWoJ?=
 =?us-ascii?Q?YKU4YYDZT4e9fTWystBwvM7icvcbEIYqVZFi3kL8aqkF5gb5UTqMB48oAMRM?=
 =?us-ascii?Q?kvw2EbiHmz1fwh+dzibmwrgsd1JnhAvGAbERPAN5q8bYg+kNWJ4SCI6olRJH?=
 =?us-ascii?Q?2EsxdI29104WF0cQ8zy0/KK67SQNf0SFHWlZWZmenq+SGwmgPu+uQk9brEF5?=
 =?us-ascii?Q?SK8Jw3pG0ZbaXYAS8AK2LZb0JcZ8q/nraT+wIYZT09eZ/p3g03ZHiofuPl2D?=
 =?us-ascii?Q?gU3c0lcT/IBl234oJcijqjfLJvrV8hRUdP/Unts51tOemmH2rAmy/B1Q6uEH?=
 =?us-ascii?Q?2A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c21a2acb-41ba-483d-ae90-08dca1c6fb75
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 16:31:57.6396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hCFVF/S5k46YObKg/BVVsq32CZwdrHFSIMw4qG7cAshAEpkba5aypZhoddwDc/4keO7zZZKKmhntAbLv5rn/Bln4u6JxVzyKVqxpL3CH44c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8124
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

On Thu, Jul 11, 2024 at 10:43:39AM GMT, Uma Shankar wrote:
>As per recommendation in the workarounds:
>WA_14021987551, Wa_16023588340:
>
>There is an issue with accessing Stolen memory pages due a
>hardware limitation. Limit the usage of stolen memory for
>fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
>assign the same from system memory.
>
>Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>---
> drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> drivers/gpu/drm/xe/display/xe_plane_initial.c | 10 ++++++++++
> 2 files changed, 19 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>index 816ad13821a8..8fda8745ce0a 100644
>--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>@@ -37,7 +37,14 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 	size = PAGE_ALIGN(size);
> 	obj = ERR_PTR(-ENODEV);
>
>-	if (!IS_DGFX(xe)) {
>+	/*
>+	 * WA_14021987551, Wa_16023588340:

not the proper way to handle WAs in xe. Please use XE_WA()


>+	 * There is an issue with accessing Stolen memory pages
>+	 * due a hardware limitation. Limit the usage of stolen
>+	 * memory for fbdev for LNL+. Don't use BIOS FB from
>+	 * stolen on LNL+ and assign the same from system memory

I wonder if we can't simply set to 0 the available stolen space after the
places that really need it already had their allocation done.

>+	 */
>+	if (!IS_DGFX(xe) && (DISPLAY_VER(xe) < 20)) {

extra parenthesis not needed and I think the rule to be added in
xe_wa_oob.rules would be about GRAPHICS_VERSION(2004) or
PLATFORM(LUNARLAKE) to avoid this propagating to future platforms.

> 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe),
> 					   NULL, size,
> 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>@@ -48,6 +55,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 		else
> 			drm_info(&xe->drm, "Allocated fbdev into stolen failed: %li\n", PTR_ERR(obj));
> 	}
>+
> 	if (IS_ERR(obj)) {
> 		obj = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, size,
> 					   ttm_bo_type_kernel, XE_BO_FLAG_SCANOUT |
>diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>index 5eccd6abb3ef..80dd6b64c921 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -104,6 +104,16 @@ initial_plane_bo(struct xe_device *xe,
> 		phys_base = base;
> 		flags |= XE_BO_FLAG_STOLEN;
>
>+		/*
>+		 * WA_14021987551, Wa_16023588340:
>+		 * There is an issue with accessing Stolen memory pages
>+		 * due a hardware limitation. Limit the usage of stolen
>+		 * memory for fbdev for LNL+. Don't use BIOS FB from
>+		 * stolen on LNL+ and assign the same from system memory
>+		 */
>+		if (DISPLAY_VER(xe) >= 20)
>+			return NULL;

same as above

Lucas De Marchi

>+
> 		/*
> 		 * If the FB is too big, just don't use it since fbdev is not very
> 		 * important and we should probably use that space with FBC or other
>-- 
>2.42.0
>
