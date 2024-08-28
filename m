Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56A69632A2
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 22:47:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499F210E5BC;
	Wed, 28 Aug 2024 20:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIDNhI4i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20D4810E5BC;
 Wed, 28 Aug 2024 20:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724878036; x=1756414036;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wRKRLE8NYZcMaiJVToN7Q/DszEFWy5JIlmRs0QvJ59c=;
 b=lIDNhI4itX4EcMO3dMZwXOmopm5q6v24wfd5n0NIfJncVq+hYfG+x6LV
 Fzlhq1/DZsz+7YsoS2mzGDHqDp29bXcpk64H2cszEZO+c2D3PmojQ4hgU
 Gt32fYIVokrU+iOkzQvIyS0OQTF1euAf3L/TZ8UJQ1/i/RyMNPZO4L95f
 fhWGfAFcskubdbkRyydcbh+OJNu+Eg3jO6HtU78zlukyvqCXP1p5rUPZC
 aZ+MiNp8NdJoEu6a0c13QgUoENP1sTzpt3MuLjV8wBO0OZuQGfdGukMgn
 xxjuBy1ut8dbZ+qMd/pVU1yujS7UK2GpWkvHPcpx7BQEccGLqVcl/2JsP w==;
X-CSE-ConnectionGUID: CGm9qFm1Qa2CVLuv7qManQ==
X-CSE-MsgGUID: nG7QlKn4THiXU1ki3KNtWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34009662"
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="34009662"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 13:47:16 -0700
X-CSE-ConnectionGUID: NhVciS1/QfKLKy+RH3Najw==
X-CSE-MsgGUID: 45vPSnrNTo+vTpdBjiXAEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,183,1719903600"; d="scan'208";a="68023290"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Aug 2024 13:47:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:47:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 28 Aug 2024 13:47:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 28 Aug 2024 13:47:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 28 Aug 2024 13:47:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CYGOXspSf7+HbB4+I3dWeRoXDCRKqS0oZZxqI/OMtJVsIrfQN4fBl/VblyUZGHnwt29VvgWDX1zBlIsq+QQMVfg4+yTpqOp9GiAafEDN1rM1ZNMfY07Lmo8Atfj5DW66AH3sHaFgeeWJUjPJ6NzK5G1IrRJTFZt/5g5q+/zE+rH8FbI6aW5jNKeV8p6k7azOFbfFm494sv1T1yWzofl02Us+UIiebIyezByuwDWwTX8Ybmuc9TRCNC6TVeF6Vaj5TH+WbwI77etGOAOs5h6a+H6Sriqyqa1nXPHjENyWY2pkN4h5AENrEod7JQjmyNUgi4eTn2Ayq8MournroHJVpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jVc78RiOYMNJW6PFrtlKliT8/McCMpRDry8c6FN0t7w=;
 b=sKC1x3HzslQYUv3j+mqR0NAgTKiZZCGlaG0rWflqNQKfI6RAdbmxIW9ziT1HTTCZqe49r++ZkIAT0YgsZHx5Fs/nlOG2vWt6p7CAmacDvWvxqUBOXbXp5YX/+wS/q1ABdK5BY3oSmXRl9b3tTu+Q04l6tJ0kbytZHISZMW0YsutDrvGkOnC0aavANienZVA8yftDyJ37cKw1WTdNIN6wy+2E6ODvTKU4Xb5gUXuK15ss2fQfTtd0h+dKsZjudZMZKW0zL+1vJXtGJGW9f8y5W3zk4xkwLzyYRTaUt/SOeclDFUD4vZIQU3/EZ9cjh3Brfrp0v6bFQWT39wf/CFCoog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV8PR11MB8559.namprd11.prod.outlook.com (2603:10b6:408:1e6::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Wed, 28 Aug
 2024 20:47:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Wed, 28 Aug 2024
 20:47:12 +0000
Date: Wed, 28 Aug 2024 16:47:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 5/9] drm/i915/display: add platforms "is" member to
 struct intel_display
Message-ID: <Zs-MzOKeaeX8iwdu@intel.com>
References: <cover.1724092799.git.jani.nikula@intel.com>
 <7219e172b99401458ef6783c67b0b47115c6e772.1724092799.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7219e172b99401458ef6783c67b0b47115c6e772.1724092799.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0316.namprd04.prod.outlook.com
 (2603:10b6:303:82::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV8PR11MB8559:EE_
X-MS-Office365-Filtering-Correlation-Id: fc6ea2eb-6c2e-46f4-1b27-08dcc7a297bc
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9komp7ti87QwgcDFxoDX2i4bsueYlnubWVzz+z6KhWoafWmfA3Ni0xnZst6l?=
 =?us-ascii?Q?TQ4VUG2z9Sx7uqadvSU0xS8IMXeGHbF73uGJcachQI2XgeXbq44eCu0jz8VA?=
 =?us-ascii?Q?KYj2Vrwy/xQnc3nORXO0Nigf3ZFYWvp2K6JgoRhPtopuEjTuoSFCqh759bMV?=
 =?us-ascii?Q?dcLri+J41q+HgdF1/TIU2RnBX9T2IVguk8IaAbaJ7orwLuLlcZp5MyAykdU/?=
 =?us-ascii?Q?PPB/LOky40RGYQmCK3UXpYD1ioSeLSXZDUAtqREKnfUzOOjdgYLC2UuYjalC?=
 =?us-ascii?Q?CZ8tCX/lV24Ls9eFybYnKsb8JHHr5BGoo2YL1ff4T6+w0N6qIjby1FiPrcIN?=
 =?us-ascii?Q?jVyeZn7NCorjJDaMmVc7+tRvrbCO+1THp/M1c4q5NRyy0xrWdTz/GFuD1f63?=
 =?us-ascii?Q?twG/mMMcoOjvH7mslrNemFvGyeRFiTrJ3TnNsjDmpBS9EEUpS2Z8DkkdOItm?=
 =?us-ascii?Q?VBCIYKSC+MO3p+6lnKwNNGWTFGKImHoAa5hnYVtAGEyKcP9vJck9Nq9Yb9oM?=
 =?us-ascii?Q?UwxhudBr3MEQFF0K6dhbIN1pXZL1i5gg+1v2d08XCweqHnyOULzT04u9LXaK?=
 =?us-ascii?Q?8qUVvmB87gMdVvNenp4QDRosY/4I+AxR8vNcOp+ggkitMgOroOfD82EUsn85?=
 =?us-ascii?Q?kxvbcTVplJeLNUIGAQZfnitht66Pkdt+6vLDs7xgJd1As1tMO6NU3dOMyvMZ?=
 =?us-ascii?Q?8r+2NpE8TroHJsH7Y/Oy+J819zBsBfid4QvAyIO8qB6bnQjRjKzP8Kf+9j5z?=
 =?us-ascii?Q?qndBpWQNb09+od6gs1KoF51h5kdvHSI86pRHReQ5SrG1fBPYya12d7l3KMEf?=
 =?us-ascii?Q?HavlEhKZzA1MxBMoad4zOz/hE/Uy1FQMDwB6Z9opZpHGizOkWjhdDJR8C5MQ?=
 =?us-ascii?Q?nFczZH7V53zNUp9sIG1Sa+p4VloNH4uzy2rg5JN0GbufqHLMEW/pLHo6YvyI?=
 =?us-ascii?Q?ysl05RVYt2Wja8HlRrNjmvH25u+x5NuztN/DE5fWBqgpvN/cxqIeYO2xHgMF?=
 =?us-ascii?Q?XV3/UebYUSuZ3+Wwet0UF0rqireDF/GkkK/8qxo5NVc76mMLum3Y/e8lgUdH?=
 =?us-ascii?Q?kkmNcDlr4NH72sImZjaix0XPDqolfY30oMBPPuUJvydhVAvRX8fd/IeDmMGb?=
 =?us-ascii?Q?sBTlvUQVLBB+boXNuH1Gp55as4sgA9Jxd80jnynRIRU2iSWGpCftJQiMbj2Y?=
 =?us-ascii?Q?SlKN7sx3Ti9gtKOXvylkN1llzPIy4gx4pMrKo/xD41Wv07DTZUHErUQQEPOw?=
 =?us-ascii?Q?piRrak8SvXQNf1k6s7e115qYFC1mgzbyF0bS882CoBNbaU+CZKss77rzGpb0?=
 =?us-ascii?Q?qfXJ/hYVLFwiStf1rcOWqk7bR7DRbgrAt90ec1qmLAv6ng=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S4vRGza0kHpmnM2jzXYUp8wHh6iNZ8dB/YsZS/X7wr12xhCUhw3uXfGrvCby?=
 =?us-ascii?Q?PGBItQ5ZHsNt57nacFxl3Y1GClxWHbytvnaYKX6UzZVRFparRH3KoiQVApDr?=
 =?us-ascii?Q?Yo5qSf4dlx6jA4AernZilozgc4cq1j8YKjL1DlFVbp7MeWc2ScOrGpWJP6/3?=
 =?us-ascii?Q?J6VjnboLXRpKsGElN1iqZNMAG/ZkAoqNcqgn9exJ4YWkPIscs4Uejs2xEaqI?=
 =?us-ascii?Q?kpHXneM6hmyfQef1ZsxZD5JKjfhFnldSqejjwwSvTU56pm11EOjCwOYNI7Hj?=
 =?us-ascii?Q?n9+VCPS+47ly2bv/jkmMY7OwRI1IPDTgwysHYwpaMEbpJBDlXTvTsvDH0bIM?=
 =?us-ascii?Q?uqZCfvzEhFSzTycojvW//8768FldipBRgS+6PcEYYrZI7OjCZheyjyVyEzGt?=
 =?us-ascii?Q?NxDI2sSKJnklwqUGI+9lUYbd8FLRG+ebeRUsZpt7UAAJWbqGHYnbPMMumDDH?=
 =?us-ascii?Q?86E/tRefWnwasiaRfYdLvN/k7W+Rqx+Pyo4q+BuHlWXWsVR0yd8K0nA11UvI?=
 =?us-ascii?Q?uz+zeSaYx6qabqTUTLxYsEa4rFuTXRY5I65Zqn0AnMj52cnvTWVaDsDAIsJO?=
 =?us-ascii?Q?CpHfLF1dBD/9dGct/vZ+ynanPY1eSmFiksuq3xOspAEgdpTvj4M89h3epApX?=
 =?us-ascii?Q?2uqXD8vMF1CKkoN1AhOz7+Xp3122boLcIh/bFL7RLKtl59gcAg81G9mE6aVy?=
 =?us-ascii?Q?PjBuX/YlnMFr2DRC1UrCQUfo5NLzxHXWbA0TI8DApCy6TXe13LI5s3xVr8Ti?=
 =?us-ascii?Q?xQ3/NaLC81rxXBvU9xM9POPbOIqjeScXs4a3n//289pZX/Lc+bSecOKomwhr?=
 =?us-ascii?Q?AbOAQcc0X4MH3qkp/SETy7jF56NcbPSwPDMAubZO2Iv8F2K/+NPQMHZa4MMC?=
 =?us-ascii?Q?IhVApE3mUxR/aHZdf6fFby6D3TCZo4CjNZP7ts/L+sHx+m1yCjCz4mywkUB1?=
 =?us-ascii?Q?Ir2QzxMcE0H4q8xQP8WEEzMzk6DgqyZjr5OeWAGPdBiPFG5IsGncpKDfy1Q7?=
 =?us-ascii?Q?MMHpyBzG2MA04Un84spOPZfPhdt3E/kM0iz5G8Sf+1YgQmeRY45nAl88mmH7?=
 =?us-ascii?Q?2L5ZRUxe7DJKyFJi8H/rqe8giilsRriUibMXt9U8b9RzQgO4xQVEvmDdAv9O?=
 =?us-ascii?Q?81vQBShUbt3hMyifSdN8kwIkA/5vOhSjVTOQ/pFmZzuk4+ksWh+F1Jq5+6GR?=
 =?us-ascii?Q?baenYMe6q1NXHwJPLpMXfjHkOyBjkMRizLId826EqfWBLH+O6MDCsACoMRS5?=
 =?us-ascii?Q?wIc9bH6RCwFTO74Gc/NgKMUoTAxZ81frmCnj4wbifNYtEKXs/DPV4OQ1W7hI?=
 =?us-ascii?Q?dwVqNr+PP4BWFzUji1MYc7bPGI2pH5YS7ZcMdqI8e+qofxbmiQBuVU/M67WX?=
 =?us-ascii?Q?Bgow/U0qsmJ13Evw+/Ogpynk51Qx2M5Vh/8usDo/njI7M7D8NtF6aNupsvbg?=
 =?us-ascii?Q?m39zHOpt7pGf4nW8UOVlpXd7il7GUkJVXNdrL0IB+TiUnUt3eOdO19XK+6jc?=
 =?us-ascii?Q?ROBf57QmBfc94PcRq+ylXeSkr3SupCJPdZ1GU9J/nLPJ0/t3Agz/quCLj5Os?=
 =?us-ascii?Q?LCscdiVqzbMWEIP2omWo4YU2yPV8IN81XGmefKw/4HS8S0uhOY2BfcCovTzg?=
 =?us-ascii?Q?Pw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6ea2eb-6c2e-46f4-1b27-08dcc7a297bc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 20:47:12.5731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A8ImocYQqcXkMYcz3m4wvb2dPDt05vecTcJ3mz6eAvfAev0/rpS8LFD80kBmjQm4uTAJG2p6fktJJFU6+BM5Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8559
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

On Mon, Aug 19, 2024 at 09:44:32PM +0300, Jani Nikula wrote:
11;rgb:ffff/ffff/ffff> Facilitate using display->is.HASWELL and display->is.HASWELL_ULT
> etc. for identifying platforms and subplatforms. Merge platform and
> subplatform members together.
> 
> v2:
> - Use bitmap ops
> - Add some sanity checks with warnings
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 ++
>  .../drm/i915/display/intel_display_device.c   | 31 +++++++++++++++++--
>  2 files changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 0a711114ff2b..b2907894fa28 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -286,6 +286,9 @@ struct intel_display {
>  	/* drm device backpointer */
>  	struct drm_device *drm;
>  
> +	/* Platform (and subplatform, if any) identification */
> +	struct intel_display_platforms is;

as I told, I don't have a better suggestion I'm afraid, so


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 55ab1923c8b3..3d3b4ed7940e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1269,8 +1269,28 @@ find_subplatform_desc(struct pci_dev *pdev, const struct platform_desc *desc)
>  	return NULL;
>  }
>  
> +/* Size of the entire bitmap, not the number of platforms */
> +static unsigned int display_platforms_num_bits(void)
> +{
> +	return sizeof(((struct intel_display_platforms *)0)->bitmap) * BITS_PER_BYTE;
> +}
> +
> +/* Number of platform bits set */
> +static unsigned int display_platforms_weight(const struct intel_display_platforms *p)
> +{
> +	return bitmap_weight(p->bitmap, display_platforms_num_bits());
> +}
> +
> +/* Merge the subplatform information from src to dst */
> +static void display_platforms_or(struct intel_display_platforms *dst,
> +				 const struct intel_display_platforms *src)
> +{
> +	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
> +}
> +
>  void intel_display_device_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
> @@ -1306,13 +1326,20 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name);
> +	drm_WARN_ON(&i915->drm, !desc->platform || !desc->name ||
> +		    display_platforms_weight(&desc->platforms) != 1);
>  	DISPLAY_RUNTIME_INFO(i915)->platform = desc->platform;
> +	display->is = desc->platforms;
>  
>  	subdesc = find_subplatform_desc(pdev, desc);
>  	if (subdesc) {
> -		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name);
> +		drm_WARN_ON(&i915->drm, !subdesc->subplatform || !subdesc->name ||
> +			    display_platforms_weight(&subdesc->platforms) != 1);
>  		DISPLAY_RUNTIME_INFO(i915)->subplatform = subdesc->subplatform;
> +		display_platforms_or(&display->is, &subdesc->platforms);
> +
> +		/* Ensure platform and subplatform are distinct */
> +		drm_WARN_ON(&i915->drm, display_platforms_weight(&subdesc->platforms) == 1);
>  	}
>  
>  	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> -- 
> 2.39.2
> 
