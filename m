Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC5C92CDF9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 11:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D6710E195;
	Wed, 10 Jul 2024 09:12:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OjLBTnjD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A02B10E1EC;
 Wed, 10 Jul 2024 09:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720602721; x=1752138721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=33KLm4MJuKK0lRkJXcAAPYciOfFErMDG30EeIIDIAOg=;
 b=OjLBTnjDW9ivgMpL3NP6hLmiVV3lFda4X3mPPq+6+D353khLJC/CGMXi
 fousmofB9p0xy440F2MzEfYDSFQ5yMVNLIcrK/9d3AGcOmBd5nh8s0cL8
 woOg+P+cKzGDD0+aCEysYCYVrRCv4oobslED8t9oywoWN4RomqvzK0x2O
 lcU4yyuTENUZ2UdTysBj3NEqwP2fsFVzGXIrnYtqso+sCMJhJ2mn9hzvp
 AmA2BK8kO6Dq5eBhNsHW1RVsCA72nwj11VPA0aCexPQ7NR/M8mRwWzAEu
 S+5VO02Axofym1fQSXki76NAh+JMK+NgoGChCCW3pafILzQ0vqet+nhfX A==;
X-CSE-ConnectionGUID: DZImcgjpRA+wPqYcaqj4xg==
X-CSE-MsgGUID: l433HRNFRuCwpht4DllRXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="18015190"
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="18015190"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2024 02:12:00 -0700
X-CSE-ConnectionGUID: JLod6ZSXQderYqzrLyQBtw==
X-CSE-MsgGUID: S/wfNsuNQaaafX7rouHZKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,197,1716274800"; d="scan'208";a="48055169"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jul 2024 02:12:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 02:11:59 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 10 Jul 2024 02:11:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 10 Jul 2024 02:11:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 10 Jul 2024 02:11:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YNrTmKHgrxsGOzsRTl3VvZKtG98s3d0WunpPLK1p2UeOfW3QywIj777Y0BUZI4ojvUnQX3ey2/xQFdhIb/pHFulLyV45HE6qcTIg+rljIVawGnXD5Tq1Vt9XtrlzbOAhH5cXsbwCgFFFJOy0fjBJ11TIoKbYC+l2gYenH2C/0ZhItYHa8U+OijQNJS7+Vm+v9PTekkBAx5iVsoFVqapYJh+ZvWnIPYg01PLi+8oCPdyvaOs3X+4S8/5zopvd8D/KBswFRttgAW0WgiMKORO1b5Hd+C/MF5PjWRSKOt0maxOe5MnzK9qkTUxxOLIbxfKBEIamBbTScP/94JWZ46keeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=33KLm4MJuKK0lRkJXcAAPYciOfFErMDG30EeIIDIAOg=;
 b=eDY15ocpyNbt9IiTEm0oNjinGbNBD0mfy6jIht0zDxE36hv2j0n2nDEszZkT0u1jmc6GxemcnpB8c1UJ/dMXHNU9Ciik1IEx66dp8pv0tGvYtyRZpY87ZSa2To50p8WFey+f3Zo7bNBjAqnKFZ9M3vyL3eItt84I3/CSsfP0L/tQpPWS1lo4SyDx8lDNbZRutc/jM4sMMI+90kzuaa7YwvnOpkW1tX01wFc+pEmjKox4IanllnracrFMHduz8J+nKNyZboD0YHZkv8lUOa3z/+Fb0C1H+PBdMhnouT9JSnOyeaYDuHp80fcSKYH9TzRvlC79hBj2lz/ZcglfW6LPnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB6473.namprd11.prod.outlook.com (2603:10b6:510:1f3::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Wed, 10 Jul
 2024 09:11:56 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.7741.033; Wed, 10 Jul 2024
 09:11:56 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 19/20] drm/i915/fbdev: Adjust fbdev stolen mem usage
 heuristic
Thread-Topic: [PATCH 19/20] drm/i915/fbdev: Adjust fbdev stolen mem usage
 heuristic
Thread-Index: AQHazuswhiGyowXduUivvUE7H3byrrHvtINg
Date: Wed, 10 Jul 2024 09:11:56 +0000
Message-ID: <DM4PR11MB6360746D5803D52D5493B40BF4A42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-20-ville.syrjala@linux.intel.com>
In-Reply-To: <20240705145254.3355-20-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB6473:EE_
x-ms-office365-filtering-correlation-id: 3994f5fa-3be5-4555-d01b-08dca0c058dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bC82RllyZk1qZEVweDJRd2czSWt0S3EvNlVhcG9Jc0MrM2g1VFlVSEJsQUlU?=
 =?utf-8?B?MVNsSVZDQTBSU3c0dXNtWHgxYnBIWnQwR1h0SWJ1K1dqZHpqOUF0cDJjNmpS?=
 =?utf-8?B?eVIzYzFXQ1krM2NuWVVBZEFIZTFQT0lWZC9pcXhHNFJucndacFhmK2N5T3Bh?=
 =?utf-8?B?alptRGNRUnF5ak9EZlZWVmQzMXBUc3FvTUo2MmtDQWQxZnNuVEZTQ3I1dlVZ?=
 =?utf-8?B?bEh0bm16THVzVUtJV2c5dEczVHBSa0pZeE42RHRTRzI1bDVUQmpHcXlmNEhV?=
 =?utf-8?B?QWFGT1REdFJYTjM5WjJiV1RpNTA0c2EwNkFEQmhoREFRQ0VOYm5iTFVpajhI?=
 =?utf-8?B?VlVOZ3BWd0pNVUVkNmNHWE5vUjNKc2tMNW81Qk1EZXFGRXFuRUFEY0ZKMXo0?=
 =?utf-8?B?bXE0MHNWUDBxV3ZQMHVBWDRQWjQrSjlaZE44MVJ3eTE5SnZaVC9Ba1N3NGxG?=
 =?utf-8?B?b1U3c0xLMHcrellqcTJIQ2RXb3JBM294SjI2RGpTSXlaYVlHMzdCTkdhR0N5?=
 =?utf-8?B?NmZWWTRZdVNVUEI3cnpSUzcxNDZLZGluMWxTak9UUjR6aWJweW9mREFCOVov?=
 =?utf-8?B?c2lwZXB5VXM5aGtWazVIN1c5bFN0Y3c5ZkhoZGNKbWRoSEtZLzA4ZXZNcE80?=
 =?utf-8?B?Q1RzRWZKZ3JDdmJXOEYya252U0RVTFFobnVSTkpnN21KVHlFNmk4WjRheUFW?=
 =?utf-8?B?aHBYMnJKRk10OVVJeHNTbm5TbkJDVm1QRWRCQTFyWFdZZG9JWmdpMEdPamRy?=
 =?utf-8?B?amNYNmZhcVMzU1NvU0w4YVh1R3VUbE9WTUl4VTZqWFlLL21FcFhhRGRFa1Zr?=
 =?utf-8?B?MzBLY1l2UU9RRDFBcEZsZ1lnRStVQUdVVVZVWks0ei81b2JUazhvZWhyQlVt?=
 =?utf-8?B?M2oySVJIUm9CSklUZUFMc0d5RUUzNjBTWFVUWDVub2JOL0VhZHFNblM5K01V?=
 =?utf-8?B?ajRidXgxY3ZFTjhreGxCMGVkb3hjdFpWMlVEbEJ6V1RBejJuQ2JsNEJGZ3VW?=
 =?utf-8?B?SC9QSFBzS0JJN3EzZzVnZ09SajJpTkoyc2o3ZE1VaFcxM3VkWVozdkgxRm0x?=
 =?utf-8?B?YWRjMi82aXlHcG0ycUxlZmZULzlpTVloM01QbG5SaXg1b2Q5eVpoOHptY2dR?=
 =?utf-8?B?M24wcFdpUjBLNXpNaHhZYkticlRJdG5sRERKWm0yUnhvdFhNUExBb2NQSlZq?=
 =?utf-8?B?Qk40TWgwdGxRUzRaRWxwQ3IzT2hxREI1d01yRDRLMlJrQ0lkRkxaQUxSNG1y?=
 =?utf-8?B?ZStOUlBYYUI4dEFtZHFSbDZ2WitRYnVSd0Y3MjRxK2VMYVNBemdNTkdYVklH?=
 =?utf-8?B?WmFVbUNyenBRZ1llWU0yZzlyU2FScUpqNVlhME5rd1U2bVphMHNESVFXT2Y1?=
 =?utf-8?B?VmU1ckI1S2t1bzRRUEpoQ3c4dTM4TEF3RGt5R3VRL0xWTFQ2cm9MSW5JYXo0?=
 =?utf-8?B?MVlzOVRrMWVmaTd2L3hmMWV1d1R2UWg0cEZDR1JTZ0FOaE0rbk0zenVyNUY2?=
 =?utf-8?B?d0VremtneDZwZkpQVmlMZ0c1ZGV4MkhISDNVcmhvN1AxaGh6RDgrNFdOQ3Vj?=
 =?utf-8?B?cDVlVFI1Mm4yTElWOGswNXI2SnVJbHR0L0pXL0tNcUJxeVBkYU84TWRuQUxH?=
 =?utf-8?B?Zi9RS3hwWkErQ2FsU2Y3YXI2eU5jN2dabEZpNnpnb3NneGpXMEhzaTc1T2hW?=
 =?utf-8?B?YjBuMFZGdytYeDNkSzBOQjN2UGtvQTBhNldxajBHRTdjRkVyZ3FVVlNTcGZm?=
 =?utf-8?B?NnozcjdDOUVZN3lXcG1YNVVLaTZ2MWRaaUZQQXJBKzVZU1AzV3VsWlVzdUhY?=
 =?utf-8?B?Qm9UZlhaMG9ka2paTWZ6eDJaTmFmTjVHeGcvWnlBUzliRjRLaEpBV0VHUkdv?=
 =?utf-8?B?OHdlS2tXdHBRNTVWeXg4S1NFcWxaVFVMQzR5dEhQYXM5MFE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmFPaURSbC9Ka3JiVW8wSEJjK2F0eTIrOThna3o2a1JSK0tyc1ExS3FaYjJJ?=
 =?utf-8?B?d2doQU1XVWZzcXhJMDByNFdnSWwwbnExRm9wNnBzM2VTblljYlRZTXc1U3l2?=
 =?utf-8?B?Y3dteHBTNmxEL3Y3K25wS3ZUbExiM3YxL2w0SXBsdkliYUxac090M2txR1pF?=
 =?utf-8?B?NVpnYkRNcWtCV1dya1JYUUg0NktPUEVLMUNWdzZnSGxyZVV3dE1SQ1R2SEYr?=
 =?utf-8?B?RkFRYmtRQ1BQcXgrdEwwazk5VmdpK0ljRWtMeCtJeHR2S2FaYXozRXRVR201?=
 =?utf-8?B?N3NyRThRMUpRUk0yTmRMNEFQZFFkYVN3cVJSRlBIYjd2ak91THp0eHJrU3ZW?=
 =?utf-8?B?RU5YYlR6NGxUNWFGcGh5L3J2ZHREUEpqSDNmYWtJWDk5Zko2SU1NYzFVU3RE?=
 =?utf-8?B?OEdUUVhjOGdkNXp6NWNKZkowZG1ycEtJdjg0NCt6NEptV0FKb29MbkNicy9y?=
 =?utf-8?B?cEl4U2FTR0FTSUF5aXVDRjFsVTRpNC9zZWJIZ09QUmo0ZVY3T3F3WHN2b0xN?=
 =?utf-8?B?VWJWYXEvamhxOHp6TitrclprRk4weUh0cm85WTJpeC9JdS9qQi9kRDRhSUsx?=
 =?utf-8?B?dFpJUXhjL2VNZEFUMTEvRHFwR0ZmVFJJaWtpVEE4d3BzcDUrMjBjQ1dpZzBs?=
 =?utf-8?B?OEYycjRlNzh5TUcyTS9NaHF0eERoVEJaVzVYNVVwOHNqQW9KMWE1WC95OUZX?=
 =?utf-8?B?ZUZPd0RTVGU0ZDloY1JmOUlUaitRa2JtRlFBZWFZUCsyc2dsRTVOVXYzZkc4?=
 =?utf-8?B?cit4eFVWM04xclZCZGpycnM3SWlJdVhKbk04cjdKMzBFYzBuSXA3VHdIdUdP?=
 =?utf-8?B?MmphdjEyQytsTzAxeEQzbS9rSVhjc0w4T0NXdzZoR0FVNHgyUWJrMGRPYk9h?=
 =?utf-8?B?YWNObVk0TnIwS2pmbXRWRUs5K2QzOC9wYUdLNTFoVjQ3b2phYjNTSkkwbGpu?=
 =?utf-8?B?cWdQUVBpU0UycFMwK3R0QnhlMjFndGJGaU8rTGxGSzFhVkR5N2cyam4wVVJw?=
 =?utf-8?B?YW9iaGtmRmVSVG42d0M3NTRCakh3SmdXalByRExWeDh6TC9XTEQzR1IrbWFV?=
 =?utf-8?B?TFZYVUJucjFKdTVaRUM5ODlVUjdKUGlveEtzQkJwZ2hsVm9VTGhzMDBQK3JW?=
 =?utf-8?B?ekZ4UVBBRWllVzF6K2xvZFNiM3U3SFlibXlvQjNrdUpra1FVZ1AzTUMzeXNS?=
 =?utf-8?B?ekhuS2c1RDA2V3F0akl2b01nYmtxLzZVbk5zSTFIa3VHL080eVZIYm1TNmQr?=
 =?utf-8?B?YThVOWlCS2xCVWlTSS9tcXlUSFVXalpldkpTU1R2QWdDODZQbHVXM3I1NFdr?=
 =?utf-8?B?Q3VSakpGdHZ1SmRncGZ6TEppYVNsSW92ZDE1cUlYSGRRL0NyWVVWNFRTUjJH?=
 =?utf-8?B?Q3JMUmFDQjBYVjBpUjZaVmVMaWNhZXg3cEkwR2lScjBVM3dKVitCZ0ZGV3NN?=
 =?utf-8?B?R1JMTkxjMEl3cWRHcGpUekx6RzdWWEpJTlZobnlJUm9JdXZUTWZPWSt1azI3?=
 =?utf-8?B?bHpueTcvNy9ZVHlUYjIzV2poVm8rckw4Y2o2ZEQxRFUxQ0lETEp2aHBRaDdm?=
 =?utf-8?B?YTQ2UWFBR2hQUkdxT3J0MExuaTBlcUFIeDE0QzIyWnp3djVPdXR6RW9INTd3?=
 =?utf-8?B?ZXhnUmE3eGhodDk0YW01NGtTSG90dkVIS0hNQmQwL2ZlSGJvbllBc1Jyc0hq?=
 =?utf-8?B?VEliSmJ1V0FqVzk5VDk5RkpWWTZWR2JiZjhPRjBIeGsrZ3AzWGM1dkVuaUMz?=
 =?utf-8?B?MWdzUmZZbUVBVEQ5L1NjekMzcGRycVhCNStuOERnOEptbVpnMFVqN2NBdkx5?=
 =?utf-8?B?Tk0vLzFwaWZVRFpzM01DdHBxS25WYkRBTlBKQ3hJalREN0VJMnhyYmdyakpo?=
 =?utf-8?B?YW5KcW9XZmVFZEozRVZkS1l2ZEExenVkcWtpZ2FIYzVVTUdFZlQxZEl1bjlW?=
 =?utf-8?B?SkJSQjhJaURoMWYxNWVGK3ZsdEMydE4yd05Lb2NPazB6VlQvOEloenA4eWt3?=
 =?utf-8?B?MHhZaXJmZ1lkNTNiNkM2VlpYQlBhWG1hckNRYmx5aGhESnFETzlRbXJ0bjhU?=
 =?utf-8?B?MnNsb0I5VnhTd2QwczJoWnFIT1J5Zkp6OHF2VHovc2E1VXExVGh4eTJENGtD?=
 =?utf-8?Q?j9XIMhFiPvaD+mVJizPK18yuW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3994f5fa-3be5-4555-d01b-08dca0c058dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2024 09:11:56.4544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MBPgXp7FRJwpyddbP7zidnvaFFrFzWwnlfRM7gslbA+rq3qzKnYu3LZWjMBSP0uf2E5vPDVGtEih8GXgla0R9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6473
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgSnVseSA1LCAyMDI0IDg6MjMgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMTkvMjBdIGRybS9pOTE1L2ZiZGV2OiBBZGp1
c3QgZmJkZXYgc3RvbGVuIG1lbSB1c2FnZSBoZXVyaXN0aWMNCj4gDQo+IEZyb206IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBSZXBsYWNlIHRo
ZSAiMS8yIG9mIHN0b2xlbiBzaXplIiBmYmRldiBmYiBzaXplIGhldXJpc3RpYyB3aXRoIHNvbWV0
aGluZyBhIGJpdCBtb3JlDQo+IGNsZXZlciwgdGhhdCBpcyBhc2sgdGhlIEZCQyBjb2RlIGhvdyBt
dWNoIHN0b2xlbiBtZW0gaXQgd291bGQgbGlrZSB0byBoYXZlDQo+IGF2YWlhbGFibGUgZm9yIGl0
cyBDRkIgdXNlLg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2Fy
IDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4gVE9ETzoNCj4gLSBUaGlzIGRvZXNuJ3QgYWNj
b3VudCBmb3IgdGhlIGZhY3QgdGhhdCBGQkMncyBpZGVhDQo+ICAgdXNhYmxlIHN0b2xlbiBzaXpl
IG1pZ2h0IGRpZmZlciBmcm9tIG90aGVyIHVzZXJzIG9mIHN0b2xlbg0KPiAtIFdvdWxkIGJlIG5p
Y2UgdG8gc2hhcmUgdGhlIGNvZGUgd2l0aCB4ZSwgYnV0IG5lZWQgdG8NCj4gICBmaWd1cmUgb3V0
IGhvdyB0byBhYnN0cmFjdCB0aGUgc3RvbGVuIHNpemUgYW5kDQo+ICAgZGdwdS9sbWVtIHN0dWZm
DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJkZXZfZmIuYyB8IDExICsrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNl
cnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXZfZmIuYw0KPiBpbmRleCAwYTY0NDVhY2IxMDAuLjI5ZjMy
NDFjOTI3MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmRldl9mYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJkZXZfZmIuYw0KPiBAQCAtMTYsMTIgKzE2LDExIEBAIGJvb2wgaW50ZWxfZmJkZXZfZmJfcHJl
ZmVyX3N0b2xlbihzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgIHsNCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlzcGxheS0+ZHJtKTsNCj4gDQo+
IC0JLyoNCj4gLQkgKiBJZiB0aGUgRkIgaXMgdG9vIGJpZywganVzdCBkb24ndCB1c2UgaXQgc2lu
Y2UgZmJkZXYgaXMgbm90IHZlcnkNCj4gLQkgKiBpbXBvcnRhbnQgYW5kIHdlIHNob3VsZCBwcm9i
YWJseSB1c2UgdGhhdCBzcGFjZSB3aXRoIEZCQyBvciBvdGhlcg0KPiAtCSAqIGZlYXR1cmVzLg0K
PiAtCSAqLw0KPiAtCXJldHVybiBpOTE1LT5kc20udXNhYmxlX3NpemUgPj0gc2l6ZSAqIDI7DQo+
ICsJaWYgKHNpemUgPiBpOTE1LT5kc20udXNhYmxlX3NpemUpDQo+ICsJCXJldHVybiBmYWxzZTsN
Cj4gKw0KPiArCS8qIHRyeSB0byBlbnN1cmUgRkJDIGhhcyBlbm91Z2ggc3RvbGVuIHRvIGRvIGl0
cyBqb2Igd2VsbCAqLw0KPiArCXJldHVybiBpOTE1LT5kc20udXNhYmxlX3NpemUgLSBzaXplID49
DQo+ICtpbnRlbF9mYmNfcHJlZmVycmVkX2NmYl9zaXplKCZpOTE1LT5kaXNwbGF5KTsNCj4gIH0N
Cj4gDQo+ICBzdHJ1Y3QgaW50ZWxfZnJhbWVidWZmZXIgKmludGVsX2ZiZGV2X2ZiX2FsbG9jKHN0
cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsDQo+IC0tDQo+IDIuNDQuMg0KDQo=
