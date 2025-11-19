Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8612AC6FF37
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 17:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98F9C10E668;
	Wed, 19 Nov 2025 16:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kq54srMQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E689A10E65E;
 Wed, 19 Nov 2025 16:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763568547; x=1795104547;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Yz9W7YwDS/81/JSFJpXUNn56N6ESTFIXUN0dUJd244Y=;
 b=Kq54srMQYiP1HE8MrUq6boKZa1hT+SBWJhYN/Jk/8WSPhU9hAMX6sAm4
 VQ8v8gOvSd7dOpfjuh9gA8P5uAp+43wrMQlrtOR9aohLMnLX5uuiwi9iO
 TVYNAWsp/vIaJ5ToH6JpEvxYgqy3xV6zIgPI1MopltT4NMQ5Vz7wV61Qm
 4SRPZiE4aNlyZ2RIGQ3xMUZ9sGCMYwErM205eTJHQgB0/qYGnlG6Fj9bJ
 bdQa3OIUD6uWw8d3oU+XLRUqj7oGRqes031bbThakGDkk7TvlUiCl/AUy
 LZbTmTKVQt2mZjjKv3xCxlEuIsuWEzLREG7mETpbEFNDCVBmGPIBDVHj9 A==;
X-CSE-ConnectionGUID: k7PbV/zuS3yHqpfdFNkR+w==
X-CSE-MsgGUID: /jqap2VfSe+uspjbYtttkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="83238595"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="83238595"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 08:09:07 -0800
X-CSE-ConnectionGUID: tCW8WmnmSluIInxpS1WwSA==
X-CSE-MsgGUID: x/2benhCQh6puFU0TtTCsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="195218814"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 08:09:06 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 08:09:06 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 19 Nov 2025 08:09:06 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.29) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 19 Nov 2025 08:09:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aQjc/gBZ6xz//JkqN1VU8DshXRb4N0kEMkRckwWHfVVLuwkyH5qpoGDxvKg1j6Aqv6DXNni1CXsWhMsHI/yQIyY2pILP7PHkA/DxHr7R8apxBuiLn/J/GLi21RwyTCx51fnYORSdG/ZwcNuxOB+DsVhanrs/PD/eU1oUIbptROMpMSPwuSuEp/xJpJ+5NaI6637H5Rb6/bCjvh52oP0ZT7tG28hKwJYeoLGh+R4gxUkvaBGSHjCk7Hs9TlqXQh0zrn4b1+sOUNDJkxqa5UQb0b/fTh4Wg94JswGdfl3qWGpjwWncaNcIwf1j7flCEnst11fe5poJmLkQKU8gthJxPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ZLfU2QOVr4S0idLp3wTe+FKgcmkvJI9gHA3KxM5DzI=;
 b=aKcHfu1+DTZsZj2Jwuu9d8RuyrAKQS2fcaMbEd5E1lvxYYoxcS/mjYsCfY9m64hOcH3mgdRzNqQjTe1PnsnF3S5OT7H8V8LPSOOTfyPFjiWnfLdPq5Ff/LGSFvwvNMchCem/nX/OVAkRkMjqn7Ee3rv2aq6gECxrPjb6O0qWIlBRypDljd9lxpCXElsvc5nheVMi+ZK/5naKVIoB/0j/RVy3cJV02jnViuHjKwi0JTzY9p/76eM9D033yssfRsAmrrxv/iyBJ51ZrfVYn0AVU00P/G2uPDWz4Epj0AiNLLFpMNpvxCYMhjqyDd8IjEVgzPRaGlS0o1dM4GFG/PgPFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH0PR11MB5234.namprd11.prod.outlook.com (2603:10b6:610:e1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Wed, 19 Nov
 2025 16:09:02 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 16:09:02 +0000
Date: Wed, 19 Nov 2025 10:08:58 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/display: change pipe allocation order for
 discrete platforms
Message-ID: <zwnd5dffcsqtclwepv5ujcuofisozrdqfyhu4j4qoscksb5tm7@qsllynjzq3bp>
References: <20251119153321.2640969-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20251119153321.2640969-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0332.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH0PR11MB5234:EE_
X-MS-Office365-Filtering-Correlation-Id: 4be04f9a-4897-46ab-3970-08de2785f451
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?H9sTZqMHBZjYnGYZH0djTNDIHwdXFYK9p4niuZL6qXJA1welnNIo2Ckc+WfF?=
 =?us-ascii?Q?7mwsrmbR3bUJPYt32KrCObPfYVwnrOMJzUkaxdKqvU2euwrXGZH7lTKcGQtl?=
 =?us-ascii?Q?bXFHa7DX896pxm5AqcqEkNcIQm45WNiTroLPN2Xz8/xB+guIj/9M7vHmGeks?=
 =?us-ascii?Q?yaywXn1SVIyypFs+DH5KLyB/CtwzmT2iNWKdOi1TU10Nz5u17y8z5g3GVbZH?=
 =?us-ascii?Q?h6voW0MJ1ehxqbD0YcBFxAdmaHj7BvNrrSMuI9jrhDGGHQt5sH1R1kWH0D+9?=
 =?us-ascii?Q?eoGPhzpyjLDpUoC5kBfqo71dIwjghx8q3WkEO5WAqeYsU+ntpRvEvNIXZMwM?=
 =?us-ascii?Q?0cC2Ww77/87/8CT/CE/nmIlZtpz7p349ZOj7cvalpaVxDo3VRROxcTxeQ8O6?=
 =?us-ascii?Q?SiVWMimF/UkhJ+yfewBORNWSoh+6cSzPghgmmRCJCWOD2tAHkU8Hhka7JtvV?=
 =?us-ascii?Q?MoaVtez0ybk9fzsXiVJ1izGwRGMDAh7wve37HoqgnlBj3pegiyffvE62en6y?=
 =?us-ascii?Q?dizLqT9KCL3VZ/rJIr7WmXrTee1Fy9x9lELtavUTbzB2msjQlwJj0xCsyWMV?=
 =?us-ascii?Q?F1jU7SmkRl7qgJFMFk1JYu0ab7fhWzr1zjX4wFhI/+0LXKbHmLCfYiLoxA/2?=
 =?us-ascii?Q?R2OEMqSXCjZ5hAuXeQxB46GMFmYBGCpAojADUY1TReFBgIi2YwQRKRjQhujR?=
 =?us-ascii?Q?vRQWr9lh7weLmVFIiIPVRf9ucqpDd/9ee3FhM8J/YxBbY54xtACsEP1Br59X?=
 =?us-ascii?Q?v7kHbKCXkc9Y6e/KbaOQsM6giSDS/xkDwV0shHttj9UVC7MP6sOGYcomHcxC?=
 =?us-ascii?Q?S12NezAJHSsViCwBVx5KphSBD3xWE+lM9cbeQgYUEAMMhGjr9wjxhedc0rXL?=
 =?us-ascii?Q?IC23CRBACcBYSihwVP49SxpuQ6y6FaTJPtn8ChGR/fnEGVmkgiBNDqwVcnGU?=
 =?us-ascii?Q?1MWb8oozDupb5OqnESRKtBtOqnF1JhrYW5XPHdb7r8Z+wV+xnb078ENuwPOU?=
 =?us-ascii?Q?sK8u4hr1uCO/e2XOPZKyEuiPE67J0AY5SRCC8f707g7FNjeTH2oSQilWnpbO?=
 =?us-ascii?Q?9RGoRQa5YLgpxaOnM80P/nEosgFB/RIfJZPp3nmFs8ozcEXX9hdd7n+WOGNg?=
 =?us-ascii?Q?KNWrcj5Om8z0ox0UXc/eUTVgFAbb6g7PCuT2rOcBQSVs1HW/2lqiJJDDcykb?=
 =?us-ascii?Q?WmnpC378gFk1bZ0K5u7YfJiQ6e/VdkSnBJIOz9RNs5TJB+7dj64K9nhi1ce9?=
 =?us-ascii?Q?DTaMrQKTP4XN+ElizAY0foqTaNAHiwJSROPqpL5YvztOE80/O2O5vtfi+++h?=
 =?us-ascii?Q?o7dyt2MKmzpyX1CSv5+tF0oNGJGDzw/2uULHoKX0/Khz71tvXW2UMPDL8fsk?=
 =?us-ascii?Q?GBi4hFxDFQ4+mM1zrRQwX6XVGKlSqXT8gav2nL0aWB7kuce465ju1hP2BXtJ?=
 =?us-ascii?Q?nk0kE9LlDE0QXccfPEKVjSWYU+oWdR+Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?my7PMG7Mg69AaZk5f/GcNQaf4ouX1iLiuk47IXXro38UxBr/OUr/xl1FbqvX?=
 =?us-ascii?Q?nzzsZZYcLxCdte9dOKXVhxIwIpBlIC5NDqEIUJBKkn4QDd1RRhe+E2BAeOqu?=
 =?us-ascii?Q?dMzeMzAsTZTro/M1wwIhTx5Wi4L/pMKCsWGOijKk/sdN/gdzXG6xBWoCl7s3?=
 =?us-ascii?Q?WoDqvq8KnE+EY+qhalr27/n57JHG9GIaZamkZ1aMyxpAzGpAZAP7gglxWkyD?=
 =?us-ascii?Q?Fj6wJSgQp5swIMp5JHyzXbJHUOs4NB+jcTbYgoL+HLAY+QQ9vIZF9ro/lvhV?=
 =?us-ascii?Q?mHY5o411nQDY9RILbCFetDDQ3//W9NnT1dgTi8smq/rGIGdBJGc7WhSE4eTV?=
 =?us-ascii?Q?95kSDy4bQyf+88/kH1jIjG3JgtYv7lcs1bsVhY5Rypi/AHZMwjd7VWHfCnqn?=
 =?us-ascii?Q?xRtO4HDEg813r8UnM9IQLNX4gfJj6dxA+LZNgLQV3VXvkCEA8gRS49eqUXI4?=
 =?us-ascii?Q?f1uF6v/156EbhN8Ayl+zUxL6SARUfSVK6L9Dx75a9XyWbT/z4CfjOpK6/DdQ?=
 =?us-ascii?Q?Pgwr8JhgJ4kTDBakJ/rXUslIju6h/cXTftlm7XKMsipFkACEzqRtIRewZahr?=
 =?us-ascii?Q?vdOIjidjgJf4XNUj9y5BrYqCeSwYNFW9NBye686BuLs5LzW1EjweGjHsp5iO?=
 =?us-ascii?Q?cBpnyGZfODPtpKraOI81azccAPaJuaAnZ6luOgwmEkF5Qt/d3QwhZG9mOe5e?=
 =?us-ascii?Q?xhKXL6ohJ2cYPp1wQTBlbNoAaFpaXa9BJ0ox8lUqeF4AkW2uGBSj+LxFxYFX?=
 =?us-ascii?Q?/4vQXJ0cvlkjhNwUU1NIyltBuTvKiu45kXPRKbB5NKHvxG6/qaIBYP+oPk5f?=
 =?us-ascii?Q?z7UUnBHd+EUZP2QIhiqS2nySOL4m+xsMIFZQjkgIDvqDsUUZOM7cKNFSLP9P?=
 =?us-ascii?Q?hrSZyL3lKDgxUXozpqm/G6PtUuklXZAP2oXl3kS8/++rjtlf1ExZXFeIAHkr?=
 =?us-ascii?Q?FkzkBue+boFPIroP6kpkd4gpTIjRsqpHkwnlSMQW8PErjjhJ9AftZBdfuTfR?=
 =?us-ascii?Q?OFHnIDGN0CCy150PiuAY+JHd35Pccht5Rxi4PV9zru3wNHhXNlY0RF+QH6qy?=
 =?us-ascii?Q?uwyUbUzGo5RMgezU7Hg2j9t+yViYhjR1JePSNaKnyj1Mi+BKYRfLWXUcuka3?=
 =?us-ascii?Q?BPRn/eyCMlGgaI8GfTVEWc2KeMRHn4d4XZqoUYQlcN0Y9pRWNBjPU86nDzGT?=
 =?us-ascii?Q?J7act0znOLDP0M2hEufZSlztng0YIMfX6e9sF7yo0ZfN0zz79WW3yYMPHVcX?=
 =?us-ascii?Q?0UgWdXwY5Q7qN24KdPZ2RQq3BKz5YOxwHNW6Uju4hTh1OeXOFQDdF+yY1iNb?=
 =?us-ascii?Q?fQncLbP2bE3u8BNJ+zPGWQZVbBjRoyMLgC60lm/28GJuZ/IX3wdxDutH3L4U?=
 =?us-ascii?Q?Ma4UWYjP3lo4035XUVxhRMefAHA9hZT5T50gFt3UAZyHWtRAPO+3LDK0rhN3?=
 =?us-ascii?Q?SZjcOvP2yoh72bIsmX3uOufZPrmqaIE8ccgOI8XMM9qTFX7Lf09e1Ys1mNeB?=
 =?us-ascii?Q?AjAtvQy07zhPPMALHgDItzEUmS18AsQO7eAQFSofGhm1vLvQUq7RICd3TC2m?=
 =?us-ascii?Q?p6R6/aM1pzOeAcwLpT/nkLMNr8OF3727Uwi7yVHC4x7R0HkoKZvOOlwskB2K?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4be04f9a-4897-46ab-3970-08de2785f451
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2025 16:09:02.0298 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UoTgH/EBpw53Am44AhgASy7RkYg28ZKEChU+6AGky/fzM3vKriD53f7vNR86ja+MHqs0VQTWT2aopdsBrfOCgMKuZSiIgKaTsreVymXPibk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5234
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

On Wed, Nov 19, 2025 at 05:33:21PM +0200, Jani Nikula wrote:
>When big joiner is enabled, it reserves the adjacent pipe as the
>secondary pipe. This happens without the user space knowing, and
>subsequent attempts at using the CRTC with that pipe will fail. If the
>user space does not have a coping mechanism, i.e. trying another CRTC,
>this leads to a black screen.
>
>Try to reduce the impact of the problem on discrete platforms by mapping
>the CRTCs to pipes in order A, C, B, and D. If the user space reserves
>CRTCs in order, this should trick it to using pipes that are more likely
>to be available for and after joining.
>
>Limit this to discrete platforms, which have four pipes, and no eDP, a
>combination that should benefit the most with least drawbacks.
>
>Although there are currently no platforms with more than four pipes, add
>a fallback for initializing the rest of the pipes to not miss them.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
>---
>
>v2: Also remove WARN_ON()
>
>v3: Limit to discrete
>
>There are a number of issues in IGT with assuming CRTC index == pipe, at
>least with CRC and vblank waits. With them being used a lot in tests, we
>won't get enough test coverage until they're fixed.
>---
> drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
> .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
> 2 files changed, 25 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>index 9d2a23c96c61..11e58d07ddef 100644
>--- a/drivers/gpu/drm/i915/display/intel_crtc.c
>+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>@@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>
> 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
>
>-	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>-
> 	if (HAS_CASF(display))
> 		drm_crtc_create_sharpness_strength_property(&crtc->base);
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>index 7e000ba3e08b..b5c9cdf14a43 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
> /* part #2: call after irq install, but before gem init */
> int intel_display_driver_probe_nogem(struct intel_display *display)
> {
>+	u8 pipe_mask = U8_MAX;
> 	enum pipe pipe;
> 	int ret;
>
>@@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
> 		    INTEL_NUM_PIPES(display),
> 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
>
>-	for_each_pipe(display, pipe) {

this would previously skip fused off pipes from
__intel_display_device_info_runtime_init(). Now we are just
going to err_mode_config if one of the (first 4) pipes are
fused off.

I think we should check DISPLAY_RUNTIME_INFO(__dev_priv)->pipe_mask
inside your loop below or IMO it would avoid some redundancy to change
that to loop twice with for_each_pipe_masked(), passing
PIPE_A | PIPE_C on first iteration.

Lucas De Marchi

>+	/*
>+	 * Expose the pipes in order A, C, B, D on discrete platforms to trick
>+	 * user space into using pipes that are more likely to be available for
>+	 * both a) user space if pipe B has been reserved for the joiner, and b)
>+	 * the joiner if pipe A doesn't need the joiner.
>+	 *
>+	 * Fall back to normal initialization for the remaining pipes, if any.
>+	 */
>+	if (HAS_BIGJOINER(display) && display->platform.dgfx) {
>+		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
>+		int i;
>+
>+		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
>+			pipe = pipe_order[i];
>+
>+			ret = intel_crtc_init(display, pipe);
>+			if (ret)
>+				goto err_mode_config;
>+
>+			pipe_mask &= ~BIT(pipe);
>+		}
>+	}
>+
>+	for_each_pipe_masked(display, pipe, pipe_mask) {
> 		ret = intel_crtc_init(display, pipe);
> 		if (ret)
> 			goto err_mode_config;
>-- 
>2.47.3
>
