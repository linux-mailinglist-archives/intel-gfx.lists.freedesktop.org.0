Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8091ADBB59
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B0E10E43E;
	Mon, 16 Jun 2025 20:42:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LBGbadTH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A74D10E43E;
 Mon, 16 Jun 2025 20:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106520; x=1781642520;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=x3hPbQS/LC1EJ/z7d5vuoNiRrqcPiTh4u6a6+AEf46c=;
 b=LBGbadTHaiLn1akCPjArqSPE8IaluyHVepdp9M/tVYSLExOUK3XTbYV4
 YYmDsupPLRrVBeaLLyMdodxSG8HAf/dyk2PhRbEIbOW2B6+DCwxFJFMg9
 VLwLqQsWzEOV6cOHtkPt0+EYr3f7u2VPyALgN44il/ApcXTAErztH2BWr
 pq90cf7u2ZOJGMNT7Pm8BxG4ZG6Dlu8ePvXNsRJqdPRfom1j1Wk2Xw+3c
 Gi2Vl4ztjDipMwNQe88eXOUecC/giZyc5tcPPWZqiVFl/tAvz3KmVWVcU
 nl6w8oq2JT0uGenjrATCWy5FfWsnDLcH2VEs8UIvMbqUV6141bMFmYLWM w==;
X-CSE-ConnectionGUID: 2LGxBKyYTC+xw9okldsVrg==
X-CSE-MsgGUID: ghLoaAUlSJOw7PXqVUod1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="51969777"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="51969777"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:42:00 -0700
X-CSE-ConnectionGUID: /dzePOnMTyKG2/uXONhbSQ==
X-CSE-MsgGUID: UHDb//XSSpijxJxs03F1mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="148562386"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:41:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:41:58 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:41:58 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.76) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:41:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fyaw7nD/1KycehrMIW+ur8RXtgvJAYmrpRF3xUQlEjOveU/rXBbSL2eOj17halGT4mUMVTBQlRVtgx0+8BV0e/qkMRe2CNbCQo9lj1S1jVSHYhRq6h4NnL+5iNfha90N9GtYcRP27ztQUX4ElR/Qv7Wec7F/uHvUpK89Gd/xN7mzwfBF2T7hfxYIsLiG64AMZ9kOArWFv2gPYhqck+TXzNFO6kLFiuvjNwnGc3R04wwIFzAAv5oWZV3oXEAFuYVxGGpvOyUwt+k5E0zJcDC7qrVf72CVZTGPMRe+onyadcOmj1EZvQP2Qss/Qa6aqUC5SBaDQ9k4tRqJa23/ZuyBEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICH7dWFEChIj9BNfpVAW0a7m0D42oT484jwq9cCipq0=;
 b=qEkqyaQVxmApLsM5kDqF0OvPhtRCxyp9SH12TLBz/BKPDKCT3UaUpn4sPzIWY2Z9kodz/XgrzOv9kw0U95bHxkxFmd+9hdfxTAo5lLixi4MFsf2Mv2o4knQulDOYL78cZtlzGvlqHxhggtbCVJ/ybpKKFpDPvwAx+9o+wGdetfgI/SvhCp1n+jpT3cyK1mUMd3sLqJMLNhcgTNge57cfenCWcHBn/PPISEipv2N145bmcZa+83rMSxMMROq3or3HqBFmdWCv9c+OrLVAytbu6EiNPyCd0k+ub76zMCAQ+dwZjzgB7SJiU4P/7S/QJiNvEeoJ97wXMeFg/684ESLE2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CYYPR11MB8387.namprd11.prod.outlook.com (2603:10b6:930:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 20:41:42 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:41:42 +0000
Date: Mon, 16 Jun 2025 16:41:39 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/pcode: drop fast wait from
 snb_pcode_write_timeout()
Message-ID: <aFCBg76t_x1B6pWs@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4d995c8a8ce8398fdd3d95d50fbc1b5c599471f1.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: PH8PR20CA0020.namprd20.prod.outlook.com
 (2603:10b6:510:23c::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CYYPR11MB8387:EE_
X-MS-Office365-Filtering-Correlation-Id: f5a130ac-913f-4a29-63ae-08ddad16339f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?J+ddQMPuGDDItFgC2ppSEJA/DbQvfdixT/CVNOZm/nMKghxq7i+lzrmC7IGI?=
 =?us-ascii?Q?bLct2G0EEnhZLvgBptFMDdJbXPpPY7bJax9AFOUy/wDnn/aJ38e/PB5Q8glx?=
 =?us-ascii?Q?bXBSR0M06qQ8499d5SykQlitJsraYhrZg0zv6JaImi8bRDoJUi0oN/g+b0lR?=
 =?us-ascii?Q?xRedANOun7QxZopOrKVeuCvE+8EDkqIkThc2a26XSqW2st12bO0xaYfD/8SP?=
 =?us-ascii?Q?wH/XANTPinBpOVfdBpxGMab3XyOduLFgnhiwati555jGcW5ZlQPX+MyQVpv2?=
 =?us-ascii?Q?1iMHCAhRTTl1dFGb7uq6o9R8GuscCr8GbfdDfK+w8wiNVBM0mVMGfKLZKQoC?=
 =?us-ascii?Q?jxQIAjcwUF7r+k8/DjHuD37ljZUFDIjMB8wpW8kDBYKhWg7LRnjCunK1BV4R?=
 =?us-ascii?Q?RXgJplWuvJ7fk9L9deVeWW+CoskvFrAtuLWM7pqACVlwTHWiolLQx6oRKS5M?=
 =?us-ascii?Q?Ea1WuJbD6pQvF/hEFaevEofsXVOl310Cv3Mdu5MVZEzfV0ErhSbUuB19aUni?=
 =?us-ascii?Q?fbto0ljRsAK+OOTgCNt44Q9hI0CSSOvmSkVil1rbqlOxpu8XhR568C0E3soR?=
 =?us-ascii?Q?R6wvRALQaEq/Jo2WdwBIAH0i21ggOaPwrfcdnJUl4ptXRA2YKT2vrCKQ2csH?=
 =?us-ascii?Q?oSuetIEDgUJvDM//vYw9f/0Xd/x41isgemorant3WJB/vfcZeiNWlfmyaR5Q?=
 =?us-ascii?Q?9Ouoksyl348X0s0We5MhVgzH7djecGiluu6LjnpjRmcF/ccROTA9YD1jGhmY?=
 =?us-ascii?Q?56/OL13/totVTKQ1r2ymxohiaJpmtVWKftm0DLLH+gMUKBn315Iny8Fk+ayU?=
 =?us-ascii?Q?GJQZB2J9eVjmL9FOmYSjU1GcMbP5eVSxFI2XT5TvzhLfbhdKdyFPicCYcfsh?=
 =?us-ascii?Q?h6se+Y3e3er5vPFvPb4LsNgV3yik3LcAqw2dLi5HyZbnzttXQdBIUNxSLKpk?=
 =?us-ascii?Q?cGoABgf7p0UMrYM7thCZ8NM5S+MxeUQMsrIazsbml5TDrfcxysgGoB0IFwre?=
 =?us-ascii?Q?nx+9m+srFIpxp6FAiTMmT4rhuBzxo2j/gzCOVs8eUCr+nASElPOefPcjeemX?=
 =?us-ascii?Q?p4tZbnn5GzHyH1AT/6wI0+ov66wZIw2ueTf3ZHAe5UupAqrET5X0VXawtVdw?=
 =?us-ascii?Q?hmYrNq082Mm2pVNiBAu9lRuW5dKRo7wNeLK/PmlruEniqqDcI2cqi84rau70?=
 =?us-ascii?Q?6/d92dUQvP+Y7rxYIdspce2pDU2gY+WCpt0TDVtDkhQmORyx296SwBj3dttJ?=
 =?us-ascii?Q?AtXnhP7k+Y9wQVmhh6lweel7lQFjHHMJVhoDAGpQdO5mxJmjWYVNd/1UOCGe?=
 =?us-ascii?Q?s2faBo5jcTirKqDE+v6L+tL4kTR2s7DGKDedeSwIgUY9Qo58aQYLEiP+wmZ7?=
 =?us-ascii?Q?IN8mdSb3h+mfIRu4lX9opfvnK0tnqoack/7Mn4OZtqM6TTZO/6Rfy1IJ3MRc?=
 =?us-ascii?Q?Lgu0Yp10nCk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BS7vHsK9Ng2GYxWAoXj/YA6e1xWvcadhajVb/KbJsddtDKdEWTssGGfr39om?=
 =?us-ascii?Q?8NVqXOOVwMOmsN5tb4seoGEU4LVyPvG2SlqbW2QkKfvrVutuAgfyNlOgd0GW?=
 =?us-ascii?Q?C8Sw7bcUTx6yyn+Hcove57dp8aV+anHIZwh9DEuqasTd7B9DUbXRr6otsp5g?=
 =?us-ascii?Q?SmI/Rc1QXPMTrBh67+MaHx6Pyd9AlNu8QkwwLOkfoCLZ36YWumNawdhRKsfe?=
 =?us-ascii?Q?87XME+O4iPqfKQ+ci4FzgquOEynIpRXx/mOW1T4JygdtsQPR5/ZKkRqYJHfC?=
 =?us-ascii?Q?psUAsCAOKfzS3NJczye15TQYUDDqMg1MFYJUY9le2PKFCyEnWCpqRw6VVWmC?=
 =?us-ascii?Q?B6aoLyUj2NMGo+8tPKEBppjTF5X9t7w8/rhkRziLGUJJLfOUU5LUTdmhPNeT?=
 =?us-ascii?Q?HAYbi7fjngAUPERWL2Zs2Ek5m3kNYof2IZqktHb5735lQi9k9WD37I9yUbrv?=
 =?us-ascii?Q?1qQqO7TlFSAPEfQP+AQEmTOcclG0tSTXvNKsT4lK6AhtidejJSO3VhO0Tk/x?=
 =?us-ascii?Q?HI3nWsZQvf8nSpOUgbKAwalGjImsJleGaqB7aSX2BD3LWuBuscJKTtkOInik?=
 =?us-ascii?Q?FHH8+VJITDhapRh6SY5T1CH66UrYu92UX7HIV6djk/VbYKA2sM1bWoFeqkeY?=
 =?us-ascii?Q?JBCQ7G02x00Hp3PJmCfL9bEqBcrsdgcMiQyO8s+PBL3Vk62SPUBkP5yNhrVv?=
 =?us-ascii?Q?/8iViVZ9nmK0uwekwHu9W3gpucrY0MsHyvNK3U8NxjwoA3YhXKsNn7+hsF6q?=
 =?us-ascii?Q?EZA/4T53ByzC3W3hsG5KVIptMeVuADxLyEXJ3DSeE2Qc4ahVFma6XXXZztC8?=
 =?us-ascii?Q?nN5nsDxwn5h9N+vZOj1xwIhLZ5wQ65KbGesAwZTxY4Q1i1B6t6NomrXmyHNU?=
 =?us-ascii?Q?m9cxTAPuCj3yLN/C2D4mMqiPf7SG6yvDrv2EpNHiRf/Al32Tz8816njo46jM?=
 =?us-ascii?Q?AtGZvssQTGNB0JdwPY3sJUd29TsZQuYyXJno9vcw/kJcV5r3xDjxXD+9DCRy?=
 =?us-ascii?Q?C7RbVt5lirHkHMRUG4SmDxwmdfoQ0qlKLuuCY5eh2xip9LrgwUtBPEImQ0MH?=
 =?us-ascii?Q?wWGctpI3JCx6FcgHtb58nEyzC2/1cC1uK14w10NhZEA76D/joV5q6v1DmAxD?=
 =?us-ascii?Q?cX6tVgs1FfV8s7WRtqITAkBAcx79PPUvOb/1t28+wg4IbgzbUoZkCHXCH3OZ?=
 =?us-ascii?Q?KMuGGya8fgNXNhZvQWzaCMNhTD0kpZ8a/TKfSdt7b1KqCFIg2f3kgVCEeVKk?=
 =?us-ascii?Q?h1Essl+ddAhj+0uJzlHqFMkW69Xxy2dno4WLJRp89u5B7VS86YWQkAV+aXNA?=
 =?us-ascii?Q?xyyvQ3WosXMf/EvdYdAxEYpjhiVcOvPqJ8RJhiR+VLWDB28UvhT+dLIF9B9O?=
 =?us-ascii?Q?gog09NnpCDTNqL1sEi+COwhF2Z6Tp0NWvb75Oi/Bdpba9KA0rqJhWkE5KmgX?=
 =?us-ascii?Q?/a8OBKl9MnmossgT5RxLs31Qi1qKw887MOHB4891Yzx/L5m1iEUqVZ4qzHQ3?=
 =?us-ascii?Q?wdkApFxvfSXgbes4NrlOb8OzyXesKGy0d5KFd7MFxxNIBlrioQONiBOHmwQR?=
 =?us-ascii?Q?kL0LOHxyRTqO6/PLN2usykkIaeTQ8WFNlA4WkjhN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a130ac-913f-4a29-63ae-08ddad16339f
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:41:42.5647 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EhGS2ZVEM0Jv69tJMvaoiRVVDfWHSLnPAFDCM4a6qsC6W1q7juFcQ/nJf0a1i8a7VfafNEh71FI3/Mtg9RFj2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8387
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

On Thu, Jun 05, 2025 at 01:29:33PM +0300, Jani Nikula wrote:
> Only use the ms granularity wait in snb_pcode_write_timeout(), primarily
> to better align with the xe driver, which also only has the millisecond
> wait.
> 
> Use an arbitrary 250 us fast wait before the specified ms wait, and have
> snb_pcode_write() default to 1 ms.
> 
> This means snb_pcode_write() and snb_pcode_write_timeout() will always
> be sleeping functions. There should not be any atomic users for pcode
> writes though, and any display code using pcode via xe has already been
> non-atomic. The uncore wait will do a might_sleep() annotation that
> should catch any problems.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c              | 5 ++---
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 +--
>  drivers/gpu/drm/i915/intel_pcode.c                      | 5 ++---
>  drivers/gpu/drm/i915/intel_pcode.h                      | 5 ++---
>  drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h    | 6 ++----
>  5 files changed, 9 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index f0c673e40ce5..7ad506da7d3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2147,7 +2147,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> +					      0x80000000, 2);
>  
>  	if (ret) {
>  		drm_err(display->drm,
> @@ -2187,8 +2187,7 @@ static void bxt_set_cdclk(struct intel_display *display,
>  		 */
>  		ret = snb_pcode_write_timeout(&dev_priv->uncore,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      cdclk_config->voltage_level,
> -					      150, 2);
> +					      cdclk_config->voltage_level, 2);
>  	}
>  	if (ret) {
>  		drm_err(display->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 02e3c22be21e..e60f60ddbff7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -485,8 +485,7 @@ static void icl_tc_cold_exit(struct intel_display *display)
>  	int ret, tries = 0;
>  
>  	while (1) {
> -		ret = snb_pcode_write_timeout(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0,
> -					      250, 1);
> +		ret = snb_pcode_write(&i915->uncore, ICL_PCODE_EXIT_TCCOLD, 0);
>  		if (ret != -EAGAIN || ++tries == 3)
>  			break;
>  		msleep(1);
> diff --git a/drivers/gpu/drm/i915/intel_pcode.c b/drivers/gpu/drm/i915/intel_pcode.c
> index 3db2ba439bb5..b7e9b4ee1425 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.c
> +++ b/drivers/gpu/drm/i915/intel_pcode.c
> @@ -110,13 +110,12 @@ int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1)
>  }
>  
>  int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms)
> +			    int timeout_ms)
>  {
>  	int err;
>  
>  	mutex_lock(&uncore->i915->sb_lock);
> -	err = __snb_pcode_rw(uncore, mbox, &val, NULL,
> -			     fast_timeout_us, slow_timeout_ms, false);
> +	err = __snb_pcode_rw(uncore, mbox, &val, NULL, 250, timeout_ms, false);
>  	mutex_unlock(&uncore->i915->sb_lock);
>  
>  	if (err) {
> diff --git a/drivers/gpu/drm/i915/intel_pcode.h b/drivers/gpu/drm/i915/intel_pcode.h
> index 8d2198e29422..401ce27f72d4 100644
> --- a/drivers/gpu/drm/i915/intel_pcode.h
> +++ b/drivers/gpu/drm/i915/intel_pcode.h
> @@ -11,10 +11,9 @@
>  struct intel_uncore;
>  
>  int snb_pcode_read(struct intel_uncore *uncore, u32 mbox, u32 *val, u32 *val1);
> -int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			    int fast_timeout_us, int slow_timeout_ms);
> +int snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms);
>  #define snb_pcode_write(uncore, mbox, val) \
> -	snb_pcode_write_timeout(uncore, mbox, val, 500, 0)
> +	snb_pcode_write_timeout((uncore), (mbox), (val), 1)
>  
>  int skl_pcode_request(struct intel_uncore *uncore, u32 mbox, u32 request,
>  		      u32 reply_mask, u32 reply, int timeout_base_ms);
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> index a473aa6697d0..32da708680c2 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_pcode.h
> @@ -10,11 +10,9 @@
>  #include "xe_pcode.h"
>  
>  static inline int
> -snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val,
> -			int fast_timeout_us, int slow_timeout_ms)
> +snb_pcode_write_timeout(struct intel_uncore *uncore, u32 mbox, u32 val, int timeout_ms)
>  {
> -	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val,
> -				      slow_timeout_ms ?: 1);
> +	return xe_pcode_write_timeout(__compat_uncore_to_tile(uncore), mbox, val, timeout_ms);
>  }
>  
>  static inline int
> -- 
> 2.39.5
> 
