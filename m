Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDB39723A2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 22:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC7F10E694;
	Mon,  9 Sep 2024 20:28:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhZtfA6x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B1A10E65E;
 Mon,  9 Sep 2024 20:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725913685; x=1757449685;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=PbxaQz66HnEfz+H8IekRpIhlY2QQI1XXLOJQAAicdtc=;
 b=bhZtfA6x440uzMsPyOqB+vNZNk2TCmRBYpT1THLzPT3fNp0Y9maXNWtq
 hGXDOtJk+VynrqJ02bN2k5wudKO6pqBY3mu1PoPDHtBVwqOZU7rjthp9f
 wNKQdrZlkltW8rNNoDpX+u8kWuqUBpEZHFr8Hr9nzUYZG+hCHq/U7dKel
 ZvNGmBIiWCsM8/9ascWijEL6VkQ9v/cIq1RB4fLVprS4HWk8vPeGXabV+
 qvFCwgyL7VsRP1wNMc2K8my4RO7STACbq2SOC/6EHtTnWbl9H1Sjv5K1Y
 lXauVe6oDafrba1fXrIN19z+jYglyjGYM3gtXkhn5v/BXJp4amy+cHLoK A==;
X-CSE-ConnectionGUID: N992l9FXRH2pnqySmUzVFA==
X-CSE-MsgGUID: 4j/dWL6jTC6Qk+ozLV3Qsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24500105"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24500105"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 13:28:04 -0700
X-CSE-ConnectionGUID: FQ5y0QXiTsWZiL+JQskp4A==
X-CSE-MsgGUID: gi9xWYp+QaWTLhKjoomycw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="97502311"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 13:28:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 13:28:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 13:28:03 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 13:28:03 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 13:28:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jYAnDZbPS7NqiYsMN1UinKBvTLo2/V1j5AC9QpfjSgV9YJs4vflONM6b9qDOPk8vTmgdsurSkXQYGybvEZEEXgvDgy0g0UocO+OUXsCs3fDi1mlbg9Z14YHzWpd1o6K3mIiyysRmrVvayIASrjZ7gV+IOvxsGylXLVOOliNpYjvY5beNJlzsb1r3MHry/9qY9S6HeWn99h1hmn1TuuLNH5jA5EMLz8FgoAA3HxbooEO94pV8vgs2BNI2qeNjkjbulPfWk4GpPFYdSzZcUM9cPpw7oJXmaWAv+ZKhHiE735CJEX7gpbfZ2PePG/hbaQvygvcxCc3F5L4Po1k3//tCmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZZsJtuVYKh7lE4AHaRMYcSbQaUDVMaJZV6jwYWoy64=;
 b=rS0H2HlRG6rdh6UOaxfs4H3ia5PB0cPDnItVSs8TErJdvFzHWs1OxminCpqfL/FHuNb30lrPk83JyEu2VCozDmKoJcp0RRGcS2A5Ay2Y9rR4hsLJPrqLTWRB7Tif22csFpXq4l8vjw431zCpT0zhbexmGFudZAaQRSkdGUUR3+uaVNQBFiGe4Q2Dkg2CKMzAKNTdlKmxXwc1Bx2Grf0I9LuKmfUDJBedR/zdzeQMEviO0CyH0QgTQacJy3NV5Vs9NTT6zyTanHi2iD2QdveWXPazxCQoJ/SWklGcPRba+2/XGRLcqITKuThseMbws9Ne+vUiP9GzGX+SbvZdQZstUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 9 Sep
 2024 20:27:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 20:27:54 +0000
Date: Mon, 9 Sep 2024 16:27:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915/display: add intel_display_snapshot
 abstraction
Message-ID: <Zt9aRgtEhZWhPRq2@intel.com>
References: <cover.1725888718.git.jani.nikula@intel.com>
 <12b4ec2eea2a52ab59a6b2f02cad41ed6ce29f19.1725888718.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <12b4ec2eea2a52ab59a6b2f02cad41ed6ce29f19.1725888718.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0052.namprd04.prod.outlook.com
 (2603:10b6:303:6a::27) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6976:EE_
X-MS-Office365-Filtering-Correlation-Id: 21a3ce41-cbb1-40a9-8549-08dcd10de1da
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?UMo2jMYlVnrfudVDvocHUyvUzTszL4g5/QI50ha+dIxoaoYG+OfuU8/yeN?=
 =?iso-8859-1?Q?lK8wgMIHLuiuV2QPsgrBl8weBjCbVnOwWLHpE8F62UFD0iwPaWNwLqzQ/T?=
 =?iso-8859-1?Q?HqADodg7NINfNkNNb8zbmF9EBjNxmjwul1Mr+xRxNBXm86iXyRv975Z4dN?=
 =?iso-8859-1?Q?aYuzZT2N5enxBT7ByB8ZgNe1LLCqvdnzW5DfRxW6lZCg3qnLaMRm4Df4WH?=
 =?iso-8859-1?Q?HsqKNkXkz9Kjk+ELVXsXdjUb3iLEgPRyJwpbqEyDtUcadAqUsUEKrxsS9M?=
 =?iso-8859-1?Q?oSttj190SngQoS8hW9nFRGKv2VUsWVMNvS443Qb8qSwLKiwMBeZOsYj1x6?=
 =?iso-8859-1?Q?4BxW/GcjIWg3h+JSd3niXY9SkKhPsF+BtU1vqA3GQH1b1MzRnPaqYiPENd?=
 =?iso-8859-1?Q?MG4QrvEgBTheHwgpMdtZ/H5iJzDoJE46U8UwGWqU52NuXVo9qItLZI4xGl?=
 =?iso-8859-1?Q?QfVcrkt5n27WClF8UVayIB7daCUWRDKOTJo4rzvPXAZ5t+LZPTMOFXxrLH?=
 =?iso-8859-1?Q?hvRumrJdFQRMXc7WCPRmshTAiDAk2Q1GBQVGazxp7NjZTA1hD0MT5iQtRJ?=
 =?iso-8859-1?Q?H1F15m63zbz4q+DKCj6aI3z1qLo7WJ4soqPMYYpcYmS4nQm3KMuj9cmC6M?=
 =?iso-8859-1?Q?8sQHbBOvaqwjfFgU44ASMP4MyZIZ5WXcsAx5pIovkBI40IBmvg4MM5xpev?=
 =?iso-8859-1?Q?mOkP07EABOPiEwN8DX/kbDjtmLtknwmiKuszBOVSvdjHbnkTGHe9uy3Ajx?=
 =?iso-8859-1?Q?sQ+EVBAR6WUTnEpBj+r+SpOYYKQcyH/h4BiyXX6W/wA6USq0xxUwBqOqxf?=
 =?iso-8859-1?Q?D8YmazaZwFNwPG/Pwm26yCIvwB4iUe2Yj2k1BKGiiG+WcANARmbN9Tezcn?=
 =?iso-8859-1?Q?6oKyoXWAn9vuUli8vbnUfbwsww22LWnikxRmArqQD2RZ8ijTBi3Qe2t040?=
 =?iso-8859-1?Q?iTCKZHVkO9yxAntISwDVes9jjrtF44N3Vj0tRiNnUmVjcY9XJDW24E9yrD?=
 =?iso-8859-1?Q?u3lo0k/ozoPKZKafr0kCyvMKvOw+7OjUyb8ClczUQK4xyyUCwwnSyTWccF?=
 =?iso-8859-1?Q?KD2cug3O0XViTPxEt2P5RKPxq8Fz5uC28VyMNLuh15JqtC3kvG1Qcsw3/0?=
 =?iso-8859-1?Q?f/X2u1bxEHC8AC6rRWISPFhvKn5AdFF+H6ZzAPeH44tVGPlFfZMRdKlfIT?=
 =?iso-8859-1?Q?+q8fhCvhW7N+HtHv6S87tC3m+d6oybaZY0CKZrqS71YfLyTrJuRvonhU50?=
 =?iso-8859-1?Q?JFJtfNITcofC4BWDAMGkEj4GOvxVh5FH8XwDEhUOS7Sm/iY1w5y6+7iAL3?=
 =?iso-8859-1?Q?LIJvM4OuXtqkGVn2wZhDX4fKCCrxfKj4dPRw8w0Pp/Z0qQCeLokOF9YRoZ?=
 =?iso-8859-1?Q?IbIVtb59DyigP+FVLR6p/fyhNojO2CEw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?93oIB0KcIycc8f+Thd+xK3aiejkFYmB4nzOGoa2evlhU+lSqlW2IPPfw/9?=
 =?iso-8859-1?Q?i7dgbFAHc6c1itZGJl0+lMgjs4SntUQoO9j1IYtyStSi6jlPXeZ/Yo0eAv?=
 =?iso-8859-1?Q?XrpP22sJsb+DGMk9e6Vs7fk9sis/ZXwJJ4eW6KPUsFXryuXI2Y5LQbf5Ys?=
 =?iso-8859-1?Q?h4Utxbffwm7URpxP5/luiRi1Md1Nd5sfLSITlgab2rZF5QWJ0pse7N3nKg?=
 =?iso-8859-1?Q?v9pjMsuRxasRtrjN7yOCYDsIcDlQFlQnN+KaSUOedZ7SoaPJ5zqGIZUyf8?=
 =?iso-8859-1?Q?zf54Ztk9C3viZGM82gSk45kDgLLji5+Ru6Z3whJ9TH5Cu53XB2ueV1dCtV?=
 =?iso-8859-1?Q?vAMxrATyHsF3c7AEMO1vIlaOLWsEJ/7zAP3z9ZfTxeCJRU/DukOKsKN6r5?=
 =?iso-8859-1?Q?zs4Pa27zVYRWiRp9QcDuUvZu1OzoQoJn7RtpR5mmW6Qjf7rX71M1V04qJO?=
 =?iso-8859-1?Q?jdBEn3/AJKjYvxe0wkMfMOZLgzwZqVwFtgBq/zXHGtFvwtw2mUVItN/Ft7?=
 =?iso-8859-1?Q?V2+aAdoYriymdl4WUmpiq7+vy0VvRlwE7Zmar/9sd8W1d4zZgJO38ZmnG1?=
 =?iso-8859-1?Q?av6hEJfrLvIEhzvMLlmGZDwXgbivWxtBzoYA94CYW7Zh0d+uAZhbTUEw//?=
 =?iso-8859-1?Q?0woR0wEOUqs7g7zcdJFYAC+LbVBjsB9IoeImDCUV/xynebOjdsbqKnHWe8?=
 =?iso-8859-1?Q?weDx/driu7cjHL5fsj/g1W6A31VSxz0Rnt6TJCf47BcJWsNVolrn7UUDJX?=
 =?iso-8859-1?Q?kLlYALUvyJBmmc1LyoA2wMlNz6t00XFAIYLG51spVlfxCuIzvIvBigrc7S?=
 =?iso-8859-1?Q?xH8XoT8p5S9kTcBvxGndCxj1w721T9aWDdKCIyxbhMW0Kf40DG0Cul19h1?=
 =?iso-8859-1?Q?UebnmepvYs7RwRtDaaOiQsqiB2a0LAJE/50luREqpmmxgsxHfqHFxmA2f8?=
 =?iso-8859-1?Q?L9NX+Ds0FD5cucRzKVio8WIoCD8Ed2pzsABLvtsc1sxf0APXOR1AfzK59I?=
 =?iso-8859-1?Q?WjCPmFygelb0u7Go5Xs4nwRcrEYouVXEp2GIkHhVan+DAWhZk+gEktmOvp?=
 =?iso-8859-1?Q?+pXEpyWsX3Ndb7vKYXCQFOrdjmsYLysCZURxO15ZHM/9XhtACqDjIcojnU?=
 =?iso-8859-1?Q?iGS4ZhMr/xEmwvxU9IjnIVicwFxa8UjONcPF/iw4V3Pf8azjerE3i0OLos?=
 =?iso-8859-1?Q?K32Owdjk4YGEPdUCzYo2eXhNFolgn/U4INEqiCb7hLF0Q0DiVY7V3TQ3H+?=
 =?iso-8859-1?Q?k52bcDtYcVjbhbW5nsz5VHh87uIUXJlM6OzZY2QwpgrYhzh7E7X8cZ3HoA?=
 =?iso-8859-1?Q?brJvbSd8gjK2K4GbKDR0aHoYMReSk53k+A/91cGF1adq2jpRustH1O8hTe?=
 =?iso-8859-1?Q?+oIOhyjSSb4vQDX/Gt33g+w4aoXGvAx1YR1gW1dRt9deG4pZaGcLCsXNEy?=
 =?iso-8859-1?Q?SdghquFpQj4V72acBORDxCbKm5BowgdsHowwWPg/tvYU+9OzGW72YAwkvI?=
 =?iso-8859-1?Q?0eYqrIYm3aUONCUy7hQyARAJJZUHpOkfvDJKDzwb/nnZ85bIyDaC+JyFAC?=
 =?iso-8859-1?Q?zr5KUinWmR+lIqHmPn/T5g4fkEKIwVb1dhVLurMNIaUteqWO269Wa2f1Mh?=
 =?iso-8859-1?Q?CqVniEvdmfoeT2dlOMuZuYcmfMmrAHWzvbICI5oPGHjGiFzoyMas2BCw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 21a3ce41-cbb1-40a9-8549-08dcd10de1da
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 20:27:54.5039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DjzB2uChec0urS9U8rrxnQBjpAP9jEe//jrMj69gv5ajtfkuBe5+jAw9kc2K29uo9fAfGtZFa/jSAEK2SBzmrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6976
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

On Mon, Sep 09, 2024 at 04:32:57PM +0300, Jani Nikula wrote:
> The error state capture still handles display info at a too detailed
> level. Start abstracting the whole display snapshot capture and printing
> at a higher level. Move overlay to display snapshot first.
> 
> Use the same nomenclature and style as in xe devcoredump, in preparation
> for perhaps some day bolting the snapshots there as well.
> 
> v3: Fix build harder for CONFIG_DRM_I915_CAPTURE_ERROR=n
> 
> v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=n (kernel test robot)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../drm/i915/display/intel_display_snapshot.c | 42 +++++++++++++++++++
>  .../drm/i915/display/intel_display_snapshot.h | 16 +++++++
>  drivers/gpu/drm/i915/display/intel_overlay.c  | 16 ++++---
>  drivers/gpu/drm/i915/display/intel_overlay.h  | 25 +++++++----
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 12 +++---
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  6 +--
>  7 files changed, 94 insertions(+), 24 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_display_snapshot.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..9fcd9e09bc0b 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -242,6 +242,7 @@ i915-y += \
>  	display/intel_display_power_well.o \
>  	display/intel_display_reset.o \
>  	display/intel_display_rps.o \
> +	display/intel_display_snapshot.o \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
>  	display/intel_dmc_wl.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> new file mode 100644
> index 000000000000..78b019dcd41d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: MIT
> +/* Copyright © 2024 Intel Corporation */
> +
> +#include <linux/slab.h>
> +
> +#include "intel_display_snapshot.h"
> +#include "intel_overlay.h"
> +
> +struct intel_display_snapshot {
> +	struct intel_overlay_snapshot *overlay;
> +};
> +
> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display)
> +{
> +	struct intel_display_snapshot *snapshot;
> +
> +	snapshot = kzalloc(sizeof(*snapshot), GFP_ATOMIC);
> +	if (!snapshot)
> +		return NULL;
> +
> +	snapshot->overlay = intel_overlay_snapshot_capture(display);
> +
> +	return snapshot;
> +}
> +
> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> +				  struct drm_printer *p)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	intel_overlay_snapshot_print(snapshot->overlay, p);
> +}
> +
> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
> +{
> +	if (!snapshot)
> +		return;
> +
> +	kfree(snapshot->overlay);
> +	kfree(snapshot);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.h b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> new file mode 100644
> index 000000000000..7ed27cdea644
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2024 Intel Corporation */
> +
> +#ifndef __INTEL_DISPLAY_SNAPSHOT_H__
> +#define __INTEL_DISPLAY_SNAPSHOT_H__
> +
> +struct drm_printer;
> +struct intel_display;
> +struct intel_display_snapshot;
> +
> +struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_display *display);
> +void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
> +				  struct drm_printer *p);
> +void intel_display_snapshot_free(struct intel_display_snapshot *snapshot);
> +
> +#endif /* __INTEL_DISPLAY_SNAPSHOT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 06b1122ec13e..b89541458765 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1457,18 +1457,19 @@ void intel_overlay_cleanup(struct drm_i915_private *dev_priv)
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
>  
> -struct intel_overlay_error_state {
> +struct intel_overlay_snapshot {
>  	struct overlay_registers regs;
>  	unsigned long base;
>  	u32 dovsta;
>  	u32 isr;
>  };
>  
> -struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> +struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	struct intel_overlay *overlay = dev_priv->display.overlay;
> -	struct intel_overlay_error_state *error;
> +	struct intel_overlay_snapshot *error;
>  
>  	if (!overlay || !overlay->active)
>  		return NULL;
> @@ -1487,9 +1488,12 @@ intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
>  }
>  
>  void
> -intel_overlay_print_error_state(struct drm_printer *p,
> -				struct intel_overlay_error_state *error)
> +intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +			     struct drm_printer *p)
>  {
> +	if (!error)
> +		return;
> +
>  	drm_printf(p, "Overlay, status: 0x%08x, interrupt: 0x%08x\n",
>  		   error->dovsta, error->isr);
>  	drm_printf(p, "  Register file at 0x%08lx:\n", error->base);
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.h b/drivers/gpu/drm/i915/display/intel_overlay.h
> index f28a09c062d0..eafac24d1de8 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.h
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.h
> @@ -6,12 +6,15 @@
>  #ifndef __INTEL_OVERLAY_H__
>  #define __INTEL_OVERLAY_H__
>  
> +#include <linux/types.h>

so, that was it?
I cannot spot any other difference between the v3 and v2.
But I also cannot correlate this to the reported errors.

> +
>  struct drm_device;
>  struct drm_file;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display;
>  struct intel_overlay;
> -struct intel_overlay_error_state;
> +struct intel_overlay_snapshot;
>  
>  #ifdef I915
>  void intel_overlay_setup(struct drm_i915_private *dev_priv);
> @@ -22,10 +25,6 @@ int intel_overlay_put_image_ioctl(struct drm_device *dev, void *data,
>  int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  			      struct drm_file *file_priv);
>  void intel_overlay_reset(struct drm_i915_private *dev_priv);
> -struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv);
> -void intel_overlay_print_error_state(struct drm_printer *p,
> -				     struct intel_overlay_error_state *error);
>  #else
>  static inline void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  {
> @@ -50,13 +49,21 @@ static inline int intel_overlay_attrs_ioctl(struct drm_device *dev, void *data,
>  static inline void intel_overlay_reset(struct drm_i915_private *dev_priv)
>  {
>  }
> -static inline struct intel_overlay_error_state *
> -intel_overlay_capture_error_state(struct drm_i915_private *dev_priv)
> +#endif
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR) && defined(I915)
> +struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display);
> +void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +				  struct drm_printer *p);
> +#else
> +static inline struct intel_overlay_snapshot *
> +intel_overlay_snapshot_capture(struct intel_display *display)
>  {
>  	return NULL;
>  }
> -static inline void intel_overlay_print_error_state(struct drm_printer *p,
> -						   struct intel_overlay_error_state *error)
> +static inline void intel_overlay_snapshot_print(const struct intel_overlay_snapshot *error,
> +						struct drm_printer *p)
>  {
>  }
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index f23769ccf050..b047b24a90d5 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -40,8 +40,8 @@
>  #include <drm/drm_cache.h>
>  #include <drm/drm_print.h>
>  
> +#include "display/intel_display_snapshot.h"
>  #include "display/intel_dmc.h"
> -#include "display/intel_overlay.h"
>  
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_lmem.h"
> @@ -905,11 +905,10 @@ static void __err_print_to_sgl(struct drm_i915_error_state_buf *m,
>  		err_print_gt_info(m, error->gt);
>  	}
>  
> -	if (error->overlay)
> -		intel_overlay_print_error_state(&p, error->overlay);
> -
>  	err_print_capabilities(m, error);
>  	err_print_params(m, &error->params);
> +
> +	intel_display_snapshot_print(error->display_snapshot, &p);
>  }
>  
>  static int err_print_to_sgl(struct i915_gpu_coredump *error)
> @@ -1077,7 +1076,7 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
>  		cleanup_gt(gt);
>  	}
>  
> -	kfree(error->overlay);
> +	intel_display_snapshot_free(error->display_snapshot);
>  
>  	cleanup_params(error);
>  
> @@ -2097,6 +2096,7 @@ static struct i915_gpu_coredump *
>  __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 dump_flags)
>  {
>  	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_display *display = &i915->display;
>  	struct i915_gpu_coredump *error;
>  
>  	/* Check if GPU capture has been disabled */
> @@ -2138,7 +2138,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
>  		error->simulated |= error->gt->simulated;
>  	}
>  
> -	error->overlay = intel_overlay_capture_error_state(i915);
> +	error->display_snapshot = intel_display_snapshot_capture(display);
>  
>  	return error;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 7c255bb1c319..1a11942d7800 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -31,7 +31,7 @@
>  struct drm_i915_private;
>  struct i915_vma_compress;
>  struct intel_engine_capture_vma;
> -struct intel_overlay_error_state;
> +struct intel_display_snapshot;
>  
>  struct i915_vma_coredump {
>  	struct i915_vma_coredump *next;
> @@ -218,9 +218,9 @@ struct i915_gpu_coredump {
>  	struct i915_params params;
>  	struct intel_display_params display_params;
>  
> -	struct intel_overlay_error_state *overlay;
> -
>  	struct scatterlist *sgl, *fit;
> +
> +	struct intel_display_snapshot *display_snapshot;
>  };
>  
>  struct i915_gpu_error {
> -- 
> 2.39.2
> 
