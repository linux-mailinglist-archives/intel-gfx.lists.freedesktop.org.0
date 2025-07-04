Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FCAAF938F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jul 2025 15:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E650C10EA36;
	Fri,  4 Jul 2025 13:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MaYr0Tr3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2564110EA35
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jul 2025 13:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751634325; x=1783170325;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GM8shU6TydSCPTPjqCxvHH1jEdSjoPsdj501ZtQxyGw=;
 b=MaYr0Tr3BVSUXXU8CCGOObaEaLWktnE1hAgb1RoUwMhOG13JPRVex4wi
 p/Xo9dCeNdfmZiZdc0oziltxTjzvRepsNFiX+IknH5xxoveGfRzhhFGFd
 apRrKokWdmv4rJUXX+pRkswdPu1l20zWsOjezJI86JSszg45G9/zdrJ1M
 BWd/ytsQzoPeaFMswkL4LN3u84gvQ+mk32Z/THjQBMfz6/BnTwrG8DJIB
 p8dMHRWp4ZNqczv0QVq/QwMWh2mUWeFHTH8k7+WFbkBPcYcxtnmlEXyba
 0RF6R+QJmXIvprfmAGOJvKksRBeZp73JauCeYz+1N9ZVPe/SUQvdLuR5E A==;
X-CSE-ConnectionGUID: /0orDgQiRfe+6BgPHwEf0w==
X-CSE-MsgGUID: M6wiP3SBRTOjXmJUCJ52dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="54086051"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="54086051"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 06:05:25 -0700
X-CSE-ConnectionGUID: I0EL2tSwRam4aVKrOXLzIA==
X-CSE-MsgGUID: OgKh1uA9QEqId7BW6TqZzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="160157620"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 06:05:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 06:05:23 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 4 Jul 2025 06:05:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 06:05:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CRBPnRk8BxGNk8OMNKs/ENBtLu6JYxTIDIynZEqyMAdAL1NuVzyg9Pd3Ho61cU4/SRPoCqjTSNs3uUiPuFlj8HiK8vc2H9KsIL6sUx5ueZo77m6kX4s38LMGS4hXSbCbfEUSKsaj2+x7yvdVKpZLuQ9BQBTmmGvHiOCk9Huyib7v4YvjU+0a6efbJf/PE7W5V1Q9FdoPLcV3p+VOGMJYd3lef7ovx7fkmZnn1A83q0Rhp1AA73V+UpzLicEa4DXCvL0GP1qjoP+nYCSs0s3ge69QZY/kdf6mTYr3b+yRoteBuSfM83cQjMTk37MfpnbmdAFoH/2yk01Xla5JSMMxZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GM8shU6TydSCPTPjqCxvHH1jEdSjoPsdj501ZtQxyGw=;
 b=lyBsnkPtXlwUMuDgqZOpI+/Uvkj0mjWD3dagZLBzAKIo38Eo1XdKnF9VlKqrpGm9igaXHO6QlRO2dPeHpRATC0vbT137iBjaxMeR/PYD7nROjNaOqsnXDe5/+FGtjgV1TE+bManjIMuNcN+5yl/WB41VQigt5lS1+3GnAUyIzrDFe9+W5tVXOckDTwgN9rOOegkhfjJjQGWpbjIxkQPT3paBlRdqXl9gN3Cjjxtrha6qpZQwKuSgTsVJ11zTOnATWxv+4N3+eJK3yC23EImoiB7goVNOVT7D7vpSSxhNIQvH4rGD0VYCdfRac9Um5b+D3fjsqXPkkeTBxQvbqJ46tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO6PR11MB5668.namprd11.prod.outlook.com (2603:10b6:5:355::11)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.20; Fri, 4 Jul
 2025 13:05:16 +0000
Received: from CO6PR11MB5668.namprd11.prod.outlook.com
 ([fe80::d740:520a:174d:9e38]) by CO6PR11MB5668.namprd11.prod.outlook.com
 ([fe80::d740:520a:174d:9e38%6]) with mapi id 15.20.8901.018; Fri, 4 Jul 2025
 13:05:16 +0000
From: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
To: =?utf-8?B?Q2hyaXN0aWFuIEvDtm5pZw==?= <christian.koenig@amd.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Badrappan, Jeevaka" <jeevaka.badrappan@intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, Alex Deucher <alexander.deucher@amd.com>, "Lucas
 Stach" <l.stach@pengutronix.de>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: RE: [PATCH] drm/i915/display: Change ret value type from int to long
Thread-Topic: [PATCH] drm/i915/display: Change ret value type from int to long
Thread-Index: AQHb7NVnf/mUs05Dd0S8edTeq9mvu7Qh3OyAgAAHTACAAAfS0A==
Date: Fri, 4 Jul 2025 13:05:15 +0000
Message-ID: <CO6PR11MB5668541E036AB8429F779226D242A@CO6PR11MB5668.namprd11.prod.outlook.com>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
In-Reply-To: <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5668:EE_|PH0PR11MB4965:EE_
x-ms-office365-filtering-correlation-id: 1f70d85c-b224-410f-8c38-08ddbafb6b86
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|7416014|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WTdscnY2L0JsMERMVDlrdnF3a1loa09wZHMxZW9BaVo0UjlDSWcvNjRWVEQ1?=
 =?utf-8?B?MW5VOGdjN3BoMTlMY2g2VE9INkFKWlpaYWlDT2huN2w0QlVhSUIyOFpLd0g4?=
 =?utf-8?B?cENBVUxsVk5JdXVoTnJINFoxYkNSVnh2dWdIamlzeGIxbUtxd2YwcnR0ckx5?=
 =?utf-8?B?ZlFYMXJ1aVk0TjJIa0RCYnJyVkxWNm10Sno0ZWc0TzBnQ3QrNU9hMFV0VzhK?=
 =?utf-8?B?RTFjZlRoYlV0SEZjTXVsbk1zcFRJSVF6RmFOb3lwaUxNWEViZkFTWmRrOGZE?=
 =?utf-8?B?eDBGNnZjOThxQlNBV3Bnd3pDTkJDckVJN2pjVHBiU0FLcnljU3plSEo4YWNQ?=
 =?utf-8?B?azlKV2krVTRtWWtFWWxFUmM3Z2RJQy9DNVVpNk1YcVdqcHNCMURyM2dMbUJT?=
 =?utf-8?B?NXArMXNVVjBhbmhHZVUwODBEcVlmK0dvTGdnamZaaWJwZ29GTWFGNk8xMWVm?=
 =?utf-8?B?eTkzeXZOY2NjVUdFUE1SSGpKWHo0cDhXMm1VaW5UWFhNbnJrSjZsdGwxMUxP?=
 =?utf-8?B?bG1VQmEvWEdEbXR5YVlEMXhFeE5YeU9XNjVtbHR1L3RSUGxoc3JEOGg3T2Yy?=
 =?utf-8?B?cGdLajlXVHc3OUVJRTJIdGFHT1l6dEtxa2tWTldBcXlDbnJsdUJrWHZ1dEdO?=
 =?utf-8?B?MGpJVnhsZTErdWRPbDRsaTREdHV2RXQrSFc1TnZzSEtUQ1NFbmNNbkF0WTJH?=
 =?utf-8?B?Qi94MWQwVVZuWDVON0RFUE1iM2lQaE45QmFxa3Q1NEl1YjhZYnlaM3lOSGIy?=
 =?utf-8?B?d1c4d3VHWVBoU1pyWFIzS1k0QzlIRXpTYncrbTVtOUdUbDBNUjY4RzdsNGtN?=
 =?utf-8?B?bnZGMGtocSs5NUhwYW0vMXZKNFBhNFQycTNzdm9VeGZzRUtyZ2JVRWZocTBv?=
 =?utf-8?B?UE1jWEV1WVdzZGJqQzViUEtna2F4T243RHJ5RFBEMDdMaXpyUXVVRitFZkhL?=
 =?utf-8?B?cW1xS1NGRkZ1SkxwY0Jvc2drcDdJVlNmK2kxMzFhaVpOVlF4NVpGL1M3NWxn?=
 =?utf-8?B?ZCt0V1JxWmExOGJENEpzYmpLSE9sL29rZ3J4Qmp3eEdHampGQTBwYTQzeGgv?=
 =?utf-8?B?SG52OXhSWVAycVlBWU9qaUdSdzhjNE9RTUhuL2tId1hiSHhXWEk2YjlvUUxk?=
 =?utf-8?B?NUQwTkROVFZ6S2tTaWU3L2RBeHdDVmpzQjQweHFOZmIxTjJTWk9mcXFwZmFR?=
 =?utf-8?B?KzlhcmhhL3U4QVZ5aEw1MWFBRTFyOG8wQ2FDNU1wQmU5YjhIdGJjRWVaVmNN?=
 =?utf-8?B?VUVObzdqRjdraGhHYURHTzYvUXdLZkIwb2d0aG5CcnRrRkJyY21uRnVCVjVM?=
 =?utf-8?B?a2tFRkhxUldHQmdhVmFRZ3k3c1NVdS9rcWJzejlrRWNsRGdNTkloVXNWVGgr?=
 =?utf-8?B?REVHSTRmT0lkYWJQeTBDTkxJeXdDb1hYamczTVdYY3VuQUJ1VVE3M2tPSHlo?=
 =?utf-8?B?azRac2J6VGF1WjQyNkdPUFcrN3RQeGFNUTFIUkZpblUwZlIySU1MVlV0R1RS?=
 =?utf-8?B?N3R6MlJ4bE96bG1SMzU4SkJHdzU5NHdiNWpObHIxOXRUN2xiTW9MeVIvZ1Ew?=
 =?utf-8?B?bmcyY2NjR2hOdndBbDFiM0p1Q2F6QzlWTjloSVhmZTFzT2xmai9pL2NHTGRU?=
 =?utf-8?B?Z3ZsN3pOOG1mMG5MRWtwZjNpeWxFbk1UMXpTbGxYRFA1UGU3N29tN2dZcFUw?=
 =?utf-8?B?dzFiaVROUlVHVmdOUVlUd2cvUnpnZDcyeGJlVXJnT1RIZFV2Ykw5NzRCWUVm?=
 =?utf-8?B?aXM1SC9VcU1kY2l2SDV2NG9tcTJJQ1ZCck42N1VQY2FzMTJ1QjNHeXl5QzJ5?=
 =?utf-8?B?bnhxb24zWWROK09QR2t6Z0o5Z2IzbmZkMHlHbEExVURGRldCR3diNHVNeGI0?=
 =?utf-8?B?Y29Ndms0RCtFaUZGQTBtTmxsSlAvTGh6bUh6dTBHOVQ0NG9JNTFaK1gwRjNW?=
 =?utf-8?B?ZnNtOGtVZGpxWm9ZdWVoUjg1djFXc002cmFCNFRoMGpxTHZoT1VzTEpPUS9x?=
 =?utf-8?B?bndPNFl5RmdnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5668.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUlHUHltNTNFeUhxbldxdEpBRVpyVEcwRDlyRW0ydk52aGx3QmZFZllwUVdh?=
 =?utf-8?B?RU9PNmlvbWUwQ3RjWFFvVWJ5ZmZrV0I5VFdsZXhYejJQcE05aitMc2FCRXlB?=
 =?utf-8?B?WVdpYmxPdUt3RjFkenIxK1RReVpyek92US9obVBTZnJMeDdSbGwyNnBDSFNn?=
 =?utf-8?B?ZUQ2MGFFMHNSa0dMM0dVdmxyK3dMakozTENrSEZOeTYyQkE4VVdLSjBNa3l0?=
 =?utf-8?B?Rjh4L2RHL01teHlTb1ZMSmdqU1RTK3BQbnBha3g1bUpnRFZ2NVorRlc1K0Vu?=
 =?utf-8?B?bkpKUGs4SWVFNE1paFFTdmlTaU03eVAzQnVaeU9mZTFTeHZPbDlRYmY5a2E3?=
 =?utf-8?B?Y1NoNUN0SStEZkpnbTE2M1hiY3NrYlJYLzJ2YTEyTjNubFpGeSt4R2ZqWUVa?=
 =?utf-8?B?cDRFeWFpODJuUWw5WGFBR0tzQ2pydjAyQk04QUNVc2poNnNZS0RrQTB6bFdJ?=
 =?utf-8?B?RWhzRmdUNnBPSnRHY1pDaVFBcjVDVlZLNG1GbEhuSWcwQ0tPa2hCcmY2Q1Q1?=
 =?utf-8?B?QzRpTlRuY01JaWZzSy8wRUVRL0ZIRmU2Z1VEWEtBSXl6TFRPcDlKSWRwbXly?=
 =?utf-8?B?ZUpPWUZNOWduaWpPTC83QlorKytnUHlDWFVyb2RaOXVnR08vUU9GcFZ6WitB?=
 =?utf-8?B?RlVpRE44U21Oc1lGQmJYelRzbXZKMXVHcFJTV1hyYzNod3VTR3FMZU84ZkhT?=
 =?utf-8?B?N1RFSFhyUmJmWTRQVmg0Unl2dHF0Z0RFVFZieWZydTdqaVpLdU5hU2s4eThs?=
 =?utf-8?B?OFg0ZGF4U0VldEs5OWhCeVBsOG5yV1VYdXV0MER4NWk0M0FucTUza1lxU1Yy?=
 =?utf-8?B?MDM5Q2VYZW9XdE1VbERZM1ZHeXUzY1o4Y0JsS2tCbk8vN3VISjNERWNRdS95?=
 =?utf-8?B?VW9rblpXZ21WendGZ2lXam5XSDJOeHo1N3RnWlEyZ3gwNkR4bWxmSHozTDJx?=
 =?utf-8?B?UjlPaEZ0YWxRN0k4LzRoRjRMYU50QjBmTTZOWXdKcjMxWG1Zek11TEMrWjY0?=
 =?utf-8?B?cnYwdmJ1ZXNrSEp1T3A5V0dsWTlBd0VTZ3NLcGVCL053YWhxSDJ2djZ6NFRI?=
 =?utf-8?B?QkNHeHkrbkYvVHIxdFVaa0F1Q2puL0xJVFFMc2d4L1BFNzJHMUh1U3JNemUx?=
 =?utf-8?B?WjlVWmVXYkFkVjVVeHZ1UTlGeXZ2RW01THBGckFxUXRLQlB4MzNYc095YlYy?=
 =?utf-8?B?NDRFaEhsRUdvcUt5S3ZLQWRQVjcxZnB2aGpVK1R6MG5UamNYM1J3OHZnMUlJ?=
 =?utf-8?B?UkptSVJoWXJ5QXVNQU1YN0R6eExZcWR3SUxVdWFNbitvbzlyNSs5ckNvTm84?=
 =?utf-8?B?SzdhWDNPWnlyMFA3SzBuRFpZY3NHWCtOQnNMVjczcWRiRlAwV0FORlVtUTdk?=
 =?utf-8?B?N2NxY0ZxMDNjdGpERWxhbWFKaTRnQnNPTGxSdTdlOWxsd0lvQjJZamRoUW5N?=
 =?utf-8?B?Z3BCcGVDUkVvSzlRVGpZbE5XejQ1VFhPVzkxT1NkWkxmdHFrK3dGdFhRa2Vm?=
 =?utf-8?B?RHA5cTRwS1VNcU5jUmwxUzI2UW92cFhIZktVV1o4MW41S2VxbFJ1OXlReldD?=
 =?utf-8?B?WXV6Z0xnUkxiR3ZERXJkODUzeWlNWlBFWVBaUjVNOHBiNytwR3dVMWJyVmRv?=
 =?utf-8?B?UTgvRkF4bG1WVVpMMUJTcllKRkt5b29CQVd4UjdJWHRPMlp4WGlodHdtL3V5?=
 =?utf-8?B?cnJJSXRYT3hrQ1FxeGdXRXdnNkdYU0F2cm5vOVRMWFBoVWFTVW1rNTBvOTZF?=
 =?utf-8?B?dUJvZndxZ0RWNmVoTWRkSHFhb200eEdvVFdlT2F0YXpydVpmTGtIY0dld2hj?=
 =?utf-8?B?aTJsWmN0eFVGc1o2THkyVE14YXFvaURhZ1dxeldSM055aVlOK3pzdlB1VjA2?=
 =?utf-8?B?YTNONkV4ektOZks5YWVOMnptVWJ5c2VITlY5bEpJRWlpbzFhMWdTQmJEMk1S?=
 =?utf-8?B?aTRFelFFOVhRTStnVTdHMlRTSWQwcWV4bExpWmt5UUViL0tFUUp1YmlnWlRm?=
 =?utf-8?B?TWN1bUNOTTBMTnJoOU5Fc09zRDFucTZXUVVvRC9WMStzam44dng4SXppZU5F?=
 =?utf-8?B?QmJYcWRnTzhVZGpQTzB2bUFRcVNjNEVINmZzZ1d2T1VIRjBnUkJ1VUpMR3M4?=
 =?utf-8?B?V3BBUWJJd2JYUXp2ZTZ0bkJJL3p6K0EzTm41cXVubzNHRVBpc1pCWms1dy9p?=
 =?utf-8?B?WFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5668.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f70d85c-b224-410f-8c38-08ddbafb6b86
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jul 2025 13:05:15.9773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ABvfz/R9dZ0o2/gJ4XBa2PdM9nk5x2scixdLsvec2wqydr1MvohC93MdzlcB4oQgJt7PdzPZq+L1C3V6gd4WZAm5j4zk0kJqM5lNgMYOIlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

PiBBbmQgYXMgZmFyIGFzIEkgY2FuIHNlZSBpOTE1IGlzIHVzaW5nIHRoZSBjb25maWcgb3B0aW9u
IERSTV9JOTE1X0ZFTkNFX1RJTUVPVVQgaGVyZS4gU28gYXMgbG9uZyBhcyB5b3UgZG9uJ3Qgc2V0
IHRoaXMgdG8gdmVyeSB2ZXJ5IGxhcmdlIHZhbHVlIHRoaXMgc2hvdWxkIHdvcmsgYXMgZXhwZWN0
ZWQuDQoNClNvcnJ5IEkgZm9yZ290IHRvIG1lbnRpb24gdGhpcyBpbiB0aGUgY29tbWl0IG1lc3Nh
Z2U7IHRoaXMgaXNzdWUgaXMgaGFwcGVuaW5nIGluIHRoZSB4ZSBkcml2ZXIuIERSTV9JOTE1X0ZF
TkNFX1RJTUVPVVQgY29uZmlnIGlzIHVzZWQgb25seSBpbiB0aGUgY2FzZSBvZiBpOTE1IGRyaXZl
ci4gRm9yIHhlIGl0J3MgaGFyZGNvZGVkIHRvIE1BWF9TQ0hFRFVMRV9USU1FT1VUIGluIHRoZSBj
b21wYXQtaTkxNS1oZWFkZXJzIGxheWVyLg0KDQpSZWdhcmRzLA0KQWFrYXNoDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29l
bmlnQGFtZC5jb20+IA0KU2VudDogMDQgSnVseSAyMDI1IDE3OjU3DQpUbzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT47IEFha2FzaCBEZWVwIFNhcmthciA8YWFrYXNo
LmRlZXAuc2Fya2FyQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
CkNjOiBCYWRyYXBwYW4sIEplZXZha2EgPGplZXZha2EuYmFkcmFwcGFuQGludGVsLmNvbT47IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBNYWFydGVuIExh
bmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpv
dW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBBbGV4IERldWNoZXIgPGFsZXhhbmRlci5k
ZXVjaGVyQGFtZC5jb20+OyBMdWNhcyBTdGFjaCA8bC5zdGFjaEBwZW5ndXRyb25peC5kZT47IFJv
YiBDbGFyayA8cm9iaW4uY2xhcmtAb3NzLnF1YWxjb21tLmNvbT47IFRoaWVycnkgUmVkaW5nIDx0
aGllcnJ5LnJlZGluZ0BnbWFpbC5jb20+OyBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2FsbEBpbnJp
YS5mcj47IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4NClN1YmplY3Q6
IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IENoYW5nZSByZXQgdmFsdWUgdHlwZSBmcm9t
IGludCB0byBsb25nDQoNCk9uIDA0LjA3LjI1IDE0OjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwNCBKdWwgMjAyNSwgQWFrYXNoIERlZXAgU2Fya2FyIDxhYWthc2guZGVlcC5zYXJr
YXJAaW50ZWwuY29tPiB3cm90ZToNCj4+IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQgcmV0dXJucyBh
IGxvbmcgdHlwZSBidXQgdGhlIGRyaXZlciBpcyBvbmx5IA0KPj4gdXNpbmcgdGhlIGxvd2VyIDMy
IGJpdHMgb2YgdGhlIHJldHZhbCBhbmQgZGlzY2FyZGluZyB0aGUgdXBwZXIgMzIgDQo+PiBiaXRz
Lg0KPj4NCj4+IFRoaXMgaXMgcGFydGljdWxhcmx5IHByb2JsZW1hdGljIGlmIHRoZXJlIGFyZSBh
bHJlYWR5IHNpZ25hbGxlZCBvciANCj4+IHN0dWIgZmVuY2VzIG9uIHNvbWUgb2YgdGhlIGh3IHBs
YW5lcy4gSW4gdGhpcyBjYXNlIHRoZSANCj4+IGRtYV9mZW5jZV93YWl0X3RpbWVvdXQgZnVuY3Rp
b24gd2lsbCBpbW1lZGlhdGVseSByZXR1cm4gd2l0aCB0aW1lb3V0IA0KPj4gdmFsdWUgTUFYX1ND
SEVEVUxFX1RJTUVPVVQgKDB4N2ZmZmZmZmZmZmZmZmZmZikgc2luY2UgdGhlIGZlbmNlIGlzIA0K
Pj4gYWxyZWFkeSBzaWduYWxsZWQuDQoNClRoYXQgaXMgbm90IGNvcnJlY3QuIElmIHRoZSBmZW5j
ZSBpcyBzaWduYWxlZCBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KCkgcmV0dXJucyB0aGUgcmVtYWlu
aW5nIHRpbWVvdXQgb3IgYXQgbGVhc3QgMSBpZiB0aGUgaW5wdXQgdGltZW91dCB3YXMgMC4NCg0K
Q291bGQgYmUgdGhhdCBpOTE1IGhhcyBhIHNlcGFyYXRlbHkgaW1wbGVtZW50ZWQgZmVuY2Vfb3Bz
LT53YWl0IGNhbGxiYWNrIHdoaWNoIGluY29ycmVjdGx5IHJldHVybnMgTUFYX1NDSEVEVUxFX1RJ
TUVPVVQsIGJ1dCBpIHN0cm9uZ2x5IGRvdWJ0IHRoYXQgYmVjYXVzZSB0aGF0IHdvdWxkIGJyZWFr
IHRvbnMgb2Ygc3R1ZmYuDQoNCj4gSWYgdGhlIGRyaXZlciBvbmx5IHVzZXMgdGhlIGxvd2VyDQo+
PiAzMiBiaXRzIG9mIHRoaXMgcmV0dXJuIHZhbHVlIHRoZW4gaXQnbGwgaW50ZXJwcmV0IGl0IGFz
IGFuIGVycm9yIGNvZGUgDQo+PiAoMHhGRkZGRkZGRiBvciAoLTEpKSBhbmQgc2tpcCB0aGUgd2Fp
dCBvbiB0aGUgcmVtYWluaW5nIGZlbmNlcy4NCj4+DQo+PiBUaGlzIGlzc3VlIHdhcyBmaXJzdCBv
YnNlcnZlZCB3aXRoIHRoZSBBbmRyb2lkIGNvbXBvc2l0b3Igd2hlcmUgdGhlIA0KPj4gR1BVIGNv
bXBvc2l0ZWQgbGF5ZXIgd2FzIG5vdCBwcm9wZXJseSB3YWl0ZWQgb24gd2hlbiB0aGVyZSB3ZXJl
IHN0dWIgDQo+PiBmZW5jZXMgaW4gb3RoZXIgb3ZlcmxheSBwbGFuZXMgcmVzdWx0aW5nIGluIHNp
Z25pZmljYW50IHZpc3VhbCANCj4+IGFydGlmYWN0cy4NCj4gDQo+IFRoYW5rcyBmb3IgdGhlIHBh
dGNoLCBnb29kIGNhdGNoIQ0KDQpJZiBJJ20gbm90IGNvbXBsZXRlbHkgbWlzdGFrZW4gdGhpcyBw
YXRjaCBpcyBub3QgbmVjZXNzYXJ5Lg0KDQpkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KCkgZG9lcyAq
bm90KiByZXR1cm4gTUFYX1NDSEVEVUxFX1RJTUVPVVQgd2hlbiB0aGUgZmVuY2UgaXMgc2lnbmFs
ZWQsIGJ1dCByYXRoZXIgdGhlIHJlbWFpbmluZyB0aW1lb3V0IHdoaWNoIGlzIHRoZSBpbnB1dCB2
YWx1ZSBhdCBtYXhpbXVtLg0KDQpTbyB3aGVuIHRoZSBpbnB1dCB0aW1lb3V0IGZpdHMgaW50byAz
MmJpdHMgdGhlIHJldHVybmVkIHRpbWVvdXQgYWxzbyBmaXRzIGludG8gMzJiaXRzIGFzIHdlbGwu
DQoNCkFuZCBhcyBmYXIgYXMgSSBjYW4gc2VlIGk5MTUgaXMgdXNpbmcgdGhlIGNvbmZpZyBvcHRp
b24gRFJNX0k5MTVfRkVOQ0VfVElNRU9VVCBoZXJlLiBTbyBhcyBsb25nIGFzIHlvdSBkb24ndCBz
ZXQgdGhpcyB0byB2ZXJ5IHZlcnkgbGFyZ2UgdmFsdWUgdGhpcyBzaG91bGQgd29yayBhcyBleHBl
Y3RlZC4NCg0KPj4gVGVzdDogTm8gZ3JhcGhpY2FsIGFydGlmYWN0cyB3aXRoIHNoYWRlcnRveQ0K
PiANCj4gV2UndmUgbmV2ZXIgdXNlZCB0aGlzIGNvbW1pdCB0cmFpbGVyIGJlZm9yZSwgcGxlYXNl
IGxldCdzIG5vdCBzdGFydCBub3cuDQo+IA0KPiBUaGUgc3ViamVjdCBzaG91bGQgcGxhaW5seSBz
dGF0ZSB0aGUgIndoYXQiLCBhbmQgdGhlIGNvbW1pdCBtZXNzYWdlIA0KPiBzaG91bGQgYW5zd2Vy
IHRoZSAid2h5Ii4gWW91IGRvIGhhdmUgdGhhdCBoZXJlLCBidXQgSSB0aGluayB0aGUgDQo+IHN1
YmplY3QgaXMgc3RpbGwgYSBiaXQgdG9vIG11Y2ggbnV0cyBhbmQgYm9sdHMuDQo+IA0KPiBGb3Ig
ZXhhbXBsZSwNCj4gDQo+IAlkcm0vaTkxNS9kaXNwbGF5OiBGaXggZG1hX2ZlbmNlX3dhaXRfdGlt
ZW91dCgpIHJldHVybiB2YWx1ZSBoYW5kbGluZw0KPiANCj4gd291bGQgc3RhdGUgdGhlICJ3aGF0
IiBpbiAqbXVjaCogbW9yZSBoZWxwZnVsIHRlcm1zIGZvciBhbnlvbmUgbG9va2luZyANCj4gYXQg
Z2l0IGxvZ3MuDQo+IA0KPiBQcmVzdW1hYmx5IHRoaXMgaGFzIGJlZW4gYW4gZXJyb3IgZm9yIHNv
bWUgdGltZS4gWW91IHNob3VsZCBkbyBhIA0KPiBsaXR0bGUgYml0IG9mIGdpdCBibGFtZSBvbiB0
aGUgb2ZmZW5kaW5nIGxpbmVzLiBJdCdsbCBmaW5kIGNvbW1pdCANCj4gZDU5Y2Y3YmI3M2YzDQo+
ICgiZHJtL2k5MTUvZGlzcGxheTogVXNlIGRtYV9mZW5jZSBpbnRlcmZhY2VzIGluc3RlYWQgb2Yg
aTkxNV9zd19mZW5jZSIpLg0KPiANCj4gQmFzZWQgb24gdGhhdCwgd2Ugc2hvdWxkIGFkZDoNCj4g
DQo+IEZpeGVzOiBkNTljZjdiYjczZjMgKCJkcm0vaTkxNS9kaXNwbGF5OiBVc2UgZG1hX2ZlbmNl
IGludGVyZmFjZXMgDQo+IGluc3RlYWQgb2YgaTkxNV9zd19mZW5jZSIpDQo+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBDYzogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzogPHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmc+ICMgdjYuOCsNCj4gDQo+IFRoZW4gaXQgb2NjdXJzIHRvIG1lIHRoaXMgbG9v
a3MgbGlrZSBhIGNvbW1vbiBtaXN0YWtlIHRvIG1ha2UuIEEgDQo+IGxpdHRsZSBiaXQgb2YgZ2l0
IGdyZXAgb24gZG1hX2ZlbmNlX3dhaXRfdGltZW91dCgpIHF1aWNrbHkgZmluZHMgDQo+IG11bHRp
cGxlIHNpbWlsYXIgbWlzdGFrZXMgaW4gZHJtLCBhdCBsZWFzdCBhbWRncHUsIGV0bmF2aXYsIG1z
bSwgYW5kIA0KPiB0ZWdyYS4gQ2Mgc29tZSBtYWludGFpbmVycyBGWUkuIFRoaXMgY2xhc3Mgb2Yg
YnVncyBjb3VsZCBjYXVzZSBpc3N1ZXMgZWxzZXdoZXJlLg0KDQpJIGNhbiBvbmx5IGd1ZXNzIGJ1
dCBJIHRoaW5rIGFsbCB0aG9zZSB1c2UgY2FzZXMgdXNlIGEgZml4ZWQgc21hbGwgdGltZW91dCBh
cyB3ZWxsLiBJSVJDIGFtZGdwdSB1c2VzIGEgdGltZW91dCBpbiB0aGUgbWlsbGlzZWNvbmQgcmFu
Z2UuDQoNCj4gTGV0J3MgYWxzbyBDYyBKdWxpYSBhbmQgRGFuIGluIGNhc2UgdGhleSBoYXZlIGlk
ZWFzIHRvIGltcHJvdmUgc3RhdGljIA0KPiBhbmFseXNpcyB0byBjYXRjaCB0aGlzIGNsYXNzIG9m
IGJ1Z3MuIE9yIG1heWJlIG9uZSBleGlzdHMgYWxyZWFkeSwgYnV0IA0KPiB3ZSdyZSBqdXN0IG5v
dCBydW5uaW5nIHRoZW0hDQoNClllYWgsIGFncmVlLiBBIHNjcmlwdCB3aGljaCBjaGVja3MgaWYg
dGhlIGlucHV0IHRpbWVvdXQgY291bGQgYmUgPjMyYml0IGFuZCB0aGUgcmV0dXJuIHZhbHVlIGlz
IGFzc2lnbmVkIHRvIHNvbWV0aGluZyA8PTMyYml0cyBpcyBwcm9iYWJseSBhIHJlYWxseSBnb29k
IGlkZWEuDQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4uDQoNCj4gDQo+IEZpbmFsbHksIGZvciB0aGUg
YWN0dWFsIGNoYW5nZSwNCj4gDQo+IFJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPg0KPiANCj4gDQo+PiBTaWduZWQtb2ZmLWJ5OiBBYWthc2ggRGVlcCBTYXJr
YXIgPGFha2FzaC5kZWVwLnNhcmthckBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgKystDQo+PiAgMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPj4NCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyANCj4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4+IGluZGV4IDQ1NmZj
NGIwNGNkYS4uNzAzNWMxZmM5MDMzIDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+PiBAQCAtNzA5Miw3ICs3MDkyLDggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF9mZW5jZV93YWl0KHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKmludGVsX3N0YXQNCj4+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGludGVsX3N0YXRlLT5iYXNlLmRldik7DQo+PiAgCXN0cnVjdCBkcm1fcGxhbmUgKnBs
YW5lOw0KPj4gIAlzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGU7DQo+PiAt
CWludCByZXQsIGk7DQo+PiArCWxvbmcgcmV0Ow0KPj4gKwlpbnQgaTsNCj4+ICANCj4+ICAJZm9y
X2VhY2hfbmV3X3BsYW5lX2luX3N0YXRlKCZpbnRlbF9zdGF0ZS0+YmFzZSwgcGxhbmUsIG5ld19w
bGFuZV9zdGF0ZSwgaSkgew0KPj4gIAkJaWYgKG5ld19wbGFuZV9zdGF0ZS0+ZmVuY2UpIHsNCj4g
DQoNCg==
