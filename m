Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHpeMHTzHWpkgAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 23:02:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31306625747
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 23:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3CDB10E9A6;
	Mon,  1 Jun 2026 21:02:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iBuPaju1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4CC510E9A4;
 Mon,  1 Jun 2026 21:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780347760; x=1811883760;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MnMsP7i3aGAkxsg4VFyQ0k0p2/ExLxR4kgeJx0TbnKI=;
 b=iBuPaju1E2hL/uOOmy+cdk+xFF+RFKLlfqStcgPZl8RMpiCZuA0A7oCD
 YUnlWyisMD90SfysV6eh8i+tUDKb5g3WWF2P71ZWrqdrDIDXS0hftdLvX
 hKWrZjpAMRP2+qioPRl/1wxzFQDtxlNgir3N8AviGOhn5/r6W6V9IxSxe
 L4B5ireX6Cgk0TCQHknoXEi6wi1kPsMsy7u4hRtElwcgjGPHIrJP2tgsz
 ynX0+VIdxls4N39t3lAfIL5jHfQ0FchTI7iDecHE5dtVIxSTI1x4YJDLH
 hkULy/FxuMrnzYOvYfrJRAJQpmyS6kxC9tWmdrM9v9jtS5zUggWjR06dx w==;
X-CSE-ConnectionGUID: p+s6ljMAQBmYg4IzMUDcng==
X-CSE-MsgGUID: qxqV/cgZQAyNo5Xf+a+2UQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="80846286"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80846286"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 14:02:40 -0700
X-CSE-ConnectionGUID: NeN4B1kgTZyDA6cU5Fxgqw==
X-CSE-MsgGUID: CSwikyyBR4SfwPwThl0wDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="248776301"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 14:02:40 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 14:02:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 14:02:39 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.56)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 14:02:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YoqRhLnnGHGvE21z2JKGS5dBvLvLHJRvDSrPtyL24JO3eQCwt/pmx6vRMuDb48jYwFBQR2h2GbKEKwQq0pwnEaaqBICuZioZbYygiamoDFjeTXqKvfY4D44bT5l6ae0PSqyvw9HOpBTRv08eTtwQlanz0sxqpV5GpenLpq6IICHZmw1BN0kN4y8o6ov8NS+wgtCyS87F8mlVOzrndJ19PfChr7gWDilmnvg7yL8IAg9opov4TFvIBluMnW43W22QPG0NV56emQy9SkLCXIJaOxJQ/kFvUdnW3lwvQAc8lFXuimFkkUGOOUWe5gN66qL+H+1mNyF4R1ttdh11Fbk11g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MnMsP7i3aGAkxsg4VFyQ0k0p2/ExLxR4kgeJx0TbnKI=;
 b=yqHO4577HlgH4Bye9dix/gneDllR2/1eY1P1ZM9ry0KpqZe0HlIYb9BoH6ar8pD1HORFEHMqI9hi0+g0sF3SEsI3HMIkS4Mw6g2YDncNu2S1ql2b+844MM3ZdYVHE+YgnAZB28YqdhF9NyN2mbfE+GDHv9vIqEl/QozFLWZ7W0ZYtkOyoUAZaosvmVTmq5eZaLzIuKgaW7iDFkGvDe7onrvPDMrauoKZPZi7O9ZKUwFyvBqTuWZodq89kRS6kYtGbJu9n4KLHPPeBXmYX2KBoOaF4S1BISKnyJVMXwaNdnEtgigyUFg/Vm36Ph09S9bQ0rDQvkixQ6HOv5OxQIPLzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CY8PR11MB7011.namprd11.prod.outlook.com (2603:10b6:930:55::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 21:02:34 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 21:02:34 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/11] drm/i915/bw: Streamline dg2_get_bw_info()
Thread-Topic: [PATCH 02/11] drm/i915/bw: Streamline dg2_get_bw_info()
Thread-Index: AQHc7o2/S4YPb+VfQEaVUk50fVSEkrYqNtEA
Date: Mon, 1 Jun 2026 21:02:34 +0000
Message-ID: <c892cda71006aa0f357833dc7c9db5b2324adbb4.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CY8PR11MB7011:EE_
x-ms-office365-filtering-correlation-id: dea00f3f-10e1-4b67-3db0-08dec0211a68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|22082099003|18002099003|4143699003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: nOs0nIrMox9fMmOi19v7dK8K4FzSGd4n4hnNZYKoOHd7mWjoeEPIA60Z317hdB6Wocv3JoyGnGwg3rpsj8vmFcLug1PDgA4iDAakeCI9JqijGq15IxYxRHH+fA9gAVFWDUrrouy1fqXU+H8iJLCSp3eTZZYy68tUEWYvlPVjST1CADvzy3Ql/psCanaWBTlWyIT7uR5vOit5LPqgOGebeiQ8S860JDgkRmvBvl69GX6C0fCwUI7Uy8XAjTAvL71DFx0NhTSoJjDqNxQfdJyX9t6d9si9sKJk5n4oDSDDv3UkhGD66EKZALOVdKv83oKnnrchYRE8R2YX2690w0/qjb7TrxxNcyRnccKWmtdi6hU6H0LAzdjDKTCYGWCWGeyF5o2Khdvxz2VOexv44gyJ0EAmZook/jy/1JMxKcXf3bzQEKHu0a4Qubfo9BbXFVpD8SteS4hwJVG29XmXQE0xtLJH7WwwCL9Ptq703uaSVerRLYLadSwdtLSSGrFWwyWb7+iUvVFZrzVtdW9WH33VxUNldQ9UKaqaZi2ISlc+khb4JijJWNkpL9zr2CfSoL3aRPr/oG/P9w9plldkNgNbG5Rgfo638K10U5oiG5WKrlwToEy/QWhBfAgAXZqgI+LXiDaKGeAODnYwHgsJBIhkD1VIUfblqCmKoA0IOU37ywG97DZnOM2qjQjGLs91F5CnVCDFWsOhv/I+79xU4gKcOh0r1L/N2CufkA5EqKzsT4wXftKB4JjcZ8yTq49pWGU2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXZBMVNBU3VXVVZkU2dsWDhNRFMxRW1Na3kzZ1RURVl3em15bEhITUJySExE?=
 =?utf-8?B?NGsxeGc2aGdZNnRCQUpzakl0SDI1SGRIbGRZVXk4UzJ2bEFaVExCZHpXMTFR?=
 =?utf-8?B?MnVYWFZLTG44K2o5S3lTYjE2T1BZajRUU3I4ZnhiZEwrcXNEQTBjVWJvNVJ3?=
 =?utf-8?B?WkJzOVp2eUhxRTl0Z1RHZmdxeHlkYU4zZkw4SWNlMTJ0Y21LYlBIb2FnQ2ZP?=
 =?utf-8?B?QVR6dVlBam9mNFUxVXRCQXBnVE0wQlJPemlZR3h1d1BqSDVCTTUyQittdTUv?=
 =?utf-8?B?SEJEOWo5MDFVbTVSbVhnQ1F2YUxNMFlYUzFJN2ZXVzNnWG1JZnlDUk1jUTIy?=
 =?utf-8?B?TWRENkkxcnpleFlhelExTzFoUVAyQ0ZDcTA4Sm9UVGsrTElaazdRVDZTaHVu?=
 =?utf-8?B?YXMxWkU1NnhrVFFpcnlXUDdyR1hRLzZISGUveWxvUGpMNGVFaG53OHNMMWlG?=
 =?utf-8?B?WmNFZmo2MGxET2JxaU5NdklCd0pFak96ZjV0MWs4UmkxZ2lFOTNibU5KN0lt?=
 =?utf-8?B?SWp6TWJZVHZKYXdkRmVKbys2bHNwb2pmaVBCckFETEJ6ajhqUE5lZEVBR0t3?=
 =?utf-8?B?VTl6Y3JkRE11Smt5U2hYZlFKTG9VbG1ETGZhcjdGVmptTGtiVXBxSytVTm8z?=
 =?utf-8?B?UHUwNTZaN1VhdUFkOEFheHBhNUNFSVhyNFRidWJQcFJKTms5TkU4SEY0d0FN?=
 =?utf-8?B?ZGpBMUw2NTFsbW1JWEtSQ0ZaZlY5amJSQTlXbjBwdzI1L3VEV0swcEFzSW13?=
 =?utf-8?B?L0lpWHd0RVBvMER5dkxGU1NFRGUxSG1XZG9NRTRNSVg2M21VL2RPNUNnbitw?=
 =?utf-8?B?UmR3N2RyNC81K2UvNi9CVkJneHVqTEZtZlVWbnBZL3ZOTGR4dUxvNk5HVmJD?=
 =?utf-8?B?cGNkeE4vMXhCOFlDQi8zSThSY0tYZ2FUbmtveWE5azlwWHhzT0FYYjVHcUFw?=
 =?utf-8?B?eXQySHgzRE5WMjlVdC9TekNkMHJ6M0ZhV25RWmpSZWh1dS9kalJ1WGtQVjR1?=
 =?utf-8?B?bXFHbVU4T3ZhQXEra29qV09aVW1hK1ZRVXM5Ulhqd3RZNTRncm1ZeFNaOHpP?=
 =?utf-8?B?aEVHT1l2UGFrZjZXNDRvcG1saFE0OGlJekpzSUtGVWdXNXRXVTB4cVRQaSsy?=
 =?utf-8?B?OTFrT0F5UDdFb29XeERBUU41WWI2YjRRVHpLdk1sbDU3U3RwakJPK2tvUFdi?=
 =?utf-8?B?MHdMMGxISS9TclNUbXMwajFFQ01pME5JQ3JUQWJVN0doN3lyMVlseDFZdWE3?=
 =?utf-8?B?dXBzNFZtbTVYMlh5bHpIRmF4SW9mQjdkaUxUZjhJeExaS1A0bnB3TGxvK3ZN?=
 =?utf-8?B?MUo3NENNSDVxT1ZSelpFSWZXTmp2UXBwYm9lZWR4OXJUUC9iaGdaUmJVSi82?=
 =?utf-8?B?SVBzN0RCZHVBVmRjSVhoMXRkTEExSiswc2ZsV3Z0ZVVHb0JtSERVVFlsaFVn?=
 =?utf-8?B?MjA1M2RONk83czR2eUo0blRkTzV6ZG9jVVhYek1mdndNNzRkcDlTeDVIMnhQ?=
 =?utf-8?B?T1kwQXV2OWcxLzVWYi85dkNJVjFxdWpOd3NROEdJakhXTjJNeERkeTlRSXE3?=
 =?utf-8?B?eFFnNG1kYURqMllsdnhuVW5VR29ySmI3UVF4WVRkQUNTNzErR2hGM2o0c0JT?=
 =?utf-8?B?dUxnOXFXdG0wd2hQL0dOS3NRRVZyUUlqeUdHaytkZ3BhanF3aVZWOVM0WjI0?=
 =?utf-8?B?M1BaNjBhMmNSV1NRTTFkbjhCRWNERkNpT0M5ZGIxdm5jc0RwUVBvZGZKZjB5?=
 =?utf-8?B?TFAyWUp6czM2bTljMVRVWWErblNwd25kSHNEL1JpajZXajVzWXZhSW05UHdo?=
 =?utf-8?B?ckxYeG5ZZWhjemJrSFVWOHNOTGhtZzBDK0ZFcnlKejVQd2JtUmRvaWpQZ3Rs?=
 =?utf-8?B?WjRpZEFvajJydTB5cjFmTmtxM0t4b0VMM2liTjZBMkRNYXdrRzhxNll6STho?=
 =?utf-8?B?QnE2ODJDTHNNcSt4UVFyT2RtclNQUjZKVFBiZTBKQ05aM2dwUUVVc1ljaE1p?=
 =?utf-8?B?MzVzeThacm9UalBhQzkxUjErZlJvZFNDRkFDYXZiQ1Nlc1EzeEtpQTVFYmRr?=
 =?utf-8?B?dFBlU0ZucTg0ZUE2UUdsNFlQRXYyZnhSUllpNVpWQ2RDdFlMdWJ1eXNVNnph?=
 =?utf-8?B?SEpucFdtMjNIdzZWZnZUN0NVR2dEN00vVUY4ZUFkL3JPeTB1YU12OFBqNDkv?=
 =?utf-8?B?YWpsUm5oc2xESFhMeXdCSWtTR1Z5NmQ2aHhsK0ZFbitGcXRnV0ZEMGdyTk5R?=
 =?utf-8?B?anNrc2ZQQlJiTHdkY3NTejg2b1VmaEF4RG15OUZvUmxpTUlkVkJvdG9SYzFp?=
 =?utf-8?B?OFB3WVFocTQ0WWNsS1BKNWVHZHRxaXVCZ2xjcTNoMHBzUXMzOUJoV1NBV290?=
 =?utf-8?Q?BVW21RdBsiVH6k6RD9XyVStn58gZ1wqOtWJ3zl7YXBqGa?=
x-ms-exchange-antispam-messagedata-1: h+Zv+N+8bPEoiVji9iTXk5SkLceILxN4ikk=
Content-Type: text/plain; charset="utf-8"
Content-ID: <56D326E96374A14E8E30D10FDF0D1A39@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LrHqNfbxQgFb0571gtzvT2h7xE4PL/Nyr2mdZJSJHJxJrs67Acjyn7psjqGExu/mwAx2GDu02oukgUEjwQxf7Yd//PryO0rjL8OZ5x5/08y+Zq7rA3HyRrhY/NEhb9GKzwChz6gR6r1nbr+SvOFRPdj2jAZHB7XEDWYSctmAvTQlyu11oaJpvfjVGYaPjv5H/dTyKmSTGdbcX+yU0cDhrd9gIARQrKjJmLoC/7dAwIH0oXix2BU74CAWEVo+jRlAtdigLt+wLgXwx+yAo17NNdUdvnqO12o63nCQFVhB1RuLz34wQwXplStZkqQE4aaBaCeea9UFdsbaQbgZ8M0sOA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dea00f3f-10e1-4b67-3db0-08dec0211a68
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 21:02:34.2289 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mBfKJdJBqPPcc2aOMX50xVG9sMA6IP3yATEiXSNAQ9lBcZUxn2Js5v9lGwRlaKNwX8uvmeJX+0YJnoqcP0Fxo7PVBiJJzrXz0mGd0hEHJl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7011
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 31306625747
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTWFrZSBkZzJfZ2V0X2J3X2luZm8oKSBsb29rIGEgYml0IG1vcmUgbGlrZSB4ZTJfaHBk
X2dldF9id19pbmZvKCkNCj4gc28gdGhhdCB3ZSBkb24ndCBoYXZlIHNvIG1hbnkgZGlmZmVyZW50
IHdheXMgb2Ygd3JpdGluZyB0aGUgc2FtZQ0KPiBzdHVmZiAobmFtZWx5IHRoZSAic2V0IGFsbCBw
bGFuZSBncm91cHMgdG8gdGhlIHNhbWUgdmFsdWUiIHBhcnQpLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0t
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgMjIgKysrKysr
LS0tLS0tLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQ0KPiANCg0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8
dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IGluZGV4IGQwY2VmZmM5M2YzNi4uODg3NjI4MTQ0ODY0
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC02
OTksMjUgKzY5OSwxNSBAQCBzdGF0aWMgaW50IHRnbF9nZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxf
ZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gwqANCj4gwqBzdGF0aWMgdm9pZCBkZzJfZ2V0X2J3X2lu
Zm8oc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+IMKgew0KPiAtCXVuc2lnbmVkIGlu
dCBkZXJhdGVkYncgPSBkaXNwbGF5LT5wbGF0Zm9ybS5kZzJfZzExID8gMzgwMDAgOg0KPiA1MDAw
MDsNCj4gLQlpbnQgbnVtX2dyb3VwcyA9IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsNCj4g
wqAJaW50IGk7DQo+IMKgDQo+IC0JLyoNCj4gLQkgKiBERzIgZG9lc24ndCBoYXZlIFNBR1Ygb3Ig
UUdWIHBvaW50cywganVzdCBhIGNvbnN0YW50IG1heA0KPiBiYW5kd2lkdGgNCj4gLQkgKiB0aGF0
IGRvZXNuJ3QgZGVwZW5kIG9uIHRoZSBudW1iZXIgb2YgcGxhbmVzIGVuYWJsZWQuIFNvDQo+IGZp
bGwgYWxsIHRoZQ0KPiAtCSAqIHBsYW5lIGdyb3VwIHdpdGggY29uc3RhbnQgYncgaW5mb3JtYXRp
b24gZm9yIHVuaWZvcm1pdHkNCj4gd2l0aCBvdGhlcg0KPiAtCSAqIHBsYXRmb3Jtcy4gREcyLUcx
MCBwbGF0Zm9ybXMgaGF2ZSBhIGNvbnN0YW50IDUwIEdCL3MNCj4gYmFuZHdpZHRoLA0KPiAtCSAq
IHdoZXJlYXMgREcyLUcxMSBwbGF0Zm9ybXMgaGF2ZSAzOCBHQi9zLg0KPiAtCSAqLw0KPiAtCWZv
ciAoaSA9IDA7IGkgPCBudW1fZ3JvdXBzOyBpKyspIHsNCj4gLQkJc3RydWN0IGludGVsX2J3X2lu
Zm8gKmJpID0gJmRpc3BsYXktPmJ3Lm1heFtpXTsNCj4gKwlkaXNwbGF5LT5idy5tYXhbMF0uZGVy
YXRlZGJ3WzBdID0gZGlzcGxheS0+cGxhdGZvcm0uZGcyX2cxMQ0KPiA/IDM4MDAwIDogNTAwMDA7
DQo+IMKgDQo+IC0JCWJpLT5udW1fcGxhbmVzID0gMTsNCj4gLQkJLyogTmVlZCBvbmx5IG9uZSBk
dW1teSBRR1YgcG9pbnQgcGVyIGdyb3VwICovDQo+IC0JCWJpLT5udW1fcWd2X3BvaW50cyA9IDE7
DQo+IC0JCWJpLT5kZXJhdGVkYndbMF0gPSBkZXJhdGVkYnc7DQo+IC0JfQ0KPiArCS8qIEJhbmR3
aWR0aCBkb2VzIG5vdCBkZXBlbmQgb24gIyBvZiBwbGFuZXM7IHNldCBhbGwgZ3JvdXBzDQo+IHRo
ZSBzYW1lICovDQo+ICsJZGlzcGxheS0+YncubWF4WzBdLm51bV9wbGFuZXMgPSAxOw0KPiArCWRp
c3BsYXktPmJ3Lm1heFswXS5udW1fcWd2X3BvaW50cyA9IDE7DQo+ICsJZm9yIChpID0gMTsgaSA8
IEFSUkFZX1NJWkUoZGlzcGxheS0+YncubWF4KTsgaSsrKQ0KPiArCQlkaXNwbGF5LT5idy5tYXhb
aV0gPSBkaXNwbGF5LT5idy5tYXhbMF07DQo+IMKgDQo+IMKgCWRpc3BsYXktPnNhZ3Yuc3RhdHVz
ID0gSTkxNV9TQUdWX05PVF9DT05UUk9MTEVEOw0KPiDCoH0NCg0K
