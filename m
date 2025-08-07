Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CC7B1D85A
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 14:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6033C10E160;
	Thu,  7 Aug 2025 12:56:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdarhemD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5AED886A4;
 Thu,  7 Aug 2025 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754571404; x=1786107404;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=plfQeIrB9SCpvvfEs7R3xQygYZM8B5tKl3HuFiAoyms=;
 b=BdarhemDB9NTzYS454A2FJ5EWAzP7udL5M7RotXQFq+ZFI/iyByI+/gP
 JbqPGTsialRdwGLIChLM5kpWaLUerSIHwM6O3pLZtkEoGPQtYp+ysKaEp
 A9vAkUCMDzzOTOUp3QfBWSKE0nedIGvqshB0o/cjIoAqR+RjGAWEcHT+N
 LIPF1wajLfJBoAtiKmQC/heb5L5tlMs+h0OE0+COZTVDEbmkIzjlzAD/k
 xhtTdP/Zk9pBPxzRlvWonQO8A2tV6Qpm94sS9+3FEAZibsHNROHTtGIt9
 Ss6x5NtmMV8NrWxRxKggMJo879ieOoAyRLjhBGOnm9VTi8qMYgvLryWcW w==;
X-CSE-ConnectionGUID: qhyFnoJtQUqOfWB4VxlWPQ==
X-CSE-MsgGUID: 1iuXP/apSLGaTckZi7ejyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56868140"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="56868140"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:56:43 -0700
X-CSE-ConnectionGUID: Tcf8ez2QQ/uOcbfRPB7Gmg==
X-CSE-MsgGUID: bhdcm7J8QP60ZawC9tSXcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="165432154"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 05:56:43 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:56:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 05:56:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.88)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 05:56:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s16fMS4bsiqN2ktqB5gRCuM2KbEkcA+ZpxLfw7L5ujVKyM3NqKnPwlQSpk9fHbOxXRhxfpb1PtLZndouuLYxWr+ZBtQDFRLLE2h3gQOROjQL7r47r5X//WMqvX8huTLfMt+G8LHqppL8u1lT3oPCLEt0miq9ULeSYVDWyI8mJWf3RYcs3LZCDYcHWCF77Gsvj3fK6TuVSw2ayhI9ZzMXdZgQRxLiHcSOoX6PejjQJNxkrUHZziH3JSGKpgf0wsserdbHi141nNOXodIzJLfxEgA/iiEz9Z2/eGWLwKvTy2Bi6rn4OT+r5mWRgxx9t1MiGpl4kKn+Dpb7Ai6ecaBvXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=plfQeIrB9SCpvvfEs7R3xQygYZM8B5tKl3HuFiAoyms=;
 b=EROESrixEJrdTafH9H11rSY4IBjnJelbKZ+Uq5W49xPipKy6yTvwC1mccU39OHOBNoXlkmojEEGIt88cXe1TyRFEAvFl9c8oVKwn6F4pPEYNK6u1uk2YZuveZolj+WvOxDe4iY4mJAv6Ho3O4cv8LZCyVpVgj1hG8KWiYJslZhuJ2sLPJCt1pawVDMTp419TnYqtDkN411Cw3zLy0QqfAYrFPMceLLuZtHrzm3eergz8fx/Yf8ZuELqEUM0lIVSCBbVSD55rM6wO3+ngFrvJlkBMGDjIgIRMYlpXdvvGcsUXTUnTEHrisX/+TWkOkj5UiByPbI4Pd1LbCGq9+LLw3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB5125.namprd11.prod.outlook.com
 (2603:10b6:510:3e::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.16; Thu, 7 Aug
 2025 12:56:40 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Thu, 7 Aug 2025
 12:56:40 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 10/19] drm/i915/tc: Pass pin assignment value around using
 the pin assignment enum
Thread-Topic: [PATCH 10/19] drm/i915/tc: Pass pin assignment value around
 using the pin assignment enum
Thread-Index: AQHcBd1uGJPdJjdFOU6uMq96nOR4VbRXKZmw
Date: Thu, 7 Aug 2025 12:56:40 +0000
Message-ID: <DS4PPF69154114FA1CB30995D5AFB7CCA7AEF2CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-11-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-11-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB5125:EE_
x-ms-office365-filtering-correlation-id: 9320e6fd-bce1-4172-1469-08ddd5b1da52
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Z3RlRGpnb3JFb3VlWkl5VFRmNHdSaTNtQTU0N0s0YU5ZQTFRaFlERnJKL3FF?=
 =?utf-8?B?Mng3ei9yY3RQbkRsQytzeHRwNlRHdWhRUGpOOHp1YVRPSU1GMCtjY2pKbEd6?=
 =?utf-8?B?cTJlRDJqeVBVTGo1ZlRJaDFWb0RmWjZPZUNmSHBvRy9oMks2SXR5cXBSZFA3?=
 =?utf-8?B?cGZUK0NlcGlPWmVUVTlxTDlGVXVVU2xqNzRrU2ptNXdrS1FvczYvRWxMVis5?=
 =?utf-8?B?Z2ZWR0Fxcm5BOG51amRsbFo2bmNIQXZiS00xbUZHMEZyenVxcS9aRWlOZWU1?=
 =?utf-8?B?QWdVYjdFWmlOdU9zYUd3Sk1KbDZJSGoxLzlockRQWDB4KzBreUFDZTJKazNs?=
 =?utf-8?B?OVdXOHU3L0QyVHVKZGxSajNUc01KMU84bjhCS3M2KzF0RnN5VXhCb3RrV1Rq?=
 =?utf-8?B?WnJZUDlGeU8rM3l3N1lpV3NXY1BYdWozTGt0RkNwUHgrVDY1VFU0YkdrQ2Vm?=
 =?utf-8?B?cnpCWDF5VTlYaDlIazE3RE5HREo0dUVMOWlPL0NNTWp5ZmpiSXJjblRGaEdZ?=
 =?utf-8?B?VWxXYVc0MDZEWHpMY09Lb2FWejhCcjZCNk9WVExaUXdkTHppbnU3Q05RYjdk?=
 =?utf-8?B?SlA2aTdlWlRLcVFlVG9IVEZqRFZzRE96S0dHMWYrN3NYTlVyVWZiM3lUWWJC?=
 =?utf-8?B?UHg0RXMycHVFQzBOQS9LQmhFZkFuNFJlU2JHVFhZMEk3SzlpaDYwUWpNQXZx?=
 =?utf-8?B?UW9NUkY0Q1lnZnByQmg4WG80VTNMNEhSeXhLS0UrMENqaVBmQ3ViVlVrNU93?=
 =?utf-8?B?NXNVUVNLWnVaYXRDUy8rNUozRG5wQ2JsSlF0K2Nab3prNXhmYlVjNUQxQTR1?=
 =?utf-8?B?bStaK1RLa241YWpscVk1MUNSTEF5U1pycWNYM1hGQ3dVQzNrVDl5S3FmcTFZ?=
 =?utf-8?B?YXZBSGluNTR6Q1ZMaE83Sm0vOEtscDBYeVRQVVJOSmRTWlhWc0lVb3FsMFdX?=
 =?utf-8?B?and4RHVEOFZJalZ4bG9ad0lYaTl6Y2krT00yQ1pIRTVMdGt1bTFickk2S2tK?=
 =?utf-8?B?YTBmZ0R1eTFUaXQ2RFFLc3BVYWFnRW9ibmV5SUNZMjFwdS8zRy9kRHNNMk5E?=
 =?utf-8?B?aEpLOXh5dlVrYkVzQUZWL09JUDRSZ0pGdk1hemJXYi91NzNpZldTcWFGd1Rr?=
 =?utf-8?B?bWJuci9MTDh0aHlsdEQ0TXJJck45NVVsUFBmdTdVNi83aHFKTm9LYmpBT1d1?=
 =?utf-8?B?RVdwK09PYUYrUVJlYjNDNElUaWFkemVQclVTZmJUM1l1OXJJdFZKdGhjVk5Z?=
 =?utf-8?B?TGk0MWkvMWVGWUFZV1IvYkROOUUySzJ3bUJFNTdyLzg1Tk1YN3p2blFjY014?=
 =?utf-8?B?TENhU2doR0NhVE0rMDUxVW9NandHOFV3RkFFQzlOUWhBRThsZUNmR2hTY3gr?=
 =?utf-8?B?emd5UWFDUG5lQjk4UktYb1RLdk12UEIxNEwrYWdOaytubllWNGhLeWREcFha?=
 =?utf-8?B?L2JBNUtGaVJTZWc5bFI0ejNHcDAxQjg2Y0U5emhibDlnc3lmNno5MjVoSXl5?=
 =?utf-8?B?cXZWSTEwWHJmd0lTSDRtL1BEYkJOaW41eDN5amJIU290bG9kRVBFTHZvN1BP?=
 =?utf-8?B?YVdYOXpTMlYvSGZxbkpHMjZsNHNaYkdkZXVML3lXODJsRVlvNlVVSzVMTE9r?=
 =?utf-8?B?Q3hodjdkTjVFK1phc1JPQVJYRFBPRHhXT3lRSVdaUUFUSkxnVnNkQy9lT2ZR?=
 =?utf-8?B?YlJkQXNLc2lYVWQ5RlVGa3VvQlpvNTFFbStLbFJVcld3QThTRTk2Ny81Zjdx?=
 =?utf-8?B?SmZCUGhsVFZ1dU5Tb2k2dGo1Rm5LOC9Qd3JjYk1yQmVRRWtLUnpoWVFaVUUy?=
 =?utf-8?B?VHc5VW1lYUpJendqQ0NrNGV1VjN0ZG5wYkJRcWV5TzNZdDZVUFpnU2Jzb0JE?=
 =?utf-8?B?UzR2QzdHekF0aERGMWRmRllieHpQSTRMakNSV0NscjZEZDlhNmxzRzJBRVNT?=
 =?utf-8?B?L1FjWEwxZzlabnVSM01EUUkvNE5YdEY2M2dYc0MyRzFYZ25OaEs5VnREU1dO?=
 =?utf-8?Q?Mewqo4DqLXtJtrbjUGrxb+AFTPW/eQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cTJzR2xDeGJHZy9obHpGOEU1WHNzTVUwK1BTVmNRUkJvaU11dUVBY2tiMVNW?=
 =?utf-8?B?SFc1YzlIRDdDT3RFUVNzU2pRb2d5empBKzNES0lkNTZkSzZoNDZUTE85NDk2?=
 =?utf-8?B?bFNUekdnTlZIYTVrNEp6dWVNMkh3dGd1dmxwUEJIUjhFcVhUeWw2NHBtcmdU?=
 =?utf-8?B?NnZZS3ZKSTNKSGZyM2N0WjFIbmhqaEw0YXdQZjVPTCtUL3NVTmIvRmdWOHVj?=
 =?utf-8?B?WjlSWjJYOU9YZ1p3bVJsbElLZUxBREdWL3BaUEw2VjZLcTl6RU1EVGs3dFA5?=
 =?utf-8?B?MlE3cVVoQ29kYnUwSG45dzAxUnZTcWVQa05uNmVNT2hha3owcUlNTHJ5bFNz?=
 =?utf-8?B?T0hhRHRuV2FvR0pibGFoMDNFMlcrY1BJbExyM3U3K0dJbWc2UDBBa0xLTHZF?=
 =?utf-8?B?eGZaWnNYVUFyb2w4L0I0dUd3T2crMGZPYUxvNzEyOFQvblJuV1hMdTBQMlVk?=
 =?utf-8?B?UTJBa0JXb0s5YTkrRklzL2NHOGhKOW5wUWcrMnZUOURNa1VLZlJtNDZsZEg1?=
 =?utf-8?B?QnVFRGNVeWZySFpyY2ZVWDJIMU1aMzlES3BMbzRuSTVRNFFZTVVGdzFLSEhO?=
 =?utf-8?B?L0I0dGh4LzVRWmxwK3ZIWmdSZkFCb1NGSi9qMXhQWnFYVTl3ME1vejVxelpQ?=
 =?utf-8?B?YW5obThLZmMyTHF0QXkvVmJzbllsRTM4dmhha2U1SFV2QlBNQzc1WHZRRDQv?=
 =?utf-8?B?K2I5eTltSWF5d3FxY0tkc2xkNmF5cWF4eEwxejNqS1hNNDNidEV0S1FMdm1a?=
 =?utf-8?B?ai9BbjBERnM0S3VNZXFWQWp4eFlLOXNONkpPdEhIOVhmVUdnZXk2NCtYd1pR?=
 =?utf-8?B?L2JqZEdSMHJDdWpncndleGJVZmIvSXJFRVhCNkhTUGRxdjlRK0lUVzFTOU9J?=
 =?utf-8?B?bGhVSU52VmlQekQ2UmlGdnF2T2hpcENMSGxuNVhwUmM4SVFxQzdsQUFYWm5j?=
 =?utf-8?B?RDZXUGsvMmhDZURwVXNvNmhRTFhKdjJKWEtuU3hSemtEc1NEZGNRVnRFMmhw?=
 =?utf-8?B?ZmJFZDhaMXNDUWExL29iRUhHNVRqdG9nbkJGWVVIUnlSUC9uK2RCVUxRZVBX?=
 =?utf-8?B?b2NENVJQV3JsYUZTQ1R3MXlqNC91RWxXR2dUY0xCQU5ZcnFOYVBFOFV4SjVV?=
 =?utf-8?B?OWx2OW9LTTF2bG9WdlUzOHU1cXc5emZZaitwQWlTem1ZSEJmWUNWdENmT3po?=
 =?utf-8?B?bzRlVFFhTHpRSnZiblFKWFp0UGdJT3EwTk1LeFN0Q2JVR0hQWFZGTS9WRHpD?=
 =?utf-8?B?YndiSEJEVktxYmMzWTdZUlFnb25Delhrb2tMcTduOHhGUkJZbEVNek03M2sv?=
 =?utf-8?B?bnY4cHhHUG1UTnRoOUx3WWFwaE1ST3o4V0ZPYTZLRFZWWVFVMmhuVzVQR28r?=
 =?utf-8?B?SXV3OGFhMnNVc1U1Rmc2bHJ1TDZ6L09SUEpoaWl1SzUybi9tZEUwbWxLdUwz?=
 =?utf-8?B?WHJYV3FBQ2RsWWVoVUZuWFlXOGZXRzlmR3JmSXhVVFUva0c1THJtZ21BWHds?=
 =?utf-8?B?YnA2UnZ3N0Q0VnpSMDk3YmQyQytudzdwVUIwZDFXS3ZPQmNWSFlWK2gwdjU3?=
 =?utf-8?B?ZEp4ckZRUUFUaDU5SVgwbFhkeWQ4bG5VUUJ0WmxUS1ZQL0RYWjUxYVRkd3Bv?=
 =?utf-8?B?cjhCL3dFS0JSVXlQWlpHRk1pUVRmZTRYKzZzTHR5Rk16S1hzT0d5MkJkb24w?=
 =?utf-8?B?WWJHM3lLbWFyYUlnNlZyWmtBd1hqSURNUnh3SExRK21malJzSWppUi84VE83?=
 =?utf-8?B?NnpITlh4UDBQWFoyYzZzdmVrVFJqU3IwRnVGN2J0VzN4akJvdEFqeHkzaVJV?=
 =?utf-8?B?VEtGZE84RzBWZHkyOWFMUFMvbGJjbkh5MWtGVjFXenhNQ0JVSDlWbTRsN3RP?=
 =?utf-8?B?cDQvS0RBcVJiKzl4dWdYbEZ5YUdxWXRXb0MvSW1lRHpuUXBqZTFoMWk1b0Js?=
 =?utf-8?B?Mnp4M3dSNlB5SnBqL25IaW50VjZKNHQwVER5S0xYbnRvOTFhdkRhRFAvNFR5?=
 =?utf-8?B?YVd0bHNZM1htUUtjN0dReDUxZ3k3NHFWYzl2cW00Z09EaFl1VU13YWY4eVFV?=
 =?utf-8?B?VGNzWmkvbjdTOSsyd1J0UW9QRkxpU1JvaERud0xmdjc2cU4wakVubW1XKzJm?=
 =?utf-8?Q?rOxg+4+gKTNZREmXFukRYl4Md?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9320e6fd-bce1-4172-1469-08ddd5b1da52
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2025 12:56:40.4578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zVVoQdxx3/hB+jSAA9muLvizG75ihvMtD6h1GwL3SVylpQArB4Ql04AaJmj4UgZmB2mfH06DKQjy35o9de/tLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5125
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
amVjdDogW1BBVENIIDEwLzE5XSBkcm0vaTkxNS90YzogUGFzcyBwaW4gYXNzaWdubWVudCB2YWx1
ZSBhcm91bmQgdXNpbmcgdGhlIHBpbiBhc3NpZ25tZW50IGVudW0NCj4gDQo+IFBhc3MgYXJvdW5k
IHRoZSBwaW4gYXNzaWdubWVudCB2YWx1ZSB2aWEgdGhlIGNvcnJlc3BvbmRpbmcgZW51bSBpbnN0
ZWFkIG9mIGEgcGxhaW4gaW50ZWdlci4NCj4gDQo+IFdoaWxlIGF0IGl0IHJlbmFtZSBpbnRlbF90
Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKCkgdG8gaW50ZWxfdGNfcG9ydF9nZXRfcGlu
X2Fzc2lnbm1lbnQoKSwgc2luY2UgdGhlIHZhbHVlIHJldHVybmVkIGlzDQo+IG5vdCBhIG1hc2su
DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDE5ICsrKysr
KysrKystLS0tLS0tLS0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyAg
fCAxNCArKysrKysrKy0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmggIHwgIDMgKystDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+IGluZGV4IDg2NmVkM2U0NjY2NDUuLjJlZDlmZGQ0OTljMzkgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBAQCAtMjE2Niw3ICsyMTY2LDgg
QEAgaWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdf
cG9ydCwgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rp
c3BsYXkoY3J0Y19zdGF0ZSk7DQo+ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9lbmNv
ZGVyX3RvX3RjKCZkaWdfcG9ydC0+YmFzZSk7DQo+IC0JdTMyIGxuMCwgbG4xLCBwaW5fYXNzaWdu
bWVudDsNCj4gKwllbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50IHBpbl9hc3NpZ25tZW50Ow0K
PiArCXUzMiBsbjAsIGxuMTsNCj4gIAl1OCB3aWR0aDsNCj4gDQo+ICAJaWYgKERJU1BMQVlfVkVS
KGRpc3BsYXkpID49IDE0KQ0KPiBAQCAtMjE4OCwxMSArMjE4OSwxMSBAQCBpY2xfcHJvZ3JhbV9t
Z19kcF9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCWxuMSAm
PSB+KE1HX0RQX01PREVfQ0ZHX0RQX1gxX01PREUgfCBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RF
KTsNCj4gDQo+ICAJLyogRFBQQVRDICovDQo+IC0JcGluX2Fzc2lnbm1lbnQgPSBpbnRlbF90Y19w
b3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKGRpZ19wb3J0KTsNCj4gKwlwaW5fYXNzaWdubWVu
dCA9IGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50KGRpZ19wb3J0KTsNCj4gIAl3aWR0
aCA9IGNydGNfc3RhdGUtPmxhbmVfY291bnQ7DQo+IA0KPiAgCXN3aXRjaCAocGluX2Fzc2lnbm1l
bnQpIHsNCj4gLQljYXNlIDB4MDoNCj4gKwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX05P
TkU6DQo+ICAJCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwNCj4gIAkJCSAgICAhaW50ZWxfdGNf
cG9ydF9pbl9sZWdhY3lfbW9kZShkaWdfcG9ydCkpOw0KPiAgCQlpZiAod2lkdGggPT0gMSkgew0K
PiBAQCAtMjIwMiwyMCArMjIwMywyMCBAQCBpY2xfcHJvZ3JhbV9tZ19kcF9tb2RlKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCQkJbG4xIHw9IE1HX0RQX01PREVfQ0ZH
X0RQX1gyX01PREU7DQo+ICAJCX0NCj4gIAkJYnJlYWs7DQo+IC0JY2FzZSAweDE6DQo+ICsJY2Fz
ZSBJTlRFTF9UQ19QSU5fQVNTSUdOTUVOVF9BOg0KPiAgCQlpZiAod2lkdGggPT0gNCkgew0KPiAg
CQkJbG4wIHw9IE1HX0RQX01PREVfQ0ZHX0RQX1gyX01PREU7DQo+ICAJCQlsbjEgfD0gTUdfRFBf
TU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gIAkJfQ0KPiAgCQlicmVhazsNCj4gLQljYXNlIDB4MjoN
Cj4gKwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX0I6DQo+ICAJCWlmICh3aWR0aCA9PSAy
KSB7DQo+ICAJCQlsbjAgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDJfTU9ERTsNCj4gIAkJCWxuMSB8
PSBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFOw0KPiAgCQl9DQo+ICAJCWJyZWFrOw0KPiAtCWNh
c2UgMHgzOg0KPiAtCWNhc2UgMHg1Og0KPiArCWNhc2UgSU5URUxfVENfUElOX0FTU0lHTk1FTlRf
QzoNCj4gKwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX0U6DQo+ICAJCWlmICh3aWR0aCA9
PSAxKSB7DQo+ICAJCQlsbjAgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDFfTU9ERTsNCj4gIAkJCWxu
MSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFOw0KPiBAQCAtMjIyNCw4ICsyMjI1LDggQEAg
aWNsX3Byb2dyYW1fbWdfZHBfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCwNCj4gIAkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMl9NT0RFOw0KPiAgCQl9DQo+ICAJ
CWJyZWFrOw0KPiAtCWNhc2UgMHg0Og0KPiAtCWNhc2UgMHg2Og0KPiArCWNhc2UgSU5URUxfVENf
UElOX0FTU0lHTk1FTlRfRDoNCj4gKwljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05NRU5UX0Y6DQo+
ICAJCWlmICh3aWR0aCA9PSAxKSB7DQo+ICAJCQlsbjAgfD0gTUdfRFBfTU9ERV9DRkdfRFBfWDFf
TU9ERTsNCj4gIAkJCWxuMSB8PSBNR19EUF9NT0RFX0NGR19EUF9YMV9NT0RFOw0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IDlhNDBhZDA3ODMwZjUuLjA1
ZGYyNTI2NDBmNDYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmMNCj4gQEAgLTI3Nyw3ICsyNzcsOCBAQCBzdGF0aWMgdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xh
bmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAlyZXR1cm4g
bGFuZV9tYXNrID4+IERQX0xBTkVfQVNTSUdOTUVOVF9TSElGVCh0Yy0+cGh5X2ZpYV9pZHgpOw0K
PiAgfQ0KPiANCj4gLXUzMiBpbnRlbF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiArZW51bSBpbnRlbF90Y19waW5f
YXNzaWdubWVudA0KPiAraW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1lbnQoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGRpZ19wb3J0KTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsgQEAgLTI5OSw4ICszMDAsOSBA
QCBzdGF0aWMgaW50IGxubF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QNCj4gaW50
ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZGlnX3BvcnQpOw0KPiAgCWVudW0gdGNfcG9ydCB0Y19w
b3J0ID0gaW50ZWxfZW5jb2Rlcl90b190YygmZGlnX3BvcnQtPmJhc2UpOw0KPiAgCXN0cnVjdCBp
bnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOw0KPiArCWVudW0gaW50ZWxf
dGNfcGluX2Fzc2lnbm1lbnQgcGluX2Fzc2lnbm1lbnQ7DQo+ICAJaW50ZWxfd2FrZXJlZl90IHdh
a2VyZWY7DQo+IC0JdTMyIHZhbCwgcGluX2Fzc2lnbm1lbnQ7DQo+ICsJdTMyIHZhbDsNCj4gDQo+
ICAJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRpc3BsYXksIFBPV0VSX0RPTUFJTl9ESVNQTEFZ
X0NPUkUsIHdha2VyZWYpDQo+ICAJCXZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgVENTU19E
RElfU1RBVFVTKHRjX3BvcnQpKTsgQEAgLTMyNywxMyArMzI5LDEzIEBAIHN0YXRpYyBpbnQNCj4g
bG5sX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQ0KPiANCj4gIHN0YXRpYyBpbnQgbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2Nv
dW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KSAgew0KPiAtCXUzMiBwaW5f
bWFzazsNCj4gKwllbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50IHBpbl9hc3NpZ25tZW50Ow0K
PiANCj4gLQlwaW5fbWFzayA9IGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50X21hc2so
ZGlnX3BvcnQpOw0KPiArCXBpbl9hc3NpZ25tZW50ID0gaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fz
c2lnbm1lbnQoZGlnX3BvcnQpOw0KPiANCj4gLQlzd2l0Y2ggKHBpbl9tYXNrKSB7DQo+ICsJc3dp
dGNoIChwaW5fYXNzaWdubWVudCkgew0KPiAgCWRlZmF1bHQ6DQo+IC0JCU1JU1NJTkdfQ0FTRShw
aW5fbWFzayk7DQo+ICsJCU1JU1NJTkdfQ0FTRShwaW5fYXNzaWdubWVudCk7DQo+ICAJCWZhbGx0
aHJvdWdoOw0KPiAgCWNhc2UgSU5URUxfVENfUElOX0FTU0lHTk1FTlRfRDoNCj4gIAkJcmV0dXJu
IDI7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Rj
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgNCj4gaW5kZXggZDM1
ZDlhYWUzYjg4OS4uM2VjYjNkZTU0ZTg3NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuaA0KPiBAQCAtODgsNyArODgsOCBAQCBib29sIGludGVsX3RjX3BvcnRf
aGFuZGxlc19ocGRfZ2xpdGNoZXMoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
Ow0KPiANCj4gIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpOw0KPiANCj4gLXUzMiBpbnRlbF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVu
dF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gK2VudW0gaW50
ZWxfdGNfcGluX2Fzc2lnbm1lbnQNCj4gK2ludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50
KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsNCj4gIGludCBpbnRlbF90Y19w
b3J0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsg
IHZvaWQgaW50ZWxfdGNfcG9ydF9zZXRfZmlhX2xhbmVfY291bnQoc3RydWN0DQo+IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ICAJCQkJICAgICAgaW50IHJlcXVpcmVkX2xhbmVzKTsN
Cj4gLS0NCj4gMi40OS4xDQoNCg==
