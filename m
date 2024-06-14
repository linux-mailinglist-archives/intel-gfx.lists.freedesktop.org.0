Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B6490900A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 18:22:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6DA10EDD7;
	Fri, 14 Jun 2024 16:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kdwEknAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0236F10EDD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 16:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718382141; x=1749918141;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZWwT3Jb8Or225XeKlNQ+l3SZQ+kbVuvqoziSVw5dC1s=;
 b=kdwEknAADI3EobemyeKAOu4/R9xcFxSggh8aPqwZ/2iK/IgV+ldrAIPQ
 ldd/Epav2r/oiDcjvHQdi+ATny/1ksx8LLaA61bSPmZUdGmmORImytPMW
 qn4VnBqxUkcTfJNiHUOFT9RQPTESPEYp6Fo3/jND5gXtQ4NNPW6JIDTWp
 8xl8R9ijOSFO1NFOHlbgetDRoqRwc82NEu1AXa2ptBvdKD/pqtPvsI5UT
 OnFtd5N7Mm0uWhLzZg50LlNOnuNlkfuvvGmxzwHfMXqH9/941UVfoDsgN
 1kDFlAdYm+kUbSjMB47OPuQFT4z9p2aYHUJgkh4NaLwHx3S77RWN+KPHn A==;
X-CSE-ConnectionGUID: Sq6QQ/4WQMmvtCbUXJZJww==
X-CSE-MsgGUID: b9TMBySoRVa6WNkXFEGy2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="15426128"
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="15426128"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 09:22:20 -0700
X-CSE-ConnectionGUID: Jz9M4QNTR3WdPFNJvl3ZIQ==
X-CSE-MsgGUID: SsXs+pBjTCufeFlths4AIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,238,1712646000"; d="scan'208";a="78030778"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 09:22:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 09:22:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 09:22:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 09:22:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bHuk0+rFOGzLuzTxffQGZsGUS3u6fmbyIXuEChrhTjgwRUWYDsMoFVVPM83ztq6oBerS0mxbncDZ+ll3viiBA9HJDj7YZUvTFnq+RkgLzBHINd/f1g0QyGv2ByMZgyipTjukjrqLy4L6qWVdXe75liG2tRTIvncEVR68pGIZb1RJZvGx9yfnwMG45Ziz/gAiSYC5ctmImf/ai8dAcWwh3D8Dzikpu8N8Uwj5HXy8hBlQx9MLFxyyTZAOyK1dbR5XRTBfkwMoGi6DmKb5ecQiRS/PNnj1SlOzU0S8S5NU7+J0kBC4A94GmpIKOCuPtZ4VscFxn8OAuMnczLQV0TJtZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWwT3Jb8Or225XeKlNQ+l3SZQ+kbVuvqoziSVw5dC1s=;
 b=NfGjMQd5MMR5jHqDxIPzmgnozDYvMxDAgvux/tRg3e4R/pPINfFRe6S0u4Hl3HbcGMenqa/ePdlOecP82Fcr2GuUIFn6m7Vw4SfiZI/bUR55u5Q3d6Utb2ycQXwh1oabq/4Y3wV8Uw0alN+9EOHJdXPQDVJFdERoIPegJTcfQdgNORtdd3BnV2NFi215gIXKSfwt16UB2lYPrOuELSpmq4MbvfdhV8KDXmcA76IWlVji5iZwQP1sYuVWybRKdxcfLQkQ41a335qI8TzxTxw+fKQ4941zo9sAKdtKA31e60BYHBFoTqirL3jdOYNRZu+pBDYuK69P1UhPoZ0dzWe4LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6368.namprd11.prod.outlook.com (2603:10b6:930:38::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.25; Fri, 14 Jun
 2024 16:22:15 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.019; Fri, 14 Jun 2024
 16:22:13 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v8 04/20] drm/i915/psr: Add Panel Replay compute_config
 helper
Thread-Topic: [PATCH v8 04/20] drm/i915/psr: Add Panel Replay compute_config
 helper
Thread-Index: AQHavXSzQboKQqMw0kiuDNrtOaVXVrHHcjkg
Date: Fri, 14 Jun 2024 16:22:12 +0000
Message-ID: <PH7PR11MB5981688B4F337F78756AD8B4F9C22@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240613093239.1293629-1-jouni.hogander@intel.com>
 <20240613093239.1293629-5-jouni.hogander@intel.com>
In-Reply-To: <20240613093239.1293629-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6368:EE_
x-ms-office365-filtering-correlation-id: 64197900-bb24-4f3a-f723-08dc8c8e25f1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|376011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?Y0tWQWczbHQ5S0YxRUwxMTZJWis5b2tuWWErdGhpZnphcTJMNDFLR3p4Q3lJ?=
 =?utf-8?B?M3plQVRnZDVSZzlhZW9abGRsa2pPZnNWTW1rd3VhMkFkWlVwNU45QVV4ckpJ?=
 =?utf-8?B?UUlzamNzdFdmcUpkSTV1L3BFM2RvUWNGSXE5M2NrUW1ZZGxycnh1TVhKZVRE?=
 =?utf-8?B?R0xOcWpRUHBBREcrNWpMNHN2S1dyN21yMUFmd3h0RUZuQ2NHajBTdm1MV2p1?=
 =?utf-8?B?YmpwNUpudm1oZTdReDFEVmtSeFFCVk1ZSlR5c241UTJRdmRFczRxWmEzR0lp?=
 =?utf-8?B?NmpteGFMQzJlSjF4M0hQbU1aQ1lsNmh4eTdvRFVVQzhBK3FFbEd3NGU1M3J2?=
 =?utf-8?B?Q3pWbGphSHlNWDBBQ0VxYnNXbFBSTDdGMWg0QzBnRjN0azViSjFpVXA2V2tw?=
 =?utf-8?B?ak5xYk5FdmhvMEVwcG42c2pPR1prL203QlRlQVkvK2lmOHNsUFhJSzl5Sm9r?=
 =?utf-8?B?Q1V5YmtWeEVEZUpWd0p2dGR2TzRIUnY4V1A4NUxyRTV3QnErc1dEYTZXd1Q2?=
 =?utf-8?B?WS9HWEFoaFpMZ2VCZmwwWXZpRE40TWhLdFYxcHE3MDFBeW0rMEVNM0UxZSs2?=
 =?utf-8?B?ZFRSRmVBMkMxekFKaFBEb1VuVS80cXk5M3VHUGltTDhyanJCRUF4S0xMWnh1?=
 =?utf-8?B?OHNBK2xuRjB1Ty9wbjEvVmp2VmJRYmNXZ1h2U29lV0xrNkhCdUdpSkdaZmRT?=
 =?utf-8?B?UXJHcWkzMUFyNTNNQWJyTmRmZ1ZXYkZMQkdNWVpzRGNoNjMrWXhLSS8xQ3JS?=
 =?utf-8?B?bHRwOU9KZGVRWUo5YzcrOUZZbEVXdC9lUEVLcmtyUTdFRDA5b2JVa1ZlZEh2?=
 =?utf-8?B?OUcwVDlzK1ZtN1BMdHVMeGxRKy9Yc29ZWU5BbXlhWml2MHJsK21kTk9UR0Nu?=
 =?utf-8?B?TGwwM0VmS0NtQlVFMnBRckVIdks2d2wxNVFIcS9ZWUlOakJYdVc2NWQ4czRm?=
 =?utf-8?B?ZHFnTTZiUVJHeVc0OEF6VS95bWJxc3hDeEU4cEJHaWE5T2FqcTdCMkZEcXJm?=
 =?utf-8?B?MCtTRTRuQ2tBa3ZhYXJsKzZUdUtVWW1XSFowZXBiaTAzYkI4cUJtYzVLdTVV?=
 =?utf-8?B?VjhxbnVMWGdiUGZMdzdMcFVxQjFrOHBldWhHamtCTGN3cUd2dlFIRGlnT2l2?=
 =?utf-8?B?SjJBMVNKL2ZBRVNZWFVNcjdMNjNHMkkvbklNWkM5ckRtYmFjdjRZTHhZTzdj?=
 =?utf-8?B?ZmVudjZoUHVmM1hrOUo3bGF1Um1GQzg0bnFRQ2Z1UW1yV3BFb0MrTFBWR1NF?=
 =?utf-8?B?bDlodUtsNUtTWVptaDdFNmVxVHJEQUtWWnVhVTZ5OTZRQmxneG9YREMzczVa?=
 =?utf-8?B?clFMQi9hTkpPYXMyb3dHMEEyMWk1Rm9qWWh2MUQxb3BYQUhVSGJkOENrTk1l?=
 =?utf-8?B?bzIyQUIwQjJFQmxHSG5vdklVWjY0T2ZGTE0wNnUyMlFDaEpmOW9rZHZWOURt?=
 =?utf-8?B?U1FlQXpuaGNQVkpCbXNpS3NDaFBkZ1lMMXBzU3JrUnJzSGFqenZ0ejRqL3No?=
 =?utf-8?B?dVVnZlljSGhDUW83WTBHWmF4bWxFbjNVM0pQODhaL1pLOVg1S1lraEpDVXEy?=
 =?utf-8?B?UjQ4cTZiK0xZUXBvRm04a2V1TDQzT3VGM082VXgyV2ZtYVN4anJ2VTNNMzRS?=
 =?utf-8?B?VERCSGgxNFF1c0dqSXFLRnJBNCtoL0VNNTVmT3M0ZzhKSTZQbVlxU24yTkxI?=
 =?utf-8?B?OFo4L1kxTkZLeDlYMTRYY3V2TzdwVmE4Y25WeklDVS9xT2dzeGppVE9lQVZx?=
 =?utf-8?B?T2JhNnBNOC94MEdIUFdwK2FnVzVsK0NUcS93YS9aaDN2ek5YaThtcmhzNEVw?=
 =?utf-8?Q?e2PKpGheiyCaHtTMJVSE0gEp54TPCvbqB5DlI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cGFXeGJ5OCtOQVRPMjJlWUNrVUwvRTFRZ1lpSjR0NDZleERxTDlDRUwvMkdr?=
 =?utf-8?B?dk1hYWhqLzFUemNQTzc0NGxwOXVvSnNBaXpSNkRXcHlaRUV6aWk5UlZhMGFz?=
 =?utf-8?B?NEpQME5KcnZ0WmxpY0NHYzJLbksvSDA1RjFJbnB4QWpjNm9LQ29XUlN2aHJq?=
 =?utf-8?B?UDZRc1BnY0toeHZONVJKaHFmQ0NzektvWGo4L1Y1ZzgzbUtRSk1QdXd0UEhU?=
 =?utf-8?B?aTZTeENyWVdKMFJLMk9lS29pekp6UVFJSXFIRWFacmdjSnlVTE92alN6S291?=
 =?utf-8?B?aVEvdVg4dHpVcHdUWnQyRkpDa3p6UG9PTTM3aVlYemp3Q1NYSlZvclNBZU1h?=
 =?utf-8?B?akJCbWNjZWsrank3NXZuRHYvY2NLSGJZamIxVHJtSElPdG94KzE3dHVpV3Fv?=
 =?utf-8?B?akJmY1BkQUJkTUFOVk5EWjlqMldWTXZFRDBadDZQN01XTnIvOGx3c0svUUZO?=
 =?utf-8?B?NFRRS2x5T1krWDJYR3U1MkdhSXJ1Ti9nZXBGb0ZuQ0tLSjVENDhnN2FFWXZh?=
 =?utf-8?B?QnpiL0xWbHBiY3V4SXY1bUo4R0o5WngwQkY3ZWtoc3ZyZmtrcXQrajRvamdM?=
 =?utf-8?B?MEt6RXBGa2pITklvYmNYbzUvN1VPbVgwenE0cDdUNUhqTVl5Qlh2TzFaUEZ1?=
 =?utf-8?B?bHNmYXJUZXJNTWY1MlloWGl3RXFNemxvQUwwQXNUdmUydUpEVm1sNGxqYkh5?=
 =?utf-8?B?NzJMY1pBL0ZRYlluMmkyNjFTanIzUUpLQXc1bUtxVzNFRE5yUkVYY2ptdndy?=
 =?utf-8?B?QVpoSWhRTCtqM1VwMTNEdnQxOGhFVmN5SXRlVmZZNkphaW5aVTRWUWdxdDdi?=
 =?utf-8?B?bXNzZWNsSEdHU3p2RUtFOW9CdkNQRjNpOUo0VmN4T3pXSklnakU0SmJxZ0dI?=
 =?utf-8?B?dmNUSzBMaDlpTlhtTmpiaGtORURaaENKWWxLNTZTTGdibWd1VVdXWktxaGZX?=
 =?utf-8?B?b3gvN0s3NHVpRFQ1R3JzOEZ5dmlZTE5Va3laRSs3c0d0ZkVqaHpoTU53dHBE?=
 =?utf-8?B?RGZjRUozZmVjYSs5d3E1djloaHlGVkNUVVVkNHowclU3Q0FMQXZKTHNOWk5F?=
 =?utf-8?B?UFdTOWxiRDdXZHQ0QTRDb3MxYVJlcHdOaDdWTTNBOWNpeElTVDN6b0xtNEpI?=
 =?utf-8?B?d1pJR0drVzkvZVJ4cTRRNDVXRXh6Mk9zeDN5OG91TmJ4WDlHb2hQZEtXOFdr?=
 =?utf-8?B?TnErbDAzTUFIVUZaSWNGaUlZN0pzdEdJRGNBVk1VU2ViMzhlaXVITTJHZFFF?=
 =?utf-8?B?eUs5NjRud2F1QzFPdVM1SktIVHg1eUFVL0ZjYUtNUWN6UU85WnNuQkExMjFP?=
 =?utf-8?B?TDE4Z2UwM3grRFVDSnIvYW91QmRtbld0Q1VBa004V1YwZGJMcG9qdlR1cERv?=
 =?utf-8?B?bGpZS1NCSVc5SHpjUnBvK0g3cm1oYXkvOS9qemN5MkxMTXNrZUxhV0ZINHBq?=
 =?utf-8?B?bTdLNWkzZjNKSFR4b0NsRUV1TUNGcERHQmUvUUhtSFJMbDJtblRDbzBkYW5u?=
 =?utf-8?B?TUNjUWQxY08ybkszemttU0EzMnJaK2VsK0ZoSkIzVjBBRlpIYnlDL2IvcG5F?=
 =?utf-8?B?RXdiYmsyd2Z1M2c3SnBOaUZXVzZubkR2UzdhYmptZXgwQ2VlYXdXR3ZIQTB1?=
 =?utf-8?B?ay9mdkNwQjc1UWhHTWxEQnFYSnRLRm9xTUsvSVdmdFF5WWFnUXpDR3Q1OUoz?=
 =?utf-8?B?V005U1RPR3Q3OVJPYmUzQVpNamJLSjVnRjhHSEViRDIyWVcyRCsrSCtZN21J?=
 =?utf-8?B?VHV1NUk0V2xuMG1vTFptNmpzRGpiekhVUzkxQ2R5bHNQTGVBR0loc1ZDelhI?=
 =?utf-8?B?NWhYaTNzUmlMSUVBcUt5bTYvb2psTTc5dTZqN0Nkamo5eG9oYW1lMVFzd1Zn?=
 =?utf-8?B?WU5vVjJETkNEN1c0NVpqenRqL1lTWXJIZlpjcmc0ei9Hc291Mkd3MTVPYzJU?=
 =?utf-8?B?SlRjWDArbmtzSlVCQmVaMnZIMm5UR3FWQUExeEhuRk92Zy9qcGlQczNYZkF3?=
 =?utf-8?B?NFhTakN1d0o3YTdxelI2SkU5UU1vMGNTYWc0WE41UVFJZS9IZHVRNFZLMFNX?=
 =?utf-8?B?elhoWmxZM1pjZ3BWWVBzaldjSFc2ajBGMDdRTDZqM0VIeGovL2l3TVVSand2?=
 =?utf-8?Q?Pkv8624Y7BFDgk7TXH0y5DqkO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64197900-bb24-4f3a-f723-08dc8c8e25f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 16:22:12.9606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lVeAqX07a2PWF46I97KcpwKf0TmcavXlh5wsKbaHsX3DVICSVdubSkSQ0U8CBvYn3Sa5+O9eZKxMdvhdn/9OJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6368
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBKdW5lIDEzLCAy
MDI0IDM6MDIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwNC8yMF0gZHJtL2k5MTUvcHNyOiBB
ZGQgUGFuZWwgUmVwbGF5IGNvbXB1dGVfY29uZmlnDQo+IGhlbHBlcg0KPiANCj4gV2UgYXJlIGFi
b3V0IHRvIGFkZCBtb3JlIGNoZWNrcyBmb3IgUGFuZWwgUmVwbGF5LiBEdWUgdG8gdGhhdCBpdCBt
YWtlcw0KPiBzZW5zZSB0byBhZGQgbm93IFBhbmVsIFJlcGxheSBjb21wdXRlIGNvbmZpZyBoZWxw
ZXIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVy
QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIHwgMTEgKysrKysrKysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gaW5kZXggNDQxNDRkY2ZiMWEzLi5mOGU3NDZlNDc2ZTkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQ1NSw2ICsx
NDU1LDE0IEBAIHN0YXRpYyBib29sIF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2Rw
DQo+ICppbnRlbF9kcCwNCj4gIAlyZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9v
bCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAp
IHsNCj4gKwlpZiAoIUNBTl9QQU5FTF9SRVBMQVkoaW50ZWxfZHApKQ0KPiArCQlyZXR1cm4gZmFs
c2U7DQo+ICsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiAgdm9pZCBpbnRlbF9wc3Jf
Y29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJCSAgICAgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgCQkJICAgICAgc3RydWN0IGRy
bV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpIEBAIC0NCj4gMTQ5MCw4ICsxNDk4LDcgQEAg
dm9pZCBpbnRlbF9wc3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCwNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gDQo+IC0JaWYgKENBTl9QQU5FTF9SRVBMQVkoaW50
ZWxfZHApKQ0KPiAtCQljcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0gdHJ1ZTsNCj4gKwlj
cnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID0NCj4gX3BhbmVsX3JlcGxheV9jb21wdXRlX2Nv
bmZpZyhpbnRlbF9kcCk7DQoNCk1heWJlIGdvb2QgdG8gc3F1YXNoIHRoaXMgcGF0Y2ggd2l0aCB0
aGUgcGF0Y2ggd2hlcmUgbW9yZSBjaGVja3MgYXJlIGFkZGVkIGluIF9wYW5lbF9yZXBsYXlfY29t
cHV0ZV9jb25maWcuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0KPiAgCWNydGNfc3RhdGUtPmhh
c19wc3IgPSBjcnRjX3N0YXRlLT5oYXNfcGFuZWxfcmVwbGF5ID8gdHJ1ZSA6DQo+ICAJCV9wc3Jf
Y29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIGNydGNfc3RhdGUpOw0KPiAtLQ0KPiAyLjM0LjENCg0K
