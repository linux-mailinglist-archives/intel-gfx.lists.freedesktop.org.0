Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF46918A27
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 19:32:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B69210E061;
	Wed, 26 Jun 2024 17:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jm9GK0Tk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131A110E061;
 Wed, 26 Jun 2024 17:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719423121; x=1750959121;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PfJd0rHnRX9W4pnEBFbylkOit4jjcPOSYfd8f7tM5bo=;
 b=jm9GK0Tk1phipaMUm5+qYjJlrSFhFm7f141cg8Zl3djdWg7IMEbsTZR+
 C/mye0qMOSIyq4mhi7EfWrqiV98qJMF6aNOUVGQhRoByBR/yc1Inz45Jc
 FunlCjm5IjDMwgFShEPfIpQvsRSnaVx4oJ3CYq6s+mhIKFmospdI4kZV6
 M8JgaExdT6hv/aJfZLbsESab8HfgWryXKZL0nZQkGV0Veri6hJVx5Zt24
 x+ePRqZjautG3bDy7fr4i8gPFPzBZ5gJojJoXQ3t+69VxeLGPIql0M4Ty
 N1qhcye2dAs7f7rA0zWANG9CYmaYDXP5EoBQG5d5phGRNtkSINmypYfVp Q==;
X-CSE-ConnectionGUID: 4zi8VnrKRYC60XhL9VPxyQ==
X-CSE-MsgGUID: +sqUtcAVQDmUbT8IL8VSYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="27100659"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="27100659"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 10:31:59 -0700
X-CSE-ConnectionGUID: zg0sWoq3QxujUWx2/p+QwQ==
X-CSE-MsgGUID: qcrdQMbXSKau94MSlRzz8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="48525634"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Jun 2024 10:31:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:31:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 26 Jun 2024 10:31:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 26 Jun 2024 10:31:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 26 Jun 2024 10:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=duBNtIYjKMCzyFtnGfpdqinewreWzVtqe8fp2sBuTuAJjUFSR2AXuwMaOgENblMNobyODvIs15z9fnT7I/iv+T1HSThuBx9zCCaMyCiuxLxM+dCMwcOVTce9zED1NnC8h6NnzFMW5fFsdKK+1HY6safpWXEV6gD+KZguOadp1swxQ492B2LthBPllRiyeVMWu7WgivauSCGrT8P7+Y3dsEn0W54acpPsgWZMzlg5uGswj2yG1HPtGCDotRBrjpQUamo0QGG9FXQO2Mk9Tp7NiiIiNjPuD69INxF86gyxFNQjqqQIApqpyCnLytFJng0tMD4k1ZqN8ia20+3D7qalkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMQkq3/XSQFJ0r59UEjZW+0i6dWleLatvcX+or0quiM=;
 b=FjlU3YSIqBJWzjR402Zm1MIE/yIEFrnV15enAwceavfsvPtCGl/nsvsd5BwNIzew7p2rxjKO53657JThqT6SAdCAxvh9uJf9zXkxHbWX4R3wt3Pa33tv202fpA9bpqBqY28MDxV6+bCKDrWKVEbLaAITWmhN+S7wNv75whj/UK9g9NUA0+0Yio5kftnXCc5DT+DNKPtYIJd01rwsuDx8rhoP5K1YfXWE7X+a7GrVa3sRaFUMAnoKJRgsWCQJgCYAbNE6ZvC3BfAowWdVmmFWvLcObO1D8mS87DcK5lI9qHXvgWT7jnqyVchiC0bKdE9XQy/SosAJ2wnRwkEOEerE/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Wed, 26 Jun
 2024 17:31:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.7698.025; Wed, 26 Jun 2024
 17:31:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZnxAuOVN+ioKxtIR@ideak-desk.fi.intel.com>
References: <20240625202652.315936-1-gustavo.sousa@intel.com>
 <ZnxAuOVN+ioKxtIR@ideak-desk.fi.intel.com>
Subject: Re: [PATCH] drm/i915: Skip programming FIA link enable bits for MTL+
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Wed, 26 Jun 2024 14:31:49 -0300
Message-ID: <171942310960.2026.11307370502317050527@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0161.namprd03.prod.outlook.com
 (2603:10b6:a03:338::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: 76443846-74b6-4a0a-ac2e-08dc9605df9e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230038|1800799022|366014|376012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eERDZStKdTBmL3BvcUZndEhvUERuV3hOMjNLUUplR3lOT1kzUjY5YUxEbW0v?=
 =?utf-8?B?SzAzMXk3bDc3VkJjZnc3MmdRaTBZckFYYnp6bjIrSS9yYXMrcnRCNVZ5YU1k?=
 =?utf-8?B?OEsvS3pkVXJLaVZnbEd0QW1kakJLOUhhVGx3QVBya0Zhc0VJTUFXc1pDdWVN?=
 =?utf-8?B?TkRtM24wQy9DcUJOb3NTemdvRHhpNDFkSlNxTktwN2VZZGo1ZkFLTE1OSW5O?=
 =?utf-8?B?bGM2YmVWNitQY0xrcEs3S3BTTGhzZGxwblF0cmZOSlBqVCtHcFNuVVZiam9C?=
 =?utf-8?B?YXFwTVFVQmI0ZW9BWnR6SjdhWkduQ2pEVXg3Vi8yRUlKaU1DVlJTOTdvdENH?=
 =?utf-8?B?Vm9ySmZURTdMWGx0MERreHAyclBzSWE0c3pNNnFvcGpDTkhKVkhrVUJOWERs?=
 =?utf-8?B?SDQzREUrY1d4RHRoY1BVYW5veE5FWmZzS3hWQ3Z5SldaWmxiREVRZnN2OW1i?=
 =?utf-8?B?RmE2UFhic3phaXB1enBSLzE0RjNsQ0lnSDBFZ2h4Q2hNdUVFdTZLa2M4ZlFT?=
 =?utf-8?B?dmMwZWx1eS9NTHozbFQzaFlNalMwQmkvcjY0dkNSNHJuWXpaaXp2RyszOXNw?=
 =?utf-8?B?YnNlVDIweGN6ZldBaWNlTmQrWTljWEFreE1BcThnSCtxcGM0OWZyemhFdklQ?=
 =?utf-8?B?c2txM09LMlNTYWhudmRldHNuU0lnem1YNjRocjhNMUxjNXdqN01CSU1RV3Z2?=
 =?utf-8?B?cXZoL1d5N1U1TlkxUGlMdDNnVE10ZkZLSG1pVDgvTXNQL3Q1cjJtSERaOExS?=
 =?utf-8?B?cnBVRkVaZFlad3lHRWZNVldtekViSHlIUWdjU2FkdnpnVU93VE4remxHQmpQ?=
 =?utf-8?B?bGdxaytKSVN1bm1BTmtyODhmZ3VQblFFZ0YxaEIwRVFmNG5MaWNRWXpTRkl1?=
 =?utf-8?B?Vy94dURKaXluWHZLSlJudXZiMmwwV0xnNDdyclhYeDBsZUtPdDUwQWhVQXVV?=
 =?utf-8?B?a2taS0VtVm1RM0hQV0VSTk8xWE9wYXFCcG54YnZyeG9pcnZjT3hPM3BFODhP?=
 =?utf-8?B?U3IzNDdIWDVZOTBuZVo1YVdkZTU1cEZLT3ZYVytYMDk3ZTZNTzhJZzBINUs4?=
 =?utf-8?B?OUhkTUNHVVYwS0NJb1VyZVpQbkhVRUlwTVhpc2pHS0NTeXZGT1hPWERscjRq?=
 =?utf-8?B?dTNhbWYrMGl4VWwrZFFXUm5qRHIwa3RUTzVvWElNMTMwTTZ1Uk4vSkpsYTFv?=
 =?utf-8?B?NDFCajN6UXRrYk9UT3UweUNrQlYzL1FjSHBwb2lsSGwwYjZLNHQvMkxTZk11?=
 =?utf-8?B?aFNMQ2c1eFFUL0ozaU55ZkhHZ1NCaWZwUzA2ZWlkbWNxcm9TUU93c1VHb2RB?=
 =?utf-8?B?Q2pJZFB5OFBUWXNzRGJ5Q0FhWStkc1RyQ2ZNS3NFRzNWcklZYjRYb2FhZ1RD?=
 =?utf-8?B?Y1d5OU1CQTZjak5rbzF5ZnlNSXQrSUxDOUZNVmVUc2Njc0V0ak5Tb2tTMTJm?=
 =?utf-8?B?RGh6dHBFYzZ6MmZWTk5NNG9YVWptTzZybnV3YWVPbFVPQ2JnZjc4anBuQ0Rm?=
 =?utf-8?B?VUdKOFJJa2tMbWVobTRyY1NSa21rdGRya1dKczF2YmNLRTBaWUE3TDFzeERu?=
 =?utf-8?B?OEJPeXdZUXErSTJKN1l4dkQ1ZitnRkhaT1dFTmlSeVFYdWlxWkxVQXFsOCtQ?=
 =?utf-8?B?QVIyMTFEekQrSy91TzliWlNZU1BBVlJNNXZVTEdjdWNmTTRsSks5VjVHcmdX?=
 =?utf-8?B?T1drKzdxNTFQYkVUSTVRL042SGMxeExvWDFmVlYxeFduM3JYd09TRHdoQnNh?=
 =?utf-8?Q?MAZTpa7f7Qfp+DZO+bGtx7Xc1uCfxiJvqJloR0R?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230038)(1800799022)(366014)(376012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWlCcXJFL0d3aDl2VklSZGRqanRqYU5EUkVTMmR1RU9PYloyNWtRa0U3cnF0?=
 =?utf-8?B?WVJSYXlKd0JYeWFNdUM4MnhoSW9icUoxclNUa1dnU2tJNTA4Uk9yaHlLWGdY?=
 =?utf-8?B?YWozcTQrSzR0RHliVmUxd21RdXNDVkxvK29tbFdwOXdUSEtuUENSMG43Qy9n?=
 =?utf-8?B?L2ViZTRmYXRiWjZPTXJXSVBJVTJObTVkRHV2L2hoNll6WmNab3BBMXFaRkZC?=
 =?utf-8?B?eEQwMmlmbU5hcnM1WGpKamF6N2ZwYXoyVld4THZISnlmbFQ2UHR2SzQ5bi9O?=
 =?utf-8?B?YUpsVDAzSjVuQ0ZWWVhFbHQ1YkxrVFVsb0R6eUc0bDhzKzV5eXgrTUcwc1Ru?=
 =?utf-8?B?U3lxS2RmdjhRREl2QThGVDhyU0YydS9HSFNOZVhJUFNEMWRobVlVdUdPcDRW?=
 =?utf-8?B?Qm9wZDUyZk9UaEhmQUlqVDQ5cFJNQzhWTmcvNFI5U1hkSmRCaXhyWUMwaCts?=
 =?utf-8?B?Zlk0QjAxbDFrVFN4TG5xeVdaYVVkUGFLbG5wUVFHNnJzNDJiTTR6SzN6d29v?=
 =?utf-8?B?U1JXcSs1SDhjbCtHMm4wT1h5UHRXaysrNGdqL3hDT2E4TjZ1Z1o0bUJvSC85?=
 =?utf-8?B?NTBkK2xLS3U5Y0poMU5SU3RMaXBwbjVXVjQzWU92bnlEbXZDbVU5Q2xvNE5z?=
 =?utf-8?B?a1E3MXdxcEdOM2xKa2wwREh5VEFrZnJmNFlRaDc4RnMxNForZ2oxTlRpZ0Ji?=
 =?utf-8?B?b1h5S0pyTjdlTkJ5RjZzZ2l4YnY5MlAxRWhscFU5Ym41MldGdi9TWUx4VXd5?=
 =?utf-8?B?L1R1OWpjby82bHFwbEg5ZmwrK0hmWGs4VlVKMUZzUlFhSEdIbzBsY1ZoZ0kx?=
 =?utf-8?B?c0tpTXlSUXJYSzIvZTNMd29tcXhGRDVyWkxUYkQ4NnBGRmJNeDVLZGY3VTBn?=
 =?utf-8?B?MW9zdERIYnEyOWI4akZBM1JGQU5RdUVHeTA1UDQ2cDAzT2JKOEhnUUtsTTJK?=
 =?utf-8?B?OHJCOFlBNWYwemZEazhhUHgzSldxbnZGU2duSHZMaVJQMFRBV0hqenEwUDRo?=
 =?utf-8?B?dEdwNnFQazltcnFBNk8xTzU5TnY5bXZlbGtiMzhvaUNEUnlVN1pnNFJBbVJ4?=
 =?utf-8?B?RW84UzgwNmM0NW1lb3dqaHJUTmRlTEpwbG56WFA4bDRwSlZjck95Z3FmSlU1?=
 =?utf-8?B?OUF1MHgzclhnZk1pZjJEdno3Z2NhWVBPOXluRDZjelhTUlFkUkN4K1NIY0ds?=
 =?utf-8?B?c25vSHd6RVhXTnlxU2diOW5OZkhyUWlURWgxQ3FhTitaYSt0NkxVUEVlTnA0?=
 =?utf-8?B?Y0Z5UmpIVTdiQytyRHJzL0ZabVpIZGd1c1R1N2oxVUE3MGg3clRhTUR5MkNy?=
 =?utf-8?B?cTVYZjRRQmVTY0I3ZDdIMTFLdXhsMUtJM1VueFpmMit1UWU4Skhyc2ZuemFQ?=
 =?utf-8?B?c21FOUo1bG56T0x5Z1hvblpmYW1iLzM4SjRXdTEwRnIweENOWmxJdllmZERB?=
 =?utf-8?B?L0xvUUsybVY1cFJVV05uZHpXeDZqNEpGMXBLSXduajZ2UGxWbkwvRkNKT0ND?=
 =?utf-8?B?RzlIS0RJSW1HQlJhSzNuTHBodjRXWC84WDZIa3ZqY2JQWFhXSXkvUkRxYnpN?=
 =?utf-8?B?ZXdzcVdpcEpZY1Y1THFUa0dlcCs3Y0JoeHYvMVQ5VWNlSGtMbThZOXJKc0hY?=
 =?utf-8?B?clhpU2E1RXJmY2lFU1I4bkc1ZWlOVmNteWtHbVR2L2h2ZC94LzhVbHZjNFJD?=
 =?utf-8?B?cUhyOE04TDJmc3ROcVpubGZweFhXM0hkYitIZlN6VTFEV1NYUHhrK01nY1k2?=
 =?utf-8?B?aFNOb25qQzVFeHBaa3BKaDl3YjJ5elB3VGFmV2lNNVd0Z0U5dGlZUDcrWENZ?=
 =?utf-8?B?bG1OamJQRU84WjNNZmdjR01UWGFUR0JyaHJHb1BveWYzb0pYam40ZlFrTkFh?=
 =?utf-8?B?SDNvVDlmeW9IanVqN0krSHZhMDV0WnVHdFE3c1kxQkVFaE02OXcraFg0dDVD?=
 =?utf-8?B?M2tvZjk2STYvTlJUNVRkblRpOVkxdjQxcE5OZmJGQmpsQTBqMmNGbWgvY2JS?=
 =?utf-8?B?NVkxdmdqTUM0aFR6TDFCV3VLR1Vodm1aMVF6dyt1N2ptSTU5dWJZZElnRHZF?=
 =?utf-8?B?a2tLMWl0QUdJZTZhL2VtUU51T0UzN1pUdnltRENNN3J1endvMHNHZW0yc0Qz?=
 =?utf-8?B?QkR5Z2lRWVl2VzFTRlJFZFVLdWhDNEgrM1BxL3cyRDZxQm5QNFQwcUo4ZFhu?=
 =?utf-8?B?L3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76443846-74b6-4a0a-ac2e-08dc9605df9e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2024 17:31:55.1668 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Lvj45RFuVRx+LnnBbdJKMHy7iyT7XcCeMdoE4nkAXkjwvyQsvh3ItxD95qXmAx1MemEAKb26ytapB30Mff0Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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

Quoting Imre Deak (2024-06-26 13:24:24-03:00)
>On Tue, Jun 25, 2024 at 05:26:52PM -0300, Gustavo Sousa wrote:
>> Starting with Xe_LPDP, support for Type-C connections is provided by
>> PICA and programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
>> anymore. Those registers don't even exist in recent display IPs. As
>> such, skip programming them.
>>=20
>> Bspec: 65750, 65448
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>
>MTL still has a FIA mux and the DP-alt pin configuration is read out

Yep. Maybe I could rephrase the commit message like below?

  Starting with Xe_LPDP, although FIA is still used to readout Type-C
  pin assignment, part of Type-C support is moved to PICA and
  programming PORT_TX_DFLEXDPMLE1(*) registers is not applicable
  anymore.

>from that, but programming DPMLE1 accordingly doesn't seem to be
>required indeed (the register still exists but programming it doesn't
>make a difference based on my test):

Well, yes, one of the base offsets (0x16f8c0) does exist on MTL, but it
maps to a completely different register (according to the register
database).

>
>Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks!

Gustavo Sousa

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_tc.c | 3 +++
>>  1 file changed, 3 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i=
915/display/intel_tc.c
>> index 9887967b2ca5..6f2ee7dbc43b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -393,6 +393,9 @@ void intel_tc_port_set_fia_lane_count(struct intel_d=
igital_port *dig_port,
>>          bool lane_reversal =3D dig_port->saved_port_bits & DDI_BUF_PORT=
_REVERSAL;
>>          u32 val;
>> =20
>> +        if (DISPLAY_VER(i915) >=3D 14)
>> +                return;
>> +
>>          drm_WARN_ON(&i915->drm,
>>                      lane_reversal && tc->mode !=3D TC_PORT_LEGACY);
>> =20
>> --=20
>> 2.45.2
>>
