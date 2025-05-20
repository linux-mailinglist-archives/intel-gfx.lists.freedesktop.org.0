Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF85CABE13C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:54:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B36010E65E;
	Tue, 20 May 2025 16:53:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LmB6Z5B2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BED10E655;
 Tue, 20 May 2025 16:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760036; x=1779296036;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UX2SPTeicS7doZLwOL7SonTVf2RL1xHAu5+hdVamAnY=;
 b=LmB6Z5B2VNY3vAMq4bgLB6OZNlIxN1FrRSuLaOn45S3wlfVkyXXOfPD2
 H7ynTCgthheHNFkZ7p1QdrlH5EwNChSHWlfDyEdqRVWtJ93TjjOYQ6FA2
 94mIrg5Q3/NoiardS30rIn/uuNuWsaUPde0L5Ni9MfPevRHEP7uyGNIwK
 POCnjXHd5nCg51mEpSBzhOjjRHGwo3zNuEQWXDwA7oz4CLKibjkI9dqex
 PnALWw0UR3FfXA9l+NPjbo+jCE0WtbXIz5C0zVQANLKqhw9qhiPboVm55
 4gfV2zMas82cbi+FXEjDrDw2wz2Uj/CZBqhVCy8El7swrvH9Q+rmiJWDf g==;
X-CSE-ConnectionGUID: ppBO9vbMQG+zVzcprUnCZw==
X-CSE-MsgGUID: M7LeWGhnSOifm9kWYa7RAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="59935781"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="59935781"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:53:55 -0700
X-CSE-ConnectionGUID: ouX8Vy4WRneZQGRpX25Cpw==
X-CSE-MsgGUID: 3II4f97IT86IyBE+gb5EWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="170627412"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:53:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:53:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:53:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:53:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XnSKrF8zv8mwedmRfR5sKFdQE+BgVTXlSvhknM5gPWBeA8VdsaBpg/KGvgq8qBhTGSZYiuZxCDx6dDpkv1YfO0+OavBq0YquBcSAs60yDN+hFFm++zSAnb/KDSlBxuJn8guGNvqpBS3ZCH6JlSKDUQ+ZgnQ+j5tkia7gLZJ8kuMLCDXxnm8FQFMeJKLWQkd9oz8hhwy+gjF2r8cLzEBMMmsqq6cFAeIeqWYNdXgcGs1W9fAkvFjWoIevEsKulU+3fCr+TfnYD98fbzo+f7Q9b5dSpAn14YL0Cgm8uFGOdFg1sERyDrmbzNLsvrhkDguq5MnD5MzRBV4a7naAnQ4A+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UX2SPTeicS7doZLwOL7SonTVf2RL1xHAu5+hdVamAnY=;
 b=DqXLh5TXOEj3x4PrC9X0scZMNq/RJ9B5Gu/6DTFJswzRKHB4zLwz65e6O85dQvBc2/d/LiKwU87RF8CYWZzB3THc6G2lQdBGkiRE4+WWjgcBqU3n0Jre4sX/9vYmci033JXYHsFbWV24CJ/U3s/AXdOLp8+J7YFdtGGtGjhHiC18Z28Jqd19s2PyoehVFzvJShzBTUUS0btwoM+UXq4E2NgfM4XsO9VupRqhALlAAoRbXpKF7SsL3iYnfYhnl9ZLqFXmeUYfli6i1meDaVQudPlmmowgH68kJM1jVkb6ZRdvtjHwfKp4ZFgken9JD8FsiVEFm+lx7d5ZS+9tNsrL8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM6PR11MB4674.namprd11.prod.outlook.com (2603:10b6:5:2a0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 16:53:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:53:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from DP2.1
 specification
Thread-Topic: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from
 DP2.1 specification
Thread-Index: AQHbu0CGU6Q2sSFYWE6K0MfGHHbv77PbTiKAgACK4gA=
Date: Tue, 20 May 2025 16:53:51 +0000
Message-ID: <e1f65a4da992d38273b048a93604119f8c3f8547.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-2-jouni.hogander@intel.com>
 <8af5523e-1732-4e53-86c4-36fb1465d585@intel.com>
In-Reply-To: <8af5523e-1732-4e53-86c4-36fb1465d585@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM6PR11MB4674:EE_
x-ms-office365-filtering-correlation-id: 0bae1be5-f14e-4d29-c1de-08dd97bee61c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?akNCcEpqVnEvKzJNRmNmVklkT3Vkd2lBOTV6WFROZUM2c1lqd0ppb29NMkdT?=
 =?utf-8?B?aDErYXZPZEkxV3B6ejRnRnBtWEswdEh2c3Y4VWc4NnpCSXBrRk1DR1c3d01H?=
 =?utf-8?B?OG5HZDdPRFVvNzZJVXFqZ2IzN2dyY2VEVWREYWZXWG9Da2gyR0ZqZ29JUmZt?=
 =?utf-8?B?VzVwR3FQeEEzMTZRaUxPaXRDZkhrZ2ZVd3krR1FOT25TZytaUFpXaVpQd245?=
 =?utf-8?B?eXZlSUROY0h6cWRaWmRtTmdsWWFPYjNuVDIwalhkNVRSU20xOVZkSG4zVE1a?=
 =?utf-8?B?bkJCNG1RNVZBQVFpSWNNMUdwc3dCYTlWZE01RWIvVDU1T1UycGJDWnF5cjho?=
 =?utf-8?B?aVNCUU02amUxaHZuR1BKUndIdEFZT2Y2a2Z6SWtoWlFMbXdFUm43aXBHRnFR?=
 =?utf-8?B?S0Y1R3VJQk9KRlFtWEdMM0NvTHlmaTdsUkhzRkcyU1Z5OXUyUzBuZzZ3aklX?=
 =?utf-8?B?QXZJUytHZ1h4ZldIZ0NaZ2NZS2ROTHowdHgwbjYremNaYlFUMmxJTzNXS3VL?=
 =?utf-8?B?aUhIK2F4VWQzSStVUm5mbEdRWVBVVlhOMUhzYVc0UklMN2ZKSGJjNWo3aFBi?=
 =?utf-8?B?S29wQ2trZ21YYTNDYTcrMkZpelQ0OS94QUFRNk9oQlM0d054UkRScm50aDVr?=
 =?utf-8?B?ZmVObUdGUHBiQlB1VjZSeDZHbm9wRTRTODNFSHVzR0JWWnY1NUZvbEx5ZnRL?=
 =?utf-8?B?RmFMbkJvQjBENStoN0g4RkhpQnU2V3FFc21jQU9TT0NpQU01bldSdmV2cHM3?=
 =?utf-8?B?am00R01YNE9jSUpYdTNSMU5pcEFVZ0VUdE5zR0dacjJGWlY5ODhGdjQ3VkdY?=
 =?utf-8?B?bFc3WVJUSXgvR2N4aG5Vc1gzS1FvVVlJYVRzL0ZLTlNOZFVraEhqMXgvNkli?=
 =?utf-8?B?QXl3aUI5WjF5c1g1NjltNzd6M3NMY01FQzZsbHVpczlsS3M1U3pYbXQ3Wkpo?=
 =?utf-8?B?YXkxR0ZYbnQ3ZEpxeDlxa2pjTC9na0hHWjdheGtpeklpaEl3T2RVS3dtRnAr?=
 =?utf-8?B?WXEyVjJXdUhtNTRzRWN5SXlDay82OWI2K1RQeGVZa2FURmNmTFd4S1Z0Y0tz?=
 =?utf-8?B?REdMTWFkNmM0ZlVTUFpuYTBiYnJvTlpZSnFOM05PRlowZjlsTW9zN2FIWm1w?=
 =?utf-8?B?OE5HTkNpUWhUUTVZR2plK1RHYmFWcDZJTFhMeVZUeC9aT1ZVL0F4RmxIT2Zv?=
 =?utf-8?B?MGFwYmpESVNkV1ZwblJKbmFrVC9jMFloWmlKczJVSjRidmpRUm5taG9jVGZV?=
 =?utf-8?B?ZWx0K2NlTThDSU12NDlKQzZaSm4xRVlUcktDdHo3OWJ5V3N2QVRoVUtHZE5E?=
 =?utf-8?B?cUhZbkpCcVFybmF4RTRZK3ZISlArZmxSRWhNeGNiV1NHbVh0UFpKY3V4c0hs?=
 =?utf-8?B?MHQvY0JDRWpLbUdUM3JzUmtaMzEveEU2Nk5JcHkyQTF3ZzlEcStHci9XTDJ2?=
 =?utf-8?B?OU5IckY5UVA4N2FaYytaZU9QS3MyVUk0Ymx2NzRCQlJMR040M0NBR0wwOHVY?=
 =?utf-8?B?Z3ZPaG83aDJ2N3JLcEFIb3p6ZnY1SnZONHFqS2ZNYTlzZWlPSGV6NEhSbnNs?=
 =?utf-8?B?L2JZWWRxVGh3cUdTTW1Xa0xqMmcwUDgyTHFGSnpxNHFqR0FDbGNEYzJSTWJJ?=
 =?utf-8?B?dW4rS09WS3p2OHZZZVdMejcrejY5R2xWUVhFdWZSMzArQ1QzeHEybUFtanpE?=
 =?utf-8?B?YjI5eERPUGhUUmhIak1YKzZJWmFPdWhOM2s4dURIS1R0dDJoYmhwUGF5bTNT?=
 =?utf-8?B?UG5MYnNXSGs1R3hVZlNMME5aNTcrdGlNcTJreGs1ZzZ1L0xNLzNiL0FSVlo5?=
 =?utf-8?B?YytqVVNHU2lDdzVLM3kyclRyUUhrRlBqY0g0SEtRVlpVNjBpNTBzSDMvRHhH?=
 =?utf-8?B?UjhkUHRldEhjUUJOM1lUYXV4ejVzdW5zdmlhUVlMc3VCNW0rYzVQWmFRVUlw?=
 =?utf-8?B?QWlNUnpMbmwrSVdUTkZ1T1pYeDczdG8wa1l5TUd0dVltd1hUOFpmb2RyR2hn?=
 =?utf-8?Q?qkv9pX5l4ywfTRVQLCRrMb9WLi2a/w=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajNTRVZvUGNudkpWdkhoSVlYZDU2NEFDeXo0T3VQQ3FYL0Nab0lnVDJzSGNy?=
 =?utf-8?B?dFI0RDFFZUFSOE9zTW9TNzF2MU9yV1U4a0c5TS9FNitFcGtMT0pJVTFsOGcr?=
 =?utf-8?B?MDFCcC9EYWtqK21sWEJuRmozcy9rcCtWMEgrMkZwUGJqUi9sSG1QVGZKNXNT?=
 =?utf-8?B?NEQ5aDJwVnZscGNvOXpyM1o5YkJPYUV4SEJnZWtJYlpzVEJ5QkR2M2oyTGl6?=
 =?utf-8?B?dGpIdHZhR1k4MGlnN3dmYmIwcnZYVTFlL1FCNVMyb0xCTFFMUjlqbTBTWStV?=
 =?utf-8?B?M3JieWdJQjFqTUt1QmFuVy9ZdnhmbDFiVG1OaVZ0cDdRZ2dDc2tLR1RuMlRJ?=
 =?utf-8?B?R3h6RS9ESm1oK2NhVnpMRkFTUjJUaFY4YXBDSG85WG9sQlVwTVdtNUw4R09m?=
 =?utf-8?B?a25ZYWc3UkxtYjNsVjhFZFpwTW5RbmtTVkVQcXFZRlhGV2tXYy92NmpCNnor?=
 =?utf-8?B?NHVCMlJPdTlMeUFnYW1zQm15VUR4NGRSNW5lM1FiUkNzOHVha1R1SzNoUjNH?=
 =?utf-8?B?b2dHQldhRGNibW1KQzdRS3Vqc2ttbzF0dVFRSjlGMUNyWWd0dU92V3dHcllw?=
 =?utf-8?B?S0lHNVN6eGc4ZXBKLy9URHg1RjZUN2NJbWl3dU84TGNpV05CakdWWndXUWto?=
 =?utf-8?B?dTdWbVlpZTd2Y1pTZVlTL2RTTU9vYmNHakJxSmsyblN2M0ZibGhzTmtxaGdQ?=
 =?utf-8?B?aFh6ZjBuNWI3ellrTk5NNUdoYnFaNGFOL1ZGdStHSjR4UDdSVjNENitHRzhT?=
 =?utf-8?B?elVkQkVBcXArZGdDek5aa2p5SkJuYXVCd3BKWm1QVzc4QnJ5Y3FiRTN3clhq?=
 =?utf-8?B?WGNnZ0R4Rjd1ZWoycnRub0R0enpiVzVuZHc0VERLYlJYWVhNclhSTWlIc0dp?=
 =?utf-8?B?eDV5TGNkcTR6WmFkaFc1aVRGUExuZ1J1NHRTQ3hKaEx6cGZwNGNNRWdiQWlh?=
 =?utf-8?B?d3FkWGpzTjhZdnFGNTgydUdRVHJ3M1ByMk5XK2ZoVS9nRkNIOHB5bkJyaW8r?=
 =?utf-8?B?eTcwbklza1FUMnB2OFA4ZlFISW1mcXMyOHBmS3dudDJ1K0pEc3lDdnVzei9a?=
 =?utf-8?B?TFdlTG9vQzkxRHRsSWxYWkR0d2VRcThHM3M2RVE1ODdWV1NobFMrZkVUdG8r?=
 =?utf-8?B?eGQ5TkZLWGRWL1V3NXZkWm84Yjc4N2RnZ3kvZ2R0UHZHN1ZBL3VKY2k3dXRs?=
 =?utf-8?B?NmMyWW55SnE3S1hxTWdaaU5TNkVMaTYrcTlXcDdqMGZybFlVOGMvWnJtUVJD?=
 =?utf-8?B?ZTc0NHdiVWIwT0JrNkpYZnNNMDR5d2R3YnJJU1ozaWNFV2lDdG1qUXRpK25p?=
 =?utf-8?B?Z0UrR2w5a0xVVERKTEUwU2ozVitoMEhXampwSjlHc2RQVG9rakNySjkwbFlG?=
 =?utf-8?B?QmNhcmhUUnBpZjdoeTRsdUtFNzQrVmdEdWRWZUZuZ3BTWkFIOEpPOFZWN3FQ?=
 =?utf-8?B?MG90bmlxVjBKcmh2QllGQnR2Q0xaQVAvNVhWSGVlOHF6Zko0ZmQ1b01YSEtD?=
 =?utf-8?B?RGJCUGRtZjZCTGhqZFROM2kybUZBQmtEcDhDcHY0YTdnYityemFUY1R5bElu?=
 =?utf-8?B?cmpZZUtQSWxtcFVmUUNUM0lhQjB4Uzg3emZZODRDQXBpTFpxdXNmQ25Wcisw?=
 =?utf-8?B?clFTNkZjZGFuNGVQeG42YVhrUXFsdzJRMWM4eUJaWkpzdUxFdVRrN29EVEhM?=
 =?utf-8?B?ZHNVcXg4N1IyY0dxZFhxRVpMNER0akovN000VU0yTVRpTmFKSm1wU21Qd1hX?=
 =?utf-8?B?MG5QME5NMDVnUk1Rbi9aREkxekZrby9oSStJZlE5ZjRSaE5RSEZYNDFqQjJ5?=
 =?utf-8?B?Q0U5bDlvQWpRRXJnMUpMOWJZZkVIMjUzU3RRMlgrUW5QZm1lYllmMjJ3S2dL?=
 =?utf-8?B?amRhM1JBU3lyQm0zSVQ0SjdKeDdJcFBlbCtuVUM1K2EyeFNPVklQRWthV1Rr?=
 =?utf-8?B?KzltUzFRTExldk9wWlBXZWFkSHFhMlRlSjhhaFUxc2VXQ094L3NwbU0rTUIw?=
 =?utf-8?B?UVpHeW9sKzhUbVFWeTk1QUdWYVFKcnhJUXVRRFN0Q0JVTUNINE8zcFBEWXFJ?=
 =?utf-8?B?VFFjSndjZW9GNVJ6dGJYR0FFMkhubFY1eXc3ajkrWXZYTmZNbXpKT3FjVDho?=
 =?utf-8?B?N1U0QS9vVzFXZWk3RXlyVUV4RnlTMk9SSTlnY0E1RlN5dzhMLzNZR2gvU1VW?=
 =?utf-8?B?S0xtTU1GSyt2aVAwQVBiOGRiaml4TVBENGE4ZUduZ1RzZmpmK1ZCRDAwb1Iz?=
 =?utf-8?B?eGlyRytkWEhoNEo1LzZNWklHVGZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F14760202C0254A8687EF92C4ED8C21@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bae1be5-f14e-4d29-c1de-08dd97bee61c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:53:51.6552 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8mVo0ciHAauZk8QkteUScnrkKshfRn7N8xsFuKaEJ74A1Z5X0EqeRTZo9PCkm73MFKDTlau9YVaQbjWE01qagoCGqCt71kokgJ7mGSDvKcA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4674
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjA2ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiBBZGQgUEFORUwgUkVQTEFZIENBUEFCSUxJVFkgcmVnaXN0ZXIgKDB4YjEpIGJpdHMuDQo+ID4g
DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+DQo+ID4gLS0tDQo+ID4gwqAgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaCB8IDEw
ICsrKysrKysrLS0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kaXNwbGF5L2Ry
bV9kcC5oDQo+ID4gYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4gaW5kZXggMzAw
MWMwYjZlN2JiMy4uNDdlN2Q1NWUyODAzZiAxMDA2NDQNCj4gPiAtLS0gYS9pbmNsdWRlL2RybS9k
aXNwbGF5L2RybV9kcC5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaA0K
PiA+IEBAIC01NTIsOCArNTUyLDE0IEBADQo+ID4gwqAgIyBkZWZpbmUgRFBfUEFORUxfUkVQTEFZ
X1NVX1NVUFBPUlQJCQkoMSA8PCAxKQ0KPiA+IMKgICMgZGVmaW5lIERQX1BBTkVMX1JFUExBWV9F
QVJMWV9UUkFOU1BPUlRfU1VQUE9SVAkoMSA8PCAyKQ0KPiA+IC8qIGVEUCAxLjUgKi8NCj4gPiDC
oCANCj4gPiAtI2RlZmluZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfQ0FQQUJJTElUWQkJMHhiMQ0K
PiANCj4gDQo+IFRob3VnaCBub3QgaW50cm9kdWNlZCBpbiB0aGlzIHBhdGNoLCB0aGUgbmFtZSAN
Cj4gRFBfUEFORUxfUEFORUxfUkVQTEFZX0NBUEFCSUxJVFkgZG9lc27igJl0IHNlZW0gcXVpdGUg
cmlnaHQuDQo+IA0KPiBTaW5jZSB3ZSBhcmUgYWRkaW5nIGJpdHMgZm9yIFBhbmVsIFJlcGxheSBj
YXBhYmlsaXRpZXMsIHdvdWxkIGl0IGJlDQo+IG1vcmUgDQo+IGFwcHJvcHJpYXRlIHRvIHVzZSBE
UF9QQU5FTF9SRVBMQVlfQ0FQQUJJTElUWSBpbnN0ZWFkPw0KPiANCj4gQWxzbywgSU1ITywgRFBf
UEFORUxfUkVQTEFZX0NBUCBjb3VsZCBiZSByZW5hbWVkIHRvIA0KPiBEUF9QQU5FTF9SRVBMQVlf
Q0FQX1NVUFBPUlQgZm9yIGJldHRlciBjbGFyaXR5Lg0KPiANCj4gTGFzdGx5LCBzaW5jZSBQYW5l
bCBSZXBsYXkgY2FwYWJpbGl0aWVzIGFyZSBkZWZpbmVkIGZyb20gMHhiMCB0bw0KPiAweGI2LCAN
Cj4gcGVyaGFwcyB3ZSBjb3VsZCBpbnRyb2R1Y2UgYSBEUF9QQU5FTF9SRVBMQVlfQ0FQX1NJWkUg
dG8gcmVmbGVjdCB0aGUNCj4gcmFuZ2U/DQoNCkkgaGF2ZSBtYWRlIHRoZXNlIGNoYW5nZXMuIFRo
YW5rIHlvdSBmb3IgdGhlc2UgaWRlYXMuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+
IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+IC0jIGRlZmluZSBEUF9QQU5F
TF9QQU5FTF9SRVBMQVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQJKDEgPDwgNSkNCj4gPiArI2Rl
ZmluZQ0KPiA+IERQX1BBTkVMX1BBTkVMX1JFUExBWV9DQVBBQklMSVRZCQkJCQkweGIxDQo+ID4g
KyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX0RTQ19ERUNPREVfQ0FQQUJJTElUWV9JTl9Q
Ul9TSElGVAkJCTEgLyogRFAgMi4xICovDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQ
TEFZX0RTQ19ERUNPREVfQ0FQQUJJTElUWV9JTl9QUl9NQVNLCQkJKDMgPDwgMSkNCj4gPiArIyBk
ZWZpbmUNCj4gPiBEUF9QQU5FTF9SRVBMQVlfQVNZTkNfVklERU9fVElNSU5HX05PVF9TVVBQT1JU
RURfSU5fUFIJCQkoMQ0KPiA+IDw8IDMpDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQ
TEFZX0RTQ19DUkNfT0ZfTVVMVElQTEVfU1VTX1NVUFBPUlRFRAkJCSgxIDw8IDQpDQo+ID4gKyMg
ZGVmaW5lDQo+ID4gRFBfUEFORUxfUEFORUxfUkVQTEFZX1NVX0dSQU5VTEFSSVRZX1JFUVVJUkVE
CQkJCSgxIDw8IDUpDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX1NVX1lfR1JB
TlVMQVJJVFlfRVhURU5ERURfQ0FQQUJJTElUWV9TVVBQT1JURUQJDQo+ID4gCSgxIDw8IDYpDQo+
ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX0xJTktfT0ZGX1NVUFBPUlRFRF9JTl9Q
Ul9BRlRFUl9BREFQVElWRV9TWU5DX1NEUA0KPiA+IAkoMSA8PCA3KQ0KPiA+IMKgIA0KPiA+IMKg
ICNkZWZpbmUgRFBfUEFORUxfUEFORUxfUkVQTEFZX1hfR1JBTlVMQVJJVFkJCTB4YjINCj4gPiDC
oCAjZGVmaW5lIERQX1BBTkVMX1BBTkVMX1JFUExBWV9ZX0dSQU5VTEFSSVRZCQkweGI0DQoNCg==
