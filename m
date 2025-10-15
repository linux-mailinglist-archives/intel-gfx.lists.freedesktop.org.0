Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A20FBDFE96
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 19:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D329910E8A1;
	Wed, 15 Oct 2025 17:41:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VEZoEnvt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1969F10E89F;
 Wed, 15 Oct 2025 17:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760550060; x=1792086060;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gY1d+Khr6g7NyX/K/imRINhFOaoynvrpBb8dyTtxuxI=;
 b=VEZoEnvtW3paLbOPKPWLOCnrjMlX/HWshIEy9tmNPplnhWR4nFPI8vL1
 whYFLKOlxtegKTnHi+FUWXI7tuO5wjL9212TEECzPwDxOf6osrYy3KUwu
 4sQEFBGJ6tS6RdugykddzqYePJ22/yXeMYoqKefyjd0IsSe8szC9osWnC
 SBr/CVKP5R3hTXj6BmDvhAPDXAiBlR/1G+QLhWYZeayGz/J/W4go0XkZy
 iFlbldAUgcZ5rs7I68xapLpB+CUT+sHIWslhUIr3qAgSfjaXow8AI+eFY
 8l093Zpagat+o+JFt57RvWJWQWY/meTEyaxShnyDgGyLNnDERR2RerlXl Q==;
X-CSE-ConnectionGUID: 9hfiDewmS3i5a5dusJl2Zg==
X-CSE-MsgGUID: V86iVtcCQdym1SwqE20A2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74074244"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="74074244"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:41:00 -0700
X-CSE-ConnectionGUID: /106SzSeQYSYE2EfRi7P+g==
X-CSE-MsgGUID: a31QWdPCQ0KLQL/M53wrGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="182641641"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 10:40:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:40:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 10:40:59 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.0) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 10:40:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GpxftNsXFiTPu7opAmi58C2YCBLVPf/v59uyE3KdnQhlEqUGvm6Ztq2ekDrPkXrn002TCCw4MOvy+fHrs7CJX2Uj69G3bqEzPKD97CivkThALt6icr46LhBcuJFCBEik3kouEWo7BS5S2LYFu6SDGB9sD3FLsyrBSADYGVKfJo2AYHmV9l7xRQdZq03XSRExbhUnU4dFceXIPp03UM2iHoZaQg+307kGbNxs1TwOdZZn6C4gnHzMRJhEx9wxdh5PUccHjJd0NmLwZ9B+1v1SAP9LIklGvehpN3DMSG/kcE8i8izkQ26Chxqmc4I9XgBLYhDAlZFv03uGEMVzd3Fa1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjwiwWoGxSc2YuOJAQBZGgDeqUORl+vFTyDq/uzMDkM=;
 b=f+oh3/8vkid+mXknbF1kUmC2OCl1a1te1ypg9X5T5K2tCDkzTrGEcdl6Qa3QAAXQk7Y/xeYvAtMsNWbM29WXD4d0FkY8RqpMNU17S1VjmMcrOTjeG36Ff+GGVXEXP8KKug3iJ4yvRGeEsVCb+IFDFwUdkj78XcRKa5RC3OVtNsO0q/+NqiRyD7ZJcKqo1Z+3jws3zon+D4i18TRXOsz8PkeJd0vmkKoABGGWOdQ+V9NkhyGaD1B7ixoZe1BvRXoPVwHXe9z0IXKKE4ZO31PAIGxoiVWLCm2aPZy6BTflqT1rAumTwuN4QMgoXhfBfJ5OU0hidiGh7uIbLFYT6Tf6Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7766.namprd11.prod.outlook.com (2603:10b6:8:138::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.10; Wed, 15 Oct
 2025 17:40:55 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9228.009; Wed, 15 Oct 2025
 17:40:55 +0000
Date: Wed, 15 Oct 2025 10:40:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 04/32] drm/i915/display: Use braces for if-ladder in
 intel_bw_init_hw()
Message-ID: <20251015174053.GM1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-4-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-4-d2d1e26520aa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0023.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::28) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7766:EE_
X-MS-Office365-Filtering-Correlation-Id: 774098f1-3eba-4cce-6ac5-08de0c11fe70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4qGAeUXuOe1P6yxzo1JM3+3aKqg7fd1D2FovunJ1hpta/VcQMW2Rt+TODKw3?=
 =?us-ascii?Q?XrUU4mJbu1EFq/u/NFmvmNhQqK7ddX1lYbq7KXsuTkMoyplMP/M12nu5AZJs?=
 =?us-ascii?Q?5DWHRRW4Z95FsUDHzB6EZEWTqXLVIETEoAxApLaZ0uS0ZVinczubuEnlfxyK?=
 =?us-ascii?Q?9UnFHddqQAzd1GbYpmaxLKdP+CMS2gpcnKL3/7XjVwO8XOQTYdaC+9OdLbne?=
 =?us-ascii?Q?REmFU9Po6wy1yB3smCyWqemTgfYEeDfnvH8t5mgqbxf48X1WUMnt5CcvF5nw?=
 =?us-ascii?Q?gEOKcWfNhJHa3yUAeHqq3zoZk4aFYRNe1vcVJIB3082MvGIa7TcUPQSN2VqJ?=
 =?us-ascii?Q?9/dOwsvR2G8OmRyQ8g2SvOpTrhh70cqs9g5XOf1OEgS0yFWpqu1qYtmAyUsk?=
 =?us-ascii?Q?Hef7ohvl5hvzY8tKSS4CBNAIuYVyf8o5eJmpVzTCZWqdxWcMOTX/PNvqWA/A?=
 =?us-ascii?Q?glw4JMONnTFa7zuVsAjJhTDqi3aTJlPGRLHDFyBh4mR2wnVq0sTHIzY4bhpW?=
 =?us-ascii?Q?+pJSlGA+felM1Z+WS9OZWrBhF6j6hQaXGq/m9REZce877ys0KG5WIkdKpqKf?=
 =?us-ascii?Q?T3vLXV9LHr6oPX9JcK0QGtqf8PNHj7lq5nzClwwl8+JUY+BTHyWiU34VeR8d?=
 =?us-ascii?Q?ID0vxoFGnv7h/c5l51zI5k4rkc++DJ00/DV3nQNwNzWt8ACg7tCWib+iSX3J?=
 =?us-ascii?Q?+9sDpZGqVpkkEEcG1Ns3f3WjOStLXH51Wy/DSJwkrgkPYOhAClvip8gtGhzf?=
 =?us-ascii?Q?g/ylU2Wkr6csPTVkGyqTppmZiO3N0ESxjJBqKAGBgu7zNOKRxUUiipft0ANP?=
 =?us-ascii?Q?nWae7Wc+IBXbVXImOvoTQ50h8Ori55FaYLeUJ6P+1BInbyUjFrXVbpWe9MoQ?=
 =?us-ascii?Q?qsarQyl8su6s38NKpCkzlniYB6/bdfYSkQUYbFmoOdYd054Q4WTvZ/Zuo2NN?=
 =?us-ascii?Q?AHzE8Tvb5Y1yOo6HgimPLpoikOX6dkBjGxYHnK8V+2vTVEwJL6GLERDEFoak?=
 =?us-ascii?Q?bBRnqdwowbh2IP/RrIvQsjd3PMEF9oHEP9ViIHMY8yJWqCCw6fF+6vPHZ14W?=
 =?us-ascii?Q?l7aqeQ0ZXGbdovZYI4EHR/MosaSZaW6yxVduicKeffqBNT6s8CZMl7ml+Srq?=
 =?us-ascii?Q?vFzS9IltXgqKt80/AA8dDu5nHM4w2AOPjH1kSCwHbxZD1ElzZG2IQ6REObUu?=
 =?us-ascii?Q?ZBZAcTTNe79Cm1U4anWzAEDeAEEkSjf0AIfcWsLQ20iD+q3riwCb2SoVEcNo?=
 =?us-ascii?Q?iRSI/aZ0Kt5Ec40nWgI+ZhhyQyloXprL66pP6zzhuKE1Yj7TZEmyyxsrfElJ?=
 =?us-ascii?Q?JHFW0f2GyxjsSRbSQ3pUN/C9BqObTC3IzfYt6TZGPv5lx+izEUSyFD4VnFww?=
 =?us-ascii?Q?EzNpxuHf2JiwtR66Ms79xp1ChZTs+50P3ab4px/0P/gJ1k5sTyvj2W6KTNkd?=
 =?us-ascii?Q?RBZU3ktfTjjuY0W71l8clWiokD9x70Bn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u7Xr+1JNzU/NNa/PTTqtTlsMscK3JpZdhxUIkosop9xKoS/f/35zt9G1El7b?=
 =?us-ascii?Q?EoLvum8FiqZwcac5Th42N6Ed3aSNrGNK6g9eBYK7xVsiLoYDU5AGkWme9pKB?=
 =?us-ascii?Q?DRH5eHwHdSaxikJyCT1sgrpgFzPjtvEPRjHZOUhshmR36oTcUtshEDBV7TRS?=
 =?us-ascii?Q?vNrAYE9rjUwzi70WkYUFfCEQDQ5E4t3aFAxeCxwYZtrYLDkjOzeKCNFKgliE?=
 =?us-ascii?Q?34Byc5gxXE8skqP7hbR7udO2vVM/tNb7ugFqTrF2nvDaR9XFTWcQkP+qoHN2?=
 =?us-ascii?Q?u7m3lfHYkabifAxkOz3vE35aNjDznGo4b7/LeOMXAPtH9Adj0C0XDLUzxJnH?=
 =?us-ascii?Q?vpPEPDcNof60l3tARgIl7s5br0XvIrDfa1cODcMNn75QW6LVjWkt7PUYjD0a?=
 =?us-ascii?Q?PNPqfi2EbhYhSiZ2e0vrF8412tR0Pj1iV9n7fx51g75ezbCAMSSLUReI3AaE?=
 =?us-ascii?Q?wWoP/UGbt49dt8cQXhkvSQwB10U1XPmLLjcvwyeU8Lv7jmJwVM2f1tLmGdAN?=
 =?us-ascii?Q?HvygS3a10q2zTcpIaJJVcm0JD+LbDuNbojmMZ+Hfegam9HGUCmlSzUOkfWEi?=
 =?us-ascii?Q?HQyZbSkxVZStjizpGd4c/D2JF5T6e6mf6JzBiE+UwbPvxuMm1kizkwKxbrs8?=
 =?us-ascii?Q?AfOtkTPryT0lmIisojZty0o60k7t3K3iOgRU2sHCdp8Vm2M/OIMuAN2s0gWg?=
 =?us-ascii?Q?4c0ju36m+P/ZmUf+lBAAqYDXK2b0kKnjmBkAttNPf4frAaaPP/Q2jevIQUmN?=
 =?us-ascii?Q?aihisBKlHlVHfRQi0AWvGDUmgsorz2fq3G03doV/Rl58ngi8RxLRdBfIkMsd?=
 =?us-ascii?Q?X83duZOvzyCRawLOuSW5/klMJVaCxyQHXuSQfgw1w1EM1CoaJY7JQqN+HWKV?=
 =?us-ascii?Q?z95MFRH64YyEIN9rD2k+0SDKvhmMtH5nfkSyqq8cTUTaa0867/NC7i6Mf+AO?=
 =?us-ascii?Q?uUim1QdNpfK4Swcrw/o4Sh5hKtno+jb54ix/woueqr3x1ruflzlmBqaC+1SL?=
 =?us-ascii?Q?wQxTM4shZ2YQrGzcpkKnNVW9MGShQk8lZmSaVlOPjOrSReRroCSlPqEdCxz1?=
 =?us-ascii?Q?tCEBhgmjY/8HqGZ6QnPPTXZiAspITv0ijs3fC9CyNYZyR731VqVG0yvd5I61?=
 =?us-ascii?Q?+X57W/Xd8xAHz1NJqCs0rogPHUbbER3JMZh0tLtAjKmc6JxouyrklKzzpAZo?=
 =?us-ascii?Q?I0ga835/8/GeHateoX4MYAbgYsnM+wue2uWtMTb57HOU1mG3QsA/PlHQbT14?=
 =?us-ascii?Q?+5i+s7tavUfwX0Lqa0wxXMZzUSFU/EQ+7RxycwcHj5ali0rmCPwzojL6yoK9?=
 =?us-ascii?Q?4sc9lc2wS/XfDPOSoVMcL0RbTcBS2R7x4G0Rx0Z466fMD1vSoXOLwVRVL91J?=
 =?us-ascii?Q?m+fEJ7otBaIv0M6RIriUbYsUK5AIY9rJoxJwBj35MvXwIZzLUqytPDO7vN38?=
 =?us-ascii?Q?bN+iAt+EpXdPm2N7toanIcvnFUbgpKpUcS5wkzTekATODF+5RaVF8ivnOn/B?=
 =?us-ascii?Q?YoKgYvfVQKadA/75x0NoHIVdKoyI7+0sWzGnZO6rs/YzCjhhgGsk9yn8gf9l?=
 =?us-ascii?Q?nwUstpNF2/Rr85JYjcZvil2Sd7euQZA9uqCHTv0mrwVl6gZbx+dFrQbuy3Ws?=
 =?us-ascii?Q?cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 774098f1-3eba-4cce-6ac5-08de0c11fe70
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 17:40:55.7423 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 52jSIjOL+qpXW8QvpMEpfpjihIyA0D907QhNLuKF9civyVrXqCZn92UZgnPFN+Ny6EYKryEn98WwY4FQtuDb7bQ/FarbKW4SxzYRzEKSv60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7766
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

On Wed, Oct 15, 2025 at 12:15:04AM -0300, Gustavo Sousa wrote:
> Looking at the current if-ladder in intel_bw_init_hw(), we see that
> Xe2_HPD contains two entries, differing only for ECC memories.  In an
> upcoming change for Xe3p_LPD, we will have a similar case.
> 
> Let's improving readability by using braces and allowing adding extra
> conditions for each case.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 29 +++++++++++++++--------------
>  1 file changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index b53bcb693e79..8f5b86cd91b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -812,29 +812,30 @@ void intel_bw_init_hw(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	if (DISPLAY_VERx100(display) >= 3002)
> +	if (DISPLAY_VERx100(display) >= 3002) {
>  		tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_info);
> -	else if (DISPLAY_VER(display) >= 30)
> +	} else if (DISPLAY_VER(display) >= 30) {
>  		tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
> -	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx &&
> -		 dram_info->type == INTEL_DRAM_GDDR_ECC)
> -		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> -	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
> -		xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> -	else if (DISPLAY_VER(display) >= 14)
> +	} else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx) {
> +		if (dram_info->type == INTEL_DRAM_GDDR_ECC)
> +			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_ecc_sa_info);
> +		else
> +			xe2_hpd_get_bw_info(display, dram_info, &xe2_hpd_sa_info);
> +	} else if (DISPLAY_VER(display) >= 14) {
>  		tgl_get_bw_info(display, dram_info, &mtl_sa_info);
> -	else if (display->platform.dg2)
> +	} else if (display->platform.dg2) {
>  		dg2_get_bw_info(display);
> -	else if (display->platform.alderlake_p)
> +	} else if (display->platform.alderlake_p) {
>  		tgl_get_bw_info(display, dram_info, &adlp_sa_info);
> -	else if (display->platform.alderlake_s)
> +	} else if (display->platform.alderlake_s) {
>  		tgl_get_bw_info(display, dram_info, &adls_sa_info);
> -	else if (display->platform.rocketlake)
> +	} else if (display->platform.rocketlake) {
>  		tgl_get_bw_info(display, dram_info, &rkl_sa_info);
> -	else if (DISPLAY_VER(display) == 12)
> +	} else if (DISPLAY_VER(display) == 12) {
>  		tgl_get_bw_info(display, dram_info, &tgl_sa_info);
> -	else if (DISPLAY_VER(display) == 11)
> +	} else if (DISPLAY_VER(display) == 11) {
>  		icl_get_bw_info(display, dram_info, &icl_sa_info);
> +	}
>  }
>  
>  static unsigned int intel_bw_crtc_num_active_planes(const struct intel_crtc_state *crtc_state)
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
