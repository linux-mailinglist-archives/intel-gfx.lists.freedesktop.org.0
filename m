Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F17AFEA25
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 15:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3B410E7EE;
	Wed,  9 Jul 2025 13:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Odzy0bOd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9344710E7E9;
 Wed,  9 Jul 2025 13:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752067684; x=1783603684;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=4cebQIwPhh0eMA+tNRN2SvTfDzwj6AAwI44zZZG8ZbQ=;
 b=Odzy0bOdKl207aU8HTrzjsjQyPG9BxQhwQKUGL89yEBZ/WgJwRxx42fG
 jvV64Mziuj9lE+1AsdTwgkvvDoCPSXJKZeZ+aAd5Q0DC3YIU6/EqLTm2K
 1GbXusIxaA6w97XrWZ/327uirADx4obB2JKYpGN3NHfFX5KcLPUX+DMlR
 6HiwPsCAjcl3Sgov4ZgjjSUojsyMtfyb98F5QZhWPC/ST4lGWhKXBz+ey
 Ee6AQJe7lCYEDAWtbvU9pu84uHaFT+ibnzw9RukLxOw4ZLtxalxffisg1
 LPdmXV/jbhUX1KiWcCsjXy9HWAs/nbJoJ38GFwZoVFEiLfVPi32k2ub/W g==;
X-CSE-ConnectionGUID: zrYzS9boT7qAle34rg3u1Q==
X-CSE-MsgGUID: AssXPgoPQEGhYcyXJJmIsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65026518"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="65026518"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 06:27:33 -0700
X-CSE-ConnectionGUID: bIYB8kN7RlW3RiZ4JnBONQ==
X-CSE-MsgGUID: sX7k8xWTRNmBaaXMzCzw7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156343658"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 06:27:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 06:27:29 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 06:27:29 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.80)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 06:27:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cuAhYwIiNjM3YUqExSh+/dAe04Mf5AsPgRlRhAC6ar4lWulLpXiOeXj09oLYT2g4nWDh21iLg+Y+P9hz3jHfmU+TAKHiSVheO1yysGnrSZE7/PNiNiRkOtXQbYYVC9RLK4GuM9KWAZ+/N/iAY0a8nd2Qu5A2hynBgoi1Eii+EIu5b2louJSFlXgscWd3BF4zDO5Auh/u0MrRWvWpoB/XYd8NNf/ZTA7zrJ6a+53633RMj4Scn7Y2rJXt3ICtJC3bekxnAmXHO2AMGPDZrSGCQBPgFvbljcrDYSJFZ02RE6ELADKeoFca7FEA2PRTMG2LxAVhq3txUKs7TQ262pKi4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYJ94k+S6LUahoJX/nUpu6LQaTd5n7tqo3c9U0yI9cM=;
 b=CL4DFI4wImRo6FaVE3eAvK0FAaFWWA0PG1BnAArQLETNdXHHR9An0xizw86743+3ZYSBrKJyLRbU4/+33rZqVamN/wQtAxn9fSSFwZob00CkLzPLqGMPY1h7NVi59xo7H3Be2qSQ8Ao+D2hcfBNhPDwpqR7vHhFAjULk/8YRok8Y4PFDSzK47V6E7xRuGyBpCr1655Jy5Zq+cLvLymluEkHFJDfF5JGQzYsQkgn5qjYj4LllLeHh5MBVB2hiJa4nAltQw+X6jYYegtMDJca9f7DBBCaRXjkD1llPMn50t7UkAZpZo3z0uzUeL+cWLwb/uV0sGa4j1SnEfnPOOWzWKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SA2PR11MB5019.namprd11.prod.outlook.com (2603:10b6:806:f8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.28; Wed, 9 Jul
 2025 13:27:27 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8901.024; Wed, 9 Jul 2025
 13:27:26 +0000
Date: Wed, 9 Jul 2025 09:27:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Message-ID: <aG5uO06jzY5EbPRq@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709075758.2510714-3-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR05CA0205.namprd05.prod.outlook.com
 (2603:10b6:a03:330::30) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SA2PR11MB5019:EE_
X-MS-Office365-Filtering-Correlation-Id: 8edb7eb0-30bd-4727-9528-08ddbeec58b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?bekKGCs754KDKkPws8i8erS1K4UydRz3dLeBncQonf6j5cZ8cSbGrGLTzn?=
 =?iso-8859-1?Q?ZNT3tCuWQMzmM2NJf9R8y2Y4GC7NaEiCPjzIYM2L5o799xjD3sr0/E32xR?=
 =?iso-8859-1?Q?ZTCAj2iZMQcS69ZzcFHJDhAQfnu642H+fL7vkoneAUyKkXmcIUaQXMayiN?=
 =?iso-8859-1?Q?d9CGz89VfY4/xhD4TfwvYQ9jtptxYIDOafHVvyHpqX0rJ87Riu5CqQBXKD?=
 =?iso-8859-1?Q?h2VKLSScqrLbSn1/OksaLiAJVL3Gt6pz7EOJ1sYh0KmJnxF0AnjOIYAvOp?=
 =?iso-8859-1?Q?rijmwzbD6BSwBceh2nVrmNgPa/kN2vePEAqbKansDc6GM+b8z+Il/FPVos?=
 =?iso-8859-1?Q?aVBt6PYk8kQEgx5Cx+jvhoN+iN7pfecLmWeIWe+DU+BK2/s9E7YTwfxcYU?=
 =?iso-8859-1?Q?pBU4SQCxchJTdwYftBTXpmU2H8qW2XybJJA4qI2H87uqsNuieRpNcSr5tI?=
 =?iso-8859-1?Q?OIHaxY0iWoFUWF3C+NGGFlyXxd76czM41EN1yZqDoUt6AzDk0bcyfTSKXb?=
 =?iso-8859-1?Q?+UdFFAEoja/ooSaPEN6Bq+2Zs7yLou39LO1Xe/E7BRDIZ2AHwmuLPiAYh8?=
 =?iso-8859-1?Q?Ig4SeWrodwMJNKdQ4bDFemWS2DivI+VzYyFOjbVCr/yZhSrpbyAyehCe0F?=
 =?iso-8859-1?Q?HsHRf4h53swjhiKWfkr0+LWlVviA+MIA3S43+nUhsq5+p8e9D7piqAJI8P?=
 =?iso-8859-1?Q?nbpacFMCPS40set3OVfBIiGpbF1VLFK9zn9QCJ2JIVH/TnhvLMPMQJmRMr?=
 =?iso-8859-1?Q?OltyKRgn9acDIRdXC7DqcNr8W0tUAYo4o8WI7bxKUz/XvzG9DTncAYsqWu?=
 =?iso-8859-1?Q?oOB32rzqgKhtI3PEf3HyBVzFaAbgmjdxqMvCz3IhxR5tOy9+YqpeRN/4JF?=
 =?iso-8859-1?Q?esEZHVSaShdDzHP0M4ev7k4lspOHp/Ir3wWnShkb2s1By1gLY2cNqPxldz?=
 =?iso-8859-1?Q?y1bDEuWZ3fGgDPQVB0LdShGQTECYLhM9iNKvdoB5XfA58kF4M6r6vQ9/tD?=
 =?iso-8859-1?Q?QxlAEBEpuiSHnDpGltyT0P0ndfghiRm3TS1U1mF4b3oEWw7t5i6/ukEphL?=
 =?iso-8859-1?Q?ak06Pl7LoIWG8T3RHVhEsDKZOlzBtgly+pMJbl57sE04tQsv5ytqRbZGXG?=
 =?iso-8859-1?Q?U6lEBenMt8oJozmLVQ4LBGUG+5CJrUUOKrpxhb6mxjqvgyCCesHTYWIpDi?=
 =?iso-8859-1?Q?Lv9b32HyWHjXKu1uCZbXSgljGG653Ijz9C4kUPCmSTZocGUG3yB+jLfuW1?=
 =?iso-8859-1?Q?UpR32Xu53ZA3GzlQlh+sjNk2HgFeLc5vwgLUB1AYfOj1fHEFbmBLmFDUlz?=
 =?iso-8859-1?Q?hMsFAX/ylb/5cnZCwtLX4zvI4XyDWoGROFkCF30DW/7SUYUagzyQLw3Z87?=
 =?iso-8859-1?Q?WooFvt0lKRthrkYTDexSgWyvHYrMt2hmZJh8VWXcgXnabjdKE38DYzW6n8?=
 =?iso-8859-1?Q?R5JI0iD6YMhoh+do5/GHBlLIw2M5VgisZqXJ0xqwcyqWzGktKk/bxg4SXS?=
 =?iso-8859-1?Q?g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Zi4FRiVgXCHtkW1MAPi3bt51pgyAWAvaNnQCCNb6tFMxnAiKnn6XG063ad?=
 =?iso-8859-1?Q?9YMeslbwQvRQH44FcHE3iNMLvpKzw+aFiqJbmc6LokbmtrZ6ZGrVeKuK94?=
 =?iso-8859-1?Q?E4zCBN8QlfFYrtdqVwqfd8CltDeSEONK8juBL+CYDdX5WghkcV0Ii7lES2?=
 =?iso-8859-1?Q?G7mMpr5JZv3kq6n/I5lDROK0SzJ/OywEmfix7tEi4RzHZy6wy8Apt3oE90?=
 =?iso-8859-1?Q?1somSFE3DySwR5Dzm4X17dVfSq8GQdLWe9nVI0/SH1GvyQE2iUf9kvOLLj?=
 =?iso-8859-1?Q?23LAaqE3frMcu2M0btmj17JruuPpDkQArML6zR6sE+KY6xv98dIGWOMUiP?=
 =?iso-8859-1?Q?2bpIe9T1l27Xn+1g9jPFIF39XQh8I9DNyTHeH+aJI9eKnbtb3Z4nsKzFDa?=
 =?iso-8859-1?Q?4fQuheGaa5MnIeqBd0MkAw32Dtu3mpwtIPpQ3Kl4WoFsIsj4XtAHGCCl3u?=
 =?iso-8859-1?Q?J44KQQWn8hfKUGju0KlovVrEEQzkg84rVmc62YZG49Ws3HbM6sg4NRJIoA?=
 =?iso-8859-1?Q?XObB6NXXKJKtyYv6m82EfOdzvAZRHRuCWPh610E9m4Qb3jTmQXOkAQFPfp?=
 =?iso-8859-1?Q?joAcv3EC5qLiQqnUu0+fFZd7EKZZz1M33WW0o6d37NxptcfJa9qrS1nT7n?=
 =?iso-8859-1?Q?3mF7TgPcN8ffbQr9bxh8nqBeo8+9YHXgq4j3rATusDVrf4Xs9qA1s50prW?=
 =?iso-8859-1?Q?t1Oz3gpVU3LSz/tec+gpHEhotvmgeKxdYCQgBD53+RKQH+wHyow7VoySlW?=
 =?iso-8859-1?Q?nHHJ3yw2QHYKo//rFfYRXQuA3eg0IWAfIzL4NLkgBAOFrmkeQjDph/UZqv?=
 =?iso-8859-1?Q?cqSyvIzwNlmxbNEddaHiFDnnkNmLdTGOA6nHUXCP8V4YONtPc+jqxi/D7S?=
 =?iso-8859-1?Q?o6Vd89NcFzz9gT/ik01WUb2amaSLPyF84BmIPiLTBw2iQe83bpWE2a/246?=
 =?iso-8859-1?Q?G1y8esIuRN/5RcSAOsr+1Vk8bU+PEbmNwyUZ9Tkb1YO8q9hYH17cwcr20v?=
 =?iso-8859-1?Q?BN4TzgdO7Ld8/IihVQ3EeemsgUhXM9qRQg+yMMsYTveDY9DHH/YPiYShNM?=
 =?iso-8859-1?Q?Ca2lmSyAr9uVOSkJtWG8Qt5WSWyk2RdPsObP1sctKG/KgTb+nhm5VZ914J?=
 =?iso-8859-1?Q?5fS/MMC6H81Ahi549M1mCn5CgenkxRTQfCtQ2yvyqD1JjxkC/a3TUKMR+d?=
 =?iso-8859-1?Q?a11xveooLYWEWVgKPWwpN8sU/K7TuPD/VK23jF9rlkpDYGdz/k9GOSp0MW?=
 =?iso-8859-1?Q?aTckQnNOm7/RsXEXL0+lfjsRPwGpxszHn7O1UQJOr7vOP5l10vhoXgjJou?=
 =?iso-8859-1?Q?CYBGXPfSSnYXgIOcaoNhxkSslmWYp2ld1k6Bg7rnMUVL/GNjFX02hLeR3q?=
 =?iso-8859-1?Q?qJzNympGH7SZCESIxj/tmcUTgujj74YJzzbr97WdIlZ2Jvp37+zIdSuRk0?=
 =?iso-8859-1?Q?nP32EBgq0+oppOnsVeXV3qmo4UCyagnx+4fvus3B2t/j1jSNUwK3DuwqyS?=
 =?iso-8859-1?Q?LnYE9sHBwx4lYFsfqpYRMMr8RXHtTDaoH6vAI8l6iNLvja/MRIeIEUERHG?=
 =?iso-8859-1?Q?bW/nUx6gVDvECKtVz8xzsXynyqPkkvIBOkqAI0LDyLEvmXelmFZjwR2h2m?=
 =?iso-8859-1?Q?d+/wX6llJ12s6FstwZ6ygRmdCIM1PQislNDvGm67daQpW1fyTNHeCFBw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8edb7eb0-30bd-4727-9528-08ddbeec58b6
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2025 13:27:26.8298 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ztJ5JuF+ZtCiFUfoDkOVnDozlO8ecCNfL2JP1aQMX9aD/M7eiB09cSV7xrCzkewk6ZEDFlhzOTw8Uc27QOznQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5019
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

On Wed, Jul 09, 2025 at 10:57:58AM +0300, Jouni Högander wrote:
> Currently disabling PSR2 via enable_psr module parameter causes Panel
> Replay being disabled as well. This patch changes this by still allowing
> Panel Replay even if PSR2 is disabled.
> 
> After this patch enable_psr module parameter values are:
> 
> -1 = PSR1 : yes, PSR2 = yes, Panel Replay : yes
>  0 = PSR1 : no,  PSR2 = no,  Panel Replay : no
>  1 = PSR1 : yes, PSR2 = no,  Panel Replay : yes
>  2 = PSR1 : yes, PSR2 = yes, Panel Replay : no
>  3 = PSR1 : yes, PSR2 = no,  Panel Replay : no
> 
> I.e. values different than -1 and 0 are handled as bitmasks where BIT0
> disables PSR2 and BIT1 disables Panel Replay.
> 
> v2:
>   - make it more clear that enable_psr is bitmask for disabling different
>     PSR modes
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_params.c   |  6 ++---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 22 ++++++++++++++-----
>  2 files changed, 19 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
> index 75316247ee8a..195af19ece5f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -116,9 +116,9 @@ intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"(default: -1 (use per-chip default))");
>  
>  intel_display_param_named_unsafe(enable_psr, int, 0400,
> -	"Enable PSR "
> -	"(0=disabled, 1=enable up to PSR1, 2=enable up to PSR2) "
> -	"Default: -1 (use per-chip default)");
> +	"Enable PSR (0=disabled, 1=disable PSR2 (BIT0), 2=disable Panel Replay (BIT1))."
> +	"Values different from 0 and -1 are handled as bitmask to disable different PSR modes."
> +	"E.g. value 3 disables both PSR2 and Panel Replay. Default: -1 (use per-chip default)");
>  
>  intel_display_param_named(psr_safest_params, bool, 0400,
>  	"Replace PSR VBT parameters by the safest and not optimal ones. This "
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index a2b5688f0c82..959b868672d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -254,13 +254,16 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> +	return display->params.enable_psr == -1 ||
> +		!(display->params.enable_psr & 0x1);
> +}
> +
> +static bool sel_update_global_enabled(struct intel_dp *intel_dp)
> +{
>  	switch (intel_dp->psr.debug & I915_PSR_DEBUG_MODE_MASK) {
> -	case I915_PSR_DEBUG_DISABLE:
>  	case I915_PSR_DEBUG_FORCE_PSR1:
>  		return false;
>  	default:
> -		if (display->params.enable_psr == 1)
> -			return false;
>  		return true;
>  	}
>  }
> @@ -269,7 +272,8 @@ static bool panel_replay_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  
> -	if ((display->params.enable_psr != -1) ||
> +	if ((display->params.enable_psr != -1 &&
> +	     display->params.enable_psr & 0x2) ||

I believe we should probably define the bits

#define PSR_PARAM_DISABLE_PSR2		BIT(0)
#define PSR_PARAM_DISABLE_PANEL_REPLAY	BIT(1)

likely here in this .c file itself, not needed to be along with the param
but up to you, if you believe it makes more sense and gets clear there...

>  	    (intel_dp->psr.debug & I915_PSR_DEBUG_PANEL_REPLAY_DISABLE))
>  		return false;
>  	return true;
> @@ -1415,6 +1419,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  	if (!intel_dp->psr.sink_psr2_support)
>  		return false;
>  
> +	if (!psr2_global_enabled(intel_dp)) {
> +		drm_dbg_kms(display->drm,
> +			    "PSR2 disabled by flag\n");
> +		return false;
> +	}
> +
>  	/* JSL and EHL only supports eDP 1.3 */
>  	if (display->platform.jasperlake || display->platform.elkhartlake) {
>  		drm_dbg_kms(display->drm, "PSR2 not supported by phy\n");
> @@ -1517,7 +1527,7 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
>  		goto unsupported;
>  	}
>  
> -	if (!psr2_global_enabled(intel_dp)) {
> +	if (!sel_update_global_enabled(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "Selective update disabled by flag\n");
>  		goto unsupported;
> @@ -1664,7 +1674,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  	u8 active_pipes = 0;
>  
>  	if (!psr_global_enabled(intel_dp)) {
> -		drm_dbg_kms(display->drm, "PSR disabled by flag\n");
> +		drm_dbg_kms(display->drm, "PSR/Panel Replay disabled by flag\n");
>  		return;
>  	}
>  
> -- 
> 2.43.0
> 
