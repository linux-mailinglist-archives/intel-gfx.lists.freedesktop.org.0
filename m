Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FCD932BC6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jul 2024 17:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C7F10E79F;
	Tue, 16 Jul 2024 15:48:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dohmxUuN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9918910E79F;
 Tue, 16 Jul 2024 15:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721144923; x=1752680923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L0w31gEQGJkUIbvykJH6N0U0lR0eeUPkhRVwHarxjGA=;
 b=dohmxUuNiYu+I4uyY4UNKVd90TM7Kq4UU9u3D0MiCKaijOLKQ/j820c5
 Ua3eWRARPtXnCSwnrUnmlJWxGcLJaKv0LZLvApoHTfUFYGAeXYn5Iguau
 wmlOYX+ik7FQb2HcsZPANU0OWue2QKgbbfKh453dGTP7JlXeogvm+OS4L
 UD2y6Q2BZ0svOtpsKPsIV4lExGsvlmqdR0UvC/sRwB+KmZ/oRwBy4QSfR
 c5m1Mg5JoXfmFlcn8wxBkvgaPBsYS5bhdt4db6/gPmCuPUDLDXnjR3aCq
 9a8/2iAc+76LggLsti/W/7ji1f88f95uMK80w1Y80tFKQfcCH1ItC1xNE Q==;
X-CSE-ConnectionGUID: O7pDNK7MQlyCep+STDcS4Q==
X-CSE-MsgGUID: Waz3EMelS66B0x6Hcp9i7g==
X-IronPort-AV: E=McAfee;i="6700,10204,11135"; a="18297685"
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="18297685"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2024 08:48:42 -0700
X-CSE-ConnectionGUID: xD+6p97MR0KKh/W23khPWg==
X-CSE-MsgGUID: xeIRaprxQCONeroL1Mot9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,211,1716274800"; d="scan'208";a="50137156"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jul 2024 08:48:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 16 Jul 2024 08:48:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 16 Jul 2024 08:48:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 16 Jul 2024 08:48:41 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 16 Jul 2024 08:48:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TdJ/C+BjNInzKCreyL8YAw8xXea/xuyQyFBGYrlUEYgLc+zjocTz0wCNOF23dqrBB+x4/pkleq687YCFVah4vsyXmOOJzPtFnPFFa9zlM6CIFm+Y409J4G9Nx1LdtXXfa+MiuKuT3A2fNXQOoRxAzLhfo81vT9pjnIvSVRB3asjc84ZfgPV4q2dqYqkDMwSnCj0tUkMNwJUrgB7Wez7x6Yv3UgvhiirC4MrECp5DcQ9cs85dmUay11Xdhm5s+eObea7mc6flzP0gI8GWlD1OFRlmo9FawFlDGuOOMBbOcDO+0T9/XCwuhdhPE2wNFR2gg1WxbhOHk3XFWg3ApBhGSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p6z06tQo1BXm0omdUU8pw8OpoMTK6FvxWsnPWZYVNTE=;
 b=iwDHwaUv5C4P5G/lbDGGpNUUTSwXf2ZJUUNP4kEHlVOZv5EE6aNxt1dbYlWvSs54E1p8XC7PpQKHVctrcJfr2rggZomHqnxIsIvXmj205yCtsaMXZEEBpp5WCKb6h6OeDdkkdNHeel8DspBW0EXyfMkIYkov4vT3zO2+AawwaJlFYJEUAbUx3hdv/T3DSjy3fYvz8GkY2rYcRp9edbQ64JizeEc+9jrVtOdUH4Nu3c8sM0MDrZyxLF8kXHTLK8HzN9vKLhGJJee0wGliHWj6tjGX9xlxg9MTK7sJBgEuIu7vMYCUkv8X9eDNp03uxFSswKKTI45VGRP3ck843R0hMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH0PR11MB5268.namprd11.prod.outlook.com (2603:10b6:610:e3::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.14; Tue, 16 Jul
 2024 15:48:39 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.7784.013; Tue, 16 Jul 2024
 15:48:39 +0000
Date: Tue, 16 Jul 2024 10:48:35 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <daniele.ceraolospurio@intel.com>,
 <vinay.belgaumkar@intel.com>, <matthew.d.roper@intel.com>
Subject: Re: [v3] drm/xe/fbdev: Limit the usage of stolen for LNL+
Message-ID: <soruwn44kfcmiwwqn7scn4iexhmz22dnzc6slckeu2mkwxfnso@3hmv663dixvt>
References: <20240715190043.3775819-1-uma.shankar@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240715190043.3775819-1-uma.shankar@intel.com>
X-ClientProxiedBy: MW4PR03CA0329.namprd03.prod.outlook.com
 (2603:10b6:303:dd::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH0PR11MB5268:EE_
X-MS-Office365-Filtering-Correlation-Id: 36848d20-f4da-4304-058c-08dca5aec2d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2RcKIwL3+e1rYkV9U1sgg4B5a7Qgf4cEpSmFwGxJChaE6UBNWlsXxECKq1l4?=
 =?us-ascii?Q?x3MRoW16SUKqUF8Zl7io0ZFqGxDFXXU4uTfvJWHg4JlGUvJRpFgWw+T5jG45?=
 =?us-ascii?Q?OHeMTGtkhKI+It4x+LLrrWi+gFVTQJD3WHUQdHJ43JLsAt3QSof3JJEARhsF?=
 =?us-ascii?Q?oujzHKuKDx7pk5Z4dfdFWts4hx2dsIdmOVk9U7ABIVnbiOzznKcuIgJSrxAy?=
 =?us-ascii?Q?dJB1cKPJ7Te3DNUvcjGJUu5WnSGqjzoStbbvLN3Cr+Ay9cTYrIJg8S0Flo4w?=
 =?us-ascii?Q?dQUG7nsIpWYXEauryV4g+LqyCvBFdgKQEhHNkc6PaVAZNTpj97F2CbytvBGW?=
 =?us-ascii?Q?1DUNzAeLBkffoZMk3slAKs8cRFdO51fOJbneV4FIosp0xkpyTAqH5fg1IM8W?=
 =?us-ascii?Q?zSjF+sCqVQxCntiIc8TaSmFSBMVqhC76QvHMTWs3dqUVguFBq6jLbW/tYu/t?=
 =?us-ascii?Q?lkU6kHCChCFKTaHL2pJn0vS4W32nOo+1q+0iWqSD7eMrIyHMD50kv47AX+kC?=
 =?us-ascii?Q?XDVWWtZwsnHUzF2Q9MNaaQqGyTXifirn3V6W5wCQe2imT6YBo7ZWewU5FDC7?=
 =?us-ascii?Q?u0xYZVkESEeUXpYiEBz7GAaTGdxEu72BkaP5r9ZLttr/CXVe1u+QsfMUQDGl?=
 =?us-ascii?Q?FNJVPL3QcEwl8stDmCj1gN8xVzHn9F8c/hzDdDELiXh/QWvM6Yk3TU+JGoRL?=
 =?us-ascii?Q?u0S5LYJ34r6xNU6a0I9ipPF2pRWkwEmir/TBo/0sfbu7RFWesYlFNkzyVyNc?=
 =?us-ascii?Q?/tgG/30a0IgBjbWVV+yvX2w5VQ87ADcoMGNlTqiK+w7dUcokcFZTzf3A9f0d?=
 =?us-ascii?Q?FFnOth/3YPD1wPs4/TWMQdnzb/Eq1yjcmwrvCK2KZ7hJmaXxF4JuobfttMut?=
 =?us-ascii?Q?1pnxueweruoPC7Dt2JEoex5gzyV3aSHlhRAXRdWpnz/sAxG4gJ2dcPYgHkko?=
 =?us-ascii?Q?4kPsU7Ak/Rqmnq7ny32hoy+TZ+JhBXjY5+Ks0rVtd+Z0Ibk9jDwNR2dnynn/?=
 =?us-ascii?Q?Y6iL/k4YiIoy1wu7k5/MR8SqtfrdaLhboDvVh/sQNOm0fx6CWNb8zSxcv1P5?=
 =?us-ascii?Q?+abil47+45onwcZCKAajjbg3afXqxop3pK+SqXzqMYMzF2jJwKJXlcwN3Rkw?=
 =?us-ascii?Q?NScF2p5vLE52IRkF3vDuOVrY6YgyZnsf/KU8eNFeIjPaJ+j0RsrkcXHw64MJ?=
 =?us-ascii?Q?/vMmg7tU9OebxdF7QF0in0AhcMZpFC66eZc6+V+rL3jZ52EW+omH8NtSX9DV?=
 =?us-ascii?Q?0vYCN7UIm8Fc0TawzYN7VXmQjAZQn2Xd7eM1+PRlkIUDJ6CiaqWwVCrSSrkm?=
 =?us-ascii?Q?0bvYYb0xsiPND9Kbrjzq4iPung+JLT+cVi2OxsfzFCjTSA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/6M3GPh5wAjC/zDuIi2U9D/yPc5/208jGSdwwqECY8VKiKnd0daEW7Vos7vb?=
 =?us-ascii?Q?W9BnZhiaEORelpEn9u9oRy4BYVO+Cj9kfFWvz+nxpM1qUhM0wWpHOapq0Lol?=
 =?us-ascii?Q?Nf8tsYpImaycYTVlJf1NstyURWngB8AuuSBKcdZgKZYg8tsrTb+TNypZeRlo?=
 =?us-ascii?Q?z9s2ws1uU4HOXzPlcg3btMNqI/FIZwfuNz6UE0j+xsVcmmNlBElmS2BBw6HW?=
 =?us-ascii?Q?u/B7q3qJz5QlAzRhRcBzsPHeCAxEHIm9OJJn/FF2UKIWC3UrVwUsfS4+pRg/?=
 =?us-ascii?Q?KjNGTEthySn6dncFA/EuxKjKvoSW7BKBoSjGWkpGXtgfPEtEaCIpogdmGj0R?=
 =?us-ascii?Q?E/zJb0YJmNbBdH13K5mBX2rLuEqw27DBFWr8xv80hsrv+a6JpwOiPDUpavZu?=
 =?us-ascii?Q?gl4/3tIqS5g+/z925m5FV1/YOSvtTsPbiyjoy9nQWgkQh7C72ke++ZKU6Eaw?=
 =?us-ascii?Q?chWXB/1peSNAbLMcZjMZR/mPfYdTDaQkoeKBEti4w1EvsqiFXbzVqaJUt1bl?=
 =?us-ascii?Q?WOiSgoiwCfwIMqdO+IB1pq0JS0pHHaxuXlBwoGPz1e5RGKNd7g/l5ioKH05B?=
 =?us-ascii?Q?AnPE+wA8PyrYMt9d4sA3BPq9kbYzi2c9AtkOumqZfAcGBFjIL+imshGjJzqj?=
 =?us-ascii?Q?kdB0QrarfefwrIlsaYOSbnC/T8X9cB1g8qk2K955J6rC9mI9CHYI7SUo+QnN?=
 =?us-ascii?Q?SfHzuZLZD/E8hD//zV9/DfH0Ng3GpfzGGwoeHQsznrp9DglmT8KOUSkvHBmD?=
 =?us-ascii?Q?CcMO6JCuN3bQfEWZNFwvzn8vXvoX26ddoX/aWOWcSJLJL5Pz4xNsRHMjyhRN?=
 =?us-ascii?Q?Qh/xu6PMrFQDGIJ2zMbkBWh5pJKh3BWhrz48VCQb93dhQLtDfvoPND++mCTd?=
 =?us-ascii?Q?4b7Yta1DicrvCCuXHMbydWTHx90/xOOJvU4974Eb6dc6elzuVUXl8ZKFydhf?=
 =?us-ascii?Q?hS6a76o0MFD7s2X9QgYjoR0FcNXv7/KQadMIS0s48z6ajqMKM/su5sVRvj62?=
 =?us-ascii?Q?UUHA62q7tftyCUeyfUIXGQd2fmyNLlyeU20fQXp7TKGVApjhBi+BXZSwhAxM?=
 =?us-ascii?Q?RYMSoYxqMGiXbkjme5uS6Y8sNGniWtYjQmQVhu9fcrlspu1noQJd3wFkCOf1?=
 =?us-ascii?Q?CHlYk62qu3D51z6JCItFWSjxPxs88G4NzNaJQCCii+VbCWlUVChoWyjpf3Zp?=
 =?us-ascii?Q?VUSpi7a3Kfa0FWrI1s2TQ/SjiW+mvOfWEzlS8eSgRdNDsXfXYW+6MQJ7YIpe?=
 =?us-ascii?Q?oXHlrYviiodfBcLVdcRp7cXwJ5vyo+Qr8BAwQ3qKwKsFiMkcv1ib0g1MKw3l?=
 =?us-ascii?Q?+0ENA8WC78huoQaWGd7zOMQG3NPPmdRWN8r8RIsvmKzzM+4rAkjCB/+uHZH4?=
 =?us-ascii?Q?xo+6QE+cPERO8L6YuGBpjNOEHDkQIVLAH/e29kTK/C7N+eRdpuH2shuh9Rnx?=
 =?us-ascii?Q?euY+7Qc3WIu3Ovx4MQ92n7cEV2aQwcTkGsKDgMBIWbf9D22fa/ZzIRTL6WiO?=
 =?us-ascii?Q?+B23zjyyhPaUi+0zJh1ZH0lXyx/qWgCuhkxlSgHxiLHF2LBA7dnOYyqEMqW2?=
 =?us-ascii?Q?6mrdRsW1q82TRctQbIhlq3rHwEuwBJ5LEddq2STGAc6GH+d0ojm/vhYI0QUL?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36848d20-f4da-4304-058c-08dca5aec2d8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2024 15:48:39.3256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QA49CK0Zg0E2jRukSzzI1qCJkoq7kt4za8SmgUFy3CsCO8cv/UuB5SzvF5nbBg/4UpPlvOUs9DkAK0fuipVdyJgirnQ9tb6tBhq+dqIUkWM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5268
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

On Tue, Jul 16, 2024 at 12:30:43AM GMT, Uma Shankar wrote:
>As per recommendation in the workarounds:
>WA_22019338487
>
>There is an issue with accessing Stolen memory pages due a
>hardware limitation. Limit the usage of stolen memory for
>fbdev for LNL+. Don't use BIOS FB from stolen on LNL+ and
>assign the same from system memory.
>
>v2: Corrected the WA Number, limited WA to LNL and
>    Adopted XE_WA framework as suggested by Lucas and Matt.
>
>v3: Introduced the waxxx_display to avoid tipping on other WA.

it's actually the same WA, just a different part of it

a few nits below, otherwise this is

// Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

>    Used xe_root_mmio_gt and avoid the for loop.
>    (Suggested by Lucas)
>
>Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>---
> drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 10 +++++++++-
> drivers/gpu/drm/xe/display/xe_plane_initial.c |  6 ++++++
> drivers/gpu/drm/xe/xe_wa_oob.rules            |  1 +
> 3 files changed, 16 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>index 816ad13821a8..0f02e6222ada 100644
>--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
>@@ -10,6 +10,9 @@
> #include "xe_bo.h"
> #include "xe_gt.h"
> #include "xe_ttm_stolen_mgr.h"
>+#include "xe_wa.h"
>+
>+#include <generated/xe_wa_oob.h>
>
> struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 					       struct drm_fb_helper_surface_size *sizes)
>@@ -20,6 +23,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 	struct drm_mode_fb_cmd2 mode_cmd = {};
> 	struct drm_i915_gem_object *obj;
> 	int size;
>+	bool wa_22019338487 = false;

no need for the bool, just use XE_WA() in the one place needed.

>
> 	/* we don't do packed 24bpp */
> 	if (sizes->surface_bpp == 24)
>@@ -37,7 +41,10 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
> 	size = PAGE_ALIGN(size);
> 	obj = ERR_PTR(-ENODEV);
>
>-	if (!IS_DGFX(xe)) {
>+	if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
>+		wa_22019338487 = true;
>+
>+	if (!IS_DGFX(xe) && !wa_22019338487) {
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
>index 5eccd6abb3ef..a50ab9eae40a 100644
>--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>@@ -18,6 +18,9 @@
> #include "intel_frontbuffer.h"
> #include "intel_plane_initial.h"
> #include "xe_bo.h"
>+#include "xe_wa.h"
>+
>+#include <generated/xe_wa_oob.h>
>
> static bool
> intel_reuse_initial_plane_obj(struct intel_crtc *this,
>@@ -104,6 +107,9 @@ initial_plane_bo(struct xe_device *xe,
> 		phys_base = base;
> 		flags |= XE_BO_FLAG_STOLEN;
>
>+		if (XE_WA(xe_root_mmio_gt(xe), 22019338487_display))
>+			return NULL;
>+
> 		/*
> 		 * If the FB is too big, just don't use it since fbdev is not very
> 		 * important and we should probably use that space with FBC or other
>diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
>index 08f7336881e3..6ec23c4b972e 100644
>--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
>+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
>@@ -30,3 +30,4 @@
> 22019338487	MEDIA_VERSION(2000)
> 		GRAPHICS_VERSION(2001)

better to put the line here as it's actually the same WA, just a
different part of it. It's easier if we group them close together.

Daniele, can you check the gsc patch now works with this addition to the
WA?

thanks
Lucas De Marchi

> 16023588340	GRAPHICS_VERSION(2001)
>+22019338487_display	PLATFORM(LUNARLAKE)
>-- 
>2.42.0
>
