Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F01381432
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 01:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C406C6F4B4;
	Fri, 14 May 2021 23:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB2356F4B4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 23:21:15 +0000 (UTC)
IronPort-SDR: DjUj7pXmGybMEd5BUHgF8fvyJOjNYFJRzMPh1nZgyyEb9dD5y9zSTT8YxzIcNkQT2Bv/CkxrBe
 WwI7MngXqEeA==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200301745"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200301745"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:21:15 -0700
IronPort-SDR: k/3inrOaQQHl6H84E+T6OsuJcFeQ0g2njAeEdhv2nRWOvE9XMkxvZF9mVE27dx5otgirKOulQg
 9IB1/CTuZ4cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="392853750"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2021 16:21:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 14 May 2021 16:21:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 14 May 2021 16:21:14 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 14 May 2021 16:21:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/display: Nuke has_infoframe
Thread-Index: AQHXSIGcRm05D/m4ZU2U9aT5HulvY6rkFOGA
Date: Fri, 14 May 2021 23:21:14 +0000
Message-ID: <be563f07ea6ef7b5a74029da1c6325dc4c15841c.camel@intel.com>
References: <20210514052843.9456-1-jose.souza@intel.com>
In-Reply-To: <20210514052843.9456-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <F75672E1E138CD42B42822C0E748F1B6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Nuke has_infoframe
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

UGxlYXNlIGlnbm9yZSB0aGlzIHNlcmllcy4NCg0KU21hbGxlciBhbmQgYmV0dGVyIG9uZSBzZW50
OiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkwMTg0Lw0KDQpPbiBU
aHUsIDIwMjEtMDUtMTMgYXQgMjI6MjggLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3Jv
dGU6DQo+IFRoaXMgd2FzIG9ubHkgcmVkdW50YW50IGluZm9ybWF0aW9uIGhhc19oZG1pX3Npbmsg
Y2FuIGRvIHRoZSBzYW1lIGpvYi4NCj4gc2V0X2luZm9mcmFtZXMoKSBob29rcyB3aWxsIGNhbGwg
aW50ZWxfd3JpdGVfaW5mb2ZyYW1lKCkgZm9yIHRoZQ0KPiBzdXBwb3J0ZWQgaW5mb2ZyYW1lcyB0
eXBlcyBhbmQgaXQgd2lsbCBvbmx5IGJlIGVuYWJsZWQgaWYgZ2l2ZW4gdHlwZQ0KPiBpcyBzZXQg
aW4gY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhfaGRtaS5jICAgICAgIHwgMjIgKysrKysrLS0t
LS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAg
ICAgIHwgMTcgKysrKystLS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8ICA2ICsrLS0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3R5cGVzLmggICAgfCAgMyAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbXN0LmMgICB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgICB8IDEzICsrKysrLS0tLS0tDQo+ICA2IGZpbGVzIGNo
YW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDQzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2hkbWkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2hkbWkuYw0KPiBpbmRleCBiZTM1MmU5ZjBhZmMuLmYzNWRi
OTZlNjIzOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9nNHhf
aGRtaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvZzR4X2hkbWkuYw0K
PiBAQCAtMTA1LDkgKzEwNSw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2hkbWlfZ2V0X2NvbmZpZyhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlwaXBlX2NvbmZpZy0+aW5mb2ZyYW1l
cy5lbmFibGUgfD0NCj4gIAkJaW50ZWxfaGRtaV9pbmZvZnJhbWVzX2VuYWJsZWQoZW5jb2Rlciwg
cGlwZV9jb25maWcpOw0KPiAgDQo+IC0JaWYgKHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJs
ZSkNCj4gLQkJcGlwZV9jb25maWctPmhhc19pbmZvZnJhbWUgPSB0cnVlOw0KPiAtDQo+ICAJaWYg
KHRtcCAmIEhETUlfQVVESU9fRU5BQkxFKQ0KPiAgCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0g
dHJ1ZTsNCj4gIA0KPiBAQCAtMzQzLDkgKzM0MCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2Rpc2Fi
bGVfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJaW50ZWxfc2V0
X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwgUElQRV9BLCB0cnVlKTsNCj4g
IAl9DQo+ICANCj4gLQlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwNCj4gLQkJCQkg
ICAgICAgZmFsc2UsDQo+IC0JCQkJICAgICAgIG9sZF9jcnRjX3N0YXRlLCBvbGRfY29ubl9zdGF0
ZSk7DQo+ICsJZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKGVuY29kZXIsIGZhbHNlLCBvbGRfY3J0
Y19zdGF0ZSwgb2xkX2Nvbm5fc3RhdGUpOw0KPiAgDQo+ICAJaW50ZWxfZHBfZHVhbF9tb2RlX3Nl
dF90bWRzX291dHB1dChpbnRlbF9oZG1pLCBmYWxzZSk7DQo+ICB9DQo+IEBAIC0zOTAsOSArMzg1
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfaGRtaV9wcmVfZW5hYmxlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiAgDQo+ICAJaW50ZWxfaGRtaV9wcmVwYXJlKGVuY29kZXIsIHBp
cGVfY29uZmlnKTsNCj4gIA0KPiAtCWRpZ19wb3J0LT5zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLA0K
PiAtCQkJCSAgICAgICBwaXBlX2NvbmZpZy0+aGFzX2luZm9mcmFtZSwNCj4gLQkJCQkgICAgICAg
cGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiArCWRpZ19wb3J0LT5zZXRfaW5mb2ZyYW1lcyhl
bmNvZGVyLCBwaXBlX2NvbmZpZy0+aGFzX2hkbWlfc2luaywNCj4gKwkJCQkgcGlwZV9jb25maWcs
IGNvbm5fc3RhdGUpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCB2bHZfaGRtaV9wcmVfZW5h
YmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiBAQCAtNDEwLDkgKzQwNCw4
IEBAIHN0YXRpYyB2b2lkIHZsdl9oZG1pX3ByZV9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsDQo+ICAJCQkJIDB4MmIyNDVmNWYsIDB4MDAwMDIwMDAsDQo+ICAJCQkJIDB4
NTU3OGI4M2EsIDB4MmIyNDc4NzgpOw0KPiAgDQo+IC0JZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVz
KGVuY29kZXIsDQo+IC0JCQkgICAgICBwaXBlX2NvbmZpZy0+aGFzX2luZm9mcmFtZSwNCj4gLQkJ
CSAgICAgIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4gKwlkaWdfcG9ydC0+c2V0X2luZm9m
cmFtZXMoZW5jb2RlciwgcGlwZV9jb25maWctPmhhc19oZG1pX3NpbmssDQo+ICsJCQkJIHBpcGVf
Y29uZmlnLCBjb25uX3N0YXRlKTsNCj4gIA0KPiAgCWc0eF9lbmFibGVfaGRtaShzdGF0ZSwgZW5j
b2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUpOw0KPiAgDQo+IEBAIC00ODcsOSArNDgwLDgg
QEAgc3RhdGljIHZvaWQgY2h2X2hkbWlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwNCj4gIAkvKiBVc2UgODAwbVYtMGRCICovDQo+ICAJY2h2X3NldF9waHlfc2ln
bmFsX2xldmVsKGVuY29kZXIsIHBpcGVfY29uZmlnLCAxMjgsIDEwMiwgZmFsc2UpOw0KPiAgDQo+
IC0JZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKGVuY29kZXIsDQo+IC0JCQkgICAgICBwaXBlX2Nv
bmZpZy0+aGFzX2luZm9mcmFtZSwNCj4gLQkJCSAgICAgIHBpcGVfY29uZmlnLCBjb25uX3N0YXRl
KTsNCj4gKwlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwgcGlwZV9jb25maWctPmhh
c19oZG1pX3NpbmssDQo+ICsJCQkJIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsNCj4gIA0KPiAg
CWc0eF9lbmFibGVfaGRtaShzdGF0ZSwgZW5jb2RlciwgcGlwZV9jb25maWcsIGNvbm5fc3RhdGUp
Ow0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRl
eCBiN2EyZmNlNjg0YzkuLjViYzU1MjhmMzA5MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC0yNzIyLDkgKzI3MjIsOCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLA0KPiAgDQo+ICAJaW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKGVuY29kZXIsIGNydGNf
c3RhdGUpOw0KPiAgDQo+IC0JZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKGVuY29kZXIsDQo+IC0J
CQkJIGNydGNfc3RhdGUtPmhhc19pbmZvZnJhbWUsDQo+IC0JCQkJIGNydGNfc3RhdGUsIGNvbm5f
c3RhdGUpOw0KPiArCWRpZ19wb3J0LT5zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLCBjcnRjX3N0YXRl
LT5oYXNfaGRtaV9zaW5rLCBjcnRjX3N0YXRlLA0KPiArCQkJCSBjb25uX3N0YXRlKTsNCj4gIH0N
Cj4gIA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX3ByZV9lbmFibGUoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsDQo+IEBAIC0yNzY1LDkgKzI3NjQsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
IAkJLyogRklYTUUgcHJlY29tcHV0ZSBldmVyeXRoaW5nIHByb3Blcmx5ICovDQo+ICAJCS8qIEZJ
WE1FIGhvdyBkbyB3ZSB0dXJuIGluZm9mcmFtZXMgb2ZmIGFnYWluPyAqLw0KPiAgCQlpZiAoZGln
X3BvcnQtPmxzcGNvbi5hY3RpdmUgJiYgZGlnX3BvcnQtPmRwLmhhc19oZG1pX3NpbmspDQo+IC0J
CQlkaWdfcG9ydC0+c2V0X2luZm9mcmFtZXMoZW5jb2RlciwNCj4gLQkJCQkJCSBjcnRjX3N0YXRl
LT5oYXNfaW5mb2ZyYW1lLA0KPiAtCQkJCQkJIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOw0KPiAr
CQkJZGlnX3BvcnQtPnNldF9pbmZvZnJhbWVzKGVuY29kZXIsIHRydWUsIGNydGNfc3RhdGUsDQo+
ICsJCQkJCQkgY29ubl9zdGF0ZSk7DQo+ICAJfQ0KPiAgfQ0KPiAgDQo+IEBAIC0yODEzLDggKzI4
MTEsOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9f
cGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsNCj4gIA0KPiAgCWlmICghaXNfbXN0KQ0KPiAt
CQlpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcyhlbmNvZGVyLCBmYWxzZSwNCj4gLQkJCQkJb2xkX2Ny
dGNfc3RhdGUsIG9sZF9jb25uX3N0YXRlKTsNCj4gKwkJaW50ZWxfZHBfc2V0X2luZm9mcmFtZXMo
ZW5jb2RlciwgZmFsc2UsIG9sZF9jcnRjX3N0YXRlLA0KPiArCQkJCQlvbGRfY29ubl9zdGF0ZSk7
DQo+ICANCj4gIAkvKg0KPiAgCSAqIFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlzYWJsaW5nIHRo
ZSBwb3J0LCBvdGhlcndpc2Ugd2UgZW5kDQo+IEBAIC0zNTY5LDkgKzM1NjcsNiBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kZGlfcmVhZF9mdW5jX2N0bChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCj4gIAkJcGlwZV9jb25maWctPmluZm9mcmFtZXMuZW5hYmxlIHw9DQo+ICAJCQlpbnRlbF9o
ZG1pX2luZm9mcmFtZXNfZW5hYmxlZChlbmNvZGVyLCBwaXBlX2NvbmZpZyk7DQo+ICANCj4gLQkJ
aWYgKHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSkNCj4gLQkJCXBpcGVfY29uZmlnLT5o
YXNfaW5mb2ZyYW1lID0gdHJ1ZTsNCj4gLQ0KPiAgCQlpZiAodGVtcCAmIFRSQU5TX0RESV9IRE1J
X1NDUkFNQkxJTkcpDQo+ICAJCQlwaXBlX2NvbmZpZy0+aGRtaV9zY3JhbWJsaW5nID0gdHJ1ZTsN
Cj4gIAkJaWYgKHRlbXAgJiBUUkFOU19ERElfSElHSF9UTURTX0NIQVJfUkFURSkNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggMGMyYjE5
NDAwNmY4Li4xYmU4OGMzYTBlZWEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC03NTk0LDkgKzc1OTQsOCBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpw
aXBlX2NvbmZpZywNCj4gIAl9DQo+ICANCj4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwN
Cj4gLQkJICAgICJhdWRpbzogJWksIGluZm9mcmFtZXM6ICVpLCBpbmZvZnJhbWVzIGVuYWJsZWQ6
IDB4JXhcbiIsDQo+IC0JCSAgICBwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvLCBwaXBlX2NvbmZpZy0+
aGFzX2luZm9mcmFtZSwNCj4gLQkJICAgIHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSk7
DQo+ICsJCSAgICAiYXVkaW86ICVpLCBpbmZvZnJhbWVzIGVuYWJsZWQ6IDB4JXhcbiIsDQo+ICsJ
CSAgICBwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvLCBwaXBlX2NvbmZpZy0+aW5mb2ZyYW1lcy5lbmFi
bGUpOw0KPiAgDQo+ICAJaWYgKHBpcGVfY29uZmlnLT5pbmZvZnJhbWVzLmVuYWJsZSAmDQo+ICAJ
ICAgIGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX1BBQ0tFVF9UWVBFX0dFTkVSQUxf
Q09OVFJPTCkpDQo+IEBAIC04NDk4LDcgKzg0OTcsNiBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21w
YXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gIA0K
PiAgCVBJUEVfQ09ORl9DSEVDS19CT09MKGhkbWlfc2NyYW1ibGluZyk7DQo+ICAJUElQRV9DT05G
X0NIRUNLX0JPT0woaGRtaV9oaWdoX3RtZHNfY2xvY2tfcmF0aW8pOw0KPiAtCVBJUEVfQ09ORl9D
SEVDS19CT09MKGhhc19pbmZvZnJhbWUpOw0KPiAgCS8qIEZJWE1FIGRvIHRoZSByZWFkb3V0IHBy
b3Blcmx5IGFuZCBnZXQgcmlkIG9mIHRoaXMgcXVpcmsgKi8NCj4gIAlpZiAoIVBJUEVfQ09ORl9R
VUlSSyhQSVBFX0NPTkZJR19RVUlSS19CSUdKT0lORVJfU0xBVkUpKQ0KPiAgCQlQSVBFX0NPTkZf
Q0hFQ0tfQk9PTChmZWNfZW5hYmxlKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggOWMwYWRmYzYwYzZmLi42Njlj
NWQ4YTIxMzEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC05NTIsOSArOTUyLDYgQEAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgew0KPiAgCSAqIGJldHdlZW4gcGNoIGVuY29kZXJzIGFuZCBjcHUgZW5jb2Rl
cnMuICovDQo+ICAJYm9vbCBoYXNfcGNoX2VuY29kZXI7DQo+ICANCj4gLQkvKiBBcmUgd2Ugc2Vu
ZGluZyBpbmZvZnJhbWVzIG9uIHRoZSBhdHRhY2hlZCBwb3J0ICovDQo+IC0JYm9vbCBoYXNfaW5m
b2ZyYW1lOw0KPiAtDQo+ICAJLyogQ1BVIFRyYW5zY29kZXIgZm9yIHRoZSBwaXBlLiBDdXJyZW50
bHkgdGhpcyBjYW4gb25seSBkaWZmZXIgZnJvbSB0aGUNCj4gIAkgKiBwaXBlIG9uIEhhc3dlbGwg
YW5kIGxhdGVyICh3aGVyZSB3ZSBoYXZlIGEgc3BlY2lhbCBlRFAgdHJhbnNjb2RlcikNCj4gIAkg
KiBhbmQgQnJveHRvbiAod2hlcmUgd2UgaGF2ZSBzcGVjaWFsIERTSSB0cmFuc2NvZGVycykuICov
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21z
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBpbmRl
eCAzMzJkMmY5ZmRhNWMuLjFlYjU0ZjhlZDUxYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IEBAIC00MzUsOCArNDM1LDggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfbXN0X3Bvc3RfZGlzYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gIAkgKiB0aGUgdHJhbnNjb2RlciBjbG9jayBzZWxlY3QgaXMgc2V0IHRvIG5v
bmUuDQo+ICAJICovDQo+ICAJaWYgKGxhc3RfbXN0X3N0cmVhbSkNCj4gLQkJaW50ZWxfZHBfc2V0
X2luZm9mcmFtZXMoJmRpZ19wb3J0LT5iYXNlLCBmYWxzZSwNCj4gLQkJCQkJb2xkX2NydGNfc3Rh
dGUsIE5VTEwpOw0KPiArCQlpbnRlbF9kcF9zZXRfaW5mb2ZyYW1lcygmZGlnX3BvcnQtPmJhc2Us
IGZhbHNlLCBvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJb2xkX2Nvbm5fc3RhdGUpOw0KPiAgCS8q
DQo+ICAJICogRnJvbSBUR0wgc3BlYzogIklmIG11bHRpLXN0cmVhbSBzbGF2ZSB0cmFuc2NvZGVy
OiBDb25maWd1cmUNCj4gIAkgKiBUcmFuc2NvZGVyIENsb2NrIFNlbGVjdCB0byBkaXJlY3Qgbm8g
Y2xvY2sgdG8gdGhlIHRyYW5zY29kZXIiDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jDQo+IGluZGV4IDRhMWIyZDg2M2IwYy4uNGI5NzA1ODcwNjdkIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBAQCAtNzEyLDcg
KzcxMiw3IEBAIGludGVsX2hkbWlfY29tcHV0ZV9hdmlfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLA0KPiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IgPSBj
b25uX3N0YXRlLT5jb25uZWN0b3I7DQo+ICAJaW50IHJldDsNCj4gIA0KPiAtCWlmICghY3J0Y19z
dGF0ZS0+aGFzX2luZm9mcmFtZSkNCj4gKwlpZiAoIWNydGNfc3RhdGUtPmhhc19oZG1pX3Npbmsp
DQo+ICAJCXJldHVybiB0cnVlOw0KPiAgDQo+ICAJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFi
bGUgfD0NCj4gQEAgLTc2Niw3ICs3NjYsNyBAQCBpbnRlbF9oZG1pX2NvbXB1dGVfc3BkX2luZm9m
cmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIAlzdHJ1Y3QgaGRtaV9zcGRf
aW5mb2ZyYW1lICpmcmFtZSA9ICZjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLnNwZC5zcGQ7DQo+ICAJ
aW50IHJldDsNCj4gIA0KPiAtCWlmICghY3J0Y19zdGF0ZS0+aGFzX2luZm9mcmFtZSkNCj4gKwlp
ZiAoIWNydGNfc3RhdGUtPmhhc19oZG1pX3NpbmspDQo+ICAJCXJldHVybiB0cnVlOw0KPiAgDQo+
ICAJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUgfD0NCj4gQEAgLTc5Niw3ICs3OTYsNyBA
QCBpbnRlbF9oZG1pX2NvbXB1dGVfaGRtaV9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsDQo+ICAJCSZjb25uX3N0YXRlLT5jb25uZWN0b3ItPmRpc3BsYXlfaW5mbzsNCj4g
IAlpbnQgcmV0Ow0KPiAgDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lIHx8ICFp
bmZvLT5oYXNfaGRtaV9pbmZvZnJhbWUpDQo+ICsJaWYgKCFjcnRjX3N0YXRlLT5oYXNfaGRtaV9z
aW5rIHx8ICFpbmZvLT5oYXNfaGRtaV9pbmZvZnJhbWUpDQo+ICAJCXJldHVybiB0cnVlOw0KPiAg
DQo+ICAJY3J0Y19zdGF0ZS0+aW5mb2ZyYW1lcy5lbmFibGUgfD0NCj4gQEAgLTgyNyw3ICs4Mjcs
NyBAQCBpbnRlbF9oZG1pX2NvbXB1dGVfZHJtX2luZm9mcmFtZShzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpIDwgMTApDQo+ICAJCXJl
dHVybiB0cnVlOw0KPiAgDQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lKQ0KPiAr
CWlmICghY3J0Y19zdGF0ZS0+aGFzX2hkbWlfc2luaykNCj4gIAkJcmV0dXJuIHRydWU7DQo+ICAN
Cj4gIAlpZiAoIWNvbm5fc3RhdGUtPmhkcl9vdXRwdXRfbWV0YWRhdGEpDQo+IEBAIC0xMDE4LDcg
KzEwMTgsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZG1pX2NvbXB1dGVfZ2NwX2luZm9mcmFtZShz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gIA0KPiAt
CWlmIChJU19HNFgoZGV2X3ByaXYpIHx8ICFjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lKQ0KPiAr
CWlmIChJU19HNFgoZGV2X3ByaXYpIHx8ICFjcnRjX3N0YXRlLT5oYXNfaGRtaV9zaW5rKQ0KPiAg
CQlyZXR1cm47DQo+ICANCj4gIAljcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSB8PQ0KPiBA
QCAtMjE3Miw5ICsyMTcyLDYgQEAgaW50IGludGVsX2hkbWlfY29tcHV0ZV9jb25maWcoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJcGlwZV9jb25maWctPmhhc19oZG1pX3Npbmsg
PSBpbnRlbF9oYXNfaGRtaV9zaW5rKGludGVsX2hkbWksDQo+ICAJCQkJCQkJIGNvbm5fc3RhdGUp
Ow0KPiAgDQo+IC0JaWYgKHBpcGVfY29uZmlnLT5oYXNfaGRtaV9zaW5rKQ0KPiAtCQlwaXBlX2Nv
bmZpZy0+aGFzX2luZm9mcmFtZSA9IHRydWU7DQo+IC0NCj4gIAlpZiAoYWRqdXN0ZWRfbW9kZS0+
ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0RCTENMSykNCj4gIAkJcGlwZV9jb25maWctPnBpeGVsX211
bHRpcGxpZXIgPSAyOw0KPiAgDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
