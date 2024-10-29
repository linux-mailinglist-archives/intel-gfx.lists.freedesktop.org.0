Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471579B4562
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:13:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93A110E5EC;
	Tue, 29 Oct 2024 09:13:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="be0a+705";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE78510E5EA;
 Tue, 29 Oct 2024 09:13:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193183; x=1761729183;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y96++2X7azrLj7UMuJJf2RI+jh19FsQjZ0+maFehOc0=;
 b=be0a+705MPBfhzucLsb6Ms0H/N63CsX5P3wAxw6Nr/Mv5H1fIHXV80fU
 QKlbM6I9mpzOWYh2a+38/tFg8VeqM7DzqYw6zJKCv9cHQ6qT+YJ+yBwfw
 ZgbHove1FWoR/R7jAIsEeFUbTcGilTmY17r13cUjmHN2NMrehvw0/QDCw
 FOfs1z8wPjKXoHbvlqqhGioX/F3VxrpMSlWkqr9M9aVE5hFXjhJpoVD32
 kzvFYfM5fFX0HTC1nouc3LnxwuanZ7CGkGIz/LgWA9vJOA5PlT9hRQvOa
 +QTPXYqpmuNh712Vck25OTJhvEjANBk3BNGVYGUIYSA+9aZVSlTUL1E3X Q==;
X-CSE-ConnectionGUID: XXxstCRYR+SDUzpp+fqzMA==
X-CSE-MsgGUID: 8VsPDw0KTh6vS7rAFvCeBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="41183305"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="41183305"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:13:03 -0700
X-CSE-ConnectionGUID: brALr8EMQs+E8TCzo6IqsQ==
X-CSE-MsgGUID: AzFVuQyvSFq/NENm5BxuLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86505552"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 02:13:03 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 02:13:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 02:13:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 02:13:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H22M76WVlCCElAzvKtS/RWJri1I5rm6ZdDdzMQmL2kXf1oNsPhnqsFI36WVQqLeS2dcJwmpR9HWqsGXwYF9y8d72b7Ey0VwmC9/vvUxyUlf9j0OYht7PXqtg/fYR9HvIzq98sVEcc9mgqXaHROif4H5p4kwxxRrkc1ley69R9Ysg9Al2NajJeTv8IUENngxiSi4B9pnT9yozznowQsA9idUlKWGWYPl+ZG8NPmtHPlVx1rdK6s8lPZfm0VCzVLu0vN8XoUabkIHCFKXAC30fHkr6tch3M1U23GaiTtedIovQP3lSwMseT0F6JL9K475KFWnXRQH5qBBLh5s4Uo8q4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y96++2X7azrLj7UMuJJf2RI+jh19FsQjZ0+maFehOc0=;
 b=vNLR2RxEIRHq6pNcKhEWAt4kltYCUeao5ZqiRfks1yiYs15VAPMFI4kpz725WgwKaqTF7q1YXk/VbjFM5cV22b1EeIzprOXRile4buBOFx9ZV8xAQ65/tdgRqXlybByX+GeNhCYCEN4FHKApCv7QzCpwgQFXPfIe3VpxUimcl+LdGyZMkP6JN5T0H/ZaZXluIhPTQBWbr0CfB9x5wd08SNm3V/Nk2vgdmQZz8qPB9kkJXu4hLx4z3Vs8gidnjQAvobnceHEQPm9enxr33KPBH0ydGAk5eI4XttGh+fWnoCnDDc6dFcf3aLQysnyPOtPn5sQrNZURR7o9JD8NPugyJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH3PR11MB7274.namprd11.prod.outlook.com (2603:10b6:610:140::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Tue, 29 Oct
 2024 09:12:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8093.014; Tue, 29 Oct 2024
 09:12:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Index: AQHbKcMlpoZbu/w0fEWI06u0i8Tng7KdaZEAgAAHEUA=
Date: Tue, 29 Oct 2024 09:12:56 +0000
Message-ID: <SN7PR11MB67503129D78BAE49C44E91D7E34B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241029052603.215853-1-suraj.kandpal@intel.com>
 <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
In-Reply-To: <e7cc3d1d-06ff-4c47-b60c-84eea92b308e@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH3PR11MB7274:EE_
x-ms-office365-filtering-correlation-id: f0df6cbe-1c20-455a-a41e-08dcf7f9e0a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?d2d0Q21yTmUxU0NJYWZlS1pNNkhSUEF3aHRld1VpZ2FnTytzZzV1eG9tbkJ6?=
 =?utf-8?B?bysvSDYyb01pUDh3Y0s2a3h5VHlScGZWOWtlVXNzN21KckdpcUhxb2FvTXBI?=
 =?utf-8?B?azlGaFdqM2NpbXBHUmRuVU85MlRzN3pkTUJya3ZqZ0g3eEZuTDVpK0tQNE12?=
 =?utf-8?B?ejhVZHVTOG5MYUVEMS9qU0ljemVsdXlic3NyTDlTdXFiYk1HRmg3cmhpU09E?=
 =?utf-8?B?bThyQzlSeEU1UHZOQ005Uk9Calh1Z29tczh2TUhRdW9UM0UxMHV5eHFkbWly?=
 =?utf-8?B?eG5XeTBLSnlGSVk2RDBTYkV6eEJxb1VSZ0RCWC9uUEtaNW1BMEw0YUF2WUcw?=
 =?utf-8?B?TWxwYldlSitMcXl4dVlyVlJja2JXc2xVTTZobG8vbVRVZlNYNUVoZTJ0Sk9O?=
 =?utf-8?B?MDB2M2xrVEtYVGRvNFZkTWFKS2ZlaGljbTBOZ3BWZ1NEek9IZVEzaVdqTUNz?=
 =?utf-8?B?NDdRS2hLZmZWbUpqOUNSeTdaZVp3S281T2FKN3JSb0NSUnJoOTBwb2UybzdQ?=
 =?utf-8?B?YkFiTGVYNE5scXdlTS9oSEhZTWIwSjR2UWxLd2U4L2k2ekwrNE16S2JWMG1i?=
 =?utf-8?B?UmhwNHBEMXRYQjFER2NJUitob3VpLzdxMUxuWlpCbU5SUG9wSkZucXpnNE0z?=
 =?utf-8?B?Vm9ROTBGcE9CTkZqV0tUVHdINkYwYlJxYXAwN3Y3M0hXQXZlMUQ0d3lKSWc1?=
 =?utf-8?B?V3pzUzNXdHJKL0JwbXRBU0lFbzZIeU1yNDRXdmFDbG5EUTZ0R0g1d3ZIelZp?=
 =?utf-8?B?cEh3SjVXZS9DVVkxbjNGYngyU2taQWVYOTJhUGVMNkhhSG1rdDJOc0lrOG0y?=
 =?utf-8?B?MGlDaW10UmFDVlRnWUdZZ2t3eTdqYzRQZVpCYXBlTEMxQUVvTXdJU3duZjB5?=
 =?utf-8?B?VWNPdFNPMmRmbGxmeWZtbTBEL2ZqOWEvOGlraW12cVBMWWxwbjZlZ0pFQjNt?=
 =?utf-8?B?amxvSTN2UkR3R2J0SFYybHdTYnN4S0tOVjZ3cVFzTzJJOVhUeUlGVUhoYkFI?=
 =?utf-8?B?amU3eFVqQ0tDMytxVlgxSHpHalZKSGNqZDhWV3dtaEV2OGVqdjVzTVdUSVhj?=
 =?utf-8?B?UHNEMDI0WnBLQ21HRkFmcDJGZ3RwWVhlUzZ6ZjRvK3QybzFkZHBqZWJmYkw0?=
 =?utf-8?B?SXdXYzE0U0ZMdW5FdTNxNWFrNEV4UTZ6VFJYU3NCVjd1KzhkQTJPcEFJSUtq?=
 =?utf-8?B?MEdTWVhmdFNoTFZTbWlqVkt3Z21qVWZBZElmZE5HV2pLQ2lmbHJ2UFRkRFdE?=
 =?utf-8?B?d213RThlYjNja3hxTldYRU93cnphZGllTHhPVlBtWXhRZHdrYytRMllVVU5Z?=
 =?utf-8?B?dnhrdTZ4eTFyVllwb0VTUUlta1VXaFNhV2x6bERQMWtNbnJNK0NoNDU3MTFW?=
 =?utf-8?B?T2VQR2ZIanZWTXFaZmJzV1F1c0ZneGlVUUoyQmdQb29xeHFUSzBLQzJhT2FP?=
 =?utf-8?B?aEtsZFpLYjZ3WFdOdnFyQkt6Wm9VeEhCRi9GS25kNC9hT3gvSjIwNWdUQ2V5?=
 =?utf-8?B?K3hvMW9PNWNDUDFMcXNxT2hlVlVGWWZ1Zm16WWRMOUFjTk9qOEpYYVE4Q0hI?=
 =?utf-8?B?alZHZnpmUmJqL1AzalkrSVEvc2ZhMlZRRitGbnlNZU81ZGhMVWVzWEZQMWVq?=
 =?utf-8?B?WGloUTkwakF3dXJZUWNKOEhya3d0ZmxnU0VHWFp2YVlOd3hSb0xkZllZL3dm?=
 =?utf-8?B?YnRub1RKTXlUMDBDR20rNGV2SmhYbExLcWxaVllXeS9ERUd2dXVNbmJMU1BJ?=
 =?utf-8?B?bGYrN0hSRGoxUUdLM3VhYkRhOXBrZkE2MmJqZWsyUHhxVlhUc2NDSnBiY0xk?=
 =?utf-8?Q?savic1hpmh8odibddC3t99SK+JRB0k+V3AcLM=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OTY0YWRVOU9xNXl4VmhvV2Z4RXNTREhUV1h5L0xWSCtxZTBCSkxsNzgvZVVs?=
 =?utf-8?B?RHJsMG9GZXU0SEd2UTBFejRvVDRnQ3l6TnJJU3dSWW1UNVpCeTZsamQ3ZUJ1?=
 =?utf-8?B?MU5MUWVoR0lGU0tUd0hPanlPcDYwR1lRRGdrbEpkSmp4SUlPWnRrQ3Rpc2J4?=
 =?utf-8?B?NVFHeThlajI2QjZURWZvRkJITHNDM1YxRHhHKzBCRXhIY3V6Y3JDbERwdW9Q?=
 =?utf-8?B?YWxlc3NMTi8zMDlvQ2FIV2p2VVQ5dkduTlVSR1R2SHZ6T09qdUpMaG1hcE4z?=
 =?utf-8?B?OXZNVHNTbjVWMFBYVU1UVVl4TGhjOGh1dkI1ejI4ai8wYkxwN0RRK0EzM05P?=
 =?utf-8?B?aXFja1JuN1dkTFJwdTNIM2MraVdzV0FHVFczMmJxVDk0Tk90REgyUDJLNENa?=
 =?utf-8?B?eEtWVGVWMTVBUEoydVFEc0dWZ3RaZit3NnY4TkZZb2p5eDRYVnFkd0JNaURX?=
 =?utf-8?B?TGNNSlUrWjc4M2d2bGJPbkFXd2J2V1JjdTA3aWl0U3BSU0xiNTdtSE1QRkRk?=
 =?utf-8?B?RStjN1V0UXdvcWtiOENOMUx6TDFhaUp2d1ppeHp2bCtaUFA1NWZEMzJYbkR3?=
 =?utf-8?B?YUpPNTFwTzhPVEEvZzlRMnFTR3RtL0RRM09pZGl2bUg5bXdCMEowK01XZy84?=
 =?utf-8?B?bE5xV1B0L1lvSDY0VUFtbGdlRm10S1JvZjJSWXhXUS9UR2NSV0pjMnBPelpH?=
 =?utf-8?B?cDJ3Y0txdnNXSWFXQzByWkVuTlo3QVZ1dHUyUEFFTFJjdkRrdXhWR3NxeGdQ?=
 =?utf-8?B?cHRTcW5kN0MvblFCRSt6Z2Nhc1pIS2U1QVZRRzh5SXArZWxLVVVaV3VhK2h2?=
 =?utf-8?B?QWhlSmJHVGJPaEtyU0xXUWdTL3dxcTh4K2NoUkpMTm84azNLTG0vdW5yN3cv?=
 =?utf-8?B?WXZCRmpUODhQY1BwdnhFTkVCdm1pTnRJai9aWDhEdG1WVFVTSDBtS0libXB5?=
 =?utf-8?B?aUxaa1RtZGZ1TFN0cHkzU0lFaXZ5NzlPdlI0OXFqUitDbmZJQXNadkpVT1pv?=
 =?utf-8?B?emJNcGsrd1J5bUZZTkJJZ254ai81OUFzTXFEWEFuOFFveXJvdFhzNytxM3M2?=
 =?utf-8?B?UXptWmRyTGt3NVBBSEFQNTRYbUJXYkovZyt3emlHdGZhSS8zbit5T2EvZWVa?=
 =?utf-8?B?ZERURHp3aCtjZU41dXdWQkdUZGlxcmFxQUF5YyttMng0dmhxUG1tQWF5N2VL?=
 =?utf-8?B?YnZ1ZDNNMWZUVlYvMmY5N2s4UEVXN0Q0dHUyWEMxeng0cmZ2c3NmRFM0V0du?=
 =?utf-8?B?cnp0Qy91YjF1NFc3NlE1b0Foc3dOekJMM1BVbHdmZWVJYi8rc3pnUzVSWXdS?=
 =?utf-8?B?QXoxdmFvd283UW1OcEM4ZE5teXFYc2FhWTA5eUVKWVlJVjd4V0NhUW4zOTRT?=
 =?utf-8?B?YlRUSE1EQTlZZHNMUzFqaDNISXM5UVZteHNQU2cwaHRMc2dNZmZqZytETG5q?=
 =?utf-8?B?OTVlR0lhb25LMU9heWlwTmpVT0hVSEwxZ2FCcXlWY2tOV2Q4NWVzQWJPN0pX?=
 =?utf-8?B?c2VIVmF1UkhZM0F4bUNlVXhnaTFhOS83Zkk3cC9CRkQ4cU9BS054R2lkTlB0?=
 =?utf-8?B?ZktTeGtycUpJdk5NMXIrNlFXUHdIVFJuWE9HcXBCZ2Zhb2NuWlczK3Fub3BD?=
 =?utf-8?B?QmFiYjRYTXBaSVI0a3RmaURwM3VvNkNSVHkzN0JwRCtmMmJxK3R0YmpkdVkw?=
 =?utf-8?B?bnFOKzE1bklHeEZBRmJOZ2tJSDZDRUJpK3g3UXlmT3FSamsxTjMydk9tVWxD?=
 =?utf-8?B?aWQya2txU0Rpekt5N21SRWt6NU5GM0N1Q1laSjhlWlVrS3JLMm1rSGFqOGNB?=
 =?utf-8?B?OXNCR1cyZTAxbCtqT203TVY5Mm1LejNCemJmK28zby9XamM1SlNERzdLRHZo?=
 =?utf-8?B?UWE3Q0hyVkdFUjdiYzM5WlRyejJFbXpPclVvOFAyWk15NHc3R3FFZWJBTGFn?=
 =?utf-8?B?Ull3eE44OGw4MkxYM1RZTGxCS1VvTytXbWRzSnorZ0dDVklRbmZNMG1EQVNF?=
 =?utf-8?B?ODg5VEt6TU1HVmpYS0ZlcmZzUEJ1VTJlYWpvWlhiSHRyaXFTL0NsdjNsRU91?=
 =?utf-8?B?S2JQem9TSU0rOWVDcG5PRlNtdXZZQWlGcDczVVo4MytDQ3ZyZTJXS1c4eTFO?=
 =?utf-8?Q?nWabf5UJXK/IlWNAM7gKgBJuU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0df6cbe-1c20-455a-a41e-08dcf7f9e0a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 09:12:56.7287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7yoAMSaw08nWbrujcq3r6TESSkopgR/N3+tY3rqlhRJKF0FN+jd9cI2IQR9p7sNUaOpWw7qq3Wm+LkLT6hds4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7274
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUG90dHVtdXR0dSwgU2Fp
IFRlamEgPHNhaS50ZWphLnBvdHR1bXV0dHVAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBP
Y3RvYmVyIDI5LCAyMDI0IDI6MTMgUE0NCj4gVG86IEthbmRwYWwsIFN1cmFqIDxzdXJhai5rYW5k
cGFsQGludGVsLmNvbT47IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkx
NS94ZTNscGQ6IERpc2FibGUgSERDUCBMaW5lIFJla2V5aW5nIGZvciBYZTMNCj4gDQo+IA0KPiBP
biAyOS0xMC0yMDI0IDEwOjU2LCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+IFdlIG5lZWQgdG8g
ZGlzYWJsZSBIRENQIExpbmUgUmVrZXlpbmcgZm9yIFhlMyB3aGVuIHdlIGFyZSB1c2luZyBhbg0K
PiA+IEhETUkgZW5jb2Rlci4gQWxzbyByZW1vdmUgdGhlIFdhIGNvbW1lbnQgdGFnIGFzIHRoaXMg
Zm9sbG93cyB0aGUgYnNwZWMNCj4gPiBhbmQgZG9lcyBub3QgaW1wbGVtZW50IHRoZSB3YS4NCj4g
Pg0KPiA+IHYyOiBhZGQgYWRkaXRpb25hbCBkZWZpbml0aW9uIGluc3RlYWQgb2YgZnVuY3Rpb24s
IGNvbW1pdCBtZXNzYWdlIHR5cG8NCj4gPiBmaXggYW5kIHVwZGF0ZS4NCj4gPiB2MzogcmVzdG9y
ZSBsb3N0IGNvbmRpdGlvbmFsIGZyb20gdjIuDQo+ID4gdjQ6IHN1YmplY3QgbGluZSBhbmQgc3Vi
amVjdCBtZXNzYWdlIHVwZGF0ZWQsIGZpeCB0aGUgaWYgbGFkZGVyIG9yZGVyLA0KPiA+IGZpeCB0
aGUgYml0IGRlZmluaXRpb24gb3JkZXIuDQo+ID4gdjU6IEFkZCB0aGUgYnNwZWMgbGluayBhbmQg
cmVtb3ZlIHRoZSBXYSBjb21tZW50IHRhZw0KPiA+DQo+ID4gQnNwZWM6IDY5OTY0DQo+IEkgZG9u
J3QgdGhpbmsgd2Ugc3RpbGwgYWRkcmVzcyB0aGUgd2h5PyBwYXJ0LiBUaGUgcmVnaXN0ZXIgYW5k
IGJpdCBkb2Vzbid0IGdpdmUNCj4gYW55IGV4cGxhbmF0aW9uIGFib3V0IGRpc2FibGluZyBsaW5l
IHJla2V5aW5nIG9uIHhlMyByaWdodD8NCg0KWWVzIGl0IGRvZXMgZ2l2ZSBhIHByb3BlciBleHBs
YW5hdGlvbiBnbyBjaGVjayB0aGUgYml0IGRlZmluaXRpb24gaGVyZSBpdCBjbGVhcmx5IGFza3Mg
dG8gZGlzYWJsZSBoZGNwIGxpbmUgcmVrZXkgZm9yDQpIZGNwIDIueCBhbmQgYWJvdmUgZm9yIEhE
TUkgdHJhbnNjb2RlcnMuDQpBbHNvIG1ha2Ugc3VyZSB5b3UgZ2l2ZSBuZXcgbGluZXMgYmVmb3Jl
IGFuZCBhZnRlciB5b3VyIGNvbW1lbnRzIG9yIHRoZXkgd2lsbCBnbyBpZ25vcmVkLg0KDQoNCj4g
PiBTaWduZWQtb2ZmLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5j
IHwgMTEgKysrKysrKy0tLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgIHwgIDEgKw0KPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRjcC5jDQo+ID4gaW5kZXggZWQ2YWE4NzQwM2UyLi43YTMyYmZlZjhkODcgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMN
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYw0KPiA+
IEBAIC0zMSw3ICszMSw2IEBADQo+ID4gICAjZGVmaW5lIEtFWV9MT0FEX1RSSUVTCTUNCj4gPiAg
ICNkZWZpbmUgSERDUDJfTENfUkVUUllfQ05UCQkJMw0KPiA+DQo+ID4gLS8qIFdBOiAxNjAyMjIx
NzYxNCAqLw0KPiBQcm9iYWJseSBpbnN0ZWFkIG9mIHJlbW92aW5nIGl0IHdlIGNhbiBhZGQgdGhl
IGxpbmVhZ2Ugb2YgdGhlIHdvcmthcm91bmQNCj4gKFdhXzE2MDIxMzUyODE0KSBzb21ld2hlcmUg
aW5zaWRlIHRoZSBmdW5jdGlvbiBzbyB0aGF0IHdlIGtub3cgd2h5IGFyZQ0KPiB3ZSBkaXNhYmxp
bmcgbGluZSByZWtleWluZyBmb3IgdGhvc2Ugc3BlY2lmaWMgaXAgdmVyc2lvbnMgYW5kIHN0ZXBw
aW5ncy4NCg0KSWYgeW91IHJlYWQgdGhlIGNvbW1pdCBtZXNzYWdlIHdlIHJlbW92ZSB0aGUgV0Eg
dGFnIGhlcmUgYmVjYXVzZSB0aGlzIGlzIG5vdCB0aGUgV0EgaW1wbGVtZW50YXRpb24gYnV0DQpU
aGUgYWN0dWFsIGJzcGVjIGltcGxlbWVudGF0aW9uDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFs
DQoNCj4gPiAgIHN0YXRpYyB2b2lkDQo+ID4gICBpbnRlbF9oZGNwX2Rpc2FibGVfaGRjcF9saW5l
X3Jla2V5aW5nKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiA+ICAgCQkJCSAgICAg
IHN0cnVjdCBpbnRlbF9oZGNwICpoZGNwKQ0KPiA+IEBAIC00MywxNCArNDIsMTggQEAgaW50ZWxf
aGRjcF9kaXNhYmxlX2hkY3BfbGluZV9yZWtleWluZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAq
ZW5jb2RlciwNCj4gPiAgIAkJcmV0dXJuOw0KPiA+DQo+ID4gICAJaWYgKERJU1BMQVlfVkVSKGRp
c3BsYXkpID49IDE0KSB7DQo+IA0KPiBOb3QgcmVsYXRlZCB0byB0aGlzIHBhdGNoIGJ1dCBwcm9i
YWJseSB3ZSBjYW4gcmVtb3ZlIHRoZSBhYm92ZSBpZiByaWdodD8NCj4gVGhlIGludGVybmFsIGlm
IGVsc2UgbGFkZGVyIHdvdWxkIHRha2UgY2FyZSBvZiBldmVyeXRoaW5nLg0KPiANCj4gVGhhbmsg
WW91DQo+IFNhaSBUZWphDQo+IA0KPiA+IC0JCWlmIChJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3Bs
YXksIElQX1ZFUigxNCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikpDQo+ID4gLQkJCWlu
dGVsX2RlX3JtdyhkaXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0KPiA+Y3B1X3RyYW5z
Y29kZXIpLA0KPiA+IC0JCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElTQUJMRSk7DQo+ID4g
KwkJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDMwKQ0KPiA+ICsJCQlpbnRlbF9kZV9ybXco
ZGlzcGxheSwNCj4gPiArCQkJCSAgICAgVFJBTlNfRERJX0ZVTkNfQ1RMKGRpc3BsYXksIGhkY3At
DQo+ID5jcHVfdHJhbnNjb2RlciksDQo+ID4gKwkJCQkgICAgIDAsDQo+IFhFM19UUkFOU19ERElf
SERDUF9MSU5FX1JFS0VZX0RJU0FCTEUpOw0KPiA+ICAgCQllbHNlIGlmIChJU19ESVNQTEFZX1ZF
Ul9TVEVQKGRpc3BsYXksIElQX1ZFUigxNCwgMSksIFNURVBfQjAsDQo+IFNURVBfRk9SRVZFUikg
fHwNCj4gPiAgIAkJCSBJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZFUigyMCwgMCks
DQo+IFNURVBfQjAsIFNURVBfRk9SRVZFUikpDQo+ID4gICAJCQlpbnRlbF9kZV9ybXcoZGlzcGxh
eSwNCj4gPiAgIAkJCQkgICAgIFRSQU5TX0RESV9GVU5DX0NUTChkaXNwbGF5LCBoZGNwLQ0KPiA+
Y3B1X3RyYW5zY29kZXIpLA0KPiA+ICAgCQkJCSAgICAgMCwNCj4gVFJBTlNfRERJX0hEQ1BfTElO
RV9SRUtFWV9ESVNBQkxFKTsNCj4gPiArCQllbHNlIGlmIChJU19ESVNQTEFZX1ZFUl9TVEVQKGRp
c3BsYXksIElQX1ZFUigxNCwgMCksIFNURVBfRDAsDQo+IFNURVBfRk9SRVZFUikpDQo+ID4gKwkJ
CWludGVsX2RlX3JtdyhkaXNwbGF5LCBNVExfQ0hJQ0tFTl9UUkFOUyhoZGNwLQ0KPiA+Y3B1X3Ry
YW5zY29kZXIpLA0KPiA+ICsJCQkJICAgICAwLCBIRENQX0xJTkVfUkVLRVlfRElTQUJMRSk7DQo+
ID4gICAJfQ0KPiA+ICAgfQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5k
ZXggNDA1ZjQwOWU5NzYxLi4xODQ0MjAwMTFhODgNCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC0zODE2LDYgKzM4MTYsNyBAQCBlbnVtIHNrbF9wb3dlcl9n
YXRlIHsNCj4gPiAgICNkZWZpbmUgIFRSQU5TX0RESV9QVlNZTkMJCSgxIDw8IDE3KQ0KPiA+ICAg
I2RlZmluZSAgVFJBTlNfRERJX1BIU1lOQwkJKDEgPDwgMTYpDQo+ID4gICAjZGVmaW5lICBUUkFO
U19ERElfUE9SVF9TWU5DX0VOQUJMRQlSRUdfQklUKDE1KQ0KPiA+ICsjZGVmaW5lICBYRTNfVFJB
TlNfRERJX0hEQ1BfTElORV9SRUtFWV9ESVNBQkxFCVJFR19CSVQoMTUpDQo+ID4gICAjZGVmaW5l
ICBUUkFOU19ERElfRURQX0lOUFVUX01BU0sJKDcgPDwgMTIpDQo+ID4gICAjZGVmaW5lICBUUkFO
U19ERElfRURQX0lOUFVUX0FfT04JKDAgPDwgMTIpDQo+ID4gICAjZGVmaW5lICBUUkFOU19ERElf
RURQX0lOUFVUX0FfT05PRkYJKDQgPDwgMTIpDQo=
