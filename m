Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE799C6CCA
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 11:24:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4E010E6C4;
	Wed, 13 Nov 2024 10:24:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cfXOfs+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2CD89361;
 Wed, 13 Nov 2024 10:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731493455; x=1763029455;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=a/ImkoUNuQrD8M1FalwNu8IRLtvi2fU0Vvb1JX3NOEg=;
 b=cfXOfs+ElPQGPbxGQVA/hjerWEkP//508YNdm4FqjWnqbcwH5+ic3dqc
 vWZS+kbbxs7X204UVXdyy9iZrM1iDvRqNQ1LuThKMr3s7vlT6dU15pLa2
 eLsY/rBJwY4mlrNHW26CTK0BjRCyXycfZtOlyKVacSuR/O+rzGQ997da5
 gMVqfWY9QO6NzxRJ3DvHfDoAizHTpqlYb8bO4nyyhwrwlmNiwmtziEuIO
 kjdTvc6cDVH9cW+swctQ/TUO0is1ju3aVq2wI1gjd94KcSMiYZg1CLRI1
 mjpIh6+7ymgY+5ca+/y+or75KdIy/M5qiciv6RX7sfL/4N0rsw9GVlp5T g==;
X-CSE-ConnectionGUID: auZzKLhKRL6ONmThdhqIGw==
X-CSE-MsgGUID: HChtfs/gTmigbxbO4apXyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="30777098"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="30777098"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 02:24:08 -0800
X-CSE-ConnectionGUID: yzXOxzmdQXWTaK/NapPbxg==
X-CSE-MsgGUID: GpD7zFqrTwiRo4eBPk0F2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="87819929"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 02:24:08 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 02:24:07 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 02:24:07 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 02:24:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y0M6bCufPatqZvmMO0Fjy9Gad6W26fj799Z4BpOo4Ei++bOKM444dL4GQLIlZ1s+NbA3XJV+n2Uzeq81lYa91x8Bj7ZGvd4/yFJLfNWolZr0WjMXlGzN4LMGkdeRSI2eXYQuzoR+NDtMRUWTjjp3Ed8UZWWsdN12FrsWzT90JvGJm9mXWHMyT92jumgCBMuCwY7AT+ujYkbrGzUYzxKFFrRfSjyGna6XQBCiZWI4Pr6MkPplI5L8peWD/Q2wZJ/P8QY7k1bgWEbsVWykn9mAWlNNOchSgvy0Y3K6AGSMy0HcLPEUo340G4HsruqQRNsiB5XLQ8TpahZCk88o3eLr3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a/ImkoUNuQrD8M1FalwNu8IRLtvi2fU0Vvb1JX3NOEg=;
 b=NSUSSbUUQJRKZvL6cBU14GZ0EjxmKdB/JtTNXGiNF6ZP/aBCenYVW3R+ZCVfXG/a4UuVDzU62Nj6ETqh0VbzaJ1hpqBxFO5WoGhXiTqPknDpwaZw4uApb48E9DJc1LpMIwSigIp0gzAqRwKCbw9tdQTx+wIN6OG+nWdrVgY81xUr7LzoBHVIIKlW9QZC5wfijJvezgN0Qctvhs0YGNATblLvV8aH2ofC1/zojUNYT7kLPkX7/vJKOfhR369fwh5T0qRJqjDyJZ6XOwC9JbWHAjyg5EU++bg/9us9NJeKxMK/uutcV6A7U/LlbG5Z66seNqL8SxmVNRX+cG11+kGWwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7798.namprd11.prod.outlook.com (2603:10b6:930:77::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.28; Wed, 13 Nov
 2024 10:24:00 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8158.013; Wed, 13 Nov 2024
 10:23:59 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH 6/6] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Topic: [PATCH 6/6] drm/i915/watermark: Modify latency programmed into
 PKG_C_LATENCY
Thread-Index: AQHbNN9UZZGqST8LHEm2uOyRZve2GbK1AXCAgAABBUA=
Date: Wed, 13 Nov 2024 10:23:59 +0000
Message-ID: <SN7PR11MB675012C608D3B6AA90FFA1B3E35A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241112084542.1337314-1-suraj.kandpal@intel.com>
 <20241112084542.1337314-6-suraj.kandpal@intel.com>
 <33818a260742e351dab2dbdb4499870eb17ce88b.camel@intel.com>
In-Reply-To: <33818a260742e351dab2dbdb4499870eb17ce88b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7798:EE_
x-ms-office365-filtering-correlation-id: 6f7d2749-9bbe-4196-630b-08dd03cd49b5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Q2cybG43Z2lyTHg5SFYzSXozQmtxd1BTQmwzN3k0MGN2WUlhUG13Vm9zdHZ5?=
 =?utf-8?B?eWtnbDVKdng3cm5GTmdtVHdMdG9ReEtnT0RWdi9kWndRZ2hoNWszY3FsY0Fj?=
 =?utf-8?B?ajIvYyt5VnptZGVJWlJFZC9lNkhJdjJSdmJOR1l2RVhzQzVTeWpMbXhWNWxP?=
 =?utf-8?B?Y0VGSVh3WGZWTmRYWmZGNERPb1JLSWxUTlBZREMzZ2ZFQTNGKzBOS1J2ckFz?=
 =?utf-8?B?a2RuTFdtcVhsa0N0QWlMTkNXVFA1NnVPU2NIRVgwSGZFYnV1ajdBckZFcGtx?=
 =?utf-8?B?MkxzeG1RYlJoSEdmc2dJNVNSbWZ0ZE9uMlYzKzQ1WEJxd2EvTzF6ZkNSMDFv?=
 =?utf-8?B?cTRNNHExZU45VFFNdXVsdHRoZ2l5WS9uVTFaRkdrSUh3aWdlSld4dFlCUzRz?=
 =?utf-8?B?M2FFQ3NMeDBOSW51SjNoVzN4WlBOR3FYRzFKOE9GdkJsOGdOUXZSYzl6WEtr?=
 =?utf-8?B?d2pVT21PeHNxeFNsWVg1OW5YZ2hWQzlyWmdmWTdPOTYzY3pxOUh6ZW04dHoz?=
 =?utf-8?B?QXAzcGhrdGx4WU1VeTRrUHBzQXM2bnZtMFZIZ25JSG8zZG5xQldYeDJrRjBP?=
 =?utf-8?B?cU1nbXBveUxXSkJ1UldvV1RySExPdTRlL1MxVlh2TUNxOTNuRVJQRTNhY0Uv?=
 =?utf-8?B?MkkxYUZkV3FFUGJxdDBkejBmdm8xeFUyRVhLNGFSMjNUSE00U3hNMnNyR1U2?=
 =?utf-8?B?Si90VkVoSzBIVG5iYU9zQ2NsS2JiKzFMYmZEN3AybHhiOGFUcUxjeEJSeGFC?=
 =?utf-8?B?UWxFWVhGTnhLZFE5eTk5QnV5L2pVbTlQbGx2RWp4NEpvcTgvUFU3eDdnQXRz?=
 =?utf-8?B?SFVIbTViekJVK1c5NUk5d3h2Mkl6M0d6a2tIeWxLTU54M2ZtNUtYY1RnOTNk?=
 =?utf-8?B?SUVIbWVnT3hrcUtseXpFMmxJakVoVm8vdGVzcUN0enRoc244ZU9mUkN2Qkpn?=
 =?utf-8?B?VVc4VTFZR2tLRnBOSGRMai9IbEtXQzgxMXpma0syai93NFI0RlRUK3NZckw1?=
 =?utf-8?B?MDVhY2hHVFJGTUFlSHB6aHBiMGZhZHhPVjF4cUl6NnBBNXMrZWlrREU5VStC?=
 =?utf-8?B?WWp5b0xsYnBDRnlqWDdhSG9iejJKOFFQcERUUmZnUCtVYzFRdy8rVUswTDNo?=
 =?utf-8?B?U0xEVHdOVmE5bHJ1WmU3bjByeHFzcUc4YTBpaWNleWJSdTFPMjM3M1J6TUpG?=
 =?utf-8?B?QmpmbmdtNzhXTXExK1RiOUw5OGk0Unp6Q3N6ZDhadkhCQy83OFhKYWZnbEIr?=
 =?utf-8?B?NjJjekRPelRaN0hDLzZsTThJSkN6R1BOT0hyV0w5aFZqQ2ZEaTN6UnZ2YlN1?=
 =?utf-8?B?a3hiZmc1Tlo5cHo1MzRxdXdyQU01c2g3SWZIYkoxZzNJT01IU1Q2dm9OTWY4?=
 =?utf-8?B?OGdXT2hvV29DTnRvdG5GWjhQWlBleWUxVEFVV1NmNllSa3dNWlVrZVlTalN1?=
 =?utf-8?B?ZDN6cHh3MFBKS1dpdnRpU3BQamZOSzhuS2NocDdQS3JzVGwrd1NCT0J3d3Qx?=
 =?utf-8?B?dnBoZ2J4enpBdit4dVpMOTRsWTlrL0M0VCtSZnRHYUVZSTZieHgxclowWXN2?=
 =?utf-8?B?cmxnRE5qQ3JOR1hVWm5TWVZobVMvS3NIVTNxbDZzd0dPMklKQkVJOFozUFRQ?=
 =?utf-8?B?bzFGcHJ4ZDg5eFRrTG1tQ1NnVUFEa1BNV1oxdWhXNUM2cEoxak5nelRTeWJS?=
 =?utf-8?B?cVFCNURGU3kxc01xNTBHNGt6S3MyQnY0VGJ4WnF1WllwWFpPSzBaTC8yNGF1?=
 =?utf-8?B?OVhSWXNCa1ZVRWJ5dmpubFZIY2s4a2xETkxIWXg4TEQzNUppczZzMUlRZlRi?=
 =?utf-8?Q?rtML0cePizeA2VtTVihTTvuBOEQN7opz45MYU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZzRiYkJQeEFlTElybmRzQ0krZ3ltWjBvU0RnamYwQ3RUWjltYlZlNFlaSWpi?=
 =?utf-8?B?dzI0S2VtTm56NGlhUy8zcmJrR3l4WklpQjVYZzduVG1ZVE1uM29TQVgycmx0?=
 =?utf-8?B?akdKSmhuL1l4UXV3VURQWThzUEFQYU5KTEpmY0lVMFdXcEtXQVBJVEE2OGdZ?=
 =?utf-8?B?bGxLRlVpUFdSNU4wUlNEeW4xeGFHMGxuaHhVU0VlbzVkQnRHSnkwRHdTczNH?=
 =?utf-8?B?cm8wMDg0aVJQWHhvODhWbTdkUG1ENlczRjhJQzlMRE95N0xWWFF3ZXEweFdt?=
 =?utf-8?B?dTdXejhVQlI4VERnbVJFeUlVVm12Sm5BM0NZZmRrWVJQRUJ2cVRkRENjUGhJ?=
 =?utf-8?B?NUtBQTl5WHNIODV2MlFpdW8rb25MdjZWWjFMOC82UTBaNldQbjVkcU8xLzRU?=
 =?utf-8?B?M1Jlc1JzTjgrUDlFVnlCYjByUVhJeG9vU2szZC9yYzByYStPU2ZMTTRhMXBu?=
 =?utf-8?B?dnl5NzU5MVZGaGVVTTIvK0ZZM3JuLzlhNzRuVXl1MkhYUlRYSVRQZHp4YzNu?=
 =?utf-8?B?UndDRWlvMEVTR1EzbHhhK3ZVTXRqNHRrZEE4Z3ZxYXhiTGdIcEFBY000dmFa?=
 =?utf-8?B?RDl6dU1UdzdmOVF2ZHU2a3BSWDl3QThFSXgyQ3pSanZSNHgyNVREMTNJNm1k?=
 =?utf-8?B?MjFNNHpZelFuSVhzaE1FbkxHMXg2TS9Ob0huNnhnRUlLbGJ5L1NqejUzbGIz?=
 =?utf-8?B?Q3oySnVabHcxTFBmN2M0TW9DZGhIQ0t4dTBzZ3JzYXBKQkNCUVY5VVdIb2Vh?=
 =?utf-8?B?WStxY1NqejVtTi81ZDNGNmVvZnVKZ3dMZlAyU0h5d2MzWkJRQWIwNFJLQVV1?=
 =?utf-8?B?dFJkVzVrWERnQXNHazZ1cktMS0FuY0JJNlhRMlJkTDF3citmTkUreXpkejZ2?=
 =?utf-8?B?T0xEM1dmYkhCUk0zaE5SREZ2Si96L0ZhNnNnQXZOZmtnL2hGbHJlejFqd0dz?=
 =?utf-8?B?WkRnVXZQa0M3em5BckRIMlIxb1JFaFAyUHg3bDlsZ3Q0enl3cDh0dXJmeWRY?=
 =?utf-8?B?SWM4TVZlS1ZTMm5DYUNWRC9PNDBpbE5udTFJWDlpeUl4STNDUTVIeExqdnN2?=
 =?utf-8?B?TXZkTzJtTkJ0MkMrMUcwS0tIeVBBMkxKajMxa1dBWWxUK3BqanNrY3A0NWVG?=
 =?utf-8?B?RXJudTlhY2hWb1hGZEVkeVkzYnl0aGEwM0t4eDROOTVzQm9VTWF0TXQwS0FW?=
 =?utf-8?B?K1U0citXSTZ4YkVtNUlUSmprb0VlZzhRNXQ1UWVZRko3Um9hbTNGRWl2K1pM?=
 =?utf-8?B?UEpUcXFOYVBGRC9XeklXdmVFaHpSVjVaMEhDdm1SdDgraW8vTkNybGRwYWNn?=
 =?utf-8?B?YkV5YkIyZWJXR3A2cllRdjcwSEJOTzE5VWRJQ0pLcjRnNGRYbVV0Qis2b0lr?=
 =?utf-8?B?d1A4eGxJbWhBZU9PcEEwMWNOOHVITE5KSFZYV0lKSG93N250T2ZWM0gra3pu?=
 =?utf-8?B?UnlkUHVVZzFDN2NVNGh0VmRKL3h0WVYvMjd4QU00dWhZUHpSZnE3MDBiOGI0?=
 =?utf-8?B?ZFg2cjZjcXpLemIyVVAyY2Q3eGFaUWZyeFFBNkp0MXdtN2VSUmUzRHNtZjV2?=
 =?utf-8?B?NFNKM0tpdnJPR1gyVlBhMFM2djFkdmQ3Y1NTZlJQUHhtTFB0cGMzdmlUeDI4?=
 =?utf-8?B?dGFid0lHZEZ3Sll6TnRsU2lJbjc4MlV6T0FRdVduNWk3M29DTksrWXdmYVd6?=
 =?utf-8?B?RU5XRXppTzFXS0x6K1JzeGdETjk4dk1iMGZCbXppK2NSLzNlcStyWkZCajJM?=
 =?utf-8?B?VS94NjVvRnNLMEVOWjJOSnFSMDhSNFZ5VTVTMjMyZ1phMFJZc1dNYVduVGFH?=
 =?utf-8?B?UGlSZzRKbHhWQlFTWGNCV0lrR0F4RlQrM3NYNjJkb0p3RGUyUTJxQWRxaW5B?=
 =?utf-8?B?TjBFcVNUWWZNQWtSUnhoTXJIL2hBZndBeXpnU1Bmb01SV0E3Z2dnZExWSSt6?=
 =?utf-8?B?dEZCRXJrT3hWMW1sdFJCQmZhOGZFSk9LcXN2SUU0TjlXWS8wVGNRUWNtYklN?=
 =?utf-8?B?dUwweE5MT1FKMnhVenNLdzFqWWFlVnlLc0NvNWhRVlNvZW9PM0dockFBMDJX?=
 =?utf-8?B?RlZraUMzY3VkbzlIU3ZUK2doVzlJdW50TGhPNmR4NFYrcm5SSlNGRWVxNEFK?=
 =?utf-8?Q?GicffczGxk8iktbNjKDmziBXn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f7d2749-9bbe-4196-630b-08dd03cd49b5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2024 10:23:59.6009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VQbzUgx9dNkfmhRPCfAVuy6fKBqCV8wYJcVTbdpD3Gzx4AVmy1K2RlR5TnKPi+YWsjNPybEBqJ/84B5c3zLnYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7798
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogR292aW5kYXBpbGxhaSwg
Vmlub2QgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXks
IE5vdmVtYmVyIDEzLCAyMDI0IDM6NTAgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5r
YW5kcGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogU3lyamFsYSwgVmlsbGUgPHZpbGxl
LnN5cmphbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDYvNl0gZHJtL2k5MTUv
d2F0ZXJtYXJrOiBNb2RpZnkgbGF0ZW5jeSBwcm9ncmFtbWVkDQo+IGludG8gUEtHX0NfTEFURU5D
WQ0KPiANCj4gT24gVHVlLCAyMDI0LTExLTEyIGF0IDE0OjE1ICswNTMwLCBTdXJhaiBLYW5kcGFs
IHdyb3RlOg0KPiA+IEluY3JlYXNlIHRoZSBsYXRlbmN5IHByb2dyYW1tZWQgaW50byBQS0dfQ19M
QVRFTkNZIGxhdGVuY3kgdG8gYmUgYQ0KPiA+IG11bHRpcGxlIG9mIGxpbmUgdGltZSB3aGljaCBp
cyB3cml0dGVuIGludG8gV01fTElORVRJTUUuDQo+ID4NCj4gPiAtLXYyDQo+ID4gLUZpeCBjb21t
aXQgc3ViamVjdCBsaW5lIFtTYWkgVGVqYV0NCj4gPiAtVXNlIGluZGl2aWR1YWwgRElTUExBWV9W
RVIgY2hlY2tzIGluc3RlYWQgb2YgcmFuZ2UgW1NhaSBUZWphXQ0KPiA+IC1Jbml0aWFsaXplIG1h
eF9saW5ldGltZSBbU2FpIFRlamFdDQo+ID4NCj4gPiAtLXYzDQo+ID4gLXRha2UgaW50byBhY2Nv
dW50IHRoZSBzY2VuYXJpbyB3aGVuIGFkanVzdGVkX2xhdGVuY3kgaXMgMCBbVmlub2RdDQo+ID4N
Cj4gPiAtLXY0DQo+ID4gLXJlbmFtZSBhZGp1c3RlZF9sYXRlbmN5IHRvIGxhdGVuY3kgW01pdHVs
XSAtZml4IHRoZSBjb25kaXRpb24gaW4NCj4gPiB3aGljaCBkcGtnYyBpcyBkaXNhYmxlZCBbVmlu
b2RdDQo+ID4NCj4gPiBXQTogMjIwMjAyOTk2MDENCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBL
YW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd20uYyB8IDIxICsrKysrKysrKysrKysrKystLS0t
LQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF93bS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMNCj4g
PiBpbmRleCBmZmM3ZGRlODY2MjkuLjQ3YzgyYWEyYWRmOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dtLmMNCj4gPiBAQCAtMTU3LDggKzE1Nyw5IEBAIGlu
dGVsX3dtX2NvbXB1dGVfZHBrZ2NfbGF0ZW5jeShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOw0KPiA+IC3CoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGF0
ZW5jeSA9IExOTF9QS0dfQ19MQVRFTkNZX01BU0s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgdTMyIGxh
dGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1MzIg
YWRkZWRfd2FrZXRpbWUgPSAwOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHUzMiBtYXhfbGluZXRpbWUg
PSAwOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgaTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9v
bCBmaXhlZF9yZWZyZXNoX3JhdGUgPSBmYWxzZTsNCj4gPg0KPiA+IEBAIC0xNzAsMTcgKzE3MSwy
NyBAQCBpbnRlbF93bV9jb21wdXRlX2Rwa2djX2xhdGVuY3koc3RydWN0DQo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIG5ld19jcnRjX3N0YXRlLT52cnIudm1pbiA9PQ0KPiA+IG5ld19jcnRjX3N0YXRlLT52
cnIuZmxpcGxpbmUpIHx8DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgIW5ld19jcnRjX3N0YXRlLT52cnIuZW5hYmxlKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZpeGVkX3JlZnJlc2hfcmF0ZSA9IHRydWU7DQo+
ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGluZXRpbWUgPSBt
YXgobmV3X2NydGNfc3RhdGUtPmxpbmV0aW1lLA0KPiA+ICttYXhfbGluZXRpbWUpOw0KPiA+IMKg
wqDCoMKgwqDCoMKgwqB9DQo+ID4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGZpeGVkX3JlZnJl
c2hfcmF0ZSkgew0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtYXhfbGF0ZW5j
eSA9IHNrbF93YXRlcm1hcmtfbWF4X2xhdGVuY3koaTkxNSwgMSk7DQo+ID4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGlmIChtYXhfbGF0ZW5jeSA9PSAwKQ0KPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2xhdGVuY3kgPSBMTkxfUEtH
X0NfTEFURU5DWV9NQVNLOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXRl
bmN5ID0gc2tsX3dhdGVybWFya19tYXhfbGF0ZW5jeShpOTE1LCAxKTsNCj4gPiArDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzIyMDIwMjk5NjAxICovDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChsYXRlbmN5KSB7DQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9WRVIoZGlz
cGxheSkgPT0gMjAgfHwNCj4gPiArRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMzApDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgbGF0ZW5jeSA9IG1heF9saW5ldGltZSAqDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERJ
Vl9ST1VORF9VUChsYXRlbmN5LA0KPiA+ICttYXhfbGluZXRpbWUpOw0KPiANCj4gbmV3X2NydGNf
c3RhdGUtPmxpbmV0aW1lIGNvdWxkIGJlIDAuIFNvIHlvdSBuZWVkIHRvIHByb3RlY3QgZGl2aXNp
b24gYnkgMA0KPiBoZXJlPw0KDQpTdXJlIHdpbGwgZG8gdGhhdCBoZXJlLg0KDQpSZWdhcmRzLA0K
U3VyYWogS2FuZHBhbA0KDQo+IA0KPiBCUg0KPiBWaW5vZA0KPiANCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxhdGVuY3kgPSBMTkxfUEtHX0NfTEFURU5DWV9NQVNLOw0K
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9DQo+ID4gKw0KPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYWRkZWRfd2FrZXRpbWUgPSBEU0JfRVhFX1RJTUUgKw0K
PiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3Bs
YXktPnNhZ3YuYmxvY2tfdGltZV91czsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgfQ0KPiA+DQo+ID4g
LcKgwqDCoMKgwqDCoMKgZGlzcGxheS0+d20uZHBrZ2NfbGF0ZW5jeSA9IG1heF9sYXRlbmN5Ow0K
PiA+ICvCoMKgwqDCoMKgwqDCoGRpc3BsYXktPndtLmRwa2djX2xhdGVuY3kgPSBsYXRlbmN5Ow0K
PiA+IMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5LT53bS5kcGtnY19hZGRlZF93YWtldGltZSA9IGFk
ZGVkX3dha2V0aW1lOw0KPiA+DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiAwOw0KDQo=
