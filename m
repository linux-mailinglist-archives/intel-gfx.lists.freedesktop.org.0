Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCAB6E86C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 18:05:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D81A6E858;
	Fri, 19 Jul 2019 16:05:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2F126E858
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 16:05:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 09:05:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="343728358"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2019 09:05:15 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 19 Jul 2019 09:05:15 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.237]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.240]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 09:05:15 -0700
From: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 07/22] drm/i915/dmc: Load DMC on TGL
Thread-Index: AQHVORfBVsgiUZGsQ0Sz3xuCjjirs6bSmzKA
Date: Fri, 19 Jul 2019 16:05:15 +0000
Message-ID: <9ed4c767655363eda88519529f1d0e368633818f.camel@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-8-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-8-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.10.98]
Content-ID: <89E3128FC878534DB68073A8159DE725@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915/dmc: Load DMC on TGL
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE4OjA5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4NCj4g
DQo+IEFkZCBTdXBwb3J0IHRvIGxvYWQgRE1DIHYyLjAyIG9uIFRHTC4NCj4gDQpSZXZpZXdlZC1i
eTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPg0KPiBTaWduZWQtb2Zm
LWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAt
LS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgNyArKysrKysrDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9jc3IuYw0KPiBpbmRleCA2ZWY3NDUzMTU4OGEuLjg2NWI5ODdkZWU4ZSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY3NyLmMNCj4gQEAgLTM5LDYgKzM5LDExIEBADQo+ICANCj4gICNkZWZp
bmUgR0VOMTJfQ1NSX01BWF9GV19TSVpFCQlJQ0xfQ1NSX01BWF9GV19TSVpFDQo+ICANCj4gKyNk
ZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzAyLmJpbiINCj4gKyNkZWZp
bmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIsIDIpDQo+ICsjZGVmaW5l
IFRHTF9DU1JfTUFYX0ZXX1NJWkUJCTB4NjAwMA0KPiArTU9EVUxFX0ZJUk1XQVJFKFRHTF9DU1Jf
UEFUSCk7DQo+ICsNCj4gICNkZWZpbmUgSUNMX0NTUl9QQVRICQkJImk5MTUvaWNsX2RtY192ZXIx
XzA3LmJpbiINCj4gICNkZWZpbmUgSUNMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9O
KDEsIDcpDQo+ICAjZGVmaW5lIElDTF9DU1JfTUFYX0ZXX1NJWkUJCTB4NjAwMA0KPiBAQCAtNjc0
LDYgKzY3OSw4IEBAIHZvaWQgaW50ZWxfY3NyX3Vjb2RlX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUNCj4gKmRldl9wcml2KQ0KPiAgCWludGVsX2Nzcl9ydW50aW1lX3BtX2dldChkZXZfcHJp
dik7DQo+ICANCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiArCQljc3It
PmZ3X3BhdGggPSBUR0xfQ1NSX1BBVEg7DQo+ICsJCWNzci0+cmVxdWlyZWRfdmVyc2lvbiA9IFRH
TF9DU1JfVkVSU0lPTl9SRVFVSVJFRDsNCj4gIAkJLyogQWxsb3cgdG8gbG9hZCBmdyB2aWEgcGFy
YW1ldGVyIHVzaW5nIHRoZSBsYXN0IGtub3duDQo+IHNpemUgKi8NCj4gIAkJY3NyLT5tYXhfZndf
c2l6ZSA9IEdFTjEyX0NTUl9NQVhfRldfU0laRTsNCj4gIAl9IGVsc2UgaWYgKElTX0dFTihkZXZf
cHJpdiwgMTEpKSB7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
