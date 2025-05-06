Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A42A0AAC3C3
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 14:23:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD61810E67A;
	Tue,  6 May 2025 12:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCIBVsTc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D40ED10E674;
 Tue,  6 May 2025 12:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746534205; x=1778070205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lInVFyhUP7PHYhcX/IhTpyewIDoefe5jotVxEWEtmpY=;
 b=SCIBVsTcOqsJpyC1QogBjCrxK8FPCh8SU+AcqQRQLrhmJS7WBqrc8mb0
 li3BHqv12z9DfeAC/6rxH+aKBEH3A1ivUU5uAkH2b3fSc5p91PDxDhlJ0
 QqtUjYlLaBmMUrPqQ1uljRuUOhT1hJ84GynwCELj7vwbTOqSnu0D9FW4y
 VVVXY4vB/Y6OuvRTU8d0UDw2acY7CePu9+sh7YeoLxrcQHpRQy+B2fxdy
 uUGBO0uIsbZ4bB1F/UVteojc0nFsYecjLMxIlt7DxT22nDNm+CQimIjTq
 mxv3ibg5JxH2X3JEJB5YyTCE01vmwqevZNJchb8BB/UnwHJVHbZ7+qATo A==;
X-CSE-ConnectionGUID: AAKGGN2eR9m0eGOcwKxPgA==
X-CSE-MsgGUID: me0FamdTSOujtEc0eFY8VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="51847254"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="51847254"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:23:24 -0700
X-CSE-ConnectionGUID: 4HWDnUcUTRSq0TvLvGOdCQ==
X-CSE-MsgGUID: 8SZEDXkuQj6wBVs2mg3aJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135314954"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:23:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 05:23:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 05:23:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 05:23:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UOmMk9bTrl/rWeDu8K8P0nwXCmWv2rwbo/vUeQR5XDdHx3Ff0k8SjTuRQxFPUwlCRJBE2GZBlrO/f5WY4Msm3AEBZrqe6djFS/hbuBPkxk/NTndIVlxdqqhCry8uhBOlrKdoQITwFT2y3a6lBv1+iIBxJJ2/ygUGUcuL9cGQPpNHtVfu6Glyaf0F3lkxCnOsj3YBgMMFf+xW1LJfMuObMXqTZvBvFHmeE/chgKEecvJCZs48tZ8ei7b94p+whH68XmqUqACNrGr+PmZvyZe6r19esGDYW+3BdetXFaJoYjTi7N1aNPz0wzsnD2RO4IVB6pGKk5cmtcU93zMfnHRx3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lInVFyhUP7PHYhcX/IhTpyewIDoefe5jotVxEWEtmpY=;
 b=b4lKF0CoDGuc4x8Bm0pfiRBrCa44y6LiMhNpwzfbzaOq3rOQUlgb2X5SURg846bA0drXvi3qxJ7I2qM7XEQpocQMWmml+updLRo5N8Te0ziPbTFa0wXUvf8ZNI5zxZg9B3QhUzz2BrRIJU9sXYQ0RQejb11t7H86Df2DLDjqmJGggX1yAks6VUtbOPUOw5l3qw2Tg9RuYPWwyBVF3Nc7yzPda+aT2Kne0V9AKg2OKtbxAaI57MvycJHscJ78+OGciTDbpvXCwb+N1FF9q8JZaQZfO0DJ/KxrirR31rBZygp4ccyjzU1NXstYLr20M+r6el+dUB2Ydc7xxBiJ00GrFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB8667.namprd11.prod.outlook.com (2603:10b6:8:1b3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 12:23:21 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 12:23:20 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake and
 onwards
Thread-Topic: [PATCH] drm/i915/psr: Do not read PSR2_SU_STATUS on AlderLake
 and onwards
Thread-Index: AQHbrrL+b/0bcFFmJkmuJpLbqsl6IrPFpc4Q
Date: Tue, 6 May 2025 12:23:20 +0000
Message-ID: <MW4PR11MB7054DB5A673A9E1FCE31722FEF89A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250416093535.3231914-1-jouni.hogander@intel.com>
In-Reply-To: <20250416093535.3231914-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB8667:EE_
x-ms-office365-filtering-correlation-id: 8eda4908-5ee1-4a19-4fa0-08dd8c98c9b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?TTlQWCsrbXhkYmJHaElPeGszb0g0OS9qQjRWZXZzUGFyaG5XaE91dE1TdFla?=
 =?utf-8?B?aXhXRUVwZEdzVWFHMXZtNTJDTlF1eDB2bDV4dlh4bVlhSkJXRmJBUXJVVElT?=
 =?utf-8?B?NEpvRXJ0RWlmQ08xZkh2eWRGanBhU0lyRlZEemdsaGlzalpnQlJHdENPaFNn?=
 =?utf-8?B?M2Z3OGgxcUkxNE9KVDN6SzFzRXo2WktxNENBU3lPMU1LZHVnU29ZdE5TVk94?=
 =?utf-8?B?K1diWFdSSXhOcHV1bEMzWkFPaGFaNTlCelp3SGRaRnM3TkZ3d1E2NTNwMGkx?=
 =?utf-8?B?SmpLcnVxK1djdDBkOU00eUVLRHRNQmJLSktEd3JpTHNtUXNxUHM0Tm9BL1N0?=
 =?utf-8?B?bGpzQllFV0hCTjJYV2ozNVp3OEc3dDM1RExrOERzWEdaUVYrS1dLRk9RQnVV?=
 =?utf-8?B?ejVjZGVVcVVwODFBalljMGtKQ3ovZTg0UEU4elUvRFBadDgrSHBqeVBwRmpp?=
 =?utf-8?B?d1ppNkJlNUVYYkRUbyt1WFdBM1N1S2xIWkJwc2dYODI0ZStrc0hHQ2xlVkd6?=
 =?utf-8?B?YTRiK0pLZE96aFg4bW5uTS92MHhWVWN5WHdMMkZMQXgxalpXVTNWaVROVHBw?=
 =?utf-8?B?aGsxaldZamxjZzlRWW85ZGd4eXE2cFp2SVlqQ2Q0bTFKcDdxamlHbDBHWmh1?=
 =?utf-8?B?Zkk1V1VMYWp3ZG1kTVlDeFo0dENvOEEzU1dNZUdldWp0WG02OVdNTUM3MFlY?=
 =?utf-8?B?Mkp2WUlncWdCZklNK3ZZZVhrSEpMMFpiaEI3ZDdzOXAvZEFRUEl3R25Cc0Jl?=
 =?utf-8?B?ekpERUJEekZraXJEcWYwTHpoZXNDSE5HSzE0WmFWeFh4RHN0YlJyb1VvNE41?=
 =?utf-8?B?VzBmcHhzUEIvaCt1N0ZINTg0akxkZWxxT0c1TWpFOWpqTzhmeE5CYmI3c0F1?=
 =?utf-8?B?ZS9CUlh5b2F3Y0pGWXZ3NER3VjVKcHdZZzRmVGhRWkFsUURIZXhYU1MvSkVQ?=
 =?utf-8?B?USt0RllMTjVUV1UwUm1IVnh6VVdLREpjRDBoNWNvZ2RibS9KazBKVytCaHU2?=
 =?utf-8?B?cHE3LzZEa2F0eGdZdkhSek1ZQVQ1YmR4RnBsMlNtbDJoWW54eWFOZExXZnRM?=
 =?utf-8?B?dlR1MWs4Mjl1V0N0MTZreVJJUGpCQ096c2lGZU1RSlhSQzRzNkxWb0xIbGdx?=
 =?utf-8?B?b1ZrL2I0TmdBMFJZN1BoZHkxZTc0eVEyNUh3dFZNUjMvRXhWdjlpRGdyUENW?=
 =?utf-8?B?ZmpiWXVBTmRXSGVSVEFOY1FRbW1FZmlYb0xUVG1RNmN3VDJiVHFQQ0xoamtM?=
 =?utf-8?B?N1BhT3VXS21nczM4eVdJOWhpWUdQamtxNlRJRjBoT1N0VVJKKy9uSzJWM2tL?=
 =?utf-8?B?SUswZkc3enJHWndEdjRwemJQZjlmVis2MXcrQ3BRSXo2bEU0bklaUEtra0xi?=
 =?utf-8?B?VG83TVYvTFpvcVFzQm56VWtweUY0NzZIMjA2SldmMCtSdEk3RVVHTDFNY2Fn?=
 =?utf-8?B?OHJCUXFEQzNIRGxwV1ZIQ3VrSlZjWGcwVi9nbkxHaGdtQTYydjgwTlZmbk1M?=
 =?utf-8?B?SzltMVVlVGlObGJrYXMzeTBMQVp0NzFnbFVNTy9QaHJaN1Z1QUhFdlR4c2FW?=
 =?utf-8?B?OGIya3ZZWE0vUjdjNXFjYTh4Z2p3VFY2ZENZOWVsbmoyRG80M2E3TTVsRkRz?=
 =?utf-8?B?b2Z1bVRmZXJSL0NBNHlOSlRPV3phd3o5em5DWEN3OXJiUXdSYjdycDRWWVh5?=
 =?utf-8?B?YmNBWGZUTlZmYkRGc0huR0FLOXRKMjhJWnFDMm91YnFXZ2NsQjFieG50azBI?=
 =?utf-8?B?aGNNb0QxSG5kYUNiNVZMQm9BVDI2bm0yUk14SDRGTkVmbzI1NXhwWmRBT2R3?=
 =?utf-8?B?ZzlhY1oyN09TTnNFMXkxMmhrTExuZnB1WnhYbGtLUFRZRy9yUXFwSkNhNDZY?=
 =?utf-8?B?M2tmQVUvT1A3SnFXMldmRHoyY2ViRmJON1ZLRk84V2xvUTNyY09MM3RrVEtr?=
 =?utf-8?B?NlBOSFAyeXlnWDFxVHdzckJLc2cxbXBOcXRIVjhUWEN0RW91djRXalBiYm9S?=
 =?utf-8?B?Qy93RFVNR3BRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RmVwTmFzMk53dUlPMU5BOHFTZ3RmbEl4TTJxd0djbFBrM1VTb29uaDVJc0h0?=
 =?utf-8?B?THpJUVdZeS9xV21WQmxUUXZUenlsRHlUNFFuZitGMHBBNHhXRXdRM3Vxb3R6?=
 =?utf-8?B?cEhORkoyTjd3MWhRRDBHQTVIRXo3TGt6NTRvL3l1NW9rNWpuNXdBZXVVdkRV?=
 =?utf-8?B?RFBFTUVya1o3bXhCWm1WTkc0S29HTVpUVU1lTVZwVEhrUUlnWjNhekRPZGli?=
 =?utf-8?B?NTZaQll4NnFMdGpRWks2Qkh4T1RxRGxnWFEwT2RmRzZEVVNJTU1pME9yUlFt?=
 =?utf-8?B?d3RXc2twM2w4UzhxM1pwWk1GcytPMVRNeWNQRlV2dHNQUmV3OVNXZVNhM0x5?=
 =?utf-8?B?SjRveXBwb0FFWHgvczlrUExWeGUwWTAyeTMyTW4xQ2NldWJlUzdweU9zOTFE?=
 =?utf-8?B?TlNuSzdMTGF2R1llYjJxME1YNVVyQWJHVjdzY21wZFA4NzFiMkozcHNyaUdC?=
 =?utf-8?B?REhiODZCbCtnc2ZGa1lHeWNYcWZYS3JXWkQ4N01XMG5JaW5EakVOa0VQR1M4?=
 =?utf-8?B?RHhCbjViSDJ5OXJ0TFI1cHQ0Z0QzeUJDZW9TVTZGVmZMcXVicVhLclZJeFhz?=
 =?utf-8?B?VnZHVXNEU2dxZDkxckxaOFJaQTJjSWNhNUZkWkNadTdmSk5nVWdVc2g4TC83?=
 =?utf-8?B?VVJqbkRvTjV5bmxYOVhwT2t4NERlTTA3K0FvZ0E0b1VUYW9rbzhGSlA5ekEv?=
 =?utf-8?B?N0U0MFJTcW83Ti8vdnF3ZzVTempqbTJBRUtkSkFMWkZlYXhFM3I5ckZvZzQv?=
 =?utf-8?B?WjV6V2JMY1pyM2t3TjBXSjEvbityMmxuU2pSbFpYM0EzRDgvTXpwOVdxV3dL?=
 =?utf-8?B?aDNHQWVHQXdER041cDNSM29kV00xY21DNWhRWWJocm1YQzF0Sks0cmtaUm9u?=
 =?utf-8?B?U0l2YmNJODRET005TllVMHBObGJlRFZOUnp5NTBlNEU0ajJ3SndxL21MNTQ2?=
 =?utf-8?B?enQzVE5HL2lBajZkUnVJOGhqNVAxR2xYTW1IYmY5dnVyVWt1b0c1N1ZtMDNw?=
 =?utf-8?B?OGw1ZmFHSnErcHp6c3pNQzlUcVRQRlA0NzMxbEs0My9vbjZoR3hzeHpIbmNO?=
 =?utf-8?B?Q2Y2ZHE1aDNGUzY2VytEelpSS2VRcHhTTnRlUjdSVWZHNCsxUGpoMFdMUGJt?=
 =?utf-8?B?VXozQVQwaWRhN3NaVVFNRWR3Yk5MVGtKclRqaHRQcGM2WGFRVTRNTER2MHRI?=
 =?utf-8?B?aFoya0hzQmVuY1RuaHMzMW9OYkd6R20xdFpzWTVHNisrdkxrMDVtMndMdWx0?=
 =?utf-8?B?dXFPTU45bVRhRnlBNFBlejFjeGhaamlHR21laWtRR3BqYUtsUVlUTnc4cExG?=
 =?utf-8?B?NlVFRVR5VkZ5UzFMY3g4anRMWHVQdWZtMkhMcWJpc2d0M1Z3R0dJVlhPRitO?=
 =?utf-8?B?eEQvR2lPT280T2djV1VseEN2UnlMQ1RZSkZ4SjJZODVPYmwyc2g2bHoxT0tU?=
 =?utf-8?B?cnpqdml3bmUyWlhrdFRIaXoxa2ZyZEtzd3NNRGJ0dDByS0F0MHcyeHhFd2dD?=
 =?utf-8?B?UWYwekpaUDhrcmFOZzZtbWc2ME12UGptTkNJQU5jWVY1NU1UTGhPM25vcCtG?=
 =?utf-8?B?SjcvT01oZ2lhVksvNzVlbnpDZGdvMVpSQ3hHcmNlcHhvYlpZV3R1cC8yRk1D?=
 =?utf-8?B?MW9ENk5JaUZoVGE2MXNZOTc4M3JSaEJJZmIxZmNlU1dGS1FweXhZSHRYWlNI?=
 =?utf-8?B?SkdFVUpFR1BRaXFWMkVVRG1JQ3NhSW5jaGZrY1g5ZjJIQllrdkdvQlc3Si9v?=
 =?utf-8?B?QmRBK014Sng0amhqY1NUV3ZtbEd4K25iTDVLK3hnV1MrNUhtOGNsQVdZSm9m?=
 =?utf-8?B?Uy9NWFJLMGF5MTY5cWVObXlrZXlPenpOLzQzb1pyUEZLUVlqenZEdVAxRzMr?=
 =?utf-8?B?NS93cXIrOVpzSDZzaDd4RTNOdDNFMUl0dXJvUzUwdXB2aVc4OE9VQ1BEano5?=
 =?utf-8?B?bytPRHo5T0QwV1o4dWJ2MWhGSGhQV3ltY3NxaVEzYngzV3dxYk1DbVMxanE2?=
 =?utf-8?B?K2oxY25Tcy9tbGxHZVFYQk5OVjM0WE44aVE0dGNTcXRUaDg0aldSNWNJaWhK?=
 =?utf-8?B?MlZnTHY3eTBmUEpGNE05ZFZYV3lnb21VMElzcUlPTndXc25FMnRIRjdnbzNI?=
 =?utf-8?Q?BdTI+alh/dRxgGOkLMJEKn3IY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eda4908-5ee1-4a19-4fa0-08dd8c98c9b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2025 12:23:20.3107 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TCsMwZlQUp3GRgpYMf9Si3X23TfRl5uCsS7NPcF7c57OjjL6Ar3zm1YzDqeLXwzcDEOV4fG63Xuvjxla7WThAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8667
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
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCAxNiBBcHJpbCAyMDI1IDEyLjM2DQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogRG8gbm90IHJlYWQgUFNSMl9TVV9TVEFUVVMg
b24gQWxkZXJMYWtlIGFuZA0KPiBvbndhcmRzDQo+IA0KPiBCc3BlYyBjb21tZW50IG9uIFBTUjJf
U1VfU1RBVFVTOg0KPiANCj4gIlRoaXMgcmVnaXN0ZXIgaGFzIGJlZW4gdGllZC1vZmYgc2luY2Ug
REcyL0FETC1QIChpdCByZXR1cm5zIHplcm9zIG9ubHkpIGFuZCBpdCBoYXMNCj4gYmVlbiByZW1v
dmVkIG9uIFhlMl9MUEQuIg0KPiANCj4gQnNwZWM6IDY5ODg5DQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzNCArKysrKysrKysrKysrKy0tLS0t
LS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBp
bmRleCA2ZDZlZjY2ODFlM2ZjLi4wZWM3M2MyZjQzMzZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTM4NzQsMjQgKzM4NzQsMzAgQEAgc3Rh
dGljIGludCBpbnRlbF9wc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0DQo+IGlu
dGVsX2RwICppbnRlbF9kcCkNCj4gIAkJaW50IGZyYW1lOw0KPiANCj4gIAkJLyoNCj4gLQkJICog
UmVhZGluZyBhbGwgMyByZWdpc3RlcnMgYmVmb3JlIGhhbmQgdG8gbWluaW1pemUgY3Jvc3Npbmcg
YQ0KPiAtCQkgKiBmcmFtZSBib3VuZGFyeSBiZXR3ZWVuIHJlZ2lzdGVyIHJlYWRzDQo+ICsJCSAq
IFBTUjJfU1VfU1RBVFVTIHJlZ2lzdGVyIGhhcyBiZWVuIHRpZWQtb2ZmIHNpbmNlIERHMi9BREwt
UA0KPiArCQkgKiAoaXQgcmV0dXJucyB6ZXJvcyBvbmx5KSBhbmQgaXQgaGFzIGJlZW4gcmVtb3Zl
ZCBvbiBYZTJfTFBELg0KPiAgCQkgKi8NCj4gLQkJZm9yIChmcmFtZSA9IDA7IGZyYW1lIDwgUFNS
Ml9TVV9TVEFUVVNfRlJBTUVTOyBmcmFtZSArPSAzKSB7DQo+IC0JCQl2YWwgPSBpbnRlbF9kZV9y
ZWFkKGRpc3BsYXksDQo+IC0JCQkJCSAgICBQU1IyX1NVX1NUQVRVUyhkaXNwbGF5LA0KPiBjcHVf
dHJhbnNjb2RlciwgZnJhbWUpKTsNCj4gLQkJCXN1X2ZyYW1lc192YWxbZnJhbWUgLyAzXSA9IHZh
bDsNCj4gLQkJfQ0KPiArCQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTMpIHsNCj4gKwkJ
CS8qDQo+ICsJCQkgKiBSZWFkaW5nIGFsbCAzIHJlZ2lzdGVycyBiZWZvcmUgaGFuZCB0byBtaW5p
bWl6ZQ0KPiBjcm9zc2luZyBhDQo+ICsJCQkgKiBmcmFtZSBib3VuZGFyeSBiZXR3ZWVuIHJlZ2lz
dGVyIHJlYWRzDQo+ICsJCQkgKi8NCj4gKwkJCWZvciAoZnJhbWUgPSAwOyBmcmFtZSA8IFBTUjJf
U1VfU1RBVFVTX0ZSQU1FUzsNCj4gZnJhbWUgKz0gMykgew0KPiArCQkJCXZhbCA9IGludGVsX2Rl
X3JlYWQoZGlzcGxheSwNCj4gKwkJCQkJCSAgICBQU1IyX1NVX1NUQVRVUyhkaXNwbGF5LA0KPiBj
cHVfdHJhbnNjb2RlciwgZnJhbWUpKTsNCj4gKwkJCQlzdV9mcmFtZXNfdmFsW2ZyYW1lIC8gM10g
PSB2YWw7DQo+ICsJCQl9DQo+IA0KPiAtCQlzZXFfcHV0cyhtLCAiRnJhbWU6XHRQU1IyIFNVIGJs
b2NrczpcbiIpOw0KPiArCQkJc2VxX3B1dHMobSwgIkZyYW1lOlx0UFNSMiBTVSBibG9ja3M6XG4i
KTsNCj4gDQo+IC0JCWZvciAoZnJhbWUgPSAwOyBmcmFtZSA8IFBTUjJfU1VfU1RBVFVTX0ZSQU1F
UzsgZnJhbWUrKykgew0KPiAtCQkJdTMyIHN1X2Jsb2NrczsNCj4gKwkJCWZvciAoZnJhbWUgPSAw
OyBmcmFtZSA8IFBTUjJfU1VfU1RBVFVTX0ZSQU1FUzsNCj4gZnJhbWUrKykgew0KPiArCQkJCXUz
MiBzdV9ibG9ja3M7DQo+IA0KPiAtCQkJc3VfYmxvY2tzID0gc3VfZnJhbWVzX3ZhbFtmcmFtZSAv
IDNdICYNCj4gLQkJCQkgICAgUFNSMl9TVV9TVEFUVVNfTUFTSyhmcmFtZSk7DQo+IC0JCQlzdV9i
bG9ja3MgPSBzdV9ibG9ja3MgPj4NCj4gUFNSMl9TVV9TVEFUVVNfU0hJRlQoZnJhbWUpOw0KPiAt
CQkJc2VxX3ByaW50ZihtLCAiJWRcdCVkXG4iLCBmcmFtZSwgc3VfYmxvY2tzKTsNCj4gKwkJCQlz
dV9ibG9ja3MgPSBzdV9mcmFtZXNfdmFsW2ZyYW1lIC8gM10gJg0KPiArCQkJCQlQU1IyX1NVX1NU
QVRVU19NQVNLKGZyYW1lKTsNCj4gKwkJCQlzdV9ibG9ja3MgPSBzdV9ibG9ja3MgPj4NCj4gUFNS
Ml9TVV9TVEFUVVNfU0hJRlQoZnJhbWUpOw0KPiArCQkJCXNlcV9wcmludGYobSwgIiVkXHQlZFxu
IiwgZnJhbWUsIHN1X2Jsb2Nrcyk7DQo+ICsJCQl9DQo+ICAJCX0NCj4gDQo+ICAJCXNlcV9wcmlu
dGYobSwgIlBTUjIgc2VsZWN0aXZlIGZldGNoOiAlc1xuIiwNCj4gLS0NCj4gMi40My4wDQoNCg==
