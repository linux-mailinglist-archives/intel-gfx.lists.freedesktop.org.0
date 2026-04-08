Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9h2wHo/K1Wk6+AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 05:25:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8BC3B694F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 05:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960EF10E509;
	Wed,  8 Apr 2026 03:25:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8HqgaUn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2314010E03C;
 Wed,  8 Apr 2026 03:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775618698; x=1807154698;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NekniiBVtqFsZoTyjPxWoVlyAxxY7ppXqlo3kQjTvQg=;
 b=k8HqgaUnyd4BgEOhO2XJCRZmOfC4H3LxCKjXljX67CaqPagwTlmVpCEc
 u2Q8RladRf/96nXiucsvu3IN7wmSLQReaxyxfnEgHBCVGjvoLWLAdPqCH
 xEUtH7le+h6BbsqCM+yVdVfYxQen5ZkGzDrMltkIy/R0B2k9x0/V5Rln0
 RAGbuEgMr2TI3b8Y37MjuE9ChzJOxqq/tth90upW3VC2+jp9uG7SqWT8u
 5b+V+wGom/2AcflKuEpXNqESm+RfUmNArrnD2z/Wdn8i4OJbyr98IMs8a
 +zIJODt++kL+zdBOeqX/fvgSPZXOd/MTKBEhhZuQd+TTHRHlgpOr+v4aw Q==;
X-CSE-ConnectionGUID: no2ZW6zKRK2cw6TbDmp/1Q==
X-CSE-MsgGUID: 1prCJCaeTouPqYl+At+TUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80187423"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="80187423"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 20:24:57 -0700
X-CSE-ConnectionGUID: BNvaz3euSVWCnRZ+NgdgLA==
X-CSE-MsgGUID: i145e1BYR9Sf+25mFtSyMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="251666904"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 20:24:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 20:24:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 20:24:56 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 20:24:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CauLgyZBpwTrGoqV1UR3MLAOqFiAxwd07xI/B1u/0p2vpU/dN9HydZcYQyCBTX3U9GPdpbKEzkozurGXRrUvJU9V/RhnpoKsZJm3tESj2JU+ZY/g4WDJdkTaSLBzZCmhjT1KD7RPOuOhKC0zuIS4whxdjEeYFRKlwGE1Fcj2WLEojI19MVJ9+NkzVT6A+dGsko4moUoXdoq6xxhD4fDEm146un6TAfhtc3RlPB3S/1d2/lMdfgvJ4gAldBHcowiXYZsYFFkykSL1uG7iTdPtNLcjEf0dBv04/OTf3ZbEor9ydQyklgMDM4qb1LKQQvRkc95NwANe7KjOBiTvklI4nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NekniiBVtqFsZoTyjPxWoVlyAxxY7ppXqlo3kQjTvQg=;
 b=me42oMwSjTqLVKfpEQlKZHI4mJ75qY/DQCbZ85yZQuNB3tGQ7riho9n7TCt6laLIuL2T5ebS/h2sQdaiI4aJMulkvAFoMT/jyOanEHxeV3cauT82IVqBYIK/AJAXZXpXbSSWn813FnG3NOg/tQ2+VetovTdKZduOL3p3ytez5an+678BJor9RfJdXBCkvPNKZsLqIVKkbp/2uGNtKvK74y20ppvHAU8V9C34+yiaV+z/r6zpGWnXqcMJfRZRThW2ygKqaIXjMQQ6EvD52t4gcXRTQzJvfVxxM/JsJm0lSrTL7SwnqNiyiF41hMxH5TMHsb/0LwGq0qoG/BakIR+yuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by CH3PR11MB8749.namprd11.prod.outlook.com
 (2603:10b6:610:1c9::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 03:24:54 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9769.020; Wed, 8 Apr 2026
 03:24:54 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "S, Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper
 to get ggtt address
Thread-Topic: [PATCH v3 19/26] drm/{i915/xe}/writeback: Add a writeback helper
 to get ggtt address
Thread-Index: AQHcvEe/GdW8f8V4FUGXlkJbIHhvHrXTWYcAgAE793A=
Date: Wed, 8 Apr 2026 03:24:54 +0000
Message-ID: <DM3PPF208195D8D1D91518C54EACC7D0BE3E35BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-20-suraj.kandpal@intel.com>
 <6322edeaa307d98e1463a0bc07d687edbdffde71@intel.com>
In-Reply-To: <6322edeaa307d98e1463a0bc07d687edbdffde71@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|CH3PR11MB8749:EE_
x-ms-office365-filtering-correlation-id: c3a797aa-6935-4617-a90a-08de951e66fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: E6LArfE7O7Z0xnzmQ1Jbg1jvO3cwDyB42iVjBAyHMcPpoJY5FgfotbXZiOqrNlxFUt1lRqlGkvzGL3BvSf9mkueFkdJg0lX7wDeVZCR+LP1zMdCTqvb+J1xt0Y0m/62h8mqJf7VAWcQIZbL6d3BgF2IY2heZDZqicooyw6Cm7BwhCYXsWw+9wrRPbV1tKCN5zpmh3O00pKdziaaE62lK6YZ/3lPKroX8+7Bew7vRCuzwkmuhNK66U0IM7Usvfu+7ZxQrE/XXRGo/aiVwmr8czifPNq8I0EDT5Fyt/rHSE1tgSJs87kM6HtvEjvEs3uV4mdhx/riWK9J1lyxDsb2bt3fQZ3MOp4eyi0/z/THEwBqihKCcWk9woFNwbu73jA3mK5PWlFVZ7p938nPuSOXhOTJGeazCCEfVJF5Wz/a0nQPFs1uvxFPqXBQFUSqpVvmcV/FI1TlgWzgddexpp+QcnxI4yctnprPbKpXJSBAGCuqArKYA8f1okLQj0+3uawBZeEmj+nhm3PTe9Ma8larV9onk7Gc1+U2siI5QRHS9yuKNlQ8SZuBJ8oIcC1YN7lIsDOgGleCWNhppt5fRNyVEFQwexGmWTVq45dSbylcy6K8Ypl+iXUZAv1aQMdwvLSsiXBd6s+AVL5wQKusv1BtfCzeGPSnVjKg01go51dTDUHTD+Q6Gg82RvXZhifOnGutllKmSjGg4nXVZI6A37pV8UfcAzZuKHdfJeeVF4H98IgXnGw4GL42sZHzMuDqKft+I+DvGGCEXdCF80K7kCzJHbdkOUW2i0DcBeA2PHO/Pj6c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ekp4Q0x5Nm5iWEJkNHQrdUdBYktZeVlmZDNtdEM3WVBBK210NFhxUS81Vk9I?=
 =?utf-8?B?YWsyQjhCQUp6cHB2UTArVkNuRElrYnZCcnRucDdGSFhaRlI3V3pUeExKbURH?=
 =?utf-8?B?TnoxODRzdjRGNFpqMXNUWUVFWDdlL1B2VjROOHZETjlRMXhEb21oMlNEd2kv?=
 =?utf-8?B?eTliN2c3UlZtUnJlOFNlMDl4V3RmL05Ya1RlU05ESFFFRGtLY2g5aVdCdEJY?=
 =?utf-8?B?S3Q4Mzh1QTZQUUhOVVoydW9hellHdjZDSzRjKzVjcGVkNWM5ZGRzSVIwZE8y?=
 =?utf-8?B?M1ZSTkZGSmthdWlGSkNzcVp4cjMwU1B2QzNGNlkvb0dSSWRqK3ZYQVNZZXlx?=
 =?utf-8?B?NjdDbzN3Ky9aRVlJVE9EWkw5bWpvM0l5dEh4RkVWc2U0cFVOODE4SjBSdDc4?=
 =?utf-8?B?Q0x4VGo5Q1JTbGU5VEVaRE12WGVldTBXMGNDd3JCUG1sQVpzYjRNQVl2RlVY?=
 =?utf-8?B?VzNYZE42YUJUeU5kWUJiVno2eldjUnBEOW5lZmFpZU5HSXZFNGpjaGtKQVA3?=
 =?utf-8?B?VnZuNXIwdE0wUFV6V1RXNjhxdmE2eUxRUGhhblpEU1ZNamMrVmZTYVQwRGpv?=
 =?utf-8?B?TUw5ZHJRSndlTHYyM1h5NDRXdzQwaDNjd3E1ekNuT1dnbGdSdzM5SDNqc09C?=
 =?utf-8?B?L05saUg1cFo0cnNrNU9QSEJOc1kyTlY0YXRLV1N5NUFaMVpRN05qNHlETVNu?=
 =?utf-8?B?Zm9GVEYvd2NCS00xamtpZ09UK2plb0NEbisrTlltcXZudHoxTlJKU2wzWGpv?=
 =?utf-8?B?M1hYZjFUalMvUUl0bHlZd3FaVE82WThUWXhPNXpUb2o0SEp1Sm9VWk82SXVk?=
 =?utf-8?B?aDFwbVJFdlJRdlp3RnhQMis4SE84Y3cxck5VQkplZkZWSDJjL2dGREpOSEpB?=
 =?utf-8?B?K0xIUWl5aTR5OHYyMTVnTDBKNnV2eFM4bjNFUS9zWWlvYUJiNUZxQkx1b2xy?=
 =?utf-8?B?aUh0N2JMVDNEdmdPcGJHaDdJeDZSQWZWemxEV0hmOGxIQ3pGRVZYVy9ZY2RN?=
 =?utf-8?B?UXhNTVRVcGhmcFRIaHBuSUZIN1hHNXYxblI5cnBpYW9SMzlwZWdPcTVRa3pq?=
 =?utf-8?B?R2VYYVB1bjczU05DeDRXSlhGbEJFaHVYVS9ZU0F0M2JKNkdmeGI2TFUyVkMv?=
 =?utf-8?B?VlFlcmU3MU1Mb3o0NDBVRUd2d2x2L0JibzFjZTFlSXFHNWFNR2d4Vm8rMzNh?=
 =?utf-8?B?dGp0Z2c4TjVRRlN0eE9PbVRwM2duVDV5L3k3c3ZoWEkrKzk0V0JXZjVGQkdQ?=
 =?utf-8?B?SnJNRjlBUDlvNmxrTXlUaFFTUW4zZllPQjhwMDlHK1FnK1dBblFxMmc4UEhY?=
 =?utf-8?B?d2luTm9FQWR0QUZ4S0o3S2FGVTZEVi84Z25VSy9iZi9MU0VtdUIzNG4rVGpR?=
 =?utf-8?B?b1pRMjZyelFaNUhDSE1Fd042eHRYOTlwRXI2T1BoM1FPZGJkOU9NS3BxaDlP?=
 =?utf-8?B?QXR2WjRxQXRvZSttNXZVQXFFRm1vM2toYTVhVVZ0dVpKQ011ak80WHBudmVW?=
 =?utf-8?B?aW80VjlPVTlHZGRtVnQ2QlpFV1BhQU9NNUtsSnNNSWY3TjhVU2dDcVBOTVdp?=
 =?utf-8?B?R2kxVkdic3NBZVhtVFB2YWExWlByaGpBNndEQlBuRFhoYTZhdmtPNUhnYU1S?=
 =?utf-8?B?Q0ttUTYzK2wvd1ljcVBlVzBJTENwZ2VJbkU2alFpcWRYWlNGSUZXTE1uSUVO?=
 =?utf-8?B?aTB1TTJzT1dPZmRsOTFsd2pQYlgxZnBiQW5oUU81bjJrWktjUnhCbXJhVEtL?=
 =?utf-8?B?MmZiaHlZMTlLcUNUZitRMmlKajNycnl6SUVlTEdaakg2M1VJZXFuR0RCNHpD?=
 =?utf-8?B?NEhmNmNCS2tXcWE1VTZtam1zYXlwcnhQS1pqZTRoU01GVHF3RnF6aE5nWEo3?=
 =?utf-8?B?SzhLeDEwVUNaUkdJbmkvK080UXF6QkFCdjhSS1pMbXJKUTVIeDk5bFMrMTh3?=
 =?utf-8?B?U0tsU1hRQk1iZ2xKWm9KYnlmdjlmSjM4MFdwdlNYZWFQNkhZcUJlQjZsQ0xK?=
 =?utf-8?B?WlhsR091VVgxNkRGQTlFb2JCZHBEeG8xSFJnVjNaSUJPNng1SjR5OEZMdUtU?=
 =?utf-8?B?VU5FcDVSYk8zaGM0NytyNVZ5NFR3WEphbmJhQlhBOWxhT1FlWG9xZEtFVTdw?=
 =?utf-8?B?djFiazNubjRlRWliQzVrdTJ3eGUxaXgxbXNDOCt6NklIcEtHY3Q0UFlQZjZD?=
 =?utf-8?B?WFBOR2t4K0pLWGNwQlI3YW9YeDd0azJTV3NPTkY0ZzlNWmJ2a2hIOElQQWY4?=
 =?utf-8?B?RDEySmZENWxQQ1h6L3dVOUFrWXFpZmlSdHhNUWs0OFk1R2VNVXhkdEwxaVZG?=
 =?utf-8?B?QWZRQjNEY3JCZGh1WUpxUmVjZ2lxUURhZ3ZtUEVZRG5KclhxcUNYQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sx1cORKRl7xfA/NVV/sCqvn4q1aL11DO3GJXvxDGWVO264O69lUj3gjxQ9ycxEHgGUXWQLMFdphzUU6bl3FdiZtlvGtXcyKlz8HNXB6vo6gAOJM9/097nJQBRXs1saZfGmcUgLCuyyCaDmg28VCRHzF191uVvmsWHIBZqMBeH5VqydRLD8ljHWpQc/udPRhd+qOr1AG16rcMy217Y5fdx5/4xfombifnmIjFNKiky8B7STEgfBx9AIMpGtJO1t+rtJw87ne+6diEyni8xoXN/9NabSvUQU1auI2ddmAC5VE9WKpOJQ761hQu8r4C1NS84DH+GwfImXf3UHzDrYPrAg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3a797aa-6935-4617-a90a-08de951e66fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 03:24:54.2164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iHVntebzDU6w0aACTY3PX7ss4Opk6/k4y1bDVSAkp6xe08NgHdvIzV7tRrATic0JnSTDWahEif3RZ6AeqvRwxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8749
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9C8BC3B694F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgNywgMjAy
NiAyOjAyIFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
OyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gQ2M6IFMsIFNvd21peWEgPHNvd21peWEuc0BpbnRlbC5jb20+OyBTaGFu
a2FyLCBVbWENCj4gPHVtYS5zaGFua2FyQGludGVsLmNvbT47IFNoYXJtYSwgU3dhdGkyIDxzd2F0
aTIuc2hhcm1hQGludGVsLmNvbT47IEJvcmFoLA0KPiBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55
YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUg0KPiA8YXJ1bi5yLm11cnRo
eUBpbnRlbC5jb20+OyBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjMgMTkvMjZdIGRybS97aTkxNS94ZX0vd3JpdGViYWNrOiBB
ZGQgYSB3cml0ZWJhY2sgaGVscGVyDQo+IHRvIGdldCBnZ3R0IGFkZHJlc3MNCj4gDQo+IE9uIFdl
ZCwgMjUgTWFyIDIwMjYsIFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPiB3
cm90ZToNCj4gPiBXZSBuZWVkIHRoZSBnZ3R0IGFkZHJlc3Mgb2Zmc2V0IHRvIHdyaXRlIGluIHRo
ZSBXRF9TVVJGIHJlZ2lzdGVyLg0KPiA+IFdpdGggaTkxNV92bWEgYmVpbmcgZGVmaW5lZCBpbiB4
ZSBhbmQgaTkxNSBhbmQgYm90aCBoYXZpbmcgZGlmZmVyZW50DQo+ID4gd2F5cyB0byBleHRyYWN0
IHRoZSBhZGRyZXNzIHRoaXMgcG9zZXMgYW4gaXNzdWUuDQo+ID4gQWRkIGEgaGVscGVyIHNvIHRo
YXQgY29ycmVjdCBmdW5jdGlvbiBpcyBjYWxsZWQgdG8gZXh0cmFjdCBhZGRyZXNzDQo+ID4gZGVw
ZW5kaW5nIG9uIHhlL2k5MTUgZHJpdmVyLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWog
S2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsNCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2suYyAgICAgIHwgIDMg
KystDQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2tfaGVscGVy
LmMgICB8IDEyICsrKysrKysrKysrKw0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfd3JpdGViYWNrX2hlbHBlci5oICAgfCAgOCArKysrKysrKw0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0veGUvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArKy0NCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfd3JpdGViYWNrX2hlbHBlci5jICAgIHwgMTMgKysr
KysrKysrKysrKw0KPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDM4IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQN
Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIu
aA0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVf
d3JpdGViYWNrX2hlbHBlci5jDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvTWFrZWZpbGUNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGluZGV4
IDFlOTE0MGU3NzEzYy4uYTEwMjNkZTcyOGU1DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQ0KPiA+IEBAIC0zMTYsNiArMzE2LDcgQEAgaTkxNS15ICs9IFwNCj4gPiAgCWRpc3Bs
YXkvaW50ZWxfdmdhLm8gXA0KPiA+ICAJZGlzcGxheS9pbnRlbF93bS5vIFwNCj4gPiAgCWRpc3Bs
YXkvaW50ZWxfd3JpdGViYWNrLm8gXA0KPiA+ICsJZGlzcGxheS9pbnRlbF93cml0ZWJhY2tfaGVs
cGVyLm8gXA0KPiA+ICAJZGlzcGxheS9za2xfcHJlZmlsbC5vIFwNCj4gPiAgCWRpc3BsYXkvc2ts
X3NjYWxlci5vIFwNCj4gPiAgCWRpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5vIFwNCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2su
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJhY2suYw0K
PiA+IGluZGV4IGM3OWU3MzMwYjgxYy4uZDNjMzcxNmEyOGE5IDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd3JpdGViYWNrLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFjay5jDQo+ID4gQEAgLTEs
NiArMSw2IEBADQo+ID4gIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQNCj4gPiAgLyoN
Cj4gPiAtICogQ29weXJpZ2h0IMKpIDIwMjUgSW50ZWwgQ29ycG9yYXRpb24NCj4gPiArICogQ29w
eXJpZ2h0IMKpIDIwMjYgSW50ZWwgQ29ycG9yYXRpb24NCj4gDQo+IFlvdSBuZWVkIHRvIHNldCB0
aGlzIG9uY2UsIGNvcnJlY3RseSwgaW5zdGVhZCBvZiBjaGFuZ2luZyBtaWQtc2VyaWVzLg0KPiAN
Cj4gPiAgICovDQo+ID4NCj4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4NCj4gPiBAQCAtMjUs
NiArMjUsNyBAQA0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV91dGlscy5oIg0KPiA+ICAj
aW5jbHVkZSAiaW50ZWxfZmJfcGluLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF93cml0ZWJhY2su
aCINCj4gPiArI2luY2x1ZGUgImludGVsX3dyaXRlYmFja19oZWxwZXIuaCINCj4gPiAgI2luY2x1
ZGUgImludGVsX3dyaXRlYmFja19yZWcuaCINCj4gPg0KPiA+ICBzdHJ1Y3QgaW50ZWxfd3JpdGVi
YWNrX2Nvbm5lY3RvciB7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfd3JpdGViYWNrX2hlbHBlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5mNDgzZWQ2ZmZjNmINCj4gPiAtLS0gL2Rldi9u
dWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF93cml0ZWJh
Y2tfaGVscGVyLmMNCj4gPiBAQCAtMCwwICsxLDEyIEBADQo+ID4gKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQNCj4gPiArLyoNCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMjYgSW50ZWwg
Q29ycG9yYXRpb24gICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiaTkxNV92bWEuaCINCj4gPiAr
I2luY2x1ZGUgImludGVsX3dyaXRlYmFja19oZWxwZXIuaCINCj4gPiArDQo+ID4gK3UzMiBpbnRl
bF9nZXRfZ2d0dF9hZGRyKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKSB7DQo+ID4gKwlyZXR1cm4gaTkx
NV9nZ3R0X29mZnNldCh2bWEpOw0KPiA+ICt9DQo+IA0KPiBQbGVhc2UgbGV0J3Mgbm90IGFkZCBt
b3JlIHN0dWZmIHRoYXQgd2UgbmVlZCB0byBmaXggdXAgbGF0ZXIuIFRoaXMgaXMgY291bnRlci0N
Cj4gcHJvZHVjdGl2ZSB0byBzZXBhcmF0aW5nIGRpc3BsYXkgZnJvbSBpOTE1IGFuZCB4ZS4NCg0K
U3VyZSB0aGUgc2VyaWVzIHdhcyBhY3R1YWxseSBtYWRlIGxvbmcgdGltZSBiYWNrIGl0IGp1c3Qg
a2VlcHMgZ2V0dGluZyByZWRlc2lnbmVkIHdpbGwgZml4eCB0aGlzIHVwIGNvcnJlY3RseQ0KDQpS
ZWdhcmRzLA0KU3VyYWogS2FuZHBhbA0KDQoNCj4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfd3JpdGViYWNrX2hlbHBlci5oDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3dyaXRlYmFja19oZWxwZXIuaA0KPiA+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5iNDZmNDM3YzM4NzUN
Cj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF93cml0ZWJhY2tfaGVscGVyLmgNCj4gPiBAQCAtMCwwICsxLDggQEANCj4gPiArLyog
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmln
aHQgwqkgMjAyNiBJbnRlbCBDb3Jwb3JhdGlvbiAgKi8NCj4gPiArDQo+ID4gK3N0cnVjdCBpOTE1
X3ZtYTsNCj4gPiArDQo+ID4gK3UzMiBpbnRlbF9nZXRfZ2d0dF9hZGRyKHN0cnVjdCBpOTE1X3Zt
YSAqdm1hKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+ID4gaW5kZXggMmU0NTYwNzA4OTVhLi40NDgz
ZTk3MTUzYmEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+ID4gQEAgLTIyNCw3ICsyMjQs
OCBAQCB4ZS0kKENPTkZJR19EUk1fWEVfRElTUExBWSkgKz0gXA0KPiA+ICAJZGlzcGxheS94ZV9p
bml0aWFsX3BsYW5lLm8gXA0KPiA+ICAJZGlzcGxheS94ZV9wYW5pYy5vIFwNCj4gPiAgCWRpc3Bs
YXkveGVfc3RvbGVuLm8gXA0KPiA+IC0JZGlzcGxheS94ZV90ZGYubw0KPiA+ICsJZGlzcGxheS94
ZV90ZGYubyBcDQo+ID4gKwlkaXNwbGF5L3hlX3dyaXRlYmFja19oZWxwZXIubw0KPiA+DQo+ID4g
ICMgRGlzcGxheSBjb2RlIHNoYXJlZCB3aXRoIGk5MTUNCj4gPiAgeGUtJChDT05GSUdfRFJNX1hF
X0RJU1BMQVkpICs9IFwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3Bs
YXkveGVfd3JpdGViYWNrX2hlbHBlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxh
eS94ZV93cml0ZWJhY2tfaGVscGVyLmMNCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGlu
ZGV4IDAwMDAwMDAwMDAwMC4uNTg5ODk4NGIxMjljDQo+ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3dyaXRlYmFja19oZWxwZXIuYw0KPiA+
IEBAIC0wLDAgKzEsMTMgQEANCj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0K
PiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAyNiBJbnRlbCBDb3Jwb3JhdGlvbiAgKi8N
Cj4gPiArDQo+ID4gKyNpbmNsdWRlICJ4ZV9nZ3R0LmgiDQo+ID4gKyNpbmNsdWRlICJ4ZV9kaXNw
bGF5X3ZtYS5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfd3JpdGViYWNrX2hlbHBlci5oIg0KPiA+
ICsNCj4gPiArdTMyIGludGVsX2dldF9nZ3R0X2FkZHIoc3RydWN0IGk5MTVfdm1hICp2bWEpIHsN
Cj4gPiArCXJldHVybiBsb3dlcl8zMl9iaXRzKHhlX2dndHRfbm9kZV9hZGRyKHZtYS0+bm9kZSkp
Ow0KPiA+ICt9DQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
