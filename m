Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE827913F4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 10:53:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6FD810E2FF;
	Mon,  4 Sep 2023 08:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 140CA10E2FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 08:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693817582; x=1725353582;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2/XZIpuEhHGGWJAdfZGl+9KQFJKWu9jJvl8cLkKJdOU=;
 b=E3cfKMsDxe6w/3xtzj9VgNr6taDZLhUK4UKJ5DYgH8hZESj1n0SDZQ3D
 r4aTB3pjH739MqCiUNSCGXFdulEAuEZrNrZ1rz57JuD8bfxvh/NXvEMBN
 CYqJgc7TULxksAHOeI+QuWk5TnSP/SgQBBq24SiAH5QKVFAPEf3CYE3kh
 0rSwtwHQXU5R23m0HB/QLcE9omsGsWgjnqKYnZ2VC569h9ibYNOQ6rHY+
 /HK/ht2pEFpMIvKxU/HBAMTmNoO96z2K7VsV92sXaxwjfI0HiqCEZuLU+
 dGHDQ/zlXX/GJ+aVH3EF4NrPXNEd1uwewKZdAbX/XnEGzjPvtKMYWu6iP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="366774422"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="366774422"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 01:52:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="810843520"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="810843520"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 01:52:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 01:52:57 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 01:52:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 01:52:56 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 01:52:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mJ+Wrt1ZNaVm0WqUyWCZkCxeYlhDls83QFHa5z0SA0O/nsjtF77S0IUm37VzUqWY+9oYcEnGRh75395mTKknNbQve4QnTc62xo361+9nXvVkY3sxZLXLJ7MafLjtWy5faSHZSK+DZu+NSod7hLrQDs50zpKBHomIKgY6m2tCN/Et9KWy9JlFAEfsiZENQ7jebf7IxgxIaL4hXrdleeJ1y2NJOeizvDwEIAizeMBqFvCcOHrJgnkQVim8HVz7FBz+NImQg90f6LDy9ScIaWdmer0fl6db3RlF3QCwEnBGRqNehlUq+exI7SAai0Lj6rKH2Cm5jCvkSFMK6AkRmTBNFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2/XZIpuEhHGGWJAdfZGl+9KQFJKWu9jJvl8cLkKJdOU=;
 b=dllfmOHDLhVh8aHyvOXl8Oh1D/Hi4NsTsWhAIbDBqESBbXCIoOXcolPTpZJckkNqBpYgADEzRmy7ouBAXNZI+uz/WMeKpH+1xiaF3e6z2oh4KMMGC0DZiC24TeOTPJYg8R7onOiMSQocnwSUD9oqvqCm+27w1KcYcMjnxdJ91av0GH9Y4QwQSSOk4dIyl3OfwZV7ENyWlC++tY9/NFOOkrnxEKM520VzkiQQt/cw+68/kv42RsqXqU+R3erv6HEr89jyQEsbwR6MJ4rbouTfIQgDlhJXvwUZjSQAUdDWkOVjcEUXnZIQuINAVuRxlpjYZQtBOMFixQ7zpslvkcjyKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH7PR11MB6356.namprd11.prod.outlook.com (2603:10b6:510:1fc::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.30; Mon, 4 Sep
 2023 08:52:54 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6745.030; Mon, 4 Sep 2023
 08:52:54 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
Thread-Index: AQHZ3wDr+jwo/LtPLEO7UQGXoH4wRbAKWOwAgAADcgA=
Date: Mon, 4 Sep 2023 08:52:54 +0000
Message-ID: <cf9f170759bbd003bcf5c091d6bc5a97eb654aa2.camel@intel.com>
References: <20230901093500.3463046-1-jouni.hogander@intel.com>
 <20230901093500.3463046-2-jouni.hogander@intel.com>
 <6d30b3c51b7552035ab772930bb8d3363d2500fa.camel@intel.com>
 <2956b2e6ed7434a38b5a86696efd70baee9212a3.camel@intel.com>
In-Reply-To: <2956b2e6ed7434a38b5a86696efd70baee9212a3.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH7PR11MB6356:EE_
x-ms-office365-filtering-correlation-id: d00074c3-0a7c-45a9-29cd-08dbad2453f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bS4lTx26lFRYCpZXdrl4vJiekCRAMTVJxT21Tq91IpNAq5ilI+hsDPRapLpa2K+jzLGLKu8tuwvSiVDMXzYVgDdGwyoX7+LU4Or3rxcW7ArkNRUjR/9oB53MpPebGfkbng2+RH5u6tbRg5YKIcz7YwdRSwseJUjr9szRgz/XYJ7HbfYDhJhh9OM+qt8yMqXmNKwQQCh4R/n79ZaIV5sdpV3kpxOCNWr8kSOKUQ7fjlJnBgetcCYjrVtoaMIwxoqX5fh1a3qDM27ladRvV8Fk05E7idsgsrQczELz1SpjZyP34CewEYJ+7GPuarmnv7OjKi4HLWXGfavd+LipjIAlzYRFj3muKbcbTKhvWcR244Vy/YWMUzRFG8lAA+q3A1veKhjIbSdbB1R7ZHqWeBzWoff0yrm6TO9AvH6JU+ui8A6/PKE+J8lATFf3eReT1gdL7mb0b3mAZKzLZs7GC5/O8+LSFJuDiDuyYcl+LShACj2KgYo7ixWZ8vPdkN71zoTstKRA2ryYPHDFw9hRetFlsaMK5vYH9/g/gusa74/LnF0pOCw9lNTN9jKm2QlAi5dw288cZXY3qzr3Ao649l6Ob5oR+hoMnTFp30BMS1yIj8BiDyYRZg5mCx2+uJ6C0Q3X
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(39860400002)(346002)(136003)(1800799009)(451199024)(186009)(8676002)(5660300002)(66556008)(6636002)(316002)(91956017)(66446008)(36756003)(2906002)(64756008)(110136005)(66476007)(66946007)(76116006)(8936002)(41300700001)(6506007)(6486002)(26005)(6512007)(38070700005)(122000001)(71200400001)(82960400001)(66574015)(478600001)(2616005)(83380400001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L01SZDdFa2lqVytIUGVua3lrV3gxUzF0VTVsU1E1Umg4U2t0QTFYQlExSE5W?=
 =?utf-8?B?MWFiVnpreUdJMVMwM0cra3Z4akVpQzZKYnZmMDduaXlMaXpJb3UvazBjTlp4?=
 =?utf-8?B?ejBrQWFlYTNiYy91QmpKZ2NQVDc5czJVbEg1VkVOSXBEeFVDdmZWZnNDZ1Jh?=
 =?utf-8?B?eGlwNGk2QlRvU0tjclJKdDV3b3ZBRHc0OHNBaUwwcm9EbW85RDRMTERFMnNx?=
 =?utf-8?B?UHhTbUhPTnIvTW9zWFVnMGhWbWlkWXVINDA3MnVkUU96TWZHUVE4QkRQaG9z?=
 =?utf-8?B?enJOWnhxV01WOG5LdEpUeHVwdS9rS3FodFFpTFM4bW9SZmpqeXdRUHFxZGx4?=
 =?utf-8?B?Y3NJS1Jqa3JVNEdhUUhHUG5lemU1bVlESzF5bTlmNHNIdGlFZXoreWpmaEJN?=
 =?utf-8?B?T013alViQzU3cFlobStlVjd4VXpXNWIzbmxLNVRnTkNqRU43dkUzMlNlVHB2?=
 =?utf-8?B?bk5QbG44Nm1ZUFplY3owTzVzUEt2ODFCL2Q0VUZZZDlDUHZ0U29jUUEyYmda?=
 =?utf-8?B?MmhWbmNsT00yQmpDY2VNVWIzS0pEQ0VNWVR0NmxJNVBYQjNRMXFrcUl4WEtJ?=
 =?utf-8?B?TklYS2VWa1d4amdBdGNvOHVzbGx2SW1Dc3FGVUx0NTlCSGdROXlEaTg4N0c4?=
 =?utf-8?B?SUM3TlJvZkprUGlGdXk1YmFnTFdNeEhoWkx3SXF1UGtmZnFNekhhay9HaVBj?=
 =?utf-8?B?Nk9nZmQ4bkJFVFVCcHVpcDNyWlBHVHZzbCtJZWYwMEN0WjBHcXhtWXV0SUF6?=
 =?utf-8?B?K1g3am95dHE5OWRaaWxwYjNXbGRCYzltSURSa1JWbEZtTTdEWjl0QUlNZEtP?=
 =?utf-8?B?V1VyaE8rRHdkT0w5NHNBTzF4U0JhR0Mxck9iQlFTenlneHZaV09NOUZ1OEtX?=
 =?utf-8?B?SDkxeHJuZXk5elBqT1prK0piY3d4V3Nhb3M1L3E4d1psSGR3cFdaNCtkUXl0?=
 =?utf-8?B?cjFPdjVwcDg1YUpmeTZMSTY4eUs0bG5UZ2hPWmk3Qzk4NmFsS045S2xsdWwz?=
 =?utf-8?B?akVidmI3THRSc3Z0L2Z4WWJmTlJLTnhMT2NLMlIwM0dXSC9HNEQxTVpxVXFo?=
 =?utf-8?B?czVLeTZvbmdxVWFIUjFvb24rc3BMRndGdXVoYUhCa3JKNWdWcWlUWHZqOWw4?=
 =?utf-8?B?Rm01MFA2RjVIOXl0V0UwUzNIRERqNVJKL2hKaVR5UjM3ci9nQ1NKdVRSYkRz?=
 =?utf-8?B?czFVbkM3dGx5OXc0RXlLb0IyaXpGcnh6QmpGUFFWTlJPOUxqNjBQU25IUndC?=
 =?utf-8?B?cWRvUWpITkxkVHZIc2VtVG1DUm03NHBoK3NqK0hJSXFJdkk2c0JrSXViQ0tj?=
 =?utf-8?B?WVBrNmNwbGovV3FKSnNDU29XQkpQU3dOZmpwUGV1MG16UnVKUkNBb2hvZCtq?=
 =?utf-8?B?aHB6VXNIUDVrRkdxdnhkZGg1OFNjYnBtUU5RYWtWai8xaDJra2ZZNXozWGNq?=
 =?utf-8?B?N2lzN3NTK3JOUTJKazBYQXhvWVkyNUcvaVozZy85LzFISGMyZVcwRTRMaUtH?=
 =?utf-8?B?c0pIWk84UVJtSXhiZzZiOUJSNGJtRHBrbzkvRVh0TVYzR1hXNlZCZEdDdW1E?=
 =?utf-8?B?d2ZoSlVkVEM5WG0wTVhOSUpIWVFsRlZCaWE4TzRuQkxKR1crM3YyOEV0dDNB?=
 =?utf-8?B?Y241WFI3T0FOakdhQUIyUE1aZWo1d3hWZkJxeW4wVk5aYmpGYjUvaDVjVDlI?=
 =?utf-8?B?K3B0SXJLM1QwNTRwWWMwWU9TSG0vVDNieWwzNDRnWGRDWlRReG1KcXVrMGJj?=
 =?utf-8?B?STRNM0E5cmJtWHI3YXhUSGNNT3ZSVkNlVWhhTWtjWEc5QXpWQ2JtMHNNckg3?=
 =?utf-8?B?a214VnhRa2ZNMVZONGUrci9EbUFYTC9RQlFvTGlYWGN2ZzVpNEJMN0hXd2k4?=
 =?utf-8?B?RXV5REdrZEw0UmUxWlFEeTQxbGVpdko1OEpZRDVaM0VKYko4Q3lESTdlemNT?=
 =?utf-8?B?SG82U3IvbVZIL2tjVVo2N1NKRDZ5VlVMbjdEb0JycU9CQnVraTc3alg4UVdx?=
 =?utf-8?B?OTZpc1JhV0xSRDNkcEp5RXU5cUxOcGZhd3g1MWJnQWh1VThhWkZ5K2VtVFoz?=
 =?utf-8?B?bW9WVFJlS2RoNDRZc29LZWVjdXhuaUJrMzFiejZPQ2tTT2lUOE5DRHZhdUtL?=
 =?utf-8?B?ZEc3UDZYN0NqNFhwV3JWNzNpdFRFeFBGT25Lb04wZUxpUGZpVWU4TjlmWkdz?=
 =?utf-8?B?Y2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <34392EC02E9AC541A88236DBAC7D65C2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d00074c3-0a7c-45a9-29cd-08dbad2453f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2023 08:52:54.1597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WAu9DtHKmFOu0u7DxwlWZvu3/oPOzWo2+Y4wn1NpcE0MGmH9FUxSyaE8aJhizb7jlnUAaz0fPDxD+E25SC1CT+NNL7eKcIqLOvPpZmwYGQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6356
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/4] drm/i915/fbc: Clear frontbuffer busy
 bits on flip
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

T24gTW9uLCAyMDIzLTA5LTA0IGF0IDA4OjQwICswMDAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIE1vbiwgMjAyMy0wOS0wNCBhdCAwNzoyNSArMDAwMCwgQ29lbGhvLCBMdWNpYW5vIHdy
b3RlOg0KPiA+IEhpIEpvdW5pLA0KPiA+IA0KPiA+IE9uIEZyaSwgMjAyMy0wOS0wMSBhdCAxMjoz
NCArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+ID4gV2UgYXJlIHBsYW5uaW5nIHRv
IG1vdmUgZmx1c2ggcGVyZm9ybWVkIGZyb20gd29yayBxdWV1ZS4gVGhpcw0KPiA+ID4gbWVhbnMg
aXQgaXMgcG9zc2libGUgdG8gaGF2ZSBpbnZhbGlkYXRlIC0+IGZsaXAgLT4gZmx1c2ggc2VxdWVu
Y2UuDQo+ID4gPiBIYW5kbGUgdGhpcyBieSBjbGVhcmluZyBwb3NzaWJsZSBidXN5IGJpdHMgb24g
ZmxpcC4NCj4gPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCA2ICsrLS0tLQ0KPiA+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ID4g
DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ID4gPiBpbmRleCAxYzZkNDY3Y2VjMjYuLjgxN2U1Nzg0NjYwYiAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiA+IEBAIC0xMzA3LDEx
ICsxMzA3LDkgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91cGRhdGUoc3RydWN0DQo+
ID4gPiBpbnRlbF9mYmMgKmZiYykNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBsb2NrZGVwX2Fzc2Vy
dF9oZWxkKCZmYmMtPmxvY2spOw0KPiA+ID4gwqANCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBmYmMt
PmZsaXBfcGVuZGluZyA9IGZhbHNlOw0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgZmJjLT5idXN5X2Jp
dHMgPSAwOw0KPiA+ID4gwqANCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmICghZmJjLT5idXN5X2Jp
dHMpDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZmJjX2FjdGl2
YXRlKGZiYyk7DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBlbHNlDQo+ID4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZmJjX2RlYWN0aXZhdGUoZmJjLCAiZnJvbnRidWZmZXIg
d3JpdGUiKTsNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoGludGVsX2ZiY19hY3RpdmF0ZShmYmMpOw0K
PiA+IA0KPiA+IENhbiB5b3UgZXhwbGFpbiB3aHkgdGhlIGNhbGwgdG8gaW50ZWxfZmJjX2RlYWN0
aXZhdGUoKSBpcyBub3QgbmVlZGVkDQo+ID4gaGVyZSBhbnltb3JlPyBJIHRoaW5rIGl0IHdvdWxk
IGJlIGEgZ29vZCBpZGVhIHRvIGV4cGxhaW4gdGhhdCBpbiB0aGUNCj4gPiBjb21taXQgbWVzc2Fn
ZS7CoCBPciwgYXQgbGVhc3QsIGFuIGV4cGxhbmF0aW9uIGFib3V0IGl0IGhlcmUsIHNvIGl0J3MN
Cj4gPiBkb2N1bWVudGVkLiA7KQ0KPiANCj4gV2UgYXJlIGNsZWFyaW5nIGZiYy0+YnVzeV9iaXRz
IC0+IEkuZS4gaWYoIWZiYy0+YnVzeV9iaXRzKSBpcyBhbHdheXMNCj4gdGFrZW4gOg0KPiANCj4g
UG9zdCBwbGFuZSB1cGRhdGUgaXMgY2FsbGVkIGF0IHRoZSBlbmQgb2YgdGhlIGZsaXAuIElmIHlv
dSBjb25zaWRlcg0KPiBjYXNlIHdoZXJlIGJ1c3lfYml0cyAhPSAwIGF0IHRoaXMgcG9pbnQ6IGl0
IG1lYW5zIHNvbWVvbmUgaGF2ZQ0KPiBpbml0aWF0ZWQgZnJvbnRidWZmZXIgd3JpdGUgKGludmFs
aWRhdGUpIHdoaWNoIGlzIG5vdCB5ZXQgY29tcGxldGVkDQo+IChmbHVzaCBmcm9tIHdvcmtxdWV1
ZSkuIFRoYXQgZmx1c2ggcGVuZGluZyBpbiB3b3JrcXVldWUgaXMgbm90IHZhbGlkDQo+IGFueW1v
cmUgYXMgdGhlcmUgd2FzIGEgZmxpcCBhbmQgdGhlIGJ1ZmZlciB3aGljaCB3YXMgZnJvbnRidWZm
ZXIgaXMgbm90DQo+IGEgZnJvbnRidWZmZXIgYW55bW9yZS4gRXZlbiBpZiB0aGUgc2FtZSBidWZm
ZXIgd291bGQgYmUgdXNlZCB3aGVuIGRvaW5nDQo+IGEgZmxpcCB0aGUgYXRvbWljIGNvbW1pdCB3
b3VsZCB0YWtlIGNhcmUgb2YgZmx1c2hpbmcgdGhlIGJ1ZmZlciB0b3dhcmRzDQo+IGZiYy4gQWxz
byB3YWl0aW5nIGZvciBkbWEgZmVuY2VzIGlzIHRha2UgY2FyZW4gYnkgdGhlIGF0b21pYyBjb21t
aXQNCj4gY29kZS4NCg0KVGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24hIEl0IG1ha2VzIHNlbnNl
Lg0KDQpTbyB5b3UgaGF2ZSBteToNCg0KUmV2aWV3ZWQtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5v
LmNvZWxob0BpbnRlbC5jb20+DQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
