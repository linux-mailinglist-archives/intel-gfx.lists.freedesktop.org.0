Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AB08B845A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7401112FFE;
	Wed,  1 May 2024 02:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XXYosp/o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C3A3113000
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530381; x=1746066381;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0giPbEx1hLFUrM9oPsMIIWYJH1EhHxaGTRoy335SYz0=;
 b=XXYosp/oE2OWAuCpDNcmjO1DtCTF+o/sVFmcOAyu2wW8Eo72wC6R8Ula
 XTrql3Fua23jQ67OcR6ouM4PR+YLC0DBD8XZkHc2N2zU4P3GAiIzDEDVa
 /ty2FBN56DvKZsubW11+YvgOXHSod8SsgdQPQSfycQ8M4dYbxGN+EypFY
 BIGwmwo59TiBBgB0zgif01e0Rwy2Qclu+SVXz0F8u1g6SXXvYvBHJwXBp
 /vGckdkLSednP+kCv9gdjpNje1HFyCUsGdX/cMMqyYPAZkJbIun5R4zf7
 zZ41/IlhcAzFtMTuDIgEETfH+eiZpT8YjQ+y8MzzjZVLiuBFIi9W1gmQU g==;
X-CSE-ConnectionGUID: Ztc9vMJJReC3fXVsumwTYw==
X-CSE-MsgGUID: NYKDgI/TQ+eIF5F2F+BAsQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="13189155"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="13189155"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:26:21 -0700
X-CSE-ConnectionGUID: e1vdG+wATVyykkZaV3EDLQ==
X-CSE-MsgGUID: wgfoUsFbRl6vDDwt7k6cvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31274198"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:26:21 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:20 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:26:19 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:26:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LrZG4mV/sxk/xUoDgyEFiaDRBMFLRj0vnIKslGydc0dJXxj7l8dalZ1RK3/VBqTJRHjXRPsgBZRuQbY4TElnlDIgXLqNQeBF6q5gpjUw+z170yvImRNV7DHJRE02Q0+7nmpuVl6udBNMFHoalzco8RtHkFTgJVKTA7wQH6hs+Y1BxVa83WAo1Gca59wPEI943zQoNR253EU4MG1vVtJ/BylSVO8BOJOz3Kg2edGFPuJow9v0zb8lADMzyx7BQukr/W6brMPSKDRzt0CbRa0cIs7N+2CP4S4m7LTduVQX4Vs1cqJlBsr84cT4AUgdPsygYwEWMcBFy5bN+eL/L/MNXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=truE5F0nU/uDfA4hWYAWgwgSJq7Oe7ftB1+XLqPbleQ=;
 b=m64sS1g25bJstDChvD46cywk3UDERlWP/kJ/KYabGJzeoxOvwUj8sKgk82aR3WV3pdBv+VIYLUQTCeo8GgMon7FZd56mNmrUwYlG6KOc4ns6i+LtaLLWatS2XH7ZUPGPKQyJBwcrhY4Udympej3OBDWT4zi3PMO9gCMt2xpoQ67/9WwhyVr96JZX6M7PgEaO3h7nXjoWNs5nwu8cnNHMyqOwOndK9ABFFzyUKWvrFCpJr+uhKTYR0Ud8r8WDwnvsVe01qctypFvP51EP5iaicTXZrNrIhrDlIJnJ+cEvINORMxiLqtflWpzpwlaCNwNr5bvE3WLc34UNrGfZxuSK0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:26:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:26:17 +0000
Date: Tue, 30 Apr 2024 22:26:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 18/19] drm/i915: pass dev_priv explicitly to PORT_ALPM_CTL
Message-ID: <ZjGoRFlAwOLJ2t0o@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <86e8f5649c822ff6fa0502ad88964bfcb269c6c5.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <86e8f5649c822ff6fa0502ad88964bfcb269c6c5.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW3PR06CA0021.namprd06.prod.outlook.com
 (2603:10b6:303:2a::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: ec7bed49-dc3a-40e8-9d88-08dc69861459
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IMdbx6ispInKVxQUkg/XMjBd0lBMfSpepAFCV2M7Qph7AI3SyqI9qP05d1QO?=
 =?us-ascii?Q?cucKa8/EksSEZPnWIArnAeieLmJGUiRsMyPTjxx9zxkeTH/QH5FHEEBAtpU0?=
 =?us-ascii?Q?r+US/QgQTNuF1ME5mF4c1JcRViftgDCeTtprp1sD2nFDiVZb2eoTD6JMb0YN?=
 =?us-ascii?Q?yM/loks52OSImes7cB9gSA8l6Z9h1UwFy4WgwKEW595nNGU6lVZ/gddBBXn8?=
 =?us-ascii?Q?ziFVQlM/IWJBHIY8dgGdwaN/HV1Fdvehz9wF6zIcSzDIubfm3tmvLL2XY+y0?=
 =?us-ascii?Q?Rirg/oD6/3Jx6tGRSLBHYRf3q2vwEpnX0f9NNSUEQboAKGw2geuq4mCWwzj+?=
 =?us-ascii?Q?925aIycg6+vQy078mLFb8llOTKNmkw38scCK3oWQLgXzO3crDNVEE3pylWCN?=
 =?us-ascii?Q?uNxoeXgRAI/5b9Uc82BN3G0FmEH6aEUyd8+p7AFKyqCEsxF9lj2RnLBRR2SG?=
 =?us-ascii?Q?4BaMj+SDksa2bsM1dO5FGDpTO68RhFSM6iNSmP3sWemWRe6WkosxJSJ50EVh?=
 =?us-ascii?Q?gMy0Rx8ebnw/JWrMDvsBjsOE1YbyMVNok9fz/03KDZUZTDiMqiiJfiaE8o65?=
 =?us-ascii?Q?EIAdO9BQ5QfU3vCpL/XDV9ECBuW7VJ4gDibraeaiB1+yG1m9Gyqg3nW40YSU?=
 =?us-ascii?Q?jyUr/zmRqqPu84P+Q1dLzJ7kGZf+6xOfKAgzzBc81z0utRbMfSMEaoM/0EOe?=
 =?us-ascii?Q?6XKtCUxdi+NF5989jNUvjrER59KqHxSKqjWYygVdRKWNw9ETdYkkXrgsuYL9?=
 =?us-ascii?Q?1aNPFW5eQu7NElIe5LmIXzUkJnhGc15eNAQayveeKXx/F6RbVOC0pCW1A9oz?=
 =?us-ascii?Q?XZAf5M0vNbinyls3QJX3G9rbJMB/DWnTeCAcPqMurau6KXh+7ybwQgivE6Jm?=
 =?us-ascii?Q?DJ9CXH4ofItDCFlkIiwsB1X493TRiXyv10EgGuProULiBfi+Ql3jGCurs9HX?=
 =?us-ascii?Q?qLKoBFtIjAKX+Om+vYQBk5US42uJUa7erDFbiO69S7Bz1fSP68OC8t5vi9O4?=
 =?us-ascii?Q?k3KP+a6r9vt+MwK8CLWQuUAm7U9fU3qm8NmawIXjEnVKidhPK+BsQmnQtAb9?=
 =?us-ascii?Q?GOxzgywZ21kWa5G24NVsuYJYu9vPWAXnHAguhW1F1pwmPiPRLGKjLcasbdjv?=
 =?us-ascii?Q?iIt8OzVkr8gC8zLkft4k/PLVY6A+xRpGrWl6W3gAVluQR+EwDr2kl9usGkEX?=
 =?us-ascii?Q?+QATw4Qke9Q5DNHO9j/E7DLBqXjYY+m41Bq0J88u+Ti00z3qpNT0iG2paVTz?=
 =?us-ascii?Q?OAEoNWow6xe2LUtS04H0e5k5MTg5Xvsqr+6uxDKKtQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9XSoF3OqK3to5GWx2bGEU1lioKE+M7kMd+jtavzQV6QCZzp5DoqB0aAiqbo2?=
 =?us-ascii?Q?vPROd96ZODuDw95dLUw4BM8+fRzxNVGcggEhXPeBYeU1QW2zs32xEDigeHYO?=
 =?us-ascii?Q?GWlcnb17NIMEMHGozxMTFg2avWcOUlanGfnZU3OKCg6jfzt16I858M1/mzQq?=
 =?us-ascii?Q?y/bGvqOpbF0UB24MzyTOAm0XtQMNTdVQz5A9H3enT0oLCvJcESW46Hi2SzT2?=
 =?us-ascii?Q?ANTMSXx7635I5jDmSlfSYqHMCORqk3bWHlXg7ugY4BUGpSex8i7v71hg2BYW?=
 =?us-ascii?Q?QsH5Fj12hgUBYcz+kHW4Iw9HqPHaOmdKRShktkC795zMPUT2IB4TDr9ZILXu?=
 =?us-ascii?Q?Vua3Y6K6kABBFntF45iikQJ/f8Eph4ToGQGnn12b5UCxAtGeCxd6jA3dBGho?=
 =?us-ascii?Q?A2ylMt6koiFy+fXu3oBlKApCzVrXCsuuWJ0BrgwA/4SDqOfqamZg/6NkuZhb?=
 =?us-ascii?Q?Ykr86HHBnnf2Q4NjamnrSDaYiqrUO8kfH8tndSfLa+xXqIw4xtmeu4ycx583?=
 =?us-ascii?Q?L2HLFNIdhJ/YEDsJ0bjxx4tMw2yhe44DwMOblacmv+MLTJQsr45/v7ojIQes?=
 =?us-ascii?Q?0ujf68XL1dGD/clVpiCz/SjKsaqMA7jx45kv6Jp2h4oHgsIvbppy5BOCoXwq?=
 =?us-ascii?Q?OhpR5PjcPjD4MOWwvqxMPPnRVaRqR1YRDAdTNd4dk1wSghTSNC4QEe640QZX?=
 =?us-ascii?Q?MLuOSiVznvEL3q5rAKSW83C+1ilO20x2Gf1UvBxsaXuPGE0Y5UnbnMuPlIeN?=
 =?us-ascii?Q?488Cs05dUR8SzXbAxmXITUouoSzYhpB7WuMqJqyVvqNVtFZIHRwl1g3wApJw?=
 =?us-ascii?Q?iUmSyPUkdBWFlvMWEqciJDcV2J1sgr4nVDynb+48ZRnMejKaUaXx+n5QWIhj?=
 =?us-ascii?Q?gka3HTox6UpGhH6PdSUMFztOlCDmXdiD8qP/BqlV8Awm03pi/FQ8I0EfgXva?=
 =?us-ascii?Q?in+GOnCY6ESVgb7LqwwWSjd6AEOdz3WDrHxpStysEHEQ47we9H10xbOaonuI?=
 =?us-ascii?Q?GQnBvBLeFJCsw5q/GhVmpbXUrmO9l4vZNE4Cr4ySgH/JzDkPgP09ikLQQymD?=
 =?us-ascii?Q?uLgJx15DNHHog5p3sIajr8wXwj/rTVYFjqIlBF7Ia+zm9HXv4CTn89LQ7ku3?=
 =?us-ascii?Q?PiCOLtoqN3f1zLIAJRYuvxy7iA4quoiEaqIX7a6f0oa50VRKrpFRLitP3U2u?=
 =?us-ascii?Q?CuTFmcLmZesljzWS07hjy9Qxj3xy5NhTD5wiX3TA8aB7NzG+9i57Y86KEC9R?=
 =?us-ascii?Q?BQBDWE3OSYA2nEqxiGpiMtN50XBqjLJtVR2PCfMMvuf9FprDGKg3QFiARjOn?=
 =?us-ascii?Q?EqwGQoy5GJP0xLYTDpUr5SXO1Ihu/GUjhViBrW6sEsy5+nl66BPrgc/HwMWZ?=
 =?us-ascii?Q?qBjfJthtiGgk7jhSyOT+uL3CQHc25zupR4c8FLStOlDqBLaO0FwsQmjirRe7?=
 =?us-ascii?Q?5Ze4pG/oj2gMNtiR4iubFoP5BUCodySNIxL52O319RXwFEvGkrkrYR3aIr70?=
 =?us-ascii?Q?Fa55FOdvBUVUHqVaEHZMvbtGtcUnUvWvWmUniBz9IwSFizW6qhrUAdE8uoWv?=
 =?us-ascii?Q?KcGBagS01eqb62fgHHYm3WAyyxod63MZboRtvCOh?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec7bed49-dc3a-40e8-9d88-08dc69861459
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:26:16.9717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kFsrrR6sIETSsb+upzwJUwAA94B0H0WHHNHhGHmGZglzZrR8Whgh8Ri2+yIu0L3cd0uGacLil+FG6NnybCMC5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:12PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PORT_ALPM_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 6 ++++--
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index fad24b1e5ae2..e88f326b78d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1790,7 +1790,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
>  			ALPM_CTL_ALPM_AUX_LESS_ENABLE |
>  			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS;
>  
> -		intel_de_write(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
> +		intel_de_write(dev_priv,
> +			       PORT_ALPM_CTL(dev_priv, cpu_transcoder),
>  			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
>  			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
> @@ -2116,7 +2117,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  			     ALPM_CTL_ALPM_ENABLE |
>  			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
>  
> -		intel_de_rmw(dev_priv, PORT_ALPM_CTL(cpu_transcoder),
> +		intel_de_rmw(dev_priv,
> +			     PORT_ALPM_CTL(dev_priv, cpu_transcoder),
>  			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 05dc1c1d4ac2..5e52dddacf91 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -335,7 +335,7 @@
>  #define  ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES(val)	REG_FIELD_PREP(ALPM_CTL2_NUMBER_AUX_LESS_ML_PHY_SLEEP_SEQUENCES_MASK, val)
>  
>  #define _PORT_ALPM_CTL_A			0x16fa2c
> -#define PORT_ALPM_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
> +#define PORT_ALPM_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _PORT_ALPM_CTL_A)
>  #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
>  #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
> -- 
> 2.39.2
> 
