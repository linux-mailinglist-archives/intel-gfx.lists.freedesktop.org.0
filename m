Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 540C297C1F2
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 00:49:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78AEE10E663;
	Wed, 18 Sep 2024 22:49:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mxddv2bz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456AD10E663
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 22:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726699773; x=1758235773;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9pPRdI8Xx4sS96xgsJiwc//O+gVUJ7QmpbnuYYhuXfw=;
 b=Mxddv2bzg5kqzVZLZXcvLkeLm8PlqpaBILn2/6mSGfiu1UamK7rqonNw
 5rYed4H/+dXQYVuFLUrQoZBoKR+fJUQI2UPGxIal0X1dMSMBKYmWVmL96
 WsKMdwJI3LeADZ+ynNd6Fi2bTSzm8G5OwDfdqbKLD/72R4bgzRJYURhJ0
 +qXH34sC+GqFWEycHZo8Z80/sEFbLCjRI1RISycgKZzNwyEDUC4Ne5NbG
 bOkRjTYx87q2VRIhA2cPDCHLuOzxmvAGox8K97kVKocjyB8GSFhJCQwki
 20gItFee9TXM5mcySDJB+HWaFvpfTRIVrXKbVhReFvpWWunv42ca48MLc Q==;
X-CSE-ConnectionGUID: W/tbrQHrQWmDSrhwIYkyQg==
X-CSE-MsgGUID: pVvDeIL3Q6SpA44sLY5keQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25792647"
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="25792647"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 15:49:33 -0700
X-CSE-ConnectionGUID: XAGiylATSmGKWzIT1PMscQ==
X-CSE-MsgGUID: 2y6a1VPjRpy60lVLmr98HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="70560722"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 15:49:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:49:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:49:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 15:49:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 15:49:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qH1+C92wrV+SAWVMx2InustnwsZ7282eo00YZ3RCDiKXhlut573kHTtXBEiAziLlbJvRVegyx5k873qBEGCtYeUfdt6yFXmxT7mHSI/nRgU5sVrQyqSuhZC1pf3FGUs1u2HIrAgnkPgLVDUxdF0zGoxQPcp4QMdAsMARqFm7xVcOpm7C9yk1eZ3Jci/4l6W2mu/f33g7uM1WsrBit8wcD1hyVVDRoEoyPMJG6NrN3Z8HP0A8xIag9irssLENKn/OWS4SDefPlj6rt4CCylrKLPzrKV+1Bx1sUkb6UNz7Wu0FCvYQCVEJk0At/+ty7YZuU9uabLEEzFMxU/jaIP96LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CB4leTuqaAv+W9qL9e1Jsm8FalXcM5HaUGGHW8MGUUk=;
 b=OUGWv+xLmvY/0aLFC9tHwwOIW0RzkDFD1AHD9nZrzLUaFSqkGbKXD4dz86v7n/WcQ5GMxhfxgY+1HiccEKbf1IFu2/Cklj+P32AcP/e2AAxXRNckV2O3Kq2/6hfl1OQgch7imT84hteB+VD7CR3md4E0HGwG7pL1j44fbdbr8uNuE9Eh0o2GEjj3VKx0Jxd97xxrRbe0H1pFbMtsUyk6hjrU6i+O2EC9+zghtkeWxrtVE2OlxbAglzjFZWP+L0bYlA/pLNr7JRIw4NIvn/MdY1/Olks/WN1HR51B+41/8JM/jXfbhIcnsGYfWDV6P+yJNedBPQppILVWPcnrxy/xTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by SA1PR11MB6872.namprd11.prod.outlook.com (2603:10b6:806:2b2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 22:49:29 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 22:49:29 +0000
Date: Wed, 18 Sep 2024 15:49:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 4/4] drm/i915/display: Cover all possible pipes in
 TP_printk()
Message-ID: <20240918224927.GU5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-5-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240829220106.80449-5-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0140.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::25) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|SA1PR11MB6872:EE_
X-MS-Office365-Filtering-Correlation-Id: f80f2fa0-c817-484f-b2e5-08dcd834279f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?exJ6V05B7sOpkLKUl299NBOlS4SS8NR2gjOtkURsqfRuQQbVl74i51tGqjeN?=
 =?us-ascii?Q?gfrn5bfiRswQbUdCCqFjsrWfqysqW1Z2qY8E/S6EXsBl0MVvkrBRAdnK6Z4u?=
 =?us-ascii?Q?EtwvPTVHBys+x4nDEdhCTe+A0qUteEH8rqoop4sCRaPpB/PjK+OP3IpPcihE?=
 =?us-ascii?Q?yGcZWaIBqXrWcyzuobmsT/obxfKITuHNeaMDwrhrRgAHiDCdbfyMykl7xkXP?=
 =?us-ascii?Q?d6Oc5d8rtqOcMo4pw1DsQXBHiu74z49y0YtTIGyGv8Ha25BRbmjJfB7/x9Gp?=
 =?us-ascii?Q?fz9rDGUj/CqU4QDIxM2ANJi0pW9gyE/kAJW1aPc7Bqphk5+orbjnKFgCXmNa?=
 =?us-ascii?Q?pjJP0YGK3mUBnCQDVLLTpjvm1y+NY8bV8bW87QXleCyF0DHlOpQEJ0FAkpdG?=
 =?us-ascii?Q?2CJwGzS1QNKPEtTppOcFfE07KC0+4mpXsCGKb3sPyrr+YA2rXYSj9jaJz1FC?=
 =?us-ascii?Q?J+9b/QHn6OwC+OBYpSOiDNsL4e/BW/drR73yFqK59gHOoJr9MgFCVkrU3Vik?=
 =?us-ascii?Q?wWEWNwXpKL4IgZOlCsUyeK1usJlMEsI3KMIknzY4toOhkgQNfzh5Tg5wqSRe?=
 =?us-ascii?Q?HS3OqgxPwLaZWZK9rM6PAAKCK5kwuhcmMBpjTJYU7rGRq4iYd+gAwMXn/Tk1?=
 =?us-ascii?Q?qzUiD9UW7BaocRPxpE4iVBoTgXVcjOGRqlCiGwVUIYrlPEzWeZqDUGAv0Bwv?=
 =?us-ascii?Q?VsSnd2RJiOuWnIkntLOfwmjREv2fPDCZRgha8CRIFXG/7teMSfJtKPKMsG7F?=
 =?us-ascii?Q?rRGSyVtCXkbw6rMH34rAxBK4K+48GYvEXpaCArTALlypgTSjgAauueY0NZur?=
 =?us-ascii?Q?TB6L5deEYaYNUce8z/fZ5O/OZNw2v+8nSghaUTwfvHFbTsz9JyWuyhI94rQ2?=
 =?us-ascii?Q?JzPY5l1HENYgWGwGnfhlMdO3RcttZJmzYk5/sDwI3ozLfeAR+EYYj/Jon6bv?=
 =?us-ascii?Q?bCOGD3AMI1lqjmMzj1PwIOi/hTnZC+wB9bM+blqSIc8kdGYgoe0Dcpzz0GM5?=
 =?us-ascii?Q?vaEAfS260/GhsHstb8G+9fG5XJ9bfFUE2drLVSDE+RxgD4uxc9GOsBG1JTxx?=
 =?us-ascii?Q?d83tzhu+F3K1EzNVCKElznWigukpNIfdxqrCmkN4X2SEDnLEgT6e5NFYNBAn?=
 =?us-ascii?Q?Ogqkc8DWWm4WVCBKyiTGpm83RS+LbvkcnpZLdQYmSNUBm9NCkzzM7tnOnyPD?=
 =?us-ascii?Q?1YflhDfptwyimuJxLZ9iFZOJ5I5uxwoLYdr1lLSujLlo/pwemuw/uz/vRPKF?=
 =?us-ascii?Q?UUETV1H7IxLKKLNp+Fki7bAHjLY/JVVO7Y9DyE3O2A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jpepEEV5qdNnmeJmY0xu57ivLd7+MxaeQ/QE+4rQOuv5s6C+K3Gn8MiTFcQD?=
 =?us-ascii?Q?KI0VUO34aoKnyMcyw2b2ixTV6yZ/pfEQN+2+yKDQ+YB2cu7QGkdYoRrlSsnz?=
 =?us-ascii?Q?RTpL9js1ZZt3699AiOMcCdX/2g23JM6s7U4aFze8lIDbIxGEkv0QbX/NecLc?=
 =?us-ascii?Q?i90b2VG3CuHAOW14keM/9h6gKR0tY1SRD9lJu5MXrD875SODgwOzCkWZg7UN?=
 =?us-ascii?Q?2NJ4SLjzwZ+bRPw7DqlZKftBNTVm6dOnKdMtm4arztYKMIR6xa69VQXayhjT?=
 =?us-ascii?Q?hazXp6APzyaim3P/oOsXQthmx4SaXxJbe10ZauAG4wMC6OCW+MBo4eBzEywW?=
 =?us-ascii?Q?CQCbmIFKaFgVzwL0Y4Sp+z3mu2F09v06fy94kHZUb1M67XMZMwoPUDQBkozD?=
 =?us-ascii?Q?7CCIOhXXSiBS5rf9mZpGvmvPXE/23qo7+50kxfdFh8SJbI8BqIIwTbdOzlQw?=
 =?us-ascii?Q?DOYaERDTSc+rvA5rkFh+d5TPqn9YK523Ttn5tEovoLFuCAAQpXhlPCqfbrEv?=
 =?us-ascii?Q?jHiLlPFVdVllE74wwrydTMXNukZHzqbmutuufDkNcXnd+wJoRUevc2/mInDF?=
 =?us-ascii?Q?EWc6S5Y/ft+r4o4Agi49Ei6+BE9bpl6uDD5mifG6Bb4/wQ0TrHff/KTZfm7d?=
 =?us-ascii?Q?2MmzPyQpbGuFnOoOicYEMGtejbfEpp1CuyoM5N+kOYqpTNe9is1KJejeVpv9?=
 =?us-ascii?Q?4FZYyOg8RCVJpcEkNEFTo6sM6BC4AvRxqsTCqXVIBOvpT4wEGor1j1k4yA0/?=
 =?us-ascii?Q?327wpvwmRanhoD/WbD4B02AnTyKXNz0g0miRDJRlBeplIPZtH2T+hDS5TRN9?=
 =?us-ascii?Q?X9MwwaO9XQBpQbsY4lMXcaa8IE8ma7pYD2/xQTRrJUYbh0lPy+FQbms65qOv?=
 =?us-ascii?Q?bFSLfGilz/ZSKxSSv8WZl4rHIcMhRaioeBcXT1lQXz4Zm/bEb+oM+NleRdlm?=
 =?us-ascii?Q?UiBPhZBRjjL2spp7G4AsD1JIxyTLFP8GxzWVhRpgTdKtr1Ym1LX+Jp2xtPEP?=
 =?us-ascii?Q?oH/USgb5ppzWwbX0ZOzKsTsMXfhycEB6PHTW9Ejx4mSuOitc3+6WOtK8Um1K?=
 =?us-ascii?Q?kXA+ip/Uwguziuqk6lZK9BxQGzsuAnp/PSvCfJZoSsRwPZt91zDcT4m5Mmma?=
 =?us-ascii?Q?uQtj9NBqdxG5aYk22X80CnbZLYSlvO0tF9XaeerKhnE2I5gigdW7O1JANCDM?=
 =?us-ascii?Q?iFG7B/aawAXihk2FC7j6CBk8I+GLOO7sy51NJSm3GsXyWByf52YFjRm4v8nl?=
 =?us-ascii?Q?J+D4vvKBbf6WfTrWjoyd/O519Ddbzv9fvaywOkIWynQ2xhMZuQQM6PK3XFc2?=
 =?us-ascii?Q?0qfcjTzLzymtFNAjJ4jVm/J/O7vMl58f6FRovHZbAwypb/3QV8cTsA0c0lhx?=
 =?us-ascii?Q?j5CLJnNuiIypoSGr3YUQ0q+KuioURNf8WK+bhSiqjMXPkC4z3B2eX/le3fFs?=
 =?us-ascii?Q?gJfkjCRqkxwb9TfdRqzU2P1qQ9sk+VoRcfvZX8iltk9UOZ50Nw3n5kkR4GYR?=
 =?us-ascii?Q?QtX0ITdFG/5Uoxz31xTRzPk033yCCRhqqyfuEk46hl/MR2be/KOVvUqccz/l?=
 =?us-ascii?Q?R3QDSYGY3xu1opHVSIe55Ep7EnpClVGyszpUY7Er5Pytkc8ve43KyF1zqkaK?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f80f2fa0-c817-484f-b2e5-08dcd834279f
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 22:49:29.5754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K1RTiYWTZQAfCn3PtOVvKPRmGBuw88Fz+GNLI6ua6r2vQfiLg6NyDv6lHD979lI/+XJBpuUQl9FQcBR6BlD+zLrsdWDSEnrH/iCOZWMyNJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6872
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

On Thu, Aug 29, 2024 at 07:00:47PM -0300, Gustavo Sousa wrote:
> Tracepoints that display frame and scanline counters for all pipes were
> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoint")
> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
> tracepoints"). At that time, we only had pipes A, B and C. Now that we
> can also have pipe D, the TP_printk() calls are missing it.
> 
> As a quick and dirty fix for that, let's define two common macros to be
> used for the format and values respectively, and also ensure we raise a
> build bug if more pipes are added to enum pipe.
> 
> In the future, we should probably have a way of printing information for
> available pipes only.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

I didn't did through the details of the tracepoint system, but I'm
assuming you checked that the underlying structure is zero-allocated so
that anything we don't specifically assign in TP_fast_assign will be 0
rather than uninitialized garbage?  E.g., on an ICL platform with only
three pipes the pipe D output is guaranteed to be zero?

Assuming that's the case,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++------
>  1 file changed, 29 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index 759b985c84a9..2ce66dffdfa5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -30,6 +30,29 @@
>  #define _TRACE_PIPE_A	0
>  #define _TRACE_PIPE_B	1
>  #define _TRACE_PIPE_C	2
> +#define _TRACE_PIPE_D	3
> +
> +/*
> + * FIXME: Several TP_printk() calls below display frame and scanline numbers for
> + * all possible pipes (regardless of whether they are available) and that is
> + * done with a constant format string. A better approach would be to generate
> + * that info dynamically based on available pipes, but, while we do not have
> + * that implemented yet, let's assert that the constant format string indeed
> + * covers all possible pipes.
> + */
> +static_assert(I915_MAX_PIPES - 1 == _TRACE_PIPE_D);
> +
> +#define _PIPES_FRAME_AND_SCANLINE_FMT		\
> +	"pipe A: frame=%u, scanline=%u"		\
> +	", pipe B: frame=%u, scanline=%u"	\
> +	", pipe C: frame=%u, scanline=%u"	\
> +	", pipe D: frame=%u, scanline=%u"
> +
> +#define _PIPES_FRAME_AND_SCANLINE_VALUES					\
> +	__entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A]		\
> +	, __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B]	\
> +	, __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C]	\
> +	, __entry->frame[_TRACE_PIPE_D], __entry->scanline[_TRACE_PIPE_D]
>  
>  TRACE_EVENT(intel_pipe_enable,
>  	    TP_PROTO(struct intel_crtc *crtc),
> @@ -52,11 +75,8 @@ TRACE_EVENT(intel_pipe_enable,
>  			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
> -	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +	    TP_printk("dev %s, pipe %c enable, " _PIPES_FRAME_AND_SCANLINE_FMT,
> +		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(intel_pipe_disable,
> @@ -81,11 +101,8 @@ TRACE_EVENT(intel_pipe_disable,
>  			   __entry->pipe_name = pipe_name(crtc->pipe);
>  			   ),
>  
> -	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> -		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +	    TP_printk("dev %s, pipe %c disable, " _PIPES_FRAME_AND_SCANLINE_FMT,
> +		      __get_str(dev), __entry->pipe_name, _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(intel_crtc_flip_done,
> @@ -211,11 +228,9 @@ TRACE_EVENT(intel_memory_cxsr,
>  			   __entry->new = new;
>  			   ),
>  
> -	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
> +	    TP_printk("dev %s, cxsr %s->%s, " _PIPES_FRAME_AND_SCANLINE_FMT,
>  		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
> -		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> -		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> -		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
> +		      _PIPES_FRAME_AND_SCANLINE_VALUES)
>  );
>  
>  TRACE_EVENT(g4x_wm,
> -- 
> 2.46.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
