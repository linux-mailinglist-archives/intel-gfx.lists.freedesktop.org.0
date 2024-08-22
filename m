Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1395C054
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2024 23:38:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD3410E0F0;
	Thu, 22 Aug 2024 21:38:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XiIRI4Te";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E58F10E0EF;
 Thu, 22 Aug 2024 21:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724362735; x=1755898735;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l8VR2A5wf9BMfArJjoTpN3aSmjCJbu0GFZ1/YIoYOf4=;
 b=XiIRI4TePa/HI3YkAF6hyk30pZKQKbzaDmX3JYZ+JimHuRL1i8V/Zsq8
 IsgiXgTZADLx9vGuCUPl/0HTqdPv+EgfCrAHbNDm5odK0Bu/Vud8oUO9t
 6zfKp+SMN5HSY3Hu+quOB33GAA0RoxHXJYw2s0zbYRaoZ5YsOfDm00BpT
 LM0i85zQKmRPYueDa27b72zAltHzmO5TluJIQgLzUS+ud8KZw8FCWHb6u
 bV79sRZ7qpJImIhxMpRD0wIm52D45mesrfmx8MqVwoPYiT4kFYUWhxc8R
 9Ignt7/UaaIk47fMIR02AZqNYsm7SLl0wZ/7euKaLeHfO/tEXwqAIabRq A==;
X-CSE-ConnectionGUID: Q3xFUFRpTOWdsk+TvYhh+Q==
X-CSE-MsgGUID: VdTko2xoTSq0eSc6YUsQxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="33376584"
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="33376584"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 14:38:55 -0700
X-CSE-ConnectionGUID: VWPszuFiQTuUpt6maCU6KA==
X-CSE-MsgGUID: KEmhzA/eSeuvUfaG1vmOTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,168,1719903600"; d="scan'208";a="61727641"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 14:38:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:38:49 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 14:38:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 14:38:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 14:38:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FQF5kNnOHDr2zJOWZhFzXTUUCUpTOiGwbfXSOkn08liPP02wNJ12Rwtf1puG5EpBmcALJoFwfBOWfW4vSUyeQFp+XKb96Nc0J0y5OhA9xIn5eeamt7QaOOjVYMOulQW7iVZV2dBMephhKrgrIF+ed9f8N7Fx2AMUtC+69Os9D3dxdN5/V/KfYXt/LKKAlw5bhvsL3Klz16KEy2/obHZB1Sx+4pUslC5fbnac6Wa64/wERnbf2H6YqdHnURKJXDQDxEoTowKMc0aJXlSN4VnZxqF9kof5S75f3wGU0XB77edI2PY0pjBjAoq+H4WScn0aYcUSruFuozBOpGQOmScoxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=whLRm1a7igL37qdzKcSvcQoBgJmUWg98T892aeKfHCI=;
 b=EKIevtAfGpo4KVVn8ovkjc+qLNOV2iQimJM6n1CNEQp8rD9f0rp7vA2VYGPCks4rF1BfarX9xjnnqV5mJsMG/wBI3ErgJp+ihkfCAJFhQxlJwfv5G6gC5/zUMMRM575I7vktmDV6+MCUxV4QmVXp9O2T/HuKHfKUX+CyRIND97pQOGC+NNsr4vyTfjMCbAr/9IOkSM56Ci4qdxW6vWbZdCOZOfIY7H+zWRAl4aSZBgeORE/ZrlftB0Nvi4hD5tqdBZZ+W6q3qDoFdHhjec0e+A7Wc+91VoEBVUKbSEyKBZCtADJPMYPL03hTCrTM4AHh7V/HwFVQDcRxFfW0UenUAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW6PR11MB8340.namprd11.prod.outlook.com (2603:10b6:303:23e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.19; Thu, 22 Aug
 2024 21:38:46 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7875.019; Thu, 22 Aug 2024
 21:38:46 +0000
Date: Thu, 22 Aug 2024 17:38:43 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/7] drm/i915/vblank: fix context imbalance warnings
Message-ID: <Zsev4yl6Jwk1UgkA@intel.com>
References: <cover.1724342644.git.jani.nikula@intel.com>
 <111de5bee15f408de65b19ece4b68a7ac66b30cf.1724342644.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <111de5bee15f408de65b19ece4b68a7ac66b30cf.1724342644.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0325.namprd04.prod.outlook.com
 (2603:10b6:303:82::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW6PR11MB8340:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ba70ce5-3f2e-437f-aa1b-08dcc2f2cd18
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hVjrtyMGFCSKMvVjsfxBeLOW86Nb5CTvaqpb1Q9yb5oVng8jYY1Uo3WR7Ky+?=
 =?us-ascii?Q?1tpSk3YOJ6Gpa6bYGp1PNtK3zeL11QHGt9EUetS5IovfJXd+NFKjq5HFOKeq?=
 =?us-ascii?Q?1Tr1alFX043pZ6JmFCjis0I0QFvBHh9dvX+xMzQaQZGesPZ9FSl8ugzaG4dh?=
 =?us-ascii?Q?BE2wEZ8bZhtvPw+8FVdpvgMxGIGwFKnGFBE/+vm4QIoQnJd8lsEsmlrg+D6t?=
 =?us-ascii?Q?JAAyiwqaVSqonmMEfThoRlqZI8UAuPqr0VL4y5XhAupzeyUWPJnr07QMgma1?=
 =?us-ascii?Q?JenGmhH8wSkVWA5tdeJ2I7yqGxxIjWe64f67pSUnvGiEzNManYAMU9/gxpqd?=
 =?us-ascii?Q?SBi9yc35dmRM9Sctmw6kHilfEuE1O+w8aGp5abuVunoNQ7eIP7ktEaIad5Mc?=
 =?us-ascii?Q?0QM04cvekvpPzDg9j1UaRNAsuqZj9JDn4X7pl6yVOoRA8hamMAqszCeyqYQu?=
 =?us-ascii?Q?ophl7npzhh5C1LB2YoJGUprXvmBBwzt4RkGhWNkaXJFJi1NfEr/Dhb5PH/Xb?=
 =?us-ascii?Q?MhD+y3nZQt4VSVTz/fQzFAE29g85lj1UGBwU+G32zRQBH8JEaFqoAGykVB6I?=
 =?us-ascii?Q?r54nCR189aZ3B8IVC5wF8ftjSx/qKeWv0oGbfaV1NZZyAG15jYuaGem70pRZ?=
 =?us-ascii?Q?Y3TGMvm5jhwi61G5iSwk93CDa77Fvm4DtR/pY+T1XXFxmt5YacZLRFgghDfg?=
 =?us-ascii?Q?gFIsvdrEKUH6CxYz3dQ8u5yuCuLOSLUVrObjmbqugywdp26ZH6homEwR1UsQ?=
 =?us-ascii?Q?x2503JtCMoO+IMaiG7twbjWMspvR6Cqf9vLvE0TV8c7GHBDHMNKvN628l2dt?=
 =?us-ascii?Q?SUQSEmzMg25b6ms9GqMSm/RzLTOVicj5pdQNAjCrrHvlxp8U0AKQHtzGH0mk?=
 =?us-ascii?Q?wHadziAmYqO1ZOXxsJyXMoWsVVsP4vuEL82D71fodanXuuQ6RWWLjQs8JREG?=
 =?us-ascii?Q?4lTzmVk952tNaCVv/yCy/3TxwGhw5lZ2Up71epdGOc2WW5ut0bFHH8osmrtU?=
 =?us-ascii?Q?gZRM4wRzN+WMcW6q49MTcdNj6k5C3JHtqbMGyPly6azk+y6WeodYZcYulPhA?=
 =?us-ascii?Q?N+d0+Fz5kLdqnpqSQa4LSBKiSIHPSsOinFpnNd5VhaeIJKiYUsvcyWEqQ6Qb?=
 =?us-ascii?Q?9F04gC3/4P0TbEUrklg5AQBjOuZP3SAjQVXUgbQ8DBq8FOVEHZLjU4PCi3h6?=
 =?us-ascii?Q?ohL1AaduJHr5EiLtGq2lqVVWB3kmZTug6vnvnJzqYupU5WhyrYTH0/XVCQ3x?=
 =?us-ascii?Q?MTXsv5GdspY3kUHC/l3wUm9XFeaKvAMoNRbKVD9GnwVKhS2Bq60EDMb22+1R?=
 =?us-ascii?Q?bBwl9RFguksBdebfFtb0gg0/g3w6P3fN5A/pZ2Z7iDiRmQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZuKd1YFWAPiDTQsqTDvyj5q3cwvp8ha9FCWrXQNnXKKWgCF3HuIp/zD4K3Hr?=
 =?us-ascii?Q?Rxrh02ffS0odZ8UCdavZ9mAmiVxmXXKJghNG+W4EjUUdoMwjOGEOBx+5Kko0?=
 =?us-ascii?Q?LSUkuIgs/d//P6z4AY8C09Q7Q5VejC7ZZ1YgwfXha26xYTLMbBQfa0yiz2Nb?=
 =?us-ascii?Q?VckHmWlqcChi5aYpJ2hDeXlejOW1j1sRnnFVPO4WuQvfru7vUf7wqe/s6O5C?=
 =?us-ascii?Q?49EXjXxwDvTjNJrPR/ksYEvK3qVcvV+jNesTMYRrcBbx5lLpS/EArHvakb1B?=
 =?us-ascii?Q?j+O2goBc1bhZsjVjiy+GaMmaNNYx+s5ZIcn9HcrOcuIpFrG2pLBC53o1uh+K?=
 =?us-ascii?Q?wpVQri/rs+f3svgFtb5rFoOPHcplNutg3BELJRXcCeR5wN9zfWQdYh6vTHJc?=
 =?us-ascii?Q?J7NkbEY4v5ft87Y3bVXP8B0llK0KfT45QbRdWQKDexWekKHoUAZIR+/i0A8+?=
 =?us-ascii?Q?v16lIyRdE3yGh+FJCYuQfWADCKhLMWSdA1y7MJn7LWMXGgSHCX9ifR2wyKWx?=
 =?us-ascii?Q?hIo9udKJs2QfyIfAz/7rXj3BjodVX0aSmMYkPeoinoOGTs64yM9gl58676Fm?=
 =?us-ascii?Q?p3jzGAvGOwOyK1vaH6f93Dtc405TVVhF2ngYRRVO0HBA6jVisMMzOzyhQwmO?=
 =?us-ascii?Q?0ZodIjqCVgAtOHXj6fS6deoLkgm3KiJ/sxPi2e0fRN/orYuBUgY2LqvLRQcZ?=
 =?us-ascii?Q?4ztfZVa/Xw+i2zmfvlu7iE9EYGWOLFEkddj6/8bbnrjlESaE16Y3REhcHVQ/?=
 =?us-ascii?Q?I8n09xB/OkWRFt7QRPoeIxGRg5NF8Ga9jmd73MPney2NwDPv0feu4sPJVEqU?=
 =?us-ascii?Q?GcmtLkwmNsCKHcMLd0Sex9GG+4AXqSTc1ARO63mAf2jjyt1yz0An8/Mxwurm?=
 =?us-ascii?Q?WjP+TVw+FVT+k7U0dfv0IA5ZtmWxnwDVnFtjJOg6uvukPtJ60X1AqCoOtqAv?=
 =?us-ascii?Q?ZyTfJF/MCTXS/v26rNWc2quEhBC0UfAS1TAQtVhMp7izPIJmBZeqjiOQVZpf?=
 =?us-ascii?Q?kTnhfWI6R+twzdPvWPW5Qkm+QJlJ124EEKXFtmaKYgeGbfl6D50OP/Pazy9H?=
 =?us-ascii?Q?YVjuZilAim8+MZ25Dw9U0Tb9SapswB19+3cFg/F79x2RtsZVU0ix84CMdFhm?=
 =?us-ascii?Q?u9oOKykkD/XO6LH1z9xhJgGZOB/L1E1b+zHjupdO7TEiAk5xzUJ1oYIJy4pr?=
 =?us-ascii?Q?eTqIK9kS1Gb0P+yjqEXWiQjT+VxRtboAqCLEdc66DgrHg00PWt6hpLUqcCrY?=
 =?us-ascii?Q?UlzdJz1Itkua85W//0dc91XIFr0PSaHW7u8VwXCMXNLvxR2vBbe954r52xVg?=
 =?us-ascii?Q?9E7qv9+XGJRrMLpfqDH2wIJn6YHiPmh0wrys4JvPzPw+1rGP4J7klHIaW3w3?=
 =?us-ascii?Q?doT1gQRaumDttT4ufU6xlu6kvK0wIVkG5vWNc3GLrxa8FLW0ffJCrRVIyDn4?=
 =?us-ascii?Q?etrYALlU6tbjpb5Fyi9SVSZVrabiQ3WqOyIBu3Ff7FAMSDvYIttoBjf1p5Ia?=
 =?us-ascii?Q?DkFIOjugcjgFNYfaywOCmxLQN7CTNp4eslgtS1F+N1tA8N1uk76NbmxO8Fda?=
 =?us-ascii?Q?DKeL9iV+cNXeX9HMhUArjW/OOtRmQcHvsqi6XE5DgwT4YJmYQpgKiaiwisNo?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ba70ce5-3f2e-437f-aa1b-08dcc2f2cd18
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 21:38:46.0904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8OFuytg6IwAI0t/3O/JCCW9jSxaXVD4NQVwkbocLoSOYVVSuLDcMTKrABl5cN76+WeYfYFDSfo4DgvFF2Qtpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8340
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

On Thu, Aug 22, 2024 at 07:04:50PM +0300, Jani Nikula wrote:
> When building for xe, we get the context imbalance warning as the actual
> locking/unlocking is not compiled:
> 
> ../drivers/gpu/drm/i915/display/intel_vblank.c:306:13: warning: context imbalance in 'intel_vblank_section_enter' - wrong count at exit
> ../drivers/gpu/drm/i915/display/intel_vblank.c:314:13: warning: context imbalance in 'intel_vblank_section_exit' - wrong count at exit
> 
> Fix by adding separata stubs for xe without __acquires/__releases
> annotation.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vblank.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 551e9ca9bb99..2073e8075af4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -303,21 +303,27 @@ int intel_crtc_scanline_to_hw(struct intel_crtc *crtc, int scanline)
>   * all register accesses to the same cacheline to be serialized,
>   * otherwise they may hang.
>   */
> +#ifdef I915
>  static void intel_vblank_section_enter(struct drm_i915_private *i915)
>  	__acquires(i915->uncore.lock)
>  {
> -#ifdef I915
>  	spin_lock(&i915->uncore.lock);
> -#endif
>  }
>  
>  static void intel_vblank_section_exit(struct drm_i915_private *i915)
>  	__releases(i915->uncore.lock)
>  {
> -#ifdef I915
>  	spin_unlock(&i915->uncore.lock);
> -#endif
>  }
> +#else
> +static void intel_vblank_section_enter(struct drm_i915_private *i915)
> +{
> +}
> +
> +static void intel_vblank_section_exit(struct drm_i915_private *i915)
> +{
> +}
> +#endif
>  
>  static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
>  				     bool in_vblank_irq,
> -- 
> 2.39.2
> 
