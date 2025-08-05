Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F86B1BC82
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 00:28:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7096D10E6EC;
	Tue,  5 Aug 2025 22:28:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c7P4810z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB1E10E6EB;
 Tue,  5 Aug 2025 22:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754432887; x=1785968887;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=GNasY4WHrrRlYn/9V2cG4PuIhtCJtIwddk5QAOHCn6A=;
 b=c7P4810zP6i9pIl7Fgqd7U+Ke6vwhnP2YyQhhGWSRcrRlubG8V9Ms9cC
 aWV2I9+nPcmG0j8hb9vxk34wMqsKxbKcWUrPTGj1pDEOziw1lVQGsqkXL
 WYrj7NyvVVJdvpuzPrnJQywudZy7rm8AHzHmdqV29C/LVi2cvJNVHVrTA
 10Mm/ZvqWZ5l6BjFn3LZE6XJQtVlPG/ebua+HsMFyV2AV4Ypk3Czeugdo
 s/kDxj9d1RB1emmhA1vhC0n2PylN84xnpQFpkhKfOPZYvzzLFuNSv1Q6J
 goQSE8ktWST51TKvj1eLAZDUGsPkSpjUKzJw5ypulyAIB3kRTeKRh8H0x w==;
X-CSE-ConnectionGUID: Fa0Q14u2RomXanHO0VbZvQ==
X-CSE-MsgGUID: x+LHRKiJRuiaC1Ikh6gUcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56657513"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56657513"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:28:06 -0700
X-CSE-ConnectionGUID: Zww0lM4OT8iNGN+j+kOk5w==
X-CSE-MsgGUID: i0Wy+iVwQ/y2+K242VImqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195577529"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 15:28:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 15:28:06 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 15:28:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 5 Aug 2025 15:28:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a77qRV6XwDNMzU/wfw77mLqgO9URI7CNyspiJdengl+xsiy9kXZIYWJGViYzzjJkmy+EJT/q7izb7bmPeVHim8o5JCJlfRjsMMhYBnLx6ctP6LuBlf51Ehv8qjsbZgs7BMtX0tgVlkuJ6Kg0lgAJr020prmGzgKB9yRmVdztzcl5Mvg/TMtMM0QIAKCJaGnXch0DzTxdDjMr8V0NpkXr8SD4Y8tV53bD5axO3NhFiQE+4rFnIT/T7mrLY1C8QrL+H7lcvn0dmZYvVrmoDEMDMrOQ8TZDnB1azzlRhQXhPUATbxi98dyx/V8A2kai3MYaFAtDGES0I+tCUyp9KHdTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BacGdbu4r/DCMnxLOOp+BhfLczX3V4BaRdL1Usx1gWk=;
 b=frp3Hw4YNq4PU3dQQXrXPqEhHSg5ssUYmTc1p95to25gWb+3tonizY/Vj/7PwbpSI8Nr9mqcUdHbM5RNFxNbmclCc8JeYTPkBrYJgsvS0jg+SLAL2rAyDX9hLXVCzMNglkx/Qo2ZrjoUXHm/QeOxz8vWE0gDxPNBPYnGs4Hci+JUnoY1Xy1R1Of42rAqOkAeaKcblNQPZo1QeHfyYc9f0U9R5v/UuturAOOtWzIGDme7QloPnP/i3eOs4LhOElFyvPeIYAK+ToTuFQbUsWuNXHKgzO0VCBYGyJOg+MB0fpGBCmP3ovgWtkCspuubpXOJo942L2ltgYMRDJg2+tpf/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB5203.namprd11.prod.outlook.com (2603:10b6:303:98::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Tue, 5 Aug
 2025 22:28:04 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Tue, 5 Aug 2025
 22:28:03 +0000
Date: Tue, 5 Aug 2025 18:28:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 5/5] drm/i915/dram: move fsb_freq and mem_freq to dram info
Message-ID: <aJKFcINrXQvsM9ZQ@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <e8301cbddf14c52cd7c58bd2d7fb1c6d498b69c0.1753971617.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e8301cbddf14c52cd7c58bd2d7fb1c6d498b69c0.1753971617.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0P220CA0024.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::32) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB5203:EE_
X-MS-Office365-Filtering-Correlation-Id: 2620cfe4-f524-4e6b-e3d3-08ddd46f57d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Ns4ohIycUdh7jKfUbPAGP4d7Ruc4mey9G8XH3/bgydwVl3gRPIKXsZ9zyM?=
 =?iso-8859-1?Q?rsKpQXCX+N5Dcl0byw72S2XVfyXBkK+MdixOWymi5BV1mw5bBFlSbQ0E52?=
 =?iso-8859-1?Q?x1HJ4I0/aAXE9C1EOvbiA4mFaIMh1Sb24edqU0G5smbFBgQo1KxD1XwhWR?=
 =?iso-8859-1?Q?P0P1xAiAb/gaiLqdj7RMcOoqe+dWybi90wJiFTkbeh44jee/jIWSx09FQU?=
 =?iso-8859-1?Q?pQ3KckOQ44PvuLpHIqYX66l+lnmap9DVB8uIhVBXMT/QdEHXPkJiEQV916?=
 =?iso-8859-1?Q?u3ma1opCpcK6+JgDFq5JcOQn6Ok/WTCYWuyKal0Yri8zPsFDRGRB4wqcxz?=
 =?iso-8859-1?Q?GukTG0TIQyGFvPpF5aopEguk0gOyjjofTpeLkEv9GBkwC5sK/KSQTv4+6n?=
 =?iso-8859-1?Q?6u1QNcFr0EQiG+KryQUG3MXU9bNCx/iOdVka4xjhvYNgsTBceARBxQObU5?=
 =?iso-8859-1?Q?ioslKHcF+VHPNWMfDzxqwen/jMRaqa2n9fqJmm+r8CL3/wvxMxDSjCwl89?=
 =?iso-8859-1?Q?n9rqrmIdQ+Q+q01G3qC8hLZ+0ZH2VtW35MArlCKtbTUGbJrLFGI/tsVHNa?=
 =?iso-8859-1?Q?hWGQjsyA3rhlCw0MThgZ3AorTNYu43bOR32YgCr4WDeQ7UAjjo/wLRIyco?=
 =?iso-8859-1?Q?Vr+itMas2Hwnyv/DRNopgnK1CxZgMVZlUGZQSuK8bypI9An0+0mnqK0OPM?=
 =?iso-8859-1?Q?HFLYVeTacJlHhEZkr81rA3hHxwd/wXGJV2Bf1JtE3CVB87NcfhAX26FRgl?=
 =?iso-8859-1?Q?MLXdLNrF2Sm2kx6NqgcBnJNXPi/SEjzSfxNVORrW+PYoVYiX22Zlme2zRD?=
 =?iso-8859-1?Q?u69S/6NObkRLyvbTuY85sTmTTAjkH0jAgSFEdJXuKPdMu8Ooa5qLvXqB0C?=
 =?iso-8859-1?Q?zNikLnOYoyQ2rse6lcB9HLPWaNyLkI/IYYFIZGoRS4misDimw+xtdPSm08?=
 =?iso-8859-1?Q?sUQ9L/iZRcTh8+/g4iqetGIEyLchhl749P+oE8cR2CYcrid7Hfucq8GSTt?=
 =?iso-8859-1?Q?5NKw8JM0rValwjMFlUTiUzgxcFE3y2012vHKn8rD4sVsPvV7FPSHIolK6t?=
 =?iso-8859-1?Q?n+zFG0lcPrBY8OrzMHj9Z7JCO3sWZcYH/r0t1SPDRP0XBQZZgLjoccbO0I?=
 =?iso-8859-1?Q?Qd64mHONG5ZzyZwbBVMzBgyT/Afxh59NlQ2QHvD9nJ8RqGbP6ZfG/X6xSj?=
 =?iso-8859-1?Q?0PcuWC572XLz9V/LJCSqxX4tBSOJVbVYvLRVcWcaji7tVHbsca1i658ROb?=
 =?iso-8859-1?Q?dPQ+jERlganslToK33ymBNhidkdbIrTXyDbOE7GssAA120WbCzufiH6IoH?=
 =?iso-8859-1?Q?HojXkGvZV6tBCswczUenxKkwfqWBtxhEZwOZkz+dVGC7Y0Ido0SHrhzhlQ?=
 =?iso-8859-1?Q?D6nmCr0R1d2IeHc+qOS+UPccnNpYSKgGDoKb/k+ZMW9w7Ia21RUeXRcAT/?=
 =?iso-8859-1?Q?p81nlHQ79ZtuUU1dj1jC/UWVHc2/OuRgp+O9Ug=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?F/XmU5GH3yvtVpTKsalUl0ymH0VERUPPF7XXIFFR6kvhw/Npum8vJJdDDG?=
 =?iso-8859-1?Q?X8HGH+wJriADjW9GTpqtIAVbjWKT50rzmgdckcq1SsPxfMTvNNIabYx+jZ?=
 =?iso-8859-1?Q?l9QQf3y4Q7bdYPgQbKxSDIcojMYE7aldVJ+510ZmWBkXGNgCeSV7mp1SfV?=
 =?iso-8859-1?Q?JHXqQ2egwUBurL5DxwiY2zJDONSWA2hC+OdlrzCS3xz1vnVjvHGHWFRjas?=
 =?iso-8859-1?Q?evltCSE4iMu7rwS3x1bxiI3k4ZYQNlqtvfX/xrjF1VcxPucPHE32Hf1mKy?=
 =?iso-8859-1?Q?fSG7pblRsanNNc0KMd+zOygYoaEniIqgW9bJXbAWfuhnCf1o0fccqiZ6Pp?=
 =?iso-8859-1?Q?tDJWlRILSpWuEfg/Y/IzLKjOkF53mWksE5lYUDz/EuT5toXg62w9KgH8w8?=
 =?iso-8859-1?Q?fAg8zAkE2jqLkRcV3yHDkBCbuNdvg5kZU4v0FgWf+hFLcxIfjqavwmv11e?=
 =?iso-8859-1?Q?AX3OxBGVgB3dx5dCx9hfut21e5iJUNv3K6TOH1f0dMKB6RUfQOpL9o8MzQ?=
 =?iso-8859-1?Q?jgiyWUOtuiy4o33pOMDfnsO+czHgn5rAKLq2LLGUC4XSOyxpM97rBjPh0H?=
 =?iso-8859-1?Q?awtefccKXylJ3ev3rxE6Iw+3np+B5nIXvJIvm+OxAvdMSrCjdIrRnIuakC?=
 =?iso-8859-1?Q?SFw8kDXLc9TV85QvjRUmuLRhXjyPyqIOwTc89U208J8iaJ7HC5lg9wBtAn?=
 =?iso-8859-1?Q?GQmrxP5K5qFsxFBwbIyxGKy0KWwJ4qEQicjdtbXJR8owuBvgSXKWxI+Wui?=
 =?iso-8859-1?Q?L8YJzFQkQxFdS0C2Mr/AyRZnXrCBk9t3qRTfSq11JbhZEFNurF4OCikyoO?=
 =?iso-8859-1?Q?+1VE6DSI88Kba1InLgyB/d3dFxQjz3Yn4I3ANulWxivMjcu28HKhcV/7A9?=
 =?iso-8859-1?Q?gFNHLbH5lIpzdKzYcSIEjsx0xrSxFgT7FAowHfK7fOe//nmHSu5mjbRJAE?=
 =?iso-8859-1?Q?d3iVVeaicjOakAZrf8YW2NxE5niZgnF4SweNP+JGnQemPVeyZNjlvY89+q?=
 =?iso-8859-1?Q?zmSbiAfppBLP+t4DC0f6ZJV7t0Su45FlOz+cMW3QrSWY3IJxG+YmHRq9c7?=
 =?iso-8859-1?Q?UYH7YsmdPabTtsqINCwPoaKvNgTG9r/9OiEjYbEC32TQBq2ehXIoXCUfj1?=
 =?iso-8859-1?Q?wvnddWFocJXHiPUKv7d9AmkCrw2p49uSmNWKRkNFhy1GQqev55oDdQUKpo?=
 =?iso-8859-1?Q?DOAZmzozAn6zzkhvHNQMTJpyhrDf4RBgt75UMvAQjfhx/zBGt3InFd3UXd?=
 =?iso-8859-1?Q?IBn96uZt324NJVqKPNNBLLPBOio0vUbT8m6Nf+x4p6JJ9Bio56zo2SsDaF?=
 =?iso-8859-1?Q?/2iZIEM3RC96McRTRmnfKjBgeJtteoX4buakvrt6BfdcgmPJKbn1fJfyWe?=
 =?iso-8859-1?Q?BKSwF7nf+b98d/TxdlU0dDj0trHoa6lvnuR7L2qxAo9P1X8OFQ/CC/zLCe?=
 =?iso-8859-1?Q?L+HcmrZJ7oTbss+031T0wr8NgvXAzSBTso3v2q0irBqmKwrlfPgN4xoBjI?=
 =?iso-8859-1?Q?eMFBCq1inBF362Og6Fu3/510QlPb0Hq7f6Jl1KV6SGZ6jvRKfx7KhIyCWb?=
 =?iso-8859-1?Q?qltVdQT2QwH799zUyrsqQvrHNfNnXyb4Jrbcq2V7ye2tVfUkKtsifE/uJX?=
 =?iso-8859-1?Q?BO5yjoJDXLCxWS5xeE8sU6i1oFy374LPYwCDIDbDKLTq+shiFvBjV6fA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2620cfe4-f524-4e6b-e3d3-08ddd46f57d1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:28:03.8717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nlvUGmNqXxo74e6b5T/y0pNKjPLmRZ4qQVvDkVTrPOewWArFoRU29qoNlycA/uqLusleUAJMlPBWoVRHXrNgQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5203
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

On Thu, Jul 31, 2025 at 05:21:25PM +0300, Jani Nikula wrote:
> Store fsb_freq and mem_freq in dram info the same way we do for other
> memory info on later platforms for a slightly more unified approach.
> 
> This allows us to remove fsb_freq, mem_freq and is_ddr3 members from
> struct drm_i915_private and struct xe_device.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 13 +++++----
>  drivers/gpu/drm/i915/i915_drv.h        |  2 --
>  drivers/gpu/drm/i915/soc/intel_dram.c  | 38 +++++++++++---------------
>  drivers/gpu/drm/i915/soc/intel_dram.h  |  2 ++
>  drivers/gpu/drm/xe/xe_device_types.h   |  1 -
>  5 files changed, 26 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 1f9db5118777..591acce2a4b1 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -3,6 +3,8 @@
>   * Copyright © 2023 Intel Corporation
>   */
>  
> +#include "soc/intel_dram.h"
> +
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i9xx_wm.h"
> @@ -85,7 +87,8 @@ static const struct cxsr_latency cxsr_latency_table[] = {
>  
>  static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	bool is_ddr3 = dram_info->type == INTEL_DRAM_DDR3;

does this deserves a separate patch? I'm not sure if I followed here...

>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
> @@ -93,15 +96,15 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
>  		bool is_desktop = !display->platform.mobile;
>  
>  		if (is_desktop == latency->is_desktop &&
> -		    i915->is_ddr3 == latency->is_ddr3 &&
> -		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
> -		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
> +		    is_ddr3 == latency->is_ddr3 &&
> +		    DIV_ROUND_CLOSEST(dram_info->fsb_freq, 1000) == latency->fsb_freq &&
> +		    DIV_ROUND_CLOSEST(dram_info->mem_freq, 1000) == latency->mem_freq)
>  			return latency;
>  	}
>  
>  	drm_dbg_kms(display->drm,
>  		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
> -		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
> +		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
>  
>  	return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 4e4e89746aa6..2f3965feada1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -237,8 +237,6 @@ struct drm_i915_private {
>  
>  	bool preserve_bios_swizzle;
>  
> -	unsigned int fsb_freq, mem_freq, is_ddr3;
> -
>  	unsigned int hpll_freq;
>  	unsigned int czclk_freq;
>  
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index d896fb67270f..6405a3d0b930 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -149,17 +149,6 @@ unsigned int intel_mem_freq(struct drm_i915_private *i915)
>  		return 0;
>  }
>  
> -static void detect_mem_freq(struct drm_i915_private *i915)
> -{
> -	i915->mem_freq = intel_mem_freq(i915);
> -
> -	if (IS_PINEVIEW(i915))
> -		i915->is_ddr3 = pnv_is_ddr3(i915);
> -
> -	if (i915->mem_freq)
> -		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
> -}
> -
>  static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  {
>  	u32 fsb;
> @@ -252,11 +241,20 @@ unsigned int intel_fsb_freq(struct drm_i915_private *i915)
>  		return 0;
>  }
>  
> -static void detect_fsb_freq(struct drm_i915_private *i915)
> +static int i915_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
>  {
> -	i915->fsb_freq = intel_fsb_freq(i915);
> -	if (i915->fsb_freq)
> -		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
> +	dram_info->fsb_freq = intel_fsb_freq(i915);
> +	if (dram_info->fsb_freq)
> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
> +
> +	dram_info->mem_freq = intel_mem_freq(i915);
> +	if (dram_info->mem_freq)
> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
> +
> +	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
> +		dram_info->type = INTEL_DRAM_DDR3;
> +
> +	return 0;
>  }
>  
>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
> @@ -728,12 +726,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
>  	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
>  		return 0;
>  
> -	detect_fsb_freq(i915);
> -	detect_mem_freq(i915);
> -
> -	if (GRAPHICS_VER(i915) < 9)
> -		return 0;

oh! this responds my last question in the previous patch...

> -
>  	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
>  	if (!dram_info)
>  		return -ENOMEM;
> @@ -754,8 +746,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
>  		ret = gen11_get_dram_info(i915, dram_info);
>  	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
>  		ret = bxt_get_dram_info(i915, dram_info);
> -	else
> +	else if (GRAPHICS_VER(i915) >= 9)
>  		ret = skl_get_dram_info(i915, dram_info);
> +	else
> +		ret = i915_get_dram_info(i915, dram_info);
>  
>  	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
>  		    intel_dram_type_str(dram_info->type));
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> index 5ba75e279e84..97d21894abdc 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -29,6 +29,8 @@ struct dram_info {
>  	} type;
>  	u8 num_qgv_points;
>  	u8 num_psf_gv_points;
> +	unsigned int fsb_freq;
> +	unsigned int mem_freq;
>  };
>  
>  void intel_dram_edram_detect(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 38c8329b4d2c..e2206e867b33 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -609,7 +609,6 @@ struct xe_device {
>  	struct {
>  		unsigned int hpll_freq;
>  		unsigned int czclk_freq;
> -		unsigned int fsb_freq, mem_freq, is_ddr3;
>  	};
>  #endif
>  };
> -- 
> 2.39.5
> 
