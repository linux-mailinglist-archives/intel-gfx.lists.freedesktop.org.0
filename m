Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D79BEB1D869
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1069410E847;
	Thu,  7 Aug 2025 12:57:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oaxj9tRE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1CD510E83F;
 Thu,  7 Aug 2025 12:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754571462; x=1786107462;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=x5PoE0cEqx/+pRm0RDIYJ/yJbzg/OcKf9YsnHUcI6yM=;
 b=Oaxj9tREf7HxDwKj8qv+J7wmd0Q7ZEk3yuljAzz3EQwKZFI3xY1jeEO7
 uVanWc9ih7m1hJ/A/E1Law3SZHT+r5W6MQbIojJ06bziGSpK7OcUS+IF5
 gjyBTNtPRA8QHMbGYjAVFXX83TO7421e73dp4XYb6MrVwM4UrB/IODkq/
 +mif02XVyXS+3DXcwwC85+l6HyK7mEfIKENCsx8AMZXQSTWPBU/2wVM3O
 +nNnpDyx/CBuV2H/y9YYuoo8oPzPA6kQae85x2jKxUIXMh+PLXHpJF2zA
 bsdkceXc8AYtJlLEVMFcEL4neqzJXKIXcoUbn5sOF9kmPpSNTT3yqtWo6 Q==;
X-CSE-ConnectionGUID: vS0mfOQRSbSD4z2thlSOJg==
X-CSE-MsgGUID: lUp5Q+STSOawM6E7s6jNHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="68358594"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="68358594"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:57:42 -0700
X-CSE-ConnectionGUID: 7Pwht8AZTJegmvPG+dGH4A==
X-CSE-MsgGUID: gxm8pBASS22rq6D2ydMJTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="169306780"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:57:41 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:57:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:57:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.46) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:57:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a1du3KrSGXSmXj2TyLOscJE96J9aF1MvJzYWEoMqDnUJKjwIUw9f56rs2fn29fXo9aBuL0eBQV48JoJf+wt7KmosTA8x3nbu2Mq8TX6WX2Y/EAytIzytCNB14j2BhSC3+KEUZOeibkB2VglyXMq9kciYzLfyuhHHGky1Xk5wv30hfGjKzC+NYqNhKNASBn9dMlQ8hUoNcYWsBK5X/J6rYJV2xv3Fe+ApX50G2MitMeFQBIgPkD1yVM5lPU0PUcchhx/LZaSUtAngRyEMJWLk75uDhuSAbdO4k/osj73ms+2bl6zNW0h348OW70AE2n/pPnNJyZiyCxOh2LzwYfShKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x5PoE0cEqx/+pRm0RDIYJ/yJbzg/OcKf9YsnHUcI6yM=;
 b=y8UZ4mIVxqOiHTIxzOZs1PKOtGpAMI8+qbNdIqJonqQLl5RyWsHQ2P22yRIvqp49xtM9TjwdJL0dA2lzsxSTagVT8GuPEfkScaHcjnCEx6cCmUb+SfUjyC6uQor/6/l0sXTFFa68zJJYViQFDv12EGcS1Czi4w8wzG8cIN8y/vo+aBOrAyRQoTY4TrDOPe3j/84zQuro2MZHEr+zL+ny0f56/CUalL801S3rBHeFTAlvjo5CpnagWKGGf2ChrgFMuFtoz+1CKbr4FxmjoSWhE3/2W6ggOJ5gMckmWqOZwWMcT1AHzbN3wyO7EFioBlCnVvvfAQ9Sjy/MCYO7T9wkMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL3PR11MB6387.namprd11.prod.outlook.com
 (2603:10b6:208:3b7::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Thu, 7 Aug
 2025 12:57:38 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 12:57:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 11/19] drm/i915/tc: Handle pin assignment NONE on all
 platforms
Thread-Topic: [PATCH 11/19] drm/i915/tc: Handle pin assignment NONE on all
 platforms
Thread-Index: AQHcBd1vBvFoW5CTBkiEyU/UYzr037RXKeIA
Date: Thu, 7 Aug 2025 12:57:38 +0000
Message-ID: <DS4PPF69154114F4DE07547F2A4B94443EDEF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-12-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL3PR11MB6387:EE_
x-ms-office365-filtering-correlation-id: c34e81c8-e980-4a29-1348-08ddd5b1fd06
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NDUxS0FTQmYxNmJnek9CSGc5RStkQ0dpcTFBOHZRcDI4M2U1alU1TVd4Qkw1?=
 =?utf-8?B?RXFTWjYvVjIzcU1keFpUcFpKaXJRUWs3c2k0VEo2cVNwUmZMNnFpajRpaDFX?=
 =?utf-8?B?SWFlRWI1d24yN3BiejNCWlc0WEJ3ZUpaSkEvRWp4VkE2MkJYNkxHc0JqRUNM?=
 =?utf-8?B?VzBzZDZybWhiRUlCSER2RmlHdVZHNTBtUnFVR1FrQ1lncUZYYjFqcjdVV0ph?=
 =?utf-8?B?TFBEWU0rUU9SWXJHVngySTVHM3VqRHdtazRZSlNJc2t3Rkt1THRRdVdzSlJ0?=
 =?utf-8?B?dnl3eDRZem55aGx5Qkdpa2lPQ212MzRDaXVHTXdSU1BqS1lzaTIwbVR2R2pF?=
 =?utf-8?B?Y1pzSjNYQnZQNkw2aFFzQ1VTc3VYSXJVQS8zNTNyVzJPa1dlUkVZSFJQZkhX?=
 =?utf-8?B?UDdhaWxzRzgrQ3pPc3l1SVQ3UUFIay9ZcHRYMGVBQXJNeDA5RnZBN1R3STUr?=
 =?utf-8?B?amN3d09TOEVqZGE5ZHBibEVJcTJzWk5KTm9PUnpia25CdEp6VE1oTlY3SndG?=
 =?utf-8?B?YUNJank0U2ZBaEZvVmRJZktQUmdKZzlITUlnd2Y2N1dhNmIwWVZRWU5LWEdB?=
 =?utf-8?B?YzRXdUdtOW9FeUdJS0lqUmorQkpyTVlVaUNCMktKMDhoNGJhaDRJTzAxL0Rh?=
 =?utf-8?B?M0EyK1ZHUW8zWC9xQytkU3dBcmswbFJOeklrak03Tyt4N2orZDk4YTV2YWt5?=
 =?utf-8?B?VjVINWZNRHlhYWM0TGFQeDNXRTZEZzljSWlEQkI3akdVM0l0YitTNzdLMVYz?=
 =?utf-8?B?ejgzMC91OTJDalFDamRSdFkrcGsyWE1CR0tna29uZmRZMmZYaFlCTE12bmpN?=
 =?utf-8?B?K2pVTHJpQzJFQjZ4TjdZdjFpRmErbFB4dTB3djNBRFdXR2lMWlpsUGJ0ZXNn?=
 =?utf-8?B?TVNzaXdleDduMVYwYWI1ZEhrWWxqZ2l5blhOVk4vLzk0djNGTmdSOWxlYzJx?=
 =?utf-8?B?UjZXa29oMU9XejBYRzZiMHB5NksrZUMwS0tyVExORk03YTZibmhaaloyc01W?=
 =?utf-8?B?TG5uYUExWkpOdm1pT2piTHgxWmtIYzN3a0paOHFPMXZ5Y0tadGpyRkFnOS9K?=
 =?utf-8?B?OXFmNXI5OUgyL0R4ZU1jQnB4eWpQc2Y5RVIxVnRHTzlVVGVqUGNFTHFOTzZh?=
 =?utf-8?B?TWRzTnpUSmNSaXJMVyt3NWtRRyt1a3AyZFZDek9VUDQwUXdmRzVLQTJLa1Rl?=
 =?utf-8?B?QkFoZUU0ZVVFYlN3ZTg1OTdhTHFtMlY1cFVWWWE0ODRTa1RoaGpNRTh1NDA4?=
 =?utf-8?B?blVyelJtUXdiMTFQWmlVdnBSVUdhVFhueU55NFY0OTVCSVdiT3BYbHI4QTY3?=
 =?utf-8?B?WkpLWWZuMjVwd3FCeHFEWEg4Vm1GbG5xMWh4ZzFnUXRnZ0EzeDhOcHQydllq?=
 =?utf-8?B?QTBnQ0pvME1ZMlhlRC9za2t4cnJKaGdhRWFwVjFqWHY4S3J0ZWVxa2lETmlr?=
 =?utf-8?B?b2MxK0xsdWRucEF2WUViMURvNUlpRUx2WEYzRWJvS3NRUGp2bUpxbCs2eHNw?=
 =?utf-8?B?OTM1czNMTU5EQS9KZnB0UUx4aVk2b2tlS1VUTFRMeFppMUl3a29uVjlNc0hS?=
 =?utf-8?B?QU4wZE12OGxMcnlSWVcyYTIyN09lZHVwYml2V2hYNzNKUy9NVTREQ0xrUnM1?=
 =?utf-8?B?b1U1RDZNWDZ6VlN3YVJIaElTYklQOHpNRUhrV21nM2hOUHRwcjA1Nzl2VHRX?=
 =?utf-8?B?RXlQMzJhZm56bzJjWVJ1dVIvV2NqeFZaWUpHMnFUN3lYNUlLTEFFT0ZwSVFo?=
 =?utf-8?B?dmZEV2M4RytTTHo0L3E2VFJaVE9Bdis3b1FrTnlKM09mL3E4UDF5NDRvZFl0?=
 =?utf-8?B?YzJkaDJzS3FMWkllZ1l5cVg4Ly85VkgrNHFsbGk2eU8xUENta2w4T0laYk82?=
 =?utf-8?B?YVlUc0VkV3QveFJwS010R2hRUk1abnhPTUNnem5oK0dVSHRnRVFST2M2d0s2?=
 =?utf-8?B?bjJTVjdPaUs1dnJIWmgzeVJCeTNWanQ1bDAxTXBXcmU1cTVkVURjc012RUxk?=
 =?utf-8?B?OUowTzJPUHRRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blZVTWhFRGx0T2FIOVIvSTR1c2xwTUxvM0dOTlpIeTBIUzhCZW5nejcvaGNY?=
 =?utf-8?B?THBib3Awb1RoOVZLTVZVZ3J1TnNFY2N1S3FNY3JSM2ovNSt1bGxhMkNDRVBZ?=
 =?utf-8?B?WE5ZZTdSbE1ITW9iSThsTDlVMSt6eVFDMkVqZkd2QWRNbzkxRW9Ib1RYNURk?=
 =?utf-8?B?UUE3MG1NRzVwQnRCWEowWkIvMGFyaG1wOHU1K1djNDVTbTBjSEZGY1NGYURD?=
 =?utf-8?B?S2xKTU1FZHhrZ1QzLytuRmFwSFFSWGFMN2VQS080S2h0MWYzM3p0azEyY3Ja?=
 =?utf-8?B?T1V1a0paQVB2S2NBWkJQR2dmRWFEZldzZlhwNkdhWFZ0S2FmQVhMT3pDMEdn?=
 =?utf-8?B?VzdsNTl1K2V2NmJ2a2llWUpqMTFKakNObzBCcGMvSzZMdU81OUh6VC9BbHBh?=
 =?utf-8?B?ZjlYSmJnaHFCdEovM0w4SXF3aUZsQ29LQmEwK3JKdXJYQzd0OURYeXpmNlFF?=
 =?utf-8?B?NzhLdzl4eWZiMEY0SUZxMDFRWEVWbkg0K2YxUWdDNW1hcHRjTHhRYTZTVk1W?=
 =?utf-8?B?ZWw4VnJ6WEdQOXVaZXFzT0xFUnlVak53Z3dodVZKem5ZYWlDcmFEYk9tSlNj?=
 =?utf-8?B?cVNJemhBdFNHQitEbGNCTWx0SkRqNmc3ZG8zRWV3SDNjNDNsU004eUFyZlp0?=
 =?utf-8?B?b0JwSlJXSjZGYVA1b3BISW1NeWhiWlpCbWczS3liTHIrTmpDbVh2ZlI1S3JO?=
 =?utf-8?B?NzlDYmVmbU9URjJVelBBWlU0WWxhYkR1YmpYNXA5QjdWTXNIVjg2enMxN2lV?=
 =?utf-8?B?VEtOM09hdTZrWUE5RGFKNWxaNVJ0MktIVm1HKzhVUlJzOTQveHhSVFJQcGpM?=
 =?utf-8?B?N0p1dVJERVMzRUw5VTRBQ0pzMmJIOUt4USs0Y05Jc0twRUtrSzMyVnJCU1V4?=
 =?utf-8?B?dHJzYWN4cXJ5Y05ubHFUUHBhblM5WnE2RUp1MTIwdVZGK01qY2pTZlVDOGxm?=
 =?utf-8?B?d2ErTDc0ZFo1S3JGUmc4YXRWM0FndXBDTElFTktENFNmV3V5QlJLMUNCVzFp?=
 =?utf-8?B?cENvVWR3QzVWVW5UdGgrNDQ1ZkhwSmRwTE5pbUN4bEMwZ2hCWFFWYTRjc00v?=
 =?utf-8?B?ZXA0SFdmYk96L0dtaWh1OVZVaFg1Qnh2T2tnVWJQZjNtUmFJUmxidUlSNzRy?=
 =?utf-8?B?emRGcEx2QTJqdTV5dVZ4K245NW1YcWlFWHRROUcvQjZzZFZVYXZtaWRmdHFS?=
 =?utf-8?B?cUpzcjg3WklYZnhNTlM2VWZSR01MMkVXbGZyT2Y0ZURVamt3a3g5S0xmMkRs?=
 =?utf-8?B?TUhZSTVPaE9qek1DTmYxRE5oTzFsdGhwcDluMDhjVGlFL3VhSnI0QmpJTThL?=
 =?utf-8?B?TkphNnhRZzJrWHIxU1RaeHJEZ2lnN25jV1RrUEpLL2FjeGJUQkMzODljTkpx?=
 =?utf-8?B?bmZyY0lUcU1idXp2UXdCTzdnR0lEc3ZlUFpRSk1WSlFoMm54VUszbjV2RytI?=
 =?utf-8?B?ZHdlamNNeVk1TW5jSDZuLzR2Vmw2VmRSUnA1RGhyQWNOb0RhbjV5SFJSMGxV?=
 =?utf-8?B?SEIxZURMUEViOW5kS3pBVVZCSDgxb1k1UmtzZDdjQnYxVGJvcWVrTkd2S093?=
 =?utf-8?B?TXdJZk1oTDV1SjNCc0hyM1VFemVlVlVHZlkyQW0yVTRUTVU1RStFRzFJRmpJ?=
 =?utf-8?B?aGd3OWJwb2xjRkF5NWNSLy9pYUUzSWg2UncyV1ZKRG1SNWQzYk5RSklIbUpv?=
 =?utf-8?B?d1AwMk94TGxWd1N5QXJVN0l1UytabllEWURMQVVkNjJRbmlQTGpLYmU0d210?=
 =?utf-8?B?S1hHeGF0SjZlZU1mNGxaNlh1b1Fyck8wU0VKaEdwUUpMR01SdjhGZGo0Qmt6?=
 =?utf-8?B?OE5FZkRNV3UwVGtiVlE5NXVwUGV0d09UQzZ4cnd1Z2V4d1JnSGZzcWpwaWE3?=
 =?utf-8?B?TXZNcDVGYWsrZVNLOW5ZUUFWNnNaTjBYL2NxS3hheEFiYkdob0hYWjRab2VJ?=
 =?utf-8?B?YzlCUGpIQWltVG0zYU1UcmxuNmlkMGk5R3VGMzRMRS91U0VZc2xwMjBGUExH?=
 =?utf-8?B?UHpobllUS3hkNjJsYTRzK0R2emQ2QmJjRjR4V0JKUmlIZ3BTY2x5UVJjaTZW?=
 =?utf-8?B?MEliNDlNR1FQUGVzbUFxNTllczFlblF2dXE5VkNIRnpiaW9XN0hBYURDMTln?=
 =?utf-8?Q?iWGIKyDiqXkKios6JQU4XpWfU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c34e81c8-e980-4a29-1348-08ddd5b1fd06
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 12:57:38.7007 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KofuNO+JDoRgEC5EM+qVtszF6eca3H2ZBC+wqkxCmbCGaCyPCCkGXLo+DYKt6BXRylqVBUL0kU9m/98Wl8ZzPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6387
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCA1IEF1Z3VzdCAyMDI1IDEwLjM3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3Vi
amVjdDogW1BBVENIIDExLzE5XSBkcm0vaTkxNS90YzogSGFuZGxlIHBpbiBhc3NpZ25tZW50IE5P
TkUgb24gYWxsIHBsYXRmb3Jtcw0KPiANCj4gRm9yIGNvbnNpc3RlbmN5LCBoYW5kbGUgcGluIGFz
c2lnbm1lbnQgTk9ORSBvbiBhbGwgcGxhdGZvcm1zIHNpbWlsYXJseSB0byBMTkwrLiBPbiBlYXJs
aWVyIHBsYXRmb3JtcyB0aGUgZHJpdmVyIGRvZXNuJ3QgYWN0dWFsbHkNCj4gc2VlIHRoaXMgcGlu
IGFzc2lnbm1lbnQgLSBhcyBpdCdzIG5vdCB2YWxpZCBvbiBhIGNvbm5lY3RlZCBEUC1hbHQgUEhZ
IC0gaG93ZXZlciBpdCdzIGEgdmFsaWQgSFcgc2V0dGluZyBldmVuIG9uIHRob3NlIHBsYXRmb3Jt
cywgZm9yDQo+IGluc3RhbmNlIGluIGxlZ2FjeSBtb2RlLg0KPiBIYW5kbGUgdGhpcyBwaW4gYXNz
aWdubWVudCBvbiBlYXJsaWVyIHBsYXRmb3JtcyBhcyB3ZWxsLCBzbyB0aGF0IHRoZSB3YXkgdG8g
cXVlcnkgdGhlIHBpbiBhc3NpZ25tZW50IGNhbiBiZSB1bmlmaWVkIGJ5IGEgZm9sbG93LXVwDQo+
IGNoYW5nZS4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAy
ICsrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDA1ZGYyNTI2NDBmNDYuLmRjYWRi
ZjdiM2Q0MGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMN
Cj4gQEAgLTMzNCw2ICszMzQsOCBAQCBzdGF0aWMgaW50IG10bF90Y19wb3J0X2dldF9tYXhfbGFu
ZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAlwaW5fYXNz
aWdubWVudCA9IGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50KGRpZ19wb3J0KTsNCj4g
DQo+ICAJc3dpdGNoIChwaW5fYXNzaWdubWVudCkgew0KPiArCWNhc2UgSU5URUxfVENfUElOX0FT
U0lHTk1FTlRfTk9ORToNCj4gKwkJcmV0dXJuIDA7DQo+ICAJZGVmYXVsdDoNCj4gIAkJTUlTU0lO
R19DQVNFKHBpbl9hc3NpZ25tZW50KTsNCj4gIAkJZmFsbHRocm91Z2g7DQo+IC0tDQo+IDIuNDku
MQ0KDQo=
