Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F8C97C1EB
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 00:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C5B10E20D;
	Wed, 18 Sep 2024 22:41:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PDWY+DsG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F043610E20D
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 22:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726699309; x=1758235309;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7ywS4d6/h2GQ2d3moDrwTVGDxVnK+2dnTi9Qsw0h8Hs=;
 b=PDWY+DsG2d9CPGrufLfGxAElMHvk46KiRMpdRjtQOdxp+bRjF3b5m8Ou
 ZkN8Z9393d2Ts8UbTeYjRIxXBgXpzouFksegIdU7NIbStrxwm4AViyA4R
 UnbtwvytdQ7TbtRZDRVWmfdwr8yweJ30Dt5fNZu10aXmsj0ysa3IX28gg
 xxIt/cmP1wQ1MiGm1u3iJ7W2ep451WOywwrdrScXr73DdHHKDPq9Nl/Mi
 /puDEsaxLmx1PR7fik6Qw5AXTpPW6iecR/nfaYyXAa2MRWxtCMxbQKz/J
 Lm9Lvu8XlkiYu1qv+pGZW3L52DHP6Unx7DWsj6K2GQTBj/R38RzDoeoao w==;
X-CSE-ConnectionGUID: Q6OmioFQR72fLao7CvRtog==
X-CSE-MsgGUID: 4LwhJ8pFQFS/cxxK1vuY6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25835032"
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="25835032"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 15:41:49 -0700
X-CSE-ConnectionGUID: G6EdO00jQmeDUVhH8ViMrA==
X-CSE-MsgGUID: h/srol/2QVuYn9uBPub4Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,240,1719903600"; d="scan'208";a="73834288"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 15:41:48 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 15:41:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 15:41:47 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 15:41:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wx9UF/96g/dIU/5njSWQpjM9dUz3daMHyoiXadz6V+W+lHYMcXIJm/Wl2PSs/rXBK0kqMrwIY0zFsBvYpDokZnMNPfmgpsLgp2JYaCu+A46qKJrEkKGVcPNenPTh1LEYet9qX06WH1rVxVDFa5noGyw8aIvFv+Cs3BkK4Rln3dMystEDIeTmgzfZ6jW+Ds8PL09mhgvQs+PjbaKCFbDsCyD0VjQOeeIHZA9nSkK7CBhXoe3RxX6IbwpNZCEIGqCr2rJQb+I93+ecCh2BIzRqTeOF4H7O/5B1mK4bj7vs0UpwTermao4+sUhk8sgOcQgULJsRKQyG9l42rkUq9guTfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iLOPpNySKjVXaKcwrkVyW6l021Xv2PD9eFgw/PiQ7Z4=;
 b=JAE3ByVVCw/EUlhlIfMjysmdXJizQKcuIOFm1PKYXl8BWn5vZPeJaDJW6GYaiNbvl47oh/uKgoJHBlRyzcQ4MsDgnwWzLd8WGj+/BrIqjdgvGySOu2YpjbXrfeRQNZ0eK4e5px/vZUCtke//TbKdd48/rr4o7yheETlFwuYJbwD5KmyOSpCmpz5o2ShUr/iCltkq0xFMrwi5Dm/q70b5IMgF60Nrqwgpn6lOQiLUnedIf+sjSCr4/dRtW1IN6L9qqCAK2/1SBearqPVkaWzix+IYmH1QqlGVpaP1jCR+/ot3CgmeZDD/vXTXsuh6IjEdItYFAUCgrlNvoY3IVTHbTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by DS7PR11MB7807.namprd11.prod.outlook.com (2603:10b6:8:e3::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7982.17; Wed, 18 Sep 2024 22:41:45 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.012; Wed, 18 Sep 2024
 22:41:45 +0000
Date: Wed, 18 Sep 2024 15:41:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/display: Do not use ids from enum pipe in
 TP_printk()
Message-ID: <20240918224142.GT5091@mdroper-desk1.amr.corp.intel.com>
References: <20240829220106.80449-1-gustavo.sousa@intel.com>
 <20240829220106.80449-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240829220106.80449-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0129.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::14) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|DS7PR11MB7807:EE_
X-MS-Office365-Filtering-Correlation-Id: fccc1ac1-5ee9-4913-69ed-08dcd83312b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mjl0omSTYl4RyObr5x9g19MXYliD+hY1eAbNsXu4tGkaDKdyteEsKFTm1TSX?=
 =?us-ascii?Q?oTZB6Ml1FJtzXUVcJJRng10Vvl0GS6QZ3AIiKNNizp47rsVjiqYLgzuvDlV4?=
 =?us-ascii?Q?XlAbJ+MpolLRs/tIpN77w9KGS6YF91ynymGuSDV8z2HqpdRiLrEjcGUkh/EG?=
 =?us-ascii?Q?V6CDpWYas7pTybrjyPlpaC9GMoFBYKLmXEVgnoovgDqXeZtKHqWAf1x6QmRq?=
 =?us-ascii?Q?HY8E/M4SQA3vWBtFZ0FOozIPMY6qfF5OfKVbRpVnDW0WN5sAhoo9NkOR27VA?=
 =?us-ascii?Q?hAHQk8a3KhXx+z2wM1wt5kohyPDR1o1mb6PQ3HdykBrDSJb9tncK8LfqB6PT?=
 =?us-ascii?Q?VDccg8EPWWMe67m8q55Efz+I6gYxbxz0NrdQIZVgbBkNVJclcz5FiGZjNRI3?=
 =?us-ascii?Q?Cjmdvlvhath5R8TwNmtTP/AKokTEB1XbIduCtVvmtSDQyyjreT+Wh8Bp0+rZ?=
 =?us-ascii?Q?JreEfDZH56Nja1Vrfc4HK36/NebRuvXAFxzS4cXIAtAq1WIrFYS9pN6xdCwd?=
 =?us-ascii?Q?ZmkNqFZEQIyIkKAMfDglmx4W5S/mwgAduMF3XTVJkKuHwoFD6ANlSAOgH8Dj?=
 =?us-ascii?Q?41oMB2hrLCMClicGiPyevseWDR89PAs+OTABwOyP8QNaSxNGSaPzW/Tg7gq6?=
 =?us-ascii?Q?uRNGJZfQp9YdJ0o2IP7uM5J7mb1t/k3XDAjVAdgVJhe9jE6Pv1MxQKWt+u0s?=
 =?us-ascii?Q?cwbvWuQCxlyiJZa8wEk//vnNaeddmReUyBDcEaVCmg1X/qzlwB78/PbpwLQP?=
 =?us-ascii?Q?I2CL/sYu7BzFyDjFjkaxlNwdhXwa24FjMwsXAmxQdO3V+YFjdItpIeXu+MG4?=
 =?us-ascii?Q?HGoJQfDpuIe/+1SJRxSbKM8MHNdBsr61Ytn0MjyqVTUMl1ifQMSd0ZlaMOnC?=
 =?us-ascii?Q?gdOV3DluStmMvN/IGc93Sz0SWl375bVlJ+mc39U46A+UNy+yYzujqokazDPr?=
 =?us-ascii?Q?ICsg74wBGgilMy1smHWbIJRzwlYdeMZ+yJRr7e5zik7ncSSfNZHUvn1wMdk3?=
 =?us-ascii?Q?7MEGBMEVprefRYtCQbemygcrg93z6942/u7/ByodAS9PLSS5Y+S4vfpCilqT?=
 =?us-ascii?Q?MRZ5j/2IWiJ0VeiIf7K2pCLZ6C1ZXw8VSg6f6Zr6/o6fR8TRxU1BpA3ZKNrg?=
 =?us-ascii?Q?1nCHOHyfP9Q7BnR17hQ5kwuXb6UJ+meTOZA5ULyMe83M3ZLfLQT38blMFyFd?=
 =?us-ascii?Q?iWObAPoaTacHzge34XI4v1EcF+0yOVtUeNeuq19NzU4UdodOrCIeggz8ET8z?=
 =?us-ascii?Q?on1hMUwVcbidhDza/g2vnXSkdS4h2gxHB/J+MhZb+UoLo+nMHWLy8i13aWJp?=
 =?us-ascii?Q?dD2As7X5k8N/Wqd0xqt+D3caQIV+7TpSWNYE3CSzRM0ncg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M5dz2SehBeLMOJOLjCRRmLMiTw3PDlKstDwDP8hT5V2As4MwMs2fE8qZ5f5h?=
 =?us-ascii?Q?+S4fgZoO7ynLuOIxhR2POqgQovTpB+MIlPMAlX8Nufdr5M3H2HFJysZZfAec?=
 =?us-ascii?Q?3gS88ULrBRUhQJpqS4wFEBXzFcfNIvBWJfS5jlBm3zKFcqYAzEwFBj3DfRxw?=
 =?us-ascii?Q?rlDAVVHAztFaDcFOnjzv3bZT+KpqGJ6B14T73D6qOH4D0T6euye7zvwPQybp?=
 =?us-ascii?Q?jFR+yWofnnF4Er9xob0UhAZ06wVDeeGgQvhWFttBeyUbkH5pvZM1ThPSM6yN?=
 =?us-ascii?Q?QhzwFYsSkZXGW5A5ccfA1kZuNC+eebEvKJVVAbHX77NwCyi4pLWXDlV8yFiu?=
 =?us-ascii?Q?yY1N4VNdceVvHnBUH8kbBnp6nGsRFPCGYygqrEY6p0EmWOSd+r7ZkPrQousC?=
 =?us-ascii?Q?4v2Z5SOLI/UVy4GK+YQqqOM2Av9ZT4QRTAXeVBI6hMVozpoCNBP9GXUKQ0W5?=
 =?us-ascii?Q?b2mkwFU3jC94PrhegNU/52neP07JKxmxsuxwYt76iRw09AGP/15FxdZ95Wm/?=
 =?us-ascii?Q?+/1FifzCq7Xbn97LjJLlM4agJogUK/SstwgleFl+38/xdcMcakk/aiP3iLLU?=
 =?us-ascii?Q?jxmd4ZJWX1lsnPFs5C4FhoEVBpoFMjGmKzfhCrn9JqBR2tVlOPHjHQkZTNcq?=
 =?us-ascii?Q?9M54Bw4CCZoL2ekQoG81AVYSFw77WDhiKhQV/bcyuhOs4BsrqxkS2t7347Fw?=
 =?us-ascii?Q?WjFC//Hf82YCoyqWe6TgJpYj+aMOEsm3xrT02L95TX55dMuPIRgsWBHjSN7S?=
 =?us-ascii?Q?w7/oexZdEgHw/R2xFHw+P6ax7AVJy8iduGnstD0ANzPtWvQWIXyppkPAbVk/?=
 =?us-ascii?Q?SyhWbw/nxxm4zl0l2U52fvwHq/u6OtQjQs1LFi2m+do2voUs2EadZ8t9P+A2?=
 =?us-ascii?Q?/bgCnnDqdNUv/8dXsy1khqPWnwE5fLFqS5nd0Zwe9T5VlQw8S5Sa/Mz0Zsuo?=
 =?us-ascii?Q?FkS7OvwcXcmd1jDKOdBhD8HJvjkjJvs7kxwZxnDWzujpnWHGjeQzbDQsOy2p?=
 =?us-ascii?Q?eRXxs58bY+eqzEN7r7PVMzxdGT6O4/FemW2aVGOxl3l6EcDFltPqt/J8uEt4?=
 =?us-ascii?Q?MhN04pmXgKqqWXNSicC+b3JPcx9r/KqnzMbUwp1j9E5xRUW3wPBeO68KmrGA?=
 =?us-ascii?Q?3Xf4ssqivtpypM8KFHOxwSe5rt8Bmicufuv0vE9g2C+qBlQnp2wPHUJj0xZ0?=
 =?us-ascii?Q?pAL8lhdm1+qyxJhKo98vAvGy16rqIcFlNF4R/m62T0GR/aA+98ukk+W5HJhZ?=
 =?us-ascii?Q?9LBrKG+izVmXLUj4PmzuGKKc5E8NDfynk79rhULmAsvgSrISxlMb80afbS4d?=
 =?us-ascii?Q?wz3Y3T56o0Aja75rf0Z0ss7grkXBmsyNynP5XR3+5HFKaTE5rLs9GW6MlW7U?=
 =?us-ascii?Q?zu90UggZ9ctEqPGkFMUzf1rRRH7+3ZxvLxlIIv4VK8JC55W5mPSo7WK1EmEp?=
 =?us-ascii?Q?SIoNBMFFizlc4D13uhtcsc0nnRKIQANotq40kKfYLJTbvfaWqL5VojWsQOGu?=
 =?us-ascii?Q?wXzbMMwVxpfb8KxVEyNxqqqqxiebfD14VJbhOdGN4rXehIz/BN6FUtFI8fN7?=
 =?us-ascii?Q?/DDTGl/zNdV4AIzBDpbP+W6Q72mhryJSZ8jG9nz7tB2+F8VHqJOZXmFO6BcS?=
 =?us-ascii?Q?Cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fccc1ac1-5ee9-4913-69ed-08dcd83312b2
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 22:41:44.9567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tLtVrLY7eql/IrHTS7w5uWgvp++1JT6Luf5kSfvUJ5Zba9XVuB83pp0eT1btubKZonk1AgUFGQ6vCw19LpPiqQ1K2m7/sUrrrqir6rPole0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7807
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

On Thu, Aug 29, 2024 at 07:00:46PM -0300, Gustavo Sousa wrote:
> Because much of kernel tracepoints is implemented at the C preprocessor
> level, C identifiers used in TP_printk() are saved verbatim in the event
> format, even when they represent compile-time constant values.
> 
> As an example, we can look at the format for the intel_pipe_enable
> event:
> 
>     # cat /sys/kernel/debug/tracing/events/i915/intel_pipe_enable/format | grep '^print fmt'
>     print fmt: "dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u", __get_str(dev), REC->pipe_name, REC->frame[PIPE_A], REC->scanline[PIPE_A], REC->frame[PIPE_B], REC->scanline[PIPE_B], REC->frame[PIPE_C], REC->scanline[PIPE_C]
> 
> We see that PIPE_A, PIPE_B and PIPE_C are pasted directly in the format.
> Because tools that interact with kernel tracepoints don't know about
> those ids, they'll endup failing to parse the format or produce
> corrupted output.
> 
> For example, we can see below that trace-cmd repeats PIPE_A's
> frame/scanline counts for all pipes (probably because it evaluates
> unknown ids as zero):
> 
>    $ trace-cmd report -F intel_pipe_enable | tail -n5
>         testdisplay-8616  [000] 22048.276758: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=861, scanline=480, pipe B: frame=861, scanline=480, pipe C: frame=861, scanline=480
>         testdisplay-8616  [001] 22048.490287: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=867, scanline=480, pipe B: frame=867, scanline=480, pipe C: frame=867, scanline=480
>         testdisplay-8616  [003] 22048.700181: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=872, scanline=400, pipe B: frame=872, scanline=400, pipe C: frame=872, scanline=400
>         testdisplay-8616  [002] 22049.054220: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=881, scanline=2170, pipe B: frame=881, scanline=2170, pipe C: frame=881, scanline=2170
>         testdisplay-8616  [002] 22049.166851: intel_pipe_enable:    dev 0000:00:02.0, pipe B enable, pipe A: frame=887, scanline=1632, pipe B: frame=887, scanline=1632, pipe C: frame=887, scanline=1632
> 
> , while in fact we have different values for each pipe, which can be
> confirmed with the raw view of the events:
> 
>     $ trace-cmd report -R -F intel_pipe_enable | tail -n5
>          testdisplay-8616  [000] 22048.276758: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[5d, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
>          testdisplay-8616  [001] 22048.490287: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[63, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[e0, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
>          testdisplay-8616  [003] 22048.700181: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[68, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[90, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
>          testdisplay-8616  [002] 22049.054220: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[71, 03, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[7a, 08, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=A
>          testdisplay-8616  [002] 22049.166851: intel_pipe_enable:     dev=0000:00:02.0 frame=ARRAY[77, 03, 00, 00, 01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] scanline=ARRAY[60, 06, 00, 00, 39, 04, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00] pipe_name=B
> 
> To fix that, we need a fix that looks more like a hack: use macros that
> result to integer constants instead of enum pipe values. This fixes the
> issue, but could break if, for whatever unlikely reason, the underlying
> values in the enum are changed.

I guess if we're paranoid about it we could put a

        BUILD_BUG_ON(_TRACE_PIPE_A != PIPE_A)

somewhere to catch that unlikely case?

> 
> In the future, we should find a better way to handle this, but for now,
> the hack took care of the job:
> 
>     $ trace-cmd report -F intel_pipe_enable | tail -n5
>          testdisplay-9224  [003] 24324.455375: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1103, scanline=480, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
>          testdisplay-9224  [002] 24324.669845: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1109, scanline=480, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
>          testdisplay-9224  [003] 24324.900105: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1115, scanline=31, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
>          testdisplay-9224  [002] 24325.256408: intel_pipe_enable:    dev 0000:00:02.0, pipe A enable, pipe A: frame=1124, scanline=2171, pipe B: frame=0, scanline=0, pipe C: frame=0, scanline=0
>          testdisplay-9224  [003] 24325.380789: intel_pipe_enable:    dev 0000:00:02.0, pipe B enable, pipe A: frame=1131, scanline=979, pipe B: frame=1, scanline=1082, pipe C: frame=0, scanline=0
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../drm/i915/display/intel_display_trace.h    | 27 ++++++++++++-------
>  1 file changed, 18 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers/gpu/drm/i915/display/intel_display_trace.h
> index ec2ab6fb743d..759b985c84a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -22,6 +22,15 @@
>  #define __dev_name_i915(i915) dev_name((i915)->drm.dev)
>  #define __dev_name_kms(obj) dev_name((obj)->base.dev->dev)
>  
> +/*
> + * Using identifiers from enum pipe in TP_printk() will confuse tools that
> + * parse /sys/kernel/debug/tracing/{xe,i915}/<event>/format. So we use CPP
> + * macros instead.
> + */
> +#define _TRACE_PIPE_A	0
> +#define _TRACE_PIPE_B	1
> +#define _TRACE_PIPE_C	2
> +
>  TRACE_EVENT(intel_pipe_enable,
>  	    TP_PROTO(struct intel_crtc *crtc),
>  	    TP_ARGS(crtc),
> @@ -45,9 +54,9 @@ TRACE_EVENT(intel_pipe_enable,
>  
>  	    TP_printk("dev %s, pipe %c enable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
>  		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
> -		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
> -		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
> +		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> +		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> +		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
>  );
>  
>  TRACE_EVENT(intel_pipe_disable,
> @@ -74,9 +83,9 @@ TRACE_EVENT(intel_pipe_disable,
>  
>  	    TP_printk("dev %s, pipe %c disable, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
>  		      __get_str(dev), __entry->pipe_name,
> -		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
> -		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
> -		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
> +		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> +		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> +		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
>  );
>  
>  TRACE_EVENT(intel_crtc_flip_done,
> @@ -204,9 +213,9 @@ TRACE_EVENT(intel_memory_cxsr,
>  
>  	    TP_printk("dev %s, cxsr %s->%s, pipe A: frame=%u, scanline=%u, pipe B: frame=%u, scanline=%u, pipe C: frame=%u, scanline=%u",
>  		      __get_str(dev), str_on_off(__entry->old), str_on_off(__entry->new),
> -		      __entry->frame[PIPE_A], __entry->scanline[PIPE_A],
> -		      __entry->frame[PIPE_B], __entry->scanline[PIPE_B],
> -		      __entry->frame[PIPE_C], __entry->scanline[PIPE_C])
> +		      __entry->frame[_TRACE_PIPE_A], __entry->scanline[_TRACE_PIPE_A],
> +		      __entry->frame[_TRACE_PIPE_B], __entry->scanline[_TRACE_PIPE_B],
> +		      __entry->frame[_TRACE_PIPE_C], __entry->scanline[_TRACE_PIPE_C])
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
