Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D2DB1C57C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 13:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5FE10E754;
	Wed,  6 Aug 2025 11:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O+oZKQuz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5951C10E754;
 Wed,  6 Aug 2025 11:55:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754481301; x=1786017301;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=3ECPWHjfa5OVr9yXi0IFN83VjeuTpLIEydRjEhDZi+s=;
 b=O+oZKQuzbvLSYyA4kXnoFEtvAc/q062ipkwQmbzCOGXQqL4s0uM7h/tp
 wc4TMEtmm/3BwV+r5Al+3lE9bkC+/NwCdhxwIKXhJ8xT4pwr7A+OG2qn5
 NZm32vPvarro/WQUK2nMGrUv2aQl/tXLvexutwrc0oOLETpJXE6CQqa3t
 nmvf9hkSfOVatcY5EYvFqgzmIkj207RzxJD42LKN0tQrOCgirOgxB5K73
 nw7gHKFsfCfLY2ua+Wsgn+lUSMsY28XsxYlQy5gl26XLhlUH6vy/V6di/
 OMOqH8dOjiVMC/PrcZhJF+UJ/Zs8hchN4Rd55RsaPw9gFoVlDziEZWYln A==;
X-CSE-ConnectionGUID: uUCEm4NKTqOYmq0rcWZadA==
X-CSE-MsgGUID: q1aHp7iqRQu+xEdKd6l0YQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56509376"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56509376"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 04:55:01 -0700
X-CSE-ConnectionGUID: OZ3HOiKjSLyjPAFuX873+w==
X-CSE-MsgGUID: iF5l1UuZSsmIij6QManl2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="169004066"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 04:55:01 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 04:55:00 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 04:55:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.66) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 04:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O3+w+Ra6vEadW+sZCHeBmoOO17n7p+lGST892uS4UuUf7o+EFeIKhPnvtGD7OuyvVA1hsfMf775TWd6ZJcHbjSZpYCt6qnPwrfwfNihRnOuEF/Mgan5jAf7DQotxgMOdswFXOCIazC4B1//M3kmcl7A5HoMzgjH/vGAiDYHennNJdE9+QG7b/lm1l880e1kcYJXF4qMDgeWcsZ6h72dlWM2uxl5eXlEjIDATzhiaCW33FLYpLyWsEi8/6WYDOfclx7r4HZW1khKchUhQbKEhI7N/87erkbiUSA3URXaPgZEiUII3urDLpC3/SsQbJeRUc27tplKrnmQ0cDDsV5Aq0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C4Vodw3qO5p3rfU+StJ9IvDNHCBP/HZJZYu9ntTSODA=;
 b=OfJPKVPZUt0S9V2F9ZH3Z9t0g4/Ha3tzJdOTBd2yUQvHKQZPSXbDR5hG61Mwf9WOTh/SnqK1WORu/vyEVnHuoPMwmu8jOxO+NJCFgdH1fUoeDRWif4GEnkjA5oO0tBuUCJeuSKkPBmMwrAnOIqE+XU9ZB5O6QzUybO73KAMgs022Mxs+3kL7EsFjZf6lunj7AMbqztryvCc4xeYh6hu2nzzWG56qJpPKO6IRduJWIBQ4QTN0WAwlAL57BQ8Kb0UV3XXQeZds30dO64MOKDtxs7TZAjvmV81+00ru11q/3BkALCSCZHz55LvzmxsbNuAQpaKVxM/q/A8XKyOzeOpS1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB6950.namprd11.prod.outlook.com (2603:10b6:510:226::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Wed, 6 Aug
 2025 11:54:58 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 11:54:58 +0000
Date: Wed, 6 Aug 2025 14:54:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Charlton Lin <charlton.lin@intel.com>, Khaled Almahallawy
 <khaled.almahallawy@intel.com>
Subject: Re: [PATCH 00/19] drm/i915/tc: Fix enabled/disconnected DP-alt sink
 handling
Message-ID: <aJNCicpwIY2YtAun@ideak-desk>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <7920b8ed0ae141aecae8d40177f35e642cb1ca16.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7920b8ed0ae141aecae8d40177f35e642cb1ca16.camel@coelho.fi>
X-ClientProxiedBy: DUZPR01CA0146.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB6950:EE_
X-MS-Office365-Filtering-Correlation-Id: a6e4db5a-6586-4562-f479-08ddd4e010f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SotqN1SmwEplErNerYOZAtcMH9uSUyTAvyzv5LL2LCwdvESiAcqk4ORj7lmd?=
 =?us-ascii?Q?zDSE3ArekQs7RTEX+Lpj7X8ReQkrRZVAT0DzJ7tZYJDl10PPfeq3GlU/kKDM?=
 =?us-ascii?Q?Ck0VEjPvkwc33euMK7bLEhRqd7WtR75RXDRJAyPV4C/4MevTcXw11p97WaJO?=
 =?us-ascii?Q?b2sN//4pin7H03xmeXIvMR90MUp7fo/4Gjfkg6rdBiYu3dh4ieLdrL3R5v0b?=
 =?us-ascii?Q?D5gY0u2mBgQoHak6V/E46MFp0WHJ+eVb6+7DMRbqSJOpRh4vdz/XM7ZSTUk3?=
 =?us-ascii?Q?R3D5+uNjkkGstsbx6G1Na46wsBGAji7/L+IuP/TbhNRBBqbazt7dUpaRQgiy?=
 =?us-ascii?Q?MMyiz0KVRCw1SbSmlYEHncN/thv0AcYQNP5seZ4blHy7CDsMrypG/cAc20xI?=
 =?us-ascii?Q?uNGEe1/Yb1DdlmZ7Yu+oXhCtZ7+TkzUPG4vdXuU7OqDxWDPzKuwAXz1QrNEp?=
 =?us-ascii?Q?QJrfE+vczOXBhB01lMtn53LjsQhyiCeYO4UszvpDlWUeBhnLHG1TBFMrZkZd?=
 =?us-ascii?Q?nE6kZ8pcuMgu9y13PKHNhdWkO98Bso58lx/IrgU3eD86r0eJo4nkDLzGsDC8?=
 =?us-ascii?Q?qV1ZuoEZWweViemnHTX1ortMziQ06D+QOvXmtb1b8ooqUzvYWYGGM0PyxWbD?=
 =?us-ascii?Q?8xutfTJpHLoUNeJD7/pgRzUnpWe4b9QfA4FK9yi0dIlyhqz2t9zJ1lDkvns2?=
 =?us-ascii?Q?VV54BYXYJWi8AjY8fdJJSRvnPzZ4Ewd7EhYAwl0jqlZ2d6J8QJdiTp/2kS98?=
 =?us-ascii?Q?kRy/U/f9RlG2Bx3cOMuqjggnf98gB977vRxV+P47F/EmQUVw/BlJQMilimwM?=
 =?us-ascii?Q?Nhq+bB5BFyZsRVjYDFxbz4Km0++HmxlRwzoZ1LsUnUwMzZpkS9hJNP+/d2/e?=
 =?us-ascii?Q?riM1DoPpLDZ9pmkea76OlaoGopRzZbBV9v5u2YJw+uncO2yr8YMTZjlngnIo?=
 =?us-ascii?Q?1iNsHOf1mY1Vk3jxj0wh4ofg60QdXH25as4Jn0fCMMuG9/TRDo4Mez+iDkXU?=
 =?us-ascii?Q?oJQYWoaffavRdd6jMxqIy7vPo8KoM9E8bcAOqnAxQ4LkwdNQABX3ngSgT6hN?=
 =?us-ascii?Q?Pwpnuw3HD1pJn77RcRbo4ogMvmGV1daccOxlGFLhPHJxBWTbIhMtyBv3LbDa?=
 =?us-ascii?Q?qzXDEbraEohpNrutQbXcL9w7py8tIZf4BA3YbCWZGzn51mJYGeP03Uc22A+E?=
 =?us-ascii?Q?r0estKwTUhk/USHk5+DJfe3zujDuqdBBWdsrpyeu5Dmtzvrdt0e4ShtiXU0B?=
 =?us-ascii?Q?FQ7FN3IpHJMZrdcKerPsg8Qp6kqN90DTpHe4u6emyxoWaN7ISk1bD0RbXYgQ?=
 =?us-ascii?Q?VVxi7cBhI0uaZE63BEnM5vLuYmI3Ii8zNb70xNSITj5JlQAHFnrnEe4WDINB?=
 =?us-ascii?Q?Td5IfPuEOFvt7yp2EI4Q1q8MwPqH5vbEWCCpzZVuR3MK04TXNKLMZ8c5QLa8?=
 =?us-ascii?Q?CndeP4KvdH0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GyTmxiGn/RvH7YTQk5QjcYdE3CdE6R6TXtGIc5A8dU3esQvsfv4d3Y8OpY3N?=
 =?us-ascii?Q?JAg8WgJC/HJPV5chfuMlOBNOSma1E8rtwKsjPIIGA28V3PmSZKsj/PpZg7w9?=
 =?us-ascii?Q?ks1EAVKHnfb1pMa4jTtxkwnSN3PpfKGJ8f64T+zi8T8qylOTknwfata6MXRF?=
 =?us-ascii?Q?JyWLtXkdZoBAW/37q0v3g99a59RDDbgORjrWmn0C8o0tdylVelqv1LxY1vhH?=
 =?us-ascii?Q?vFvRYIDWMCB4KAdXYttBpQKvT1BCHqMaLael6/jXtOSUHramiepqox+65yLo?=
 =?us-ascii?Q?8e/vfFW7T2TqtN7in1XLn/iZBraT+Te915wucEcwzvlf7XdOegbiuwwJYQjt?=
 =?us-ascii?Q?SJk1OY6UqEYrUHcRnUP+B/uOSdZ/E8X4RQiEL8SJWyzeSBO0x5YxQnBaG115?=
 =?us-ascii?Q?a0NdLS/D8Pm3goyb3v57SmfgG6Hke0CUxc1Gsvhh5d+/u6woAzSq9eHhdd9i?=
 =?us-ascii?Q?iki1/9+9EKeH8ADvVHVGMbk58cEzmxGk/om68Y+zGPotMm2ujmI3w1qPNpfQ?=
 =?us-ascii?Q?4CfR7DcrMKUfWVYtyFYSX5a4rQXPXi/h0KsCjzsbqjP15biDoN31axhLH0qx?=
 =?us-ascii?Q?VrLm8nreSZ5slexmgdIRUw2UQFfHnlpJHeIihvq+3j9Hk/27BS6yRFennB/c?=
 =?us-ascii?Q?NgiJ7A/bM6qbJdiFRKES6BxIgu0nVGvooRyHtBiv/52KPG0DdwHchqz6g4qF?=
 =?us-ascii?Q?2S2+KHuqeLOdaXmfTnlW0PaZKxuYEOUYKFkVXL5/o4SRlF2npXywae+4dB/y?=
 =?us-ascii?Q?4txrjxAxwCM/vCJ5D7x8kBk7D2bkuzZYR8UP/XH20xpMwLNAIZpr9MfbGtzh?=
 =?us-ascii?Q?MGNgUgmivxvCautHS8ahE0DLldykA4RskONMbJFj7cgugz77gH8ZbuyO2uHr?=
 =?us-ascii?Q?zus2xL84YgLPzjyw/naqmH6lP9wPz2gqzY7/wwpmxg+Y1BzVYUuNEtK7oD5L?=
 =?us-ascii?Q?j6AmwdZqpedW4XhRjRMu9dWpqi7mUehDit9KycEK28JxQdYyBti+3WeP2WrX?=
 =?us-ascii?Q?OWdQCz2Uk4s5F2/anGRKKfzuPrYqA3+SSRcK2v+4Glc41Q69iCEJWDutjqCq?=
 =?us-ascii?Q?g/p9BpWTS/sgbM/+Cfz327eEwN1MGtX084oDM1oaUwxbWZeRzhDiQQS5aTkc?=
 =?us-ascii?Q?29MtrsVbEuiWnXjI9A+x3cHsKWrgiQJHHWxzmIZOeRzo+Wl0ntBpIIq1vBs3?=
 =?us-ascii?Q?TFVR4bk/q+QA5+Dq2vngHbEWiFNEN8dPbtKN/YeWKpwtpFdtNnSSCe9pIX+q?=
 =?us-ascii?Q?lUvIer53hUeKs7Osrksxifnw/GAj+ni7zQcVe0vFRd7hch4elGjqP8Akvbfb?=
 =?us-ascii?Q?mKIl41d7+ycwTXNK8+K4JRorSO4oIhjq0h+6QZv/USb+tWCBz7cjm1DOmWRJ?=
 =?us-ascii?Q?YhXzDTmON0aZpvk+kmXF2KvK9XjTah1H3TA0D1rsSB/wNO60WqxOy7sP0LL4?=
 =?us-ascii?Q?cIVEArG/eauuhgOp0ywaDn+sWzFg/jmH2ELOI74TpqW84g0CPuYAYL7nvsGW?=
 =?us-ascii?Q?Cqus08KMXhHiORbDLj0xCnEOQ7FiYx/vFJc5LZclhan8o16xa1yjL0wUN2UO?=
 =?us-ascii?Q?8gWD/HyaY1cjpaP6xr4MxVE3YrbgY18KtkGBpK48jxA2xv18Hxj3W1c1QVJo?=
 =?us-ascii?Q?irKUywi++7NfvXScgPNkZBDZJZ3cIzklTRbouNI5H+MG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6e4db5a-6586-4562-f479-08ddd4e010f1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 11:54:58.1581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YDoHOS/8rxdfwo9GyZcakNNiFCot5AunvH263uOi0eqe9pcqg7x/3+Em1B+nwMpI4jqd58tETbr6tpHNsDRAjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6950
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

On Wed, Aug 06, 2025 at 02:44:41PM +0300, Luca Coelho wrote:
> On Tue, 2025-08-05 at 10:36 +0300, Imre Deak wrote:
> > This patchset fixes an issue on LNL+, where the TypeC PHY's mode/state
> > is detected incorrectly during HW readout for a DP-alt sink that got
> > enabled by BIOS/GOP, but later the sink got disconnected by the user
> > before the driver got loaded.
> > 
> > The issue in the driver is due to overlooking a change on LNL+ in the
> > way the PHY ready flag and pin assignment is set/cleared in the PHY
> > registers by the HW/FW wrt. how this works on all the earlier (ICL-MTL)
> > TypeC platforms.
> > 
> > The first 5 patches fix the issue, the rest refactor the PHY's max lane
> > count and pin assignment query functions, sanitizing the code, removing
> > duplications and validating the register values read out from the HW.
> 
> If you have 5 fix patches and the rest is refactoring, wouldn't it be
> better to split the series in two?

The refactoring part depends on the changes in the fixes part, so I
couldn't send the refactoring part separately.

> --
> Cheers,
> Luca.
