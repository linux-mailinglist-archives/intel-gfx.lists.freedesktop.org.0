Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 889B0227359
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 01:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2B986E083;
	Mon, 20 Jul 2020 23:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B16C6E083
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jul 2020 23:54:52 +0000 (UTC)
IronPort-SDR: NuAqcgk/Rip5xF73wOcfF6ixygwyA6bMNDU6PLsLsNOu5VYRbJSwO32xu09No1cpNXW7gbWR7t
 aayem6SPXOLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="129599556"
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="129599556"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2020 16:54:52 -0700
IronPort-SDR: hDsBeEWnzxUWocRW8oi46uCcKz1/KZM5+5v85TglRu5j46XVBCSla+5/m39RUhzysFNWmD2/0p
 DSQw1IxbWOuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,375,1589266800"; d="scan'208";a="487418422"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jul 2020 16:54:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Jul 2020 16:54:51 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 20 Jul 2020 16:54:50 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 20 Jul 2020 16:54:50 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 20 Jul 2020 16:54:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b0j7CPjH7PpiL6zP8jrnoVxJaG7zhssG/Sk5WrsJg+HNZ6ekjwCwyjZVIis7bLzxacHE48P7QBT5KA9Tj2MiSGi8MghXe5LtDRD8LHkHDo6uY4PRt0TeYN8W/2zvS7vnPLCiylR1AZ3fV+ap3kAVBIvkXgxvxr8b0XYs1BvzuL6ynpm0PR690+hVfVK9Tl4G4dx2JkNtEH89AigylJnpatWx32z72IE7IjvAF7d0WGnErRGhDbMRHhRqtsW23sFfyDs9PIaMmkLbewjEDTsei5zRojOcbnDFti8+4KyZoR6X8DVPWXclUswtENMnDwY4qTDr9KMJ209NzUxG65rh0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shlrYNiPhemgfxRHLBw32VfuPBzT0Ae9nry0brNywb8=;
 b=cFAoENfLP/mRKCSGsbU3r6jO7iGvcVuOkH2rDmk55TqshLYHS9cD53E/VH1YqmOnGMvO84U3dhLrqkwdSIKY/+NnX7lnyojEsD4BcZU4lpvGl5Gp5zfiXvK9AdC7Tlu6riaw1br/Hd5f3W4YQ24flV2yG/VLP8Ds8QpZsceFU65mv9PNDSiKJSxKums12B8XybYl0kXTz5KEXqnvmi30mWRDnvvZdUb0aE8vHjfklPtPhjyDO8fO0pCLcEErEakID9u2/NthCClh+yds7WK01sX59Dpnix8OCc4eHvR7ajXAVwgkp6pJ6TNC+av0HelACwIit18EDe6A8CGlQHa/sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shlrYNiPhemgfxRHLBw32VfuPBzT0Ae9nry0brNywb8=;
 b=d95wHxm06Uyo+JUdhMbiUj/KARMp6Flb77eN2RIkq/XWz0W4TkiFvpLUm1I+8puUrzqiDqfzWLxxt6M1r97XLkIZuXkwn3JR146trofgTWn7sMHRv6nZl45pWUJoYe/wg1R0cWJloKcGCASDNuyLUh84iazg+1Uhqa/lztnkvbE=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by MWHPR1101MB2111.namprd11.prod.outlook.com (2603:10b6:301:4d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.17; Mon, 20 Jul
 2020 23:54:40 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::b840:82ba:a83a:d8c3%7]) with mapi id 15.20.3195.026; Mon, 20 Jul 2020
 23:54:40 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/tgl: Add new voltage swing table
Thread-Index: AQHWXrhZIynLzEm3c0eJ+EB0RgOt4KkRJNGA
Date: Mon, 20 Jul 2020 23:54:40 +0000
Message-ID: <aac313663e3615445c5419d7236703769d4c4d16.camel@intel.com>
References: <20200720170948.28446-1-jose.souza@intel.com>
 <20200720170948.28446-2-jose.souza@intel.com>
In-Reply-To: <20200720170948.28446-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.137.77]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f2433ab-8fcf-46a3-7f44-08d82d08445e
x-ms-traffictypediagnostic: MWHPR1101MB2111:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2111C25AD0738F3398DEFA22897B0@MWHPR1101MB2111.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1923;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cV2w1dqHn4yGwe3/qcXzf5poIB7RCDPKbDbFHrdDOGS9Taf1oP0bprjcdXZAWf9UGs+jRPjgmQPTZovV6aZ0Z4tIhpn7OuKS4IZoaofqk6b3lFrKMOS2sKdJ2cqdSlyr7xwFpkyiIWO1firs6G3g8a0acq9uCJ+bprE2q1tINVOimH2NHMV1Y2jbWrmuF+xPnn+XuRlAmxB5vuVBR10NoH7K3YGMv945KcYDIj99rOd4ae3DN+v4hii4or3CjCCVvqXSzvaqwRdQkQ9e4m3p0RAyTvnj22MNJbcLkk1z8eoTf6SEcuLWINpnLigxQYFj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(346002)(376002)(396003)(136003)(316002)(110136005)(186003)(2616005)(71200400001)(8676002)(5660300002)(66946007)(66446008)(66556008)(6506007)(6636002)(6486002)(26005)(36756003)(8936002)(478600001)(2906002)(86362001)(6512007)(64756008)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AKckjGYJhFMfCJQl/gzjtn3wCu4/W3gN3o/Z9Cu0YVwYpLz36M7ypI+CStBrfffyfx96y7gXmZO3KSGJd/DxjjAOK/u4xPP7rjEBsGqRWzFkyPvooe9NmAJgLKtcxeysg4j+I4cpVufDB2+wdJGnV1cwh70K8Hf9Wk58Tyr/TIAum52kMW4v0+qOE0H+kXe9u+goUQJMW8BbU0ZtVZf90AOz5zdNA3aROZn+h/upmTFUGyD4yPWZcvUniT4qszvJSpAVJ15sUr7IhtgqXfcdlM0vzbc32mb4JCRoEmOfMDxRJsyOT8cpt2mlNHv6f59zct+CpRaWW3Da3OlpQST86/J7tLXs+WWssG1qVE+msSlafjszpx144xEgqEb44wh6qFaG1QlFJfaGDIQam/QQv6vMrgVixGYyL4jEdh+aPOt3ztogPMEXdFuNZrEfH5BDXLtBXGi0dXO4AoRHBTf22Pzdv3ijvm5eXjDewyfBiIxR1wCErvN2pUV1KZ9CN3py
Content-ID: <1FEE8E15016E99488CF9B21AC1811335@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f2433ab-8fcf-46a3-7f44-08d82d08445e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2020 23:54:40.1891 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Oe3M7WuYfU2oUy0s6IpZE3Pk8ft/XstgiVdtmQOIwYNGeFteb2QQZT4GwNixfLtO1r5F9FJsnL+SPpFM7nx4VTZQjy8zCWvz7nrHNpsPw9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2111
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add new voltage swing
 table
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

T24gTW9uLCAyMDIwLTA3LTIwIGF0IDEwOjA5IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIG5ldyBIQlIyIHRhYmxlIGZvciBUR0wtVSBhbmQgVEdMLVkgaXMgcmVx
dWlyZWQgdG8gcGFzcw0KPiBEaXNwbGF5UG9ydCBjb21wbGlhbmNlLg0KPiANCj4gQlNwZWM6IDQ5
MjkxDQo+IENjOiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5j
b20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMgfCAxOSArKysrKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5z
ZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rk
aS5jDQo+IGluZGV4IDcxNGIyYmM5NmYyMy4uZGU1YjIxNjU2MWQ4IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTcwNiw2ICs3MDYsMjAgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucw0KPiB0Z2xfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZHBfaGJyMltdID0NCj4gIAl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwg
MHgwMCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLw0KPiAgfTsNCj4gIA0KPiArc3RhdGlj
IGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1Zl90cmFucw0KPiB0Z2xfdXlfY29tYm9fcGh5X2RkaV90
cmFuc2xhdGlvbnNfZHBfaGJyMltdID0gew0KPiArCQkJCQkJLyogTlQgbVYgVHJhbnMgbVYNCj4g
ZGIgICAgKi8NCj4gKwl7IDB4QSwgMHgzNSwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiAzNTAgICAz
NTAgICAgICAwLjAgICAqLw0KPiArCXsgMHhBLCAweDRGLCAweDM2LCAweDAwLCAweDA5IH0sCS8q
IDM1MCAgIDUwMCAgICAgIDMuMSAgICovDQo+ICsJeyAweEMsIDB4NjAsIDB4MzIsIDB4MDAsIDB4
MEQgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAgKi8NCj4gKwl7IDB4QywgMHg3RiwgMHgyRCwg
MHgwMCwgMHgxMiB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLw0KPiArCXsgMHhDLCAweDQ3
LCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovDQo+ICsJeyAw
eEMsIDB4NkYsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAwICAgNzAwICAgICAgMi45ICAgKi8N
Cj4gKwl7IDB4NiwgMHg3RCwgMHgzMiwgMHgwMCwgMHgwRCB9LAkvKiA1MDAgICA5MDAgICAgICA1
LjEgICAqLw0KPiArCXsgMHg2LCAweDYwLCAweDNDLCAweDAwLCAweDAzIH0sCS8qIDY1MCAgIDcw
MCAgICAgIDAuNiAgICovDQo+ICsJeyAweDYsIDB4N0YsIDB4MzQsIDB4MDAsIDB4MEIgfSwJLyog
NjAwICAgOTAwICAgICAgMy41ICAgKi8NCj4gKwl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwgMHgw
MCB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLw0KPiArfTsNCj4gKw0KPiAgLyoNCj4gICAq
IENsb25lZCB0aGUgSE9CTCBlbnRyeSB0byBjb21wbHkgd2l0aCB0aGUgdm9sdGFnZSBhbmQgcHJl
LWVtcGhhc2lzIA0KPiBlbnRyaWVzDQo+ICAgKiB0aGF0IERpc3BsYXlQb3J0IHNwZWNpZmljYXRp
b24gcmVxdWlyZXMNCj4gQEAgLTEwODcsNiArMTEwMSwxMSBAQCB0Z2xfZ2V0X2NvbWJvX2J1Zl90
cmFucyhzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwgaW50IHR5cGUsIGludCByYXRl
LA0KPiAgCWlmICh0eXBlID09IElOVEVMX09VVFBVVF9IRE1JIHx8IHR5cGUgPT0gSU5URUxfT1VU
UFVUX0VEUCkgew0KPiAgCQlyZXR1cm4gaWNsX2dldF9jb21ib19idWZfdHJhbnMoZW5jb2Rlciwg
dHlwZSwgcmF0ZSwNCj4gbl9lbnRyaWVzKTsNCj4gIAl9IGVsc2UgaWYgKHJhdGUgPiAyNzAwMDAp
IHsNCj4gKwkJaWYgKElTX1RHTF9VKGRldl9wcml2KSB8fCBJU19UR0xfWShkZXZfcHJpdikpIHsN
Cj4gKwkJCSpuX2VudHJpZXMgPQ0KPiBBUlJBWV9TSVpFKHRnbF91eV9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19kcF9oYnIyKTsNCj4gKwkJCXJldHVybg0KPiB0Z2xfdXlfY29tYm9fcGh5X2Rk
aV90cmFuc2xhdGlvbnNfZHBfaGJyMjsNCj4gKwkJfQ0KPiArDQo+ICAJCSpuX2VudHJpZXMgPQ0K
PiBBUlJBWV9TSVpFKHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyKTsNCj4g
IAkJcmV0dXJuIHRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyOw0KPiAgCX0N
Cg0KTWF0Y2ggYnNwZWNzDQoNClJldmlld2VkLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3k8a2hhbGVk
LmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
