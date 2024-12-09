Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B576C9E927C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 12:34:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3C210E13C;
	Mon,  9 Dec 2024 11:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aS4Kmo/5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B58810E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 11:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733744046; x=1765280046;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qrn1BSUAEUY2M1UMaUwmSi1whsoMtpJRxPQGxA9zBk4=;
 b=aS4Kmo/5max9ImOb/s+pbRpoxn77pAjefcm4BmUCF6kKHA6KlmmeBEoi
 42I4Uek6FLvB5El4HcQfovsffl4yYnRWZzQZ4IKsRzYgk9lHo/Dgr7B8+
 en2TiTeUrvTn+bG1BpO7zUf8Q68AJoLR/Pvhxb3LDopyomBhnszRGGcQ2
 /w2XY/nVpj2K3hyPg3VhnXwg2bGBVq159Rn+7kWUr1DVHQ6ia4dgwrNzY
 hfQ0+9xR/XX0X7eldO0U5M8Jyse8xHdg2uF50NL19xwTab3VjItWgcc6t
 eHsLovSwoEUK0obEI4lK4oPJbvbN4pjSEWZV4wKjNuXqNRGMtRh/9QNjp w==;
X-CSE-ConnectionGUID: grw21ZmaSRKeN5aGM6DlZw==
X-CSE-MsgGUID: VKwz1n4XTNavvDf+BJnhAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="34092978"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34092978"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 03:34:06 -0800
X-CSE-ConnectionGUID: d/+cbcfJRFKKC93uTT0H3Q==
X-CSE-MsgGUID: mcHhyPPVS6248HZSj6pn+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="95122313"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 03:34:06 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 03:34:05 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 03:34:05 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 03:34:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EfPrG0KoiB4Yemp/yHpjsHA+8g1hIDIBArd7BqYMphCjIy6SmMqUbmPIbQs0nyCoVtfa6DQv8BaGdV/FWecxNypo7OM0l05/VuMlcVttXRqwlZj1oQ+iT+TEILtDIS0xB2k9HkwB4G96AYFEmHbSRB2JM8twXIff06GWXs1RN7EgDqeFDv1rzj8m22yJzPbn5t/XgLOpgc5d+IzZVKqKGXJb5ZzSTASQXFNRxfggTRrxyvIAd0fMOx9H47/GAdUb7iQKky3l4XdGWv6WCmztkakphJyYnZsozR6CVrRXv8oQJu190kg77qfb1V4ow7qXY36DBRClPJtSDdPW3o1VSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qrn1BSUAEUY2M1UMaUwmSi1whsoMtpJRxPQGxA9zBk4=;
 b=KHOKzcdt1o2TdDj8hFzft0uyrfXbU8OqRxL6znDRwrb8lUz+DFkKCJMokk3zwz+81TH0FHmJLqDQb0ZwhgsQtQ84iqzdR6HBBYv9QyqpuTm0XSy/IwbFR6Tiu5ddxcyPkCHkf9q3cRtz5G9SNbOLf5EDuacjmXAmdhtl9DM0o/QwxQfR1Ct3DdMbCumnnxDMi2nEKJkx0d8Motv70MyMytxUAOQYscOs+eQZXqJHs2xi2V6dNuYCyoHsv7UJjrHa31z99hM1iNOcj/2vkaNXSeiEGO/5/efBY9mhy2dPhQVQBoZ33arf9GGivwQZAmWZVeZzebxwV8ZQFe8vRKwwjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB8784.namprd11.prod.outlook.com (2603:10b6:8:257::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8230.18; Mon, 9 Dec 2024 11:34:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8207.024; Mon, 9 Dec 2024
 11:34:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRKSlunFADfEeolfd13XUnBLLdnj0AgAAt2ICAAAP7AA==
Date: Mon, 9 Dec 2024 11:34:03 +0000
Message-ID: <891038f168e400cf6fdedea89be4264959242281.camel@intel.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
 <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
 <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB8784:EE_
x-ms-office365-filtering-correlation-id: 7673aa77-43de-43db-4882-08dd18456206
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?eE1GeWZ4OUNjM3dhTU9YdlpxcGN0UUVMOWppWVE4aThhSVFvdEtxRTN6Unpz?=
 =?utf-8?B?OUw4YXBSVGdJbmlUdTBId0xuTEhHbjZYS1RnSWhDMzcvK3pEWVRpMDVoQWZC?=
 =?utf-8?B?Q2FSU2VvUW54UktGZmdYdXJNWmJvdzUvQ3VkZmpnVHBHY29IMWtQdU40Y1JQ?=
 =?utf-8?B?WWxsYU1rWmI4QjJVN1dPaGFLekNrYmFwc0VTK244L09PR3pmUkVhSFF3WjZJ?=
 =?utf-8?B?TDZObWJxZGoveFdCUTIzZHNYdGVrRDFsYllOTlR6TXpGb1NkVnRxS3NVQmx4?=
 =?utf-8?B?RE02Q2cyTnpvdW5pQThkU21VQ0RLb1QwWDBIcHFFVy9yazlJdkcrRjVDVjEx?=
 =?utf-8?B?VW5XeXQ1MHdRWGZrUG56OFM0SzUwcHIwWVRMc0V2bzcrbmNmSm10Rk1kVGM1?=
 =?utf-8?B?UXB6MS9aL2tkUXZ1RnBCdWZWeXg3R0xERnZ1eHFSTkIzZGNHTmxSK0lYZlFv?=
 =?utf-8?B?RDc5VDltemcwbUxMOW1USmNpazFYcjdJZnpFdUpwREMyYU5URlFhcFBDb0da?=
 =?utf-8?B?UDhRU05iSHd5T2QxcEhmNENvRm4xZ0c5dCtCZkpaWWVDbEtwYlIweGlHTkJI?=
 =?utf-8?B?UGU5UHpqSWtMWkh3Z0VFREQrYzlicks2NndlaVYzeTBaOWJhN0FBVFRnWWdV?=
 =?utf-8?B?WmplNmJ6Rm9FQlFUM0xJM2h2TktOV2pibysrSitHR01zeGI2RXg5c1BwNHJC?=
 =?utf-8?B?WFJFNFBaN1hidUxBSm1iU0dLdi8wWVFaK1BPMXgzYWVhV1ZyeG5uT2xqZHA1?=
 =?utf-8?B?UU5zQkVoekU0Ri9BbVhsb0VjRXZRaFp6R0h1WXdvL3N3TXFmZStKN2dTNWdl?=
 =?utf-8?B?YWlML3dVQ05rK1BONTFMT1N6V0E1YlZvcjFLUzZ2Q1drZTZ5eEhobERHMXlR?=
 =?utf-8?B?dFpsamdSdW5uditpaUdkRGVCMmh2NTFHOE1iRzE2dDY3UmNhQzhKNDU3eUU2?=
 =?utf-8?B?N2pDWlVQTEFLaThNK0Vna3hkOHM4NGpDWDJocEdQUnRaS3RuNVc1d2UrUEVh?=
 =?utf-8?B?eHY1Q04yREhiSUN3cEdVbytibk56UVozdVJYVlFQMVRUZWtwU0p0bkJ3eFRp?=
 =?utf-8?B?ZDJOVi9YRG9uV0JKQk5QelhpbncxVWVJVDZrYW9iQ2VXdk94bVNIcGRWMUcv?=
 =?utf-8?B?bXU0SmtMeFk2SXNObjdWZGlpK1ZqampaaDdvNGhtcXRvNW4vR1l3bjNONndt?=
 =?utf-8?B?NlppdlVUZ0VCZHphTlh3SG1OdmNHTnFnVkRtb3Rid2w0QkZxNy9OalFHdUVC?=
 =?utf-8?B?S2dLUm5wMFBmdFZLek1sZTdwV1BweW9QdVIrVXdybjY0aXgvSWdpNzFiY3FJ?=
 =?utf-8?B?WDRoemhWaXdTS2hBVHZIZjhqN0RienoxMFVyYStwSkJIc1I2TkNsOFlqVzlL?=
 =?utf-8?B?MWhRMEJyYThWNGpSdWVFaTZ2UVdIYUpLbHVyUzB6cnl2My93bHpiRXRNYUtP?=
 =?utf-8?B?SzFEc0N0MjJkYzQzMEVLdkVkSjFvbFpjaWFiS1NwUE1LekRFOXNZWEZQd3JZ?=
 =?utf-8?B?WjkxYUtpZjFBOHVPc3ppaEd5bzJMd0VnaW1YSVdQRWNVUGNOLzlwaTVYOGJP?=
 =?utf-8?B?aWpsRGUrSzBkVmZ1TFJ6S21qSGhTU1RTMys3Und1SGhyT0gwRFFZMmhtU2xD?=
 =?utf-8?B?QkJ0bVhiYVFhV0hJVEdJUFcrRXliekZNQlRubWpsTlhqRTExbml4U1ZVUHdz?=
 =?utf-8?B?S3pOWS9laUVNWHlONjd1bHh6QWEvWjc5QThPazlHQWkvQ3ZsUkphbHlrUExL?=
 =?utf-8?B?YTFaWDJHZkJqRzJUTFAyWm9VQnB2Z1c3MHZEU0gzbm1ZWjE0RUxGcGVzdU5v?=
 =?utf-8?B?SUJQTWVhWmRkekNndzYxb0M3VjQ3eXpsU0Vnd0VDcWxxOW9MbW43a0Z4U1Fn?=
 =?utf-8?B?TUdGNHZyOEVxWE5mQjZDa1g2UzlSTmEyV1p5MWRsRUo0a1E9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MG5haHZlNkdRcnRDV3I2TG82cWdjck16cHQwazRkcjQyWWQyTGh1UEN1Uy83?=
 =?utf-8?B?UzFZQWM2enRhbVpNVUc2cnN6YjA3Y25PYWczdjBSMlVMQVlkdW9ya0ZvR1Bl?=
 =?utf-8?B?b2o4WWpCUnhjY1BvNFRRMVpsSE9VTlFacW4xYTNsc0pTcndPZ3RtTVg3M015?=
 =?utf-8?B?anQvMEIyeENlU0dyMnlQNmZMeDhPeFJKcjZDdE15bkU2YW95ZWFlR2ZTRWp2?=
 =?utf-8?B?TUNYNWErOVJpM1pNZjcvblQvWnZXcFdjR3dHY0YxZWdqM3pLUUxsMWlxbjJ5?=
 =?utf-8?B?VW03bVNEZ0k3ejlGZ0s5cW5kL1F2TU5sWC85ZVNMRnNGc2ZzS0QyRHdyRzV3?=
 =?utf-8?B?aHFLOVpGa0J1Z0dnK29BRElVS3JDNUhOZG9hTVRTYlFObzBWeXJjSndSYS83?=
 =?utf-8?B?KzJ5Sk5odU9SOHRoZ1k5L3BUdEZiWTlYcG5TRWxNMDdKOVlXbUhHTnhNV2k0?=
 =?utf-8?B?SGlLZ0ZiYUpNQmZscHRnMS9CWEw2OWhKdTBkb1VRZkh4azQ5bXN6Y014eHkz?=
 =?utf-8?B?eGkzckVjVmFQYXpJL0Y5SW4wRlcxdCtjK1Mrb2N0Zlo1dE4xVGNHSVluZzJo?=
 =?utf-8?B?QTRtQ1FyMzQ1MGVkcnBOMVNrSTBoZVZNVlU4aHp1eGNIWi9oZm54a1FnNEJG?=
 =?utf-8?B?Z2tUWjFKZnk3NDdMTnJvWEYvUG93aXVTdUdQWUpISWFROWUzVjBQaGU1eEJv?=
 =?utf-8?B?aGRsZVlTSG82aUFjZVluTUJ1aXVSWmxmWERHaGZRb2kyNmh2MTVOTFFYeVMx?=
 =?utf-8?B?Z2k3eGtyWGNIUzJ3SUFqQ2xyS0R2TTJOM2NZT3pBdElnQy9BdVZaOHYwUFhr?=
 =?utf-8?B?SENQeWVHbXdiTWZkTlVFcmt5cHFXbEFtYnlwdlNjenBvdUcrWkZUTGNYeU1u?=
 =?utf-8?B?TDJLaTBLNjk0M3l6NnA1QjlYOTB4cHhZeDFPa1AxMFBMaU9XRGdpR2pURFFL?=
 =?utf-8?B?U2pRMlhOTEVuRUVMejQ3VUQyZDFhTEduSkJIblhMZi94NkpMeHdEeWFiZDJv?=
 =?utf-8?B?T045ZEtndnNMaS9ab09rV0s1YkdSaDB4QXZtUWhBK0xQNnl2S2gzYmZkRzdl?=
 =?utf-8?B?L0UvODJpMm15ZEVCaUlyeUcyNWUyWldCYk5NM0Q0STNEdlNFK01ubUpkOVdT?=
 =?utf-8?B?U3RPQjRySEdtYjhBTzZNU3R1U1RPQlcvbEVuQm1WRklqZTZLWUhtb1BVUm5u?=
 =?utf-8?B?Zm1NVjFnVUZCWkRpdUVZeFRzbFlQcUM4RmZXU1BrZjU2L2FrNWdTTFRjZGVh?=
 =?utf-8?B?NmtMeHhLbUswVm42bDVSY0NTN1BXM0tkREVEMnhPVEtQTHhoblVtNVpVNnM5?=
 =?utf-8?B?alBxcGsxc3kzVXZhbEpURFlSa1BuZ2JMNUJ6d3dzNnNUQnM5d2JPQjU4V2Q5?=
 =?utf-8?B?SDFKK0dBY01yZ01rTzZPRHpFbW1DeVpyQzRVOWc3ZWZHRWphRFh4LzlpcWs2?=
 =?utf-8?B?UEx4MnphQUFLRU5pbnhMdXdCc2NiVVFCTEtUNXpqYmZOUVhYb3V4USszdGhk?=
 =?utf-8?B?Uk1nNWRWUitXZTNnWTBaZEhmTVV3MFhSZFk2NlR0ZVYwcGh0ckJPa0YxZVAw?=
 =?utf-8?B?SkxhZE94bEdXQlVpRFdqY2ZDZ0pnMkpBZHdReFEwN21zQ2NoUENnM2hRRzBv?=
 =?utf-8?B?MjFqTDVzU1plcTBlcWVuT0hac2dKWnVBU0M3YzAwOW90bWNGRldTbEpJYUN2?=
 =?utf-8?B?L013VjE4NHRRREs4RUcrRHJsYjFwbW9CRjU4dU1aOGVhYXNGT3Y5MWJadnRD?=
 =?utf-8?B?SzFoa25YSGxjaWxDNlp3L28wRmcwbFloN1o5cnZFa2xBbzRVM3JvZllBS0V0?=
 =?utf-8?B?cnB1T0R5UmxNalhxSU1zVFdwNTBOYSsyRTFIN0V2VkJDdEhOWUgyb1NYOXZX?=
 =?utf-8?B?eGFPOUl3TE9KZ3FOaEJ1ajBuQTd2NnRybWJUNU1YN2xhVkpacTB2SDRTdkdV?=
 =?utf-8?B?K0JKaWpGcU9xWm4zWlZmdlZzbnIwR0t0djkxMmhybVQzeFFzTEdFd1J3VExr?=
 =?utf-8?B?M2FJUmVFYjhCamw3eTMxZWY0MkFheUh4MXQ1SDlmajA3RGFZS3ZtT0JaRUdK?=
 =?utf-8?B?UW5YUG42YjFCWisrQ3NiMGJrcWZvb29kY0dJQmYvZHFSNUhCbXFMYUptMUVC?=
 =?utf-8?B?YUs2MTdES0RTN3J0eU5MbmRLRlpSa1B3dWUxTE1EYlRmTC91Sk5lMWR6Qm1Y?=
 =?utf-8?B?M3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3FD9ABB21FB8484186159FAD0DE3E1B8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7673aa77-43de-43db-4882-08dd18456206
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 11:34:03.2385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qlBl6d24XTO6yR+2L+JjbTJFQ6ceBcDI5ZKVVF0pXi1rjWcsdjah9NTdL4uVeCvSDDrDd4+WW5uDZdkqvTUOSIu92MfmnZcPlOo+1YBNOqU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8784
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

T24gTW9uLCAyMDI0LTEyLTA5IGF0IDExOjE5ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBE
ZWNlbWJlciA5LCAyMDI0IDI6MDYgUE0NCj4gPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEIsIEplZXZhbg0K
PiA+IDxqZWV2YW4uYkBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzJd
IGRybS9pOTE1L2xvYmY6IEFkZCBsb2JmIGVuYWJsZW1lbnQgaW4NCj4gPiBwb3N0DQo+ID4gcGxh
bmUgdXBkYXRlDQo+ID4gDQo+ID4gT24gV2VkLCAyMDI0LTEyLTA0IGF0IDE1OjMzICswNTMwLCBB
bmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+ID4gRW5hYmxlbWVudCBvZiBMT0JGIGlzIGFkZGVkIGlu
IHBvc3QgcGxhbmUgdXBkYXRlIHdoZW5ldmVyDQo+ID4gPiBoYXNfbG9iZg0KPiA+ID4gZmxhZyBp
cyBzZXQuIEFzIExPQkYgY2FuIGJlIGVuYWJsZWQgaW4gbm9uLXBzciBjYXNlIGFzIHdlbGwgc28N
Cj4gPiA+IGFkZGluZw0KPiA+ID4gaW4gcG9zdCBwbGFuZSB1cGRhdGUuIFRoZXJlIGlzIG5vIGNo
YW5nZSBvZiBjb25maWd1cmluZyBhbHBtIHdpdGgNCj4gPiA+IHBzcg0KPiA+ID4gcGF0aC4NCj4g
PiA+IA0KPiA+ID4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gPiA+IHYyOiBVc2UgZW5jb2Rlci1t
YXNrIHRvIGZpbmQgdGhlIGFzc29jaWF0ZWQgZW5jb2RlciBmcm9tIGNydGMtDQo+ID4gPiBzdGF0
ZS4NCj4gPiA+IFtKYW5pXQ0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uY8KgwqDCoCB8IDI1DQo+ID4gPiArKysr
KysrKysrKysrKysrKysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uaMKgwqDCoCB8wqAgNCArKysrDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHzCoCAzICsrKw0KPiA+ID4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDMyIGluc2VydGlvbnMoKykNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiBpbmRleCA1NWYzYWUxZTY4YzkuLjc1
MDYzMzQyYTEwMCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYWxwbS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2FscG0uYw0KPiA+ID4gQEAgLTM2Nyw2ICszNjcsMzEgQEAgdm9pZCBpbnRlbF9hbHBt
X2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCwNCj4gPiA+IMKgwqDC
oMKgwqDCoMKgwqBsbmxfYWxwbV9jb25maWd1cmUoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiA+
ID4gwqB9DQo+ID4gPiANCj4gPiA+ICt2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gKnN0YXRlLA0KPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IGludGVsX2NydGMgKmNydGMpIHsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+ID4gPiAr
wqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9
DQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiA+ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlm
ICghY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZm9yX2VhY2hfaW50
ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjcnRjX3N0YXRlLQ0KPiA+ID4gPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsNCj4gPiA+
ICsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWludGVsX2VuY29k
ZXJfaXNfZHAoZW5jb2RlcikpDQo+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNvbnRpbnVlOw0KPiA+ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOw0KPiA+
ID4gKw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcF9p
c19lZHAoaW50ZWxfZHApKQ0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnRlbF9hbHBtX2NvbmZpZ3VyZShpbnRlbF9kcCwNCj4gPiA+IGNydGNf
c3RhdGUpOw0KPiA+IA0KPiA+IFRoaXMgaXMgcmVjb25maWd1cmluZyBsb2JmIGV2ZW4gaWYgaXQn
cyBhbHJlYWR5IGNvbmZpZ3VyZWQ/IElzIHRoYXQNCj4gPiB3YW50ZWQ/DQo+IA0KPiBoYXNfcHNy
IGFuZCBoYXNfbG9iZiBhcmUgbXV0dWFsbHkgZXhjbHVzaXZlLCBzbyBhbHBtX2NvbmZpZ3VyZSgp
IHdpbGwNCj4gYmUgY2FsbGVkIG9uY2UuDQoNCmhhc19wc3IgaXMgdW5yZWxhdGVkLiBDb25zaWRl
ciBlLmcuIGNhc2Ugd2hlcmUgeGUuZW5hYmxlX3Bzcj0wIGlzIGluDQpib290Y21kLiBoYXNfcHNy
IGlzIGFsd2F5cyBmYWxzZS4gQUxQTV9DVEwgaXMgd3JpdHRlbiB3aXRoIGxvYmYgZW5hYmxlZA0K
b24gZXZlcnkgY29tbWl0IGlmIGhhc19sb2JmIGlzIHRydWUuDQoNCkFub3RoZXIgdGhpbmcgaGVy
ZSBpcyB0aGF0IGxvYmYgaXMgbmV2ZXIgZGlzYWJsZWQgYWZ0ZXIgaXQgZ2V0cw0KZW5hYmxlZD8N
Cg0KUGxlYXNlIGFsc28gcmV2aWV3IGNhc2VzIHdoZXJlIGxvYmYgbmVlZHMgdG8gYmUgZGlzYWJs
ZWQuIEUuZy4gcmVmcmVzaA0KcmF0ZSBjaGFuZ2UuIFNlZSBic3BlYyA3MTA0MS4NCg0KQlIsDQoN
CkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiDCoA0KPiA+IA0K
PiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdhbmRlcg0KPiA+ID4gK8KgwqDCoMKgwqDCoMKg
fQ0KPiA+ID4gK30NCj4gPiA+ICsNCj4gPiA+IMKgc3RhdGljIGludCBpOTE1X2VkcF9sb2JmX2lu
Zm9fc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQNCj4gPiA+ICpkYXRhKQ0KPiA+ID4gwqB7
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9y
ID0gbS0+cHJpdmF0ZTsgZGlmZiAtLQ0KPiA+ID4gZ2l0DQo+ID4gPiBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gPiBpbmRleCA4YzQwOWIxMGRjZTYuLjJmODYyYjA0
NzZhOCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYWxwbS5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uaA0KPiA+ID4gQEAgLTEyLDYgKzEyLDggQEAgc3RydWN0IGludGVsX2RwOw0KPiA+ID4g
wqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsNCj4gPiA+IMKgc3RydWN0IGRybV9jb25uZWN0b3Jf
c3RhdGU7DQo+ID4gPiDCoHN0cnVjdCBpbnRlbF9jb25uZWN0b3I7DQo+ID4gPiArc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZTsNCj4gPiA+ICtzdHJ1Y3QgaW50ZWxfY3J0YzsNCj4gPiA+IA0KPiA+
ID4gwqB2b2lkIGludGVsX2FscG1faW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
Ow0KPiA+ID4gwqBib29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwgQEAgLQ0KPiA+ID4gMjEsNg0KPiA+ID4gKzIzLDggQEAgdm9pZCBpbnRlbF9h
bHBtX2xvYmZfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ID4gPiAqaW50ZWxfZHAs
DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ID4gPiAq
Y29ubl9zdGF0ZSk7DQo+ID4gPiDCoHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiAq
Y3J0Y19zdGF0ZSk7DQo+ID4gPiArdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPiA+ICpzdGF0ZSwNCj4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiA+IMKgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVi
dWdmc19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ID4gKmNvbm5lY3Rvcik7DQo+ID4g
PiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCk7DQo+ID4gPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRl
ZChzdHJ1Y3QgaW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCk7DQo+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IGluZGV4IDQ4
MDViZjY4MmQ0My4uZmZkOTZiMTg3ZTVlIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBAQCAtNTUsNiArNTUsNyBA
QA0KPiA+ID4gwqAjaW5jbHVkZSAiaTl4eF9wbGFuZS5oIg0KPiA+ID4gwqAjaW5jbHVkZSAiaTl4
eF9wbGFuZV9yZWdzLmgiDQo+ID4gPiDCoCNpbmNsdWRlICJpOXh4X3dtLmgiDQo+ID4gPiArI2lu
Y2x1ZGUgImludGVsX2FscG0uaCINCj4gPiA+IMKgI2luY2x1ZGUgImludGVsX2F0b21pYy5oIg0K
PiA+ID4gwqAjaW5jbHVkZSAiaW50ZWxfYXRvbWljX3BsYW5lLmgiDQo+ID4gPiDCoCNpbmNsdWRl
ICJpbnRlbF9hdWRpby5oIg0KPiA+ID4gQEAgLTExOTAsNiArMTE5MSw4IEBAIHN0YXRpYyB2b2lk
IGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gPiA+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9wb3N0X3Bs
YW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiANCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGlu
dGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gKw0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoGludGVsX2Zyb250YnVmZmVyX2ZsaXAoZGV2X3ByaXYsIG5ld19jcnRj
X3N0YXRlLQ0KPiA+ID4gPmZiX2JpdHMpOw0KPiA+ID4gDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKg
aWYgKG5ld19jcnRjX3N0YXRlLT51cGRhdGVfd21fcG9zdCAmJiBuZXdfY3J0Y19zdGF0ZS0NCj4g
PiA+ID4gaHcuYWN0aXZlKQ0KPiANCg0K
