Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4118D1467
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 08:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8400A10E4CE;
	Tue, 28 May 2024 06:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h8U61teM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1076A10E3C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 06:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716877829; x=1748413829;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X/2+JpSY5aEtPgD/747sldt+QBa4hhxoLm2lh6RmzjE=;
 b=h8U61teMLj1i/CHM+UlUItBlI0BvE/uxR9jrLbjnAs6iRUr1C99QXEFm
 tdcIu84O5hEr1iNy+qn3fGP6czP4+ZUMgl5EVEZPIn5bVQvWhOaGL+azj
 b06qQI0DAGDGqZHBRmf5k/3k/5iBSZL5mtwp3nOXvUbUWTGFtjgbiThNv
 A+O/+o50DNlFZ+Up31gv1p3JN6A7PLH8GTW4/sUhrNuxs8/TgItpidDW/
 IbuUED/a9PPaRykMsbka6LSvccqSvZhCRs1qhkjfJaE6/3Jzyw/2XrB86
 1d2/h5G4Sr5ywumHNTbgcSQ9ZPy3/xOpfs1qOxE2oWjsNVUmsE6EEnQvd A==;
X-CSE-ConnectionGUID: J/kx4lvgTu6Wg+YzrtrhlA==
X-CSE-MsgGUID: /8lYSTEJRQyaORsli0Fe3Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="23868793"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="23868793"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 23:30:29 -0700
X-CSE-ConnectionGUID: 2zJqX6irSnyqmto+docGeg==
X-CSE-MsgGUID: MvKr3thuSNCFzXHg7rw74A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="34977366"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 23:30:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:30:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 23:30:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 23:30:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 23:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vxt99Y8oGJnLohbBCKzKwnyaBk10MnD42yj52XyWqCJQykj21RBI8125u6LZjq05lx85eWPkiNwGyODXppw1DYgMc37H59PxywDavUukfRGtvc8c0i+ZBqv1f5fJprCMf4Mys/U/XiQUmCVQREJpYzbPRXsj5nfFHScBIwvE0uRVaFLYlkOkmBiWRroHirPFxaiwx4cUqSA9Ind4itSsOEcs1thUNM24+m/Qtt+5gVgjRtApeAk4IQhWkRXSwRyV+lP9Ff0ZI6fhuhDFk0yPt5gwIJuzba2+lMtY3PdoZ0PDkQF1EFxAaXnqXzk0hYIWpzP3kvYjvVkwcSwCXa2cQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/2+JpSY5aEtPgD/747sldt+QBa4hhxoLm2lh6RmzjE=;
 b=P80Q3qH7z1gVAVQkOvAJb8UPu5DdS9sBbeItKffsNAL03MKWZFrFYkzKOPb16I7NSreTqun8Ybd/UNP6w2np4W4e7+eyu/+kPc5uH9A5vfKnxRvlTaQFDUNyBkiluHxMN9s+p3wpOsa359OCQXVIN866SR7I8+nWMFJ7w5wrfpQJH/GLh+7rhT8ePxx7T9uMPDyhjqEO4K0JElzSXisRIrvEJrO2u2d33YgB7BR4USgZsEDqM+sPJc/V/mJ92Nq+L7Co8aK5mSGl+ddKgmXpkZWmV+itsUM0jy48X14JD3H68v2/n8eIDkg8qa3C5X7ytleE7ji2TJ+dxRxGWjZX5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4974.namprd11.prod.outlook.com (2603:10b6:a03:2d6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 06:30:24 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7611.025; Tue, 28 May 2024
 06:30:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v3 04/20] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Topic: [PATCH v3 04/20] drm/i915/psr: Move printing PSR mode to own
 function
Thread-Index: AQHasAax9Njm1egFQEqBaRg1LMn+L7GsMPQw
Date: Tue, 28 May 2024 06:30:24 +0000
Message-ID: <PH7PR11MB5981D20BF576970076F7EDA3F9F12@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240527072220.3294769-1-jouni.hogander@intel.com>
 <20240527072220.3294769-5-jouni.hogander@intel.com>
In-Reply-To: <20240527072220.3294769-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4974:EE_
x-ms-office365-filtering-correlation-id: b4be79a8-63f8-438d-1089-08dc7edfa810
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?cnVpOGZPb1VqQzc1NGFUUWVGcVNPL2VYSjhpRVpOQkRvbDE5aGpBVnVXL3ZU?=
 =?utf-8?B?S3d1dks3Y2tZUzliUTBLbUprN0NVVkpnRmNJcGxQajhFTE1GSnRPY1AxK0tN?=
 =?utf-8?B?Q2JTUnBDdkhZQm8ySEdLS3Evd0dmb0o3aTlBVnE4U1ZYcE1KdkJaVDhWb0VX?=
 =?utf-8?B?RmwvcUVuaWgwMHdFUkRDYnJGQURjK1hta1hBUTNYcUdhUFN1clZrczNFd29V?=
 =?utf-8?B?K3dicHp2Sm1henBHSkFnSlFHaUx4eUwrRWtsaGFpbXh5Y3Jub3NEOUwvUVlB?=
 =?utf-8?B?ZXVURXZXQWswS2tyRCtaeEFuRWcraC83VVNIMUpYMmlXMjk1K3VPQ0FMUmtM?=
 =?utf-8?B?YkE3ZUpIQ3hqS2VuSytwd05IRUwrY2N0T2xJVDN3TTh4Q3cxQytDMFRWN2Fj?=
 =?utf-8?B?VHBITjgzMlBPNlVMbENnMk45VXdzTHNTWldsakRaaTZ2dk8wdE5TeVkzUTNZ?=
 =?utf-8?B?VFgybGVJWG1pNUpRb1A3ek1ROExHSVhtVlgxVVVsbUpZVExaSHlSSkVnMS91?=
 =?utf-8?B?dUFwbjBWRkIxbDMvcUtTQ1pnTVl2OEVGK3E2aXJoQmMzQ3l2THZNS1ZldHhM?=
 =?utf-8?B?MUd6QjM2WTVsdmlOMXRUQzFkR09PZkRPOVBuYlpTK0pDZVd6cS9lUVZFTWJQ?=
 =?utf-8?B?TTk5TVZpc3R0YmY3bkdFaG9jZldwMDc0eit1YVBEbFZwZkxrUzR6WHJkZ3VR?=
 =?utf-8?B?SURHS1E1SHlsakhLV0xJbGs5SGV1Y0xHclFwQmtIeWxDc2R2UXdQM1FUdE0y?=
 =?utf-8?B?TXprQWlDS01ZUkJjTkI3ZVp0TnQzYjRJUEtKT0VTQ1RUVGlhSXNwUVJNV0Fx?=
 =?utf-8?B?NjRqdUJNZ0ptekgrcmN5NXl0ZDJOTUJjSElZT0J2aXRPWEEwUXYwcUV2Tjl2?=
 =?utf-8?B?bEh1Uzg1WmJSNFpTK2YreWhPTEh3SFRLWTNvb05wME9oSjlWMFN2YUNCd2FJ?=
 =?utf-8?B?ZW10c25GNGlReGRVdEdMWjV1NHkxNzY1SWlyY3FMVFprakhsaUR4Umd4d0JE?=
 =?utf-8?B?VG9WelllYUVFVEU5YjgxL1gzTFpwb0xMZFNTSmJpRlVwNnVVdW1ZZ1A2cTBq?=
 =?utf-8?B?S2FFdGJGeGJMMUFibWMzQW9IeGxDMWpKbHA3eFRVWEtiWmx3SmM1bEQzUkRK?=
 =?utf-8?B?SURnQ1NVMnJQR3pEUk5WcDh5eTN2cG1Nb3l3YTVlcXFETkw1N2hrcEdlRDdI?=
 =?utf-8?B?VmVHR3ZjeGkwRktqQVM3ZFlqcjEvMnNSalRaNVJFQVI4R1JJM0lZWnRUNXlv?=
 =?utf-8?B?TC9tamNkTER5di9DVUphQm9QYmlycTd1SUEzeDhpVmRTYmNveHdVTzcwZXlC?=
 =?utf-8?B?dEdVMEJ1SDV0V0cwY29PNi81N3BxTEc0NFhlNWN4cW5Fc2FwNGdIYmtHS29s?=
 =?utf-8?B?NDVFRVNrbEZqL2dmK3dOYk1URklJRjBNZTRtenk4MDRUS3ZJT1Z2Y3JLcTRX?=
 =?utf-8?B?ekk0a0NVZUNQSEJYLzZ6Qis2dU95cTJSRU1rZjYvRkl6N29kS2hJWGljQllO?=
 =?utf-8?B?MmlXRW9scWVxczAzTGhpblZSb3dsT1BPeEMyRXZJV2o5cWNnbWNndERVVU43?=
 =?utf-8?B?VkliNFczTlk2UzdYK01CclBKTmtJSXlKUUNQR25keEhRaFFXTk5kMmlKMk5k?=
 =?utf-8?B?QWRZZ1RSWm5iVCtOczdmaGg1RFF1eXBNYTE2RUEwbExvNlZFVFB4WTdnU21p?=
 =?utf-8?B?YUpFVDRTZFVhQU9hTVMwR0NOZ010RzArSUdGSkNKS0laVFZMc3pMY1BRN2FN?=
 =?utf-8?B?ejdtTjYyaEx0M2dRS0FOcXM4a09lZFZJOFlMemdhUXF3cHRHU0sveHN6Z1NR?=
 =?utf-8?B?V3VPSEdleW8vM3dpWUdQZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UngzWGVDWllSajJuNnByVkdOVW4rZGNBMDg5OXF5Tk04ajc5ZHdzWkU2OTJl?=
 =?utf-8?B?K0hzbythYmkwL0ZJWmV2YmllTG02Ymk5TEV4ZlNudCtVNkt1cjNuamFLQXhh?=
 =?utf-8?B?WWk5Qm9DV3VlVzh6TndqNGxidmdpOEs4SWUreEF3VkI5Vmp6R0dUd2tvSGZ2?=
 =?utf-8?B?N0I3ZTcvTDgxZ0tYWHpwUUltbjRybllUdTdTRm5rc3lIeDl1cnRUajVraTFY?=
 =?utf-8?B?Sko5U3ozdFRaVlVDY0VsUWs4NXF2MFhaOVFreHFJa3hQbGZKcld3cUJob05p?=
 =?utf-8?B?UHpGVXdJR1dYNHR5cjdwaEgyZnh0Z1hCR3ZraUNCdjRRWU1Meml1RVpyTzJ4?=
 =?utf-8?B?UGFsekF3dXZHbVY3WWpaWm1KYTZka1pYcTJIN3BqZ0hmem9UQ0pnZndabTF0?=
 =?utf-8?B?UW41L3JabFlBN1RSb2pDSHJaNnZCSDdkNDROTTAwT3VQd0xiYmFpVyt2TUs2?=
 =?utf-8?B?Tm1sakFnYWtoSXRTa2JmblhTRGQ5VGkreFBxZm5BVzBBbXZrb054bzdpVVlR?=
 =?utf-8?B?ZC9McURuRS9IYzJMR3FuUWNJUjZsMDE0MjVJU00wQzNjNkN3eVl2YVFxNWZu?=
 =?utf-8?B?VWdsNlBVZVJYZVBGb0FXcG9JVWxVdW5vcng0UndmKytUdjdzNDZlbzJCOEND?=
 =?utf-8?B?azZDVnhGaVEvdzRGbVdEMXJOMmpYMVVLcWs3QVJOWjM5V08vSVZMbVpvd2Jy?=
 =?utf-8?B?eExUSUhGUVlGNnpxTG9ZOHFKeGQ4YUY3cmdHQkE3RHZYOWR4Tm8ydWthdWRx?=
 =?utf-8?B?cGwzSjlIWlZrTmlRZDlZZEhNUGJ3VUkrbUp3RjhXVlB3NjBKbjN2WW1GRFVm?=
 =?utf-8?B?R3FFZk1sQWcxck8xbWhROVUxVGMrOUNOdTkxQVFMdkJ3UnFmcU0xNDNpdUh1?=
 =?utf-8?B?L2lVNGZmMklJY1hOWDBpOElWb1h2Nkx0Z0xQbmUrRkxxb21Ka0cySjVWSWZk?=
 =?utf-8?B?RUtZNVh6bGhXMkwyS2ZMM25NbVRMTUZieldxL2FOWlJqNXlpYjdSdk9qWTQ1?=
 =?utf-8?B?Vm82VjgyWllTLzROZTRWWVppaGQ5NnpNRXB2ZU01T3V2VnZoS2l5ZE8zWDZn?=
 =?utf-8?B?Q2x6SkNNRkRGelJ4a2VlZ09tZkhQa1RxVk9uSFBrYUhYWHpIMjFjWnpIY0ta?=
 =?utf-8?B?RmxmSUhaVWxFcE52ZUJ5dFhoSGRoWHVYcWs4YTBPQnhNTExUcFdCSThSS09j?=
 =?utf-8?B?bGJtdmRyQ3FzYVZkUTB0d0gzOTdhdGdHZnZYRnFSaEN3YWxaVzBFSnRFMGRX?=
 =?utf-8?B?cTMyUEYyU1dtYkVYS0VKbVcvMk1qWjNqRmpDL0JuNzZEK2ZmYW9IaSs5b1d3?=
 =?utf-8?B?ay9lMm5kZkwzZlB5bEFJaHRTNGJmTjNqNFhYcjRSK3ZZc21tODd1V3JGcUQ4?=
 =?utf-8?B?djc1VW93V1Jrc3hYc2M1TEtWTW5KSS90Q0pQa01rNk5xSHlhclZyTFY4dUNj?=
 =?utf-8?B?MzRNTHZKUzB5NWhWSEplVXNUYWhMZ25ZcHB4dXZZV1BrNU5jYmNNR3BkOVpI?=
 =?utf-8?B?dE5scFU5N2FZSzBmSlVwUUF6Y1N5aVV6Y3lSdjV5UnJMbDY4NjIzMThZSFpy?=
 =?utf-8?B?YUZpUzRSWHlnb0lvU3ZoRmFVakdWV0UwY2M2cG0yRWNib3Z6azBCRFJURStS?=
 =?utf-8?B?dVB3Vy8vR2ZPSHZXYjduM3p5RCtmS1IrUFVnNXkvUllHY05KcEZGNkVJZ0F0?=
 =?utf-8?B?YjVUdWZxN3NKdHNoSVd5V2xzN3BST0lVWk1wTmlyVWE5Q01vNUw4aXRWcmQ0?=
 =?utf-8?B?TEdUayt6VjIrQzJwdTZSRHp4cjNsTkRyMmlDbHpEekh0NFZQZS9GZ0NMQlB1?=
 =?utf-8?B?UmpqVmQvVUhwVkhmTnFTeVEwTEVGZEhaQ2Q3bkUvcUx6MzZlREJlcU1rRDF1?=
 =?utf-8?B?aXhkQituTTBBWnlOdzgxaEZ1TGNQbGhFdDk5dllidzhCTnU0cmZ5QnVRZUlY?=
 =?utf-8?B?azdHeHNEd2ZYaVJ0SXgzOVdjc0JZV0h2Z2ZCNzFGcGJ0RFdwa3hNUHFTeVpL?=
 =?utf-8?B?cG9Ic21lOHd0N21MWHlCVVErWjFVeWlNTXNpN1hNRUNmeUs2ZHJOb1cvaUM5?=
 =?utf-8?B?ZWpLZjNacUpKSjB0bzkrYTU0dVJqT2dNOEhjZ0VOcG9WRDUvM1NsbXZLdDZu?=
 =?utf-8?Q?UjKGQVNRAOt0HW5Aa6Hpj3Uie?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4be79a8-63f8-438d-1089-08dc7edfa810
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 06:30:24.1690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GYtdvj8wCMmUX0lqVU+SuaUmU3a+FTurTQqboMObd7yfPFfGRKmRbl21U7PbySTdRIk2xWC1qe0uQPaPpr7NCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4974
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
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDQvMjBdIGRybS9pOTE1L3BzcjogTW92
ZSBwcmludGluZyBQU1IgbW9kZSB0byBvd24NCj4gZnVuY3Rpb24NCj4gDQo+IGludGVsX3Bzcl9z
dGF0dXMgaGFzIGdyb3duIGFuZCBpcyBhYm91dCB0byBncm93IGV2ZW4uIExldCdzIHNwbGl0IGl0
IGEgYml0IGFuZA0KPiBtb3ZlIHByaW50aW5nIFBTUiBtb2RlIHRvIGFuIG93biBmdW5jdGlvbi4N
Cj4gDQo+IHYyOiBzL2ludGVsX3Bzcl9wc3JfbW9kZS9pbnRlbF9wc3JfcHJpbnRfbW9kZS8NCj4g
DQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgMjYgKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5NDNkZTNjYTM5YzIuLmRmZDQ1ZjZkN2VkZCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0z
NjA1LDEzICszNjA1LDI4IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9zaW5rX2NhcGFiaWxpdHko
c3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJICAgc3RyX3llc19ubyhwc3ItPnNp
bmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpKTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBp
bnRlbF9wc3JfcHJpbnRfbW9kZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCSBz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmlu
dGVsX2RwLT5wc3I7DQo+ICsJY29uc3QgY2hhciAqc3RhdHVzOw0KPiArDQo+ICsJaWYgKHBzci0+
cGFuZWxfcmVwbGF5X2VuYWJsZWQpDQo+ICsJCXN0YXR1cyA9IHBzci0+c2VsX3VwZGF0ZV9lbmFi
bGVkID8gIlBhbmVsIFJlcGxheSBTZWxlY3RpdmUNCj4gVXBkYXRlIEVuYWJsZWQiIDoNCj4gKwkJ
CSJQYW5lbCBSZXBsYXkgRW5hYmxlZCI7DQo+ICsJZWxzZSBpZiAocHNyLT5lbmFibGVkKQ0KPiAr
CQlzdGF0dXMgPSBwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCA/ICJQU1IyIiA6ICJQU1IxIjsNCj4g
KwllbHNlDQo+ICsJCXN0YXR1cyA9ICJkaXNhYmxlZCI7DQo+ICsJc2VxX3ByaW50ZihtLCAiUFNS
IG1vZGU6ICVzXG4iLCBzdGF0dXMpOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQgaW50ZWxfcHNyX3N0
YXR1cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+
ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9k
cCk7DQo+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gaW50ZWxfZHAtPnBzci50
cmFuc2NvZGVyOw0KPiAgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0K
PiAgCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiAtCWNvbnN0IGNoYXIgKnN0YXR1czsNCj4g
IAlib29sIGVuYWJsZWQ7DQo+ICAJdTMyIHZhbDsNCj4gDQo+IEBAIC0zNjIzLDE0ICszNjM4LDcg
QEAgc3RhdGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwNCj4gc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9wbV9n
ZXQoJmRldl9wcml2LT5ydW50aW1lX3BtKTsNCj4gIAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0K
PiANCj4gLQlpZiAocHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gLQkJc3RhdHVzID0gcHNy
LT5zZWxfdXBkYXRlX2VuYWJsZWQgPyAiUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZQ0KPiBVcGRhdGUg
RW5hYmxlZCIgOg0KPiAtCQkJIlBhbmVsIFJlcGxheSBFbmFibGVkIjsNCj4gLQllbHNlIGlmIChw
c3ItPmVuYWJsZWQpDQo+IC0JCXN0YXR1cyA9IHBzci0+c2VsX3VwZGF0ZV9lbmFibGVkID8gIlBT
UjIiIDogIlBTUjEiOw0KPiAtCWVsc2UNCj4gLQkJc3RhdHVzID0gImRpc2FibGVkIjsNCj4gLQlz
ZXFfcHJpbnRmKG0sICJQU1IgbW9kZTogJXNcbiIsIHN0YXR1cyk7DQo+ICsJaW50ZWxfcHNyX3By
aW50X21vZGUoaW50ZWxfZHAsIG0pOw0KPiANCj4gIAlpZiAoIXBzci0+ZW5hYmxlZCkgew0KPiAg
CQlzZXFfcHJpbnRmKG0sICJQU1Igc2luayBub3QgcmVsaWFibGU6ICVzXG4iLA0KPiAtLQ0KPiAy
LjM0LjENCg0K
