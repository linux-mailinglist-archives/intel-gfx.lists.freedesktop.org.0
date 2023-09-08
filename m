Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B1D79847B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 10:55:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED3D10E02E;
	Fri,  8 Sep 2023 08:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B92510E02E;
 Fri,  8 Sep 2023 08:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694163337; x=1725699337;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=j4FqY5EeppWr+Yd5D0twGRM81U08Hi8ETVFuvZwLeoY=;
 b=HunQVCm0wW6Geibn30nWwE7UaiU1AAIMNHebe8Ew1O711Jdnkan4hRRm
 lEO2YvL/z2DAsYpIRCz9Rxk4VNNpyC5s6A979/jk+ovEXsk9nvv3cUN+6
 6d45cIV4lsU6eOmQupla6PE1nGUxnlxjIaXMi8z2ca9+QQk2z4RmRo81+
 /640Zeb0cg8wRycs5iHI4P77ZTihvPMExO6j0dmGCMfo96AHvjnM09yxh
 xWK4BJZlsBDkNjcOnsBKWgjbfIz/xC5w3+2ubkjP499u2kAtuQOGhGZKC
 vWisx1Lc1WwBGb1kdmdfPf07NcjImRmg88REnQ6sFzNv7KPSC8siexEAC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="377509865"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="377509865"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 01:55:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="989179185"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="989179185"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 01:55:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 01:55:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 01:55:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 01:55:35 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 01:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N81Yb/yJTnRCNUOUqSwf8SDKxU4ouVvk2blms5cpzB6TF/QQ/utgdBH1gB5Oo0h29Zl/MNPS01Y77ivQDvQxSQfN06RkMTh49cgpXqpgZ5E4AXeO/xf1h/i1iWHOvHN69t3qLAXdDHRD/rhv0C8lBqdaOzZAC6xnBmoOFk2tzAoXLbSh4fbQT8uRRI6oxU/ZNusrMflenXRMkiSlil2kXr0oD31Xw3lQdiJsivaGBYpCzKd8fINgyQumOJlSAazd+XvRGg/ITX/03Mv9paiIbpVOyW4I30wQiyOgjzp7F7ywQT6prD0cLfQurbIAS4uEz6JN0TZF3bw/y44KmYbt/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j4FqY5EeppWr+Yd5D0twGRM81U08Hi8ETVFuvZwLeoY=;
 b=Y2Ly6bHGKh2NOqogfyhrIhcU8lZw0lteiaRubKhPhoDqHp5YZTFxyNKPhfr/i4EJPDkuUqs3gwfyfpqa0qlPciugQt5Qh1VzPHnvX+6mkl5hnUgThRtEczuB0h/suYYU/cZZ1Sw0r+zC5p6z8fZftUceeHGXqb7t6/JlLR9WvmbGw38knm877z6A5DrPEbYKsqD3y1NS597phb/D36/eREgqnUMkwRK7TRoshC5YCv070DbpaJ7GSSp75/wnKaEGSLw6nt9UzqxNYWiO5Jvmt3/XDIDJq3X91JTCSvrm1abLutYvBTKB924MVsv8v45P1TxWvz3jek5f4N9ThV3mrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 08:55:33 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::cf28:4320:6c5e:aec%5]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 08:55:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-xe] [PATCH v2 14/27] drm/i915/display: Remove FBC
 capability from fused off pipes
Thread-Index: AQHZ4aHCq8l4cHBOlU6K5xkv154aHrAQoS2A
Date: Fri, 8 Sep 2023 08:55:32 +0000
Message-ID: <6a662aad6123ce77d8a43ff0158c76e14a157110.camel@intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-15-lucas.demarchi@intel.com>
In-Reply-To: <20230907153757.2249452-15-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: 4046cb69-52db-48ce-1dce-08dbb0495c4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hes+h3y81pI0PAn0hSpAPoUxQYBidi/52CBCU96kZN8LwM3PWjL9LBgqs50szDDdFHqn1/e518EVFg8XamaDlOTmCSluNd8MhBP9aVRtXkHgO5ZbxCJwl6uNWdxEFZN99FZWMWqbhmIfJI3hyEj/yVhfdsRUvMonyXwdqTtnbhygNSUYfuw43Y+ffSmFGGGjosfuAXXEDFQ0whUCLmmzSohcgpjlEnAj+93qRMDTLTIPk6ltf6Nlxlpqd3SaewyeYbeyvm7DSldaJ4hfq+k2uvxzXqX2dCxWSf7Hay/N74Me5kcDWWjRauNiyP+zBNOJedRr6vW3QT3gSFQa4KWAi+QntI0k3cX3HMdr/cl+OA0MVgey7N/tkQD2UnMdIxfsdoi2aeryjlt7xb6wdiPDxY6iWoxQ4w7pYorWZK2JpCGUrbQXikuvB3B7tPhdodGnVSaxiP+mXDYgk0yPML2FwdbQ4YCWP76pdPHSyTUkRahc/uE/FrBJ7wJY66vtMwtaXw8DnnsUE+BACTDbSZq8kIovoKHlBb+Pl/x35TsChS8dz4odOarGCy0DtAdVOktdxnZriIiLdmgI864N8cW644v0qH5afUREJcHut7umrcNiQi57VWfpwDWmNzN6XQqUw75FOgiimMI2aZxkfQUFAWe/fPIpUQDzV9WbtNKB/SU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(186009)(451199024)(5660300002)(450100002)(71200400001)(8936002)(8676002)(6486002)(6506007)(2906002)(4326008)(76116006)(66476007)(66446008)(91956017)(110136005)(54906003)(66946007)(64756008)(66556008)(41300700001)(6636002)(316002)(478600001)(6512007)(107886003)(2616005)(26005)(83380400001)(122000001)(38070700005)(38100700002)(82960400001)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjlrL1kwWlFmbktUMkVJRzJYMlFZQ3FCckwxbS9HeldoWGFnOUZicUxvQ0V3?=
 =?utf-8?B?NTk0NGZFYUo0cUhXRDRMdkduQzBJTnVvVEFqa2hORWZtbHRxcFlKZ1NnOTJq?=
 =?utf-8?B?bjRCZ2xjMmJIVlduUzFGckZvZEdLYVlBTEs0Q2RISWYyMUhYOXVxb2dCOEFo?=
 =?utf-8?B?bTNtODVtQXNlUDlnZlFQOXE5TC9Ra0pYeWVJME85bTFFZUJJSzJpUFBRa0pm?=
 =?utf-8?B?Tng3VjhNMnZDeXBiTTMwZlNpalIxVzMrdGwvNEhLRndWMS8zUWYxMEJHdzYw?=
 =?utf-8?B?L3M3Z0VEam03a0x6UTJKZm44MXdIYW96UlRwbHh3U1U0bE9FRkpJNElVcURa?=
 =?utf-8?B?R1lmVjdYREJRdTByd0dJL2pHd294RVFwOHVYaWJCdjE0T2NnR25VWXpYa0lW?=
 =?utf-8?B?QlJNNDV2QkMwYzcyYnFyeFNuNjhEQy9UQXdkdmJ5TGFsU3krU3A4bThRVkVh?=
 =?utf-8?B?WmJBd0lCWmxQZGFNQ2hvemlBLzlndEt2MzZmMUlwcmRlL3V5ZGhtNlcvSEhH?=
 =?utf-8?B?bURmVW1kUXMxWk93b3NoWmp0blNKUjYzeElRSm9hdmloSDRQQ0RlOTBYMkVK?=
 =?utf-8?B?MVovUStHUUgrR0I4YkVlcWtDVGlDQ2xHYUJmeHQySEh0SVR3MFIzZWtxYlZr?=
 =?utf-8?B?RHVQeHJyaXZYUzJhY0dVeWVoM1kycHhBUnIxN1lLUmN4L2pDOEdIVnozMTZr?=
 =?utf-8?B?azhIdHo1OUZHelI0NXlXcjgxNHFVOFZZSXdiNHNWRVZ1ZnpQd3JpdDc4Qkp3?=
 =?utf-8?B?WXRUNVZTVkhaclF2cGE4SW9wNkM0RmZJN2RkSDUzSDN6WGRhbFJsbGNyMlJR?=
 =?utf-8?B?TnBCZDM3ZFNHYzV2RGd1VldkV3RMZjVucGUwamY0ZWV5cTJZRzdEQTB6ZWFD?=
 =?utf-8?B?TDl5RHR3V3phaWFhcG9ac0dRWldnYkUrY0xzUTVvYUpmakF0WXpZYXFYTDBJ?=
 =?utf-8?B?MCtiV2Y2WjdWM250RytiU0UzdHNhMzZFMUxyM21qVitkeHU2MW5OR0FqM3lG?=
 =?utf-8?B?WEhTb3ZMaGhOTHNQQnRtQXUwUUNjb3hjS0diajlNWlI1ekR3bDRQZ2E2ZE4r?=
 =?utf-8?B?U0lXSERtMHM5MTZkQVFlanFuSDg2UDNTWXN5TU11VVVlSGo3R3QrVmJISUt6?=
 =?utf-8?B?WXJNZmxpOEplWHJxeDF6dWczb3F2NE5ua3RYRGJhSkc3bVkrTCtlM2hVbDhP?=
 =?utf-8?B?N0pFeDUrSFhBajlpQU5ZMGhwZ05SVlFRUjN4V0wvVGlRS25iV3FxT2hUa1h5?=
 =?utf-8?B?bmRxQStZbEZnTmdGRXpzSFJvdUR2Q0xrdVlFRStyaGlOY3JIQXZuQU1nTG50?=
 =?utf-8?B?bjNWWWFUdnBHZ2I1dWtlODVwVE5PNHVPUm43NGZKZ2ZmSmp0eldOd3FwVll1?=
 =?utf-8?B?VHhidHJMcjFZWkYyRERncVJ2cmI4Y1FrN2QxSm5UaHM4d1diTG84dkF4aHhO?=
 =?utf-8?B?T2QyemowVlBBVmw2b1FHbS9kV0pWOEQvS2w2QU53bzFzckc2VkVCa2o4WEtm?=
 =?utf-8?B?VS9xQXdRUHBWNG5UMmlCYmdlMVJHS3hUOFBIY1dRUFl0RFRDeFFKYjdPZnBq?=
 =?utf-8?B?Nkk4MmpleFdxcUpoaDI0UkNjMHR3NFVZRUNESjlHSGpHaFFlTVVHT1R2VlZq?=
 =?utf-8?B?SGczbG9QNXF6RnFQbUMyMmx3TFhMNFFCOUUwZk12czNhWGp3cDdMYTFyYmlS?=
 =?utf-8?B?RmtCd0xNb2t3M2pHYzkxU3NuNXpTd0cxR3ZFbTBpTDdOOFlqUGYwSkN2Nncx?=
 =?utf-8?B?NlcrRzBPbGhUOVhUWXR6b2Nkd0UyQ2JNaFJEUFB1OHFITmpwaFE0cU9VaEJH?=
 =?utf-8?B?M09RTjh5RG53eGRlK1lhMm5IWlltYkhJS2JYemNBbmsvK01pRTJ0b2src2tn?=
 =?utf-8?B?dEpWdzkwaEs2TC9rWit2bmZCTTMwd1VXanRRT05WVHZkWmlHa3Q1WS9YRXhQ?=
 =?utf-8?B?L1lvTWpBQWl1aUtkdzRMTTJ2M25tSStYQkxFZmVaaG1vM0t3VGNyS0U2OGs3?=
 =?utf-8?B?NVdPVEdvaDBOLzlSSWEwRDh2TFVFelRFVC9FRVpUSkg5d1pNSUdGU0thaUJr?=
 =?utf-8?B?cHZCWUNWaUswMG1wUDd6QTY3RG5yakJUNUFlRjVTaHUyOTgyenZndGZrZVNm?=
 =?utf-8?B?SkVmNTk5Y3FKYkpZS3d3akdoQTY5dllBOHRuS3JoSkljWVNaN2V5NWlNVGZS?=
 =?utf-8?Q?CRTF2vkAsZ7Lt4xOwE1eW9s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D23E2B779627C40976B501A3EE1FDE0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4046cb69-52db-48ce-1dce-08dbb0495c4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 08:55:33.0037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RgjjdR87mvjDIdEpPqhrZv822YACW8/DuXVw2x9w/UYCMN8Pzvcqe7XLJiAM7Cqg6/JAdfKMDu/lyec0+iTXJ7Kg4ML8GILpVfwKEmRptWk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 14/27] drm/i915/display:
 Remove FBC capability from fused off pipes
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA5LTA3IGF0IDA4OjM3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gRnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPiAKPiBJ
ZiBhIHBhcnRpY3VsYXIgcGlwZSBpcyBkaXNhYmxlZCBieSBmdXNlIGFsc28gcmVtb3ZlIHRoZSBG
QkMgZm9yIHRoYXQKPiBwaXBlLgo+IAo+IEJzcGVjOiA2OTQ2NAo+IENjOiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4gQ2M6IEd1c3Rhdm8gU291c2EgPGd1c3Rh
dm8uc291c2FAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENsaW50IFRheWxvciA8Y2xpbnRv
bi5hLnRheWxvckBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcu
ZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMgfCAzICsrKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQoKUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdv
dmluZGFwaWxsYWlAaW50ZWwuY29tPgoKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBpbmRleCA2NTJlMzVlZDc3ODku
LmRjNmNiZDhiYjMxZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiBAQCAtMTAyNCwxNiArMTAyNCwxOSBAQCB2b2lk
IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGRmc20g
JiBTS0xfREZTTV9QSVBFX0JfRElTQUJMRSkgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXlfcnVudGltZS0+cGlwZV9tYXNrICY9IH5CSVQo
UElQRV9CKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBkaXNwbGF5X3J1bnRpbWUtPmNwdV90cmFuc2NvZGVyX21hc2sgJj0gfkJJVChUUkFOU0NPREVS
X0IpOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlz
cGxheV9ydW50aW1lLT5mYmNfbWFzayAmPSB+QklUKElOVEVMX0ZCQ19CKTsKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChkZnNtICYgU0tMX0RGU01fUElQRV9DX0RJU0FCTEUpIHsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPnBpcGVfbWFz
ayAmPSB+QklUKFBJUEVfQyk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1lLT5jcHVfdHJhbnNjb2Rlcl9tYXNrICY9IH5CSVQo
VFJBTlNDT0RFUl9DKTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRpc3BsYXlfcnVudGltZS0+ZmJjX21hc2sgJj0gfkJJVChJTlRFTF9GQkNfQyk7Cj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMiAmJgo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChkZnNtICYgVEdMX0RGU01fUElQRV9EX0RJ
U0FCTEUpKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZGlzcGxheV9ydW50aW1lLT5waXBlX21hc2sgJj0gfkJJVChQSVBFX0QpOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXlfcnVudGltZS0+
Y3B1X3RyYW5zY29kZXJfbWFzayAmPSB+QklUKFRSQU5TQ09ERVJfRCk7Cj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmZiY19t
YXNrICY9IH5CSVQoSU5URUxfRkJDX0QpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgfQo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWRpc3BsYXlf
cnVudGltZS0+cGlwZV9tYXNrKQoK
