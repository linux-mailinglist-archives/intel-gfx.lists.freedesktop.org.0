Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55155C6CCD3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 06:25:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBEC10E573;
	Wed, 19 Nov 2025 05:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cw2zQKRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B9A10E572;
 Wed, 19 Nov 2025 05:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763529919; x=1795065919;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DZW4JdAqM842aImNea1Sw+r6Omrof57u8xrViAoinKs=;
 b=Cw2zQKRQKbyXLbUpNUhjWYsjP7pPvMVnjf7VtKfDtBqxaabaJAm9/xN1
 F9tlUI/JFtHhr44+imvSWh5hTc3WAX1yZdZoebAGx0PceOFWpZKBnKHnU
 rE/jBr+ve9irvgQGflftSlN9TiF4jeL4x/1aLT1jhLpLDlO7lU92gdImY
 RcQIZgTvYn1HuxOHtKNdESVjvpCudXWb5x0FR1fioFlkBmviecKDI+JKX
 JKrvgJ8g8gNx/PfGdawsYtHhpuYDk5wGaU/nNFS/brAlEZe9YSKtpOGwL
 z+T6Tq2i/shfmM0k0YdC1LpnNBllaFCOSuOWDfaJXKXu0bcKrN9E6HH8m w==;
X-CSE-ConnectionGUID: U4GeuBItSYaLO7oxfNCgYQ==
X-CSE-MsgGUID: rJ27aoJJRW+7bpZGoPlaqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="75888377"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="75888377"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:25:18 -0800
X-CSE-ConnectionGUID: mV4rPLV1R5CdRuefH/w/WQ==
X-CSE-MsgGUID: Q0bXsRyrR1y92iUp8tQ9rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="191200700"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 21:25:18 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:25:17 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 21:25:17 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 21:25:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZoP0AHE0U9znMm97MMgXKongi4adkA8PNRiJQchBtvzHAlzAcxoN7gKzGSkr6TkQSuNiMVqzGfcnTuFDyG6JCRZQzSt+jpGcOD9V/qzB4kYJdUV5HJGBi/bGaYH24itchzzIZ1unwSXytLTuUMe0zT3RBagfmSB9L9E4yJBHytPBt6RN3edjwqPDB2AzTFut3BwYxHWemHXFbQg4IPPlB2vo3v91S/zbORTyJNvSGJ6EpLax48p9PkqE5j7Zdh4x4eSi9r/K4AV5FWCIp+SkdDaZYT2loSioNewTB7sxnQnGizfI81iKlU8fbGIjGlF/zlaSXWdj9fvZ0lGw+SsqiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DZW4JdAqM842aImNea1Sw+r6Omrof57u8xrViAoinKs=;
 b=DN20QSW8qG2wULkl/pQwNzXETWEnj+LKRl5XfF/peARtHoY4Ny+hZfJ5M5u8x/768L7i55fIl5G6tuFVo8zuL9jn4PyjH1UfAaDexa1gA7kBaXIY+85lk+rfFybt8gRY2rYs3+zmqYIiOAylCxeW6vCTrKCYpCMF8ysfLPNgjCl1+58Ntl3Z570lMhf1agyWBX6latSFuvYj1AJaa6LA8rcbayL5xJlziA4yc8WHiJ4X5mekcvVcPOvCc5AMMOdmsEiQM1uXO1Fk3rVjjv9FdVXHmKSGC3fse1opQrcKsD79s8VrGAuDSpa4Mz5R6N/ar+l43PH+ghD5OKS+eEmFVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB6765.namprd11.prod.outlook.com
 (2603:10b6:a03:47b::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Wed, 19 Nov
 2025 05:25:14 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 05:25:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Topic: [PATCH v2 30/32] drm/i915/cx0: Get encoder configuration for C10
 and C20 PHY PLLs
Thread-Index: AQHcV7j3JQuavNj2qUGZgDuJaZ54cLT32AsQgAB+5QCAASL68A==
Date: Wed, 19 Nov 2025 05:25:14 +0000
Message-ID: <DM3PPF208195D8DB216BCC220E9A7775E1DE3D7A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-31-mika.kahola@intel.com>
 <DM3PPF208195D8D197F1979D266EBC18C61E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <DS4PPF69154114F4357BAC59CB90B93E140EFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F4357BAC59CB90B93E140EFD6A@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB6765:EE_
x-ms-office365-filtering-correlation-id: 88ffc1d6-d3a3-4433-3aa9-08de272c04c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VG5kbXMzU3p4ajczSDlTcml3dzhaSngweHc0SW80dkJXdnF4WUUwN2theEtN?=
 =?utf-8?B?SVNqOURjUWVGTG1EczVqd3lsbUNuZndJdnA2SXJDTmhsdXJxQ0NTVE9kVFRw?=
 =?utf-8?B?SVczdmQxUXFYMVBCMG9QNXRKRWtrWm1LZWZNUll4VG1veXhFdyt2cDFOclo2?=
 =?utf-8?B?RnJKT0hBSkJjaDVXd1BuY2d4OVViWUZXdktqZWN6UkNCK1RMQ08wQ1JyRkhi?=
 =?utf-8?B?cGY4K3A3WmFGVDZKTVlTTjA3SjZxMURoa1c0Sk9DRkVPSWZXQzNYaHZTZEhB?=
 =?utf-8?B?SmQxb2IvdUF5VXNiQ2M2eVZ3YjkxOTdJTzArRnMxb2pjQklWNmRPTlNCNXhq?=
 =?utf-8?B?QlpGbEJKOUVRR1kvSm9FUDUrSHRYeTFoTTVGalo1eFJISm1mR2dhd0tBbXR2?=
 =?utf-8?B?WlVDR2FVOEFmalFJbkgwS29IZ3FxYlduU21haWVPNFJvR3NsbU4yakw2M2pu?=
 =?utf-8?B?bC9wUVBFV2dsSXVyUHJIYzdieEw4OWpKTzBsdmJIczk5bnkxNnBldjZCS2dk?=
 =?utf-8?B?MnRvSS9TMHVBZ0xhZGlWL0lIdEtiampWNytIc3NhM0NzWDVlYlE2Z2dzMkR5?=
 =?utf-8?B?d2c5SElYamRIS1dPMGd4c3FmVHN2OE8yLzl4ekdVV1IxM2pPOUk4VVo3UldT?=
 =?utf-8?B?SENjUHc5TE9rM1ordEFJK2JBeGRXNmZPc3dZZDZGOUFZTklLME1wNzJhclRF?=
 =?utf-8?B?RmdKRHBWUVkvQnRjUTQwOHk2SXpGUU9oUDU1Y2Z4Y20yZFRLTFlFdmxVR241?=
 =?utf-8?B?azFQR2xRcXg1QnpFZGV6RElzeGdtbXJuMGZCdTNHZThuSlJ3RVI0bTFDT003?=
 =?utf-8?B?bzd3SCt6NENzcDJlWWVGcTJraVlQMWhVYTgyZk1uVGpHdXBCUERXY3N2T1h3?=
 =?utf-8?B?UHNrY0RaOGxCZzBISURmYmhoNjhRZFdYaHA4S3BuK2FBanhvZzFZYndRSjNC?=
 =?utf-8?B?TjlZT3FiZTRMZVBKL1paZVlKYi9YRjN6cmV0ekR5dll1MTlRcHdZejZRN2Fk?=
 =?utf-8?B?cm5tUFBtRnZUYXFlaFZvNzJ4dDlLOU1TN0RuK2pSRUh4TVBLTjNPSEVYdVZh?=
 =?utf-8?B?dTFFY0oxUk8vUnplUzJqMEtIV1BCSDlpdldRejB5NDIyZkFlYmhLN3V3U0hz?=
 =?utf-8?B?VXMwRFlQMjZ4eFFWTTV1d05IZzE1NjFDaC84WTlENzcvSlhtSGc4RGZZZWxa?=
 =?utf-8?B?dEVNclNDMTNVejVvK0E1RVZZVDh2VWJzcjNXek1BQ1dCeGZubTFmMG5JMEZa?=
 =?utf-8?B?Y0dHSVV5MUtYcmJCL0RWdWtoOGhQTXJ0MWdjSEtWTjdJQlRMY0JvNTc3cFE1?=
 =?utf-8?B?V0puYWZHTExrSCtWN0t0TFM4UWxVbUtmMTBheG1LSTVzSzBkYjZWNkFKNVU0?=
 =?utf-8?B?Q2I3MXFnK3Zxa1N1ek5nSWJYQUNNRUV4dU51NzhyY2EvS2tOd256RFAwZmE4?=
 =?utf-8?B?N1d4MThyVXJiS2k3VGZrS1BtcGpnQm9TajJ4OWlXbXNxVTc4K0g5Si9FZlhm?=
 =?utf-8?B?eUtxWUpnN1Q1MDZhZFFRcUQ5T1k1Y0JNcHVtR3NnT29tYll3c2EySEdFZi8y?=
 =?utf-8?B?bktwT2FQcTllZjJoMGgxMDZsTzE3K0hCaExzZnZwWVNNeUdZQVd4MCtPS1Jn?=
 =?utf-8?B?U0VXWXNkcTRHUEl4Wlp1V2tyRW9jQWxSMXNtck1Xc20wUEdkT0p3d2FkOFp4?=
 =?utf-8?B?UGxxQVI0bDU0MlJTWFdvUFM5NDcxRlhyUGNnU2NjdlVoamhmV1dGNkROekxw?=
 =?utf-8?B?WHlKazZ3dkc4OUJTOGJoN0xFc1BSU2xNNDlGT05tYW9xV2l3dVQ3Q21tbVAr?=
 =?utf-8?B?bW85RUxSTzA1dHpGVHVsME5GYml0MnZiNUtJQU5YWUU5REtjWGNPZ1QyblRM?=
 =?utf-8?B?MFFhRnQrTS8zb1g2cERTSVNscXg2MFNFdlFxa1B2U1NMWXRvaVpnWmtXanlE?=
 =?utf-8?B?M203ejhyOVpSV0l0dFNTOThTZUZBQW9IbUJwdjdXRGg1UWVhTXk1enZubVM1?=
 =?utf-8?B?VzhHSllSQXRlNUIvWXNmc2FEYkcyN1NzbWQvc2pGNFZ3eEJpaC9lcTRvTFMr?=
 =?utf-8?Q?SnGWN/?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MStQamFVSDBWZ2JCdUlieXh4YkJFd0FWLzh4SHpBZ1BWUFZ3enVhaDJmZ3Vv?=
 =?utf-8?B?WW5JWXd4MjNCRDE3bG9iNUlhbXE5UVlmWlU0dDFBRUt4Y1RkeG1JUGZlZG02?=
 =?utf-8?B?VWRuaGpNR29UOWlyNnNqMTRWYzBHTGozRG4yc0wyTzhwNjZvaStZQm80a1NF?=
 =?utf-8?B?elhKekpQWk53N1FKYWR3RTZKZWwzTC9uKzA1akNwT3ZmaGJkL1FqNGRrMW9M?=
 =?utf-8?B?cTNoWGs3S1BHeGtTUDUvYTRabTljZVVsVERnN0JtOTJ1Rk1rWjQ4bjNVTDRU?=
 =?utf-8?B?b3g5aTdMUzZjbUYwQS9odjNVSTZ5akg1bXkvem0xREJpcnhuN1hXWjhkODdP?=
 =?utf-8?B?ZnEvYmZjNlBXdExFYUdyelZqZVRlZ0pCZHBBam5EZ2l1NVZNTFZEODIzaGJx?=
 =?utf-8?B?VS9LVnJtYTBHNTVCUkhmZGdmMXJTR28waGpPeXdUVW5LQ0o4ZXRjZFVPOVJ6?=
 =?utf-8?B?dFJmU3pBajhJM1NiM0FxU1NLZTRLODgxRldvY0Z1OXlicTlrZ05uSDNpMmNG?=
 =?utf-8?B?NzdBWk1iMkNELzk3MlAwR2F5ZGdXN3RRQjJQVWJjMTc3QTZCdmYveG94QnBO?=
 =?utf-8?B?MDZnbVhwb2U1eDZYWTEzcVRabVR1WmZXK29JakVPbUo0TWlwNTZlR1BGSFlT?=
 =?utf-8?B?Qi8ybENORDFnQnBnMDFtRUh0RU1jTnhlbU8zSnZUTS92b01kQTRldld4OXZV?=
 =?utf-8?B?Z0tvK29rOURlVHZWYXVnZHBoakY0WG9ZVFFXMkVUeldXbGlXZmZxRWRyZHpP?=
 =?utf-8?B?YmY2d3NodjhuZ2s3Nnlxd3hFUDlpS2t3Ujl2ZlE1bHdReU85dlZUT0s3ODFs?=
 =?utf-8?B?K005QlN6VFBDOEIvOWZDZnhaUE55dTVXNmp3R3BLSzdpeUNaNnFob1pGVlIv?=
 =?utf-8?B?aFpjbDkxTk5uNEZrbU9Fd0l3TTlkc2ZFb2RYR0tUWExHR3BpMFZkTmlka0sw?=
 =?utf-8?B?NmlkL0wvcHBZa2xvVzJLMFhlY091UVdMYWZLK2x6QmJjdHBMc1JZdXd4MXhT?=
 =?utf-8?B?VjR0dkx5b29ybmZraVFicEptREdsdXQrVnZtREFqY0FqQWsvSm16cVRtRTZH?=
 =?utf-8?B?S1RNMG1UWm1xVEE2ZkZXM2F6M1lrdkRjdzVsM2tZZ241ZGpnR3RjdmF4dVFJ?=
 =?utf-8?B?RmhDQ09RVTJBZmN0YkVPNWxzTDBNMXh3WmI3c25PUWxZUzJLZU5ab0pYeGdC?=
 =?utf-8?B?ajB2MmdIWCtTSlJOYUc2ZjhuclUyRlVtaGVuNFFHUjIvcFVuSjZvRkdMR050?=
 =?utf-8?B?SHhxcTBiTElLdEFMOVNwR3p0dlNqdUhjemxwTTVUb0Y2RnBPcFhnMDZZNUwy?=
 =?utf-8?B?UXN2WWhlT1h4V2NaRmpKb0F0UVRoRnl2TmZJWTNuc3RoTFlCSzhhSXB1TFIv?=
 =?utf-8?B?QS9ZdXFyWE9rNkFDd2JFTE4xQ0ZxWGlSK0c5S1BTeEdXT2hwRnlEZ0hSMm8y?=
 =?utf-8?B?TFRKK0M1SFdaMmNrT21IanpmMjhVZ3ZZeUU5dEJReElRUnAwd0dsWG5peGdN?=
 =?utf-8?B?Y3o2b2VldlRZWWoxTnJDOHczVUdsK1lKcEVTNXpHRVR5TXBlcGZZOWFaZ2J2?=
 =?utf-8?B?UFkwZnlsVFJLb3U3d09sZzE3S0x0UGRJR3Y3MnNLclJmZitKeGpkRHM5NUJa?=
 =?utf-8?B?enNYeUltelJpaFhzNnl4MmRrYkRtUTlzSTZISDBVMFFETit1bmtuZFk5WndV?=
 =?utf-8?B?YjliZkZacWVYVldpTlkyOUxKU2FXZkVickEyd0x2cGZSY1RSTEpqN1FjaStZ?=
 =?utf-8?B?MXVpMkRWWkRJWGxPaVhhd09BSG15N1RGeUJ3QkxzWlZ1ZEhkM21tbkhTN2ZM?=
 =?utf-8?B?TTZLV3ZsMVh6NGFneDhnWU5kUURoWEZrYUoxTlVCdVIxeEtwYW9GWlk4TjNj?=
 =?utf-8?B?R2RtOTNMa3RxNEJHeTZrWWxFNERjeFVmUUNUeTVnbFF0ZmprMCs3TnJVZ0Jp?=
 =?utf-8?B?WVhTMVFaR2kxZXdiUHBEL3ZRbTg0NEs3VWxHVitoSEFPb3h3bGZaVC9rVk56?=
 =?utf-8?B?ZGtHQjY1UVRzN3RmcWF5Ylp6NnVmM2VwSVB0OGFCUllYazg3TVNkL2phVUFV?=
 =?utf-8?B?T2xJd1BRT2FNUjl0VmZ4cER1ZVNzbG9RTE5nZVVVMktoOVhXWlBlZVVia3k0?=
 =?utf-8?Q?DAo+HWwMu0d1yepRCvhnI9uT+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ffc1d6-d3a3-4433-3aa9-08de272c04c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 05:25:14.5444 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AbI1FZkQivUt+nQXGbwKe0G50FaLI0Iatgh94AEdvke3aStB+OkPGtc2NBNPl1cjSdLbPBHD3yj8aQyGsCczzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6765
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

PiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0ggdjIgMzAvMzJdIGRybS9pOTE1L2N4MDogR2V0IGVuY29k
ZXIgY29uZmlndXJhdGlvbg0KPiA+IGZvciBDMTAgYW5kIEMyMCBQSFkgUExMcw0KPiA+DQo+ID4g
PiBTdWJqZWN0OiBbUEFUQ0ggdjIgMzAvMzJdIGRybS9pOTE1L2N4MDogR2V0IGVuY29kZXIgY29u
ZmlndXJhdGlvbg0KPiA+ID4gZm9yDQo+ID4gPiBDMTAgYW5kIEMyMCBQSFkgUExMcw0KPiA+ID4N
Cj4gPiA+IEZvciBEREkgaW5pdGlhbGl6YXRpb24gZ2V0IGNvbmZpZ3VyYXRpb24gZm9yIEMxMCBh
bmQgQzIwIGNoaXBzLg0KPiA+ID4NCj4gPiA+IHYyOiBHZXR0aW5nIGNvbmZpZ3VyYXRpb24gZWl0
aGVyIGZvciBhIEMxMCBvciBvbiB0aGUgUFRMIHBvcnQgQg0KPiA+ID4gICAgIGVEUCBvbiBUeXBl
QyBQSFkgY2FzZSBmb3IgYSBDMjAgUEhZIFBMTC4gSGVuY2UgcmVmZXIgdG8gdGhpcw0KPiA+ID4g
ICAgIGNhc2UgYXMgIm5vbl90Y19waHkiIGluc3RlYWQgb2YgImMxMHBoeSIuDQo+ID4gPg0KPiA+
ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiA+ID4g
U2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+
IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCA4
MQ0KPiA+ID4gKysrKysrKysrKysrKysrKysrKysrKy0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDc1IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gaW5kZXggYmUyNWE2
ZmRkNDkxLi42ODliZDMyMjQ5MTkgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiBAQCAtNDI3Myw2ICs0MjczLDc3IEBAIHN0YXRp
YyB2b2lkIG10bF9kZGlfZ2V0X2NvbmZpZyhzdHJ1Y3QNCj4gPiA+IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ID4gPiAgCWludGVsX2RkaV9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUp
OyAgfQ0KPiA+ID4NCj4gPiA+ICtzdGF0aWMgYm9vbCBpY2xfZGRpX3RjX3BsbF9pc190YnQoY29u
c3Qgc3RydWN0IGludGVsX2RwbGwgKnBsbCkgew0KPiA+ID4gKwlyZXR1cm4gcGxsLT5pbmZvLT5p
ZCA9PSBEUExMX0lEX0lDTF9UQlRQTEw7IH0NCj4gPiA+ICsNCj4gPiA+ICtzdGF0aWMgdm9pZCBt
dGxfZGRpX2N4MF9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+
ID4gKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ICsJ
CQkJICAgZW51bSBpY2xfcG9ydF9kcGxsX2lkIHBvcnRfZHBsbF9pZCwNCj4gPiA+ICsJCQkJICAg
ZW51bSBpbnRlbF9kcGxsX2lkIHBsbF9pZCkNCj4gPiA+ICt7DQo+ID4gPiArCXN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiA+ICsJ
c3RydWN0IGljbF9wb3J0X2RwbGwgKnBvcnRfZHBsbDsNCj4gPiA+ICsJc3RydWN0IGludGVsX2Rw
bGwgKnBsbDsNCj4gPiA+ICsJYm9vbCBwbGxfYWN0aXZlOw0KPiA+ID4gKw0KPiA+ID4gKwlwb3J0
X2RwbGwgPSAmY3J0Y19zdGF0ZS0+aWNsX3BvcnRfZHBsbHNbcG9ydF9kcGxsX2lkXTsNCj4gPiA+
ICsJcGxsID0gaW50ZWxfZ2V0X2RwbGxfYnlfaWQoZGlzcGxheSwgcGxsX2lkKTsNCj4gPiA+ICsN
Cj4gPiA+ICsJaWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgIXBsbCkpDQo+ID4gPiArCQly
ZXR1cm47DQo+ID4gPiArDQo+ID4gPiArCXBvcnRfZHBsbC0+cGxsID0gcGxsOw0KPiA+ID4gKwlw
bGxfYWN0aXZlID0gaW50ZWxfZHBsbF9nZXRfaHdfc3RhdGUoZGlzcGxheSwgcGxsLCAmcG9ydF9k
cGxsLT5od19zdGF0ZSk7DQo+ID4gPiArCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgIXBsbF9h
Y3RpdmUpOw0KPiA+ID4gKw0KPiA+ID4gKwlpY2xfc2V0X2FjdGl2ZV9wb3J0X2RwbGwoY3J0Y19z
dGF0ZSwgcG9ydF9kcGxsX2lkKTsNCj4gPiA+ICsNCj4gPiA+ICsJaWYgKGljbF9kZGlfdGNfcGxs
X2lzX3RidChjcnRjX3N0YXRlLT5pbnRlbF9kcGxsKSkNCj4gPiA+ICsJCWNydGNfc3RhdGUtPnBv
cnRfY2xvY2sgPQ0KPiBpbnRlbF9tdGxfdGJ0X2NhbGNfcG9ydF9jbG9jayhlbmNvZGVyKTsNCj4g
PiA+ICsJZWxzZQ0KPiA+ID4gKwkJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGludGVsX2RwbGxf
Z2V0X2ZyZXEoZGlzcGxheSwgY3J0Y19zdGF0ZS0NCj4gPiA+ID5pbnRlbF9kcGxsLA0KPiA+ID4g
KwkJCQkJCQkgICAgICZjcnRjX3N0YXRlLQ0KPiA+ID4gPmRwbGxfaHdfc3RhdGUpOw0KPiA+ID4g
Kw0KPiA+ID4gKwlpbnRlbF9kZGlfZ2V0X2NvbmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsgfQ0K
PiA+ID4gKw0KPiA+ID4gKy8qDQo+ID4gPiArICogR2V0IHRoZSBjb25maWd1cmF0aW9uIGZvciBl
aXRoZXIgYSBwb3J0IHVzaW5nIGEgQzEwIFBIWSBQTEwsIG9yDQo+ID4gPiAraW4gdGhlIGNhc2Ug
b2YNCj4gPiA+ICsgKiB0aGUgUFRMIHBvcnQgQiBlRFAgb24gVHlwZUMgUEhZIGNhc2UgdGhlIGNv
bmZpZ3VyYXRpb24gb2YgYSBwb3J0DQo+ID4gPiArdXNpbmcgYSBDMjANCj4gPiA+ICsgKiBQSFkg
UExMLg0KPiA+ID4gKyAqLw0KPiA+ID4gK3N0YXRpYyB2b2lkIG10bF9kZGlfbm9uX3RjX3BoeV9n
ZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gKwkJCQkJICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiA+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ID4g
PiArDQo+ID4gPiArCS8qIFRPRE86IFJlbW92ZSB3aGVuIHRoZSBQTEwgbWFuYWdlciBpcyBpbiBw
bGFjZS4gKi8NCj4gPg0KPiA+IElzIHRoZSBjb21tZW50IG5lZWRlZCBhbnltb3JlDQo+IA0KPiBB
dCB0aGlzIHBvaW50IG9mIHBhdGNoIHNlcmllcywgd2UgZG9uJ3QgaGF2ZSBwbGwgbWFuYWdlciB5
ZXQgaW4gcGxhY2Ugc28gd2UgY2FuDQo+IGtlZXAgdGhpcyBjb21tZW50IGZvciBhIHdoaWxlLiBU
aGUgbGFzdCBwYXRjaCB0aGF0IGVuYWJsZXMgcGxsIG1hbmFnZXIgYW5kDQo+IGZyYW1ld29yayB3
aWxsIHJlbW92ZSB0aGlzIGNvbW1lbnQuDQo+IA0KPiA+DQo+ID4gPiArCW10bF9kZGlfZ2V0X2Nv
bmZpZyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsNCj4gPiA+ICsJcmV0dXJuOw0KPiA+DQo+ID4gV2h5
IHRoZSBlYXJseSByZXR1cm4gY29kZSBhZnRlciB0aGlzIHBvaW50IHRoZW4gc2VydmVzIG5vIHB1
cnBvc2UuDQo+IA0KPiBJdCBzZXJ2ZXMgYSBwdXJwb3NlIHRoYXQgaW4gdGhpcyB3YXkgdGhlIHBh
dGNoIHNlcmllcyBpcyBiaXNlY3RhYmxlIGlmIHdlIG5lZWQgdG8NCj4gZG8gdGhhdCBvbmUgZGF5
LiBUaGlzIHdpbGwgYmUgcmVtb3ZlZCBieSB0aGF0IGxhc3QgcGF0Y2ggb2YgdGhlIHNlcmllcy4N
Cj4gDQo+ID4NCj4gPiA+ICsNCj4gPiA+ICsJbXRsX2RkaV9jeDBfZ2V0X2NvbmZpZyhlbmNvZGVy
LCBjcnRjX3N0YXRlLCBJQ0xfUE9SVF9EUExMX0RFRkFVTFQsDQo+ID4gPiArCQkJICAgICAgIG10
bF9wb3J0X3RvX3BsbF9pZChkaXNwbGF5LCBlbmNvZGVyLT5wb3J0KSk7IH0NCj4gPg0KPiA+IEhh
dmUgdGhlIHBsbCBpZCBpbiBpdHMgb3duIHZhcmlhYmxlLg0KPiANCj4gSSB0aGluayB0aGlzIGNo
YW5nZSB3b3VsZCBjb21lIGRvd24gdG8gY29kZSByZWFkYWJpbGl0eS4gSW4gbXkgdGFzdGUgdGhl
DQo+IGZ1bmN0aW9uIGNhbGwgdG8gbXRsX3BvcnRfcGxsX2lkKCkgaXMgbm90IHRvbyBjb25mdXNp
bmcgYW5kIGhlbmNlIHdvdWxkIGJlIG9rIHRvDQo+IHVzZSBhcyBpcy4NCj4gDQo+ID4NCj4gPiA+
ICsNCj4gPiA+ICtzdGF0aWMgdm9pZCBtdGxfZGRpX3RjX3BoeV9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ID4gKwkJCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZW5jb2Rlcik7DQo+ID4gPiArDQo+ID4gPiArCS8qIFRP
RE86IFJlbW92ZSB3aGVuIHRoZSBQTEwgbWFuYWdlciBpcyBpbiBwbGFjZS4gKi8NCj4gPg0KPiA+
IE5vIG5lZWQgZm9yIHRoaXMgY29tbWVudA0KPiANCj4gVGhpcyBpcyByZW1vdmVkIGJ5IHRoZSBs
YXN0IHBhdGNoLg0KPiANCj4gPg0KPiA+ID4gKwltdGxfZGRpX2dldF9jb25maWcoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSk7DQo+ID4gPiArCXJldHVybjsNCj4gPg0KPiA+IFNhbWUgcXVlc3Rpb24gIHdo
eSB0aGUgZWFybHkgcmV0dXJuID8NCj4gDQo+IFRoaXMgaXMgYWdhaW4gZm9yIGJpc2VjdGFibGl0
eSBvZiB0aGUgcGF0Y2ggc2VyaWVzLg0KPiANCj4gPg0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoaW50
ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpKSkNCj4g
PiA+ICsJCW10bF9kZGlfY3gwX2dldF9jb25maWcoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gPiA+
IElDTF9QT1JUX0RQTExfREVGQVVMVCwNCj4gPiA+ICsJCQkJICAgICAgIERQTExfSURfSUNMX1RC
VFBMTCk7DQo+ID4gPiArCWVsc2UNCj4gPiA+ICsJCW10bF9kZGlfY3gwX2dldF9jb25maWcoZW5j
b2RlciwgY3J0Y19zdGF0ZSwNCj4gPiA+IElDTF9QT1JUX0RQTExfTUdfUEhZLA0KPiA+ID4gKwkJ
CQkgICAgICAgbXRsX3BvcnRfdG9fcGxsX2lkKGRpc3BsYXksIGVuY29kZXItDQo+ID4gPiA+cG9y
dCkpOyB9DQo+ID4NCj4gPiBZb3UgY2FuIGhhdmUgdGhlIHBsbCBpZCBhcyBpdHMgb25lIHZhcmlh
YmxlIEluIGZhY3QgeW91IGNhbiBjYWxsDQo+ID4gbXRsX2RkaV9jeDBfZ2V0X2NvbmZpZyBqdXN0
IG9uY2UgaWYgeW91IGhhdmUgYm90aCBwb3J0IGFuZCBwbGwgaWQNCj4gPiB2YXJpYWJsZXMgYXNz
aWduZWQgQWZ0ZXIgY2hlY2tpbmcgaWYgaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUNCj4g
DQo+IFRoaXMgY291bGQgYmUgd3JpdHRlbiB0aGF0IHdheSB3ZSBzZXQgdGhlc2UgcGxsIGFuZCBw
b3J0IGlkJ3MgYXMgdmFyaWFibGVzIGFmdGVyDQo+IGNoZWNraW5nIGlmIGludGVsX3RjX3BvcnRf
aW5fdGJ0X2FsdF9tb2RlKCkuICBIb3dldmVyLCB0byBtZSB0aGlzIGNoYW5nZQ0KPiB3b3VsZG4n
dCBpbXByb3ZlIGNvZGUgcmVhZGFiaWxpdHkgYnV0IHNpbXBseSB3b3VsZCBiZSB3cml0dGVuIGRp
ZmZlcmVudGx5Lg0KPiANCj4gVGhhbmtzLA0KPiBNaWthDQo+IA0KDQpGYWlyIGVub3VnaA0KDQpS
ZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoNCj4g
Pg0KPiA+IFJlZ2FyZHMsDQo+ID4gU3VyYWogS2FuZHBhbA0KPiA+DQo+ID4gPiArDQo+ID4gPiAg
c3RhdGljIHZvaWQgZGcyX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLA0KPiA+ID4gIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsg
QEAgLQ0KPiA+ID4gNDMxMCwxMSArNDM4MSw2IEBAIHN0YXRpYyB2b2lkIGljbF9kZGlfY29tYm9f
Z2V0X2NvbmZpZyhzdHJ1Y3QNCj4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gPiAg
CWludGVsX2RkaV9nZXRfY29uZmlnKGVuY29kZXIsIGNydGNfc3RhdGUpOyAgfQ0KPiA+ID4NCj4g
PiA+IC1zdGF0aWMgYm9vbCBpY2xfZGRpX3RjX3BsbF9pc190YnQoY29uc3Qgc3RydWN0IGludGVs
X2RwbGwgKnBsbCkgLXsNCj4gPiA+IC0JcmV0dXJuIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9J
Q0xfVEJUUExMOw0KPiA+ID4gLX0NCj4gPiA+IC0NCj4gPiA+ICBzdGF0aWMgZW51bSBpY2xfcG9y
dF9kcGxsX2lkDQo+ID4gPiAgaWNsX2RkaV90Y19wb3J0X3BsbF90eXBlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiA+ID4gIAkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkgQEAgLTUyNjAsNw0KPiA+ID4gKzUzMjYsMTAgQEAgdm9pZCBpbnRlbF9k
ZGlfaW5pdChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiA+ICAJCWVuY29kZXIt
PmVuYWJsZV9jbG9jayA9IGludGVsX210bF9wbGxfZW5hYmxlX2Nsb2NrOw0KPiA+ID4gIAkJZW5j
b2Rlci0+ZGlzYWJsZV9jbG9jayA9IGludGVsX210bF9wbGxfZGlzYWJsZV9jbG9jazsNCj4gPiA+
ICAJCWVuY29kZXItPnBvcnRfcGxsX3R5cGUgPSBpbnRlbF9tdGxfcG9ydF9wbGxfdHlwZTsNCj4g
PiA+IC0JCWVuY29kZXItPmdldF9jb25maWcgPSBtdGxfZGRpX2dldF9jb25maWc7DQo+ID4gPiAr
CQlpZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNvZGVyKSkNCj4gPiA+ICsJCQllbmNvZGVyLT5n
ZXRfY29uZmlnID0gbXRsX2RkaV90Y19waHlfZ2V0X2NvbmZpZzsNCj4gPiA+ICsJCWVsc2UNCj4g
PiA+ICsJCQllbmNvZGVyLT5nZXRfY29uZmlnID0NCj4gbXRsX2RkaV9ub25fdGNfcGh5X2dldF9j
b25maWc7DQo+ID4gPiAgCX0gZWxzZSBpZiAoZGlzcGxheS0+cGxhdGZvcm0uZGcyKSB7DQo+ID4g
PiAgCQllbmNvZGVyLT5lbmFibGVfY2xvY2sgPSBpbnRlbF9tcGxsYl9lbmFibGU7DQo+ID4gPiAg
CQllbmNvZGVyLT5kaXNhYmxlX2Nsb2NrID0gaW50ZWxfbXBsbGJfZGlzYWJsZTsNCj4gPiA+IC0t
DQo+ID4gPiAyLjM0LjENCg0K
