Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49563C8531F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 14:35:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C8B10E3FA;
	Tue, 25 Nov 2025 13:35:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JpcMNika";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1746810E3FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 13:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764077751; x=1795613751;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gaAFrfk02nKQD94K7NAPQrcG4IYN50E6liLOUFmO4Fo=;
 b=JpcMNikaE2gcTkSz1wxmhjKoBfbWEKu9vSBbpkobmEoy+lP+zKIvhOeg
 2u+p9/BX8esCsqlxY+djnGYGqJXB4wE5cUld16LCTKk2bFUW8SETw25NH
 a8uuK3OEd+RA2kV9w4txbpwfuSo2bPl9L4XxuvkB9dhQ+MdXBXwvvBa6w
 WtvRfNnWmguay27Ra5E1ksCepTqqMLLnVxFULLj8oaclVEYyQJ0mnz184
 0/Y+6uAWv4+5MwH4JQn6nfIFSZJ6mYBn1nU5QT33LgBfLezatnl1FMx/e
 04K0jpG/w4rNQlDsydVIhxnVOxCGpOtIRrkJymhewdbiM4/llcdX2BbLr w==;
X-CSE-ConnectionGUID: dITe1ZujRgChAohRRq4eAw==
X-CSE-MsgGUID: H/kHcbBNRlGu0/WuRTf/lw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="77572072"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="77572072"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:35:51 -0800
X-CSE-ConnectionGUID: c6Anni7ISCKdGM1bSruzOA==
X-CSE-MsgGUID: PufIEGqnSaqIVpnrwnSmYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192636909"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 05:35:50 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 05:35:50 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 05:35:50 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 05:35:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FSXbDn1EwEQIXCo71ekhZ1djTABS7RJJDBiWSJiEwiuCWYnEqUd7ZMXKqDzfRb5GwrquP5vpX+24YJ5UTrhS87CgY5wfGvwTmeEgnSyaAwkwtvH6ZaaCeeYarJ2UOHvf5e2c/2RReGGrW2cHNVpQ4Bq7sLz7fpIfCcCaWY4oWJY9Ii/gl648u2U53fZ/CQazlwlfsUbyz3BmScMoPWAQmlTZT2zuDHqpLHZbuA4rkIy6peQPveuKre/00JVQwBY3CPUEteEj7ISDpaDXZnCDubk+3TndzQ1XVlXkfbwZkKYoc7XzyWnuBJZkCp4LshlwQEXglfLRj2ja/q41tbX0cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/6LO2885E3gi4HeIGmVMwn4dP7s8VVl5/RTQNRWEJc4=;
 b=pukEIfANIuhc6GuMOzFRCUlP/NSznmdeRNmiNItofLyW1oivYM9HRooMBKeTeGTaPsy+p76jbtYVcGB6tgmVu6b3yavkp2J87HBfDMuY4k+Pr1Z9ltXlYowBarWwpUiR7gc2D/jtAhWW49lJ4NokHM8N3R7qp9hU062SvCX08+f8N3efsoy/dBUMmI8Yr9O15pJDBCpMBYEyyUfvdOS85xWTx3lu7dJXYYQfUVCzdDfLOr3It4LnAakqavXPEnOg0FQlaw5oiPiE8/ZXYrvb8EztBJd561ATBfJZnaVgsRp1Qd+IYJPthP4Ol7stYzYfMyIk9BnjHobwiDMEw1cRpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 13:35:35 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.9343.016; Tue, 25 Nov 2025
 13:35:35 +0000
Date: Tue, 25 Nov 2025 08:35:29 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Message-ID: <aSWwoYwYb4OIVy1A@intel.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
X-ClientProxiedBy: SJ0PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::15) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CY8PR11MB7196:EE_
X-MS-Office365-Filtering-Correlation-Id: f09d8dc1-88b7-467e-f1e4-08de2c278329
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N8KrfC4+19H/zDJH+K4fgDlvsLjEjVZa6+9CGwkDjQjS6VFs/sqzPu6TCnZs?=
 =?us-ascii?Q?omVaH1nEQEbvS13TeAaBWqHMSvZBs1WoaEZis5gWPINyaatsaeIUYObawPbr?=
 =?us-ascii?Q?kX9lS+k6yfyDgLNyb8/l8lMg+qdS0xmCAOqB9FY6qzkcGQVCYzBhb8TWRQZu?=
 =?us-ascii?Q?H+pKXnDxpY9P1iGZ4J1sLQ6eOHwI++j1+klfuTYN8RoqVITCbpstwZVFCrPo?=
 =?us-ascii?Q?Ir7TTFvo+mMIoniCwUpJQQjnWHXdqfOMOouO+b/fhEnvI9qWJgLCdKKmbAs1?=
 =?us-ascii?Q?C8a/XroCEPCUMcgLi1xRAhtGwdfccp3iBeT1/6CE6Mty09jiO39PSN/3d1We?=
 =?us-ascii?Q?LiciRkaPmwSehnlcwh2vJ1scNaL9NxrG5avKwNWn+D9PNrDmN+53O1+Vmmjr?=
 =?us-ascii?Q?kw36ArIEiqH6fXeKEmptjmIjO0Too7Q66SWe+7XUQSUEw3tHizLmvNMYWm35?=
 =?us-ascii?Q?cOqQCv185n7prnrK9TWP3OyeqiINkD9JkmrUOWgO4Klk0RvvevQutOTfOGbN?=
 =?us-ascii?Q?GFZMkUsIsqSyxQ9zoRVmgoLdQjlzSBusvZdiHN0vpXREDJQaDTI3GEBIeAns?=
 =?us-ascii?Q?bD7fOr/r1H4ulngYyvrS7+11lLpY9fusItgYzghEsmP13OCzE0lzvyMMN/kt?=
 =?us-ascii?Q?tLrsQW9dEE8N/O8lrutBt8XOjUkONWx1RF0ALgJbBO/l/Sr1Fir4FMYY094I?=
 =?us-ascii?Q?VezzCpzWmEI1RYvRdMT1v+R3UapCErTtfDyWp5p7XCLuOqocyNk+2mdWbQ1x?=
 =?us-ascii?Q?ScQW40A3S29v/eXG41T22lvXG0xPYI+AQUhZQu2hXe8+Kavn391h6HjrCR/K?=
 =?us-ascii?Q?7Au6VS68QOTP7rmDiwd2Mo0G9sDcB0HtqOtI1ZYQkZflbbPo57mLWyy7lFJd?=
 =?us-ascii?Q?PRtfcIY7oWZh3kxHKVjP284QKuJHu22IxaLBtXXhsxdW1GsTg3PuSinTVjeC?=
 =?us-ascii?Q?Nj8eg78sm+RvlJE+Gkgf7tLYXCJwv1dFDEkvuGVgMA/lHD/tOj1uhiK8amEt?=
 =?us-ascii?Q?nbVNwSvAdEN/39veYhjRrEf6mqaX8/Q6I+vwyjaC4H6Juh39ASwgmlaLQOLq?=
 =?us-ascii?Q?a/9nSnsmcxsPRno215ImuVIL9HnZdD7RqlhsQIA9vvWkbiiwfnjKZJfL9y/a?=
 =?us-ascii?Q?7SdEGEDzGAbmUhaCxtXMBPX8rdLOSI5XG7A9rwWH7wEeiJPNtiHA5PnpEbbp?=
 =?us-ascii?Q?IqBzpUPdNLGrYVHT7ekg4qIZOEPd1lfeM/GHnLCL/WlZdrIPoorAagugdl1Y?=
 =?us-ascii?Q?sDw/GDYCzu+H+uft35+tGGejG7iq1fMLyHLZMJcsL6NtlF2qo80GrJEdknBH?=
 =?us-ascii?Q?+hqPzNMruuyewOYbA6SgSrlzl46asuAGvRIB/9qlmIMdHDBphmiZZM6GBjcm?=
 =?us-ascii?Q?EO22SeNtedeQBDoQ9QI2EP3hilPPQj+u7KUAsjMv7kXHvPB96X+qxUvEidjt?=
 =?us-ascii?Q?u4KwPmJqq4/JYXg6NAdSt5wZthG6T78+n8heVzDiIXS5iy5I12nQEA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tYutkxDZHY/ZSHQM4jNXY2vvsbBunoEPh85eRNQD9TeDQR+ETrXcfq4oT5rw?=
 =?us-ascii?Q?wNOFvUhf+bwUjme0h3P30cwEsF/kSmpd4BwjVIYz7JDRSRnRB9CR1zpzRBxL?=
 =?us-ascii?Q?enPLvW9ad3hx/N/ewsb5DdkgNexPupy6oCuFi3ofHknqsCZBHGZ5yFlM782Y?=
 =?us-ascii?Q?oVcMrxFyPwFto8qRrv5YI70UN5T7GNN2KxQAqUQCAHMBW6AglPZ3JiyormJe?=
 =?us-ascii?Q?T9WWRVTQlt27k49yH2zYZXsfQjjToHhPUKA7VfCEwdNCuN+g+0/R/Vd9kF+t?=
 =?us-ascii?Q?F8fnTZ8wmK9fg7911NalAvX2LJhwLWjxN37xWqc4Ml+XKV6Zb7Zvok8Y/oRV?=
 =?us-ascii?Q?WhKr5iSQClIV1fSp4VEwHY0c1UEkgcBmxTfDsVJCpMlhPJV5hvHrj9MDOq4z?=
 =?us-ascii?Q?YMgU/QWB9I5Pdn0qk5B0erD9UC6grTqVuHgIr2CLDivES2wrBwRJfmKBn4Cz?=
 =?us-ascii?Q?G4Me4znxPKiQF7L/w8HFaRxMf57RMbKrH9Yfw1MK4Hj2um8/avLaTycK0AK9?=
 =?us-ascii?Q?pFpE/cJ52Uq+/xuWWKk+iucEtNMbLKaRBB2IepWR/0tm8eYcxtLShNDGVD05?=
 =?us-ascii?Q?zxNkEGFRMMlWedcsd2N8524FJYCWbpR+bITKQm9KLrHPV6KOaC+8P7zqnx2B?=
 =?us-ascii?Q?05fzzxlCUwxHwnszFtqS4cCdB/u791SkdB/sJU4CXUaMcM8IK0/Dbnv6lXU/?=
 =?us-ascii?Q?8fkYyj3gK3XAS5n2Kzl/kTIM2Wl5SU3ZakbjPc2RL/wvVKA/06ybuqjSBh+c?=
 =?us-ascii?Q?H9s9mT3q3lEyRTxYoPdmFeasCUYTI/bvK6ZYntCF6xlny2LSi73IbdsiJMaU?=
 =?us-ascii?Q?scU3kFzIj86M76a+V9uI65EJAs9Wx1HcftGw/R9w6I7G4etpKabhpvGFHT/+?=
 =?us-ascii?Q?/VQICSUGuq3/Eloczfh8R2WZgxre48rHzsVpVGm8JMWkZzkuSkX0WlcRCs8E?=
 =?us-ascii?Q?5iwOCBE6k2yAjGlhcTEjqeT3nuq4ij6UMLgbUN6O//zScx4MEiX58d/xWPqK?=
 =?us-ascii?Q?CZ/WKo/G+8FtSnwYFhKh9+E8GiRfX8TQslsTOcpfTdv2NMnAd/Mw2BbR7UV3?=
 =?us-ascii?Q?fPASVdYOx/Y1/6SZsvHnHcrer7nksEfH46Bud4z8NJy3UcOeWUbzCP4+Jf6d?=
 =?us-ascii?Q?3JUTfpUzGatpXryeyxjwWZ1IvaS1mfjOBi5HJBRe36tcOi+UXAPs3mCesbKM?=
 =?us-ascii?Q?jx/BoRci/cXQ7A49QrYZDeF7kah8D5BXkTVMfMvZCnCEj+CyxjxVnq6PaLJE?=
 =?us-ascii?Q?TVu48r8abY6ZakgtqWInopU4p2tlPofdop6b6mT+uCFkzJrAjrMzuEIWWsQU?=
 =?us-ascii?Q?y0rcR6hyMmZDMKt4nSwIx+fzx2M09IHBL5X+UY6B4Y9ikyAxArjAd9RjC1/F?=
 =?us-ascii?Q?w/adTRgAcG6Yc+BUt+7GzUsGZ8esWAWSwS1eOH6dHls6P8gckCJFB1WCtvVS?=
 =?us-ascii?Q?/fLK2XgGXUkk0TufezI5wCR1PXxBNturp1gGeRW7STVxSLvyfgVxoiZWMs3g?=
 =?us-ascii?Q?xB/bPVHwERtmrW8IKfmrzC6sr4kyG0wYRS4+sje7UqKqgR9oZZsHr9bWYMWz?=
 =?us-ascii?Q?S8Rj9VpsJMLjOTHuLs2/PeXCbDKHXSszRF88Bqxh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f09d8dc1-88b7-467e-f1e4-08de2c278329
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 13:35:35.2823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CelHzlQ5XxkUELLF5E+pz+agj9UlK8c0oxj5p4t2vFRgomRRL8HJDvRwWH/E8Q9fLPkVpcwb/GaE7qJ6ByZmcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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

On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:

Hi Nareshkumar,

Thank you so much for the patch. I believe the change below is a good
addition, but the patch itself is in a bad format.

fixup in the commit subject is absolutely no no! This is a git indication
that the patch should be squashed to the one introducing the error,
but we are in a non-rebasing branch. So you need to provide a fix
as a new patch and using the proper tags indicating which patch
it is fixing and Cc'ing author and reviewer of the original patch.

In this case:
Fixes: fb544b844508 ("drm/xe: Implement xe_pagefault_queue_work")
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Stuart Summers <stuart.summers@intel.com>

> The variable "fence" should be initialized to NULL,
> and any usage of fence should be guarded
> by a check to ensure it is not NULL

Furthermore, the message itself here is a bit strange. It is not
necessarily true that it 'should' be initialized. In this case
it looks more like a false positive of static analysis tools,
but it would be good to have this protection just in case...

So, some rephrasing here might be good.

Please read the documentation on how to submit patches for the
proper style and messages:

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

Thanks,
Rodrigo.


> 
> Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pagefault.c b/drivers/gpu/drm/xe/xe_pagefault.c
> index afb06598b6e1..401f1835939b 100644
> --- a/drivers/gpu/drm/xe/xe_pagefault.c
> +++ b/drivers/gpu/drm/xe/xe_pagefault.c
> @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>  	struct xe_tile *tile = gt_to_tile(gt);
>  	struct xe_validation_ctx ctx;
>  	struct drm_exec exec;
> -	struct dma_fence *fence;
> +	struct dma_fence *fence = NULL;
>  	int err, needs_vram;
>  
>  	lockdep_assert_held_write(&vm->lock);
> @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt, struct xe_vma *vma,
>  		}
>  	}
>  
> -	dma_fence_wait(fence, false);
> -	dma_fence_put(fence);
> +	if (fence) {
> +		dma_fence_wait(fence, false);
> +		dma_fence_put(fence);
> +	}
>  
>  unlock_dma_resv:
>  	xe_validation_ctx_fini(&ctx);
> -- 
> 2.43.0
> 
