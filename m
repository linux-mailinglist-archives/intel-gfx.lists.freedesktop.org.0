Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C26BDA355C0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 05:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0442C10E20F;
	Fri, 14 Feb 2025 04:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fnoAOy2o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D84B110E1FC;
 Fri, 14 Feb 2025 04:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739507343; x=1771043343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YMZ02T9WliVz3Mxxmidh4W7bCdwHkIjs3frXhNv6z+w=;
 b=fnoAOy2o+1BcSbXFaocTZZoIyqZcePL2eu+av6OX6H1/iU+pMnNf3pAJ
 RUVHSMk/S4irExwcctRoBuegLLQfntP6tYTEiU89KoYjfsUnzABHTRpWs
 2CsfjVetpmPwKBWc56pZVa/oDSOqF6TyTMsJbUd40rWUAbqgupFYHcETL
 o2EPiyqEL9iBf4tAt/uG7nFVDvcSPk6+QKhVqleMOVyD3SrzfoYaE5G1a
 P0mSa7NrFi27vSF/STSB/8ExhyC0PxsUimaddJ3gjvgJ7/1Ytr8ch6U7J
 L8Rztrmt9z8wp5xQvzyJBXPxxrPNgkGl1aHT7JUiGX8UgA2WkNYM67mAC Q==;
X-CSE-ConnectionGUID: FT5f0U8FTYiKyXT6p9ttow==
X-CSE-MsgGUID: X5Twm1gbTy6idl1xgK5Iyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="39429872"
X-IronPort-AV: E=Sophos;i="6.13,284,1732608000"; d="scan'208";a="39429872"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 20:27:36 -0800
X-CSE-ConnectionGUID: /MZJwKFLShueQvI3x67Etw==
X-CSE-MsgGUID: pO0I7EhFQ9WHrb5dHUxEgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113214337"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 20:27:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Thu, 13 Feb 2025 20:27:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 13 Feb 2025 20:27:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 13 Feb 2025 20:27:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L1OjmlLq85zJJAv6avfqBUJA48YFeFpmIAwi/id/XLqxBTUws/za0wcjxPrEpSk56NvduZcC6gKs6HLiAf2k//bp2DCGDUZqBfiVUhsZNWi8f/90/UkPaR2B6D+Dm/n9XEaZx/FEDmROeYwViBbsC51MC5R1vofMtgXJHrvnnfRuZ5ZnTEVD89N30ehfYTK+89y9XOl1eyfr14i2Ky4ItMSXE6EpvAiQ54Q7Of+GTxE4Z3m1hEDO77NDTkx/wKncSRKXwNn351o/QLuZ+NRUNbvJSYR1xShQ09b7vCpbTzeVt4HzOJJIgr0p4ASnrx7XLXpPiFwtFi7FgYGsDIBdmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YMZ02T9WliVz3Mxxmidh4W7bCdwHkIjs3frXhNv6z+w=;
 b=rtO6iu4N6ZRzzS/Nwm7EWr6QPIpXfZgzJ42qujrTVJvXzry75YGIsH8+7nSBOCO59NyZW4DUQtR7ZQ87HvBtL0m1GNzZVcF8ZWLfKR6XB5v1DoSIE0Y9CHRE7fQblGCCZPc3DEz611e1akm+7uuH03EgAFsBXteJw15VUMlhsfSiPe/5GW6Zoy3qB1NPIPEWVTwEQ3RYBpU0ewSKMcKWcSvBlVgcgWMNzmgnTB0KHzF1u8f7rA3BOHzjzOPx4qHivXNz5+uc7JGPbliK5FP5QQGpk3MBfcr5gaWtVVdQxSkjpj0GZyPdHi+csYga2frcUzEypti2pFerfgkhnMIn0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7749.namprd11.prod.outlook.com (2603:10b6:208:442::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 04:27:18 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8445.013; Fri, 14 Feb 2025
 04:27:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Topic: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Index: AQHbfgjKbuyZLdROpk6qjPt7J2dUAbNGM93A
Date: Fri, 14 Feb 2025 04:27:18 +0000
Message-ID: <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250213111628.2183753-1-jouni.hogander@intel.com>
In-Reply-To: <20250213111628.2183753-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7749:EE_
x-ms-office365-filtering-correlation-id: 83152a96-d35e-435f-db27-08dd4cafde3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?UUY2TFU1emswSkV2RVZnQTMwN3d0L28vVmFrOXZJaGl0RlBDN09nVDhlM0tJ?=
 =?utf-8?B?MGk0Y0RpazhhZmJMdjZEcFp2NlVMdFNiVi85L010WGg2OXNjVWRQZ0JnUy9M?=
 =?utf-8?B?RnVaeE95YmpicEg3RnAxd29tandqSkl6RUJ1cnM2WTJFUDhjQmUyanlDZVBl?=
 =?utf-8?B?Qis5TVIwL0lnTWZnWkFNVTlFaDN5Nll2aUk3UEI5NllnR1J5ZWRvVDNYNHYv?=
 =?utf-8?B?MG1oYTE1b1N6Sksxak96b2JGQkVwdCtGcmFMZnZYQzQ1NGpQbGtaRFZ4RU4v?=
 =?utf-8?B?NGNrVTlGUlRFZE4wSlBnbzVZWDkrR0Rib25EZDA2akxFUE15ditzT0pNZkNI?=
 =?utf-8?B?aE43TmFOZXllUSt5dVJMTUp5c0VXM28zYU01OFJ5dllvajVWRXgzUHVRK3Jw?=
 =?utf-8?B?RFBUdFEySkw0UEo2SndneFJNK3lreVF5SlN4RUJZenFHUG5UanJTdDcxSWRB?=
 =?utf-8?B?RkVNMW5FQ0lCRFJzeWZqQjdNT0RCL0poekFPendVMG9TVFBlbmZXcm5FSTkx?=
 =?utf-8?B?SFFhdTAwb3cxQjBKSElVeFJOZ3JuUkN0WnlTYk9aWk9tb0dWcXZwdStveFA2?=
 =?utf-8?B?cC9MTXV0LzhLZllUZWY4R2JHcXZZZnlZWE9ILzRtMmdrMFA5aVNncDBOeU92?=
 =?utf-8?B?UVEyYVFjSG50K2wwSllFYnVmZjVjZlBESlRFcTNmMFFmcCtqSit5TnRnMjVK?=
 =?utf-8?B?MW5ML1M1SWJaWlFRazB4bEV0bmRYQm82bzJOOHM4TUkrUlozSmxNQmFKOWtO?=
 =?utf-8?B?WmhaNWsxaHBRQ0ZvU1dyWTlFWmY2OVZQZTU2VXpmeFcvS1QzeFpiQ0tTM2JY?=
 =?utf-8?B?bnhHWmh1eEx6dVozQkFGd1p5Slp3TStaNWMwRUhuRkdhWmE1a2J0dGJBRWp2?=
 =?utf-8?B?YWhEYWl5QWZpZHlsZDRrTjVaSU5Xc3NFbTNhMEtVM2F4ZW56bmVRb3h5andU?=
 =?utf-8?B?cmpaa3VGSW9GVmkzNFNaZDlLY2ExVytDbHh4NG5kd1Bld1p2OFhuTVlSbUNC?=
 =?utf-8?B?WDFYWE52cUtFRG54bE4veXFSTk83RDhRWTdEWDhnbzRyemhib2cwa3lNUnp3?=
 =?utf-8?B?K0ZyVlVySE5UNitZZVIxNVg1YjBrMFZ1RVUvM3hCd2FOQVMyeUhteFdYRzEr?=
 =?utf-8?B?a1VYWVlobW1JUmZQb0wraEVwdmhUa2U5ZDhDOHQxVWx3YzdRS1EzS2FPZWlm?=
 =?utf-8?B?Q3V6WE91bnRPb05jU1pwSk1peVZHdUtEWGFMZ0Y3OFBlSGlFVEozaklJZzJE?=
 =?utf-8?B?d1k4OENwOGNwRStpdTBDaFZsMlBBaE5oUVVtS29ISEphVlZlbllmTWs3ZGsv?=
 =?utf-8?B?VVU3cG1MOCtrVU5ldnJpazZXZk84NnFBUkh2UjA4UjZ5TzJNTlc0NEEvNUJ3?=
 =?utf-8?B?all3VE9NWTVFaC9WOGxsSG04L2xmUnZJY25zQ2wvY3lzdEVWSkhHN2p2QUZL?=
 =?utf-8?B?emZGQ1YxNXJWZDFycHJKMC8ycmdrbjh3T2xQTlYzVk9lVFFlTGkwVEhjTDN5?=
 =?utf-8?B?MFEyQk45M1Y3SW5lZVRZR2FyenlyRnBvMHUwNE1td2Q4SW4yVVJqS2wzY3FE?=
 =?utf-8?B?SkVZeHM2Nnk2cWZHNyt0UkIzV2ZGYmQzVFQ0U1c1WE00QWFURkJCWFJqY09l?=
 =?utf-8?B?alpVZ1hGOHJxNUd6c0RYbHZBOEFqcm9OQ1Q4ZmtyNmZKNEJhd1BmQk1IWVZl?=
 =?utf-8?B?VjZ2a3d4M0NldXNiTzZFWWVJdnJaclk0dTIwUjV1RjlKSXJUNUdTQ3Fuc3Ja?=
 =?utf-8?B?alA0eStTeVl5OGV2UjFKVVF1WnRuTFI4U1I0MUs2dVVWOFRMTFU4Y3RWVW1q?=
 =?utf-8?B?aWp1SUlsbjFMZjJXRXNDMlJOSDFkN0tDS2NUdjR2bnFud1J0VjZzSkQ5Lzdk?=
 =?utf-8?B?NW8vK1Q5OEZ1bHFhMlY0WU5ocDBIY0tOQ3JOK1NNdmhScGY5NmpySXJBMVNL?=
 =?utf-8?Q?7pD5gZW8VjGTH6l8Ewcg5gARWOv8cM9u?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkwvdG13ZVBUbVBzTGswQTVVdE94TktpODVpUzlraElqbi9KNHFwZ3l3RERJ?=
 =?utf-8?B?K0dZcldoVnRNT3ZFU3kzUHI4cXFxTGNoWXY5SmxaaG5sMVA4R2lVbExnZWk0?=
 =?utf-8?B?dGNkUElGd1grdXlKOHN2d0NQQ2NwanpSUXcvRWJMdE1yRnRZTjN4ZjdoWXFr?=
 =?utf-8?B?Sll1ZklIaEhaTnE3TkgxYXlBcFoyRFI4WXpwOUpFM20rQjJ1aW4xWVdpME5D?=
 =?utf-8?B?cklxcVBjWXVEMm1BZ1MwU1pQMmJFbFQvQ1kySllsRHljYnJqRFVWYUlSdndh?=
 =?utf-8?B?L1MwUTBqVlA1Rk4zeGFsUDFvY0ZSbnEwS0s2SHExVkw4b0FDSDQzSGNnVGw2?=
 =?utf-8?B?NmRKSUlscTExa0UzT2Z1OHcrRnBVRDBXY1Z0V3ZYZmswekJId3lLV1I2Vi9B?=
 =?utf-8?B?YTlSRUFTS0kxSnBqL01iZmo4Rm1GR1VoRzFwN3dMOW5pakE2b1JFM0pFTG1n?=
 =?utf-8?B?VjkwSUZpaGxKM3FtbFYxaGFKRlZDQmhIbDV4dGJFamg3T2dCMzY0d3RDUm4x?=
 =?utf-8?B?cTd3b3NuQnlRV3IzVThZaElRdlozVXlORnhnK2N1a1RRZTMyNkF6TGFXYjRQ?=
 =?utf-8?B?a0NyOUV2U3NVbkR2cyt0ZTgvTDZaUXJBMG9MNk4reS9QQ3JMdjlKajF2UGxi?=
 =?utf-8?B?cDEvTFdKOG1JWS9uVDI4S2dWOEwwenBqWkpuV2c4MlNTelZRYXQ4Zm5lNHNC?=
 =?utf-8?B?eGZON0FIbkpITk1GcG4rQ1M0WE91bE9xUHJNTGcrMXZlMlBmQXFJei94K1VF?=
 =?utf-8?B?QmtvMGg2UGo5ajd0UXF3Yk1LcFBUb1pGWStrKzVVWlZWcDFvTGk0bThTWUtM?=
 =?utf-8?B?QkRHenZ4bkw0T1Q1UksvL0l5a2RaMXUvK3dFNStOYUFVdVY5azcvbW8rb250?=
 =?utf-8?B?aDY0cVhPQ20yS3lvQ0ExTVIxVDFOdEZ4Tm5XenJWaWhqYmljeG1DQ09Temll?=
 =?utf-8?B?YVExK0hRbGI0MS90eUZ1ODgvV1FCUkR4RWdNRVRacXBxSHF2UWlBYzFUejcz?=
 =?utf-8?B?MFc2YU9hR200ZHNhSnlUOW9LZUNnK1IydTl3Q3NjWEp1UjR4am41OXpnaTV2?=
 =?utf-8?B?UEI1M2RKNFQ1Y2drSUgzOWFiYVhVTUpBOGZUVE4vTmFrOVdBSFBhZ05XWUdF?=
 =?utf-8?B?azFXNTVoOHhjVzRzMk5YdFRDREMrWUxQL29uQlRnM1d6SHZrSU5NYTFWOTAw?=
 =?utf-8?B?b0NGRW5zTTVtbEJiTWMrYWVXNlcxbGNtUy9vRG8xQ0VoZ0lHdUxqQVFwQlpF?=
 =?utf-8?B?UDlrVmJseEN3TTRMQUd3YWhUUHpuQ290L2dMajFDMDFCbEU2bVF0UXJaN3Fk?=
 =?utf-8?B?SWlBTzU3TnNBMSszd1NsMU1VWlg1UWRGOHp6dE10aXhSZlV0TU5jang1a0Ew?=
 =?utf-8?B?THpjRkVDUlhnZFpPSUVzUEZnb0VuRzhLRnh5Zzl5NFgveVZCbVg0b2xhNkth?=
 =?utf-8?B?R3NQR1ZlTjF5d2k1clJMT01tNFlySm53a1dhQVlnZHFsTWw1NjltWUdRM2lN?=
 =?utf-8?B?V2syQ3F3T1Bzd3FOVmdBbjdic21BeDZiWUZYY09pZHNESXIrbXJDYm12cDc0?=
 =?utf-8?B?aXMyb3ZuSDhZZ2NZV21QOEUxV1NtaUhQdWVieTIvQjgzdkt0bktLd1ZNYytP?=
 =?utf-8?B?SmNiUmQ3RmFRUWFWRXlOSTZpNzc4anZlSkRMZlA1SnREanBJR3hGS1VzSWtL?=
 =?utf-8?B?S2tRRld6amhXaGs1T3FLV3NHRzhrMGxLbGJpL01DdHBvaXllMUtvWDRQZEU0?=
 =?utf-8?B?dXZiR3I5UGpXMEFvdnFJRm0wRldsN21rRDhLTkdSRDU5aURkN0d2UzNtSWVY?=
 =?utf-8?B?YTlYMlkyMDl1UmxBUDZhWllNZDFZZEFCeWVhNkIrbi9EekZ5RUkrcTNubi8z?=
 =?utf-8?B?d1RjUVp1K2l1cEVvZG8rZlh0S3B2ak82TGNYVVJFUmJBUTFIcnRseEVlbUho?=
 =?utf-8?B?MzBNaDRFcS9UTzZxaGlqVUtFL2pJNHI0VVZEWUFRNVE0L0Q0NVQvQlp6bVI0?=
 =?utf-8?B?Y25sdjhnY054Z2xXR0FvVDEvb2NXakx3S0FhWm10cXVKYjJIR2dMRjF4Nmd2?=
 =?utf-8?B?QmxKZUFJLzdVT0pJcmlaWnB4RmVaekFTRmh4VzlzZWtscnhXeDZod3IyWmt5?=
 =?utf-8?Q?NVJmgIaCkKvnnD62f4PLIiIg0?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83152a96-d35e-435f-db27-08dd4cafde3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2025 04:27:18.7736 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4hpfx9s7YuDAI+yj0dx27sIMiysfGGx7XDIjlf0z+Pmg6qQLsTia2qmcMiP3mCJyrWThoNn9QB1fqwLU78ywg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7749
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAxMywgMjAyNSA0OjQ2IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRml4IGRybV9XQVJOX09OIGlu
IGludGVsX3Bzcl9kaXNhYmxlDQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfcHNyX2Rpc2FibGUgaXMg
ZHVtcGluZyBvdXQgd2FybmluZyBpZiBQU1IgaXMgbm90IHN1cHBvcnRlZC4gT24NCj4gbW9uaXRv
ciBzdXBwb3J0aW5nIG9ubHkgUGFuZWwgUmVwbGF5IHdlIGFyZSBzZWVpbmcgdGhpcyB3YXJuaW5n
LiBGaXggdGhpcyBieQ0KPiBjaGVja2luZyBQYW5lbCBSZXBsYXkgc3VwcG9ydCBhcyB3ZWxsLg0K
DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KDQpOb3RlOiBTaG91bGQgd2UgYmUgbG9va2luZyBpbnRvIHNlcGFyYXRpbmcgdGhlIGNv
ZGUgZm9yIHBhbmVsIHJlcGxheSBhbmQgcHNyIHdpdGggZnVuY3Rpb25zIGJlaW5nDQpTaGFyZWQg
YmV0d2VlbiB0aGUgdHdvIGZpbGVzID8gV2lsbCBtYWtlIGdvaW5nIHRocm91Z2ggdGhlIGNvZGUg
bXVjaCBlYXNpZXIuIEp1c3Qgd29uZGVyaW5nIGlmIHRoYXQNCk1ha2VzIHNlbnNlIGluIHRoZSBm
dXR1cmUgPg0KDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMyArKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCA4NjFlNTBjZWVmODUuLmM3N2ViMWJhM2RiMyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yMTg2LDcgKzIxODYs
OCBAQCB2b2lkIGludGVsX3Bzcl9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ICAJaWYgKCFvbGRfY3J0Y19zdGF0ZS0+aGFzX3BzcikNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQlp
ZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhQ0FOX1BTUihpbnRlbF9kcCkpKQ0KPiArCWlm
IChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFDQU5fUFNSKGludGVsX2RwKSAmJg0KPiArCQkJ
IUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAgCW11
dGV4X2xvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+IC0tDQo+IDIuNDMuMA0KDQo=
