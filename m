Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1689387A814
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 14:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7325510E672;
	Wed, 13 Mar 2024 13:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAeW+yrX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF91D10E672;
 Wed, 13 Mar 2024 13:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710335331; x=1741871331;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Faf4qoq8H8dEMkvOp6TsmtAXnmVbOVSuRMEXnPt3Q4A=;
 b=eAeW+yrXJpUp5SWusv8KZLHtQNfIJxoFBrP+cayeRSR0UatZvsP82ulx
 8PKqIc9pbic4O/LjapQMM6JRWvC4ynujQ8rItvXG+FIEIdsH6PpXgfkRz
 6LvYs5oWn8NWGBBomVfMPWWc8zdUNEO7Ep5sX7+w8UVgKv0WZdw+gK7d7
 k/Msn1vr07K7fl+/++5/lTsFwhTpaNBQmMcyzGSXCjVSfVezoBB/n7Q4+
 1A++DWpVSV6Cr827ajpIFRFTqTMQwtz55N/YKvi7bvXf/EJh6WZn4hbdI
 9KaegCEyBC7y7uT1uQUOW2EDuAWDAl3SnthdEtiLynatt4Pgy+Ym3Apq8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="15823009"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="15823009"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 06:08:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="49341834"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 06:08:50 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 06:08:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 06:08:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 06:08:49 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 06:08:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hib2JTq16DQXy2rJuoRPf+cO0muf40J2iK76yg/tMtWYM7KR9RcT+1GQLEGO6ULC0x9zTPn5WGrkzm9AAKJPWJ9ntuXukfSQZ3JYEMAmoShj18EzRI9eyQ+g8EgsstfNwYlmq7289sCE8xptNpln4sp3rBegaZfwMBQDtJThwkbNutapvYHnClyN+zRTR9ubykiK/ir/55eRnWx47oeiCghFcjC6Em5r0CNtSsdE55tNeKz+5bW3iCgZPhK2D4dBSf4bTOqMh9c4G/KyRZpZmF9VzuT5vQ8ddALGG4kwDHNzgmPPHqvHPPa1GaXriXfUPbcS+Pif/h/fen6lH7Jphw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZKHFRo8hNnKCeoeBpNAJh5sFGt6b92jaT+jM+1JsHSI=;
 b=Nrkp89WknjwL+Q3x9bYgy0rlHxzu2V6riDUkdHU3faaQ1GZu9OvDocsrsmTTWjw9b9NQ/x43IMepEKlbdW3mBpbGfOWMUleN2Ibw/5Pu7nAx2Th6tDHt/ESNHyeNtF0quzJ5N2gkvR3Xi4qzDW93z8xnD0pamIP1xWacaSZtO0oC9Zzm0EPMzzobs/HhyeAhZLB432d3pcLA21ULfdFtNGxWoMGTG7ikfEx6NFOFaSEpa29wNRtKuv2JZ2uBaBCKw/+a/gYUq6xcYUHB2TYImlKgKCSFdUaoANfS12P0vCQh7qYz64fgC4vy9yoj2oAC9yFhWKSWZR+uJSu59EP1Lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM4PR11MB6240.namprd11.prod.outlook.com (2603:10b6:8:a6::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.17; Wed, 13 Mar 2024 13:08:45 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 13:08:41 +0000
Date: Wed, 13 Mar 2024 08:08:36 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH v2 2/8] drm/i915/cdclk: Add and use
 mdclk_source_is_cdclk_pll()
Message-ID: <7dofbrzf4wt47mblpj2oknarkhoe3ztnwvts35btcm7qnvpuol@zcp433mkkka5>
References: <20240312163639.172321-1-gustavo.sousa@intel.com>
 <20240312163639.172321-3-gustavo.sousa@intel.com>
 <20240312164905.GI718896@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240312164905.GI718896@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR05CA0205.namprd05.prod.outlook.com
 (2603:10b6:a03:330::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM4PR11MB6240:EE_
X-MS-Office365-Filtering-Correlation-Id: 7dfe0ed8-4fd7-406e-33bd-08dc435eb472
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EDM/KQGdo31m6Scc049yquR2lLP4BLEhTnCRkJveYBOon5DeXJBpO5vmEuXpfXdf7QOmWsEdO+qJ/GBi8W5riadzdkUT4XDkbwCwi0GzKZuzQ2IXMJJYsxYC1ItzP6LeUJiBEU7v0/bURivgP4eEcH/3h0d4h20vnjCDfEdaTzTmuGgMTOG5K5EnirmEbEWTSBv8X7WRJtIsBXNQu7gP7kWPOxmTnqHMFfWcNL3TcmZgt+I+Ho0ZaRJuhKQhBZbGP+DHUBYUCio1Nz4HR+vgiN/PWIM7D/fnVN+UzM8zvIjw1RNxwVGRgzi8CmOd9DIjmywuTYQrWkUiCZV9xM9yIKe+IbP+IC4714w8eqsStEGqXkC6Sk1uKSUz94+c9WAsMEbAb3vSE7SeBCW18q55B6W9oGZpKWlLoWKlf3J/Als4qz8XucIe43R9GVrzxWl125uwlra5K8M4k3Hgsmbk4x5RIDHQ0uc3Z7J4CtjoSUIjfV5XArZxslO6KaftYI504g28tVkWKBriMSjXObmDuVlkdeQcXQHmph73jmmVDw708MbcBm/zzjpZxs2FDtFxJsMsgWlz3zVM12o4yd/1P3hUdLr6ty4YxF9IdEeNWskj8JNRLAFvEvucDJpH8xdv7wCpMiZbfAwy0cO8LYy6yQiMjKk0FMQNKo2X/Ps7KFU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8HmvFdUFQXGY5ZMPWz+st7+HiFhp1fgo2TilxAsTezcIx2Yu+SygGBbZ50cG?=
 =?us-ascii?Q?m+wZ5DuEKASurWaMs7CQHDK06lAj54Hr/04uds9In98B4XjyBeGOxDxefPhc?=
 =?us-ascii?Q?SNN7STBHGeXnVUMsGJvHDmfOHAeYFZW/Lv6vnHxz3UE8F7uxe8LFXiyp/Vox?=
 =?us-ascii?Q?bLaVmC2LH4xccTxcLoK/2Wzjfw0azjT8aDccPvvssml5BIMgXgVD+nSzfpZz?=
 =?us-ascii?Q?HdfpaHcP/qhR5aVLV6NUCSYfDxw3aNUUMKpJqngFDr8t+ILP1tDqYgY0hvXt?=
 =?us-ascii?Q?nPdIyTNF9IA6IEuYZ+vg8nP5Xconqx3vr3o335yIMRbuKS8D0EgITn7+cFGQ?=
 =?us-ascii?Q?Ed33noCUlgfKDOEh3AFwILrVqnLhVePOIhOnraOi1hS2EzppT1cOBINNkZBs?=
 =?us-ascii?Q?T+sX4pDAYp4GcIh2ZVNfQj02hIL79+aG9wLA88Fo+C1IXqBZHp5K1nBVB5Bd?=
 =?us-ascii?Q?j/lNAbCSFivQ3UqFKnmujs41B5morvO36ixkzQPSIKVW8QQpiT/EnFmvZaem?=
 =?us-ascii?Q?hgQEJK299RCimzPzOPTYCl3dQqPRHJERED1KXK02k2yiQ/wxhwYH4koTqSEd?=
 =?us-ascii?Q?wHIVi6m5cN5P7i3eoD3srD+PfRhDsOIjizaMpHinlGd9VyyKFu57WS3bNj85?=
 =?us-ascii?Q?oLHS5XdF+jCWLyllb+eZjbFrk2IlkR1mFAhODj/j5IhzXZBn32ANb2+2is9o?=
 =?us-ascii?Q?fUrhk9KW2lt5rTwOSbHnMpLxRR/1+bZ0nngrLT6ILud87VoLPfH1cXoxlKS8?=
 =?us-ascii?Q?wqp6ChnX+8O4IampxmFG+KLb6lclMGT8mE9Mj+hYKEaIbvMt9hJekIykikHu?=
 =?us-ascii?Q?NxZFf33Gp84mPMYEbAE5e7SdxUw6YSMiHoa/Cxq2WEt19/ju9NWDWTNaVuaH?=
 =?us-ascii?Q?f3PztefzX3s2cHJp18N/+Wvg5EfL5cSx/ttVpThUIN1eRSZiOIphJ+Qg222S?=
 =?us-ascii?Q?zY9rXwIwaH9sovXDkNpFp6g4e9i+dCyDhvIoLdbuTjAzU7ujHf8CmyfTa+mL?=
 =?us-ascii?Q?33I6H+MsLZrDzsWO6DD3K340UptccMQo2QkolZTZieWULvVs1CfmNzx9WIQz?=
 =?us-ascii?Q?z6xVpapNCRoF9HduIDMswblcWp+FcJrWBVptPIQddQdFWGOBdKncq9ODFCw9?=
 =?us-ascii?Q?9DczsLuDFYt5B0pYCxzDzXetnIzuX9reLCLsMk0EknZT1L8Ky4yJRXkVYC1d?=
 =?us-ascii?Q?0hvlnW2cSNIuzqdDnBtauQsLuG+LIDK85Z7WXyRhkVLLuE2HHp6QNjKin0Qe?=
 =?us-ascii?Q?BctNV0l3xxgitpYputpOoNRhnulXHgvDWyw8K5xV3wHd7TGRhlQAiRTxfRWf?=
 =?us-ascii?Q?kcMo7Z8elnYsr3+b73Lx7fKkgk0cwl52jz4yYPtNpfEHnEbaQF8KbgWwpk8L?=
 =?us-ascii?Q?2I/hQWHrvHpd2d+wLySEkn64ByOujqc8A2X0iGhMd9m5JWgnZLv5biAoDFTO?=
 =?us-ascii?Q?cGbxLDstrZ6o0+8eAqWUFRuYOxejPCRFDLmZrIt+/kRG44WpFZWIXCsIigPq?=
 =?us-ascii?Q?y1D0e75AzCuwYfylbyub2LT4XbZaxvIQTlws+NhYD7eiUnW+BRkG1kScM9Ma?=
 =?us-ascii?Q?QScDbYAKupbbaemYR1jqW/0UvrE2FHE0SB50szZRbnWDxan6sMaGrvAD2KqX?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7dfe0ed8-4fd7-406e-33bd-08dc435eb472
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2024 13:08:41.4806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rtMPdy5zR1Rq7fwOJ+QwYpPNco9vEOQaiS6dMSfC/pBKsCMeP+qqIdzuRaWMjoCT8MsjXmi1L24lgDAuXOwJYWdayPouMb4risBZ3c9uiCU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6240
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

On Tue, Mar 12, 2024 at 09:49:05AM -0700, Matt Roper wrote:
>On Tue, Mar 12, 2024 at 01:36:33PM -0300, Gustavo Sousa wrote:
>> Currently, only Xe2LPD uses CDCLK PLL as the source of MDCLK and
>> previous display IPs use the CD2XCLK. There will be changes in code
>> paths common to those platforms that will rely on which source is being
>> used. As such, let's make that information explicit with the addition of
>> the predicate function mdclk_source_is_cdclk_pll().
>>
>> Arguably, an enum could be created, but using a boolean should suffice
>> here, since we there are only two possible sources and the logic that
>> will rely on it will be very localized.
>>
>> In order to get the code into a more consistent state, let's also take
>> this opportunity to hook the selection of CDCLK_CTL's "MDCLK Source
>> Select" to that new function. Even though currently only
>> MDCLK_SOURCE_SEL_CDCLK_PLL will be returned, having this extra logic is
>> arguably better than keeping stuff untied and prone to bugs.
>>
>> v2:
>>   - Extract mdclk_source_is_cdclk_pll() out of xe2lpd_mdclk_source_sel()
>>     to make latter only about the register's field.
>>
>> Bspec: 69090
>
>You might also add 68861 here since that's where we find out that Xe2


I added this while applying.

thanks
Lucas De Marchi
