Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE338C555DD
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 03:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A010710E1E3;
	Thu, 13 Nov 2025 02:00:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4esppUt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56E6110E146;
 Thu, 13 Nov 2025 02:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762999229; x=1794535229;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=d3KnJJFqu4tZBGvv4F1AcRWJayO5tcHInjzI5LEImaQ=;
 b=g4esppUtlnYZvjq33+6LuF5q+BrFoNq9KIm5LQD4cirzfgE6YybnBJkq
 8NwKrAXApt+KpGmcYe36UJUOmPGJ9BXA4gfZokeNc4/iFfM4GiNTyZI4q
 3qbXu5/tEpFnJ1J0TSCUEWuGZKVv07o+LadzDD4sI7yDu1Ht7XPJNGIUR
 j+P47b0XoretTZ19xrJa7+O5E4rwVW3yk4EBhSBgt0jM4DZh5BQwI9MTD
 MXx1c5HbebeLfEUmODi1XfQT7aPmWVlSpoWWRCP/ecw9kXsP2C1PJpUCP
 RQixPtbcSPzOLwnbrUXSQcC+1iVGlxq8EbGetrESbXD6OFl2Sg/LHkJ0Y A==;
X-CSE-ConnectionGUID: 3OnnA/RKRv+COTcEAQLYfg==
X-CSE-MsgGUID: TsyedL3DQPqrL01bU0wqLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="65166737"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="65166737"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 18:00:29 -0800
X-CSE-ConnectionGUID: gAdXd3AiSXC8vafJiNg23A==
X-CSE-MsgGUID: r6vWhRhpQaawS3U3ZkmGUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="189155489"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 18:00:29 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 18:00:28 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 18:00:28 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.49) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 18:00:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mTZjNo6p2XvhKh3fzo0KcwdaCldEmW3H1auQNGh3izyzjLNmK1DV4CUr2A3aBSSqEBZT+rHeAQ52N5aEki6DuV7FAhCBR5bdLnnHlg055MOiy49jC3avUEEiFL7N9ffgkb0eRIQYgPQpauXikpdJvoh+Dw7A3NoQtJQw+KUvH40TDmUeTpeUY/GYl9/ICp9SfEvB3z4gzP+vrjpOWapznynyOBRFlboBy+W+zs+7IfIMSPAG/hbWbHaPGGEpJtrxLCjscVN9cRikOd6RtALMYAd/9avRGlqOxTiNkA0xn0a25GMVQ5zTviSYEotANUOVyCmjO2Q3nzRBm7u0CKp0xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3KnJJFqu4tZBGvv4F1AcRWJayO5tcHInjzI5LEImaQ=;
 b=Z366HRbgeHAF8I8n1AJmksYdKzDQ06PIfI4G6xsi2SWRK+ZQPbRU1EjDwYYT/TrcVMt5IUVFCirElG6xR9iqW+k+zeyPgBVyuvkH2HYLthExPiHJWCEv2eyj0tJIXubbRxAqNk0K8CvXZDwoongrJ0LlVeZqVItGC3P2xN3P8q9gHcFOwR9Zp822M9/PJAdLcOkI+PID7+WR4x469ge4uLw2dD7y+4G7dz7bbS2AqJJtpIqgwjMLjKkoqLBGDVU+8rPWxlea/XtyRMl1ujR35khrYzN7mzQxBHYvpo+G5B36UeYDO3ekAhDJi5P4cJbEIEqhCNkaUGYgYBlBirWvsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by CY8PR11MB7057.namprd11.prod.outlook.com (2603:10b6:930:53::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Thu, 13 Nov
 2025 02:00:19 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::b576:d3bd:c8e0:4bc1%5]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 02:00:18 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, Lu Baolu <baolu.lu@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>, "baolu.lu@linux.intel.com"
 <baolu.lu@linux.intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: REGRESSION on linux-next (next-20251106)
Thread-Topic: REGRESSION on linux-next (next-20251106)
Thread-Index: AQHcUgxxcVhkxCy/KkSOgc4hzGsZELTvpE4AgAA3atA=
Date: Thu, 13 Nov 2025 02:00:18 +0000
Message-ID: <BN9PR11MB52766744A2895F782016AF7A8CCDA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <aRUK8vDZ3dE1zNxL@nvidia.com>
In-Reply-To: <aRUK8vDZ3dE1zNxL@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|CY8PR11MB7057:EE_
x-ms-office365-filtering-correlation-id: 1b22f399-cc08-457d-e6bd-08de22586571
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?U25rd3dFYUVuYXJ6b1U1c1NvTVBBQkZ4U1hLSlhYVnhPTFQ0OTNtMVhsREIw?=
 =?utf-8?B?STJHYXJSWWJ1RTB3OFluRjMra0dMdXAxKzdmL2dBbkI4b2c5Zi9Fb2RENTZh?=
 =?utf-8?B?SS82cUFxaHdUN00wWVZUM0V1MTlWNzlJbHREUjI2cnlxZUxqS1JWb0lqbFN1?=
 =?utf-8?B?V3Z2ZkluY3p0ek9Wc1NGMENHYjVrc0F3dHhjUFhFOEZKSTR5RHplYm9TTkxU?=
 =?utf-8?B?VGZQeEpHY1Fudkc4OUZmTFJpRHdONUpLNVhVekdtUGField0MzFNMlhRczZM?=
 =?utf-8?B?bkZCYlRsaXA0ekVUckhrTnJMeWQ2cmdHeG42RUw1QzYvOHltUkViMWZsVG8v?=
 =?utf-8?B?R01PVkM5UmRzQVdHUjF0ZTdWRU01djI3R0hNbXJ0VEtFNFY2K1M4RVJkc1FP?=
 =?utf-8?B?b0c3Ukd0ajJOV0E2Y21kVjhYa2ZEeExzWHR0M0liOURIbjNuMjRyWHR2MndV?=
 =?utf-8?B?cjh6eit0QTBaazRWbkxsOVBKbXJJaE83M3JVVE1TMXNaK29lMEZ3eXQrNDVY?=
 =?utf-8?B?eDB6dG5vdWlhNkFEb1FjT2J1WXdVYVhKL1VpMlhNQWZRU0xtczh6UEV1RUJz?=
 =?utf-8?B?OWdzdU1tYkVkbUhsWmhVMUtPaDBtYlVkOHdMK09QMVFBeHlKNnVDNzJDbTBT?=
 =?utf-8?B?MmpqQnNnOXZLN0h3NVZzTW5mbk1rcDdVUmlTWTEzbnVSanEySEljMG1Yck9v?=
 =?utf-8?B?OHJNeGljT0h4M1ZCNERQbWR6aDJZWU1Ydmh0eDhETzBZeS9BQk9UVGZYUlhS?=
 =?utf-8?B?VWw4MjZ5bk9hM1lBNnorUXZGeHcxNFBiaEFwQ08xOCtxUkpIeG9RMnN0d2s2?=
 =?utf-8?B?WlZLRklERWx3em9lSEVNb05NZkpEekI3d0pFbWYrUlhoZTZ2T1Fsbm5NbEdG?=
 =?utf-8?B?WURudU9LMHhWTi9CYVY4RCs2RzNROXJWaC9yZmJGU2Z1ZTJLUUFNaEdsUENV?=
 =?utf-8?B?L3d6NXdjSVdlY3BQWVV2UkI3cS9CSldLYWIvcEk1dnN1QnZnbFNvYU9wYXgw?=
 =?utf-8?B?T0s4VkI0NXhaWFhNdGpMSnBMUjFtekxBV1RGdGZXNDlkMVdoZHVFTVFmMFFG?=
 =?utf-8?B?SHh1YXkzanpBeUNMOU0zeVFNaXFEeG03cWdWOEpCN0VuN1ZvVlRpeUJSNjRy?=
 =?utf-8?B?V1lRYkpFd2FHdFBGU21ONjhzS3B6U2VqSzk0WFhTeXlKOTFhMG1QWklFSGY4?=
 =?utf-8?B?Rm5JNjQ5cFBxVk1hRzNqbHBVaWVyQ2J6bXVielJZNlhKTE1KVHYzaHNmUGJa?=
 =?utf-8?B?cDZvREVvYmE3Z3MrTW9kSnpaWWdRVFdrSEkySWRaaVVvKy80Tm5GL1dYNGZM?=
 =?utf-8?B?V0J2MVQ1a1NZaGRwcUpqdlFzWWlrY2RWNmowTWJXb0FOa2dNaDJ2MUpaRDlZ?=
 =?utf-8?B?MmZXQTRUa1N5bTQ0VFo3QmNVQ2wrVmJDT0prYTJhZVR6S0NzL3pHcThVcXda?=
 =?utf-8?B?UlN0Q1lFN2dvV3crZmdvK1Q4VjZSR0RNMHZsS2xLSkZiNzBTWGlTSEFOcWo2?=
 =?utf-8?B?cUVXNnQvdUtrNThZSzRIY0QrbGFKVTFXMVAzYXlQL3dPdTA0cnRMY250c3Ju?=
 =?utf-8?B?enh6dTg3WDVHNUFXOVlRenNRKzBIOEpQQ011U3ErNVExM29ZNXVESlhzU2d4?=
 =?utf-8?B?ZnVNTVhicUhrMXB6cUUxZFFkbjRxV3JiWHRCcmh3MXlGeXBLSTRZREtnMGVV?=
 =?utf-8?B?eE9Qd1lBZHJwMXdBQXloc0JXdFd5L1U0UVNOMjkxQkNWVlViSkxmTTlheExr?=
 =?utf-8?B?ZnQyN1I2SURzaUhOWU9pQ0NvUlRKSDIvSHNXLzMyajNqMjEzalZFOThidUEv?=
 =?utf-8?B?Q3ZIYkxzcmVwKy9kNnZZQTBUZCtzclRJNThPM2tmMmdXbFFLTDVhbDU4MTJK?=
 =?utf-8?B?ODQ3KytMWjY5a2lTSGlrSGZYYXZ0aDZnSnN2TWo1Qm96WWFhNk10ZHpzaVBT?=
 =?utf-8?B?WWZUbWZobkxDN3JDWTA1YWJyOWpPUFp0aVVRSFAxTTdGYmEvcWoxdThmbCtV?=
 =?utf-8?B?Q3ViQW02Mkc4NlhHeVg2cExBdTIydTl6c0tWQ0xvdC9YY2VaWm9BcjJWZSto?=
 =?utf-8?Q?IJv/k2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0djN3IweG9wZkt4NUtadnFEVzc2ZWxKZWNaU1VyQXpiVDUxSmxaUE51YXVD?=
 =?utf-8?B?QkIvY2JvdWZRblFPVHg2ekhrNGdjNVNwN2VzemltV092TTRwRmdJL2pIQUpH?=
 =?utf-8?B?T1J4U1NjdXJCOFNIZnEwUDZlYjRUbW9YQjh5V0ZmNXdWMG9LUFR4NUhZY0xV?=
 =?utf-8?B?b091dERtRmhwOWxVV0FjQ040dnh4b294SlMybVd4dEg5ZW40ZXpOWTViMkdS?=
 =?utf-8?B?UDBrcXZDaHF1Ym9xNWJRVXlGSUgyRlVpVkM4SXZNVmRRaVA1TTdhSy9hVW10?=
 =?utf-8?B?bDR3QUp2VHlGVG5HS0xSUmpUSHZtTTJaSFFhL0lLaFNyaWM2UU52L043Tjhn?=
 =?utf-8?B?Z0lkZ1RJeHVmNS9maFFkMk1kSU1GKzdDeXBkQWg0RndLWXhNM0VxWVUrM0Mv?=
 =?utf-8?B?SzR3VWVXanBsYmE5NE9POFFxaE5ESHVYZW1VRkRmMUpsYlJKcHk5cm90bmVl?=
 =?utf-8?B?L0k5Ri9HNENxdDBqRysxN1oyZHFXbktaK2VIZUY4Qzh5RDI5K0lVVVdMTU1T?=
 =?utf-8?B?UzJQVkJDVmRndlRsVnFiOUhEUk1oTGRxeXVleWN4djIxVERoQk91TXJIbXN5?=
 =?utf-8?B?UXRjRnV1U2QxWGh5eFpISUNPMXVCK1pOek9vaDhtQk9uR1BJYTk0Q0hLaWhT?=
 =?utf-8?B?aHNoU1I2aFdMejJSWFpETTRxaWhCOExoTDBvRjRmbUl5dFZzUkE5djBJYXY0?=
 =?utf-8?B?NXBzWHYzdTQvN2txbDV3bUxWVVR0RFhtbHZuNmcwU2dZdThnSXNmWStuVUd2?=
 =?utf-8?B?SjcyRngwUHFUVmVmZUJZL1VMNXJ5MGRMaExIdXYycTN2eXppL0tKQmp5c3BX?=
 =?utf-8?B?MGVCNDlnR3ZvZVJPdUU5Y1JIWHY1YlpwZ01mSVMxZlF1cGJ0Y2s0NDZSWHN0?=
 =?utf-8?B?MGFhSGErZXpLbVdaeVJSaURDS0R6ZHVXZmhCa1VIamVxR05TWDlXeC9jV3hT?=
 =?utf-8?B?eVVjdkNXWVhBTnByaVBCVXA3TGhpRm4vT3lUdUlldDIrWklYaGg1WEI5T2ZB?=
 =?utf-8?B?Wk5SRXcwL1ZBSlpBaDM2Q3ZMdkVZemp0UWtwaTF5ak84a2N0YW5FK2J2UENn?=
 =?utf-8?B?MGFUc1hPRDZCY0VEd2ZlWXc5b2JQOVRBWWFOaE54NldiTnJKSW1DY3gwMEpM?=
 =?utf-8?B?eDdDU2I3NFpabWs3YnRpbDJ5Vkh6dTVBR2FYUVk4QXdKZDVjYVg2a001RFlP?=
 =?utf-8?B?OHllMFhKV2EwaC9qMVRoYjVpNkxiWWUrMTZPcHM4NWtETzJUWFluSmxiWWF4?=
 =?utf-8?B?MkpQTHlCMWMxc3VXQm5ZY0lDVjZyU3lZcGRObFR6ZVo0VjNId0JqSUdUQlZz?=
 =?utf-8?B?VDdNcEZ5bTNKNnRiOFB6eVdMZGFiTzhNTmhpaTVRTnlRSGlzekZ6aklWeEly?=
 =?utf-8?B?NGxEcDRJWUV6NVJEWVhPRTlBNDBtdU1DWEpsbDVaYnBvNnBrcm1RWWNnaSti?=
 =?utf-8?B?VkpmMk9Gc0hJN2RMVFkrWHNlS3BtUmVjbzdjUytmazg0SDFhdGJQc0hQZEpX?=
 =?utf-8?B?UWphUjdSR2hYN1NlVit2SGlrSGY0cDNwTnRQSjFJNDVDYzhMalZsVmgydzNT?=
 =?utf-8?B?L1BISmhrd2VlNHRubnhlSHVSNVlvK3NnN3lNV2xJN3JRdE9jSGlQY0x0aXM3?=
 =?utf-8?B?RzBCWXRrWXoxakc4Vm1IZ29Yd0dYTTI1cng3eXRKUk1JaGVTUU1JbzJ4RTdj?=
 =?utf-8?B?bmV4YWc1Wk53WmlFUEVzOWpjWTBtVmZUcDhVUjVuMlhGekNzZmg2Vk15eUF6?=
 =?utf-8?B?TmViOE42S0t0UVRhbTlKM2tFY2ljcGY4YVNBTWFjclhZUWU2emFtVWEwNHNr?=
 =?utf-8?B?RzVwck9QMHFWRkcvQ1UyYzNIWktTb0pYOTBudlpYUG5zb1NiY3BrenVjYXdK?=
 =?utf-8?B?VGtyMWt6MFBLQ2xrV2RPeTZHT1RvTlpvWUZSWTNuTHNzY0NDanE1dm5SVTBP?=
 =?utf-8?B?TnJHSGJ3K3VsN1ZYZGpwSjV1WEVYdnNFM0Nab0w4dG1LakdMWG52aGRQbWFP?=
 =?utf-8?B?SFRFSGRSU2ZjKzlWdTd5SlEyYmtTbGU2Y2w5Q1JDZ0h5aVJjQURLZXd0VmhG?=
 =?utf-8?B?R3ZmZm5EVXdvY3pnb0w5bU1jMkxDZVJYdndaRldwUEJORW11K3lZSjRWamFy?=
 =?utf-8?Q?281GEiwf/YuqWNqHm8Eb8bWCt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b22f399-cc08-457d-e6bd-08de22586571
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2025 02:00:18.7073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z+1gUjB62EfWdGe1RjoPSmjLfpelVhVtarLVhdtSQA4BUhc7wKehzrmQmgF0K5JYPuUdpiXCkHTIegipcetAFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7057
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

PiBGcm9tOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPg0KPiBTZW50OiBUaHVyc2Rh
eSwgTm92ZW1iZXIgMTMsIDIwMjUgNjozMiBBTQ0KPiANCj4gT24gTW9uLCBOb3YgMTAsIDIwMjUg
YXQgMTI6MDY6MzBQTSArMDUzMCwgQm9yYWgsIENoYWl0YW55YSBLdW1hciB3cm90ZToNCj4gPiBI
ZWxsbyBKYXNvbiwNCj4gPg0KPiA+IEhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLiBJIGFtIENoYWl0
YW55YSBmcm9tIHRoZSBsaW51eMKgZ3JhcGhpY3MgdGVhbSBpbg0KPiA+IEludGVsLg0KPiA+DQo+
ID4gVGhpcyBtYWlsIGlzIHJlZ2FyZGluZyBhIHJlZ3Jlc3Npb24gd2UgYXJlIHNlZWluZyBpbiBv
dXIgQ0kgcnVuc1sxXSBvbg0KPiA+IGxpbnV4LW5leHQgcmVwb3NpdG9yeS4NCj4gPg0KPiA+IFNp
bmNlIHRoZSB2ZXJzaW9uIG5leHQtMjAyNTExMDbCoFsyXSwgd2UgYXJlIHNlZWluZyBvdXIgdGVz
dHMgdGltaW5nIG91dA0KPiA+IHByZXN1bWFibHkgY2F1c2VkIGJ5IGEgR1BVIEhhbmcuDQo+IA0K
PiBUaGFuayB5b3UgZm9yIHJlcG9ydGluZyB0aGlzLg0KPiANCj4gSSBkb24ndCBoYXZlIGFueSBp
bW1lZGlhdGUgdGhlb3J5LCBzbyBJIHRoaW5rIGl0IHdpbGwgbmVlZCBzb21lDQo+IGRlYnVnLiBN
YXliZSBLZXZpbiBvciBMdSBoYXZlIHNvbWUgaWRlYT8NCj4gDQo+IFNvbWUgZ2VuZXJhbCB0aG91
Z2h0cyB0byBjaGVjaw0KPiANCj4gMSkgSXMgdGhlcmUgYW4gaW9tbXUgZmF1bHQgcmVwb3J0PyBJ
IGRpZCBub3Qgc2VlIG9uZSBpbiB5b3VyIGRtZXNnLA0KPiAgICBidXQgbWF5YmUgaXQgd2FzIHRy
dW5jYXRlZD8gSXQgaXMgbW9yZSBwdXp6bGluZyB0byBzZWUgYW4gaW9tbXUNCj4gICAgcmVsYXRl
ZCBlcnJvciBhbmQgbm90IHNlZSBhIGZhdWx0IHJlcG9ydC4uDQo+IA0KPiAyKSBDb3VsZCBpdCBi
ZSBvbmUgb2YgdGhlIHNwZWNpYWwgaW9tbXUgYmVoYXZpb3JzIHRvIHN1cHBvcnQgaUdQVSB0aGF0
DQo+ICAgIGlzIG5vdCB3b3JraW5nPyBNYXliZSB3ZSBtaXNzZWQgb25lPw0KPiANCj4gMykgSSBz
ZWVtIHRvIHJlY2FsbCBMdSB0ZXN0ZWQgdGhlIGNvaGVyZW50IGNhY2hlIGZsdXNoaW5nLCBidXQg
dGhhdA0KPiAgICB3b3VsZCBhbHNvIGJlIGEgZ29vZCBxdWVzdGlvbiwgaXMgdGhpcyBpR1BVIGNh
Y2hlIGluY29oZXJlbnQgd2l0aA0KPiAgICB0aGUgQ1BVPyBDb3VsZCB0aGlzIGJlIGEgY2FjaGUg
Zmx1c2hpbmcgYnVnPyBJdCBpcyB2ZXJ5IGhhcmQgdG8NCj4gICAgdGVzdCB0aGF0IHNvIGl0IHdv
dWxkIG5vdCBiZSBzdWNoIGEgc3VycHJpc2UgaWYgaXQgaGFzIGEgYnVnLi4NCj4gDQo+IDQpIE5v
Ym9keSBoYXMgcmVwb3J0ZWQgYW55IG90aGVyIHByb2JsZW1zIHNvIGZhciwgc28gSSdtIGluY2xp
bmVkIHRvDQo+ICAgIHRoaW5rIHRoZSBtYXAvdW5tYXAgaXMgd29ya2luZyAtIGJ1dCBtYXliZSB0
aGVyZSBpcyBzb21lIGVkZ2UgY2FzZQ0KPiAgICB0aGUgZ3B1IGRyaXZlciBpcyB0cmlwcGluZyB1
cCBvbj8NCj4gDQo+IFRoZSBsYWNrIG9mIGEgZmF1bHQgcmVwb3J0IGlzIHZlcnkgcHV6emxpbmcs
IGV2ZW4gaWYgaXQgd2FzICMzIEkgd291bGQNCj4gdGhpbmsgYSBmYXVsdCB3b3VsZCBiZSB0aGUg
bW9zdCBsaWtlbHkgb3V0Y29tZSBvZiBtaXNzaW5nDQo+IGZsdXNoaW5nLi4gVGhlIGxhY2sgb2Yg
YSBmYXVsdCByZXBvcnQgc3VnZ2VzdHMgdGhlIHdyb25nIHBoeXNpY2FsDQo+IGFkZHJlc3Mgd2Fz
IG1hcHBlZCBhcyBwcmVzZW50IHdoaWNoIHBvaW50cyB0byAjNC4NCj4gDQo+IENhbiB5b3UgaW52
ZXN0aWdhdGUgYSBiaXQgZnVydGhlciBhbmQgbWF5YmUgc2VlIGlmIHdlIGNhbiBnZXQgYSBiaXQN
Cj4gbW9yZSBkZXRhaWwgd2hhdCB0aGF0IEdQVSB0aGlua3Mgd2VudCB3cm9uZz8NCj4gDQoNCkJl
bG93IGlzIHByb2JhYmx5IHRoZSBmaXJzdCBlcnJvciByZXBvcnRlZCBvdXQgZnJvbSB0aGF0IGxv
bmcgbG9nOg0KDQo8Nz5bICAgNjcuMjMxMTQ5XSBbSUdUXSBnZW1fZXhlY19ndHRmaWxsOiBzdGFy
dGluZyBzdWJ0ZXN0IGJhc2ljDQo8Nz5bICAgNjcuMjMyMzM0XSBpOTE1IDAwMDA6MDA6MDIuMDog
W2RybTppOTE1X2dlbV9vcGVuIFtpOTE1XV0gDQo8Nj5bICAgNjcuMjMzNjg1XSBnZW1fZXhlY19n
dHRmaWwgKDE0NDQpOiBkcm9wX2NhY2hlczogNA0KPDc+WyAgIDY3LjIzMzg4M10gaTkxNSAwMDAw
OjAwOjAyLjA6IFtkcm06aTkxNV9kcm9wX2NhY2hlc19zZXQgW2k5MTVdXSBEcm9wcGluZyBjYWNo
ZXM6IDB4MDAwMDAwNzAgWzB4MDAwMDAwNzBdDQo8Nz5bICAgNjcuMzE2ODQ3XSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybTppbnRlbF9wb3dlcl93ZWxsX2Rpc2FibGUgW2k5MTVdXSBkaXNhYmxpbmcg
YWx3YXlzLW9uDQo8Nz5bICAgNjcuNzkzNTAwXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppOTE1
X2Ryb3BfY2FjaGVzX3NldCBbaTkxNV1dIERyb3BwaW5nIGNhY2hlczogMHgwMDAwMDA3MCBbMHgw
MDAwMDA3MF0NCjw3PlsgICA2Ny44MjYyNjhdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmk5MTVf
ZHJvcF9jYWNoZXNfc2V0IFtpOTE1XV0gRHJvcHBpbmcgY2FjaGVzOiAweDAwMDAwMDVjIFsweDAw
MDAwMDVjXQ0KPDc+WyAgIDY3LjgyNzQ4NF0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aW50ZWxf
cG93ZXJfd2VsbF9lbmFibGUgW2k5MTVdXSBlbmFibGluZyBhbHdheXMtb24NCjw3PlsgICA2Ny44
Mjg3OTFdIFtkcm06ZWJfdmFsaWRhdGVfdm1hIFtpOTE1XV0gRUlOVkFMIGF0IGViX3ZhbGlkYXRl
X3ZtYTo1MDkNCjw1PlsgICA2OC44MjQ1OThdIGk5MTUgMDAwMDowMDowMi4wOiBVc2luZyA0Ni1i
aXQgRE1BIGFkZHJlc3Nlcw0KPDM+WyAgIDY4LjgyNTQ4Ml0gaTkxNSAwMDAwOjAwOjAyLjA6IFtk
cm1dICpFUlJPUiogR1QwOiBHVUM6IENUOiBGYWlsZWQgdG8gcHJvY2VzcyByZXF1ZXN0IDYwMDAg
KC1FT1BOT1RTVVBQKQ0KPDM+WyAgIDY4LjgyNTY5Nl0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1d
ICpFUlJPUiogR1QwOiBHVUM6IENUOiBGYWlsZWQgdG8gcHJvY2VzcyBDVCBtZXNzYWdlICgtRU9Q
Tk9UU1VQUCkgMDIgMDAgMDAgMDAgMDAgNjAgMDAgOTAgMDMgMTAgMDAgMDANCjwzPlsgICA2OC44
MjU3OTBdIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIEdUMDogR1VDOiBDVDogRmFp
bGVkIHRvIHByb2Nlc3MgcmVxdWVzdCA2MDAwICgtRU9QTk9UU1VQUCkNCjwzPlsgICA2OC44MjU4
MzldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIEdUMDogR1VDOiBDVDogRmFpbGVk
IHRvIHByb2Nlc3MgQ1QgbWVzc2FnZSAoLUVPUE5PVFNVUFApIDAyIDAwIDAwIDAwIDAwIDYwIDAw
IDkwIDAzIDEwIDAwIDAwDQo8Nj5bICAgNjguODI1OTc0XSBpOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bV0gR1QwOiBHVUM6IENUQiBpcyBkZWFkIC0gcmVhc29uPTB4NDANCg0KdGhlcmUgaXMgYSBidWZm
ZXIgaG9sZGluZyBtZXNzYWdlIGZyb20gZGV2aWNlLCBhbmQgdGhlIGxhdGVzdCBtZXNzYWdlDQpj
b250YWlucyBhbiB1bnN1cHBvcnRlZCBhY3Rpb24gbnVtYmVyICgweDYwMDApIGluIGN0X3Byb2Nl
c3NfcmVxdWVzdCgpLg0KDQpMaWtlbHkgdGhlIG1hcHBpbmcgZm9yIHRoYXQgYnVmZmVyIGlzIGlu
Y29ycmVjdCwgZWl0aGVyIGR1ZSB0byBzdGFsZSBpb3RsYg0KZW50cnkgb3IgbWFwL3VubWFwIGNv
cm5lciBjYXNlcy4gSSdtIGluY2xpbmVkIHRvIHRoZSBmb3JtZXIuDQoNCkNoYWl0YW55YSwgcHJv
YmFibHkgeW91IGNhbiBjaGVjayB3aGV0aGVyIGl0J3MgYWx3YXlzIHRoZSBzYW1lDQp0ZXN0IGNh
c2UgKGdlbV9leGVjX2d0dGZpbGwpIGZhaWxpbmcgd2l0aCB0aGUgc2FtZSB0eXBlIG9mIGVycm9y
Lg0KDQpJZiB5ZXMgaXQnZCBiZSBlYXNpZXIgdG8gZnVydGhlciBpbnNlcnQgc29tZSBkZWJ1ZyBj
b2RlIGFyb3VuZCB0aGF0DQpidWZmZXIuDQoNCg==
