Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE728D402D
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FCC10F752;
	Wed, 29 May 2024 21:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hrAjvAEx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3F710F752;
 Wed, 29 May 2024 21:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717017423; x=1748553423;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4Sr3DpDAg3kbSsUbumpGqnUFu8JKsjYitj9R2kbPj/o=;
 b=hrAjvAExNh0mmo33FGByZVqJXAT6AkQde/TgXc+GKhAh1Rb0Hcbiosdn
 5geOUjuQM4OlBDgLBx8o8rVUNxI7tOtyXhNPX9kal8U+FEFTLSS8hqO3M
 C5yKGeFjsOTgbM1UWckAvuX53Zo41kHPPewziAqYQnljhfF9jqnUs4edO
 e5jcqju9Snlrns0LAxUJStSOJwzc0cbDqWqODzI/EGIIHJ3IBaF9Qbbc2
 Au72tNd8sWU9hdnX6D6GHzmgC7nLk3dUfic07mKdCyTPtSFXChIDU8wrJ
 5vxJs3G1epHNVqc3rl9LDhRC5ePvqQ23CNFfXG2GS/lI7HJ0So5y0sXw3 g==;
X-CSE-ConnectionGUID: yWpltiRkSVOTeKf/eIeSwQ==
X-CSE-MsgGUID: 6jt0iFtCTo+9DZH5dZmOrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13637090"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13637090"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:17:01 -0700
X-CSE-ConnectionGUID: xnFeYi1HQq+s5OmMX9WvbA==
X-CSE-MsgGUID: xyDSXveFQx+h03W56HiAhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="40577368"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:17:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:17:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:17:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:17:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZIE+bhzaEyn3dTb+c0EfFM42QrUHQ2w+Ky6ePVwwEAPprG/LKTztmZfPDD2P5uTG1+9FT2Y2IlB+tLkFey2KChY3QsX+GndNmKvjoA2yIBUlI1mLp1JgPinX+vAQ2jkzg5uA19Ma9By1QDfcZqLAnjxixXtvamcRQVqdQ9kDWkTGkcQ2V0I7ItXU53nHkGeOSGx/Lpn6xOrMS/OeYeomsR9aa1uacv9Vc40c450q2+zgMdrgG36UZYKqgkhjSngbbI31Y6eX4cGXCRCIRi6hC4fBR27FFlzajUM5+laE9J6bL17y7JZQnTm3CFF+00+/7CayyHBXVknH/yror8Ha0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XjYZTnDeKpHTNtv6YtcGJUZ8qq1F8lDfHsTjSX9zqHA=;
 b=hwIzxaFTmpVqYg83V+AM6kxBpla43gINdzgx8Vb0ZBKHYo2m6EP9Lpcond9oFFzYcfA6iOhyVOJxpbJfYanrK6GnyVUhpIgec3Nh8u6aPgpGTjBPfZdN29fnalhWZC2gkxnwCtqqaJVB8000rq5FAfro7zmpira8rOEX4AmnzPAvjq6XsdLsaEONSmO9/NoeaycVKOWfQyZ5ES4tRlKy+T7N8+n9sE5zk2681j711B92X9lGhLZo2j4GABxOu5fFfmzIgaSUJo30jwmgwztyRMdTetChmMIeGtiY/VmC+OwDClovNX+fy7xIZ2Fx2K7jv1DNakl4wiRhGYXs6aqbDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7297.namprd11.prod.outlook.com (2603:10b6:610:140::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 21:16:58 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:16:57 +0000
Date: Wed, 29 May 2024 14:16:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 06/12] drm/i915: convert fsb_freq and mem_freq to kHz
Message-ID: <20240529211655.GU4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <1e4f2fe8c22c5a4fd8f137385f9a884e31986075.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1e4f2fe8c22c5a4fd8f137385f9a884e31986075.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0002.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7297:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c548092-e57d-4d53-9529-08dc8024ac4f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?N1JrWeAkG7dOQoY3/dskw/gZO0FUDGXI93J5oG5wxRL5SBPtiPun60AmtTOL?=
 =?us-ascii?Q?afL9zOIQD35Zq4JKCSiXE3LQkFgg6YBwmx8EIwYrNozjb/3aQfjaReeJ51u1?=
 =?us-ascii?Q?rw0+GSKQXeWzGjEu1TGPpNb4WLut4885F8qpqW9CovGOzcB35d2Yr8+XlxQe?=
 =?us-ascii?Q?74/52JIn/FDXbVD/7uFjSR/cS0tbTYMYGFnpQIGz1hYOPaJJWuabJD59AxPU?=
 =?us-ascii?Q?GzUsXnv5dXmohtnDJWlwyKzfjHnTVNg7+cVqgI2L5KFVYuZUc7Vqu8uJevqn?=
 =?us-ascii?Q?XsRUdKJqeORLCN16WUKseVrFWxPona+AhjJrl40t296Gsc5TtIXMcwHSJOVX?=
 =?us-ascii?Q?buIYAKdi+s85639h17RPLkyRVWWmIUrwO86sPklQmYGpsY9ln3SK41AcT2vJ?=
 =?us-ascii?Q?KJU2eL3zr7Zzby7a6MPLMkNIVJqVZidamX4dlAaIWZXRw4iP7h0Jo3/+ytdG?=
 =?us-ascii?Q?8gf5wxuIaYZnuutQ1miHv9l4rtywWvLTJ9Q+8YH88AbmMW6BlN4Pi9ZRapqs?=
 =?us-ascii?Q?PEq6Tityu269E8z0/04BazUMFJfvhUkP9yCJQRKzdsxczchPs9+XXlEVrIh2?=
 =?us-ascii?Q?i9SaceqjpMUeYL1McnAJlIhykJpB5ENacNAmZ1UKrLaus3PO30K8pTsxPyjo?=
 =?us-ascii?Q?yK4ppH0tp4sVhc7PqBVJmVZREDknpVXcSt/G+FVoLly64ajOnSvn08mmEb8Y?=
 =?us-ascii?Q?tNvHiXHPSELZvR+fl9TOqKRiWGnQMriBPjrCu6vsRWXbfywrulFZfJNroGwL?=
 =?us-ascii?Q?nGTa4xZLIv0y+AoAy6HD5lukL/h9c1KpTYIzqkSABCPCpJGEoR1yv0kiTgfc?=
 =?us-ascii?Q?Vo9vxgX5Fq1qRYxchM4p/oPhzIef6gUdlbT6txA5AGjvkiLotY3g6K0yle3j?=
 =?us-ascii?Q?d/WXQLr+RBJHHW9+WyJ25ZlKAFcw21isb4Cb9PShCv+QM4vi6rFv//yXJpCa?=
 =?us-ascii?Q?IlBEatesD9F6oAMi2hbj+vmWc4Va/J/WLVGBIgb1n7TscEBV49aXYAt40ASr?=
 =?us-ascii?Q?jsZCJtgmuzajiZb3LENTh1aKNi4317IK7DEjigCueJ0KM5VpxJUHUiPQ0Hdi?=
 =?us-ascii?Q?g3wWDOLvkl+K6tEtO2z2ZwlSLPAkkpHWHfCrmWtVZgQTm10PujxXsGMsb9B0?=
 =?us-ascii?Q?/g2yg47kCMv69PiQQMUbxyjjVlV8xk9wssez8N8bUjjCqLeVarEP08VXEFeI?=
 =?us-ascii?Q?2wsIknkB46BtVmT5IC2BADdTrzLcdL15l+e+B8cI2ERVxSiVk+DX7jDq7cbm?=
 =?us-ascii?Q?MWHHYVdQtiwkMT6nE7bXUFMNkGgfCsUXPHcuYDigFg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QzEK0KOSTre1c31wt+vo9Xb5DYowMbaI6Ql7aW6xZyRrsdg9XGIfkWPmCVj3?=
 =?us-ascii?Q?nA+7dJ10miOSVjuKDLlpgVeKFcxaX1CmQlpf2GxP4xdMDZQeEhzW1VbSCipg?=
 =?us-ascii?Q?A3KKMIlySsKLVGJildNN/bzMXkfQa1UJANIITI8rWaLwVIHfkia8tEmCAWJv?=
 =?us-ascii?Q?KDi7y+j1S/XpFB4sRHqQR2NwwHphQMiD41J/ce5OWJdcDHV55p5Ejk1+JBc+?=
 =?us-ascii?Q?/tRigod1D1hrssR605f2R2wsQ3YUWLAU0E1YlPYY6T6bUCIe623aJMb7Q4vD?=
 =?us-ascii?Q?UH+maGX8ovjsg6yeevW/hSLm2aYQWaw2Q7CL/4eM6RVSzUuZNLkIPYbJls95?=
 =?us-ascii?Q?sSE9qYIvFDiKcL7R9TiiRuSJBtMDLJeF3fWrRRxMC2F0+KP273Tv5L3HbC8d?=
 =?us-ascii?Q?MXdIkfsCWRerrPBbzNFBJq1GCz/TVCWZ0Dc1nW38njRjTXWK7OWyTQzrOjDj?=
 =?us-ascii?Q?bqyZFCf0ssQiZOt7LHogqZeqh4iPWabH2B7vUPwfMcaGaX5LyrdIZTvSIKmY?=
 =?us-ascii?Q?3xVh/bE109/7sZRS+FjEMHWdjjztZRqOB2Pcf3jlV4SwFcaeRzfgczQ16PnF?=
 =?us-ascii?Q?VhVMOqCmWSyDW571RGmPpYs8OSVfdYR6tMdyf6wYmeX16MoLli6yoP8ckrdz?=
 =?us-ascii?Q?eEua2aIalrl53TdJeW0fKTHq796uJaC6Niy1MrcfjLHp3BFzatYhysEn5Hsb?=
 =?us-ascii?Q?+fVO5AqbXiU6OflpFHNZ5ggvxg8UN3Jl2ZzjkTeDqHf3nS6wt49hdCbGYqGI?=
 =?us-ascii?Q?pbtapS30swuVvK7rhj/yNu8WAPGixwe3pUMtyJjQQxqtSvrsTKdP3Z2Ae/WX?=
 =?us-ascii?Q?1nBtK3gYw/E3rFFg9a15I1/9a6BR5IgxPIPO+3NpHjOkxlUjDwqqem3VXY4Z?=
 =?us-ascii?Q?xwppVLScNhDq7hbtUyzaQ6zFZJ6G1w36cRKDloE8ur093uHf4MoG4dtx5msQ?=
 =?us-ascii?Q?bErUjojxJeU6dG/G7L6KVKJVhAOnlfStHhtBisKeivfTZtkHf4nP2g8d5YeF?=
 =?us-ascii?Q?IgIVhwhSVjDEUZk+mOkyaS67wvUUTvlX44IS83JugABpYfv6+aNSvy0DFfxG?=
 =?us-ascii?Q?I3KZQZuY3e/AqIcdQRNv92u8nABagqiOr/z2yQbDqG/ngdNS+s/C6ms1veRJ?=
 =?us-ascii?Q?L/d6+Ar1MOD947u5Vtl+n8w43bAiFKYwugyteSFEACyWqMw4Etgu9YSLGwpu?=
 =?us-ascii?Q?UlOt85+IbNTZlrD2vJsgbLP1JorQlrewr56CnRLTjtXUbSMLGB66Qy4kUjnF?=
 =?us-ascii?Q?pdX+uR+wi/Swl+P7X1TZbXD/2d84MBkux1PLb/Ph8RH+j71TlcyyRiRe/Acy?=
 =?us-ascii?Q?0b+wBMGI/pzI2uWDlcpzhjGB/cEDww9aURWB1u70v0wOkN9AVzOO8H+UKWXr?=
 =?us-ascii?Q?XHCAuUI3o9tc6oocaOEhWoBc4w6ga+EBrZsMV9JMo80JUr32VdAXJaficdVn?=
 =?us-ascii?Q?08qw3u17jJz341JmoYniRfDNsZXDizKqmimFWdVIT+PsBWKCx208USJ7Wbkh?=
 =?us-ascii?Q?It4HWN7OwzLtGy2lk9VWG3z59qd7JF3hXBdnLL/SDMIcEufRf2pvxRegWP1C?=
 =?us-ascii?Q?pjtpZEWVJBhmR/OGONfNn0uTH+Dsz3PHDiOxz76x8Qc1SwTVSwhrs5cr5iWy?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c548092-e57d-4d53-9529-08dc8024ac4f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:16:57.9021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QeX6INUYYPCuNDbao8Ol+o8qrk4iGZL7lR9U2kRX9tGKRKPykAnVm6FwrOg4uE6qkveiOodw8vSDZYQR/Fz51xTAWUIT2wof2veCtZfPWoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7297
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

On Tue, May 28, 2024 at 05:24:55PM +0300, Jani Nikula wrote:
> We'll want to use fsb frequency for deriving GT clock and rawclk
> frequencies in the future. Increase the accuracy by converting to
> kHz. Do the same for mem freq to be aligned.
> 
> Round the frequencies ending in 666 to 667.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Would it be worth adding a "_khz" suffix to the structure fields to help
clarify the units?

Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c |  6 ++--
>  drivers/gpu/drm/i915/gt/intel_rps.c    |  4 +--
>  drivers/gpu/drm/i915/soc/intel_dram.c  | 50 +++++++++++++-------------
>  3 files changed, 30 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 8b8a0f305c3a..08c5d122af8f 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -83,14 +83,14 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
>  
>  		if (is_desktop == latency->is_desktop &&
>  		    i915->is_ddr3 == latency->is_ddr3 &&
> -		    i915->fsb_freq == latency->fsb_freq &&
> -		    i915->mem_freq == latency->mem_freq)
> +		    DIV_ROUND_CLOSEST(i915->fsb_freq, 1000) == latency->fsb_freq &&
> +		    DIV_ROUND_CLOSEST(i915->mem_freq, 1000) == latency->mem_freq)
>  			return latency;
>  	}
>  
>  err:
>  	drm_dbg_kms(&i915->drm,
> -		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
> +		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
>  		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
>  
>  	return NULL;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index c9cb2a391942..5d3de1cddcf6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -280,9 +280,9 @@ static void gen5_rps_init(struct intel_rps *rps)
>  	u32 rgvmodectl;
>  	int c_m, i;
>  
> -	if (i915->fsb_freq <= 3200)
> +	if (i915->fsb_freq <= 3200000)
>  		c_m = 0;
> -	else if (i915->fsb_freq <= 4800)
> +	else if (i915->fsb_freq <= 4800000)
>  		c_m = 1;
>  	else
>  		c_m = 2;
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 266ed6cfa485..ace9372244a4 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -56,11 +56,11 @@ static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
>  
>  	switch (tmp & CLKCFG_MEM_MASK) {
>  	case CLKCFG_MEM_533:
> -		return 533;
> +		return 533333;
>  	case CLKCFG_MEM_667:
> -		return 667;
> +		return 666667;
>  	case CLKCFG_MEM_800:
> -		return 800;
> +		return 800000;
>  	}
>  
>  	return 0;
> @@ -73,13 +73,13 @@ static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
>  	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
>  	switch (ddrpll & 0xff) {
>  	case 0xc:
> -		return 800;
> +		return 800000;
>  	case 0x10:
> -		return 1066;
> +		return 1066667;
>  	case 0x14:
> -		return 1333;
> +		return 1333333;
>  	case 0x18:
> -		return 1600;
> +		return 1600000;
>  	default:
>  		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
>  			ddrpll & 0xff);
> @@ -97,9 +97,9 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
>  
>  	switch ((val >> 2) & 0x7) {
>  	case 3:
> -		return 2000;
> +		return 2000000;
>  	default:
> -		return 1600;
> +		return 1600000;
>  	}
>  }
>  
> @@ -114,11 +114,11 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>  	switch ((val >> 6) & 3) {
>  	case 0:
>  	case 1:
> -		return 800;
> +		return 800000;
>  	case 2:
> -		return 1066;
> +		return 1066667;
>  	case 3:
> -		return 1333;
> +		return 1333333;
>  	}
>  
>  	return 0;
> @@ -139,7 +139,7 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  		i915->is_ddr3 = pnv_is_ddr3(i915);
>  
>  	if (i915->mem_freq)
> -		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
> +		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>  }
>  
>  static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
> @@ -150,13 +150,13 @@ static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
>  
>  	switch (fsb) {
>  	case CLKCFG_FSB_400:
> -		return 400;
> +		return 400000;
>  	case CLKCFG_FSB_533:
> -		return 533;
> +		return 533333;
>  	case CLKCFG_FSB_667:
> -		return 667;
> +		return 666667;
>  	case CLKCFG_FSB_800:
> -		return 800;
> +		return 800000;
>  	}
>  
>  	return 0;
> @@ -170,19 +170,19 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>  
>  	switch (fsb) {
>  	case 0x00c:
> -		return 3200;
> +		return 3200000;
>  	case 0x00e:
> -		return 3733;
> +		return 3733333;
>  	case 0x010:
> -		return 4266;
> +		return 4266667;
>  	case 0x012:
> -		return 4800;
> +		return 4800000;
>  	case 0x014:
> -		return 5333;
> +		return 5333333;
>  	case 0x016:
> -		return 5866;
> +		return 5866667;
>  	case 0x018:
> -		return 6400;
> +		return 6400000;
>  	default:
>  		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
>  		return 0;
> @@ -197,7 +197,7 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
>  		i915->fsb_freq = pnv_fsb_freq(i915);
>  
>  	if (i915->fsb_freq)
> -		drm_dbg(&i915->drm, "FSB frequency: %d MHz\n", i915->fsb_freq);
> +		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
>  }
>  
>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
