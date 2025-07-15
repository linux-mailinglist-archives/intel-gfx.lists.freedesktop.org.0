Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E43B06682
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 21:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1641010E057;
	Tue, 15 Jul 2025 19:08:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMUh7ncG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1A910E057
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jul 2025 19:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752606517; x=1784142517;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Yck8EIgIjp+yDir+UH2WteCQVC0yV5uHPM79pqIMndY=;
 b=kMUh7ncGWUBclJYE6Sd0yBnCNl3IOneLyLM2WXeSzjjhwwMb8J/MeS5O
 aYgXExhabA9FfEmj1heK64WP5aCD2ZHtm17FRnbFrqRS+kb4pEy7AY3jt
 G69j9WSq/MakdlDV87io+gO6nPl4ceNO2Ju0odZr45oPAtsV2EqLIDD3Y
 yGdVl0Qmpib0RdbA3VgNUCZv04CqyLQfqDYVZgsn7KNREJUKYZVlWZnJ5
 ns+F/kRugI4oUENeGQsMfuKNyj28Ywrvjfdv/dnnJ6lH2zFHZZl6O2HFO
 MkQXALNJLFVxuLVkcgVgYHrBojkq8kL2UjLCbgNTGF8JIoIyBYRVbs71n w==;
X-CSE-ConnectionGUID: EIQuEZBBRZ6rz7M60OeiVw==
X-CSE-MsgGUID: jgMB7DXxSICBVM8JHZXeTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57447926"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57447926"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:08:37 -0700
X-CSE-ConnectionGUID: NdrNHLWoSIKQER2NsIKzyw==
X-CSE-MsgGUID: gF//uMFsRIeTQd+XVbrZ4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="161851689"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:08:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:08:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 12:08:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.73)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:08:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nn5F3a8PWcPgI6Y9FESjMG2Gz/LIGW0uYyEDjHHVGZonrthp4XExnyitafs9XxO8cmVjie3ie6BMYaX6BJPIoGM9T9w4v5I5/BoIhxB9yEzDpuxmb/kkp4Kz69kHyR2ZW7hj+9g33xL3f1qWsVZ+ROvcrpNiUDBFKQEpsZDNMvJdq90OGU8ZN5MLlmV2fi4ARPi4FudO6pm/7Fg1H4xAV1rRTCtT4Qf3d/LoZSWd8194ZkG9jhG69j/OrPqRh0PTMAgky4EDYvWybQ8RqAvqYKuyMw3FpVFD25VfW+eDl8n2ApcIyw6nB2mauu9kGiP0waErdcNtSMzC8MwH6tzwjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J9LmvpA+zLJW86u4JqU+ss+EcGcAWv+mS14po8AH2ic=;
 b=tNC+XR2Wbbso3tcrs3EqSwvPE79F6/DFGIw9r5lM49fGMo7XiWOSUyChpkSL6ny3warpu6ntWhxQtOwfX79sr0numMRhjuGaG2r7/Lx/q8iu/agTtOKY/riNX2MT9qQf7X3fcwjsSsTadbBrLILdukkLeltcxc6gVzSQjji/v30cEuzGqwF4DMeVt/4AWlDRUyBKzaJBAz0bnaxKi7n+Lu/CEqB5SGK4C+FVee+CkkXCcvVU+NZw/4I0wxa99QLqXee4Z28V96QaYYYlSovIp4Pz89DEw+f8MgKWMTRV60F/wZKaw1Fvzog07bAZpSkzQqPnysYnFtBSjpN+sE+qsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Tue, 15 Jul
 2025 19:08:30 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Tue, 15 Jul 2025
 19:08:30 +0000
Date: Tue, 15 Jul 2025 15:08:26 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-gfx@lists.freedesktop.org>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH 2/4] drm/i915: Drop the irqs_disabled() check
Message-ID: <aHanKmYpOt-4XXOv@intel.com>
References: <20250715154125.27813-6-dev@lankhorst.se>
 <20250715154125.27813-8-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250715154125.27813-8-dev@lankhorst.se>
X-ClientProxiedBy: BYAPR21CA0007.namprd21.prod.outlook.com
 (2603:10b6:a03:114::17) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b987f4a-e2b9-4dec-f264-08ddc3d2fc64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Wlt2oFu+gl/GY2zptW510YAbhUSJy4JcHWX7ZA1JtXrTCZ9+m8DhJhWLChOI?=
 =?us-ascii?Q?uDtoNwgsxxsze91izVtXy6JRcu230pNbrpmTuQhNBq89lq9E7nwHzUyKBtpD?=
 =?us-ascii?Q?V14tYY5s7ch0jn2bokg+zpLLrJXzu+eyF2rVvWqLg2l+9PDJzRYTlwzN/qiO?=
 =?us-ascii?Q?Hx4QpKhFltr6waxoEDeopA+M2i8KUeGUsLv0kqVuv8GkRJSrYW7RS5R6Dwcx?=
 =?us-ascii?Q?rrBRlxcKjLmQ1CCuJeFrQqlpX9WZS1eMQPOb0P04IfYG+qzB4udE8e0zzNuy?=
 =?us-ascii?Q?MVak5vOWN2qNmH77YJhCilmyujBy8LST2aDMRvy2x0tGEe/Zv/33Wluxd1O1?=
 =?us-ascii?Q?Di7cCo5i/awIyKoyAij1Pq597nFvVAvL33W9DWrLZJHCOqMQDU55fzOjfjTx?=
 =?us-ascii?Q?71Fr5D2fPdAPGWTInw3SWKCKGYxvXht6bk3aN3XOsBDotLDjWVGRuUpZbo17?=
 =?us-ascii?Q?tnuCZBe8r69h/rlO/wS6Rxzt4KrhHaQCpBPiKNS+Y1cnC782fKqVc+1damH8?=
 =?us-ascii?Q?mKj8EoniwutfGNWRi8ftbSsSf9mHu9HRqaQtIk6wJYI7cjMMfXCsLUxagnoV?=
 =?us-ascii?Q?zAKKSbTogeqlHu6Q8+FMOHJqq8h7sn9fy4Ezic0a2gwn4zr6I2z/fAELUi8o?=
 =?us-ascii?Q?etMQnAJOtz5UkpLtphtc/DcD8Kc+JVVrS1IM2ezaPXKZTSCGMKekW8NqAaqb?=
 =?us-ascii?Q?EZx81JgtTHRUOtMvNR3UaJCr7Kbq4Bn8s0ZM1+lv/gPpixLqs7bV6pKUbol4?=
 =?us-ascii?Q?ezneUCpm8la9S/wJiamxu4D4x66is3Cy3f/r7bXa/N8Rd4Ck07HIKeUKV8cI?=
 =?us-ascii?Q?9cyra6swLKZ8a5vpXNjVgwI0D4e9+OWAcNOxuC4PAekSfwjRZvzWjgAgAU5S?=
 =?us-ascii?Q?cPAY7Uo3t5qLAm9kFLDVk+DjuINgLHOK7YEw5rKwpewqLCOLqBQkj7wGH9cN?=
 =?us-ascii?Q?VT1YIXWGdeXHPiT0hQYgeS+iw7FlVFUfmEMN+C58IOkNnN9srloaVxWE/VYt?=
 =?us-ascii?Q?n1Yin/BrEWKsIjodVsJwgeKvPwCoqJ7MUkTlv6+qyzPe8tH8WojLQ8bedNi7?=
 =?us-ascii?Q?C9nwdg+cKTRzLLyHwqlfz659Muthimv7qWBXtVU4WBn8VGcwHBPyxUhgkJ01?=
 =?us-ascii?Q?KJCijS4PnxVRnsS1+5v4B3mkLLLEZW/1GoDWW7wNCsf8ss6mBXEDB2ci7WWj?=
 =?us-ascii?Q?xmwxjkSlmt9lxQgZgXyc1ERYogjUu1IFTdjAbKQp9eILHTJTY0U4dRNBpwoR?=
 =?us-ascii?Q?W5ZQW6L1OxYN6nfQcaUYry6HYGhUD3FnXnUc+VlqJ8yQuwaQ3J8oFzEor6r3?=
 =?us-ascii?Q?GnNHhfplt2KxjNV1bArVziFapcWiw3fwnqCsgqKt1DJo9tpXg3PWr571w81L?=
 =?us-ascii?Q?o2mACJ53ZXdA3B7o+Xry44BEDzDyC2RItAHWttv0n4+xy32PQHyKrhOLm/PX?=
 =?us-ascii?Q?AwDEhc2guOk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MmbiyYsJFBM9LSzhkQRGY/4hmdzsDksH100JnzKe3/dZwRUv+BZU8897pVwl?=
 =?us-ascii?Q?snJw3tFZE84KYHCDKPKuRNjgs/c8cmBgAZ7J56GPG2Hi8qfzESmQc5XQ6qcv?=
 =?us-ascii?Q?apaodXcIpEZMkKsajyTLna7d8nQdeCqz8iDmrIDixQfAft0RUgfO84rOHyWj?=
 =?us-ascii?Q?WwCBcXWDXAzrIh9ezLzvMPfComvkuvLeYDFmrwnswupfhNcjirTx2I25KezG?=
 =?us-ascii?Q?K1f11YZGGg79zS/f0fJc37+oRabuGqAe7qxaJtLgbdaqCM0RuZp5MFgl4p3z?=
 =?us-ascii?Q?AkyJEY1FAWHDLJdSX2wt8TgJFYJTYTpqtrgwUoleO1LqXvIzFYPgkewKUb4i?=
 =?us-ascii?Q?T0RPwlGAcBeky/JP9NI7VhyHJaseriKjgpu5iYBHsEhfoGE1j9PXF1bxp5Dx?=
 =?us-ascii?Q?f4cNE+7/XETuZkhXQy0b+gZSb3JzCdRmOa3xwJ2oiZMF6B4RmGKlaxrbJ/ID?=
 =?us-ascii?Q?Mi6tkjRqcgH8f+EoaeOxZM8UQB1+pyDCUhSQLjsD3hwDMnCXhnHHHnUioCMM?=
 =?us-ascii?Q?yoNA0Jr5Vc+szOgmBLzQz6nA+DQZKQb2nZCy/LQcB4Xx3VEbto7Zua7/MAvj?=
 =?us-ascii?Q?Zbpl5Jl0hjYqWr+EIJAppXveIqHxSJtnxd6ctL0+pqEWIiafQg7ckoAE+tO3?=
 =?us-ascii?Q?il1qyjRObDx3dB5Uf4IzEDXD4/qGzqDu690pLYwZ7/NX2B5oT0/Ii0i2uOhQ?=
 =?us-ascii?Q?jgN/m84pPX0zAnlZjudxkXuzOf2Nyj+XyQe6cwuBWpOPBMZG6a6eCKItgv/z?=
 =?us-ascii?Q?H0pneYgLVPE3W0Jb8vVm3OVC+Qn0iDVAZ0ZsahS/n6rKGSicBVbXXPBphuow?=
 =?us-ascii?Q?OosF27RvBXuG0Z5PhzXO8s0motMlizaW9ZQWPNvHcgeVq/of78XeEBT5NdWW?=
 =?us-ascii?Q?Ry/W66Na27GoJzTD9SvnQSEoosebCkSDlVudM3uYq27Xy4rssACyVLymTEJb?=
 =?us-ascii?Q?f+kFv+BIUfXS1mGa7XdXq6Xxsq0til6ssp92hbbT2pdZjzgvt4FgXRQIGEDI?=
 =?us-ascii?Q?fEu0U4Jl17GK3bqcVydWeue3DhJFilh5UkeNanrz2Okj7N09mDLhh1dEWEKU?=
 =?us-ascii?Q?Jlks9OZ8z3/FH4g9YxSVWLF7qpuzbR1rkbYe0CMCK3fXUKVKtR32lpGjR9x9?=
 =?us-ascii?Q?MZMz8owkqZrkngx5v1qEQiBWnQ7EckuD/yZTh4+JN/fLLMQw1psnjMq7tGwH?=
 =?us-ascii?Q?Hgt1AtYBi5/pPS7iUrdBrohDjpcHPRngL3UPNr8qVGF/qsH2hlBlbYNF4HRh?=
 =?us-ascii?Q?jQizL7oqJ7pReiHDpYQfVnBTUHxKQ/oHamu5ub5Y+JbR14LLNLJSIYzRz4gR?=
 =?us-ascii?Q?0UaMqWVxkiqshIdmAMe8duvW1QbnV6yOb2vaTHSsKW0zG+kNf8n71+fkOT8D?=
 =?us-ascii?Q?VxyKFg5wNLFy+UOftairHA2DwfWDr8E6uO/r4QGT4eIEuKvhoou/stlqqY4A?=
 =?us-ascii?Q?GShjPdROjJRtlcao6XgZmwAiwDvhab8pzid8OQJk7/cFESt26YvehWQ9ywcB?=
 =?us-ascii?Q?QlcszriXQ0vpp+jMcDfCaLhOLOb1HCyH1ulB9fNBkFK9fSfhJL2lILn/v+2k?=
 =?us-ascii?Q?iSb3O7aX2VMPL+4OtyZ5dsetTp8KmGByrvi9jSnPqnKCIQR7+1uHCU5mjKnz?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b987f4a-e2b9-4dec-f264-08ddc3d2fc64
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 19:08:30.4084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vrwrawxUT3T9PsygvdFn/Gg+XlOAbMTOlGf50bBPE0CiqLklxIxcBPW5L+f2OkXt1PPG2YgOLT0j/bCO1wCJ7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

On Tue, Jul 15, 2025 at 05:41:28PM +0200, Maarten Lankhorst wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> The !irqs_disabled() check triggers on PREEMPT_RT even with
> i915_sched_engine::lock acquired. The reason is the lock is transformed
> into a sleeping lock on PREEMPT_RT and does not disable interrupts.
> 
> There is no need to check for disabled interrupts. The lockdep
> annotation below already check if the lock has been acquired by the
> caller and will yell if the interrupts are not disabled.
> 
> Remove the !irqs_disabled() check.
> 
> Reported-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Link: https://lore.kernel.org/r/20250714153954.629393-7-bigeasy@linutronix.de
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_request.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index c3d27eadc0a7e..4705d6d6db141 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -608,7 +608,6 @@ bool __i915_request_submit(struct i915_request *request)
>  
>  	RQ_TRACE(request, "\n");
>  
> -	GEM_BUG_ON(!irqs_disabled());
>  	lockdep_assert_held(&engine->sched_engine->lock);
>  
>  	/*
> @@ -717,7 +716,6 @@ void __i915_request_unsubmit(struct i915_request *request)
>  	 */
>  	RQ_TRACE(request, "\n");
>  
> -	GEM_BUG_ON(!irqs_disabled());
>  	lockdep_assert_held(&engine->sched_engine->lock);
>  
>  	/*
> -- 
> 2.45.2
> 
