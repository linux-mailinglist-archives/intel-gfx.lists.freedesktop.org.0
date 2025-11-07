Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B659CC3EAF3
	for <lists+intel-gfx@lfdr.de>; Fri, 07 Nov 2025 08:03:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68BDE10EA2E;
	Fri,  7 Nov 2025 07:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ke9Ilvf1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0BD89D8E;
 Fri,  7 Nov 2025 07:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762499003; x=1794035003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rrt4H9LpvMiW3F2bXwKaAckYYAg1cDHRE/nwLpaS0Ew=;
 b=ke9Ilvf1v7NO3fefh2pOxPvXgtki7WIZrqiVyjylQZPn0O4XppvKdBH5
 rtWy+4y7NOKplfR+WofZX7ocqJRUzuI8SAmpKJYKRzspfZiSWs+y+X3Aa
 ocwiXEasv1zSLEbjveFZYvBhaBaXbbBIY1X2x+Iawcibah1/V40xqBjpf
 RToVZ5zCviwij/7ZZ6VKQQnRnf9rhuvb2BTf6R+DW8kT6t6EwBJKnX2BJ
 Uu8RYlGoUfMo079U6cXRu2VPIgmMFYTEFhLdaVN4WwnfKoNmJzthTOCpI
 OK1ChGwD6vJA1OIWe9w++08iUi6CFl2FiBKPpVh//EINr200nc6PaLZy2 A==;
X-CSE-ConnectionGUID: mejjheQzTA+RX1SPhq7gxw==
X-CSE-MsgGUID: /HrFrI9jRTysNKqkZcHZ7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11605"; a="68294683"
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="68294683"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 23:03:23 -0800
X-CSE-ConnectionGUID: E2JzqV2OR5Wjx7rWKvg7bQ==
X-CSE-MsgGUID: 0hGeW3eeQsyDMhEAB0BBxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,286,1754982000"; d="scan'208";a="225228806"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 23:03:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 23:03:22 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 23:03:22 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 23:03:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GdZVuFSs1HxAYGgXjWMvqLRibj2fcNNudJvfXsycehfy5u2DprnsA3rVC4JDpm1dk9oyz+CrB0/fcwCR6hCsp90YSB/hEsqJvdHzuzQ2TPhcLOmj3KW4TYy+AcJfqVzR6s/UxPpQORdYdCvwweEk5ysGML0+FHtQ7mbqcucCzb9K4AVwuwKKnwkboRRmeMxlICKCd2SZiQcPvOjETNrePXas21X5qE4inGGfK4ycyF5j6FWEXiGhdC+aV78YIlSG3Ubz/AeYIhMpvLCAElF9jy6RihhxPXJ4+AVKIBF1kwMeh/BUlIKclRZKFCGlsHRSNEfadHJUxr2jOnUK660Fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rrt4H9LpvMiW3F2bXwKaAckYYAg1cDHRE/nwLpaS0Ew=;
 b=nRnnA6PXGybthXT+qF+Xb8sXo8F4ZhFGv51aZlA2QHVdrqn8Titj/2ibhih0RYTFOazWUdsdGLlBLFrfUw10TJkoy/LzjOUtFciW7XZxhLwZ953qE4rpD1dXtwDf2GiqAHL5Cq5nlDcR8Bum34lGJcqcN5UaXcxcj29u7KrfHGY0CxeXSj6blCM4lYWIqd1X+29KYqhjcpxsGOIT488l+TjU3i0TF0ZJo5DVJzLvsyk2lxFLDzuSm6iGdq4BLEsuQyz1d6CRQrDW70bZOoZZNy9lEhMFpGqKxXbz9lHNhyWWp7/xIFZc+ipoqhe70CtwZDSIry/C+RBGaNo88Vo2mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB5277.namprd11.prod.outlook.com (2603:10b6:5:388::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9298.12; Fri, 7 Nov 2025 07:03:20 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9298.010; Fri, 7 Nov 2025
 07:03:20 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/psr: fix pipe to vblank conversion
Thread-Topic: [PATCH] drm/i915/psr: fix pipe to vblank conversion
Thread-Index: AQHcT1gF8Xg2otNz10+2A9OW6t2447TmyoAA
Date: Fri, 7 Nov 2025 07:03:19 +0000
Message-ID: <df54e434d95553c02fe9e7a8607cbc25652ef107.camel@intel.com>
References: <20251106200000.1455164-1-jani.nikula@intel.com>
In-Reply-To: <20251106200000.1455164-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB5277:EE_
x-ms-office365-filtering-correlation-id: 62e8006c-0977-48fd-f916-08de1dcbbbd2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Nlg4THRWcGhyanRHQXhtRFlkUktyQXMwTDJ2ZDN5eENtL2N0M1BrVnRlbmNG?=
 =?utf-8?B?ZVRLQ0NIbWt3ZjhTZWs3NC9lSUJqRm1hdi9RTVpvcW5KcXVKMTVOQ0VMUEZ4?=
 =?utf-8?B?MGViQXZnc3FCYUFxQ2VYUXFZRS95OXZxWTkyY0lNT3cyZnJJbnNUTi95SW1L?=
 =?utf-8?B?bm1RdmQ1Vm9oSHBGdVpNNkhqR0xUbVNZMk1YYTB5b0ZzTUx0dVpMR2dhRXkx?=
 =?utf-8?B?RktNSUdQRFJDdlgvWnptNGZFMnBXUjdLQjdWQzFqdWdabVZTY2lyZ1BjL1Z3?=
 =?utf-8?B?ZkI0d3RTVHVnVVVZb2pzbmRWUVpqR29jdFdMdXJ4Vm9mT0M0Nll6TUQ0dUZG?=
 =?utf-8?B?YjFOdkY0MzV2RHRYUzdoQ1dJdTZOT2RRZm85aWhmTzBMYUN1VUN6b3RZOVhR?=
 =?utf-8?B?RGJGWGZTZ2JBWXYvS2lQWGxsQ08yYStkdnNHaysyWlUzRHNxc3U2WitFRWcy?=
 =?utf-8?B?cjVjbm52MjZ1YTlkSThYeVhudFg1VW5qc2xtSVpNUTJ6U3drNkZSQ3pFTEE1?=
 =?utf-8?B?dzMrd2ZKbmxISHM0VEZLdE5MQ0hXYzhuMDgxY3FkekRuUjlpeUtYMFFGVFZX?=
 =?utf-8?B?b2duOFM0NWpYNm1tTjNyOXBvUnpSa0ZIZkFjYjlBOUFNUFZzUzhhUHRBczBC?=
 =?utf-8?B?QVdob2tqR2VNdkk1MmVyWHlXeVppdlpFSDZURUZ6Q1JwN1hCa25kaUdBV3Fk?=
 =?utf-8?B?eGYrYTN3eW0wQUhDL1JJWGc2OSt0QXI4RkNUZndxclBtb3BIZy9Xcm5uM25t?=
 =?utf-8?B?cFNPRTFNZHg1VTRsdVFpbEg5eTR1b25lMVY2Y1RVNEhmeUJUNHYrYlVaRHly?=
 =?utf-8?B?QUNYWVJUUEJRTFBac3hBb1BEdC9SdDVidmltd1pSVmVFeXdWaG9JcExsZzM5?=
 =?utf-8?B?dnNOeWFrMVI5RW11dllmNzNQUUp6aXJQN2ZyYXhsOVp4NEltR2RtcHlhYzZN?=
 =?utf-8?B?Y0JEVGNQSHRwdlhaME04OURDUlRoQ2JBT09SWWdwNnlnOTU4RzM2YTZqQVR3?=
 =?utf-8?B?YXAzWW1GY0ErVS8zaU5NaXExQlhCaUV6MVpyMUcxcTZwKzhLdnhHQUtzQ3lB?=
 =?utf-8?B?eUE5UGN0dHczWjJqSlh2aWtqZEFzSmo1S1ZMdkhHR1Vubjc1T0JBVkdQcVRE?=
 =?utf-8?B?MjNtalJCRmladG1zMnRjdnUyZHIxWng0aXBtbEpYZldsZ1BLZmtJSklnWWdY?=
 =?utf-8?B?RmtyeUlWTVhMMzZkam96MFdtL2pZVWRnSFVPaVJDZzI2bUtVeHNQa0FTdlVH?=
 =?utf-8?B?bGZSZExsckU0Qk5uaWFDcDF6OUZsRDF6TU9veHBFNW1BNFBucU9MT28xcENh?=
 =?utf-8?B?KzRsUHJhQzc0YU10MmUzazFJQTk5amlNVThOWHU2Ni95bjdkK1B2Tm5LdWw0?=
 =?utf-8?B?Q2ttV1FpUVhlYzNEWitMTlJ5Y3dmdkxjcXpGbldXTTV4VEJWaEs4dXY1ZC8z?=
 =?utf-8?B?N1N2c1MzMW40N2ZDWmZtS0xwUEFNNmUvdk8reERKdWY2SnNlNWhGZzZsU28w?=
 =?utf-8?B?RHo4UlVTRC9YeFZDREZGcWJjVUlObDBsZTA0eGJGZ1drUVZRbWFMbWhrZFZH?=
 =?utf-8?B?bnFGamZCcFR1WlZOUHIwbWhtT2tGVmd2clZMd2tDdEkyQXlhMlR1ZmxYWGZP?=
 =?utf-8?B?aWFpUU13TVUzTVYrUmc5bXFKcWxaUWlpenUyRmEwT0JsaUFoaUlueHNyb2Vw?=
 =?utf-8?B?R0I3dWxPNFZtN3ZmdGZMZUE3L0F1TkdrTjRvQ2c2Nk9TTEJRMWlQK0tCeEh5?=
 =?utf-8?B?YzJaQmR1N3lwTHNxK1BLODl0YjluZTVhQnBxdmdzaDNBdW94QVJGaFE0TURz?=
 =?utf-8?B?MGFzcngzUEFlU0M3NnhBRWhGcHdmaXZkMmNTbDZCMkljcUpSMEkxVmRrVm80?=
 =?utf-8?B?N1dGYlhYK2tYWEx4WnBpZWw0MHB2eEhPSi9NbERraUpra0RGRDUwN2pPb0Ur?=
 =?utf-8?B?cUpBcHBWWCtYK1BUQWJTMFBFbk1Qb1NzeE4zU01jQS8yNmtKaWR1RlVuaUt5?=
 =?utf-8?B?V0RBdGo2Q01ZNGtETll2clBrL0d5ZWR4ZFJTZlQ3eHpnTzdkMng1TmxUMVBL?=
 =?utf-8?Q?wcTObx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y010cTRJWGduRndUYmZlYytnem96UWRXRFRpOTc2SlR6UzVTOHZjcVVRM3NZ?=
 =?utf-8?B?OGFNWWw5UEliSTd3MnUxVCtIY3VTV3FjejdkYzhGbXdkOXY3bFdXd21GK1dN?=
 =?utf-8?B?QzUwM0pHc1poVjhGSFU4SHlRQ1R0UGhITzV2S04yZ1gvZHNmd3ZRaFE0dC9m?=
 =?utf-8?B?bGVSTGFlY0Rzby9yZmZOa2d1bFlvUVo0ekREVWlxKzlqSlJLWDhScGVOQUJ1?=
 =?utf-8?B?RW1ZQWlrNVNzeHkxdDBWeVdqL3UrMGVlWVpYUDF1UVA1WG1UQ1BQb3Fxa0My?=
 =?utf-8?B?V1phVDRkeHUwTVBxU29NTzQ1bDVMNTdWTkJUSU9KRm1qaGl5OGF0aXZtTVpS?=
 =?utf-8?B?TGIyV3lhbUtXZUhqRUFrdS9IQ0h6K3Z2ckZMOUpDQkY4eFgzSllVVUdjM29a?=
 =?utf-8?B?a1BSZHNIYUJ2NkhCdXhkQjFBWFRaWk5xVzFuY0JIYmZUU3NnL0IzSGlPWERP?=
 =?utf-8?B?RUIyTGtvTnA2cjhVT2tQdWMyQ3BZeW5pQUdUdmhiSkduYXQ1Y1ZoOE5MQUhV?=
 =?utf-8?B?UTlLM0I0WG41M3VlT0lSQTZjMlhYWXVLelRHRzJlK2hjY2MvYTJ5VXpHUUxy?=
 =?utf-8?B?cUF2MFZ4bEE1dnd2NE1TaWxYamVIKy9HMUMzWW5LR0J4M1lMR0MxK09XYkcz?=
 =?utf-8?B?MEgrZit1WTM3RUxNK1BXU250MzZDa1h0M0lmUzE3L0RheDg4aStBVER1a1VO?=
 =?utf-8?B?cm5QYTZVaysvb0RsUkI3dkQwZkVYbkJpRG4vNXcrQk5uWXdiT1lQR2h5b1hx?=
 =?utf-8?B?Uy9VN0ROd3dRM1d2N1N5T05oY3J6TklZbUZnN2cxV3J1Y2poMnV3UXZycUly?=
 =?utf-8?B?SjZiUlJjSnEvekQ2bXBIcHFlR29YbzlUa0FSdVdGZU85a0htWVpib0prRFRN?=
 =?utf-8?B?TldZeFJWeFZkOE96ZEdvWTdhVTF4akhQREdnUWNwelZLZUJ2cDRaRGIyTHN5?=
 =?utf-8?B?TXJPNWpOVWFwMy9aOUU0VVJjMlFnakVra2tPd3JvTVNIYWpGYWlyUVFUZ1l3?=
 =?utf-8?B?SFluK2lPZ3V2UGxHVGxNNkhwK3RqQm15bnVxSzJiRWR0b1BaTlpQRXp3a0ky?=
 =?utf-8?B?QWZxRXFZWTJOYWo0Q2tRWWV1bGpoajgwR0JyRnVrSVYyZlZlUlZCM1NoRkhX?=
 =?utf-8?B?WHR4RkVWT1NQanozaHBOWE81ZG1XK2lHY2tlSkFjYzRxLzhHWTZETHFTcnJX?=
 =?utf-8?B?YTVaSUpmblVIMW1sNGc0bVNPOXBrVWQ3a284ditOQUJRNnp6bnUvQVRnbkh4?=
 =?utf-8?B?VHlvTC9aaFhEOTFGbGUzUUpoTkdCMDJPMEt1UERBQnFZcEVGTVhHNnM3ZXRG?=
 =?utf-8?B?UmlPVFFIYzA2L21zVkc4a0dVUFRvdk5ReFViY3B6VWthMnJidStTcnUzVUdT?=
 =?utf-8?B?QktyWHpDSXlEQll2eE83VVJVMW4yTHNSeXNHUFFkaktqSHZFMlo1SmIyTjVt?=
 =?utf-8?B?dkxxM0RIMUtEbkc5cjlTMjJpVmZqOVQ1Umx0MXhMb2hGOHlQK2djbkFKOUd0?=
 =?utf-8?B?SVJEMVFzRm5SODVaQ3c5V1U0NnZ4bmxESi9GeFZIK09BUGNuME9vZ1RUZWV3?=
 =?utf-8?B?RXc5L1pQZ0p0L3FXeWtIQTZLWFJWSlJVTDJoeVE0VXRxcGxLY2dBOUg4UUxP?=
 =?utf-8?B?YjNINUQwaGhWRzdXNHd3d0syM2ZaOGN1Mnp5UFF2NVNtaXhWUWdienM1Q3I2?=
 =?utf-8?B?NklFdFdyUnRLU1FrRzdscGhUWVFGbDhYQ3RSeDNsNFR5cDdCTkFrU1M5UVJK?=
 =?utf-8?B?emNoQlhFYzFuTHZUamVMQ3dFbExSTmYrWkorNkRuaG9FWXorclFreXp1ckR1?=
 =?utf-8?B?VnNqek9wTWlxUlhCcDBPZmM5NmhsUDZIK2tkY0lsUnljbXJ6SDB3L1RGbFZZ?=
 =?utf-8?B?a3dTZ0UycStkWmtYMHpnUkxDOW96STNOUUhHajE4ZldTRWhOUGsyOGw0bldw?=
 =?utf-8?B?dTBiVzg1OHJIc3RHYy9rMmJyaUFJYXgrTXN6Zlk4Q3lYU25pV0NWc0tDamEz?=
 =?utf-8?B?ZFRyMXZEekdrOGM1bW1YS2FTRDBLbTkxUTI0NkJJUVN1RnR5SkFGKzg5NXlN?=
 =?utf-8?B?N3VJNXZ4TnJrTE5oZnoxa3FkbGlMMXFBckFZU1ZQQlAzZUo5NTVlcFBEelBV?=
 =?utf-8?B?dS9RYiswOFBVNm5SOXg0bWE4eGZHa1FwQ2tIUG1NekdSeGNYRUlFNm9zYlVW?=
 =?utf-8?B?cUovWEF3SWpvU1B4VGNHcE1nNDNwTnV6elhtTXlVU2hiRHk4ODJjMEtyL25H?=
 =?utf-8?B?NnBFYlRxbHZha0UrOExDazVtUFRRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <20BC00FEF464C046955EAECA3B7E09B4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e8006c-0977-48fd-f916-08de1dcbbbd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2025 07:03:19.9319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nDbDfu42PFZv+Tf6KAFkFVOnHdibM464npDZgmJ57ilyd+d70sUIajrzngQQAzdQC5uBEc2M0kHCiWEALJOrgTK3NlDWxirU3EEiy/zBvxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5277
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

T24gVGh1LCAyMDI1LTExLTA2IGF0IDIyOjAwICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Rmlyc3QsIHdlIGNhbid0IGFzc3VtZSBwaXBlID09IGNydGMgaW5kZXguIElmIGEgcGlwZSBpcyBm
dXNlZCBvZmYgaW4NCj4gYmV0d2VlbiwgaXQgbm8gbG9uZ2VyIGhvbGRzLiBpbnRlbF9jcnRjX2Zv
cl9waXBlKCkgaXMgdGhlIG9ubHkgcHJvcGVyDQo+IHdheSB0byBnZXQgZnJvbSBhIHBpcGUgdG8g
dGhlIGNvcnJlc3BvbmRpbmcgY3J0Yy4NCj4gDQo+IFNlY29uZCwgZHJpdmVycyBhcmVuJ3Qgc3Vw
cG9zZWQgdG8gYWNjZXNzIG9yIGluZGV4IGRybS0+dmJsYW5rW10NCj4gZGlyZWN0bHkuIFRoZXJl
J3MgZHJtX2NydGNfdmJsYW5rX2NydGMoKSBmb3IgdGhpcy4NCj4gDQo+IFVzZSBib3RoIGZ1bmN0
aW9ucyB0byBmaXggdGhlIHBpcGUgdG8gdmJsYW5rIGNvbnZlcnNpb24uDQoNClJldmlld2VkLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+IEZpeGVz
OiBmMDI2NThjNDZjZjcgKCJkcm0vaTkxNS9wc3I6IEFkZCBtZWNoYW5pc20gdG8gbm90aWZ5IFBT
UiBvZg0KPiBwaXBlIGVuYWJsZS9kaXNhYmxlIikNCj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+ICMg
djYuMTYrDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
fCAzICsrLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBp
bmRleCAwNTAxNGZmZTNjZTEuLmM3N2E5MmVhNzkxOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC05MzIsNyArOTMyLDggQEAgc3RhdGljIGJv
b2wgaXNfZGM1X2RjNl9ibG9ja2VkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKg
ew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiDCoAl1MzIgY3VycmVudF9kY19zdGF0ZSA9DQo+IGludGVsX2Rpc3BsYXlf
cG93ZXJfZ2V0X2N1cnJlbnRfZGNfc3RhdGUoZGlzcGxheSk7DQo+IC0Jc3RydWN0IGRybV92Ymxh
bmtfY3J0YyAqdmJsYW5rID0gJmRpc3BsYXktPmRybS0NCj4gPnZibGFua1tpbnRlbF9kcC0+cHNy
LnBpcGVdOw0KPiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gaW50ZWxfY3J0Y19mb3JfcGlw
ZShkaXNwbGF5LA0KPiBpbnRlbF9kcC0+cHNyLnBpcGUpOw0KPiArCXN0cnVjdCBkcm1fdmJsYW5r
X2NydGMgKnZibGFuayA9IGRybV9jcnRjX3ZibGFua19jcnRjKCZjcnRjLQ0KPiA+YmFzZSk7DQo+
IMKgDQo+IMKgCXJldHVybiAoY3VycmVudF9kY19zdGF0ZSAhPSBEQ19TVEFURV9FTl9VUFRPX0RD
NSAmJg0KPiDCoAkJY3VycmVudF9kY19zdGF0ZSAhPSBEQ19TVEFURV9FTl9VUFRPX0RDNikgfHwN
Cg0K
