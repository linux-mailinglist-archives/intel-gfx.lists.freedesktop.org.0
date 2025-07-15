Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6929B06683
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jul 2025 21:09:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B4510E387;
	Tue, 15 Jul 2025 19:09:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ou0KYjyJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C7B210E387
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jul 2025 19:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752606539; x=1784142539;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UgehqO2zT086vKr4xsf5ek4BmuibeUYsBnCo9iRHGZM=;
 b=Ou0KYjyJd6pqONo2U74/zJn0gDbpruibGI2p0VZmuukJ6gTShhUrsvqH
 MeG3z5b0etj0cqoua3xcmXv/0e+gK+HfiGuj2Wg+dS26K6jHNmT1wE5AG
 8p/KUXr9upvDw9rK52GtRnKv1zZlen/6lkvhGRuLQCK/1PR5reSPcPliq
 gaGH1rVbrGE9eSM9YTGogQHxf/2YMhGU8rYFgVQ9Ha5Kp8mV5gTwm6Oas
 yGUgW8ZWYUX6P7latIDYtTam55uHDgIRpICTVPmaSLQ2SfoYnV/HAFmSJ
 soRvBq49hkhmjddA1GJ/weVrItxbhCCEF9aziVnkdP4YD4IamPR8g2OY7 Q==;
X-CSE-ConnectionGUID: vfwaNRPqRES6oCwXtcy8iw==
X-CSE-MsgGUID: hnOkWyMTQQepqoo6eSPblg==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="57447970"
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="57447970"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:08:58 -0700
X-CSE-ConnectionGUID: EPsPJ6yhTLuSiWjRmnaxNA==
X-CSE-MsgGUID: xA4Y7K8VTFqSWfgTeJ1s3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,314,1744095600"; d="scan'208";a="161851722"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2025 12:08:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:08:57 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 15 Jul 2025 12:08:57 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.79)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 15 Jul 2025 12:08:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O7qpZ0DHgqTq4FQjhCMtSG64IeOnLZfoHKrHqjK05TUJW4K7/Hdj0FA4AghS0aQRl165NOTQowhNOWUTQxBBM+yYoUiI23vbf54uBg0WPpv1cXIc/nCv7VhENIFVoxvWLWGOhxmu6ILVECNbIsboabJhS/NYstah5vn5pTvOr7BQscdBx/3uYS7xrGlrCMf7GaKWjPo3Yqk/oJp7ARPzqb2QL6uMvADvByXjYSvzGZjDG8o/x0C1vS10zMUmzqQKoA/q8Emp8meCMyon+INbVTyePS1HrJ9SlN5bAaOTjSZJwkYt0q4PmBPXdQ5sf2sAP/PVkn6ArX1mUZHwEMWT8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tq3cYRrU1gbEYaalOwzmbnLIa146bArVNfi3955zqlM=;
 b=HNA0kk3XUnc7U5DiydIhuE/C4fHjeM7zXBxdUd2ddtR8T4Ux8RZ4d9dYVUzCdaBmhfeZfMGtugfru8vRUQxsi5yJNwEeUrx0maKikfWy5NCR8Jhn+togKSWPAnqDPiOosITfC1HtZd2kfxwhPCln+Bs6SlYuzsg6PGHgSqVsCy/DwcKILzDzZSmNg5MWfHjb3TidtgaY7Uj378vJLtE5phvksqQhRkV8hi4fO6n4TNDSsH4XT0zrlTwL8bm/bbl8G7S08T2PW8RxEnvjj3zzVex1HxTGR5yRZOGu6grz7DnYCkvqE1gudXPZM+m2CHm+6AugDL0pB4emnd4vYG6/RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN2PR11MB4712.namprd11.prod.outlook.com (2603:10b6:208:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.35; Tue, 15 Jul
 2025 19:08:50 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8922.023; Tue, 15 Jul 2025
 19:08:50 +0000
Date: Tue, 15 Jul 2025 15:08:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-gfx@lists.freedesktop.org>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>
Subject: Re: [PATCH 4/4] drm/i915: Consider RCU read section as atomic.
Message-ID: <aHanPlftvW2RShXR@intel.com>
References: <20250715154125.27813-6-dev@lankhorst.se>
 <20250715154125.27813-10-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250715154125.27813-10-dev@lankhorst.se>
X-ClientProxiedBy: BY5PR16CA0023.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::36) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN2PR11MB4712:EE_
X-MS-Office365-Filtering-Correlation-Id: 47c95224-587e-4433-2ef2-08ddc3d30818
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jjwUi9jX5gk/hE3CnHWlWPAoqfsrDoVmXybNvqrQwoCWq1Nhw7BZYozZvAbD?=
 =?us-ascii?Q?XeL1UjFFBShqOGA7vaCnhMvpdpgYnbzxcUScX+Glr9yEmbTi8N5y6Rp0gmsq?=
 =?us-ascii?Q?osH/+qi3HSQpdzfiZ70sHyCnp6ro9RqQmYMdyecrpOq8GGaE+K4cO6AgvekN?=
 =?us-ascii?Q?JRKbvdoPTLg6nCHCOF00IayFZVwlr1kKpWRzhFFpuW7TBGKV3cNvR1I54J6G?=
 =?us-ascii?Q?q5LhyCMNz48l81lztZojXm/o7fPTgIHeZY4cQVhq1hrg/ETuVgQ59mz0Cans?=
 =?us-ascii?Q?+wJd2VCaPY6IaysGPTzfZi/1eyTCCaFK9pAKmcjchNK8y5hzLKUW0lCaDag5?=
 =?us-ascii?Q?iicXCEiicjMmhUyChJ5n3CyOy6yoE4XguUAdYKy1IaucplX2qp7+P3VRMxhO?=
 =?us-ascii?Q?zR0msiLtPcP/yjxZf6YjQIjLKloNNhCLwJghOQlg2dETIeTIaJMpFRZ/p9xb?=
 =?us-ascii?Q?xnCVdbDDCYC8kF0HS+RrU2bHmwf4GWdotsZDMoCzhzOAq6kbkHOISdvo3alJ?=
 =?us-ascii?Q?LcvYj786o68B2k3rr2JqsbMfGYpxA3ykO1gimqc3ed+1iSSlyN2jW265ox4D?=
 =?us-ascii?Q?WTXHrDMZvwFOeEN2Bv64TkrUZUPoaUL4th74KMSJ1ehUvqz5GSuZmfiJLM5V?=
 =?us-ascii?Q?+s2Qi64a9L4wDveUE8/Rxkp7ko4nB7jewrZJ0SWHuNMzK6zB+3WYmn7b1tuW?=
 =?us-ascii?Q?efUEXAZSL+isQI/u0xUGJPWXZ/Kb/Q9jAB2AFXfmqnjhlEK99r547zhe9+Af?=
 =?us-ascii?Q?8m59gvVFH4W5LJ96LaGYKrfbQIudkVlFwj6IHlkYhtSLUt/1VLARWUQCNSmK?=
 =?us-ascii?Q?7rD5pxRXT6UGAvbDOeGpyWGewjkOBAxJZYLzpPdFmoIXrIHWY1+KcafETxUG?=
 =?us-ascii?Q?CjHYQuLusLoXwTJfF5S2yygoUWbjaUgwgH5H/GlsKtdHAP5OBvWt6fo6Hj2j?=
 =?us-ascii?Q?DkuDido+GsiJ4xIqayt1eT2tE1y9lQjy9FArqZLo//BdgIl2n5z1ahdwp5b4?=
 =?us-ascii?Q?DDxMSW5b0zG6SD7LJVbx9wHGLEBiueB80KHeeD6TvhB/HQT2TnIbpSdGyZ3M?=
 =?us-ascii?Q?tX8jKre4uMgqype0Ou07K17iZ8FTURrM4d1P7m0sYB2z/mrqADRDtb40mYGd?=
 =?us-ascii?Q?1RB4FoH/2I3VixfzYFQqmXeH0rr5YMos8p+IB8TzxOgv2R/fBLvwZkR+D1ko?=
 =?us-ascii?Q?9ZegmYIjZqSj5bi8oAZ1kJy7rVZmLk9+yerwIh2exH3B/MhMWsyj/oSY4nmJ?=
 =?us-ascii?Q?YeZjtEaCkBt7R7ath3x3izX2Kf1/VJ60mYi1qQ8sSEFGWUv8nSG5WyT6sjXr?=
 =?us-ascii?Q?kHaR722caFVV2t4og1HezZ0AQcBjPNG3CbxvnWCWk0cYPyEdfHHrbgPdW2y/?=
 =?us-ascii?Q?J96zOS4AbDxLfhugJePiqXqFcvfYYqbkcf6SeTwuNuJnF0+eGJP6Kzc3bz8T?=
 =?us-ascii?Q?ABOtSTi718A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xfEDG2q4KW21ztfWujdARZmNmaL2VuhafbLU7VhiNkwQffLLbbvS1T9pCmhI?=
 =?us-ascii?Q?1XuUn1W3LymvDglql9UdykgsrsMcXwYxL1Q2TtsU7Nw+2uzuv+PKc8Ed0/Zk?=
 =?us-ascii?Q?bWdFu4a96CGiy4r+bNPegyBfcTYsPcl6bHVGGqvWIhnTvLUJFU9u30gvElRi?=
 =?us-ascii?Q?3Z+oYogzNzWoZqHkzhteMhbLBCS4d1/VcNlG8ZZJp//kOmsCdGkDj1DKRCxK?=
 =?us-ascii?Q?zJf3J7C4gva9tpcpzwkXeIytkv97gb8GVovu9Cs1lF7lWfdTT1uJaDq413Z2?=
 =?us-ascii?Q?e1dbzzdefUng6i5BwvhDEnyJrgocc3Q91lK77BXSrsssxB8CpCmdPg7mnQlE?=
 =?us-ascii?Q?i7OIbyEx29wAdvY0bmRosnbvay/vqrxeny8LAELl4xZONnxlXm+Rvx+jo1A4?=
 =?us-ascii?Q?0c4LYUVgp3F50DSbg/IB/kHvqMtNXzvHAYPveKOOF3G1FytwlVtFkc6Xo4U3?=
 =?us-ascii?Q?vNp8rzvC1UscB0knuHU2b4JY8yerT6t7VWoqfKsVHrb5suX+zZXt9xKmtoPR?=
 =?us-ascii?Q?od2Aks8qUIHEdSJOtKV/XwqDD7FbV9s96lSL+NanMDwJBM+L3wQEqHJvrHW/?=
 =?us-ascii?Q?8nNqzjTXuuE3KHmSCkGPzpD7l9IuitlaAGGQdEgLHPVf1ZeE4x7hGlb1dlr2?=
 =?us-ascii?Q?vEFmnpZRF/OmIeMs4qIIcjUstb2YkydsefBWlwD6Sj6Pdupk1tGDUzZQ9oK/?=
 =?us-ascii?Q?WUzqSuD0I2Ixg6pYGck1MusvYwU8pbksGR8JSpS01fVQFZ/8t+1Cc7NROngW?=
 =?us-ascii?Q?eTjWrVGlKeK1K6oK/Vzr7/CiJ+LFDFbUHDq1fR4ipMB/OtYsZtELUUdBWZbk?=
 =?us-ascii?Q?qMmEYkGPTlrfbgg2/Nf7+pBOUgUgBhvkbr0ReTpG0wn3lNNKIaep6K84QcXa?=
 =?us-ascii?Q?ON++C/EEfqy2BvEJ3wyI4q76sHi1pc1/K+pSGTEXzf+8EW3TSS4RqHg8fibh?=
 =?us-ascii?Q?KZPjLM+sWsnMMEWI+9rcAVeA03RnYPuvZTu+h42qfK7DTZrzJLXOnkqDjzHB?=
 =?us-ascii?Q?wAgFptxHQfOOUhoVSkD5CeKtK1/5FktICUmUL+leWTvUBwz+46G4RLRFENsL?=
 =?us-ascii?Q?hD0Z3gy9ppLjiGHsSBnYW/JFFynXMbB200xk/poXQPUCXHRynIg9gF83Qo2E?=
 =?us-ascii?Q?hUgw+bNo1v5oBmnBqDJuevVmiGue3ojXhSghVXY/dtap8XS9P883iQltWsWa?=
 =?us-ascii?Q?tUXg45FY7l4RoPXe+Md8tOF+z7Vj4/QyuGIhevc4lgsNa4KQsyYyF1KhFZ78?=
 =?us-ascii?Q?NAceQas1uiJoRJ7ns4Xb8Q9/TWkO3HbT3+rwKzceVde9WkFvBXPt7+Fqki5U?=
 =?us-ascii?Q?Ta0peEBdkXGVZGF350zcPi8eOoquj6YiAE6bepzH+jeKm/nlB1G9S2PSYS25?=
 =?us-ascii?Q?BXlkAhjYvXHERilsouzwKapcp8SxvtUaSsHYLh+pfUXRR5DKL1yy0SKCwBjr?=
 =?us-ascii?Q?GORyvtfrq9iMVA4d75kH4Cp0EqVNXrow+9m+YpSnUzgJy12bRWye4AHV/dXo?=
 =?us-ascii?Q?qdPu6+UACugK3qJWSyWDXitAjLnaF+SZBA7wE7wiTTQ6xQIQm8+uoyc6zw6t?=
 =?us-ascii?Q?3aoqUwPXoSdYr/4OhG3vFWzbU3WwlsJ28N8trsWZMhtnSYeJhYw2aNeu0a8G?=
 =?us-ascii?Q?5w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c95224-587e-4433-2ef2-08ddc3d30818
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2025 19:08:49.9526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QyZ0NCPP6jbqQgDHf6b3+WR+G1DK3UUYbUvVr2u5+WEQy6WoWiZOeexisg8sW+YPf5UtouqScD7/4bm1AU6CJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4712
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

On Tue, Jul 15, 2025 at 05:41:30PM +0200, Maarten Lankhorst wrote:
> From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> Locking and/ or running inside interrupt handler will not lead to an
> atomic section on PREEMPT_RT. The RCU read section needs to be
> considered because all locks, which become sleeping locks on
> PREEMPT_RT, start a RCU read section. Scheduling/ sleeping while within
> a RCU read section is invalid.
> 
> Check for also for RCU read section in stop_timeout() to determine if it
> is safe to sleep.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Link: https://lore.kernel.org/r/20250714153954.629393-9-bigeasy@linutronix.de
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index b721bbd233567..f5a6143ea8a24 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1609,7 +1609,7 @@ u64 intel_engine_get_last_batch_head(const struct intel_engine_cs *engine)
>  
>  static unsigned long stop_timeout(const struct intel_engine_cs *engine)
>  {
> -	if (in_atomic() || irqs_disabled()) /* inside atomic preempt-reset? */
> +	if (in_atomic() || irqs_disabled() || rcu_preempt_depth()) /* inside atomic preempt-reset? */
>  		return 0;
>  
>  	/*
> -- 
> 2.45.2
> 
