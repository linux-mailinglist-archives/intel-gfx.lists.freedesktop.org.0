Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D465D1AA75
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jan 2026 18:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFFA10E51D;
	Tue, 13 Jan 2026 17:34:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbb5mKai";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0C5110E51D;
 Tue, 13 Jan 2026 17:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768325668; x=1799861668;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=TgckmIJpoVicHIXaBXmD8l895SwRHDVtMV0kG6q/ezQ=;
 b=bbb5mKaiTnlapRJJHlnWVkzrmxc6OZDDgFtWYg7mWFv6QVDASldsMbXw
 hYBIm9lVKn8s9LeuOyCvR4lZwfSR4fkXk9pTO9kwiYOevUgBcmLkb39Q5
 y0/P+IQzHnh6iEjv9VOGYCOlmY+MPq4j8zr2Br1HSiaisLq81fhFLvDcT
 s8E9J7h/bUWfHVLIz21maUMQSTpM1VKEYskD5wAKYbWdGya+dAi6k+EIO
 bu1ir6yAL60h6kW+VxpjIG9eF6JdTdn0X561kajuwwu/jt2QOs4AVFDrD
 UnYQ1HlSap/ArVXO02e2B3ua31hhgWBLRFnJlO7n6hg85jli97rnUi3YF w==;
X-CSE-ConnectionGUID: tbj5BHSUS3ytZDjM9+AGvg==
X-CSE-MsgGUID: gTILvhrcTvepzj77+gf0Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="80981785"
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="80981785"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 09:34:27 -0800
X-CSE-ConnectionGUID: /enUw04eSKms3XXMUJZpLw==
X-CSE-MsgGUID: idIsqSOgQ0WEJapzWw7GnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,222,1763452800"; d="scan'208";a="204519287"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2026 09:34:27 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 09:34:26 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 13 Jan 2026 09:34:26 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.59) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 13 Jan 2026 09:34:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5wX+sTORkHtx+jWDiAGxJPnq8vI3pkV9I1tv6MXtRELQ87BzsZnS2WpG7/wsrqFuw4kuD0k/yDDfLm/G07ZOscSHXM+kCwTFY3RxBliy48yKC1ZWTS642xkI4fP8rgY9PoM1lEXBT/3SNG9fg985njJGjlp568cV1y2hPwhLCbKtRzjZoJYYk2S7c6IftROlwsdpUAXttPCOq6sGj+A4X4OZ+QWNFuDEG/UUWP0nwM4V6pC8+C46IWVUcN0Nc+oxGt6em44j+SKNe05ionqKM+Zwyt/xo6vxw8Gmj7X5a0mwuRkLdhUFqKsGwVcrozwS8aPSvrGha2gcZt11I7+Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nfu81kiyAxeeOBLKWCW+gtfubyOC7tMNAR54Mc5rIu0=;
 b=afglm3zgmkddy+D/p4w5KeinczAhRUtKCNXh5B1VJzUfCbXW4ay2IzYO+c1DsjS6lhEnY/vhsMtVtbYtnb/bkQrOjsUFg5mK2/pBtxz1FWpvMLcsq9rdSDIjXobI0K2ba2eYObvKJIu8Fy0wPb5K4ckDHI8WvcCZt4haGm0YTVCSZOdUd53upesb3SYfWOWmKfhA0xNSxP44tNN43ebREhEx1zdtZVER6Wz8Mv4/FTSy2JOLHQ6jn+KWZv8WByjz7drJKLo2mpgDuyM0oZNPPm/rABTp4mwx7yF02FHYvsTMcUs8wQONvF/goJkztb3byKg4i77IyEUBXbZSD8us3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6677.namprd11.prod.outlook.com (2603:10b6:806:26b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Tue, 13 Jan
 2026 17:34:16 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9499.005; Tue, 13 Jan 2026
 17:34:16 +0000
Date: Tue, 13 Jan 2026 19:33:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luciano Coelho <luciano.coelho@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Jouni Hogander <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_drm=2Fi915=2Fdp=3A_Fail_stat?= =?utf-8?Q?e?= computation
 for invalid DSC source input BPP values (rev3)
Message-ID: <aWaB5kg9Sjjmc9Xz@ideak-desk>
References: <20251222153547.713360-1-imre.deak@intel.com>
 <176654308984.114937.922653558011609259@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <176654308984.114937.922653558011609259@a3b018990fe9>
X-ClientProxiedBy: LO2P265CA0450.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::30) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6677:EE_
X-MS-Office365-Filtering-Correlation-Id: 71f8c3e1-37db-4332-82de-08de52c9f919
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zJ8Z7iwq+kEA+9S2VAlYXo/zjkdxh6p0UUGDCTs9rdtGTV+JjGYQoVZJjEoY?=
 =?us-ascii?Q?C2ljbDmJDIsFDuEkewTkD4WhyUKLECnyG5xWvvP1pALwbJexydcI9Jhfbh+J?=
 =?us-ascii?Q?9BGJCCjTqyaWLTOzdcFew6XIkCeCXbFViQM8/DCN0XkNUKzTSjBdk36OsQJr?=
 =?us-ascii?Q?2vMA1DPrq/3uEUnmQLSbfnEoj7/mT9n7J9TzD4zEVr6sALyV8hscG1MuBTgi?=
 =?us-ascii?Q?j8bS2rAGefN2bBXd+0eKtbnk4Goz4ytb7GkBFQFooz/XaQpJrB265xD+ksUR?=
 =?us-ascii?Q?yReF2UrX3tPrAV8cCZ4+rICtk4NCke5b7olhTE3IK3kMrVZRtpDq3FbP02Hj?=
 =?us-ascii?Q?tCUIoBo/46jCQk1igfiUL0CzKBxHYzs2qvOxgOLhe/zcZHkr2FVcLBuCxRIw?=
 =?us-ascii?Q?Ol5jIFt9Ce6sNpOBRTHqdsJ6NfHiuUPk8zp5DgmeY7acZtQJFgyF0RaZ3Zw1?=
 =?us-ascii?Q?hhqOb6promA5K00osSRtQaxq6kH3RDuMI5f79E2c67mvyeT1hqt09yvHBfXp?=
 =?us-ascii?Q?G0GudLUecCeXLE4EMqXDaCzKlc1esIs3weOAPtU7/YGVsS4YK0kYUszijB2q?=
 =?us-ascii?Q?KYF3jjX4L7LH03A47ms4GQ31inxi8vgS84uh1SRqbd8a+WMMj+0c45J0eb7x?=
 =?us-ascii?Q?kE0R91XzXMWi+c7GS7WICRyaS+8D0JnHAl3g8ac4sYo9GFsrMrrNXRP3T6wP?=
 =?us-ascii?Q?BA15qvBDGpIATDE714d7k20ikgQ726AKqLqGKaywJVOGGTLoAJ2vDn4H1DE8?=
 =?us-ascii?Q?6VqSeKFjYkBQYE6Jf6x577SKi2BXCeUHAPalzTCiay787I5sKaSJ6Xa3glS0?=
 =?us-ascii?Q?5enQO34MaDYTtBtPTYKy5JrlWgzCzp84R5YaSDqq5kHjkyTbuJ41dYmGTRrg?=
 =?us-ascii?Q?dktMM+x9544RttCh7ZY6ToBDvW53gwD+8gmsHzDavaU5YjN0vBosJAEZQZuc?=
 =?us-ascii?Q?3C2Js49SRuJtR+TkWmsvqUx7ZPJu52WWeltPghnxeM5+ZMLJqeKLZ0EoxVI1?=
 =?us-ascii?Q?rZBWUgIbUo+1lcDIGFlGk8EsgukpSr3KMjfnX0Xw8BsyxC/KEJS7BD/kDIib?=
 =?us-ascii?Q?M0GSb8+MAOTN5dxXYXnZdZJmcywPDnpxNbvSAZ0l339I03X3JsmhkFuaECm8?=
 =?us-ascii?Q?ZMVl31OtTlcBLvjiK53oauzoslsuWcjlJB1jHRIbvSeA7xXQSyi61a1VkuvO?=
 =?us-ascii?Q?Cu8XviXsdDXxI7FX19U47U+nMbeST4h16UPSl7XbwQVWDTd03ZHkgXzIdjdk?=
 =?us-ascii?Q?vTdvE73tCr/9nsOEB1ntM4H45RVGNxNmYw8pmM4NxkzbuOVIRYnsDojRU5Jl?=
 =?us-ascii?Q?+WgKs7JaKt507Za/Rf4JXMZOqryossRlHvBV7d7Yjx2Okf1NtEaRU7+dcXXn?=
 =?us-ascii?Q?p8EolTfqfHGwwSVSNTPz+jD6dnEFpIc/5IsZQuwJzWs5wirWOQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p0IySvnD95bIV3/HSElGc1Ws2+SJaCZRnA7AXzKB5JBpNrtAbz9UDjSLu0WB?=
 =?us-ascii?Q?gjOFusSr7gdRXN0vQpJEc+xpBlUbjagCiiEu4hf62yrczl5BzNmNXhHdyRoL?=
 =?us-ascii?Q?130Y+AxY/afNbHRWET0Ry1OvYD/y6JTjiuk57qY+NlPMwTFM4Tr6Lmx/J4jJ?=
 =?us-ascii?Q?H4bgVtNuboFwZjnM36bD+O0z160/AJxbMy2iBEOZevw6NZI3VaR9+x4lGLEQ?=
 =?us-ascii?Q?BbaJaDdvTJmFDhBQJhi7OOt/Ttw36uJGtDYbwnkRGPpR8vyCT/jldfpwFCYB?=
 =?us-ascii?Q?XqDOKN7zCoEDwAuLIy99MevvV1icMbIFxCxe/TDdQyDPpUO6YhaAfaxDqjf8?=
 =?us-ascii?Q?7o33cHfcMtl8aal7Im0/h/kBPENJ88WCmu9nUXnFa0WLN1U1E7AMQACYx9L0?=
 =?us-ascii?Q?MlEykuq0CO9C41yQEJm56KcMy8mCd/SWCy69glEUxxNHgYNh07sQZLfA933g?=
 =?us-ascii?Q?v3UCuM4gLVUZ1w1DrGOa/vdhEreTyu4uLenkArUgJmrFWs4+Bhe4wWzU8ZoU?=
 =?us-ascii?Q?qF0k7wQlsm1SpcYWPeL/6DegJKDb6kDY1vzpcqk/DPEuqBARt4G6JqLdbHPs?=
 =?us-ascii?Q?hAnhWEAvaBiu2jf9lcxXr8IpEqsG3eqN7dvQvPf1n2HnXGti2s3v2tAFjsJ8?=
 =?us-ascii?Q?p1UmmKqbKtI14+2L56hlB2+Z9GLx6kc7rqR0nzKde+5jhBDAWJcebNTrfBMk?=
 =?us-ascii?Q?HICbGC+nbNXpkXQgyO/0LPP6EKDSwIGABfcVhdmNiqwoRxNG3a+jb6yosSBk?=
 =?us-ascii?Q?+XyOwfBB2kAfluKHCUgkZSZyD2FT+DX6q15qx4fFRbJdFHfgVUEjyyaH9nhG?=
 =?us-ascii?Q?f2SvUFwNLtfYjJbcj7Y2QRW0UYNBQ7NeYZbRcOR9MWCTqjIW3J8Tf8u3pwOk?=
 =?us-ascii?Q?Q6YM0PaYj+CNJDO0ckeZOyL2Wq7GRtn0FE77RR0TqemY0CYguEsyV+OVjasj?=
 =?us-ascii?Q?otj5eSS3A1HjRPlzgBzzNhsE+ncq8JgyP+ZUoMLLrGj9fKMzJIYLl8F2qaHo?=
 =?us-ascii?Q?LJzfJL3KnZh7NbDImiC7FCtYug9bqLQp6rpeUyhWjUXTJ/CsrSKjEoQ8REBH?=
 =?us-ascii?Q?AyTvxVqlfgOPinIHEzGWwHUCOO/sAhB4r+d1KfbAeHsJIulRaXk+DNiar/5r?=
 =?us-ascii?Q?Q3bv4JnuIdPXQceULhF+aAgkLh4iRJPp6gS+A2F4FrGk1e/CgpK71radOiAg?=
 =?us-ascii?Q?zeOyElaa9WgFgkV1Kjz2wJY7HZzuN9mZXlA/isjgOBZx8dMjKFMrxh176IVa?=
 =?us-ascii?Q?nPasKmkikNag4tRsHzTvfSR588aAACqy9/FPKCsqZyQmIWMB8HbRM8m1aCkX?=
 =?us-ascii?Q?0+GfkwUOhcXtOY2ba79V4kuD8AhN+ElYGrpOfX9JlPYoOyfeQImH41ve0Pb5?=
 =?us-ascii?Q?4xEfYlTHGmQ2qhzACHpDhtil1YD1GMLnZZVGPltKPAqExEMZR7UdjVmNpmfI?=
 =?us-ascii?Q?NHymZw0Tk3gn8sfu+we7+B/vvRtb74/O7QBAsEl2yECrgsBz4eTxEkDjezmB?=
 =?us-ascii?Q?YCW1qL17QCIRS5vVdpr0hckOUOhydrlggAk7pDlfGIhsQQuCo7NhvJwlxU4Q?=
 =?us-ascii?Q?BfyZrhEBMiRBVaFKZrCvEcWJ6FjAnczr7wM6EWuMkOB+LlJPRgPk7aTncRyu?=
 =?us-ascii?Q?fOQhV0izanzQTqoTodLkYtdGZOKN6d9zoizTYTuDgKl0YVczXlKDqDjWwpql?=
 =?us-ascii?Q?kgpjlJ37I/XG8Jnvfpe+S+400sMuXRH2n6cGDMrhwbk71KPd1584LSBertGN?=
 =?us-ascii?Q?qU2nUdL6Zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 71f8c3e1-37db-4332-82de-08de52c9f919
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2026 17:34:15.9411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FFOpgJRQFlr8BZjN6fahh0cVSXxPLP0V54Amg1BIKNaF77eAeNAHGl2BjYh4zwWs3fonHaaIrGxcFPg1jEjXVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6677
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

On Wed, Dec 24, 2025 at 02:24:49AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fail state computation for invalid DSC source input BPP values (rev3)
> URL   : https://patchwork.freedesktop.org/series/159388/
> State : success

Thanks for the reviews, patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17732_full -> Patchwork_159388v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_17732_full and Patchwork_159388v3_full:
> 
> ### New IGT tests (16) ###
> 
>   * igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.04] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@tile4-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@tile4-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.01] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@tile64-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@tile64-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@xmajor-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@gem_ccs@block-multicopy-compressed@xmajor-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.02] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@linear-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@linear-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.04] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@tile4-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@tile4-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.01] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@tile64-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@tile64-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.01] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@xmajor-compressed-compfmt0-lmem0-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@gem_ccs@block-multicopy-inplace@xmajor-compressed-compfmt0-smem-lmem0-multicopy:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.01] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_159388v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][1] ([i915#3936])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#3555] / [i915#9323])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][3] ([i915#12392] / [i915#13356])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][4] ([i915#13390])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#4036])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#4525])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#4525])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#6334]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#3281])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@gem_exec_reloc@basic-cpu-read.html
> 
>   * igt@gem_exec_reloc@basic-cpu-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#3281]) +1 other test skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-4/igt@gem_exec_reloc@basic-cpu-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-cpu-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#3281]) +2 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_exec_reloc@basic-write-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@deep@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#4537])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_exec_schedule@deep@rcs0.html
> 
>   * igt@gem_exec_suspend@basic-s0@smem:
>     - shard-rkl:          [PASS][13] -> [INCOMPLETE][14] ([i915#13356]) +1 other test incomplete
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-8/igt@gem_exec_suspend@basic-s0@smem.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][15] ([i915#4613])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#4613]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_lmem_swapping@massive-random.html
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][18] ([i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_media_vme:
>     - shard-mtlp:         NOTRUN -> [SKIP][19] ([i915#284])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_media_vme.html
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#284])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_wc@read:
>     - shard-mtlp:         NOTRUN -> [SKIP][21] ([i915#4083]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_mmap_wc@read.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#14544] / [i915#3282])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#3282])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#5190] / [i915#8428])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#8428]) +3 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#3282])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@gem_set_tiling_vs_pwrite.html
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4079])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_tiling_max_stride:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4077]) +2 other tests skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@gem_tiling_max_stride.html
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4077])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@gem_tiling_max_stride.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3297]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3297]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#2856]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#2527]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-4/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@fault-injection:
>     - shard-glk:          NOTRUN -> [ABORT][34] ([i915#15342] / [i915#15481])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@i915_module_load@fault-injection.html
> 
>   * igt@i915_module_load@fault-injection@i915_driver_hw_probe:
>     - shard-glk:          NOTRUN -> [ABORT][35] ([i915#15481])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@i915_module_load@fault-injection@i915_driver_hw_probe.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][36] ([i915#15342])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] +6 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][38] ([i915#13356])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][39] ([i915#4817])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#5286])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#14544] / [i915#5286])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#5286])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4538] / [i915#5286])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-12/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#5286])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][45] +6 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#14544]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#10307] / [i915#6095]) +94 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-ccs@pipe-c-dp-3.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][48] ([i915#12313])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#6095]) +19 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#14098] / [i915#6095]) +46 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#12313]) +1 other test skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#6095]) +192 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#12313])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#6095]) +31 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#10307] / [i915#10434] / [i915#6095]) +4 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#14544] / [i915#6095])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#6095]) +86 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#6095]) +14 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#6095]) +14 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][61] +112 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk6/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#13781]) +3 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3742])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#11151] / [i915#7828])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@dp-crc-single:
>     - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#11151] / [i915#7828]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#6944] / [i915#9424]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#14544] / [i915#3555])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#8814])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85:
>     - shard-tglu:         NOTRUN -> [FAIL][72] ([i915#13566]) +1 other test fail
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][73] ([i915#13566]) +2 other tests fail
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#13049])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#13049])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][76] ([i915#12358] / [i915#14152] / [i915#7882])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk6/igt@kms_cursor_crc@cursor-suspend.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][77] ([i915#12358] / [i915#14152])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][78] ([i915#4103])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#9809]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@forked-move:
>     - shard-dg1:          [PASS][80] -> [DMESG-WARN][81] ([i915#4423])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-12/igt@kms_cursor_legacy@forked-move.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-19/igt@kms_cursor_legacy@forked-move.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#4213])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4103])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#1769] / [i915#3555] / [i915#3804])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3804])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#3804])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#1257])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#13749])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#13707])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#3840])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3637] / [i915#9934])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#3637] / [i915#9934])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#9934]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [PASS][96] -> [FAIL][97] ([i915#10826])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][98] ([i915#10826])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#3555] / [i915#8810] / [i915#8813]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#2587] / [i915#2672]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#2672] / [i915#3555])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#2587] / [i915#2672])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#2672] / [i915#8813]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#2672] / [i915#3555]) +1 other test skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#2672] / [i915#3555]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#2672]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-snb:          [PASS][108] -> [SKIP][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5354]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5439])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#15102])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#15102])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#15102] / [i915#3023]) +6 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#8708]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#8708])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14544] / [i915#1825]) +4 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][118] +15 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#15102]) +6 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#15102]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#1825]) +6 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][122] +16 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#1825]) +10 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#14544] / [i915#15102] / [i915#3023]) +4 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#3555] / [i915#8228])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#12713] / [i915#3555] / [i915#8228])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_hdr@static-toggle-dpms.html
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3555] / [i915#8228])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#3555] / [i915#8228])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-6/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#15458])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][131] ([i915#13026]) +1 other test incomplete
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-rkl:          [PASS][132] -> [INCOMPLETE][133] ([i915#14412]) +1 other test incomplete
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk10:        NOTRUN -> [FAIL][134] ([i915#12178])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [FAIL][135] ([i915#7862]) +1 other test fail
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb:
>     - shard-glk10:        NOTRUN -> [FAIL][136] ([i915#10647] / [i915#12169])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-hdmi-a-1:
>     - shard-glk10:        NOTRUN -> [FAIL][137] ([i915#10647]) +1 other test fail
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#15329] / [i915#3555])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#15329]) +3 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#9812])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#9685])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu-1:       NOTRUN -> [FAIL][143] ([i915#9295])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#8430])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [PASS][145] -> [SKIP][146] ([i915#15073]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-18/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][147] -> [SKIP][148] ([i915#15073]) +3 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#11520]) +2 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-glk:          NOTRUN -> [SKIP][150] ([i915#11520]) +5 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#11520]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#11520] / [i915#14544])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][153] ([i915#11520]) +7 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#12316]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#11520]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#4348])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9683])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-pr-no-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#1072] / [i915#9732]) +8 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_psr@fbc-pr-no-drrs.html
> 
>   * igt@kms_psr@pr-no-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#9688]) +8 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@kms_psr@pr-no-drrs.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-glk10:        NOTRUN -> [SKIP][160] +264 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk10/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#9732]) +4 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-primary-render:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#9732]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_psr@psr2-primary-render.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#1072] / [i915#14544] / [i915#9732]) +2 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#9685])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#5289])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][166] ([i915#12755])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [ABORT][168] ([i915#15132])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15243] / [i915#3555])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_vrr@flipline.html
> 
>   * igt@perf_pmu@busy-double-start@ccs0:
>     - shard-dg2:          [PASS][170] -> [FAIL][171] ([i915#4349])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-8/igt@perf_pmu@busy-double-start@ccs0.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-1/igt@perf_pmu@busy-double-start@ccs0.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3708])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-12/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#14544] / [i915#9917])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-4:
>     - shard-mtlp:         NOTRUN -> [FAIL][174] ([i915#12910]) +8 other tests fail
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-4.html
> 
>   * igt@testdisplay:
>     - shard-dg2:          [PASS][175] -> [DMESG-WARN][176] ([i915#13890])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-4/igt@testdisplay.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@testdisplay.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][177] ([i915#12392] / [i915#13356]) -> [PASS][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][179] ([i915#7984]) -> [PASS][180]
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-mtlp-8/igt@i915_power@sanity.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-4/igt@i915_power@sanity.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [ABORT][181] ([i915#15131]) -> [PASS][182]
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [INCOMPLETE][183] ([i915#4817]) -> [PASS][184]
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@i915_suspend@forcewake.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][185] ([i915#9878]) -> [PASS][186]
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][187] ([i915#14033]) -> [PASS][188] +1 other test pass
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render:
>     - shard-dg2:          [FAIL][189] ([i915#15389]) -> [PASS][190]
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
>     - shard-dg2:          [FAIL][191] ([i915#15389] / [i915#6880]) -> [PASS][192]
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][193] ([i915#3555] / [i915#8228]) -> [PASS][194]
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_hdr@bpc-switch-dpms.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@read-crc@pipe-a-edp-1:
>     - shard-mtlp:         [ABORT][195] ([i915#13562]) -> [PASS][196] +1 other test pass
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-mtlp-4/igt@kms_pipe_crc_basic@read-crc@pipe-a-edp-1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-a-edp-1.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg1:          [DMESG-WARN][197] ([i915#4423]) -> [PASS][198] +2 other tests pass
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-13/igt@kms_pm_rpm@i2c.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-12/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][199] ([i915#15073]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][201] ([i915#15073]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg1:          [SKIP][203] ([i915#15073]) -> [PASS][204] +1 other test pass
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][205] ([i915#12276]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@perf_pmu@busy-double-start@vecs0:
>     - shard-dg1:          [FAIL][207] ([i915#4349]) -> [PASS][208] +1 other test pass
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-19/igt@perf_pmu@busy-double-start@vecs0.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-18/igt@perf_pmu@busy-double-start@vecs0.html
>     - shard-mtlp:         [FAIL][209] ([i915#4349]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-mtlp-5/igt@perf_pmu@busy-double-start@vecs0.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-mtlp-7/igt@perf_pmu@busy-double-start@vecs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-rkl:          [SKIP][211] ([i915#3281]) -> [SKIP][212] ([i915#14544] / [i915#3281])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@gem_exec_reloc@basic-active.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          [SKIP][213] ([i915#14544] / [i915#3281]) -> [SKIP][214] ([i915#3281]) +4 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-rkl:          [SKIP][215] ([i915#4613]) -> [SKIP][216] ([i915#14544] / [i915#4613])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-multi.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-rkl:          [SKIP][217] ([i915#14544] / [i915#4613]) -> [SKIP][218] ([i915#4613])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-rkl:          [SKIP][219] ([i915#14544] / [i915#3282]) -> [SKIP][220] ([i915#3282])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_pread@display:
>     - shard-rkl:          [SKIP][221] ([i915#3282]) -> [SKIP][222] ([i915#14544] / [i915#3282])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@gem_pread@display.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gem_pread@display.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-rkl:          [SKIP][223] -> [SKIP][224] ([i915#14544]) +2 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@gen3_render_linear_blits.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-rkl:          [SKIP][225] ([i915#14544] / [i915#2527]) -> [SKIP][226] ([i915#2527])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          [SKIP][227] ([i915#2527]) -> [SKIP][228] ([i915#14544] / [i915#2527])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@gen9_exec_parse@bb-start-far.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][229] ([i915#5723]) -> [SKIP][230] ([i915#14544] / [i915#5723])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][231] ([i915#14544] / [i915#5286]) -> [SKIP][232] ([i915#5286])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-rkl:          [SKIP][233] ([i915#5286]) -> [SKIP][234] ([i915#14544] / [i915#5286]) +1 other test skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][235] ([i915#14544] / [i915#3638]) -> [SKIP][236] ([i915#3638]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-rkl:          [SKIP][237] ([i915#3638]) -> [SKIP][238] ([i915#14544] / [i915#3638])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-dg1:          [SKIP][239] ([i915#4423] / [i915#6095]) -> [SKIP][240] ([i915#6095]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-18/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-14/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][241] ([i915#14544] / [i915#6095]) -> [SKIP][242] ([i915#6095]) +5 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-2.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][243] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][244] ([i915#14098] / [i915#6095]) +8 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-hdmi-a-2.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-rkl:          [SKIP][245] ([i915#14098] / [i915#6095]) -> [SKIP][246] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][247] ([i915#6095]) -> [SKIP][248] ([i915#14544] / [i915#6095]) +8 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          [SKIP][249] ([i915#11151] / [i915#7828]) -> [SKIP][250] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-fast:
>     - shard-dg1:          [SKIP][251] ([i915#11151] / [i915#7828]) -> [SKIP][252] ([i915#11151] / [i915#4423] / [i915#7828])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-16/igt@kms_chamelium_hpd@dp-hpd-fast.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>     - shard-rkl:          [SKIP][253] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][254] ([i915#11151] / [i915#7828]) +1 other test skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@dp-mst-suspend-resume:
>     - shard-rkl:          [SKIP][255] ([i915#14544] / [i915#15330]) -> [SKIP][256] ([i915#15330])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_content_protection@dp-mst-suspend-resume.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_content_protection@dp-mst-suspend-resume.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][257] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][258] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-4/igt@kms_content_protection@type1.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          [SKIP][259] ([i915#14544] / [i915#3555]) -> [SKIP][260] ([i915#3555]) +3 other tests skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][261] ([i915#3555]) -> [SKIP][262] ([i915#14544] / [i915#3555])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-rkl:          [SKIP][263] ([i915#14544]) -> [SKIP][264] +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][265] ([i915#13691]) -> [SKIP][266] ([i915#13691] / [i915#14544])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_display_modes@extended-mode-basic.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          [SKIP][267] ([i915#3555] / [i915#3840]) -> [SKIP][268] ([i915#14544] / [i915#3555] / [i915#3840])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_dsc@dsc-basic.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-rkl:          [SKIP][269] ([i915#9934]) -> [SKIP][270] ([i915#14544] / [i915#9934]) +1 other test skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_flip@2x-absolute-wf_vblank.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#9934]) -> [SKIP][272] ([i915#9934])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][273] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][274] ([i915#12745] / [i915#4839] / [i915#6113])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][275] ([i915#12314] / [i915#12745]) -> [INCOMPLETE][276] ([i915#12745])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#2672] / [i915#3555]) -> [SKIP][278] ([i915#2672] / [i915#3555]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#2672]) -> [SKIP][280] ([i915#2672]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][281] ([i915#2672] / [i915#3555]) -> [SKIP][282] ([i915#14544] / [i915#2672] / [i915#3555])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          [SKIP][283] ([i915#2672]) -> [SKIP][284] ([i915#14544] / [i915#2672])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#15102]) -> [SKIP][286] ([i915#15102])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][287] ([i915#15104]) -> [SKIP][288] ([i915#15104] / [i915#4423])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
>     - shard-rkl:          [SKIP][289] ([i915#15102]) -> [SKIP][290] ([i915#14544] / [i915#15102])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][292] ([i915#15102] / [i915#3023]) +4 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][293] ([i915#15102] / [i915#3458]) -> [SKIP][294] ([i915#15102] / [i915#3458] / [i915#4423])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][295] ([i915#8708]) -> [SKIP][296] ([i915#4423] / [i915#8708])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][297] ([i915#1825]) -> [SKIP][298] ([i915#14544] / [i915#1825]) +8 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][299] ([i915#14544] / [i915#1825]) -> [SKIP][300] ([i915#1825]) +5 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-dg1:          [SKIP][301] -> [SKIP][302] ([i915#4423])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite:
>     - shard-dg2:          [SKIP][303] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][304] ([i915#15102] / [i915#3458])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-rkl:          [SKIP][305] ([i915#15102] / [i915#3023]) -> [SKIP][306] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-rte.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
>     - shard-dg1:          [SKIP][307] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][308] ([i915#15102] / [i915#3458])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-dg2:          [SKIP][309] ([i915#15102] / [i915#3458]) -> [SKIP][310] ([i915#10433] / [i915#15102] / [i915#3458]) +3 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][311] ([i915#12713]) -> [SKIP][312] ([i915#13331])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg2-4/igt@kms_hdr@brightness-with-hdr.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          [SKIP][313] ([i915#15458]) -> [SKIP][314] ([i915#14544] / [i915#15458])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          [SKIP][315] ([i915#13958]) -> [SKIP][316] ([i915#13958] / [i915#14544])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-x.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
>     - shard-rkl:          [SKIP][317] ([i915#15329]) -> [SKIP][318] ([i915#14544] / [i915#15329]) +3 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          [SKIP][319] ([i915#12343] / [i915#14544]) -> [SKIP][320] ([i915#12343])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_pm_backlight@brightness-with-dpms.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-retention-flops:
>     - shard-rkl:          [SKIP][321] ([i915#3828]) -> [SKIP][322] ([i915#14544] / [i915#3828])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][323] ([i915#6524]) -> [SKIP][324] ([i915#14544] / [i915#6524])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_prime@basic-modeset-hybrid.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-dg1:          [SKIP][325] ([i915#11520]) -> [SKIP][326] ([i915#11520] / [i915#4423])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-16/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-13/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][327] ([i915#11520]) -> [SKIP][328] ([i915#11520] / [i915#14544])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][329] ([i915#11520] / [i915#14544]) -> [SKIP][330] ([i915#11520]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-rkl:          [SKIP][331] ([i915#1072] / [i915#9732]) -> [SKIP][332] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@kms_psr@fbc-pr-sprite-blt.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-primary-render:
>     - shard-rkl:          [SKIP][333] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][334] ([i915#1072] / [i915#9732]) +2 other tests skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-render.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_psr@fbc-psr2-primary-render.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-dg1:          [SKIP][335] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][336] ([i915#1072] / [i915#9732]) +1 other test skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-dg1-18/igt@kms_psr@fbc-psr2-sprite-render.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-dg1-14/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#8623]) -> [SKIP][338] ([i915#8623])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-rkl:          [INCOMPLETE][339] ([i915#12276]) -> [ABORT][340] ([i915#15132])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#9906]) -> [SKIP][342] ([i915#9906])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#3708]) -> [SKIP][344] ([i915#3708])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-2/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          [SKIP][345] ([i915#9917]) -> [SKIP][346] ([i915#14544] / [i915#9917])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17732/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13562
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17732 -> Patchwork_159388v3
> 
>   CI-20190529: 20190529
>   CI_DRM_17732: f101d56dc32350daa45c130ff7a6d46512f614a9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8674: f38f4d8e9c65aff45ac807e646d06e38bc3193a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_159388v3: f101d56dc32350daa45c130ff7a6d46512f614a9 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159388v3/index.html
