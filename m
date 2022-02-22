Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ED04BFF3A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:50:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C190710E5FB;
	Tue, 22 Feb 2022 16:50:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF8110E5E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548611; x=1677084611;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f9fdTHbCBs9bCL5zW/QWR3jeYQltdWFeuNQIDEuTBb0=;
 b=TviDTTB3mLhuwAgPKZJtiumP4TA4p3cK99+iggbesb99t82Mkk4P0DlV
 VWZc4kz8QMmNHqQMZV5LAuhaqw/WX/VEjHceOG2a7pv0MeE3dwCQC3VMT
 ZnX5h920haRscE8jzT9YpqzN9bEc+aehMyWtFOt5qS9wRh3uJWDYfrF49
 HjJLPL4S74imTYHoAu6gLjtIS9ys2r99tvbiWbSnAr7pIHFeCEJzMrDij
 ypu4QRJrgW1LSFBqTUpTsIa44FX2DFeoedquEQ6QLxoX6T8lwZrSALOEl
 zlDF5z0cbT/WZdMZBqP5+KyW0176iLT0tkrV4wh5/vZgtrx6KAd2Auf7h Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232375454"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="232375454"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:50:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="779336995"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2022 08:50:10 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 08:50:10 -0800
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 22 Feb 2022 08:50:09 -0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2308.020;
 Wed, 23 Feb 2022 00:50:03 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZ3VjOiBSZWZh?=
 =?utf-8?Q?ctor_ADS_access_to_use_iosys=5Fmap_(rev4)?=
Thread-Index: AQHYJcDxQ54SwpOdfEW5CS+Djf4J36yfyM+A
Date: Tue, 22 Feb 2022 16:50:02 +0000
Message-ID: <926e8e945fd24187bdfcacc6facaac49@intel.com>
References: <20220216174147.3073235-1-lucas.demarchi@intel.com>
 <164527485193.29220.4470529158548790549@emeril.freedesktop.org>
 <20220219184601.hxxynefrozikswh4@ldmartin-desk2>
In-Reply-To: <20220219184601.hxxynefrozikswh4@ldmartin-desk2>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Refactor_ADS_access_to_use_iosys=5Fmap_=28rev4=29?=
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

RmlsZWQgdHdvIG5ldyBpc3N1ZXMNCmh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0v
aW50ZWwvLS9pc3N1ZXMvNTE2Mg0KaWd0QGdlbV9leGVjX2JhbGFuY2VyQGJvbmRlZC1kdWFsIC0g
aW5jb21wbGV0ZSAtIE5vIGxvZ3MNCg0KaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9pbnRlbC8tL2lzc3Vlcy81MTYxDQppZ3RAZ2VtX21tYXBfZ3R0QGZhdWx0LWNvbmN1cnJlbnQt
eCAtIGluY29tcGxldGUgLSB1bmhhbmRsZWQgZXJyb3IgaW4gaTkxNV9lcnJvcl90b192bWZfZmF1
bHQ6IC0xMDUNCg0KIzUxNjEgbG9va3MgbGlrZSBhIG5ldyBpc3N1ZSBidXQgeWV0IHRvIGhhcHBl
biBvbiBwb3N0LW1lcmdlLg0KDQpUaGFua3MsDQpMYWtzaG1pLg0KDQotLS0tLU9yaWdpbmFsIE1l
c3NhZ2UtLS0tLQ0KRnJvbTogRGUgTWFyY2hpLCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPiANClNlbnQ6IFNhdHVyZGF5LCBGZWJydWFyeSAxOSwgMjAyMiAxMDo0NiBBTQ0KVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCkNjOiBWdWR1bSwgTGFrc2htaW5hcmF5YW5h
IDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IOKclyBGaS5D
SS5JR1Q6IGZhaWx1cmUgZm9yIGRybS9pOTE1L2d1YzogUmVmYWN0b3IgQURTIGFjY2VzcyB0byB1
c2UgaW9zeXNfbWFwIChyZXY0KQ0KDQpPbiBTYXQsIEZlYiAxOSwgMjAyMiBhdCAxMjo0NzozMVBN
ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+PT0gU2VyaWVzIERldGFpbHMgPT0NCj4NCj5TZXJp
ZXM6IGRybS9pOTE1L2d1YzogUmVmYWN0b3IgQURTIGFjY2VzcyB0byB1c2UgaW9zeXNfbWFwIChy
ZXY0KQ0KPlVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy85
OTcxMS8NCj5TdGF0ZSA6IGZhaWx1cmUNCj4NCj49PSBTdW1tYXJ5ID09DQo+DQo+Q0kgQnVnIExv
ZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTEyNTBfZnVsbCAtPiBQYXRjaHdvcmtfMjIzMzRfZnVs
bCANCj49PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
DQo+DQo+U3VtbWFyeQ0KPi0tLS0tLS0NCj4NCj4gICoqRkFJTFVSRSoqDQo+DQo+ICBTZXJpb3Vz
IHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMjIzMzRfZnVsbCBhYnNvbHV0
ZWx5IA0KPiBuZWVkIHRvIGJlICB2ZXJpZmllZCBtYW51YWxseS4NCj4NCj4gIElmIHlvdSB0aGlu
ayB0aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdl
cyAgDQo+IGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzIyMzM0X2Z1bGwsIHBsZWFzZSBub3RpZnkg
eW91ciBidWcgdGVhbSB0byANCj4gYWxsb3cgdGhlbSAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFp
bHVyZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+DQo+
DQo+DQo+UGFydGljaXBhdGluZyBob3N0cyAoMTMgLT4gMTMpDQo+LS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tDQo+DQo+ICBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCj4N
Cj5Qb3NzaWJsZSBuZXcgaXNzdWVzDQo+LS0tLS0tLS0tLS0tLS0tLS0tLQ0KPg0KPiAgSGVyZSBh
cmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQ
YXRjaHdvcmtfMjIzMzRfZnVsbDoNCj4NCj4jIyMgSUdUIGNoYW5nZXMgIyMjDQo+DQo+IyMjIyBQ
b3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+DQo+ICAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBi
b25kZWQtZHVhbDoNCj4gICAgLSBzaGFyZC10Z2xiOiAgICAgICAgIFtQQVNTXVsxXSAtPiBbSU5D
T01QTEVURV1bMl0NCj4gICBbMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzExMjUwL3NoYXJkLXRnbGI2L2lndEBnZW1fZXhlY19iYWxhbmNlckBib25k
ZWQtZHVhbC5odG1sDQo+ICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzMzQvc2hhcmQtdGdsYjYvaQ0KPiBndEBnZW1fZXhlY19i
YWxhbmNlckBib25kZWQtZHVhbC5odG1sDQoNCjw3PlsgICAgNy43MzgwNzBdIGk5MTUgMDAwMDow
MDowMi4wOiBbZHJtOmludGVsX3VjX2luaXRfZWFybHkgW2k5MTVdXSBlbmFibGVfZ3VjPTAgKGd1
YzpubyBzdWJtaXNzaW9uOm5vIGh1YzpubyBzbHBjOm5vKQ0KDQo+DQo+ICAqIGlndEBnZW1fbW1h
cF9ndHRAZmF1bHQtY29uY3VycmVudC14Og0KPiAgICAtIHNoYXJkLXNuYjogICAgICAgICAgW1BB
U1NdWzNdIC0+IFtJTkNPTVBMRVRFXVs0XQ0KPiAgIFszXTogaHR0cHM6Ly9pbnRlbC1nZngtY2ku
MDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTEyNTAvc2hhcmQtc25iNC9pZ3RAZ2VtX21tYXBf
Z3R0QGZhdWx0LWNvbmN1cnJlbnQteC5odG1sDQo+ICAgWzRdOiANCj4gaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMjIzMzQvc2hhcmQtc25iNi9pZw0K
PiB0QGdlbV9tbWFwX2d0dEBmYXVsdC1jb25jdXJyZW50LXguaHRtbA0KDQo8Nz5bICAgIDQuNjE0
OTIyXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF91Y19pbml0X2Vhcmx5IFtpOTE1XV0g
ZW5hYmxlX2d1Yz0wIChndWM6bm8gc3VibWlzc2lvbjpubyBodWM6bm8gc2xwYzpubykNCg0KDQph
bnl0aGluZyBpbiB0aGlzIHNlcmllcyBjYW4gb25seSBjaGFuZ2UgdGhlIGJlaGF2aW9yIHdoZW4g
dXNpbmcgZ3VjLCBzbyB0aGVzZSBmYWlsdXJlcyBjYW4ndCBiZSByZWxhdGVkIHRvIHRoaXMgc2Vy
aWVzLg0KDQpMdWNhcyBEZSBNYXJjaGkNCg==
