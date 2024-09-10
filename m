Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA7A9742BE
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 20:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B4510E8F6;
	Tue, 10 Sep 2024 18:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W0gc+0aT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AF2B10E8F5;
 Tue, 10 Sep 2024 18:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725994380; x=1757530380;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KHr25Vgj2uYU8hsbbUPzNDfNsPu1xajT+Ux+vzBCvak=;
 b=W0gc+0aTiTDgx6WU9Xzl/aW4X3O//W9AZGxyHhmhBiTbyRqaBQUYI5Xf
 aEjVMzi0tQREYOKu47Hm6bARLECSayAWqf4QvYkT2QHzaehMUcd1oKe1f
 5TP9jina2o256MHObwMZxwdy3MMjiZs+F77exwh1LJBD/BZw91AJhPk/F
 ZEYAEKZLpB3ZJV6AGP5vejozpQFacd3JjELtH1hWoCiJPV35o4R5ewEO3
 T6r0yMcfwaQpSEQhsNrPjC184XfLja3xQx/GiojV6paN9N3wgi5x+F07S
 jziIzt28eOB/XDNSQrpztuLMPbXt4JyJ28AO/JSyEzsVoD+BNbcAggpWL Q==;
X-CSE-ConnectionGUID: z/9vzdpLQ4mjptFctfMUPA==
X-CSE-MsgGUID: Z0RLa/amTVuOmdn7adwA/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28653580"
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="28653580"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 11:53:00 -0700
X-CSE-ConnectionGUID: XgZE4OIeTb2+nT/1d1UlEA==
X-CSE-MsgGUID: l5p6kIDcQpuY9nOh47cuQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,218,1719903600"; d="scan'208";a="67415225"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Sep 2024 11:53:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 11:52:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Sep 2024 11:52:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Sep 2024 11:52:59 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Sep 2024 11:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QCbw/IWqkLs2K7U2Sg/arFQzMMdjqUHBE/BloUkAdmw/bJ7/OYUO5p0g47HMUH++io2eI3yVK9uQfdUDzuOO4CjsxEjEwnNezlVdCiHTPfukOHpnUTq+1+ebr6jyunytdokD4QnUnL9yjm+FjZojNJ91mfkpCb0emhqxf/6f4D6v9UHhfiqijbkweVjcy9tdO0ox/AMxzIShsiYix5UGaTZXilEc50GVD7TOIlv6kRkEM3bEZxSwAnyOzY6HbSN/DxlaZmHupzBGMimLjxF6ziAPNwr81NvOjV9gyoIl5w5QtiwQ3zZxNdF++ZepyYH/5NJMjtxYJXZD7wn9sJ0IiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z0DsmNeBhGIrAvFKmDUsZS9QXNHsAa8JBRj3sTkbkwM=;
 b=V3GqU3gU3uRID0TgK7cO3Ohjof2eQpZu17/Fttl2ncoIYsB0KOeMLkc2gUsxTxUVQcNWsHqzBeMyEbVXTbaWgujQcsUjMQqzw9S5zMcpNWs7mp0EyfcLaHddpUfyd3YLiNlOCq8jiVne2yUvZVwLCD5YI6y22e7HvvWhHKn/5UGkA/Rg6oNrQ4MguNuPBf13gy+LAqDBFS5y3/QoJ4nm3xb5SUaR1rr/FqVUMESHeHXUiGqCyUHRiY5rNJGyUBne5hKmrmWmbuYnK64aInowPF1mZs7+CBJrvK2YZ0CS6rP9VM962rRAG9Iyrk8SJwtPIMkxZCEZZSU/zi3gbLvEPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB6384.namprd11.prod.outlook.com (2603:10b6:8:8a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Tue, 10 Sep
 2024 18:52:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 10 Sep 2024
 18:52:55 +0000
Date: Tue, 10 Sep 2024 14:52:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 7/8] drm/intel/pciids: rename i915_pciids.h to just
 pciids.h
Message-ID: <ZuCVg4jEM34Sgaoa@intel.com>
References: <cover.1725297097.git.jani.nikula@intel.com>
 <b963446627e513ff7240e53fa1acde693514ec70.1725297097.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b963446627e513ff7240e53fa1acde693514ec70.1725297097.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:303:2b::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB6384:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cbee333-f55a-402b-0c23-08dcd1c9c7b4
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?6xfvzggXdFlsvHzFNpX3qGnqW1WTz/0oSe+rA4Dn3QCj9GQRwGtPWsw/Ri?=
 =?iso-8859-1?Q?s8B2pcAt4lXdNMtnOBsEjUY7m6Ia0EMiQA6f3j780U5SxW/waOM6U6HjG9?=
 =?iso-8859-1?Q?/d8ryHdCskb/CWQaxoVd62mRIQOkuWlYYc0NyPHKKNruknHPj7ZqKYZpYj?=
 =?iso-8859-1?Q?B673sQWfv2pPaOR676ZvkM1gYXCqQ42vtUvJqqCaESeQdmsx9J8DRp4oVy?=
 =?iso-8859-1?Q?aMvckT3RMkro3SCOLOj0bzPLLadwJDfo8YLgi8WcMj/sTjqxzXbnQltYYs?=
 =?iso-8859-1?Q?2KPqx1pZHPgYWJjbjcPdlpWHY1t5cyOU/LB8jNZ7X4wFQ35OKjG0NEw+Sg?=
 =?iso-8859-1?Q?kq2HZaJoMShG1IeFEYXAEchf/RAjFKTEO17pvCSfv79dw9KqTAva53BGn8?=
 =?iso-8859-1?Q?xSvWorW0Yi4LoePaTBI0VDFyYnOkTiVO40oCjqfuQL+88WG7OwmGLgt1dY?=
 =?iso-8859-1?Q?xlg3TsIHP+4sNnvfY1bCqa51YARQMkeNWmf+YQ5UFMub0MSwT8LNrQqFHv?=
 =?iso-8859-1?Q?Au3igUv4g0Inz9UWGCII9AnjaD9padxGyTmtSXrHFDXplJ0F/Wk663hngJ?=
 =?iso-8859-1?Q?iQQk87j+cMA4XVm9jJrD/Z9DWMbxBXymsw4WxevNA1NXrY5ix6mTZJNfSR?=
 =?iso-8859-1?Q?ko4OjCmEPdwg2N1n0hu7LmyTZSfr7Tx3E2o9QFdYlokT37eqdvnrzHyAO3?=
 =?iso-8859-1?Q?mAquKsMqQwLEHMJB3mtozr1NNahdzVAFwm7+7pBOWlh7HvkB03K4G3LWP4?=
 =?iso-8859-1?Q?sJG1cHl1wJhr+1Z9sXFn23oUH+tBG730FUW1l2R9s+axUMIDwnxXc+6ehq?=
 =?iso-8859-1?Q?rF83O+cq0xI+0HXTf7tesqHkXqogjuDrr+IBJODmxwW1iDTRubd6/gBxVC?=
 =?iso-8859-1?Q?Q0pOzhvAmvzFSCCcWUkvg9tVSu7j2lMi5W0v6g5Gcs/oMFZM8+kq1nJ6IY?=
 =?iso-8859-1?Q?xPkNPrN375pwXSAjlecABU6zwhMj3vyUiurRbU58FGIVASSGGQY1S5PGG0?=
 =?iso-8859-1?Q?copXhwEV5BfBOGXDNAO5KXuhwE8K0tBO7dfj0uWpnGfWVAqcY8sjiVvht+?=
 =?iso-8859-1?Q?YSekI75QbVD+CaVQSTvdq1b33Ssc9allDWhsG0AHF2JBzp7A36lGFK/5MV?=
 =?iso-8859-1?Q?iKfVc3aZRYkGBOsmaLSWYCQWPTtDERLoxPo7siv6S4ZOR0gF6/i3PNRhm4?=
 =?iso-8859-1?Q?LDnL5cp/QqpQ37U/DhCh3ps4+NgNr5H4teh0uGXXiU4FqnTW+8p4MEHEto?=
 =?iso-8859-1?Q?gs00YdruRehb1Ji7S8po/0AEAkKr87MSw7hCtqRgDNAC8hEch1QY7V73cE?=
 =?iso-8859-1?Q?jBIJyWGjuNtIY54r/EVYIXBrP8UHk0M98PDV/6vW5Kc/VaDbfwN8sY91MO?=
 =?iso-8859-1?Q?BowGY5XhLeqDEkZl9YVJ4r5UrZXsmj9g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nZQ6/62ZZHYQT2IylwREwPjgD1EYMHK/ARztTVqyoam64EoT/uL3YGQh5q?=
 =?iso-8859-1?Q?5d6uLERRfp+rHT1oVEHQ3NrPJGYXimhiGNbxCnY0KmKHc9fpszlNyqZUdX?=
 =?iso-8859-1?Q?V1YJCpmXGP5QwyxPRwFX4kUAMPFt0mdY9OjwiHiuo70gSkEOydEZTZv9i0?=
 =?iso-8859-1?Q?/AS7qdZyhZ0kBYAZV13GdvLhTUoKnUJSrU2oj/SwRopNM2d2CbZofozPU2?=
 =?iso-8859-1?Q?GzZVXj+Rxa/olMotY3KDmA/m15+RpwqsS4EFcVH2C07dE9TmAjR7gjq9qu?=
 =?iso-8859-1?Q?OS9TlBopfwZ5NAhycyTNZjpl5r3KDhATUXR0+103XKawC/AHQoxW3DxXS2?=
 =?iso-8859-1?Q?1HexlmRJBgTM+qxIasKD7QCJtb6wILkWAGnvRmbjsVNzU9ie4T6RM90aqG?=
 =?iso-8859-1?Q?agEczWbjR87VZQI4/qUc4wj9kIcxKjBBXWUeSZG9R/f58E2z8EIgP9aOGi?=
 =?iso-8859-1?Q?MrGx0yfH2FDCDKLvL/AZqAuT6YbrCEwaNoIUIDfRkdWZNnomXCeXk41nDI?=
 =?iso-8859-1?Q?6QuXR3pQOT0nEKUIQlK6/gUHTe2gz+FQp+5GpRQYLXlaWRu4TezCl4M87d?=
 =?iso-8859-1?Q?uJJ4b6FBzj8SpepowG3CL/99Zu1DJGgfz3xCmsBJUUcBxbTcmdYtptEUEn?=
 =?iso-8859-1?Q?YUSGhimnhL+PAjS7HUfRk2gpWzq98rjREgb6zIPPx2q+PxIqU83RzoG/Jb?=
 =?iso-8859-1?Q?ToVziesBTehZuQFyF8NoejFOZBJJ6fptxUCbuNxcts9riPbCcjt139Uoqx?=
 =?iso-8859-1?Q?rzNjIeHHjqx5ucjdY1OUsjrpIW+Ip/p9fb5grX6ylbKfxD99vll/v4j++G?=
 =?iso-8859-1?Q?8wISe3fwG/lnTlXS0pxJxmYUl2whdxS679WOcEutiuHW+bPJDugiQSlYqu?=
 =?iso-8859-1?Q?i+ydWRd2pg516uvq43XmGEpDLJi1IRftTBn9HtdABqmFOu0+fO/iZoUcna?=
 =?iso-8859-1?Q?yrh1Xd0AZehKTdBSc6Kj0knj7tnv4xjhYSaGQgxegtv7GSr1MsGHSVkBV+?=
 =?iso-8859-1?Q?/dWF3/WUTaN8I14oDXCiXioE1+gekJTmyO7IjNMiMKymWI2fn4dazuwIuC?=
 =?iso-8859-1?Q?t34kei8nMGj4WcncNlPhQo++2RWJO1rD9e+vFBkcHk6jXtfzhPIkUoilPO?=
 =?iso-8859-1?Q?vfMQnqyVst08YUqmOamIn6IIE7ctp7rCQYXXPAnNczYpOXn5s3YJLY5zRk?=
 =?iso-8859-1?Q?XU/F1sVYThJb9rDStSwons9TAMPQgFsIw1bRmZ9IGN2B0aIyUIuCJV8p8Q?=
 =?iso-8859-1?Q?Dy+LkHJL1aaqYdjV3yaih5lRNetpWLOuIE4ewHu/dpzjjq5fQlRS+uPCIS?=
 =?iso-8859-1?Q?uB2jVmJA2l847qKB5Sdxyt6IstR1kvyP1XwU2z7o5Zs4kIXHYgFKIej0aq?=
 =?iso-8859-1?Q?GBKB3MFCcl5OiPYY3o9tMZolhPwCA3LtojIeg+mHU2l9gUkTmnYFU2Cj/n?=
 =?iso-8859-1?Q?362+wQJXc0pUpKQziTrgWjnYqTG95nmxVT72/Ch4Q3wG/PADljjSaf7o8/?=
 =?iso-8859-1?Q?xkcifB+YtVYEu8/NatjvHW8dRY6SpiUL3hCRMDjmwFJ6I5wz/UhqqgVUSv?=
 =?iso-8859-1?Q?qvqIbvE/OM4d9bMOW+2LZ+/2K+jSkSRPi3jADSjLOUKO5qDY7xc3XKC1gc?=
 =?iso-8859-1?Q?CFzbodB60+IzRBgJ1i/zqZ6p7nmu60YtWpnPRX8kNdUvdRy09/3B5Gcg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cbee333-f55a-402b-0c23-08dcd1c9c7b4
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2024 18:52:55.1466 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7NNcpmm1NAwpiDmMOy9L1SugHrYBJnuys4N6Po1S5SeaL+ssKIJout0qx9QOJxGQwb+FqCR400a3U92VMT0J3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6384
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

On Mon, Sep 02, 2024 at 08:14:06PM +0300, Jani Nikula wrote:
> In preparation of sharing the PCI ID macros between i915 and xe, rename
> i915_pciids.h to pciids.h.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Could be intel_pciids.h too, but it's already in include/drm/intel
> subdirectory.
> ---
>  arch/x86/kernel/early-quirks.c                      | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
>  drivers/gpu/drm/i915/intel_device_info.c            | 2 +-
>  include/drm/intel/{i915_pciids.h => pciids.h}       | 6 +++---
>  5 files changed, 7 insertions(+), 7 deletions(-)
>  rename include/drm/intel/{i915_pciids.h => pciids.h} (99%)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index 29d1f9104e94..6b6f32f40cbe 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -18,7 +18,7 @@
>  #include <linux/bcma/bcma_regs.h>
>  #include <linux/platform_data/x86/apple.h>
>  #include <drm/intel/i915_drm.h>
> -#include <drm/intel/i915_pciids.h>
> +#include <drm/intel/pciids.h>
>  #include <asm/pci-direct.h>
>  #include <asm/dma.h>
>  #include <asm/io_apic.h>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 408c76852495..ef783648e4c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -3,7 +3,7 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> -#include <drm/intel/i915_pciids.h>
> +#include <drm/intel/pciids.h>
>  #include <drm/drm_color_mgmt.h>
>  #include <linux/pci.h>
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 617f411feb8c..4cfe339a805b 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -24,7 +24,7 @@
>  
>  #include <drm/drm_color_mgmt.h>
>  #include <drm/drm_drv.h>
> -#include <drm/intel/i915_pciids.h>
> +#include <drm/intel/pciids.h>
>  
>  #include "display/intel_display_driver.h"
>  #include "gt/intel_gt_regs.h"
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 3c47c625993e..ff9500194d15 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -25,7 +25,7 @@
>  #include <linux/string_helpers.h>
>  
>  #include <drm/drm_print.h>
> -#include <drm/intel/i915_pciids.h>
> +#include <drm/intel/pciids.h>
>  
>  #include "gt/intel_gt_regs.h"
>  #include "i915_drv.h"
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/pciids.h
> similarity index 99%
> rename from include/drm/intel/i915_pciids.h
> rename to include/drm/intel/pciids.h
> index 25ef0a17efbe..3c4ce82002a9 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -22,8 +22,8 @@
>   * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
>   * DEALINGS IN THE SOFTWARE.
>   */
> -#ifndef _I915_PCIIDS_H
> -#define _I915_PCIIDS_H
> +#ifndef __PCIIDS_H__
> +#define __PCIIDS_H__
>  
>  #ifdef __KERNEL__
>  #define INTEL_VGA_DEVICE(_id, _info) { \
> @@ -809,4 +809,4 @@
>  	MACRO__(0xE20D, ## __VA_ARGS__), \
>  	MACRO__(0xE212, ## __VA_ARGS__)
>  
> -#endif /* _I915_PCIIDS_H */
> +#endif /* __PCIIDS_H__ */
> -- 
> 2.39.2
> 
