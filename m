Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD278766E0
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E96271138EA;
	Fri,  8 Mar 2024 14:58:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IP/IU1zw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB9C1138EA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709909891; x=1741445891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Jsf7pCVPDE4WhIEZiwpk5SeQsQK3XiGAlPO2ODA/rgE=;
 b=IP/IU1zwx3oSBwqat19W719fO60NYdyU5qMZEPogAZF+A95iGBHjCWLd
 x3CjyqOYfZGJWQVHnXKDbJegDy+MRT1B/kjYEUZPWZ2O9tmKs5MU6jxqA
 TCDhkebQPaZALVJgEEmZM4EVL7vpRUp3oUIoCWbKf0QWUxGfm0H9uf32F
 b8wcLBSMvBhx5UX1UamlZnYBLwUl6pwLf3g1UG54H6sLIrpde68PCgN9+
 Hxqchfv8advH/crkYwld+uleh3FVix9631zKePpdWb5t3XYInuyn0pzR0
 glI3jdJZHBIBZwouZVcyCGHfq1888IB3rPTxZegBf6O/QApw10cDJccmH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4797566"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4797566"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:58:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10370270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 06:58:10 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 06:58:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 06:58:10 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 06:58:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mv5tu4H+gM1ZScmyRmZPXq+jfvOuGJvnoxdBuB4QXbuNTwibdfW0utazHLXHmgaGpoGzexPqYVQ1n3mvecz/szc2bvnOINemakINLJ+VffgLyO+6QCBq/i92zAiNDcluOcu3Wc3oC7k2GgSnzjYgNUi3ZZCsLVOARKdwQyUFAovIqhBuXn4tVgQvID/M+yHVm4c5EUGWDdSEw1nr7vxaCuc9W4YsEDjw007zKchea+hCgTs9Ez76ZRj8rHZsWc2wyLjb1Dwglf5LUB5tLNHzh28xExTOXrit5LrM9pk4hflAoj3IUvYS+EyAWafiWRpeiF89SC0urOmp5FzzPeATQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+IIWabINFi5B/wBmMn4c2MU8gWZyTKzX/LcVPokav44=;
 b=UA+Gd9DUlvCok3g6u/tTOHY3ZHpDJn6AxYy9Kr0iB0fY4qj95o/nQ+XHB2larONBJz6sm/QAy5tXTMEFvojLs7xWrNniCxT9NL02ZdYTEpzEJ5tSjawmKjcTjQxhxL+utAyTbOGp5e44k1VozVRKzpcvRRHa6nH/jbcTsriPyPjFfW/OOO2pE196uDXf39TqXqXNupq+iiSdirA4oqPPNzUwmqtOFT6nRrk6ePN/k54lwMqHMlbP+W305uOmW8nQJ1tDyJteyn9UKSQcI//UNjZtYbo2g2Ey7OYxBeJ0uxZAT3jOaoplB3c7wYEgIonrcT4dX0A3wq0MJdBFLwb1iA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5246.namprd11.prod.outlook.com (2603:10b6:5:389::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Fri, 8 Mar
 2024 14:58:08 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Fri, 8 Mar 2024
 14:58:08 +0000
Date: Fri, 8 Mar 2024 09:58:04 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH] drm/i915: Add includes for BUG_ON/BUILD_BUG_ON in
 i915_memcpy.c
Message-ID: <ZesnfFTu3GLJVIrj@intel.com>
References: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240308144643.137831-1-joonas.lahtinen@linux.intel.com>
X-ClientProxiedBy: BYAPR11CA0088.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5246:EE_
X-MS-Office365-Filtering-Correlation-Id: f9e82b44-787b-4db3-8eaa-08dc3f802a9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y3/XJ5Fp4+jqm4yEld4531GGHI4XC3iXjJATZfY7Jt5dP7/9fA/R8R5YSaYuBC1J1+hEdlpDK+Zmm7uiaG5GIIBNqTpmNKdzMbE4VuencwYhHdq4fVDsSQasqQE2A6euLypOTy3EsArhd9VTP4beCdWagq9L3IaB/OK2AmcVreAIOFgoDlUYJagk0RdkLBAAoF4hxpmQdA1XWf2ZhAsDErGHTkdo3MlnpBr2HiAXdJB6ysUDy4v80NKqnQPcQwkr7doJLTnSD7x/IZZOOHqaYbfSTtNzMTpRBakVIbiBJga6DiT8mJtmZuZehB6RQBzUVEJ4GGfaIO5cZpkBvgunqxLuRQk8DB9/2ZZggU1+keDmU6brZBX1AAPfxfsvkv8LLLFAyTkweJezlBs4HtvhLq2CACAS9pRKQgnCkCg5UyHgRlBJiC3TMU5c6ber2TaJp8ZDfkm94+E+fuFbUy29cttFJB22AlzN076KpI/no+E2a76eO+En3UYlemU7Bjt0KL+BQivnVyFEClizmUZh8z8pc+25r9+s9KpFuSR/uI/lMX44Bg93EnpmZqUbO85cWGPinjL3UoyFjC/fppRahI9Vt8RE9bHsMoXfZw1VuU+7WeokonUaPK8EVFFK4eYSlD4Qa1gUAyyJMuQWbQ537OtEOQdE8xsgLsNeMKNbqTM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bgi+pqRfA32NrmG+naL37JPDvS5CgeS0qWrfe54Uqy8WeKn7bweFdkxr3DZD?=
 =?us-ascii?Q?wV2V4JWielMu0GTWBgugU2tQp+rHHayxQiI6yf/3P1h+q5glyYXjkElYhPh1?=
 =?us-ascii?Q?+82N1AEoKHkSjNYpv6g2PQcxx71mpukJlP2kNNjatVlb+BFj2YXS/gcZmhLl?=
 =?us-ascii?Q?RePTJR8ssH+fAFfmK/cG4l7hxyvIHa6+55k+Nm9X2Szyu0xTlgDe6LXtuJPL?=
 =?us-ascii?Q?yT8tfmgP2HExHpR67I9dbaBLrqiYPbSn9Mmgnn9o9OkM+1AHGQzNjIfjCoza?=
 =?us-ascii?Q?wypYJh1eR2twFI1Q+c7d4EGcD8Fmh+0b3XV6YqaYVnA1FDRvGvOPQwA2ucdx?=
 =?us-ascii?Q?5H+MyssCLPIS4cJfiUvM9U9krp7BlXsltpntQaGwxIm8WP6n1T0XMD5BnyDA?=
 =?us-ascii?Q?XL6kflQMF2t2ITA/toSd8ri2qwu5eYJaIBynIQZX5VDf/GS26WnEWUUDFudL?=
 =?us-ascii?Q?0y0uoERcoLQGFhu5jUKgWqa5P4G7HnrRTC+oGyWOJk7bwvL7uz/SHoOds7jG?=
 =?us-ascii?Q?Yy0XVq1ANanf564KNmHRXO7Lc0Ms1iNl70JixqnClPikKlUVjPl3v6l92uBm?=
 =?us-ascii?Q?YDVH1fAgrk/ynsfsNh5h+KW8TCYXG4fxeVtEcpfLr2IqImZ+OVcVvPUOAk9n?=
 =?us-ascii?Q?vKIG37LAiII09OckkPilntywSCoO83LgMDqWXr1mFGQqMsRuLaHtan5d8rpq?=
 =?us-ascii?Q?/hCxjOMjbvW06mcxxOjy1ZzXH1FT88c/6wWyPmGEcfxt43l1zrS46eTg2ixn?=
 =?us-ascii?Q?gGrlcBjJcq/vi6X6NrDgxcw13z8Ud8QDs0jEj5MARGWsJLFup9ds9npObE2H?=
 =?us-ascii?Q?FDgrMp+cFQI0fWz3wLyuAcnHcqAtv7o54vxMOVOAAqjcmGNriAcUy52/Wb+E?=
 =?us-ascii?Q?RRMti1WAfBpy2eGeMGFjubFMj05xWfQkQqPs8WJXjoP7lUJxzAmYxpwogoGa?=
 =?us-ascii?Q?coQg9gPDTHS0TR/hCeA0EXXXKimsGNc46hUBE682JrQzo8QMV3V0j2UL4gHk?=
 =?us-ascii?Q?3DnuULKvjUpZL94LUkmGBaNSN23Kjux5sAqlSN7keQhLU3YMEWXea5GdVSxE?=
 =?us-ascii?Q?iiUH2giII3Ae8WNeARQKhdLzW4clNd5F9QnfzU9vB0kn9j2BSdUWiKKITzLV?=
 =?us-ascii?Q?Hp2tiwnN4iPcJZpKiVvL2iItv+jZfAgn/Fae/tAABv1PcDER6hMXfuUsOM7S?=
 =?us-ascii?Q?pe6316n+1JfaMe1D5PCnab5VXlaEqWCNA3ARinfKVxj31YmR8NGxD1rmLYoN?=
 =?us-ascii?Q?64xFtCVE+pjCr15xy1vEflsL8yapcR6VVJd9h7DWbRniL44f1NXJnl5zTsbe?=
 =?us-ascii?Q?HyRSGycPJk1gba7zRqcEfSBLfLsJKjrU8wH9XjgbUjoXQLgbxyr41DgqULKr?=
 =?us-ascii?Q?Yw6zIYlPqjcgXFNHudyS3w1M3i3lAWlTA093U+MRifYGG0mN30sGuKFkt7nG?=
 =?us-ascii?Q?n+9VvP1TYH/znOxUA2L6zbQIedTbevgszoGVMmyrovSNsHdX3vzChzly5aWO?=
 =?us-ascii?Q?uEY8u/whU4iBF0lVA+hkZ+JNhxcFCXmmdpuwk/yLQB5ChQXyVZzOXNd/xZI7?=
 =?us-ascii?Q?CWxjPq/fM6R5PZUvS1umMzYRlp3AIPIo3GiAIYvo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9e82b44-787b-4db3-8eaa-08dc3f802a9a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2024 14:58:08.4636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nSeaiLD2XlXl6W/0KQK2AAa11Le4iWGg1WG1sfp9AKNApOgU+NkdVFWrs642tm06Wan66lHdoXEog/njsM3/HA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5246
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

On Fri, Mar 08, 2024 at 04:46:43PM +0200, Joonas Lahtinen wrote:
> Add standalone includes for BUG_ON and BUILD_BUG_ON to avoid build failure
> after linux-next include refactoring.

any lore link so we can use with a 'Closes:' tag?
and perhaps a reported-by?

> 
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> ---
>  drivers/gpu/drm/i915/i915_memcpy.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_memcpy.c b/drivers/gpu/drm/i915/i915_memcpy.c
> index ba82277254b7..cc41974cee74 100644
> --- a/drivers/gpu/drm/i915/i915_memcpy.c
> +++ b/drivers/gpu/drm/i915/i915_memcpy.c
> @@ -25,6 +25,8 @@
>  #include <linux/kernel.h>
>  #include <linux/string.h>
>  #include <linux/cpufeature.h>
> +#include <linux/bug.h>
> +#include <linux/build_bug.h>

git grep BUILD_BUG_ON drivers/gpu/drm/i915/
output

vs

git grep build_bug.h drivers/gpu/drm/i915/
output

tells me that we likely need this in many more files...

but not opposed to move with this faster and come back later with
other fixes if this unblocks people:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #include <asm/fpu/api.h>
>  
>  #include "i915_memcpy.h"
> -- 
> 2.43.2
> 
