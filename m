Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209A78FE70D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 15:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6E310E949;
	Thu,  6 Jun 2024 13:04:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PGi/QwZp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AA910E950
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 13:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717679055; x=1749215055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VZ39wlKpgan+YZpvaLbS1P8cLsQCIfFnpUrAQccONHY=;
 b=PGi/QwZpGdYMvjubtE2yrfyfEp4ggSDtIYlqRT0tFua0EqH7g1YkPJBp
 C4Z95xjD+zdyMpreFTzS58qfZw6bfKYyXnY7KTYoo104l7D/prRoUGkPX
 B8RVMEMUjFlbT+DDwYmBfZlPfjk1BKqui4Ng6IkOtuR8nTX5Mo4h50IDz
 gTMvXOhcN43Rw9AVMLCwvGebOo74v7CaP2JQPyGQQUrAemEm/e1n3VQVf
 ZkbW/M1pAjdNZPAW62fPeZCiUI6SDlUkXby1doJEGcQT8RYD+/s9/0goF
 owylOVLsTekEadpZ3+JtBIxoeoTs3TDQuh8IkY74I/PzHZhi6MfCvjOgP g==;
X-CSE-ConnectionGUID: A0D7DhYLTOy+DkQmmKsTtw==
X-CSE-MsgGUID: 8ry4172FSIuAhrD71hWUcA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18191297"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18191297"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 06:04:14 -0700
X-CSE-ConnectionGUID: ZD0NWRI4Tb+x4nWJOLHeRQ==
X-CSE-MsgGUID: QYI4bvIzRQugnyjxkEiRpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38035973"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 06:04:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 06:04:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 06:04:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 06:04:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 06:04:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m4f2GImHZw6Xkugw/fYD5ytLz3ZXUX3DDmEXSvm29+R72ce39vIiWBhlFT642+rZ2s4cmu2BalVy4HlrgCCCd/8gv+ccvH//Lp1Yv2IseotXv65gJ5Ts9+k3C4IA5lEXHpUwXSh3oGHY99ajCkPlpvIL6Gl2pAMZQu6rDvyZ/ML6NgHQ2CyMsetJcVRF7fWFpird1vw0xevnx5amuNQEQYnjpAXtGFv53/m/27SOBm2i2CCMq3RgK+gQ8Lz/sSworeVLB450DE2J9zsQTq2T7Opv3phiRv0KXDQHp/OhsH4oSoSA7WiktjIeo0piRBcDFEw1NwHndZdspM8tYjhllg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VZ39wlKpgan+YZpvaLbS1P8cLsQCIfFnpUrAQccONHY=;
 b=VDBnLVE9JjKJFpRf/kb7zwGsbMngX2Ogo1WzGwL9Ax/h+XmmPZUYZKbi0gq9H7Sg35jYK7rah2sUiTlCr23853qZIJqCqVQ7DhHyzXXpQGoWiy6EwVjVvVl4ybN0lsRnXCyUhAtPy3M7aaUaW25KiSLKvtp3FKNCpRWWWbfBV25mKX8FcKroNKMf2i4cstRW0Gg0OHBBqZHfGQ63H3e+cDHKBHW/AO09DWnY0pq6YYBQoo03yJmsRrCo6XcoeTbE4V8kBzwPEdxJ8715mKr7IcQEtY86/RJMjX40St8tZn5n4zR7iwK1TvSKNKVqhgP2zV3hzkh/Y+zNHXfzHk4GOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SN7PR11MB7603.namprd11.prod.outlook.com (2603:10b6:806:32b::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.22; Thu, 6 Jun
 2024 13:04:11 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 13:04:11 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 05/26] drm/display: Add missing Panel Replay Enable SU
 Region ET bit
Thread-Topic: [PATCH v6 05/26] drm/display: Add missing Panel Replay Enable SU
 Region ET bit
Thread-Index: AQHatzLaH+dNDPx9hUyElLHYxwjTA7G6tXqQ
Date: Thu, 6 Jun 2024 13:04:11 +0000
Message-ID: <PH7PR11MB5981B2AC37C2BCACC42E006BF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-6-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SN7PR11MB7603:EE_
x-ms-office365-filtering-correlation-id: 0e665c73-db38-4b68-debe-08dc8629287c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?STh6SzRKRlhBTmdxVzZTeGQ3N2FDYzYxU1haTDU1bmtMekJBOWNIZjlSVEl5?=
 =?utf-8?B?a216SFh6eXJpazhheURzQjdoK1lvd0owUEJOOFNXbU9NRDNWZFNubU9hV1J6?=
 =?utf-8?B?RWVuVkNyc3pXbE41RmoyNk5PeVJTSlFtN09LcHY2R2FlOXFhaFN1azhQcDU0?=
 =?utf-8?B?cHFZNml3L21VS1NnVmtWYzdDQ3hlVmVFeHpxZENOWXViS0F3ME96QzI0VlN5?=
 =?utf-8?B?RDBNV080c28xYlZIZVNCbUNWVm8xeGRKaG1icWpySXZoUkQzODFSSlgyeWpI?=
 =?utf-8?B?alh2M0dSekJjbWpoSVRRSElJd3ZiTmtSbGZMdHN2cVdGZTRXRjJBdE5Kc2l2?=
 =?utf-8?B?TTlDbmErNkZ1Y0NRK3lYUlAwaGw5ekVQeTJmR2swTjF6ZDVSWW9DSzl6djZr?=
 =?utf-8?B?UDQwdDNWZS9qK3ZZdSszdXkyNWVNd3QvL3Q5c3pVVlpnSWIxbFhmTWJyS3hJ?=
 =?utf-8?B?blVKRk9neGxsTWxqbGowOWYxODJLakpxMWFKQUU0cHNyT3lYRDFyRjJ0aWJl?=
 =?utf-8?B?UUZZNWFsUlNJQjdIelNwTnFwOWlJeHdYeHplUURmaFBqSGwvbGtFNEg5NVBV?=
 =?utf-8?B?SUp1T3BHcmZXQytud3I1c2VSSW9obVB6M3dESFlJN1h1MlUxNHdvQk93anpk?=
 =?utf-8?B?ODdpSm5wUGI0cHNWWGxPWWR6QjZ3cDQ0VG1LSHNFOFZwbEdhVEE3bmY2bDk1?=
 =?utf-8?B?UGtlMHhoYzd5MWErVTV3U3dhSGJPUGg0TDkyeHZWWHNGeGRIRkMyZDF6TzM5?=
 =?utf-8?B?aFh4d3ViSG5yaG8yM1pKR3lBTTBwcDhPMElDbWxkV2liZzVSdVlkM2FyU2pq?=
 =?utf-8?B?NlJOR2grc1YxajFETWZGOEZlVVFWclBwb1JNYWkwcTZ3bnhLY1FCWVA4THdE?=
 =?utf-8?B?Nll0M3R1RHFEV0F2RHpidk5aUDhHTUNOMno3NDlpOFNGbTBwKzhHbmxlVlJk?=
 =?utf-8?B?c0dxbUVNSWVZcVdiSWV2WWJ1TFRXd0lnTTlYZ0cyS0JlcUFESHBGYVNGNm1x?=
 =?utf-8?B?NnV0ektnSEJCbmRJMVdtamZvc0ZudG9ka29pdkpkTjRTZHgxMWdsMEVHQjk4?=
 =?utf-8?B?eTF6UmVwYzlLSndBQmZjYWRJREM0b2VHZWVuU3dvbG8wdTAybzJnbUNpOHY0?=
 =?utf-8?B?OGFaN0hPZDJwcUZ0czRKanBjakdiZWVEaGhJWk1QdVJQemZKSzY4OC8zeDdo?=
 =?utf-8?B?cW1UM0hwOS9lRVJwbk5rb3VhV2xqdDNWcXdGM2tGV0tIZnNnRXVPNHZLdmUz?=
 =?utf-8?B?TTVGVmE5TjhhZFhqZFVva2kxMlVCbnZXdFN5c2RBeEpXVmZpQW9oMUtSRjYz?=
 =?utf-8?B?ODV1dTFJN21hVml0bXBtbE9WQ2NXVThlcFptek5ZQnVldVcwY0JkNHZJakZ0?=
 =?utf-8?B?eDgzRGFqaFVnY2xlb3lpRVgwVUlkb1dDQkxzUzJBMFFVVGRsVmMxN3YxQ1hy?=
 =?utf-8?B?YVlNbW8rWkx1TE5RMlQ2cXM1RkMveGxoMmRlZFR4d0h0VHFBUTBVeXhKcE84?=
 =?utf-8?B?TGUzNExQY3RtTjZvY0VKQWY3N29WMTVMcU5EckpSNlRYcy9JbFJsMEJHWVVI?=
 =?utf-8?B?R29GWkRLU3JEa09oSWR3bkYvTmlRRGVONmxSTHY4ZTJyNVFoNjYxTGlQNTY5?=
 =?utf-8?B?L3dEUmFFYm5jZitqQ1VicG9tWEJuajZtTkFzN1IraGVZeE1mSHNhN2swK25R?=
 =?utf-8?B?cVFrc3ZwU0NrZS9BODZKL1F0NWpQMll0SlhlMW9panpYb29LbTFvWUhNVHpZ?=
 =?utf-8?B?aDJIS2pQNGNDdGVVOEc4MjF5RzdLbzBtczUxL0xoUjQ2ZE92RjFrRUxhSlAx?=
 =?utf-8?Q?oETkzcwBEoSEUEGRzYlVi0Ttf10EMzdaIYES4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mk5uYzlNc05PcHlSRHVuQXIxS0pCL2J2enVHYUx4K1ZqZ1ZmSzlqS29acG5U?=
 =?utf-8?B?OVRhaGpmTWxONlphT1JLa0FUVzFydThLOGJpM29OZjYxYkt6MmhXeEV3ejRZ?=
 =?utf-8?B?YzJKUGNqaFJLWTk1K29OYis5Z0VmeDdHL2VKK1ROSFR4ODNDYlJiSWFTNXlW?=
 =?utf-8?B?Uy9KMzVPb2l5M3VPNGlEMWt1S25FeHVKRy81MTh5Q291ZVY2MlRCSHVZZ3hx?=
 =?utf-8?B?Z1loUExGYmZ1c05nVStSclZURmhmaHBTSXdhakI5MzFiL2tCTVYyb0pic2Qr?=
 =?utf-8?B?T1k4cFF0MHRYR0gwemd4aUJwRVJ4THNSMUlqV0xpcGNjSkluUUlhem1YbCtq?=
 =?utf-8?B?eXppTUJYaVJJaFRDYnAvWE1wSExrbDRNYXdwOHNTVDNnZDlLSlN2VXluNUt0?=
 =?utf-8?B?YkJFdTN6MWUzakFDYzdrWXlxQ3pmeGdQc3hEUHFvL3k2TU9xK01jaW82Q29N?=
 =?utf-8?B?OHd2QlJzSjRFTGdlVUtjR2MrV2czZlhqd1J0TjdSeUhvVE9QMzFyNlFZYVdl?=
 =?utf-8?B?NWM1a0NtMU9BLzI0NlFYU1FlRXE4RXRxWExUTVEwa3hVNG1lU1hYNzVUT2dI?=
 =?utf-8?B?eE0xLzVQNVpvbTRyY2VONkt1Y2VVVGIrL2NMNEtmOEZ4Ry9MZkc0NDNyMWMx?=
 =?utf-8?B?V0FyWGZwSEUxaFhSL0ZtbVh2R1hjNVp4VWlnTndGM29DOGxPclRSUkpFd2pS?=
 =?utf-8?B?anhqYklpWXlOQXFRQXgrQlRTbXBMSXdPWDBmc1ZQWTZlYm0xMHkvZVo2bzRy?=
 =?utf-8?B?bmlvOU5KVEdmalBrT2Jqc0R1M1hvVG5YVXVZTUpzc1hLSGYzUTBScDk4Mlkw?=
 =?utf-8?B?a0dJVGdrNXhHZ2d5aXdqQ2dGTFlySy9NM0x5TWdGMDh3OU1HWEQ0bGlxcmxG?=
 =?utf-8?B?NEVkbmFod0kvS2JZVmNScnNrOWY4cFJYMXJ1UVA5NFdzV0E1U0pkak01cFdW?=
 =?utf-8?B?eksrOG9tNFNpMVpOT2pCaUVjcFJPZ0ZjRnQ5REVlRWgzaXhkU2NKMmF4c0dm?=
 =?utf-8?B?dERDTloycGZvMFROSXBRTzhJSGRNODJsWWc3bWlNakxxVEVJYnBNR2dMeURl?=
 =?utf-8?B?cHNXSlBPMkczSmtXd0tPWXg5UVBEOC9VQjJlQVNrQmtOb1RPTkpzclozZDNh?=
 =?utf-8?B?RTljQkZseEJTcThhM2VHOTA1ZVFQVGYzR3dJb2M5UVVPQ3prNGpLSjhac251?=
 =?utf-8?B?Ym1laGxFZi9EcmJHKzk2WVQ4amJpYzRSY2xUNEFIL3Z1cWFaUFN6dkVQMytr?=
 =?utf-8?B?aWlxeWY2T09KcGoxb1pHeGRlV2x1VkNqVjE4RnEzQmxXWHNMWFUyYXN1NTBX?=
 =?utf-8?B?YXpUay9ISVNQZVltOFlycEU0bkZ5azlmTGNxSUpzTWRSNm54VmVibGZjaXJJ?=
 =?utf-8?B?bHVONkhpVlp0YWhWTFF2R0dvbnVKQTIyNVpwcElEVG5CSnEyN1c0MjNiZitB?=
 =?utf-8?B?VGJzbU9tNG1UY2ZCM1BDa1ozYmJLc0t6a3Z0S2dpUFhtYitDaU9mN3dIT1du?=
 =?utf-8?B?R1YrU2tZaGV5N1YwUGQ3NWtFdEpwQXY5SEZVdFprSFdjOG9pR3BrOEk3RU5t?=
 =?utf-8?B?ZHQ1c2Q3ZnE4Q1ovS3dsTG1mTHNoaWEzVmlWZWcwcWxJb09zVnI4MmJLd2dE?=
 =?utf-8?B?b1RLUU1uVzlpQ3UzZDQwbCtnaEVDbjZBTTR6T3gvTHRabEVDUjBhbHYzWkFF?=
 =?utf-8?B?S0FtNFRmckpvWkIzSEp3UFpzMyszcHdaS1lMNXVEck1iWmlZT25PY20zMEY3?=
 =?utf-8?B?azNUS1BmSElwdktwYWg1UU04bWRwbWRHZEJYeFZhWFBwR0R6WlQybkZxc3Vm?=
 =?utf-8?B?MFAyL3M0b3BwQWE4a1k2YWRnRkwzT2lhRzdKa213cjZLRUkrVWtnazFEeFZq?=
 =?utf-8?B?b0JhcTNJWVdUNGtWUlA0MUVOUnNLOWpBT2JzWHR1VHArMGNMWXlHR21RQUNJ?=
 =?utf-8?B?ak9tcE5jOXUvZFp0ZG5RZDVnOHQ5dGJjcWVrbjVQZ3U2ZDJ2NExpZmtNaDY4?=
 =?utf-8?B?b1E3N1BnYVovWkE5RUZzNjAxZEFna041OWNyUXNPZklmeHJaUDE2eG5QdWF4?=
 =?utf-8?B?QnNhWmNOY21yakRmY3pWc1cwK2N6UlJTQjlocFNRVWJrUDhDNnFYbjZ5WnNn?=
 =?utf-8?Q?UfmHYrm6/hsBEuYKSEEhA/bdU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e665c73-db38-4b68-debe-08dc8629287c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 13:04:11.0206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UWPP3+3AUYjqNrw9xFfBgVuKWBksbOmGD+gN+WbqYUptk8Rr5mKt/fdQapVPAfDkFmFFSR7RNWkao4fZ6qjwEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7603
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwNS8yNl0gZHJtL2Rpc3BsYXk6IEFk
ZCBtaXNzaW5nIFBhbmVsIFJlcGxheSBFbmFibGUgU1UNCj4gUmVnaW9uIEVUIGJpdA0KPiANCj4g
QWRkIG1pc3NpbmcgUGFuZWwgUmVwbGF5IEVuYWJsZSBTVSBSZWdpb24gRVQgYml0IGRlZmluZWQg
aW4gRFAyLjENCj4gc3BlY2lmaWNhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVz
aCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBpbmNsdWRlL2Ry
bS9kaXNwbGF5L2RybV9kcC5oIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykNCj4gDQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oIGIvaW5j
bHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiBpbmRleCBmMjQ2ZmEwM2EzY2IuLjE3MzU0OGM2
NDczYSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0KPiArKysg
Yi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+IEBAIC03NDMsNiArNzQzLDcgQEANCj4g
ICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9SRkJfU1RPUkFHRV9FUlJPUl9FTiAgICAgICAgICAg
KDEgPDwgNCkNCj4gICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9BQ1RJVkVfRlJBTUVfQ1JDX0VS
Uk9SX0VOICAgICAgKDEgPDwgNSkNCj4gICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9TVV9FTkFC
TEUgICAgICAgICAgICAgICAgICAgICAgKDEgPDwgNikNCj4gKyMgZGVmaW5lIERQX1BBTkVMX1JF
UExBWV9FTkFCTEVfU1VfUkVHSU9OX0VUICAgICAgICAgICAgKDEgPDwgNykgLyogRFANCj4gMi4x
ICovDQo+IA0KPiAgI2RlZmluZSBQQU5FTF9SRVBMQVlfQ09ORklHMiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAweDFiMSAvKiBlRFAgMS41ICovDQo+ICAjIGRlZmluZSBEUF9Q
QU5FTF9SRVBMQVlfU0lOS19SRUZSRVNIX1JBVEVfVU5MT0NLX0dSQU5URUQJICgxIDw8DQo+IDAp
DQo+IC0tDQo+IDIuMzQuMQ0KDQo=
