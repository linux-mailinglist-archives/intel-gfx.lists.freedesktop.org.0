Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA9D78C1252
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2024 17:54:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE0110E3D5;
	Thu,  9 May 2024 15:54:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ciicPMwa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6AE010E3D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2024 15:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715270079; x=1746806079;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=67WS2qQJbky4v67PQ9qutITsfraIIBLHdl0o32jDEC0=;
 b=ciicPMwahErT13PmNunm+WTIZlgVGUe0PNXKd1kIAPb5N5QtNy2HqiWu
 +3knpEipVQvV1ZpDSga/f24uRDeN1/BaQdU/wltpeHDs956VeikLjSki3
 81gS1F9CZv14U5BDhhNe9lvnDBxcKaTIfhZyiTqiXHlIx7oJZZcpt71ZP
 aSMDhTO1T8yuL8zEapsusUBmlc7jtaxIaoJukgORQnc+9SpnqlAa21wjO
 Vld6V6vqbhTXglipzROltZOK7MbWrz1vnqQkX1B9ekeTj95XuLbSw8RQx
 R8ASqZLSOYVVbGPPbB5ohMZDm2uQcrUmlyccDkpwQUapZAsZ/K8sYmqf9 g==;
X-CSE-ConnectionGUID: RGtHN+FJT/asK9ReCp2/hw==
X-CSE-MsgGUID: KxEahzgnQBawH+QZp0oQVA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="22597211"
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="22597211"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 08:54:38 -0700
X-CSE-ConnectionGUID: wKVB2WoSRDOFWa41EvxayQ==
X-CSE-MsgGUID: 0knfxd+ORyGurXiw3+fCtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,148,1712646000"; d="scan'208";a="66726671"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 08:54:36 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 08:54:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 08:54:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 08:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAghIS1UMk3iJdM7k4gBD01rUut9V1O9N3lEeQOViGBSWIXcWQnaK3LZgjxLurv8dvO+oKa9rt3DpU3hVadZcyOB/JhfoCG/ljsCKNUL6xyMB5C59l5AJlXXCQpm00VmzuCKuuXAnorBOFoIhbcZ74ABmWU7crrk9h3o3Mk+7I/0M2e8y7gVrBlEZChznUgtfYTCx1sv1o8uH6qC2FqDCx1Blf2P5GD1HYrFE/5seyfqYV6retDaLc6/Dj0qC7JzCpW++keszNjRuTXK+lWBJwE8NPm9W9KgDHxQi4QMb0xz1QKs6TZ/Dz6fwib5pmLDgrbRI5J0TSoUMSqZ70BUDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=67WS2qQJbky4v67PQ9qutITsfraIIBLHdl0o32jDEC0=;
 b=dNF5kug/y2SDPaxf0h3Bacm+f1S3nTc7iG0NNk6nSsgYjQeZC3AQfbZoDCbwuTIpe0WcKgXA7NN+bfaiGURPlDqVrI3MeZpaXT9obwFzLrCTAiKtCk58j80TQLfB0wUXROQLQqdPoMcT4yYjEGzMDvk2usiEecsWNGwkQ60J1DFBCCP76z1P6ov7ulAt3i0Ee6OsPM9yyM2whygUe9SOyIMzsgdt7h+LmtJznWUr+qhMYNUqQij0OqjK2L7kUtlu6fiMh+HuJijYNT+r8bwUP7Mag0qVDvH5vitVQJTfhRrv/X/WnJW2N/xyC1CgM9PaVLVhIqfOMwi/8rkh7PXBlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by IA0PR11MB8302.namprd11.prod.outlook.com (2603:10b6:208:482::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.45; Thu, 9 May
 2024 15:54:33 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%6]) with mapi id 15.20.7544.047; Thu, 9 May 2024
 15:54:33 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Joshi, Kunal1" <kunal1.joshi@intel.com>
Subject: RE: [PATCH v9 12/12] drm/i915/psr: Add panel replay sel update
 support to debugfs interface
Thread-Topic: [PATCH v9 12/12] drm/i915/psr: Add panel replay sel update
 support to debugfs interface
Thread-Index: AQHanSQAdLcL+biR3USbuM1DaAp5TrGPF8UA
Date: Thu, 9 May 2024 15:54:32 +0000
Message-ID: <BL1PR11MB59798D456E8E99637B0D71BEF9E62@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20240503063413.1008135-1-jouni.hogander@intel.com>
 <20240503063413.1008135-13-jouni.hogander@intel.com>
In-Reply-To: <20240503063413.1008135-13-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|IA0PR11MB8302:EE_
x-ms-office365-filtering-correlation-id: d35e5b50-b2e1-4f0c-9f8d-08dc704051a6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?LzJ3dEFVdE1sdmxYT2c4ZzUweGoyRzEzQ0dkSkRFcXg2eHpUT1ZtS2JIeE1m?=
 =?utf-8?B?dE0yQkk2UFdjY2RYd25uWkRFSE9HSW10enV0a0IzZU15VHRuclRiVWxid2hE?=
 =?utf-8?B?VWdoT2U1Z09qdDhsRG1NQWhDWTladVYwWjRHczZlR1BOazRUWlZHaFcvVHBC?=
 =?utf-8?B?N2JyVFlxeS83UnIxeGUyRDZIb0dxMDhRRTd6akVJbGJYN0pQWEVtaHljeE5S?=
 =?utf-8?B?ai9nTXJ0UDN1VlQ4VkxsWUNjZ3BtZ1AvSnhUZVEyUFNIRUR4dkZXcXlMRWRI?=
 =?utf-8?B?bDAvc3Y0dDF3Mm01ZlZYWVdDOGkyRlB3TnA2RC9zVUZyMlRKQVRxWkpLckk4?=
 =?utf-8?B?dG1NZUF2WGV3dG03bTZxR29YcWNhSlFlMDBmQXBLTklZd2F3Ylk1bU42bkVY?=
 =?utf-8?B?VEt6YWU4SHhrT2hIbUVSZGlRVys2NTBIcExwYnVQM29oQVBLajNGNWpwelpq?=
 =?utf-8?B?aG1kNktsdnZ5VXd0Zk9mQ0ZIMTdTWkZtY1p3VHJDM2t0UHJFaURRWXVkYksy?=
 =?utf-8?B?Unp0bHpsWW1HK21jNDRmMXVqUm0wOHR3T0lsSkxvZUlhcDJTZlo0M1dIVUFF?=
 =?utf-8?B?cW0zdGMzaXpSSFNMSExOemdHcFBMVEN1NnJhZSt0YVN1bkJhN2xnc2k2SmlF?=
 =?utf-8?B?REJwZFZ4dTRHVFhNczNqcWw2L0JYV2ZFcWFHWnA1ZXdlR3A0Y2JXZzhUMjEz?=
 =?utf-8?B?cVlVb21MMWY5dmxNb01ER1BUWmdRdHVhZjNnRG9sQnVaZnhyZFlYc0loWVhu?=
 =?utf-8?B?Ty9lNUFzbVc1ekxlNlJPQjR4eERjY21LTU1hdEF1a2ViUW5CL0JDWWd0Tlpv?=
 =?utf-8?B?UFlWam8rL1VNOGZxZ1d0Q2lvVysxcW05cTFBOC9KamRCeXZhZXUyL3UxcXBs?=
 =?utf-8?B?bERyRW5odHVMdHJ3aXd6d3BBZDM0cjdKOXhLRVM3SnFaVFlZUE5wN2pXY0tU?=
 =?utf-8?B?YkQ4QmJsSitBU0VnRlhpbUplM3ZtWVNDTWMwYW5nV09VWkR6TTJUMmRJZWF4?=
 =?utf-8?B?N0lFUTRWeGM3UkwxcUlMKzNod1RkSGVUWnlGVU5RWlVKb1FoQVpDYVByandL?=
 =?utf-8?B?K2ZhODZybjBoSEdqcXhOOHVMNjBuSUZTNlY0Q2JDSjRGOFY2VjJoa2k5UklR?=
 =?utf-8?B?OStNdXNQeFJTNWIrcEFUREVLa2JlWlFrQnRwcTdmRWFLQUtjcm5nQmFxSXc5?=
 =?utf-8?B?TnZFMWRreUNiaXZOTU5tRkdobENpcG9HRzR6eEU1dWNmZS93TUVsdnFjemx3?=
 =?utf-8?B?QmVrTUt6WklLOW1KaU1lRExxMzNWWU0xS2NLYVNQYlVkTFp0Ni8xQ001TjVa?=
 =?utf-8?B?WWV3NnZQUmIrMFAwS0N1UmdidlFjQXNiTE9qTDRJVFNQVWpYOHZsUmZ2TElO?=
 =?utf-8?B?cHVvZEV2WU1BekJPZHAzUmE2L2pkb21rQWFUY2FOQ05hM21pd1pzeHI3ODBJ?=
 =?utf-8?B?Q0YxWHBadjdvUXlQakdGRFFVNklRVm8vQzlyYjdmYU9QUk5jLysxZ1dWTHhh?=
 =?utf-8?B?UkZUUXlZdmpkTGFOVXdsbUJuUmVsOHFiQ1BUK3Z1WDI3YVRKTHcwRy9WWXFm?=
 =?utf-8?B?NXpFaWxnbkhuR1IvUGk3QlNXTzdsSzlHTVA4dWg2NXFOa3lHWkRZOEJjbEFN?=
 =?utf-8?B?SlpnK2hTdzZEQ1hWNXNDTEl2allORHNkbHhzUzNlK1pOZ0RmRWsxV0VaRlow?=
 =?utf-8?B?VmlsQytweDJ4NnRUZ2xuRUg3ek1oWGdUTTBSWUcxem9RN2laakt2WlhyYlJ2?=
 =?utf-8?B?czA0VkZTZXRUNHpramlqeVNjbHoyc2xCUDNUVndWUlB0ZXlhSjNnamxHZ3k1?=
 =?utf-8?B?d2pXTkJDeGdzVHhlZ0p0Zz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RHR5ZHNBd3FCaHZQamVBM1d3VEs0bDFGQjlIQ0VEbmlHa2REZGVTWXNnY2hh?=
 =?utf-8?B?dzBKc0EveWZtejJqamwxUTZOcHU0RW1JbEVpZUZkTVpIa1VnODBuNDU3ajU2?=
 =?utf-8?B?blpRV2tEWW1XbmtNemE2VkVMMUNoSTlCWUhtalB6TE9aVjRjaERWOXIzQ1Mx?=
 =?utf-8?B?bXZQVHR0dzNYbDlWcUI2YmdrMjladk5VejJFZTBMUFk3bURPNWxBK2VwYmd2?=
 =?utf-8?B?bUxzZEt5c1dLYVVmdktnQmp5WFp6OG5BZ3Z4QWhxRHppR1ZWVmphTEtWOTh0?=
 =?utf-8?B?Wm90Smd4ZEhJTFAzS3VLelp4QVVCV3kvcWc2ZC8rRm5yd2FraHBjanpnVFN3?=
 =?utf-8?B?SzRKZFo0N0pKZXY4K25FeGE4S1FWUDJLRlNGaG11amwwaU1VK0ZRLzIzaEF2?=
 =?utf-8?B?NVljT25ueWJ6NHBDV0FRMTlnV3JHMGlvbDdvRWdtRFkwOU01anFhd3VOdXpO?=
 =?utf-8?B?MzR1eVZHUGlyV1laZXZkU2xsWXhLbDNnbEtJZ2ppM2FQZEQ0dmtPR1d6WFM5?=
 =?utf-8?B?QktRb2o4ZzAxTU96elhUcTVMYUY1UlJJeVNtTGJGUFpoYzFxcFFIR3NDc0Vn?=
 =?utf-8?B?S1BpM2tFcXNMV0lYc2s4N1VJMFBwMGtoNjkzZVpKQjhJdGp0eXIxU25qNVkv?=
 =?utf-8?B?a20weXVPUnp5V2NhY3NPb0F3WHI1ZDN6RDE5Wno5ODhPNWk5YlVoNFdvSXl0?=
 =?utf-8?B?WkxDZUJnWlJlZktxRndFTGdKanZLMzhBUVJBdlllZTZxMGI4dldvTFpqZ3Er?=
 =?utf-8?B?aFpwcVpLekNqdDBFR0dBemowYkZySUJQdkhKcnQ5YmZkTUpFTzQ5SXhwbVZq?=
 =?utf-8?B?OXlJbFlON2VvTXAzY0JTVC9MeWE5ZEhac1FrSjR5RUFWVEROaC9UTURLNVpq?=
 =?utf-8?B?KzdVMzlVLzhIK2dWSURka1JDd3FtOHErY1loNmErTjRCMUc0VFBxREtscXhn?=
 =?utf-8?B?MzZHKzRZcWQyNU9EY2dJd1FzVHE2VmppaWZKVHJFMVM1MjRIVi85TnllTFZ6?=
 =?utf-8?B?djYzMzM3TU5jd1h3ODJ0ZnJkUC9QS1JqZUFGb01DVzFodzJkSDNiNzdMWVBx?=
 =?utf-8?B?V0ZUODVSNkFWVElqQStOeWtTYzB2WExWVjhqV0hpVG5kRWhtVzNQSEJYL1RR?=
 =?utf-8?B?YlFXWUJBTWJWZWdlYTJXYzg4aTd5U3BwcUF1QVBhQ3hzMjF1TXlYODdWbmlE?=
 =?utf-8?B?REJJOFh5ZVpES0N4d1loUkZCUkthMXIyRzN6NTh0TjREa1FUQUU0elQ3Zlhr?=
 =?utf-8?B?L2U0WDQxZDl1a0FzRi92TGN0NnMzN01aRGZRY3RmVWFnNVdCc2RHYUpUcXB5?=
 =?utf-8?B?SnprYzU2Y2pMemhRZDlDTjZya1lHa0NNUm5hS3JKakEwRHFzalljMWpnQ1lZ?=
 =?utf-8?B?NjB2QndGLy9zTVBXR01VOUZYKzhVYVYrUVhHT2c4cE0xSmpHM1E3TmV5MnBi?=
 =?utf-8?B?b0JrTG1ia2JqSkg4ZXc0ZC9LT2wxMm5pREtNRisxRWorZ284YnNUZW5qNzJ0?=
 =?utf-8?B?eHlCVzRiTkJxazllSmhZS2l5TUJrR3B4RFFZQkdxMXk1OWd1OXZtT3hiOHdC?=
 =?utf-8?B?MlErNUppdTN6K2NRRzZBQ2dRZXUzOUxSOUFDV241SFUrMC9PdjdZMzFjZ0Q0?=
 =?utf-8?B?QTA0SGx1bWs1YS9iQzNDMGs1dzFpMFUvWG9WTkVESU5aaGcyOVIyckJYQ25S?=
 =?utf-8?B?akgzekR4V2V3dG83M3V4QkRWRUV4OTlNd2w0cmhwNzB4dDRvTTlDeXdqTkpG?=
 =?utf-8?B?V0NBMVdQZFRncG1QZDlpUWEwbG56Q3ZhNkl3elo4dlAwSHJ4VEFzUzJtRUYx?=
 =?utf-8?B?SjJ4RGVNSUdsayt5UmZ3ZFhoZTBTd3V0YUJLN2xkOU1abXVEekgzbUN6aWVs?=
 =?utf-8?B?N0tiUmVHcllUVUdsSjZRSTlLc0VSWWdQRUJ5dDRaUnFPVXFESHpNWkt0cGFx?=
 =?utf-8?B?b2JIQjFqZGNaVFBkWmJnbll0bGVvWit3czErRmtwZ080Z2t0bm5MWGVxK0pW?=
 =?utf-8?B?czZQMjRiTnJiWFVhbmN0OGpJUkxXSjFEbmJJQmRnQzZHcXJXSHFFRnVocGlm?=
 =?utf-8?B?MFN1aWdqcUxTaUxXcGlMWmduZTFuUXJYT0tTYXdzczhBYm9aa0k0YmI1REUz?=
 =?utf-8?Q?XlgHQ4jegDfYjnCZBwl+9nZMw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d35e5b50-b2e1-4f0c-9f8d-08dc704051a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2024 15:54:32.9301 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dWHrgwmS8WwgiRWUoaoitt8Nzk2Rpsxs/YjKd7sSuNdjrfLPS3zDs4YmZ5PqAlKqmJ1AtHbbP0r0g1grifkG5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8302
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMsIDIwMjQg
MTI6MDQgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaQ0K
PiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsgSm9zaGksIEt1bmFsMSA8a3VuYWwxLmpvc2hp
QGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY5IDEyLzEyXSBkcm0vaTkxNS9wc3I6IEFk
ZCBwYW5lbCByZXBsYXkgc2VsIHVwZGF0ZQ0KPiBzdXBwb3J0IHRvIGRlYnVnZnMgaW50ZXJmYWNl
DQo+IA0KPiBBZGQgcGFuZWwgcmVwbGF5IHNlbGVjdGl2ZSB1cGRhdGUgc3VwcG9ydCB0byBkZWJ1
Z2ZzIHN0YXR1cyBpbnRlcmZhY2UuIEluDQo+IGNhc2Ugb2Ygc2luayBzdXBwb3J0aW5nIHBhbmVs
IHJlcGxheSB3ZSB3aWxsIHByaW50IG91dDoNCj4gDQo+IFNpbmsgc3VwcG9ydDogUFNSID0gbm8s
IFBhbmVsIFJlcGxheSA9IHllcywgUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUgPQ0KPiB5
ZXMNCj4gDQo+IGFuZCBQU1IgbW9kZSB3aWxsIGxvb2sgbGlrZSB0aGlzIGlmIHByaW50aW5nIG91
dCBlbmFibGVkIHBhbmVsIHJlcGxheSBzZWxlY3RpdmUNCj4gdXBkYXRlOg0KPiANCj4gUFNSIG1v
ZGU6IFBhbmVsIFJlcGxheSBTZWxlY3RpdmUgVXBkYXRlIEVuYWJsZWQNCj4gDQo+IEN1cnJlbnQg
UFNSIGFuZCBwYW5lbCByZXBsYXkgcHJpbnRvdXRzIHJlbWFpbiBzYW1lLg0KPiANCj4gQ2M6IEt1
bmFsIEpvc2hpIDxrdW5hbDEuam9zaGlAaW50ZWwuY29tPg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA5ICsrKysrKy0tLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAyMTk4NDQ4
ZmRiMjcuLjJhZDc5NjQ5OThlMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+IEBAIC0zNTc1LDcgKzM1NzUsOSBAQCBzdGF0aWMgaW50IGludGVsX3Bz
cl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2Rw
KQ0KPiANCj4gIAlpZiAocHNyLT5zaW5rX3N1cHBvcnQpDQo+ICAJCXNlcV9wcmludGYobSwgIiBb
MHglMDJ4XSIsIGludGVsX2RwLT5wc3JfZHBjZFswXSk7DQo+IC0Jc2VxX3ByaW50ZihtLCAiLCBQ
YW5lbCBSZXBsYXkgPSAlc1xuIiwgc3RyX3llc19ubyhwc3ItDQo+ID5zaW5rX3BhbmVsX3JlcGxh
eV9zdXBwb3J0KSk7DQo+ICsJc2VxX3ByaW50ZihtLCAiLCBQYW5lbCBSZXBsYXkgPSAlcyIsIHN0
cl95ZXNfbm8ocHNyLQ0KPiA+c2lua19wYW5lbF9yZXBsYXlfc3VwcG9ydCkpOw0KPiArCXNlcV9w
cmludGYobSwgIiwgUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUgPSAlc1xuIiwNCj4gKwkJ
ICAgc3RyX3llc19ubyhwc3ItPnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpKTsNCj4gDQo+
ICAJaWYgKCEocHNyLT5zaW5rX3N1cHBvcnQgfHwgcHNyLT5zaW5rX3BhbmVsX3JlcGxheV9zdXBw
b3J0KSkNCj4gIAkJcmV0dXJuIDA7DQo+IEBAIC0zNTg0LDkgKzM1ODYsMTAgQEAgc3RhdGljIGlu
dCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwNCj4gc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gIAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiANCj4gIAlpZiAocHNy
LT5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gLQkJc3RhdHVzID0gIlBhbmVsIFJlcGxheSBFbmFi
bGVkIjsNCj4gKwkJc3RhdHVzID0gcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiUGFuZWwgUmVw
bGF5IFNlbGVjdGl2ZQ0KPiBVcGRhdGUgRW5hYmxlZCIgOg0KPiArCQkJIlBhbmVsIFJlcGxheSBF
bmFibGVkIjsNCj4gIAllbHNlIGlmIChwc3ItPmVuYWJsZWQpDQo+IC0JCXN0YXR1cyA9IHBzci0+
c2VsX3VwZGF0ZV9lbmFibGVkID8gIlBTUjIgZW5hYmxlZCIgOiAiUFNSMQ0KPiBlbmFibGVkIjsN
Cj4gKwkJc3RhdHVzID0gcHNyLT5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiUFNSMiIgOiAiUFNSMSI7
DQo+ICAJZWxzZQ0KPiAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOw0KPiAgCXNlcV9wcmludGYobSwg
IlBTUiBtb2RlOiAlc1xuIiwgc3RhdHVzKTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
