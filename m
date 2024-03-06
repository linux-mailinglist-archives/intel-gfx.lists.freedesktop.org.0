Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DC4873ED1
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 19:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C70E113414;
	Wed,  6 Mar 2024 18:28:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DDATqAA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7612C113415;
 Wed,  6 Mar 2024 18:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709749686; x=1741285686;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/pZr+amYffhOy8ajvE1RAxpumuj0ZrKIcHFqH0/7Pa0=;
 b=DDATqAA58wJnxWBFkrzlntlJMj8ZTKXkIFoMvK21ML+3mcdAeyrTT6IH
 Ew4UF+1xZeLUbIvgwz492f8Vlzp9+Aj9LqxU4p1rQskoA3+DL2oJ2tDCS
 2FKwd39CxeX2Wqqw+ylnqBBUfRudcV3/rmwgj3s3+2mb+TkGYQb0pj9Mi
 FISUlk4SAAYZ5hdhIGKtgPop2Sp7cerMfcD99X80ijj3f/UrQmUosIgQ2
 Jsjm03lDWXDr+9ecRPRcsrt7XS/sU9E2i0AIh07oMhMQMGpkWqkHhhcis
 QZwdEP8EGZgHRNZZF4No3PL1+1nanaBqVauCdU2FU3XRJoNC8cHjIS69n w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="29828871"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="29828871"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 10:23:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; d="scan'208";a="14494750"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 10:23:21 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 10:23:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 10:23:20 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 10:23:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1chch5YfJoPsj5vEiOR06Jj1ry399crev70FUe8XGZDWvVilYeMcOspUL1EVS/S+yE8iSiPrghatbLXqBEYtVf/giyG28IfSL1MoisOwt7QFzNUi+vqPzr+JyfWPMFaQ2+4wlbM7NffanPNtfOvez7KJfXveCg7/fyfV9ceztAqog4w7dzejKPSTNkwK6U52jjyufCRxaa4uSYja2sEumUuFofcrV8Os77qIW9yrOL6S99H52+LlYE3A9pNut3tf8NmTnbh0tIRNdB4vjYIfDJFXJJJbMYLAcms0yU3iFgdiHZbvYQbq21NBJdyk6kjOPFJm11pEhqqduq2QFE5kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHDbv3+X4NlH4pezPw9+HLt+87ACl6LFVIZbs4UIWN0=;
 b=b/0s0nCXQKevJ280TsI3dF+I/V+j7qXWxaUJYEiKuZJcTtphBw7/K773mzWmLeQe94+Xe2ZDErzFWKepFUpVgLZULP6ZwL0UUZQQAstdQnXalp4y61lGSd8ThbLlelP5lRrSq/UYj/j8H5yo1aHMvLPresCfVyHdFju+AEEHKsPIm0N6ypLjovwkcBQVJu+tswJlHhEwr7TFgnbs67SmGhpk3YeeX2p4SDjCWVgstKWFB3fiFV5NpOHN/MGdJYEuMjFKeVMujmd81lj9deUex2QxvnUFIrZ+EqieRCMNSi7WKMO/prKfeyDLPnR2eUf7yh61gnBIXtgPuOvjWU6NgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB4901.namprd11.prod.outlook.com (2603:10b6:510:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Wed, 6 Mar
 2024 18:23:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 18:23:13 +0000
Date: Wed, 6 Mar 2024 13:23:08 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [RFC v2 0/4] drm/i915: better high level abstraction for display
Message-ID: <Zei0jIFP-IX5x8tR@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1709727127.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0287.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB4901:EE_
X-MS-Office365-Filtering-Correlation-Id: 1182b362-3b37-4b22-7542-08dc3e0a7bda
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tga7wEApTCwt0k8rMwyvqTYbjcPxvZBgM6cEEiJmJygL6M7DOkRhI0BW7gOSZgdhx4/hnHhnyNyLHxc950XpgYubGBRLWpdD07r2Lh2WE9Cm5xBv9CYFXh8wcbhsUnDsrGxE5WY/9X0g4S1/up3oHpeoRzevXsD6jXp3kaLYbsAX+14OOizNgayqQr3srHhXlClRQo2L8dx5LrnYk1RTKoQ0ur6qLMWrXeH2Go23CcVTg8DtWzlVSNThrVryFfnlHD6TKkqorS3UcDQmk+yLHfObpWBGXC7FohzEKFQtK+cVuiX6Pda9vtGsuJHjju97umF4EUYooeHt/EnhKzakz+YW4MLwZe8MaDKEQhdmz16JhCAen4mao/xBOAM8YtCs0wVqoejotAaEPMaCzxjQrUKTrCtT2Zb4uYJJ+kFOuwzDUANBIdOK/71p9e9tOTiNAsvsq00Dt6mku30w7GaUa8atiu4hg+gSLwhoubuHC/b/3f8M1H3bQ0BZ+QYuYG677XjARmMI46nvUc6tC8JTCxil7NJSdD8lO2h3WiMVZFuL3DpwJj2XqY5XuB7vgtMC0tCAhc9EDL2WcaZ/feBMwZQq+YZFhLzZeYDwdpbSLpA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4AdiiFUE0rkfrjikUZ1KWrio9reRpXTYT4hY0dbANmPJDjQMuI0vN8IuC3rK?=
 =?us-ascii?Q?6gi75MS7QaLF07FhPsS/pZ6fdzJ5+2AX0wKASerKBIdA+QkqMFyxcrYeyrg+?=
 =?us-ascii?Q?NCuZSYnbqMdGryOjrtMw/2vV8s3Km2ozIqAuAbSjie0jvDkIPgLE1qbkLtJI?=
 =?us-ascii?Q?4YtEDBuhkR0VRS55byKDQ8t41hxuKlieOKERCc99SbSVu73nbSXPp9Pz2yAU?=
 =?us-ascii?Q?Zrkd2xgMWem0IpO11C96LsEQhsc6IitjyeNBLkE4IJc8egwhlM0U7DP6Ldv5?=
 =?us-ascii?Q?qqzJtTmPYNQ3XZbICjhPS/bxbMdWAP9kB4a9v+au092kn0Qs6WGfIyjNJPxT?=
 =?us-ascii?Q?pwI6O3dvuBL/7TVPb+76zyNgogyMmPpGG/M0DDup38lloFLD+SlPWpJw6sA7?=
 =?us-ascii?Q?z1AHBFuG0J5YnupAGTuhXCmEgiJHLiWDx1hOykKQvGOJwW9w+lj2EELXQCWV?=
 =?us-ascii?Q?k9m2kwmiGqzSxfHYBN6s6FejLpHzHfFsY2Qzs5DOftGkequEQqFL5ZQ3LKHf?=
 =?us-ascii?Q?3e2l4bQgfNw5mDNRyIRHTpOtY6lG/fGbXHU5jZwUEXHbB8ita1IF6WHjQcFf?=
 =?us-ascii?Q?BThUiovzSJaYQtqAcSPiHPElE5PUYf0ZioToHP6KdUvf6DBcAqSEuJcAEI4n?=
 =?us-ascii?Q?vMFcJNTMQAGXZtbqevQ7YGzKQnG85BxBU+pPzrJ4EqYTtm+0TAfGbjEHKMPj?=
 =?us-ascii?Q?E6BEmnJO0qaAmIwsUvJ7c6b2cLEDyMd7oKbBVnxAcHkUgeAfegFSsqllXanN?=
 =?us-ascii?Q?aS2E6VXALko4cQP8AjS1eLBlFpKvThHToM881c11dWJhxlCyqd9faotZHKwi?=
 =?us-ascii?Q?oqf6HxfXt0pAhf+6e4KXewh1elSPraCa/0oKQW92EbOiq93O0CBm5by9JJoy?=
 =?us-ascii?Q?Bmq4Fob8TWArdKFIzkowTXAmP+IjIxMZ+MZxszHbz433j0LcvAzSOXoxIVVM?=
 =?us-ascii?Q?nxlzCCAlhfCf4B+HZxaGO0+XLfAlhx0e9dAF0FZl7JZqMXg1tWl7CH9P6e+g?=
 =?us-ascii?Q?wgUn5jCPnFoJUhiPiM+CSLPu/jqOFZsat7ACwo99KS7pTNucVn4srzMiWa/Y?=
 =?us-ascii?Q?osfjyRdpAYYabSEgNF91odR5Q5j6c03065jcafyeRn11gpXY3reaylPGBdSh?=
 =?us-ascii?Q?yVCTO2dGZr3K7FlwcJ0s48TxlA+PjyQ9LJ7hk9zBJOViGSYARgXMGaVSOsAR?=
 =?us-ascii?Q?FFbNYAp6h9qO1/+lN75J6IcYMYaavQHl5VSpmaUGhAI+9jEl1Sal4tr9fAL3?=
 =?us-ascii?Q?SbS97PiZHIFsUSvgsl4OqfBoXajKqWxqwQlgEGde6DTwLVuvmiZVAULSRbuq?=
 =?us-ascii?Q?5toe4OiK63UlGd4s4wqgDRb9Qu1lx/mSZWSuvtBDt755Y5ynxjBdIc8T5TTr?=
 =?us-ascii?Q?DviZodPhut/Nya9OpR0vlxXUN0sMg44rTZhW02cVZCQ4rUfvu90Urc5FUoXH?=
 =?us-ascii?Q?zZrCHkytDQRcZq3KhRuDpVHe5zDmvdBzUOb8LCW5yas5mb/pCIL1IB2mz9Vs?=
 =?us-ascii?Q?GMSFG5H2zgURf21Oz3kW0sG8pOeDJtpdEUpFv8N0FpTqCTXdni+5YvtZzqC6?=
 =?us-ascii?Q?CvT2YAtNUekMeOl5gYIHiXsHIyeE6GEYUAStUksN+32eHScucuXiRYYmGPCd?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1182b362-3b37-4b22-7542-08dc3e0a7bda
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 18:23:13.0643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xbp+YOE/Hydea0jHPVM/TYSUPKBpJdLZBIzNu+J2D55XNUMa4SKsqfYN7aMV5Hg3S9BpPtfTnfKBbD2h0a2+/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4901
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

On Wed, Mar 06, 2024 at 02:24:34PM +0200, Jani Nikula wrote:
> This is v2 of [1]. Improve the abstractions for display code.
> 
> The main goals are:
> 
> 1) The display code does not access struct drm_i915_private or struct
>    xe_device. It only uses its own struct intel_display instead.
> 
> 2) The i915 and xe driver cores do not access struct intel_display
>    directly. It becomes an opaque pointer to them, stored in struct
>    drm_i915_private and struct xe_device, and passed to display code.
> 
> This will mean a lot of churn, unfortunately. But it will better
> separate the display code from the xe and i915 driver cores, and pave
> the way for a) removing -Ddrm_i915_private=xe_device from xe Makefile,
> and b) stop building the display code twice.
> 
> What's presented here goes a long way, and could get us started. 

I believe this series is a great start towards the separation goal
and I liked the approach.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
for the series.

> But
> there are still opens, such as:
> 
> 1) How to handle platform checks such as IS_TIGERLAKE().

perhaps we can use display_ver and make up random release version
table.
display.verion = 12
display.release = / 0->TIGERLAKE 1->ALDERLAKE, etc...

or just some specific display macros IS_TIGERLAKE_DISPLAY(display)

> 
> 2) How to handle access to non-display members of i915/xe, such as
>    i915->uncore.

Perhaps some driver registration callbacks with the mmio functions?

the worst part here will be
drivers/gpu/drm/i915/display/intel_vblank.c:    __acquires(i915->uncore.lock)
drivers/gpu/drm/i915/display/intel_vblank.c:    spin_lock(&i915->uncore.lock);

and for that perhaps we need some different lock? or a lock pointer along
with the mmio calback on a registration struct?

> 
> There are other similar things, but I believe those are the most
> prevalent, and are the biggest blockers for converting a lot of
> functions over from i915 -> intel_display.
> 
> 
> BR,
> Jani.
> 
> [1] https://lore.kernel.org/r/cover.1695747484.git.jani.nikula@intel.com
> 
> 
> Jani Nikula (4):
>   drm/i915/display: ideas for further separating display code from the
>     rest
>   drm/i915/display: add generic to_intel_display() macro
>   drm/i915/display: accept either i915 or display for feature tests
>   drm/i915/display: test various to_intel_display() scenarios
> 
>  .../gpu/drm/i915/display/intel_display_core.h |  3 ++
>  .../drm/i915/display/intel_display_device.c   | 13 ++++++
>  .../drm/i915/display/intel_display_device.h   | 10 +++-
>  .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
>  drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 +++---
>  drivers/gpu/drm/i915/i915_drv.h               | 11 ++++-
>  drivers/gpu/drm/xe/xe_device_types.h          | 15 +++++-
>  8 files changed, 103 insertions(+), 14 deletions(-)
> 
> -- 
> 2.39.2
> 
