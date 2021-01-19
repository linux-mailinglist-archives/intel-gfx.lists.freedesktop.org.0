Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E582FB1E4
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 07:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83295898EE;
	Tue, 19 Jan 2021 06:47:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED5D898EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 06:47:39 +0000 (UTC)
IronPort-SDR: qOvnKpkeitJct1hDmI2/bFTwSPispRD7taKAHP16ExKa+3ic6Rd10sWFjtjGaIVwgI+JFGfsFQ
 cnxAr1WDzz6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="242955267"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="242955267"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 22:47:33 -0800
IronPort-SDR: +8DgEz5uf5R2B72z5RSeGXUIUIxmk5eu6JnaNgN2NouMGmytglJeDVYksAfERYtvDqJGFInAsC
 7RZq6iYzBrmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="350413153"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 18 Jan 2021 22:47:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 22:47:31 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 18 Jan 2021 22:47:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 18 Jan 2021 22:47:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 18 Jan 2021 22:47:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bl/N3/V6SH6FA4FqU/T3G6oRSOzMJuPLkGSUpgvH/vsWKnRmwZ8P4yS7CYiofQMItse15Ei8cIi/Vo9aL9YgxKkHownpXXyK63PX5c7n+nDIYEhaj81G7v9AKUSZTav8lhK39HvnnPTbR5J8XdnFXpDjvBWYH6cVOmBIT2VAn6C6EWM6Uj5jBQqQTZyLqbiHesSuBd4MI74zakMTk0qrgPk37h2DAm/rJHK4JYa07YU/RPTvAmm839/TMPyI+j0eJSEEIYXVv9Ga7TBZBCBIsjN+hIZLUk+c6ZVDi90CZq6wai0P+VmwfMoS96UZfOpktcxOYlU2KrvRG76fDPyB8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ljs7NbIXziJyfOqFrAzB4TCK/geHUJrob3pl5rq4/d8=;
 b=Ai6aaj0NiIR6LuenWY7U86Ij7b06LOiaVw0AUqvDzdjqOV6KGaRZ74EelmRag19NwB/9BP8sP8QbHzWp/4UWhCnUfisTDX2ZcAJ4paDjUDJbccfq/XXKdaeVvwD3YptMcUlHNPGz+5/4kOuWOgAA5i+qmnhAyuSbZz3rBJR0cN5WNXQE4NRPX12E6+GOuqJellaucD06N9psUEQ9yPmrSmJV8xmZvge/qCEu2R7zXANgi2G8goCFx4OEPCIi0+1cBNQBwVIJ8+rjPx/p3Z1bi4aJAitg5Ki9M6Yq5f0ACxIIPt6keR//O8qZw1x5wFxe1fqcjNzj8DU7EzTIA3c5LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ljs7NbIXziJyfOqFrAzB4TCK/geHUJrob3pl5rq4/d8=;
 b=ft/SVRMoPIkAtvPVfLBwiFr4izUHSIrVapb0og36eQghCqyOMubAYe2E1Z0Z3bx/G9UXzyEgn7ZG+GI+06+kCix4q7nppPx1PnuuqGwa7CKe+RK6YP5JUYTpHP0VsbQK5oUyfwG0SxGD7nSnJWMSn5bFjgNsmoQ7C200DemlIRk=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR1101MB2111.namprd11.prod.outlook.com (2603:10b6:301:4d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.11; Tue, 19 Jan
 2021 06:47:25 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94eb:c915:5a57:e7bc%6]) with mapi id 15.20.3763.014; Tue, 19 Jan 2021
 06:47:25 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Prevent setting the LTTPR LT
 mode if no LTTPRs are detected
Thread-Index: AQHW7cg5wShWjI/ZqUOWJ3di4s1TQKouglIA
Date: Tue, 19 Jan 2021 06:47:25 +0000
Message-ID: <238262b79c8e6367a1f66d5950bd334d9e31c188.camel@intel.com>
References: <20210118183143.1145707-1-imre.deak@intel.com>
In-Reply-To: <20210118183143.1145707-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1418dccd-bb42-47a7-7f27-08d8bc461503
x-ms-traffictypediagnostic: MWHPR1101MB2111:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2111EFDB744388E91572C88289A30@MWHPR1101MB2111.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cCF0CmNJdfqa7L4shfP/xJh/22YKp2WzL4ZEnUwe5FB2r0XAmylACwNIcTLfsGkNdMkXL0IRAi+YTR1wMvqK93pxSJnfh1/pBZe+N7+jJh7sjUnyOW3SBSrqF9cRtuvAXNU4DQBhyQHhgkY/nuwu6PW449Jl+exB///+WArwhw6aZw2YvnxsI9vXnDLU+ZxwuFVgKrRnnpWMw+YU2ioKDqkeRNX0jvM8KDiPCutNXyYAYM5GRjsMaQLK2FDOuaCF8zgJqxHXZBZKZeLWubHnmNzYQb9ybR001lo1VSTLWLv7UEf3F1p8zIOHipDX7xMEAVfNAsf6ioIwuYDimDYJGfT7nC65EVRLE1vSVYiaPN+M6IEQoYrfE/AwhgzLRs/FBZZmBdhsD7zLEkEx8ypLN8fQOyAK0qhwpDmJFB9s6Uc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(136003)(346002)(366004)(376002)(316002)(83380400001)(2616005)(6636002)(8676002)(186003)(478600001)(966005)(6486002)(2906002)(76116006)(86362001)(71200400001)(36756003)(66446008)(8936002)(64756008)(66476007)(66556008)(6506007)(110136005)(26005)(66946007)(6512007)(5660300002)(91956017);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bm5rOVMwTEhGSEZzeitNYTY3WVpoL2lyYjNmaU1OK3QxMWJxUUFEZFRYOTl5?=
 =?utf-8?B?N053LzJ5TGJraUZsT09WUTV2TmgwMVhCcGxaTnBiTjVuMVdGOTZPY0YzSkZk?=
 =?utf-8?B?SHFBNnVKQmVYM1pybXRnc3B6cUQrRWI1V3F4QmJLVWFwRGlwZUFwdEJtU3BR?=
 =?utf-8?B?a24xSlJuRDhHT3lXWjZBMFVYcllmN0FVdzdFRkE4SG1SZXZ0K0R2dlAraEZS?=
 =?utf-8?B?VTVQeTcxNy9ySlNVcTBmRDA0VFJqTW1hOWMvRWtIeUYzUEtJK3I5RWpHSW40?=
 =?utf-8?B?K3pvQmFRSnl4Vi9aclRDcktVNytxaWdHUktwR3VQK0pPUno5dWR2Mk8rRFly?=
 =?utf-8?B?dWo3MkpjbVliQkVpb3FnaHJGRmNyYzgxMlpUcUVmNTBvVEV1a2tMRld3ZXor?=
 =?utf-8?B?Z2pQRnZhdnY2WnUwVnI5WXJFaHorZVAzdDY0REkvemJPaGhBK083L05VeWF0?=
 =?utf-8?B?MWZHOG1Qa0NpVzhwTFhLdi9NNCtGRzVRaEx2bjVKZGNzSkRUYkV4clY0Wk1r?=
 =?utf-8?B?NFZUNmZid1NaZ2MrSTA5VnBNSmJNZDJySkJ5T2lvdnBTU3VOU3RwSnd1akxX?=
 =?utf-8?B?ZHBmenhyaHI1WmZFUm11MGJ2UllwSkJCaHA0VmhWSjB0ZFhQWGJrWG9IZi9w?=
 =?utf-8?B?RnY3cUppczZsdmdqcWV3NFp5a2N2RzdZd2RJNDBLaFM0T29zNjFrc2tPb1dl?=
 =?utf-8?B?RDRZeTU4aHR4KythVGpNWWpRVXl3QXM5ODdKQ0JMU3V1R05pMGhXZzJmekc0?=
 =?utf-8?B?cXZ0ZGpucGsrR2xyMENmRWVnSlljQWZmWm1wcVI4UmJQeUVOWStKaXdIaWdy?=
 =?utf-8?B?SnNCdzg2RGdsTnVrMlI5ZjFMcVd0NjVhUEExZGhWbVZCVU4vektlSlhDTkl4?=
 =?utf-8?B?dllpbEhpejNaRE00MFlJZjdqYVptVXRVMjhwV0p1aS8xSDVCNGZMbi9aYzBs?=
 =?utf-8?B?RTk0OXg2VTlLNXJOVFZvb0c1aDJ2SzAzQk9mSExHQ0xZaEFjOFI3eVNuSkJ4?=
 =?utf-8?B?dy9MeWpkT09oUy9Wbm1zRDJaVW9UREV2a1lkK3pOa0ZnUndhbG5kUVV6OW5M?=
 =?utf-8?B?eWpkQXlmT2ROV1UvbEVhSW9NaURzZ3JsbEhPVklEZEs0cWtseU95R0ZIb0xP?=
 =?utf-8?B?R2IwM2NoaEIvbXpoZXFDclEyV0xDS3pMS1FUV2lCK1M1U3AyaFVhdm95Y0FO?=
 =?utf-8?B?S2dWaDdtSlF1NjdERUp1R2MxbHY5NnVxVzN5aXk0d3duR1AxUlMwcUJSaHVq?=
 =?utf-8?B?bWQrNnMrdmZkZzYyVzZ3cklGZzNhWWt5S1R6RisyK1VHTTl4b1IzRzJRMHpC?=
 =?utf-8?Q?boCyHzTOvMGAo59ZfSOEfNq7yl/ScdwmnL?=
Content-ID: <E4C6456BC5FD004AA802D51F615D566A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1418dccd-bb42-47a7-7f27-08d8bc461503
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2021 06:47:25.7505 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pMlZ8eYIsTrL+04gB/bDJT8YDODpP9aUqe8kLHbp14FKYx8QnQbPv86Tqyk8FCMr9A0P3w7hVu5xqLZtg9oc0CmCiTFeM/fqHoNaq7eV8vs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Prevent setting the LTTPR LT
 mode if no LTTPRs are detected
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTAxLTE4IGF0IDIwOjMxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEF0
bSwgdGhlIGRyaXZlciBwcm9ncmFtcyBleHBsaWNpdGx5IHRoZSBkZWZhdWx0IHRyYW5zcGFyZW50
IGxpbmsNCj4gdHJhaW5pbmcgbW9kZSAoMHg1NSkgdG8gRFBfUEhZX1JFUEVBVEVSX01PREUgZXZl
biBpZiBubyBMVFRQUnMgYXJlDQo+IGRldGVjdGVkLg0KPiANCj4gVGhpcyBjb25mb3JtcyB0byB0
aGUgc3BlYyAoMy42LjYuMSk6DQo+ICJEUCB1cHN0cmVhbSBkZXZpY2VzIHRoYXQgZG8gbm90IGVu
YWJsZSB0aGUgTm9uLXRyYW5zcGFyZW50IG1vZGUgb2YNCj4gIExUVFBScyBzaGFsbCBwcm9ncmFt
IHRoZSBQSFlfUkVQRUFURVJfTU9ERSByZWdpc3RlciAoRFBDRCBBZGRyZXNzDQo+ICBGMDAwM2gp
IHRvIDU1aCAoZGVmYXVsdCkgcHJpb3IgdG8gbGluayB0cmFpbmluZyINCj4gDQo+IGhvd2V2ZXIg
d3JpdGluZyB0aGUgZGVmYXVsdCB2YWx1ZSB0byB0aGlzIERQQ0QgcmVnaXN0ZXIgc2VlbXMgdG8N
Cj4gY2F1c2UNCj4gb2NjYXNpb25hbCBsaW5rIHRyYWluaW5nIGVycm9ycyBhdCBsZWFzdCBmb3Ig
YSBERUxMIFdEMTlUQiBUQlQgZG9jaywNCj4gd2hlbg0KPiBubyBMVFRQUnMgYXJlIGRldGVjdGVk
Lg0KDQpJIHRoaW5rIHRoaXMgcGF0Y2ggaXMgbW9yZSBhbGlnbmVkIHdpdGg6IERQIHYyLjAgU0NS
IG9uIDhiLzEwYiBEUFRYIGFuZA0KTFRUUFIgUmVxdWlyZW1lbnRzIFVwZGF0ZSB0byBTZWN0aW9u
IDMuNg0KIA0KVGhlIFNDUiBtYWRlIGl0IGNsZWFyIHRoYXQgd2Ugb25seSBuZWVkIHRvIHByb2dy
YW0gUEhZX1JFUEVBVEVSX01PREUgdG8NCnRyYW5zcGFyZW50IG1vZGUgaWYgd2UgZGV0ZWN0IExU
VFBSLg0KIA0KUXVvdGluZyBmcm9tIFNDUjoNCuKAnEEgRFBUWCBzdXBwb3J0aW5nIDMuMi1tcyBB
VVggUmVwbHkgVGltZW91dCBzaGFsbCBpc3N1ZSBBVVggcmVhZA0KdHJhbnNhY3Rpb24gdG8gTFRU
UFIgRFBDRCBDYXBhYmlsaXR5IGFuZCBJRCBGaWVsZCBhdCBEUENEIEYwMDAwaCB+DQpGMDAwNyAo
cmVmZXIgdG8gU2VjdGlvbiAzLjYuNC4xKSBhcyB0aGUgZmlyc3QgQVVYIHRyYW5zYWN0aW9uIHVw
b24gSFBEDQpzaWduYWwgYXNzZXJ0aW9uIGRldGVjdGlvbiAoMSkgdG8gZGV0ZXJtaW5lIHdoZXRo
ZXIgTFRUUFLigJlzIGFyZSBwcmVzZW50DQppbiB0aGUgbGluayBiZXR3ZWVuIGl0c2VsZiBhbmQg
dGhlIGRvd25zdHJlYW0gRFBSWCBhbmQgKDIpIHRvIHB1dCB0aGUNCkxUVFBS4oCZcywgaWYgcHJl
c2VudCwgaW4gTFRUUFIgVHJhbnNwYXJlbnQgTW9kZS7igJ0NCiANCkFsc28gc2VjdGlvbiAzLjYu
NiB0aXRsZSBpcyB1cGRhdGVkIGFzIHRoZSBmb2xsb3dpbmcg4oCcU2VjdGlvbiAzLjYuNg0KTGlu
ayBUcmFpbmluZyBpbiBMVFRQUiBOb24tdHJhbnNwYXJlbnQgTW9kZeKAnS4gVGhpcyByZWZsZWN0
cyBpdCBvbmx5DQpyZWxldmFudCBhZnRlciB3ZSBkZXRlY3QgTFRUUFIuIA0KIA0KSG93ZXZlciBp
dCBpcyBzdGlsbCBpbnRlcmVzdGluZyB0aGF0IERlbGwgRG9jayBmYWlsZWQgYWZ0ZXIgc2V0dGlu
Zw0KTFRUUFIgdG8gdHJhbnNwYXJlbnQgbW9kZS4gDQoNClRoYW5rIFlvdSBmb3IgeW91ciBlZmZv
cnQgdG8gZW5hYmxlIExUVFBSLg0KS2hhbGVkDQo+IA0KPiBXcml0aW5nIHRvIERQX1BIWV9SRVBF
QVRFUl9NT0RFIHdpbGwgYWxzbyBjYXVzZSBhbiB1bm5lY2Vzc2FyeQ0KPiB0aW1lb3V0DQo+IG9u
IHN5c3RlbXMgd2l0aG91dCBhbnkgTFRUUFIuDQo+IA0KPiBUbyBmaXggdGhlIGFib3ZlIHR3byBp
c3N1ZXMgbGV0J3MgYXNzdW1lIHRoYXQgc2V0dGluZyB0aGUgZGVmYXVsdA0KPiBtb2RlDQo+IGlz
IHJlZHVuZGFudCB3aGVuIG5vIExUVFBScyBhcmUgZGV0ZWN0ZWQuIEtlZXAgdGhlIGV4aXN0aW5n
IGJlaGF2aW9yDQo+IGFuZA0KPiBwcm9ncmFtIHRoZSBkZWZhdWx0IG1vZGUgaWYgbW9yZSB0aGFu
IDggTFRUUFJzIGFyZSBkZXRlY3RlZCBvciBpbg0KPiBjYXNlDQo+IHRoZSByZWFkIGZyb20gRFBf
UEhZX1JFUEVBVEVSX0NOVCByZXR1cm5zIGFuIGludmFsaWQgdmFsdWUuDQo+IA0KPiBSZWZlcmVu
Y2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzI4
MDENCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYyB8IDM2
ICsrKysrKysrLS0tLS0tLS0tDQo+IC0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9u
cygrKSwgMjEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiBpbmRleCBkOGM2ZDcw
NTRkMTEuLmZhZDllOTg3NGM3YiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMNCj4gQEAgLTM0LDE4ICszNCw2
IEBAIGludGVsX2RwX2R1bXBfbGlua19zdGF0dXMoY29uc3QgdTgNCj4gbGlua19zdGF0dXNbRFBf
TElOS19TVEFUVVNfU0laRV0pDQo+ICAJCSAgICAgIGxpbmtfc3RhdHVzWzNdLCBsaW5rX3N0YXR1
c1s0XSwgbGlua19zdGF0dXNbNV0pOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgaW50IGludGVsX2Rw
X2x0dHByX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IC17DQo+IC0JaW50IGNv
dW50ID0gZHJtX2RwX2x0dHByX2NvdW50KGludGVsX2RwLT5sdHRwcl9jb21tb25fY2Fwcyk7DQo+
IC0NCj4gLQkvKg0KPiAtCSAqIFByZXRlbmQgbm8gTFRUUFJzIGluIGNhc2Ugb2YgTFRUUFIgZGV0
ZWN0aW9uIGVycm9yLCBvcg0KPiAtCSAqIGlmIHRvbyBtYW55ICg+OCkgTFRUUFJzIGFyZSBkZXRl
Y3RlZC4gVGhpcyB0cmFuc2xhdGVzIHRvDQo+IGxpbmsNCj4gLQkgKiB0cmFpbmluZyBpbiB0cmFu
c3BhcmVudCBtb2RlLg0KPiAtCSAqLw0KPiAtCXJldHVybiBjb3VudCA8PSAwID8gMCA6IGNvdW50
Ow0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9yZXNldF9sdHRwcl9jb3VudChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCWludGVsX2RwLT5sdHRwcl9jb21t
b25fY2Fwc1tEUF9QSFlfUkVQRUFURVJfQ05UIC0NCj4gQEAgLTE0Miw2ICsxMzAsMTcgQEAgaW50
IGludGVsX2RwX2x0dHByX2luaXQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gIAkJ
cmV0dXJuIDA7DQo+ICANCj4gIAlyZXQgPSBpbnRlbF9kcF9yZWFkX2x0dHByX2NvbW1vbl9jYXBz
KGludGVsX2RwKTsNCj4gKwlpZiAoIXJldCkNCj4gKwkJcmV0dXJuIDA7DQo+ICsNCj4gKwlsdHRw
cl9jb3VudCA9IGRybV9kcF9sdHRwcl9jb3VudChpbnRlbF9kcC0+bHR0cHJfY29tbW9uX2NhcHMp
Ow0KPiArCS8qDQo+ICsJICogUHJldmVudCBzZXR0aW5nIExUVFBSIHRyYW5zcGFyZW50IG1vZGUg
ZXhwbGljaXRseSBpZiBubw0KPiBMVFRQUnMgYXJlDQo+ICsJICogZGV0ZWN0ZWQgYXMgdGhpcyBi
cmVha3MgbGluayB0cmFpbmluZyBhdCBsZWFzdCBvbiB0aGUgRGVsbA0KPiBXRDE5VEINCj4gKwkg
KiBkb2NrLg0KPiArCSAqLw0KPiArCWlmIChsdHRwcl9jb3VudCA9PSAwKQ0KPiArCQlyZXR1cm4g
MDsNCj4gIA0KPiAgCS8qDQo+ICAJICogU2VlIERQIFN0YW5kYXJkIHYyLjAgMy42LjYuMS4gYWJv
dXQgdGhlIGV4cGxpY2l0IGRpc2FibGluZw0KPiBvZg0KPiBAQCAtMTUwLDE3ICsxNDksMTIgQEAg
aW50IGludGVsX2RwX2x0dHByX2luaXQoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4g
IAkgKi8NCj4gIAlpbnRlbF9kcF9zZXRfbHR0cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9kcCwg
dHJ1ZSk7DQo+ICANCj4gLQlpZiAoIXJldCkNCj4gLQkJcmV0dXJuIDA7DQo+IC0NCj4gLQlsdHRw
cl9jb3VudCA9IGludGVsX2RwX2x0dHByX2NvdW50KGludGVsX2RwKTsNCj4gLQ0KPiAgCS8qDQo+
ICAJICogSW4gY2FzZSBvZiB1bnN1cHBvcnRlZCBudW1iZXIgb2YgTFRUUFJzIG9yIGZhaWxpbmcg
dG8gc3dpdGNoDQo+IHRvDQo+ICAJICogbm9uLXRyYW5zcGFyZW50IG1vZGUgZmFsbC1iYWNrIHRv
IHRyYW5zcGFyZW50IGxpbmsgdHJhaW5pbmcNCj4gbW9kZSwNCj4gIAkgKiBzdGlsbCB0YWtpbmcg
aW50byBhY2NvdW50IGFueSBMVFRQUiBjb21tb24gbGFuZS0gcmF0ZS9jb3VudA0KPiBsaW1pdHMu
DQo+ICAJICovDQo+IC0JaWYgKGx0dHByX2NvdW50ID09IDApDQo+ICsJaWYgKGx0dHByX2NvdW50
IDwgMCkNCj4gIAkJcmV0dXJuIDA7DQo+ICANCj4gIAlpZiAoIWludGVsX2RwX3NldF9sdHRwcl90
cmFuc3BhcmVudF9tb2RlKGludGVsX2RwLCBmYWxzZSkpIHsNCj4gQEAgLTIyMiwxMSArMjE2LDEx
IEBAIGludGVsX2RwX3BoeV9pc19kb3duc3RyZWFtX29mX3NvdXJjZShzdHJ1Y3QNCj4gaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiAgCQkJCSAgICAgZW51bSBkcm1fZHBfcGh5IGRwX3BoeSkNCj4gIHsN
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRwX3RvX2k5MTUoaW50ZWxfZHAp
Ow0KPiAtCWludCBsdHRwcl9jb3VudCA9IGludGVsX2RwX2x0dHByX2NvdW50KGludGVsX2RwKTsN
Cj4gKwlpbnQgbHR0cHJfY291bnQgPSBkcm1fZHBfbHR0cHJfY291bnQoaW50ZWxfZHAtDQo+ID5s
dHRwcl9jb21tb25fY2Fwcyk7DQo+ICANCj4gLQlkcm1fV0FSTl9PTl9PTkNFKCZpOTE1LT5kcm0s
IGx0dHByX2NvdW50ID09IDAgJiYgZHBfcGh5ICE9DQo+IERQX1BIWV9EUFJYKTsNCj4gKwlkcm1f
V0FSTl9PTl9PTkNFKCZpOTE1LT5kcm0sIGx0dHByX2NvdW50IDw9IDAgJiYgZHBfcGh5ICE9DQo+
IERQX1BIWV9EUFJYKTsNCj4gIA0KPiAtCXJldHVybiBsdHRwcl9jb3VudCA9PSAwIHx8IGRwX3Bo
eSA9PSBEUF9QSFlfTFRUUFIobHR0cHJfY291bnQgLQ0KPiAxKTsNCj4gKwlyZXR1cm4gbHR0cHJf
Y291bnQgPD0gMCB8fCBkcF9waHkgPT0gRFBfUEhZX0xUVFBSKGx0dHByX2NvdW50IC0NCj4gMSk7
DQo+ICB9DQo+ICANCj4gIHN0YXRpYyB1OCBpbnRlbF9kcF9waHlfdm9sdGFnZV9tYXgoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
