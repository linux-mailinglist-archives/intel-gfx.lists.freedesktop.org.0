Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DE6B59D4F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 18:19:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41CE810E0EF;
	Tue, 16 Sep 2025 16:19:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IWOlLt+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B861810E0EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 16:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758039582; x=1789575582;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kJwlv0UjLAxOC5sZb0GuOGplBv0D74tYBq4C+qFje9I=;
 b=IWOlLt+Uuf3kq2fVG8NHTQaVpych1i10o8RmOP+BcsH6ebQ8o+3XMiFG
 HzeYX6dxGgC2foC7zH0GMOdHfDg/fUx8MaHKjMyMhWxc+9vn/GnJ1hYk6
 90LheYqzhBuXJSTHeMvNV4+b1ZfaklKEF1TmPB0OVGDIjp0i2K6s0yARo
 a/5lELUljurt1oIQNYapPiu/tg9z5kS57I4NVINCg4dZC3OIG9VbAr7M2
 E801jrmZAhaPmBCdKgRUAroappVLZFzI1DD2Wl1cmaJ0tz02PB1u9QJQf
 Avbxqibm8oKgKl+PmgMq79WKGd28/NvdLif0PYSxTkwNzpbHbJqSTowtV A==;
X-CSE-ConnectionGUID: LBLjt24USFugZX9QvtnhUw==
X-CSE-MsgGUID: PtR7hN+NRKO8iX5KdWCoDQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60242827"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60242827"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 09:19:41 -0700
X-CSE-ConnectionGUID: Cx7Nb8E9Qty4xQHAjKHTnQ==
X-CSE-MsgGUID: mv7TtmwOSJ2LBSz10HbhvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="174589355"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 09:19:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 09:19:40 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 09:19:40 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.43) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 09:19:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PoN7CC0069lCoSmtnq7P38mcuRifEVFwQ4xUFk/bj6ZELIU7vy6uu2WZe/nbvS6rXAASJjHCebt7EnNHP89tiwlo84vsgreIs1mhdB/4DivtcpROeTvspLDNfjbgzN/OW2O61kxTAaoLfsIy8CxOu+p+L5P2ydFMzQSrtEErzlkum8FIH7o/2HxcQwFdcUFutotAe4SpZV4IUBVbNRZ0Kh0tGSWhcn4cxqSP37oqKOwaMQgHwG6lbS3QjHeC+WFnI0myEc5CjgZHcN4ZXj7g7D8sHaHjd2hov8Nd7Ivczp1HNVAHRi6/8ZzYZYtGV9FXVbDoYbwAUjC5ijv7aP+6vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gvq43E3B0oJqNn0HrMZYOqyR0fRcTFkyMHVztcvya2Q=;
 b=YLvR1Hg2QgQtUuvguvSay9mMqK4UtPVnk+m0VyPEIMmQxwEOB3dIH6ZJagGld+Doh69aWT0JBTfUo7g4QUdCzOD111kkjgBOKyBmx//q28he51n/qPWx+cC6nBssbukegWa/n407wIR0zYMupIiHhSgZPDWsMUDu8d6614Avom/JsFeWxqVmjJBBWo3eAFviuqG1wQCyw/QkSlvNNd2i7U0hnwexe0pVAblBKoVxJUEUiNianPy09UyOsnc/GBYs6peYVWWgYEZYgTN3eoxIJGIAUlJTSwV4Q5WBjuMecBEljr34uJrjCRlWaZ72YyJZDaPzQ7mRnfo2BvBiHN4/VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB7078.namprd11.prod.outlook.com (2603:10b6:303:219::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 16:19:32 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.9115.022; Tue, 16 Sep 2025
 16:19:31 +0000
Date: Tue, 16 Sep 2025 09:19:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Matt Atwood <matthew.s.atwood@intel.com>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?cess_fo?=
 =?utf-8?Q?r?= drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER (rev2)
Message-ID: <20250916161929.GG150955@mdroper-desk1.amr.corp.intel.com>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175799860475.336258.14158951304193739141@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175799860475.336258.14158951304193739141@1538d3639d33>
X-ClientProxiedBy: SJ0PR05CA0017.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB7078:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cd2902e-b987-465a-849a-08ddf53cd14d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aTrBujCB0zLPZDuHnytOjp10Eg1Oo4LhURgCCLu+1oBdYG19axWRm7PcNRMP?=
 =?us-ascii?Q?RZjBDxyBYwCW4dNxTRbTM2s8D+nCGXgTAlNtppCDZNsfLEnzFBYtrdVh9Xdk?=
 =?us-ascii?Q?W1YCWSs9ROoohZmqPYHcRm4gq1fL72Op5XLOtfUubgytZmGzbcjBYw0KYHRB?=
 =?us-ascii?Q?lXSNIMcpldtguXn4ABv+mDLuw1y5rUBj4vKAQ5WuRijTPAEAVJ4cG6H2ie8I?=
 =?us-ascii?Q?BHudWf29cCKI6CTkAiehFByNGOt5zW230pPMsqTYjWtO7WAekYyDRPwyh2xS?=
 =?us-ascii?Q?fLYhMzd9brHYyKBPOWWjU1+Qh0zYC1YeN0YNfexz1uwcwRu1gGnZWfjA13VK?=
 =?us-ascii?Q?a2OxlZDKRaQQ4ndyCiuEAhGLXCj2nsTZUZR1YNnXVP+y3h3xcHoliGPbo0pO?=
 =?us-ascii?Q?ewNWBgVLmS3YbDoxUA3W+GwioiAwe8S6D2Phe0mVT8B1iEGvtWI4q0uiufgg?=
 =?us-ascii?Q?Pth2iDow4psxvtudlbc9XMqF5TAmmGyCOPnWjcHTaPRilLa9qNbS8Ch3TZ2U?=
 =?us-ascii?Q?AoJQjLBBmbSIf/XMT+wy1cnQP9fhU+xhpCLgchkEZlCIrvfpLMqy0jq+rt2J?=
 =?us-ascii?Q?OX84MHci8w+RYtAjDoBadnE57b5xUINrwtSsG95fEDGPD1RqBnu7fBO4qmCI?=
 =?us-ascii?Q?4dNsJvsByaPy7lGzb0e0lg5Tc0QuGuIGpA3jcnnciJFBcUPXsRAfMoKSn6Gu?=
 =?us-ascii?Q?t8TBoYwb3f0W8QWXKeVM2fk0Q+g0zH93LZZBx6XI4Xyem0b4hfFuSufATgPl?=
 =?us-ascii?Q?mPh7xCvxSYKlTBjcUay6amTfD50Z2jqGzNoZD5skHjfbKzh7tJ1PSl/bOY39?=
 =?us-ascii?Q?wEwDEqW58IVIjJEeXl/ArDBixNfIOMnB/Rz4wQB2CYmGq8QUrxUP9CWUEXVC?=
 =?us-ascii?Q?Z4IHDykHrkL86t64CxkTdmqML1essHdrCZ4fih511kZmtpkTET8ZPWT9kQo/?=
 =?us-ascii?Q?/pDtRuwebaNDwMeMXQ9+RMOuHOKw//X/hPROG8J8IF604Ntnv8QR6proXFP7?=
 =?us-ascii?Q?ssIedk+YWy9hAtPykxptI2Gg83IGJxiuIzlvB2EihI/0ZG7AZaJd9yrsPrzO?=
 =?us-ascii?Q?ZR9mE187XC5TgYMdVm0hNWCVqrj3Pkj7x2yyl1/Y7Fmu0rTqE9sgi9CLDYP0?=
 =?us-ascii?Q?/lGg4syQ28W0WwjoX0QnV1NZ7aqx6OoFBvC4C60DWMV6S49o9H2ayRNXyP4t?=
 =?us-ascii?Q?xjyhwBknlsvIssHmxmVn9gT9tE3X1B5mUshY+dAyK0hS1mz5fBx55S59OVag?=
 =?us-ascii?Q?1SOr+3vE62+FpA76XC75LIjgR0VinVFiyIGaqEmz0e2mHkILiKjO+qF2zuMG?=
 =?us-ascii?Q?9IBOZGe50PODrVF0lJgNaLsiFE7u2GkXxLQVwb7qBe746nZNjkEiFiTQWpfe?=
 =?us-ascii?Q?xaK7HVo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EfBXFzrWkEvLhilezDC/2BU2WCvmiybfmUJIb5WlqE3NPzXpnmq3I3l97wqp?=
 =?us-ascii?Q?GjerMnC4KDPHv2reprBatDFnHUi5P6hHO2n+EYypEpf3ymRfQct7xBXhzmGP?=
 =?us-ascii?Q?ALMpojwrKcOXFywbA3jYU/YKvwtC40k4bjQOSbi9CSkgmy8thrZF3JBywotl?=
 =?us-ascii?Q?ptTJXuueA6RGb3RQnF1rH4RR5XtfKwKVKZbfrHBUlb3CRjj1HC05nRGyZkZA?=
 =?us-ascii?Q?cEJPq00jXNfKU4bOAi5HpcLHVugeAITTGHnTLbGN7qn93ue0LCI3aBU4qV41?=
 =?us-ascii?Q?vZgzz8h3Y1QG9H3bhgotlhJcla6NWIyitm7Vn0/kw9S2oYl84txhPvHrGJbv?=
 =?us-ascii?Q?8MvBdEayYUOeu2fwlYZb5pimH6UhVLapikwO7Eov8nOnrPRjX+5VSxutcSjp?=
 =?us-ascii?Q?8FPBQ2wnWjn6q+s+Kyr849YiXl8WJ1MqN9dZPl7Tf+/N/33dgQYsDBuidxKI?=
 =?us-ascii?Q?X4rm1A0TWwVkCx5lZ1dpX+9U1YRdSCUodP/2qSysqRna8L6M2nBHVVvU82As?=
 =?us-ascii?Q?tEVELoQ6uMI86KqdEE6Rz/a1ccQtCH5DKFtxTCZDlO8d6YPYVVz+mo+Tw+In?=
 =?us-ascii?Q?Dg2J2MF3VuaIA+6WseR7zkUwCDijgbWc80PbRxDedSf4RQOI1OB3WHPS+/gC?=
 =?us-ascii?Q?vxOPdjfJwlEWJLV6lsBw917wXscMqIS921MWJ0VqcuktOsUTG458k5JKF3IB?=
 =?us-ascii?Q?Kh1HAagUw06v+4nS07ZoAloDBCT45i6j8enpWxEoLlmtSe3NLNRxRh9wvYwi?=
 =?us-ascii?Q?Mhpv7bWqcxGIFGyarUQDTZG2qFD1iLP1x617lnABAesC2c6HfgulRjgv9DS6?=
 =?us-ascii?Q?ZYnzFGpHqLk2KAWACzpOKdGJYegrf4tdfyrAF4hixFSVu65YLaEzn7uOdQdI?=
 =?us-ascii?Q?dNQ9c2jonTz0HIRmfGg687LM7Zs0NPpXYl4e5nhRRzpdzJKAxwWj3/ljqvUh?=
 =?us-ascii?Q?SxSkwthmxtK4fPqmC8E7WKrHYlVmXldhZuTaC6E6QPTSu9EQoMuZ59kjy+6l?=
 =?us-ascii?Q?MBGtq8XhD7CMDPnw5eYSuDIXP+RsvjZ27lDpgPgKmJVyQPJusVVUDVvtDSyb?=
 =?us-ascii?Q?wy0p40etEwbU48rSeyR0VFEvFHBlYdMK81Xc68aRcuAV7H54CTJVNGXT7uZ+?=
 =?us-ascii?Q?5QffyEF8yjABSvCpzIwtZkio+BHHxoRkp0fAn0jHEfaP8c8z+YyxoUISMBFG?=
 =?us-ascii?Q?yelPYzkYXjYlzB6hxAsl8rFSqq6oNnssNS4iypo9MuoC9Opm2WXmpZy0u0GL?=
 =?us-ascii?Q?aZieZQOW76KvK9ImR+bxd11AMPjtPTrMqc7Ixu7BjemcrBi3OIaHrXr1aBkh?=
 =?us-ascii?Q?RApR5MTXRR9crzaV7vLgSLOA1E/xYQbjUriyAzZ7RjrC4eP3vyYOy+kPJ+mW?=
 =?us-ascii?Q?t5GM0dgH0ajI4TMOlMxQvJEacEB2G+vx8fb8UKxbUiynlMVLTAaAH4YWIWLJ?=
 =?us-ascii?Q?4JJS77YH+ARDNMySW34n34Ab5AEnt5NDUv6Iktmip2vpE5gfvz/XtS0Tss6L?=
 =?us-ascii?Q?R89SAGtpNcB7vGhF4vgdTtyCpyYLD0gBYJk2A2HL0MBM1h4d4eyI0WkOEbzC?=
 =?us-ascii?Q?rWKBgenHCCzW8Ng+JYNr/yIw/UawR5HKYBzMIx8dQvSnh2VbVQRblwgFXCks?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cd2902e-b987-465a-849a-08ddf53cd14d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 16:19:31.7897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /zzzXQ9x8eJyjO272lxKNhe5g0Npv7mkvaXWkxDhlUkwZ96Jr08N6HucDh33OAIEL5L4Le1mXrylTrC9muSx8A2blzcEMbxtB/I/46rdGIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7078
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

On Tue, Sep 16, 2025 at 04:56:44AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER (rev2)
> URL   : https://patchwork.freedesktop.org/series/153973/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17208_full -> Patchwork_153973v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

>   
> 
> Participating hosts (12 -> 11)
> ------------------------------
> 
>   Missing    (1): shard-dg2-set2 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_153973v2_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_pipe_stress@stress-xrgb8888-xtiled}:
>     - shard-snb:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-snb1/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb5/igt@kms_pipe_stress@stress-xrgb8888-xtiled.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_153973v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu:         NOTRUN -> [SKIP][4] ([i915#9323])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][5] -> [INCOMPLETE][6] ([i915#13356])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2-9:        NOTRUN -> [ABORT][7] ([i915#13427])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8562])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8555]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg2-9:        NOTRUN -> [SKIP][10] ([i915#8555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][11] ([i915#1099])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb1/igt@gem_ctx_persistence@legacy-engines-hostile-preempt.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-dg1:          [PASS][12] -> [FAIL][13] ([i915#5784]) +1 other test fail
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-17/igt@gem_eio@unwedge-stress.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#4771])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][15] ([i915#4812])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4525])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture:
>     - shard-mtlp:         NOTRUN -> [FAIL][17] ([i915#11965]) +1 other test fail
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-mtlp-4/igt@gem_exec_capture@capture.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4812]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][20] ([i915#3281])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-range-active:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_exec_reloc@basic-range-active.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3281]) +3 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg2-9:        NOTRUN -> [SKIP][23] ([i915#4537] / [i915#4812])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][24] ([i915#13356]) +1 other test incomplete
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4860]) +3 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-glk:          NOTRUN -> [SKIP][26] ([i915#4613])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk1/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4613]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#284])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-dg2-9:        NOTRUN -> [SKIP][29] ([i915#4083])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@big-copy-xy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#4077]) +3 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_mmap_gtt@big-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#4077]) +6 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#4083])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-mtlp-4/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-prefaulted:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4083]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@gem_mmap_wc@write-prefaulted.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [PASS][34] -> [TIMEOUT][35] ([i915#12964]) +2 other tests timeout
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4270]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#4270])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +4 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#3282])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-x-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][40] ([i915#5190] / [i915#8428]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_render_copy@yf-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][42] ([i915#4079])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@reads:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#14544] / [i915#3282]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@reads.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3297]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@gem_userptr_blits@dmabuf-unsync.html
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#3297])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][46] ([i915#13356])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [PASS][47] -> [INCOMPLETE][48] ([i915#13356] / [i915#14586])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk5/igt@gem_workarounds@suspend-resume-fd.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#2856])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#2856]) +4 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@gen9_exec_parse@shadow-peek.html
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#2527])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_drm_fdinfo@all-busy-idle-check-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][53] ([i915#14123])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@i915_drm_fdinfo@all-busy-idle-check-all.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][54] ([i915#14073]) +7 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@i915_drm_fdinfo@most-busy-idle-check-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#14118])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@i915_drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@i915_hangman@engine-error-state-capture:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][56] ([i915#14969]) +1 other test incomplete
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-1/igt@i915_hangman@engine-error-state-capture.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#14498] / [i915#14544])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#11681])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#4387])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][60] -> [SKIP][61] ([i915#7984])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-mtlp-3/igt@i915_power@sanity.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-mtlp-8/igt@i915_power@sanity.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-1/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [PASS][63] -> [DMESG-WARN][64] ([i915#4391] / [i915#4423])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-15/igt@i915_suspend@basic-s2idle-without-i915.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-19/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-rkl:          [PASS][65] -> [INCOMPLETE][66] ([i915#4817])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-8/igt@i915_suspend@forcewake.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@i915_suspend@forcewake.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#7707])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#4212]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4215] / [i915#5190])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4212])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2-9:        NOTRUN -> [SKIP][71] ([i915#9531])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind:
>     - shard-rkl:          [PASS][72] -> [SKIP][73] ([i915#14544]) +23 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#5286]) +3 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][75] +4 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_big_fb@4-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][76] +9 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_busy@basic:
>     - shard-rkl:          [PASS][79] -> [SKIP][80] ([i915#11190] / [i915#14544])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_busy@basic.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_busy@basic.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#6095]) +9 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-1/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#6095]) +143 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-18/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][83] ([i915#10307] / [i915#6095]) +24 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_ccs@bad-pixel-format-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#6095]) +42 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#10307] / [i915#10434] / [i915#6095])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#10307] / [i915#6095]) +159 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#6095]) +16 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
>     - shard-tglu:         [PASS][88] -> [ABORT][89] ([i915#14850]) +1 other test abort
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-tglu-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#6095]) +34 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#12313])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#12313]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#14098] / [i915#6095]) +42 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#13783]) +3 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-dg2-9:        NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg1:          NOTRUN -> [SKIP][96] +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@hdmi-mode-timings:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_chamelium_edid@hdmi-mode-timings.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-without-ddc:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-without-ddc.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          [PASS][100] -> [SKIP][101] ([i915#12655] / [i915#3555])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-11/igt@kms_color@deep-color.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#12655] / [i915#14544])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#14544]) +9 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#7116] / [i915#9424])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [FAIL][105] ([i915#7173])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-3.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#6944] / [i915#9424])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_content_protection@lic-type-0.html
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#9424]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#7118])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#13049]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][110] ([i915#12964]) +5 other tests dmesg-warn
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x128@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][111] -> [FAIL][112] ([i915#13566]) +1 other test fail
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][113] ([i915#13566])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#3555])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#3555]) +6 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#13049])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][117] ([i915#12358] / [i915#14152])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][118] ([i915#13046] / [i915#5354]) +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#4103])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#4103] / [i915#4213])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
>     - shard-glk10:        NOTRUN -> [SKIP][121] ([i915#11190])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk10/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#13046] / [i915#5354]) +4 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy:
>     - shard-dg1:          [PASS][123] -> [DMESG-WARN][124] ([i915#4423])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-18/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-legacy.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#9833])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#13691])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#13749])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#8812])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][129] ([i915#3555] / [i915#3840])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#3555] / [i915#3840])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_dsc@dsc-with-formats.html
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#3555] / [i915#3840])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#3469])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3469])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_fbcon_fbt@psr-suspend.html
>     - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#3469])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][135] ([i915#4854])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#658])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#9934]) +3 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][138] ([i915#9934]) +2 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#9934])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3637] / [i915#9934])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-snb:          [PASS][141] -> [TIMEOUT][142] ([i915#14033] / [i915#14350])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][143] -> [TIMEOUT][144] ([i915#14033])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-panning:
>     - shard-rkl:          [PASS][145] -> [SKIP][146] ([i915#14544] / [i915#3637]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_flip@flip-vs-panning.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip@flip-vs-panning.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][147] ([i915#12745] / [i915#4839])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk6/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][148] ([i915#12745])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#14544] / [i915#3637])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip@wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling:
>     - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#14544] / [i915#3555])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][152] ([i915#2672] / [i915#3555])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#2672] / [i915#3555]) +1 other test skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#2672]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
>     - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#2587] / [i915#2672]) +1 other test skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#14544] / [i915#3555])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#2672]) +3 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#2672]) +2 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-rkl:          [PASS][161] -> [DMESG-WARN][162] ([i915#12964]) +2 other tests dmesg-warn
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>     - shard-rkl:          [PASS][163] -> [SKIP][164] ([i915#14544] / [i915#1849] / [i915#5354]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][165] ([i915#8708]) +7 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#5354]) +17 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-glk:          [PASS][167] -> [SKIP][168] +9 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-rkl:          [PASS][169] -> [INCOMPLETE][170] ([i915#10056])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#8708]) +8 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#14544] / [i915#1849] / [i915#5354]) +6 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3458]) +10 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][174] ([i915#3458]) +4 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#5354]) +13 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][176] +38 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-snb:          [PASS][177] -> [SKIP][178]
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-snb1/igt@kms_hdmi_inject@inject-audio.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb5/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8228]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_hdr@bpc-switch-dpms.html
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8228]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_invalid_mode@bad-vtotal:
>     - shard-rkl:          [PASS][181] -> [SKIP][182] ([i915#14544] / [i915#3555] / [i915#8826])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_invalid_mode@bad-vtotal.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_invalid_mode@bad-vtotal.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#6301])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_panel_fitting@legacy.html
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#6301])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#11190] / [i915#14544])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_pipe_crc_basic@read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][186] ([i915#13409] / [i915#13476])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][187] ([i915#12178])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][188] ([i915#7862]) +1 other test fail
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk1/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-glk:          NOTRUN -> [SKIP][189] +140 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [PASS][190] -> [SKIP][191] ([i915#6953] / [i915#9423])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#12247]) +4 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#14544] / [i915#8152])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#12247] / [i915#14544])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#12247] / [i915#14544] / [i915#8152])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
>     - shard-rkl:          [PASS][196] -> [SKIP][197] ([i915#14544] / [i915#3555] / [i915#8152])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a:
>     - shard-rkl:          [PASS][198] -> [SKIP][199] ([i915#12247] / [i915#14544]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#12247]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
>     - shard-rkl:          [PASS][201] -> [SKIP][202] ([i915#14544] / [i915#6953] / [i915#8152])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
>     - shard-rkl:          [PASS][203] -> [SKIP][204] ([i915#12247] / [i915#14544] / [i915#8152]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#14544] / [i915#5354])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][206] ([i915#9685])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-dpms-negative:
>     - shard-rkl:          [PASS][207] -> [SKIP][208] ([i915#13441] / [i915#14544])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][209] -> [SKIP][210] ([i915#9519]) +3 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][211] ([i915#9519])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#9519])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#6524] / [i915#6805])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_properties@crtc-properties-atomic:
>     - shard-rkl:          [PASS][214] -> [SKIP][215] ([i915#11521] / [i915#14544])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_properties@crtc-properties-atomic.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_properties@crtc-properties-atomic.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][216] ([i915#11520]) +2 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#11520]) +3 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
>     - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#11520]) +3 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk:          NOTRUN -> [SKIP][219] ([i915#11520]) +3 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk1/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk10:        NOTRUN -> [SKIP][220] ([i915#11520]) +3 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr@fbc-pr-cursor-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_psr@fbc-pr-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#1072] / [i915#9732])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   * igt@kms_psr@pr-primary-page-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#9732]) +10 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-7/igt@kms_psr@pr-primary-page-flip.html
> 
>   * igt@kms_psr@pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][224] ([i915#9732])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-1/igt@kms_psr@pr-sprite-render.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#14544] / [i915#9732]) +2 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-plane-onoff:
>     - shard-dg2-9:        NOTRUN -> [SKIP][226] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_psr@psr2-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#4235])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#5190]) +1 other test skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#5289])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][230] ([i915#12755])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#12755])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full-aspect:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#3555]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-full-aspect.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg2-9:        NOTRUN -> [ABORT][233] ([i915#13179]) +1 other test abort
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-9/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_vblank@ts-continuation-idle-hang:
>     - shard-glk10:        NOTRUN -> [SKIP][234] +150 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk10/igt@kms_vblank@ts-continuation-idle-hang.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#9906])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#9906])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][237] -> [FAIL][238] ([i915#4349]) +4 other tests fail
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@interrupts-sync:
>     - shard-rkl:          [PASS][239] -> [FAIL][240] ([i915#14470])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@perf_pmu@interrupts-sync.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@perf_pmu@interrupts-sync.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#8516])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@perf_pmu@rc6-all-gts.html
>     - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#8516])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3708] / [i915#4077])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#10216] / [i915#3708])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-mtlp-4/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#3708])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-5/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sysfs_timeslice_duration@duration@vcs0:
>     - shard-snb:          NOTRUN -> [SKIP][246] +16 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb1/igt@sysfs_timeslice_duration@duration@vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_mmap_wc@set-cache-level:
>     - shard-rkl:          [SKIP][247] ([i915#14544] / [i915#1850]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_mmap_wc@set-cache-level.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_mmap_wc@set-cache-level.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-rkl:          [TIMEOUT][249] ([i915#12964]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@gem_pxp@regular-baseline-src-copy-readible.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          [SKIP][251] ([i915#14544] / [i915#4270]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          [TIMEOUT][253] ([i915#12917] / [i915#12964]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          [DMESG-WARN][255] ([i915#14545]) -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-snb5/igt@i915_module_load@reload-no-display.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-snb1/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [DMESG-WARN][257] ([i915#13447]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-dg2:          [FAIL][259] ([i915#14889]) -> [PASS][260]
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-11/igt@kms_async_flips@async-flip-suspend-resume.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-8/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [FAIL][261] ([i915#5956]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_color@ctm-red-to-blue:
>     - shard-rkl:          [SKIP][263] ([i915#12655] / [i915#14544]) -> [PASS][264] +1 other test pass
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_color@ctm-red-to-blue.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_color@ctm-red-to-blue.html
> 
>   * igt@kms_cursor_edge_walk@64x64-left-edge:
>     - shard-dg1:          [DMESG-WARN][265] ([i915#4423]) -> [PASS][266] +3 other tests pass
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-15/igt@kms_cursor_edge_walk@64x64-left-edge.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-19/igt@kms_cursor_edge_walk@64x64-left-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][267] ([i915#2346]) -> [PASS][268]
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          [SKIP][269] ([i915#3555]) -> [PASS][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [SKIP][271] ([i915#1257]) -> [PASS][272]
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-4/igt@kms_dp_aux_dev.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-10/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [SKIP][273] ([i915#13749]) -> [PASS][274]
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-3/igt@kms_dp_link_training@non-uhbr-sst.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_flip@dpms-off-confusion-interruptible:
>     - shard-rkl:          [SKIP][275] ([i915#14544] / [i915#3637]) -> [PASS][276] +5 other tests pass
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_flip@dpms-off-confusion-interruptible.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_flip@dpms-off-confusion-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-dg2:          [FAIL][277] ([i915#13027]) -> [PASS][278]
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-glk:          [SKIP][279] -> [PASS][280] +3 other tests pass
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>     - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][282] +5 other tests pass
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [SKIP][283] ([i915#3555] / [i915#8228]) -> [PASS][284] +2 other tests pass
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][286]
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_invalid_mode@bad-hsync-end.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [SKIP][287] ([i915#12388]) -> [PASS][288]
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-10/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [SKIP][289] ([i915#14544]) -> [PASS][290] +20 other tests pass
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#7294]) -> [PASS][292]
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
>     - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#3555] / [i915#8152]) -> [PASS][294]
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a:
>     - shard-rkl:          [SKIP][295] ([i915#12247] / [i915#14544]) -> [PASS][296] +2 other tests pass
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
>     - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#8152]) -> [PASS][298]
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
>     - shard-rkl:          [SKIP][299] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][300] +2 other tests pass
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][302]
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#1849]) -> [PASS][304]
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_properties@plane-properties-legacy:
>     - shard-rkl:          [SKIP][305] ([i915#11521] / [i915#14544]) -> [PASS][306]
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_properties@plane-properties-legacy.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_properties@plane-properties-legacy.html
> 
>   * igt@perf_pmu@interrupts:
>     - shard-rkl:          [FAIL][307] ([i915#14902]) -> [PASS][308]
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@perf_pmu@interrupts.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-3/igt@perf_pmu@interrupts.html
> 
>   * igt@prime_mmap_coherency@write:
>     - shard-rkl:          [DMESG-WARN][309] ([i915#12964]) -> [PASS][310] +16 other tests pass
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@prime_mmap_coherency@write.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@prime_mmap_coherency@write.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          [SKIP][311] ([i915#14544] / [i915#9323]) -> [SKIP][312] ([i915#9323])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          [SKIP][313] ([i915#9323]) -> [SKIP][314] ([i915#14544] / [i915#9323])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@gem_ccs@suspend-resume.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-rkl:          [SKIP][315] -> [SKIP][316] ([i915#14544]) +2 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#3281]) -> [SKIP][318] ([i915#3281]) +2 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_exec_reloc@basic-wc-active.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu:
>     - shard-rkl:          [SKIP][319] ([i915#3281]) -> [SKIP][320] ([i915#14544] / [i915#3281]) +4 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@gem_exec_reloc@basic-wc-cpu.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_exec_reloc@basic-wc-cpu.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-rkl:          [SKIP][321] ([i915#4613]) -> [SKIP][322] ([i915#14544] / [i915#4613])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][323] ([i915#14544] / [i915#4613]) -> [SKIP][324] ([i915#4613]) +1 other test skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][325] ([i915#3282]) -> [SKIP][326] ([i915#14544] / [i915#3282])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          [SKIP][327] ([i915#14544] / [i915#3282]) -> [SKIP][328] ([i915#3282]) +4 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          [SKIP][329] ([i915#3297]) -> [SKIP][330] ([i915#14544] / [i915#3297])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@gem_userptr_blits@coherency-unsync.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#3297]) -> [SKIP][332] ([i915#3297]) +1 other test skip
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gem_userptr_blits@dmabuf-unsync.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#2527]) -> [SKIP][334] ([i915#2527]) +2 other tests skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#7707]) -> [SKIP][336] ([i915#7707])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>     - shard-glk:          [INCOMPLETE][337] -> [INCOMPLETE][338] ([i915#12761])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk1/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk6/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][339] ([i915#5286]) -> [SKIP][340] ([i915#14544])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][341] ([i915#14544]) -> [SKIP][342] ([i915#5286]) +3 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][343] ([i915#3638]) -> [SKIP][344] ([i915#14544]) +1 other test skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][345] ([i915#14544]) -> [SKIP][346] ([i915#3638]) +2 other tests skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-dg1:          [SKIP][347] ([i915#3638]) -> [SKIP][348] ([i915#3638] / [i915#4423])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-17/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-15/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-rkl:          [SKIP][349] ([i915#14544]) -> [SKIP][350] +10 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][351] ([i915#14098] / [i915#6095]) -> [SKIP][352] ([i915#6095]) +4 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs:
>     - shard-dg1:          [SKIP][353] ([i915#4423] / [i915#6095]) -> [SKIP][354] ([i915#6095])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-12/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-17/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          [SKIP][355] ([i915#14544]) -> [SKIP][356] ([i915#14098] / [i915#6095]) +8 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs:
>     - shard-rkl:          [SKIP][357] ([i915#14098] / [i915#6095]) -> [SKIP][358] ([i915#14544]) +3 other tests skip
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
>     - shard-rkl:          [INCOMPLETE][359] ([i915#12796]) -> [SKIP][360] ([i915#14544])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][361] ([i915#14544]) -> [SKIP][362] ([i915#12313])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][363] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][364] ([i915#11151] / [i915#7828]) +1 other test skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-rkl:          [SKIP][365] ([i915#11151] / [i915#7828]) -> [SKIP][366] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [FAIL][367] ([i915#7173]) -> [SKIP][368] ([i915#7118] / [i915#9424]) +1 other test skip
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          [SKIP][369] ([i915#7118] / [i915#9424]) -> [FAIL][370] ([i915#7173])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-3/igt@kms_content_protection@legacy.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          [SKIP][371] ([i915#14544]) -> [SKIP][372] ([i915#9424]) +1 other test skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_content_protection@mei-interface.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_content_protection@mei-interface.html
>     - shard-dg1:          [SKIP][373] ([i915#9424]) -> [SKIP][374] ([i915#9433])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-19/igt@kms_content_protection@mei-interface.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][375] ([i915#14544]) -> [SKIP][376] ([i915#3555]) +1 other test skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-rkl:          [SKIP][377] ([i915#3555]) -> [SKIP][378] ([i915#14544])
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-rkl:          [SKIP][379] ([i915#14544]) -> [SKIP][380] ([i915#13049]) +2 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x512.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-rkl:          [FAIL][381] ([i915#13566]) -> [SKIP][382] ([i915#14544])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg1:          [SKIP][383] ([i915#4103] / [i915#4213]) -> [SKIP][384] ([i915#4103] / [i915#4213] / [i915#4423])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-13/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][385] ([i915#4103]) -> [SKIP][386] ([i915#11190] / [i915#14544])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][387] ([i915#14544]) -> [SKIP][388] ([i915#4103])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - shard-rkl:          [DMESG-WARN][389] ([i915#12964]) -> [SKIP][390] ([i915#11190] / [i915#14544])
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          [SKIP][391] ([i915#3555] / [i915#3804]) -> [SKIP][392] ([i915#14544])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          [SKIP][393] ([i915#14544]) -> [SKIP][394] ([i915#13748])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][395] ([i915#14544]) -> [SKIP][396] ([i915#3555] / [i915#3840])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg1:          [SKIP][397] ([i915#9934]) -> [SKIP][398] ([i915#4423] / [i915#9934])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-19/igt@kms_flip@2x-absolute-wf_vblank.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-12/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
>     - shard-rkl:          [SKIP][399] ([i915#9934]) -> [SKIP][400] ([i915#14544] / [i915#9934]) +5 other tests skip
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#9934]) -> [SKIP][402] ([i915#9934]) +1 other test skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][403] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][404] ([i915#12745] / [i915#4839] / [i915#6113])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-rkl:          [SKIP][405] ([i915#2672] / [i915#3555]) -> [SKIP][406] ([i915#14544] / [i915#3555])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#3555]) -> [SKIP][408] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
>     - shard-rkl:          [DMESG-WARN][409] ([i915#12964]) -> [SKIP][410] ([i915#14544] / [i915#1849] / [i915#5354])
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][411] -> [SKIP][412] ([i915#4423])
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][414] ([i915#1825]) +12 other tests skip
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][415] -> [SKIP][416] ([i915#14544] / [i915#1849] / [i915#5354])
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][417] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][418] ([i915#3023]) +11 other tests skip
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][419] ([i915#3458]) -> [SKIP][420] ([i915#10433] / [i915#3458]) +2 other tests skip
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][421] ([i915#10433] / [i915#3458]) -> [SKIP][422] ([i915#3458]) +5 other tests skip
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg1:          [SKIP][423] ([i915#3458]) -> [SKIP][424] ([i915#3458] / [i915#4423])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][425] ([i915#1825]) -> [SKIP][426] ([i915#14544] / [i915#1849] / [i915#5354]) +13 other tests skip
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg1:          [SKIP][427] ([i915#3458] / [i915#4423]) -> [SKIP][428] ([i915#3458])
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][429] ([i915#3023]) -> [SKIP][430] ([i915#14544] / [i915#1849] / [i915#5354]) +10 other tests skip
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][431] ([i915#14544]) -> [SKIP][432] ([i915#3555] / [i915#8228]) +1 other test skip
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          [SKIP][433] ([i915#12713]) -> [SKIP][434] ([i915#13331])
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg2-3/igt@kms_hdr@brightness-with-hdr.html
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
>     - shard-rkl:          [SKIP][435] ([i915#1187] / [i915#12713]) -> [SKIP][436] ([i915#14544])
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          [SKIP][437] ([i915#3555] / [i915#8228]) -> [SKIP][438] ([i915#14544])
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_hdr@static-swap.html
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          [SKIP][439] ([i915#10656] / [i915#14544]) -> [SKIP][440] ([i915#10656])
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][441] ([i915#14544]) -> [SKIP][442] ([i915#6301])
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_panel_fitting@legacy.html
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_cursor@viewport:
>     - shard-rkl:          [DMESG-WARN][443] ([i915#12917] / [i915#12964]) -> [SKIP][444] ([i915#14544])
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_plane_cursor@viewport.html
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_cursor@viewport.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][445] ([i915#13958]) -> [SKIP][446] ([i915#14544])
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_plane_multiple@2x-tiling-none.html
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          [SKIP][447] ([i915#14544]) -> [SKIP][448] ([i915#13958])
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-x.html
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][449] ([i915#12247] / [i915#14544]) -> [SKIP][450] ([i915#12247])
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
>     - shard-rkl:          [SKIP][451] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][452] ([i915#12247]) +1 other test skip
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#4281]) -> [SKIP][454] ([i915#4281])
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][455] ([i915#3828]) -> [SKIP][456] ([i915#9340])
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][457] ([i915#11520] / [i915#14544]) -> [SKIP][458] ([i915#11520]) +3 other tests skip
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][459] ([i915#11520]) -> [SKIP][460] ([i915#11520] / [i915#14544]) +3 other tests skip
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
>     - shard-rkl:          [SKIP][461] ([i915#1072] / [i915#9732]) -> [SKIP][462] ([i915#1072] / [i915#14544] / [i915#9732]) +6 other tests skip
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-3/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-rkl:          [SKIP][463] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][464] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg1:          [SKIP][465] ([i915#1072] / [i915#9732]) -> [SKIP][466] ([i915#1072] / [i915#4423] / [i915#9732])
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-13/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-18/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-rkl:          [SKIP][467] ([i915#14544] / [i915#9685]) -> [SKIP][468] ([i915#9685])
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][469] ([i915#5289]) -> [SKIP][470] ([i915#14544])
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][471] ([i915#14544]) -> [SKIP][472] ([i915#5289])
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-rkl:          [SKIP][473] ([i915#14544] / [i915#3555]) -> [SKIP][474] ([i915#3555])
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-glk:          [FAIL][475] ([i915#10959]) -> [SKIP][476]
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-glk8/igt@kms_tiled_display@basic-test-pattern.html
>     - shard-rkl:          [SKIP][477] ([i915#8623]) -> [SKIP][478] ([i915#14544])
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern.html
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][479] ([i915#14544]) -> [SKIP][480] ([i915#9906])
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-rkl:          [SKIP][481] ([i915#14544] / [i915#2437]) -> [SKIP][482] ([i915#2437])
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-6/igt@kms_writeback@writeback-check-output.html
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-2/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg1:          [SKIP][483] ([i915#2437] / [i915#9412]) -> [SKIP][484] ([i915#2437] / [i915#4423] / [i915#9412])
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-dg1-18/igt@kms_writeback@writeback-pixel-formats.html
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-dg1-13/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][485] ([i915#3291] / [i915#3708]) -> [SKIP][486] ([i915#14544] / [i915#3291] / [i915#3708])
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17208/shard-rkl-5/igt@prime_vgem@basic-write.html
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/shard-rkl-6/igt@prime_vgem@basic-write.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13427]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13427
>   [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
>   [i915#13447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
>   [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
>   [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14850
>   [i915#14889]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14889
>   [i915#14902]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14902
>   [i915#14969]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14969
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#1850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1850
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17208 -> Patchwork_153973v2
> 
>   CI-20190529: 20190529
>   CI_DRM_17208: 4b2a554c1553f8de414acede44c326055ae2833c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8540: 8540
>   Patchwork_153973v2: 4b2a554c1553f8de414acede44c326055ae2833c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153973v2/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
