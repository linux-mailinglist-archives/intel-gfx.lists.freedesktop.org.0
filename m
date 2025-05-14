Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1A4AB6AB8
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAFD510E61E;
	Wed, 14 May 2025 11:58:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j7JmiKHe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C795110E61B;
 Wed, 14 May 2025 11:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747223901; x=1778759901;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1eIdt81pXu+52/l1HeNpoSLQgQbMhDamMd3mCG6d3qw=;
 b=j7JmiKHeN8HdbXe0ech2EB6V21aCHJMPsCywRwtKKElCglHW1JjHU4va
 yGDWGM8m76iy0KD3jcMf9bo/c9CuXllLRDfdbzLqqYBtlTbSG/2nrgcE5
 MP3rc0T/WBfFqSuxndR7PW+g4eWPfxFsUmMizeVfv0W0iJvM4X0YeV+uY
 DODKgaQyU89ndecXjfdmgwTNndVSJQSBHYB1plTjDS95srWrBklhqbkYh
 oALO4p3vbRTcR81ld2q/9pz8jSSxR2OmdIvWudZEZKi3+l3aKHTd85Twp
 R18Q6tYgcyrhdGMUi2ONpaepEDuwmMxDhPN0gLiO24U1x7lPisyNpWjYQ g==;
X-CSE-ConnectionGUID: Eo88vRObTeyCrDuT4QTbXQ==
X-CSE-MsgGUID: VGWxpRDNR+i+cyyqWi297w==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="60516038"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="60516038"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:58:21 -0700
X-CSE-ConnectionGUID: pfI4x299TgmKK5v2gtVCqA==
X-CSE-MsgGUID: /GwSAjElTVK2ErBzQqPwCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="142051578"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:58:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 04:58:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 04:58:19 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 04:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TyQZWTtBUXXX0sSA3aoDTDUk8nGltpn6a12xBQKfokWTqm/DO4hWKXxeBIA2I/GI/93vEjZ4J5aTe1cHwfcwckYribl171kkPJyoTsCYgbzNS6//PxOXoDwRm3ImPruXE4IUL/yAy1C2KX+t7P7werv1Fdoi6HqRRBFaJMgaspdwjp7IQJuX1mS4VGktJqGYQuwC/QGawTWL33Es67LefEcwX8Mp0P0LlBvvMAkk1UmBypc++LQwHDrA90epCnJpM3cktOAFHvDcj4I6PGBnmjO/oOq7FXXJsjVfsV+VCDtn8TTXUUwRubhPgvNLg1LKJOl4sbiJVVDTUoAVEdCJYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1eIdt81pXu+52/l1HeNpoSLQgQbMhDamMd3mCG6d3qw=;
 b=VxQTNWZ6PkZO7ItdYgvlEBk7dFqC/SVWcn7j9rNrTjOfB4DbK88i2eYurWWcg62tkMzwoGCBKEIj2v0/1uuYj4vajbPOUX7T2UklH+e0rXZkeFYlWxzrpvT/9vbY3C3rWvwyoKP+QGr57+udvte+pVkJjvvi4NQjAWeK9mX0Dq/5FjkbAqb8nU6W/xapBvkFWGdSPMDwFsxOzK7kI0XW9NV7ztmccLYQIFRVtqgo3JTH/GTS3qLrdRxsFhuCmZw8ii3Ud/pRA0sKop5Gwt8S3z1TdTLNimQ9ruHgYvrz8zHqz/dWrAm3c0xlwrOTfYtf39huVH0ywfki/NLbr5krgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB6941.namprd11.prod.outlook.com (2603:10b6:806:2bd::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Wed, 14 May
 2025 11:58:16 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 11:58:16 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Topic: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Thread-Index: AQHbp8rapqAAEdf2B0+lhTkEPmcr4LPSM7wAgAALP9A=
Date: Wed, 14 May 2025 11:58:16 +0000
Message-ID: <SJ1PR11MB61290328AA9BFC752EE2FEAAB991A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
 <20250407142359.1398410-2-chaitanya.kumar.borah@intel.com>
 <87o6vvh27d.fsf@intel.com>
In-Reply-To: <87o6vvh27d.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB6941:EE_
x-ms-office365-filtering-correlation-id: 349b0616-f0a9-4bdf-cc60-08dd92de9ca9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b0R5Und6azZjdXdvSzQrcDQrbWlwNmZZd3VYTE1YY3pDU1l3RUg3QnRrWG9k?=
 =?utf-8?B?Zk9SYy9xZ2Z5V3U2bVBMUlZsUUUwZWg3MkNhWnhFZGwrZVVuMkRGTS9TY3hZ?=
 =?utf-8?B?VGtsRG83cUlpTSs2TGhvRzZ1YmY2a2RLVlNHM3c4T2IwczFtTXVGZGhMWERr?=
 =?utf-8?B?MVJLTnBleGI4UnNIVUMyVFc4bkN3UVZ6SS8xSGExNUFFS29ENkx1UWl2bUNn?=
 =?utf-8?B?V1dCNDlWMTJYS0djMTBqTTBWVk5tS2piUjFLcjFlcVZ6L0l4aDFXZEJ2UkFy?=
 =?utf-8?B?RU1yNmRtZjdUYnFJdi9rTUFBTE1iQU5aamZzNGc5cENDV2lMSWZKWVFaQytw?=
 =?utf-8?B?WFZEZkVmVTgraXNEenZTeTZGenBsekJQZVpzb1FoMDBiUm91N3Ywc2pPUktM?=
 =?utf-8?B?R0xsU2FmQndaVGRSeWVoY0ZTdDRRMlJzOW5xYmdXTlA3NDZKUktBZUFuZzJl?=
 =?utf-8?B?cjI3Nzk4MGlWU2I3OGo2SGRqemhlR1U5aFhVSUxUM0MyVW15OFN0b0xwTjRG?=
 =?utf-8?B?MFVEczIybUtjN2ovTmQ3cGcxTW1IVjFMeUprSTB3dy94ajNxWWhqWFN3amht?=
 =?utf-8?B?WmpHWjg3TUVSSFQ5SEc2RWFWMVJOSWlCOStNZzN1UDJidG5GMVhCam9EbUNG?=
 =?utf-8?B?K3RJbVNTSHVaMmVoMHcwSkp5TmlsRUM2QXlibkI1UVBtNFlFY2tCMGN6V1lF?=
 =?utf-8?B?MHZEWVR3UDNnUlcxblBZVXYyT0VXSHk3OXRKMy9LNHQvL2NWYlZTYXJpcEx4?=
 =?utf-8?B?STA1RFd4WTRLaXVSb1cxams5ZE1FL3FKZ2N1c0FKamNRYkZ6Y3lhbU1aN29t?=
 =?utf-8?B?SWFmKzhTUy83ZEZxYTRGU2tieWR2WC84TFRpVW9tbjU2Ry9Kc1RtU25IN2gr?=
 =?utf-8?B?OGI0N3VmUWVYcFBzbTRZNGtRalRZTjV2enM2cjM2WkpIL0JRcHVrQm0xeHhq?=
 =?utf-8?B?WktsQ2RoQWsraFE4K0NMNTdaaHdsNEpCZUYzc05VQ0FkVjVrUXBER2VPSStO?=
 =?utf-8?B?eW5qekx5dzVFUU1nRGFnSmUyTFU5aXhIT2xpeW92Vi9FMmgvZzlDNG9JVEdB?=
 =?utf-8?B?VjA1dHIvL2hNMlFvREw5ODd6YXZRVlNFVFhGcW1MdWFRcGhyTElWYitLZXRq?=
 =?utf-8?B?R3BnNE5YUlhkeUtiUG04MENVNDZXa2syQWIrZWxWa003T1E2ZVBiaGZ3SVZL?=
 =?utf-8?B?eXBVUTZFcUV4TWxmanpYVlZKcW8wOGs5c2pKYzhwNXlkMllhaHdwTytPM0cr?=
 =?utf-8?B?OTZvaTVZUlJIOTlTMkxJTHlVeWxoUzhPYURnZGFPWlpCOUlQb0xGZXhLR0NQ?=
 =?utf-8?B?RU1Jdk5mNWtNRWNVS2QwbisyOG1hYjRDZEJwMURDckZ0cnZLVkJkUjBGSlBK?=
 =?utf-8?B?MDM5ZUxvV3Z6WG1SeFkwaStScVRVYVJDTEtvL05QM3ZpTlFYSUZPdHl2SEV6?=
 =?utf-8?B?WFJkOEdrWjZTcEpTWDhGU1NQbDFtR3l3SkhoSlVvaXV1Y3R4L29ZaWlYSU92?=
 =?utf-8?B?Ykg3aTJhbW9ndnRmSE5URTMwV3Q3cHZuU1FxVHB4MkhCeC9MclY2V3puNWZQ?=
 =?utf-8?B?WnlUNU16SXd4b1lQN1ZYT1JOUmJycXhvYlZ4b2ZMck83WmNJZUsvd2E1NnBh?=
 =?utf-8?B?RjdSTGZYckRIZzVGM3BTeVBCaHg2QnFNaHJvZlUvQ2V0Y0ZsYm50Y0dPL1JO?=
 =?utf-8?B?THAzUlJuYnBKV0ladmxhK2JmakF0TDBDUTFCOEJsVkFWaWdWZkF5SXYxT2tx?=
 =?utf-8?B?bisrdnAwRzRWaHcvTUhQRzRWNkZReERKWWpoWWtjMWp2ZkhpSjl6VVRkMUJG?=
 =?utf-8?B?TjBnWTlkVzZCVTkyL0FueldkbjliclA1MFJmd3hVTHk4akhSMmFhMUtlcEZu?=
 =?utf-8?B?NTZQVmNtbEhpdUE5eUVGSzdFZVBQTThDZnVHd2hQZVhpdEl4dDdqczRGUnFX?=
 =?utf-8?Q?Xpnth6Vjcdo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3h1TWF5emJrTjRSSFhzZExjNUlHcEw5K2pSMHd5emh1aU8ycUdrc25adWRJ?=
 =?utf-8?B?K2g4U29oYndjQm9mcmdrWjc4am92YzVXM0ZUWHZxNm52MnZEM1BuWmkzMllT?=
 =?utf-8?B?SDhQTjR5ajIvVW9QZlIyTGI5aXZ5a0tCWERwY1kvVHpMRy9oc0NSR2pPRE1L?=
 =?utf-8?B?QnAycnlidk45T0hOamFodjZBeXF3QkNBQkdvRGFZSk5jOHo1YnIwV1N1Wk9s?=
 =?utf-8?B?cHBGa1ZLdnZ1S1M1RmtGUzJZelF5S053SS8yMERIbmhTb1AxRjM1ZXZaaXha?=
 =?utf-8?B?MnpsamhKakhFMUpjd2VtQUplYWlKZXB4SlNpVXF4ZkVGY2psaElrSFp6MGwy?=
 =?utf-8?B?MklieSs0OEdkcGJEVSs0RC9xU3FDaEpHNmpleUtXYmZVVCtaK016STQrRUhK?=
 =?utf-8?B?V1o0MmVDSHBMQ1J0bC93WXU4aEg4Z0tOQjBwWXNVOE0xeGluRXQyamI5U0VV?=
 =?utf-8?B?V2ZOVHg3TXg3V1JUdU5paVpicHltWkFCNVFVQUFDWHY5U1o3NmEzODRia0dt?=
 =?utf-8?B?djBiU2xPeGtqVHgwOFVVbjdWcllZWG43YnBHVHpJZU5CTno3cEQrWGM2eTBR?=
 =?utf-8?B?WEpJSmp0T3h0YmQ0cENLRHJydC9KVTdUQThrRjk3R2dFM3gxMDhzdVI1bzEx?=
 =?utf-8?B?Njc1ZzVxaE9iWXNNRzZJMnk5cE1vVnZQTi92TjhoczVRL2pjbjY1dVBiV0Vh?=
 =?utf-8?B?NTdZOFhVSG8rSkM3NHpHK0tGWFpQRllrc1NhYjdTMEg2Y09Rc1FET1kxbXo3?=
 =?utf-8?B?Q20yeHI0eGc4SW1HZysvd0dOdXcrblI3a1JQYkhSQW83M1UyMHN4dVVFWmor?=
 =?utf-8?B?cDFYRXNLOHBWRHN6cXhoSWZsOUc5SU96UHpzaU5hVjhvdHhHU2JRY0hBaHZp?=
 =?utf-8?B?SVI4cVdPanpoVkdKUy9kNG1EU3ArOWZyU0FmU0pUZS8rK2FFUXRTTlhmb3U0?=
 =?utf-8?B?dDc4UUJqSzgrS1N0My9uSEdJdzNXUjFOSkExUmNSdHhtdUlFKzIzTjRsOTcv?=
 =?utf-8?B?OUNKVjFzV2FtTWlmOHk2eVB0ajBudkpXejBJVVNWWHBKV05mVmxiNEREU0tU?=
 =?utf-8?B?RS9HMXNHQlZkZWtQcFYrYTZOYWhFelJJRTQwcUNNNjg4MVM4cThPdWFNVlcr?=
 =?utf-8?B?UFJWSHJZQ3RLcVNPenZnY056V2ZuVTF6b00rOUIzd0s3NzdEMTdXL08yYnFK?=
 =?utf-8?B?THhOSW10SEVrcGVSTkRpMTg5Vk5nL0lsalZSMlhPWC9jeHI3TGlXN0hFMEUr?=
 =?utf-8?B?VS9ETWxsc2V0Z3dZRUl0NzVMZGF6NkFwY25iUGpaTWxrTkRNTHVMYkJkb2pF?=
 =?utf-8?B?cTNWaHhYOEQyeGVvZi9rb0c2NWxsa3VQa3A1bjQ3ZVNXbWovTXNFZUU1anl2?=
 =?utf-8?B?VTM1a2c0Mldzc3ZoMHNQd1hyb20xbHIvZGVoU3NvclhWS1duN2ZPQVFEVGly?=
 =?utf-8?B?TkFxWmVvUUpoRXdLUFBmSVYyenNaMnpkY0xMS1dod2ZVM0MraDc2c1VDVHRw?=
 =?utf-8?B?V1BpS3VSaTlvUnV2a3kyM1ExNFZxM1NkZFpMQ0dIKzM5WnZPajMrWkxJQmRv?=
 =?utf-8?B?SzA5SEdWZXlGUU1od2djSmdaZXJsTjZrUlJNUmtVNDJxc1pmZDFIY1ZPalg5?=
 =?utf-8?B?VW16OU5DanNIa0tLOUhWMUwyVUFCZGg2dEFLQVMraHBjTGdpM2Z0NW56cVNr?=
 =?utf-8?B?SitDbE9ObjliSHdOQzNjZndNSFFHSkdHUjd4MjM4MjlpdjNwZWNjaDViRkkr?=
 =?utf-8?B?ZWg1MVgydFYxYlNjQkJ6WitTLzBLL3FrQXVZWFJxbXd0OVJSVkF6bFhocmk2?=
 =?utf-8?B?dUR0NVBTWTNUV2wrWHdxN1puMjFQaXFrYlRmMnpvQzhFd0E5M3htNlA1WXlC?=
 =?utf-8?B?MVJwdmNsR3VLbS9DZjBuL2FXd04rRksralJORGlpMWxtMmx5ZmUrSE1Va0o4?=
 =?utf-8?B?U1RjYXIrckMxOTFRbllBMDhYU0NxRFBKcUJFUU96bTEyNm41UVNsYjN5Rnov?=
 =?utf-8?B?SVVoWENDMW9CQzlxYkdmTHVYeFBMVGQ0eHZDTzAvYkt1cFNNdkRnelI1bjBj?=
 =?utf-8?B?QlAvTlhxSFRkc2RDSjdMOGNWQkpqQVJKVTV1c1ZmNEFkM3NoTUxYekFVODBO?=
 =?utf-8?B?MHZNYzJhT2VtbTQvTm9xSFNVK3B3K2hNR3Rjb0tzQ1VlNUtZWHZESm5PRmU4?=
 =?utf-8?B?Z1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 349b0616-f0a9-4bdf-cc60-08dd92de9ca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 11:58:16.5134 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tIFtho+ZBkNSNIf0Qmvo7aSI6yM6UcL+FO0tvoK0kLlcQMBqrZSU9rXMRisRRnLKMGJrGBTqijM/ayk2pMVL/eex2afis2Dgvf1qBm8YCTs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6941
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBNYXkgMTQsIDIw
MjUgNDo0NyBQTQ0KPiBUbzogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFy
LmJvcmFoQGludGVsLmNvbT47IGludGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47DQo+IEJvcmFo
LCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBNYW5u
YSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggMDEvMTFdIGRybS9pOTE1L2RzYjogRXh0cmFjdCBpbnRlbF9kc2JfaW5zX2FsaWduKCkN
Cj4gDQo+IE9uIE1vbiwgMDcgQXByIDIwMjUsIENoYWl0YW55YSBLdW1hciBCb3JhaA0KPiA8Y2hh
aXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gRnJvbTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+IEV4dHJhY3Qg
dGhlIGNvZGUgdGhhdCBhbGluZ3MgdGhlIG5leHQgaW5zdHJ1Y3Rpb24gdG8gdGhlIG5leHQgUVcN
Cj4gPiBib3VuZGFyeSBpbnRvIGEgc21hbGwgaGVscGVyLiBJJ2xsIGhhdmUgc29tZSBtb3JlIHVz
ZXMgZm9yIHRoaXMgbGF0ZXIuDQo+ID4NCj4gPiBBbHNvIGV4cGxhaW4gd2h5IHdlIGRvbid0IGhh
dmUgdG8gemVybyBvdXQgdGhlIGV4dHJhIERXLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IENoYWl0
YW55YSwgeW91ciBTaWduZWQtb2ZmLWJ5IGlzICpyZXF1aXJlZCogaW4gYWRkaXRpb24uDQo+IA0K
PiBTZWUgaHR0cHM6Ly9kZXZlbG9wZXJjZXJ0aWZpY2F0ZS5vcmcvLg0KPiANCg0KVGhhbmsgeW91
LCBKYW5pLCBmb3IgcG9pbnRpbmcgaXQgb3V0LiBQYXJkb24gbXkgaWdub3JhbmNlLiBJIHdpbGwg
YWRkIGl0IGluIHRoZSBuZXh0IHZlcnNpb24uDQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4g
QlIsDQo+IEphbmkuDQo+IA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5jIHwgMTYgKysrKysrKysrKysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdl
ZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gaW5kZXggMGRkY2RlZGY1NDUz
Li5jMTY2ZTAyYjhhZjAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kc2IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMNCj4gPiBAQCAtMjI4LDEzICsyMjgsMjUgQEAgc3RhdGljIGJvb2wgaXNfZHNi
X2J1c3koc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksIGVudW0gcGlwZSBwaXBlLA0K
PiA+ICAJcmV0dXJuIGludGVsX2RlX3JlYWRfZncoZGlzcGxheSwgRFNCX0NUUkwocGlwZSwgZHNi
X2lkKSkgJg0KPiA+IERTQl9TVEFUVVNfQlVTWTsgIH0NCj4gPg0KPiA+ICtzdGF0aWMgdm9pZCBp
bnRlbF9kc2JfaW5zX2FsaWduKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgew0KPiA+ICsJLyoNCj4g
PiArCSAqIEV2ZXJ5IGluc3RydWN0aW9uIHNob3VsZCBiZSA4IGJ5dGUgYWxpZ25lZC4NCj4gPiAr
CSAqDQo+ID4gKwkgKiBUaGUgb25seSB3YXkgdG8gZ2V0IHVuYWxpZ25lZCBmcmVlX3BvcyBpcyB2
aWENCj4gPiArCSAqIGludGVsX2RzYl9yZWdfd3JpdGVfaW5kZXhlZCgpIHdoaWNoIGFscmVhZHkN
Cj4gPiArCSAqIG1ha2VzIHN1cmUgdGhlIG5leHQgZHdvcmQgaXMgemVyb2VkLCBzbyBubyBuZWVk
DQo+ID4gKwkgKiB0byBjbGVhciBpdCBoZXJlLg0KPiA+ICsJICovDQo+ID4gKwlkc2ItPmZyZWVf
cG9zID0gQUxJR04oZHNiLT5mcmVlX3BvcywgMik7IH0NCj4gPiArDQo+ID4gIHN0YXRpYyB2b2lk
IGludGVsX2RzYl9lbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgdTMyIGxkdywgdTMyIHVkdykN
Cj4gPiB7DQo+ID4gIAlpZiAoIWFzc2VydF9kc2JfaGFzX3Jvb20oZHNiKSkNCj4gPiAgCQlyZXR1
cm47DQo+ID4NCj4gPiAtCS8qIEV2ZXJ5IGluc3RydWN0aW9uIHNob3VsZCBiZSA4IGJ5dGUgYWxp
Z25lZC4gKi8NCj4gPiAtCWRzYi0+ZnJlZV9wb3MgPSBBTElHTihkc2ItPmZyZWVfcG9zLCAyKTsN
Cj4gPiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNiKTsNCj4gPg0KPiA+ICAJZHNiLT5pbnNfc3Rh
cnRfb2Zmc2V0ID0gZHNiLT5mcmVlX3BvczsNCj4gPiAgCWRzYi0+aW5zWzBdID0gbGR3Ow0KPiAN
Cj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsDQo=
