Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB464B452CC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 11:16:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C0A10E3CE;
	Fri,  5 Sep 2025 09:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W09sVxgO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E3010E2CD;
 Fri,  5 Sep 2025 09:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757063808; x=1788599808;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ek2NEnhtJOFZnqWbbu7q0AxIQPqTYm6QZE9Kef4QVHU=;
 b=W09sVxgObCFDKjNhHnqLhGp1vRFREQUNcGNGKEOEoQL8uPWTnODNw+hn
 EcU2YMqo9wGXRT1+v0PVejwhs8SezE9D616UHDrnCR7HnFl9Hyi42zDgH
 le/RgF1gQCdM0fICCx5A3wKrcqHnuacFb+EGY0h1428qoH2DnUkOibtwo
 UAEU1JMLJ83m2d650Zbc22dSYdYSBaBI+4aS9We35lynB7d0FPCpNLfC6
 XVgONdRFeZhpgb8jmryubomL/hHuj6L1U1BDMT6UzwTp4Ms22c20B+WHP
 QymThnUvN8PEKZwbpDqaP+Q+aLIm2nOZ1x+9yRuk6bQ1U+o+9QZ1z7G6a Q==;
X-CSE-ConnectionGUID: X2E1l301Qr2ywQn0p+BASg==
X-CSE-MsgGUID: ZWFMbDtWRq6tXzay3NWIQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58625298"
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="58625298"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:16:47 -0700
X-CSE-ConnectionGUID: WccA3QatTn+8C6jy0x7GYg==
X-CSE-MsgGUID: N3hBCe3WTuC9DduyypVlPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,240,1751266800"; d="scan'208";a="171329438"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 02:16:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 02:16:46 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 5 Sep 2025 02:16:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.76) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 5 Sep 2025 02:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N+2UKuIQR85Q4sxBvaQElB+NPVdh59WNEg/m6TwsnOqMvYTF/gZyujnIPmz1WaEX3kTb6jzfLOo0w5oLQoBzCN5IBP0OykdYn67BAiq5a+0ERbwcwdmcR6x8eyxQRoIqwBn9WtHyJzthGKhiLJS2U9mzxNEAL7KcdJOcRe6ytRcoskTXRhu9DCFos506iuWFT11bUSyOqe+KOUVBj7XvbA0gkpIpQHqKNMZpwWO5rMWt2FFSy4ckdVZZyW0mL0NgxKtrHSHXcZJ+gSVnTrW6DC5F5w7v5iklRz/KqwX3u85AEVsFqDp5aDSBh7gZYuY7s1PVU8I6gIxZApQ/b4teTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ek2NEnhtJOFZnqWbbu7q0AxIQPqTYm6QZE9Kef4QVHU=;
 b=CyiPGLrqokh8UvZMAP7m+eRQ5cknu8o5lkm4hxw56QAXuv9L9MJU+Ycc+2bABOzoFthPugtKJe72BMbUuHLxnDHr45uSPWBcA6Y2tjgLTANA7ZnLTv1otAWCDjZL4JA8nzyhoUU10o1TOkCAEUs0uDDVx3khc+E+oTLSBwuzGBOpGjuNWuNs52nuAPvH9PcHsjaPSlbfilB+j8dRbBJR7DyQ+ltzSyrODP7E7nMTzbVR1o1HsZ4IWo6O+pRFp68sh5vxZl5Q06OsYlH3DEVsYR5aP12tL6j2l4FWW2I8zFWnq/xKIeahSfe+khs8khVdOEVhvA+dsikoPWTvRiqy7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA3PR11MB8076.namprd11.prod.outlook.com
 (2603:10b6:806:2f0::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.17; Fri, 5 Sep
 2025 09:16:38 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9073.026; Fri, 5 Sep 2025
 09:16:38 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Thread-Topic: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Thread-Index: AQHcFxkMQx2nqg0quE+0qWxqRcO6i7SEXUQw
Date: Fri, 5 Sep 2025 09:16:37 +0000
Message-ID: <DS4PPF69154114FAF4EB37911127576FD79EF03A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250827060809.2461725-1-jouni.hogander@intel.com>
In-Reply-To: <20250827060809.2461725-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA3PR11MB8076:EE_
x-ms-office365-filtering-correlation-id: e09b0fdb-8f4b-45be-64ab-08ddec5ceafe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?bTUrR1RRYUloTGovY1F2aklEdTVWcWYxMWVMdWxUemx0bXorc0hadmhhRHZh?=
 =?utf-8?B?T0lXVnNRYWltUFVSZnRROERBbXV0UGoyVXdEUE1UZzVSL3FIVmFZWWY3TWRL?=
 =?utf-8?B?UzFrUS9NQy9UZTlsN1RrVEJyWGorZit4aGlOcjdvWkFqQTRWZUNVQjFpZjlr?=
 =?utf-8?B?S2JQdXZFQWd4WTZqTEdRRXRSTFNiVVZiYXBTaEgyblZ2OWhRdTVpTWVxSlhJ?=
 =?utf-8?B?TkNIbGV5dnNpRkdPMmRSS3M1clJ5ODM1KzV3a0RWRE5pUUJRbTYvcjBzOU5G?=
 =?utf-8?B?QmR6dnJtZ1k4eGtrNzlEdGQvL0wvZmhodjg4QldvOCtPbW0rTWdhQXl0a05x?=
 =?utf-8?B?ZzFOMTRxZ1pTOUYwYU1DenNPbmFzQm44cGlkYVZtNjFKOXROeDVMVEh6N1Fv?=
 =?utf-8?B?eUNaUkxvbm43dFhybTB5QVZHWTcrM1JWZmJWL3MvNVdPS3hWekJubFJHd2hK?=
 =?utf-8?B?SUlJQ01GMGhzSVlMdmI2Mm1NQW1tbVZDaXpDTzdCOFR2bWNlNkNxUzR6SDJ3?=
 =?utf-8?B?YTBTbTJDN0I2SlRadlNwakMzMkVOeHBESlY1amtDRjhpRFNJcXMzaE1OQXJT?=
 =?utf-8?B?Ymp5cnkrcUNjMTc1RnpEZ2VCNlByYmxJS3lJczVoQmkyakRYdFRIUWtPSTd0?=
 =?utf-8?B?U0VKNngxUi9rUVdIN053WEp2NHdyOEJZNWQ5Rm5hQlE2UVRVbG4zL0hud0Zt?=
 =?utf-8?B?Z3ZaZTdjcm1yUk9OSVpLV3Bsd0ZlcWFxeUZHQXgvekVadjJEZ3pQUUFaTHR1?=
 =?utf-8?B?T3I5OW85K2cyYUFDZnhzbDhNaGFTaDBNcWhXS0pmV0Y1dUNHd0t5UHFHSTRa?=
 =?utf-8?B?Ylg4K2YxMmZIbDlOQXZHaElvOFhHQkEvS1g2SUdRMU9TNFAyaVVXYVVPa2Fz?=
 =?utf-8?B?anQwckhQQzhpaERUVUhWZTFXTGlZL2ZFbE5qQkhvUmlEYzJsSnpsOTFDeHNV?=
 =?utf-8?B?clFpOXZkQ0M2VFVUdTNZWVpSNzBqeHJMc1R0RG0wZzN1ZG5sRlluRFdBcDdV?=
 =?utf-8?B?eWswMVJURWJRdm9sYWpJOUNqWWU1bkloNXhQRkszK1VzR1lwNEJhSitSeGpD?=
 =?utf-8?B?bG9STWd0Q2VRSzRnMXJpNmc5cE9rbmIxczQ4TU95N0x6czYrY0sxaU5hNnBx?=
 =?utf-8?B?b0VqWVpSMUNUdmF3ZVRDL3JZSTNpUW9FSnZJRkZ3c0xySWpoTFpVejRMRHpn?=
 =?utf-8?B?eHRzUXNBdEl2RnpTSGxRcUxMU0k3cEx3Z3VFM0t6MTRWZTE0Q3pvejBKdXdw?=
 =?utf-8?B?Y3IvNVZMS08wV0RiOFZvUWhOUEEwQWl4eWV4eGZIdVJwQVpYWG5oemQ0NEFV?=
 =?utf-8?B?bEs2RXcxUXg1YkhhbWZOT2JkMHNRR0FuaC9CNkdqM3gvVURCejIwWWFYb01t?=
 =?utf-8?B?VXd0N2JaRkYrS3R1eDZRMVZhczJ3MkszZUcvK01DZ290MzlyYytjcThKRXcv?=
 =?utf-8?B?RUFnekVTeWI3S1JXdFplVVlYdXUrOHI1dzFuMi9TU3VwZ0haV2VLSnhtQkpm?=
 =?utf-8?B?S2RwcnZRS1FsTjBUZmhscHRvM0htRVk0OHZpQTUyVzA3bDJNM0pOMUc3UXM3?=
 =?utf-8?B?aURDc2s4MWRjK29qTFIzOHhPOEE4cUpPd3ZRV1hTYkFMZTVIaHFvL3BIREZy?=
 =?utf-8?B?NnZkRlhvcC9JYVVSTzBaNmhzbWppYk9IZWJEZ2I2a1ZRb2s3QTRGbFp0YXU1?=
 =?utf-8?B?K0ZDUEhET0xjV3E3RkVjR3NXK1lDQ0ZJZ2ZFQ0xyaTlHMkJiTXR2MzNFSVBn?=
 =?utf-8?B?WDEvYWdqdEpncWFFa2xTeVJQSk5pTlVxMXkvR0ZnVUtuUUU0U0pIZFNvV3E1?=
 =?utf-8?B?MXN1dVBhQ1d3dDZFM2QvbmpuLytHaHhRRXhXcDViTHZ1Q0ZzQWdtLzdWME44?=
 =?utf-8?B?dG9rajdqdnVkMVU4aGYwUzlIdDY1SUh4SUV2QTF5OCtLL2lGMllqKzNjRy9R?=
 =?utf-8?B?ZDVrcVg4VjlmcEh4aDNqMzhkN3FTQXBFMklJbkhpY2I2K1NmQnExTnZzc09h?=
 =?utf-8?B?eG1HQXltSmVBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXJRNUNabzZGbU55WWx3cDBBS3h0dkdxdjQxaUE4cmViM2loRDZodmhlemM0?=
 =?utf-8?B?Q1dQcndOVnZhTERyT0RxOFhtU3ZEbDYrbnpWcjZaL0xtbHFiMTdXOEM3bHJp?=
 =?utf-8?B?RkphaExyQWc3NkI1STZPcTduSVcvSHpURnhtalhzMnJaWm03SHFXMm8xTmVG?=
 =?utf-8?B?bDltV0VFUUNQMmk5dmQ0WEY4UEJYRTM2SzlsSXRleENoM01aR2VJOFU4RkEy?=
 =?utf-8?B?QTFDOVBNL0ViR1RKZWQyVTlpWjhLZ0l3S2w0cW80aXFJaWNCZDMxU3ZQdmlC?=
 =?utf-8?B?L1l6VWYvejFrM1MvLytoQW5rL2IzRVdBWFNWamFiNlhFWWZRUzlXaVBKRUVh?=
 =?utf-8?B?MVp5U2NrSTdHUHA2YjZIOEJvWGd3RmZ6Skd6c0FKRjc5RExSQnkrTHdFb1JF?=
 =?utf-8?B?OEx0MEh1a2RwelQyNHZxUWdjcXJNbW13ZE4xSHkrVGdMOXQwekYwSmJYYnoy?=
 =?utf-8?B?ejIzSVNJZ2kxSlY0YTlrNm4wTW5ZY2ZzZklYT3BMOVlDQ2VvdGNuSm9wQ3ll?=
 =?utf-8?B?QW5EcEE0aHVkS2FVUTN0OSt4S0QyQmxIUjEvdUNqQ3NNTGtiT0ZSeExPQ0x1?=
 =?utf-8?B?Qmx1dUhkdDA3UHZsc2toMkcreUl3djhDM1JDYkF1a2tXUlg2RmtQM2xZUkVY?=
 =?utf-8?B?T1ZzN3JKaXhsU01ZcmJ2NmhQVDhCalhtQTMzalNRMzRrNFMyUlp6UkZvcnND?=
 =?utf-8?B?WUZ2NlE4WGllT253bkdzb3ZERnp3cHlWZVJjbmVjYVN6b1dKMUh2MFU5WHpZ?=
 =?utf-8?B?bE1wakcxODZEKzM4TG43YnI3eDlPSjIxS3Q0QW85TWUvVkc4clRIRmxNT0Zy?=
 =?utf-8?B?S1dSanVkcTkyR2dTeDVPQ3l1Nm1TdmovdHZaMmYvNi8rODBiS0dVTkFoR2hZ?=
 =?utf-8?B?dnE1enltYmpTQ01pZjRPZ0RpNDZyVldVN3lRTFJHcFoxTDRNOEUyeW1lblcy?=
 =?utf-8?B?Q0Rsc3F6bGd4eU80bXR1b1ZFVWQ2THh2SlVPY3lydWZmWThkalRNMVEzQnFR?=
 =?utf-8?B?RzlYNWQzK1Y1Rk9oYTYyRG1hUE5MWkF0QW8zZWxiRllrS2t0MSt5alE3SXVF?=
 =?utf-8?B?ZGdrT3NhbExZVStHWjAwcmdqRElFUHJUQlRLQUNWQ3dsQ3RtK2E1bW5EVFFo?=
 =?utf-8?B?bml6K2dSQlFFNUhZSGQwdlR4TUFkNTFPQzhGVFlHKzJyOHdnQWtqOTJDSE9l?=
 =?utf-8?B?NHo2MVRyMDhteUtQZjNPMjJRSlFSb1FMd0pMNVdCN3d6VlBiazZZRTNHVTFk?=
 =?utf-8?B?WFMwWks3bUxuUGg2YVZPa3VweVdpR0NtOTB0Z3hXOGllVXo2c3NRa3ZaZ2Ez?=
 =?utf-8?B?cUpFdmY4NzBLNVptSDBDekpreHZjaG1aOE9qeUNzMEI4a3YwSDhGZ1N5UDVB?=
 =?utf-8?B?S0M5d2FWb243Sm53aHczMzZIQTd2UnFkcUs2b1VvQXdCVEJjR0krVGFSK09I?=
 =?utf-8?B?L25Nem9XQmhFbmlPbFlVbFVnejBZcWE2RmIydVEwRm1ZNkhZY2JNUWo1ZVdh?=
 =?utf-8?B?WnBWNC9GM3Z2TFlrUEdWWXRJdTg3QU5YbVUydFp2UXBSaHdVK1JhT3FHNnBR?=
 =?utf-8?B?VC9QZFhFZnk4N09iRDMxbGlXYVh3bWM2aFdSTTVOZGJSWTJjRGxsSE5ZTEJN?=
 =?utf-8?B?dnAyM3RVeHBBVFQ1cTd6MUM2dUdvWWxwSHpMZlBVeVgrendtMGp5SXh5Y014?=
 =?utf-8?B?QnQ3cnp2OGRRKythMk9ERDdDb3lhOS9oNXZ3WlkwK3MzSWdieTJTa1p5L0dm?=
 =?utf-8?B?cFVZa3EyR1U0TzR3RThDeUsxUkt5a3lLV0VKRkRuWnFDckpMclo0VkdkNS9V?=
 =?utf-8?B?RGhVRmJFTlFhdnhCcU1UMk51MWcvT1NlQVN6a2xob3pMWGI1bVpGa2kwNmk4?=
 =?utf-8?B?cTR6bDdJK2xJY09LN2xPSnBldzhlcUZsUUl3ZVo2MEZhRDcwT2l6QzRxWUF3?=
 =?utf-8?B?ekIrSFk3RTFVZU1aNmE5dTVtUDQ4RWlqMUlFSENRKzhhMG16WEhObjNmTDBS?=
 =?utf-8?B?cGZuUTZDTFFzZmhtSlJMVkVzSzY4Q3l4STFkbUVXL3JDZ0lKczRPQ09YZGZD?=
 =?utf-8?B?MFVDOHdwUzBLZThhQmoyTW4raHI2OUdWS2M1V3VJc2h0SjFQckloNVkvNlFE?=
 =?utf-8?Q?BUVy3eZ8OR66dCcnbj0pm1X+Q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e09b0fdb-8f4b-45be-64ab-08ddec5ceafe
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2025 09:16:38.0022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G0hKoO3R2yorUaufxsPuMAQrTilmm/YN23yQaIWFqWxVevMcDudrH2rYidR/KR6M5ppgynwD2mkcna+BHjA2vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogV2VkbmVzZGF5LCAyNyBBdWd1c3QgMjAyNSA5LjA4DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogUGFuZWwgUmVwbGF5IFNVIGNhcCBkcGNkIHJlYWQg
cmV0dXJuIHZhbHVlDQo+IA0KPiBDdXJyZW50bHkgcmV0dXJuIHZhbHVlIG9mIGRybV9kcGNkX3Jl
YWRiIGlzIG5vdCBjaGVja2VkIHdoZW4gcmVhZGluZyBzaW5rIFBhbmVsIFJlcGxheSBTZWxlY3Rp
dmUgVXBkYXRlIGNhcGFiaWxpdGllcy4NCj4gDQo+IEZpeCB0aGlzIGFuZCBzd2l0Y2ggdG8gZHJt
X2RwY2RfcmVhZF9ieXRlLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDEyICsrKysrKystLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA4YjRjZGY5YjMwZGIuLmYyYjlhNzMzNjM3YSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC00
OTQsMTIgKzQ5NCwxNCBAQCBzdGF0aWMgdTggaW50ZWxfZHBfZ2V0X3N1X2NhcGFiaWxpdHkoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gIAl1OCBzdV9jYXBhYmlsaXR5ID0gMDsNCj4g
DQo+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4g
LQkJZHJtX2RwX2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsDQo+IC0JCQkJICBEUF9QQU5FTF9S
RVBMQVlfQ0FQX0NBUEFCSUxJVFksDQo+IC0JCQkJICAmc3VfY2FwYWJpbGl0eSk7DQo+IC0JZWxz
ZQ0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpIHsN
Cj4gKwkJaWYgKGRybV9kcF9kcGNkX3JlYWRfYnl0ZSgmaW50ZWxfZHAtPmF1eCwNCj4gKwkJCQkJ
ICBEUF9QQU5FTF9SRVBMQVlfQ0FQX0NBUEFCSUxJVFksDQo+ICsJCQkJCSAgJnN1X2NhcGFiaWxp
dHkpIDwgMCkNCj4gKwkJCXJldHVybiAwOw0KPiArCX0gZWxzZSB7DQo+ICAJCXN1X2NhcGFiaWxp
dHkgPSBpbnRlbF9kcC0+cHNyX2RwY2RbMV07DQo+ICsJfQ0KPiANCj4gIAlyZXR1cm4gc3VfY2Fw
YWJpbGl0eTsNCj4gIH0NCj4gLS0NCj4gMi40My4wDQoNCg==
