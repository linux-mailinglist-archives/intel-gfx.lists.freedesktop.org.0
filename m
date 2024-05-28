Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834F8D1497
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 08:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7925B10E607;
	Tue, 28 May 2024 06:40:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aoEUJUP9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DBF510F2E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 06:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716878440; x=1748414440;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LDgyWqy5EF+yaAbmM2h6N3C2HjzrPJEeuSSPLLo/o2U=;
 b=aoEUJUP9KtUreL+AJIMpEn8AtiUwgb8lBc8pEPZID8d1wWs4EfJZorT4
 T+9Qa5hlTZ1VrOCBKAmMfo407etpmGvH5zP3c+9nTeZrMmj2FQgcZ3z3V
 weArSZZ4XscFz2q0wNOE9DUiYLxWmMIMVaELWbOqTv9RnbxswZBkNmqgb
 vTyIMfmOv1SqIHPE8Bd3UpP3elYL6LAaH5U042zMpY73waEptkw8RhOBG
 odECIaX7BbcSmlHpuN2cf32h66GlRmy91tOj5tsL11JZdSeWCU4WcRncw
 rN7WENiRJ9niIwLeLsgUr4X98Yuic+faFyfNGAhhx35+adTiDMkswW9uS w==;
X-CSE-ConnectionGUID: XL5OL70USNuz9gocp0e6nA==
X-CSE-MsgGUID: kPy1EwxTSvWzYnnaL6ZsMQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13325590"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13325590"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:40:39 -0700
X-CSE-ConnectionGUID: h1vpSYK7RB23S1L62TmmBw==
X-CSE-MsgGUID: 1eRZ/+/CQ/CELiHRl7qZXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34884612"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:40:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:40:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:40:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YWJ2yBmdV2D3dIb7Y021W7Vu7uvrxXEppg6iWMbtMN/nYEHwUsfIFe5fsJIbRMsGnt1lmDek49qJd0VXcWTdbMIcoSl9jG0S9pt7P+ORhipNacZ8f3nmssC9GQ9/U2A1+gOAXidNslcc3aRpQkSBy73gOL/Kw7YILpeepXIQPdzwh8uCpUJhd+vUOlNU0OwDuVefCr7+VubRAvpxzFe0q9ctfuFHOa+5ITpgezkW4CoezOc6qNnwH0SYLgXMUyLiTFdI++l5+qyu7VC+sW/amr2SggkXrWZCJcaLF9taGnr+iyUZBxP8b6pxGrXiUtcHsVqZJOTtcUrXuO1yHcPzAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDgyWqy5EF+yaAbmM2h6N3C2HjzrPJEeuSSPLLo/o2U=;
 b=DLo/J/fRVVqXBjBBeunLOiIB8fpVOE5AQjcOodtpqT2CGtg2VtsSlXgKv0GOSv+z8tljfdtGdBlvGY2QnWj9PwDLDAdA28VKRYMZpiAbpWogbVuFOGrSVPTldpBl1b3BbwV+WrtEIil/+3LspCsW4WsD2Imlamo8VyNX3EKmovJv70elaIwhyXD0OOBtY64+0pPngTTo8HMQGzwTFGfXM3jDp08nyQT102oTWwQWnIyRsnFZmhhk8DjUZh+jV/LmhSm84bpmyjCCwYiTUDwESj5YfpZIvNZagolrS/d9UCLNx+iBBVooCfmqvUHwMpk2vflL/mHGQ3iTu+az0kCeaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB8761.namprd11.prod.outlook.com (2603:10b6:8:1a1::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 06:40:36 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:40:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 05/20] drm/i915/psr: modify psr status debugfs to
 support eDP Panel Replay
Thread-Topic: [PATCH v3 05/20] drm/i915/psr: modify psr status debugfs to
 support eDP Panel Replay
Thread-Index: AQHasAay5Dpd7D3pF0uuBcmZAA7uaLGsMXKQ
Date: Tue, 28 May 2024 06:40:35 +0000
Message-ID: <PH7PR11MB5981CD7684486A59BA84D872F9F12@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-6-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB8761:EE_
x-ms-office365-filtering-correlation-id: 964ab3e2-6cf3-4f3a-454b-08dc7ee114a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?TUltSDFkQ2ZUSk5DQUIyVjVueEdRWHBpLy9nR2lVZGU3bjFUTEtKem5WMWxU?=
 =?utf-8?B?ZHNSeG1McVkwZmJxb1BBenVnc2J4d2IvelVhUkJJN1RBZXM0V1ZiU3RpclAr?=
 =?utf-8?B?b2lLMkNFZ2hhaGtyc3JvZEUzbzlXZUZSM0lxdzUwSzZtZ2JWK3ZxTTVjL0NB?=
 =?utf-8?B?K2FzcHUzcjNDWjZrOTU3ZytjNnZ6M3VrQWpNMG9qei9jN0hJVThYVlNPTzVq?=
 =?utf-8?B?a2g0QStQeTNWZlQzdVhka1pzbDJiS213NUg4WU5JZHJwL210WGdPN0xzakxX?=
 =?utf-8?B?ZzRzbkZIMWo4Z3NYdml1dUlEMTQ5TTN0TDFmSTAxbUR3VHl3RS96blBiNFJS?=
 =?utf-8?B?UzhoNEhUbDBNb2owb0x2dnlKQ0dlMmFVMm91UjU1Y3d0Rm1jbHdOK3dEa2Np?=
 =?utf-8?B?NFJ0NXlKYlppeDV0NmpWcktFcFRCellVdFNsWXcxanIzZWFiM2ZiNGpXbC9l?=
 =?utf-8?B?cmxuUnRDalgwSXdOdEM2RmpIUXEvamtMWEJSZXRUWVVvRlBDaE5LRkdTK0xm?=
 =?utf-8?B?ZWhpRDVIWURMNmhYQVFSTnFmeEpoYVhwYUNOKzFmTFpySGJLTzc2aHoyalZN?=
 =?utf-8?B?ZkhaN1hzVXhpQXVhc0ZsM1lOK2dVVlM3amJCUGZnSkx4a2lId0ZkSWIzZ1d5?=
 =?utf-8?B?bWt5UmNmc0hEQXNtRnNWWGtuckczanowTmhqUnFudVVnekcvenYwRGdKRzAr?=
 =?utf-8?B?L2dZY3VNRTNVQXppSnppTlFMV1FWb2FGcWd5dSsyanpkN0lvSkNxdmxnRUNP?=
 =?utf-8?B?UU5MWXc5SC85WksrSC8yaXh4VDA3V2llQlhpeThPNkxPR1o3SCtJYWV3Qllm?=
 =?utf-8?B?eEp1U3ViL1dIandpMWFmc1ZpY1RmMHA3K09BdUZ5NkpocXhmbUlKcEVSUUI2?=
 =?utf-8?B?ZEI4ZE5Ua3JZcU1UbkpneE84bVZZTlROZ3JrTEJQNzh5QUJLT2tueHY2TU4y?=
 =?utf-8?B?M3daTzBRTWtDcnc4VmY2K2lva05wbHBNczdGMjB2TVlmWWEyYy9jTmZBeTJ6?=
 =?utf-8?B?VVBtd2xzdGkraFQ4ZE5INUJMclh6SW8rYlRPczFDL3lFaEpqRnZkK0grMngr?=
 =?utf-8?B?NTNSV1FlQWk0bFp5dE03dUpaR2dZU1U3RVkxMWNUWU9tNzNTUUNIVjlaMGNy?=
 =?utf-8?B?SG1sMTZyQ2tvOTVoM2c1YU5wREUyekVqVmV1WmJveFFvb1RFWHZRMG9abkps?=
 =?utf-8?B?RFovcFBBY1dHTWlDeStpZHJ2K2tCcDkwaE0xRURwamdxeVE4TVgyRENxdWd0?=
 =?utf-8?B?OWlwYjhIS3JiN29PSXZHZmljYUkyRFZIVjdPclFpUDB6cnZzSVY3NGdWT1li?=
 =?utf-8?B?WktFTXFkeWY3QVhybFJNejBGSUdVczFuNFZHODFOQjR0WUV4TkNjZVcrUzBX?=
 =?utf-8?B?WnpobDgreHcvTERSeTNqajFKS2JQeklLZjUzTXlUSHN5dUJnM1lqWDZSNjlC?=
 =?utf-8?B?M21LaTZ1T1FTeGlIN1ZMWkZNZTdUdkcwbXVJWkNqTkN6bCtYNXZFSE9sWDZx?=
 =?utf-8?B?SmkycXNjakZUSFRtLzU4dkV0MEx3R2loTzg2MkdxcHFNVVZxSjIyRFRDYml4?=
 =?utf-8?B?VnlwdC91Yk1qYndLMjNlOGFGcG5WTS9NRjJjQlp0YWtGSmE2Z0l5U3VhWUZ2?=
 =?utf-8?B?cWFXUlN5RnVib3paUk95NWFxcEJJL1ZVeTdVVC9SdFMzdEs2RzlJYjBRMDBR?=
 =?utf-8?B?OEN6dFRSSlBxRFNqWnVvaWJNWS84ekdsZVlkVWNNc2xLbGs2K0ViSXJISTZ6?=
 =?utf-8?B?eVhVYm9YaGV1cDVkblZ1N1F6S280QzRNT2ZuQ1E4U0RHRTNLTGFUS3hPTjhP?=
 =?utf-8?B?aWlaZ1Y2RS9kbG1Hakl2dz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vm5MQllOazdQd1haTXdvcUZpaXJGYWVyODN6MmhRZ2RhalF0Rzh6YlFEb2gw?=
 =?utf-8?B?WlIvdGhUQlcyN0N2THpsK3dwcVZaaDBsY0wwakJxcndSSXZkYXhwV1g1MlJm?=
 =?utf-8?B?cHJCdEJxSkxrZCtGbUJiaDArSXliMVZ6djJJbkxzSktNUTlLT2ovZGkxMkRm?=
 =?utf-8?B?a2c5dElHeHhZT3laQW5uY21EYlNHaGUwcU9tVlRET2t4WkM1bklGSHRvYTlh?=
 =?utf-8?B?cU9UbHpzeGJoclF2K2s0bzVEMmZ0WEZSbUw0TjNaMHJhbmFnMWtLdCsyZEY2?=
 =?utf-8?B?YXRzblNOY2lEbk1FcWVHOGtKTzlUODFvanBWSm1PeVBtN3d1U3pZZmhHNkdI?=
 =?utf-8?B?cVl0SFZhZzZmK0FmNnlqUkhQQVZaZmZ2UXJGMnU1cVJTbTgyTzV3VDFNMzJj?=
 =?utf-8?B?QzBHYW5ZNTMwSlkrRUkxaTVEb0FGbm1ESHJoNTNwOERPVWdJK05XbTFaaHZE?=
 =?utf-8?B?cmJ0UktGWXltZ2k3VG9Yb2tlUDlGeG9PQ2gxRzYyU2hsNjU4RHgzNUdlRGI3?=
 =?utf-8?B?dmFYdWFLd0tBYncrWkE1Q3Z1Wm5kdG9Ec1U0eDNwVFBwdFhuejBOWlFWSDFs?=
 =?utf-8?B?dytrRUVsQTdaNlBHcUVkbk0wd2xKdnhHV2dNWFpudEVmZm5lVXVUNXpzQks2?=
 =?utf-8?B?U21QUnBGUzdnbEtmUGdpdmgyVU9NektlNXMvNnZUNFV2UVBqbEloaFJzOWhD?=
 =?utf-8?B?VVBVZmVRTStYakpVV2VlOVVHbSs1Q1pDS1JiK3ZtMHRld3FzVDFXTTY2bkM5?=
 =?utf-8?B?RDNuZ1dySnZNR0YybnVvekdCY2JQL3FYWmZ0cUpYSlRmM2dPdGd4dGxWL1Fx?=
 =?utf-8?B?WUcyRCtXVm1RWVBnRGp3dzR4WW96ZXlzU2ZiNHdVQUhoNU0xUW5ZZDJBZ0lD?=
 =?utf-8?B?TnF4eUxIcGpkNXY4ZnVyY3JwZnFaNzJwZW1DWmpsYUpONVNsdTl2dFYzeEU3?=
 =?utf-8?B?WmlCaHE5Sk9Ib1EyM3BjUDBuaFdFZ3Y5WHpDTUVNVmI5cUgrY0pXK1h2c1F0?=
 =?utf-8?B?dWI5VVJXa3BFekJBNmRlU3ZjWjBrUnlzUW1QUlNRU0FZeVJzcnR4WWw3THpP?=
 =?utf-8?B?ZUgwNDNqUGZsZHFja1dXRk1DalBvQ3UyZnY3YWRLMkljSENtekp4ZTkvS2V6?=
 =?utf-8?B?RDlac3pvZGREU0xFbDhSaDNHaFV0NHorODF4dVVvT2RkVFBYRStab0xEV2dD?=
 =?utf-8?B?bmpHdUovOUJzLzFIOG52YzBqSWNzK1BZWExTSjU2c2p2UkFkNFZteUFvMUt0?=
 =?utf-8?B?ZDJUZFlPQ3ZkaW1mcWgxb0hRdVhPTGorMllyMVhSZ2VOaGkxSGF5V0RYdDI1?=
 =?utf-8?B?RklRMHRUdStFak1uYUoxWW45Z0pweWhHc0NMaHJsNGZ0K05icHpvcTRadDRP?=
 =?utf-8?B?SUdrOTYrTXB3S291cUJKeC9LdzQzVitvZGJtb1Vxa0VZL3Y5SGRHNkJDb3hn?=
 =?utf-8?B?Y3dGYkhzOS92RXRTNXpwaTBGaEJSK3dxemRzUjNiTDBOUG1scFp2cTVkMWp5?=
 =?utf-8?B?ZHZQa21oMm0xc3dKd1pPQWVRdjBTb1kvWUN0ekJZVk94cDRFQVBqUlVWYk1z?=
 =?utf-8?B?QzFWUmQ4MjlZVWRqbGNKQlJTU0QwUlpXYUZ3NGZXRDdLek9pUkpVQWl6Ylk0?=
 =?utf-8?B?Vi90OHNGc1BDRHRaOG9TZ1AwVDI1SFpuUE9LcDRmR0xVczFYWEVWQUlGQU45?=
 =?utf-8?B?ZDlUc1BNVkxYNG0zSGRCRWtVc09zYW02N1F4T3Q2c2VxTHVhWkdFZmpldVRz?=
 =?utf-8?B?dmFKTlNKYXg2N2tkV1ZoQ3BBcTBMb3ltVjA4Yzl1NFBiRFk5RXRtNmF0SVNE?=
 =?utf-8?B?SW8vaEdvUnVmT1hSZmVYYkYyd1Z6YWJmaVQ3NVFBTkVhRXAvQmtFRWRTSzN4?=
 =?utf-8?B?WjVvTnpxMjR0Y2ZKRTBFbFRWVGJYZlFQSHJnN1pFeDBSa1llWThGM2UvS25h?=
 =?utf-8?B?NUJrQnRxZUU1WHhRK0dXK3psUVhkQ1VhVlYwaG9KMTRvZ2o1MGdvR2c0aDJr?=
 =?utf-8?B?WVhzSHRITXFnOGpXRkZPNGM0Unc0bk1FcU1OVjBPWVVVYlBrdytMWXc4QzRN?=
 =?utf-8?B?MzB2ZHpVcmdPT3BtSUZCbkRSUXNwOUpORXlhN015cjI3bmp2aFU4Vm81bHZQ?=
 =?utf-8?Q?6d0UEBEW+1YSEJI9DuHKLiSqh?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 964ab3e2-6cf3-4f3a-454b-08dc7ee114a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:40:35.8367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /YCww5C/o24yIsYbaHZ/GbHlax1RSZBl6KefWJDSPgShTZKAoLq+wkOc0m7aAMJVIpTmJZ7ZMpygvBLVFFeYfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8761
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWF5IDI3LCAyMDI0
IDEyOjUyIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
YW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBLYWhvbGEsIE1pa2ENCj4g
PG1pa2Eua2Fob2xhQGludGVsLmNvbT47IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDUvMjBdIGRybS9pOTE1L3BzcjogbW9k
aWZ5IHBzciBzdGF0dXMgZGVidWdmcyB0bw0KPiBzdXBwb3J0IGVEUCBQYW5lbCBSZXBsYXkNCj4g
DQo+IFNvbWUgUFNSMl9DVEwgYml0cyBhcmUgYXBwbGljYWJsZSBmb3IgZURQIHBhbmVsIHJlcGxh
eSBhcyB3ZWxsLg0KPiBEdW1wIHRoaXMgcmVnaXN0ZXIgZm9yIGVEUCBQYW5lbCBSZXBsYXkgYXMg
d2VsbC4NCj4gDQo+IEJzcGVjOiA2ODkyMA0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKysrKysrKystDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGRmZDQ1ZjZkN2VkZC4u
MTlmOGFjMTJmOTk1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTM2MjgsNyArMzYyOCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1
cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJ
c3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVsX2RwLT5wc3I7DQo+ICAJaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7DQo+ICAJYm9vbCBlbmFibGVkOw0KPiAtCXUzMiB2YWw7DQo+ICsJdTMyIHZh
bCwgcHNyMl9jdGw7DQo+IA0KPiAgCWludGVsX3Bzcl9zaW5rX2NhcGFiaWxpdHkoaW50ZWxfZHAs
IG0pOw0KPiANCj4gQEAgLTM2NDksNiArMzY0OSwxMiBAQCBzdGF0aWMgaW50IGludGVsX3Bzcl9z
dGF0dXMoc3RydWN0IHNlcV9maWxlICptLA0KPiBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiANCj4gIAlpZiAocHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCkgew0KPiAgCQl2YWwgPSBpbnRl
bF9kZV9yZWFkKGRldl9wcml2LA0KPiBUUkFOU19EUDJfQ1RMKGNwdV90cmFuc2NvZGVyKSk7DQo+
ICsNCj4gKwkJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ICsJCQlwc3IyX2N0bCA9
IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsDQo+ICsJCQkJCQkgRURQX1BTUjJfQ1RMKGRldl9wcml2
LA0KPiArCQkJCQkJCSAgICAgIGNwdV90cmFuc2NvZGVyKSk7DQo+ICsNCj4gIAkJZW5hYmxlZCA9
IHZhbCAmIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxFOw0KPiAgCX0gZWxzZSBpZiAocHNy
LT5zZWxfdXBkYXRlX2VuYWJsZWQpIHsNCj4gIAkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJp
diwNCj4gQEAgLTM2NjAsNiArMzY2Niw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0YXR1cyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJfQ0K
PiAgCXNlcV9wcmludGYobSwgIlNvdXJjZSBQU1IvUGFuZWxSZXBsYXkgY3RsOiAlcyBbMHglMDh4
XVxuIiwNCj4gIAkJICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQoZW5hYmxlZCksIHZhbCk7DQo+ICsJ
aWYgKHBzci0+cGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYgaW50ZWxfZHBfaXNfZWRwKGludGVsX2Rw
KSkNCj4gKwkJc2VxX3ByaW50ZihtLCAiUFNSMl9DVEw6IDB4JTA4eFxuIiwNCj4gKwkJCSAgIHBz
cjJfY3RsKTsNCg0KSnVzdCBhIG5pdHBpY2s6IEEgY29kZSBjb21tZW50IGRlc2NyaWJpbmcgdGhl
IGJpdGZpZWxkIG9mIFBTUjJfQ1RMIHJlZ2lzdGVyIHVzZWQgZm9yIHZhbGlkYXRpb24gd2lsbCBi
ZSBoZWxwZnVsIGZyb20gY29kZSByZWFkYWJpbGl0eSBwb3YuIFRoZSBzYW1lIG1heWJlIGFwcGxp
Y2FibGUgZm9yIHBzci1jdGwgYXMgd2VsbC4NCldpdGggb3Igd2l0aG91dCBhYm92ZSBmaXguDQpS
ZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNClJl
Z2FyZHMsDQpBbmltZXNoDQoNCj4gIAlwc3Jfc291cmNlX3N0YXR1cyhpbnRlbF9kcCwgbSk7DQo+
ICAJc2VxX3ByaW50ZihtLCAiQnVzeSBmcm9udGJ1ZmZlciBiaXRzOiAweCUwOHhcbiIsDQo+ICAJ
CSAgIHBzci0+YnVzeV9mcm9udGJ1ZmZlcl9iaXRzKTsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
