Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C75D93B68B8
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 20:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CDC26E512;
	Mon, 28 Jun 2021 18:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AA8B6E512;
 Mon, 28 Jun 2021 18:53:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="195310143"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="195310143"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 11:53:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="407851781"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga006.jf.intel.com with ESMTP; 28 Jun 2021 11:53:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 19:53:06 +0100
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2242.008;
 Mon, 28 Jun 2021 11:53:05 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: =?utf-8?B?VGhvbWFzIEhlbGxzdHLDtm0=?= <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/5] drm/i915/gem: Introduce a selftest
 for the gem object migrate functionality
Thread-Index: AQHXbCx2h4vTIXdAe0CmFOHUE8JUOqspxM0Q
Date: Mon, 28 Jun 2021 18:53:05 +0000
Message-ID: <1cd06e51484c44a985e4a467007d1752@intel.com>
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
 <20210628144626.76126-3-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210628144626.76126-3-thomas.hellstrom@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.0.76
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/gem: Introduce a selftest
 for the gem object migrate functionality
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPlRob21hcyBIZWxs
c3Ryw7ZtDQo+U2VudDogTW9uZGF5LCBKdW5lIDI4LCAyMDIxIDEwOjQ2IEFNDQo+VG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj5DYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwu
Y29tPjsgQXVsZCwgTWF0dGhldw0KPjxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPlN1YmplY3Q6
IFtJbnRlbC1nZnhdIFtQQVRDSCB2MyAyLzVdIGRybS9pOTE1L2dlbTogSW50cm9kdWNlIGEgc2Vs
ZnRlc3QgZm9yIHRoZQ0KPmdlbSBvYmplY3QgbWlncmF0ZSBmdW5jdGlvbmFsaXR5DQo+DQo+RnJv
bTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPg0KPkEgc2VsZnRlc3Qg
Zm9yIHRoZSBnZW0gb2JqZWN0IG1pZ3JhdGUgZnVuY3Rpb25hbGl0eS4gU2xpZ2h0bHkgYWRhcHRl
ZA0KPmZyb20gdGhlIG9yaWdpbmFsIGJ5IE1hdHRoZXcgdG8gdGhlIG5ldyBpbnRlcmZhY2UgYW5k
IG5ldyBmaWxsIGJsaXQNCj5jb2RlLg0KPg0KPkNvLWRldmVsb3BlZC1ieTogVGhvbWFzIEhlbGxz
dHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPg0KPlNpZ25lZC1vZmYtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4NCj5T
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+DQo+LS0t
DQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYyAgICB8ICAgMSAr
DQo+IC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYyB8IDIzNw0K
PisrKysrKysrKysrKysrKysrKw0KPiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9z
ZWxmdGVzdHMuaCAgfCAgIDEgKw0KPiAzIGZpbGVzIGNoYW5nZWQsIDIzOSBpbnNlcnRpb25zKCsp
DQo+IGNyZWF0ZSBtb2RlIDEwMDY0NA0KPmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fbWlncmF0ZS5jDQo+DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYw0KPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5jDQo+aW5kZXggMWMxOGJlMDY3YjU4Li5mZjE0N2ZkNTk4NzQgMTAwNjQ0
DQo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jDQo+QEAgLTY0OSw2
ICs2NDksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9nZW1fb2JqZWN0X2Z1bmNzDQo+aTkx
NV9nZW1fb2JqZWN0X2Z1bmNzID0gew0KPiAjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
U0VMRlRFU1QpDQo+ICNpbmNsdWRlICJzZWxmdGVzdHMvaHVnZV9nZW1fb2JqZWN0LmMiDQo+ICNp
bmNsdWRlICJzZWxmdGVzdHMvaHVnZV9wYWdlcy5jIg0KPisjaW5jbHVkZSAic2VsZnRlc3RzL2k5
MTVfZ2VtX21pZ3JhdGUuYyINCj4gI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3Qu
YyINCj4gI2luY2x1ZGUgInNlbGZ0ZXN0cy9pOTE1X2dlbV9jb2hlcmVuY3kuYyINCj4gI2VuZGlm
DQo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fbWlncmF0ZS5jDQo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVf
Z2VtX21pZ3JhdGUuYw0KPm5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+aW5kZXggMDAwMDAwMDAwMDAw
Li5hNDM3YjY2ZjY0ZDkNCj4tLS0gL2Rldi9udWxsDQo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9taWdyYXRlLmMNCj5AQCAtMCwwICsxLDIzNyBAQA0K
PisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+Ky8qDQo+KyAqIENvcHlyaWdodCDC
qSAyMDIwLTIwMjEgSW50ZWwgQ29ycG9yYXRpb24NCj4rICovDQo+Kw0KPisjaW5jbHVkZSAiZ3Qv
aW50ZWxfbWlncmF0ZS5oIg0KPisNCj4rc3RhdGljIGludCBpZ3Rfc21lbV9jcmVhdGVfbWlncmF0
ZSh2b2lkICphcmcpDQo+K3sNCj4rCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBhcmc7DQo+KwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Ow0KPisJc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iajsNCj4rCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7DQo+KwlpbnQg
ZXJyID0gMDsNCj4rDQo+KwkvKiBTd2l0Y2ggb2JqZWN0IGJhY2tpbmctc3RvcmUgb24gY3JlYXRl
ICovDQo+KwlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW0oaTkxNSwgUEFHRV9TSVpF
LCAwKTsNCj4rCWlmIChJU19FUlIob2JqKSkNCj4rCQlyZXR1cm4gUFRSX0VSUihvYmopOw0KPisN
Cj4rCWZvcl9pOTE1X2dlbV93dygmd3csIGVyciwgdHJ1ZSkgew0KPisJCWVyciA9IGk5MTVfZ2Vt
X29iamVjdF9sb2NrKG9iaiwgJnd3KTsNCj4rCQlpZiAoZXJyKQ0KPisJCQljb250aW51ZTsNCj4r
DQo+KwkJaWYgKCFpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUob2JqLA0KPklOVEVMX1JFR0lP
Tl9TTUVNKSkgew0KPisJCQllcnIgPSAtRUlOVkFMOw0KPisJCQljb250aW51ZTsNCj4rCQl9DQo+
Kw0KPisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9taWdyYXRlKG9iaiwgJnd3LA0KPklOVEVMX1JF
R0lPTl9TTUVNKTsNCj4rCQlpZiAoZXJyKQ0KPisJCQljb250aW51ZTsNCj4rDQo+KwkJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9wYWdlcyhvYmopOw0KPisJCWlmIChlcnIpDQo+KwkJCWNvbnRp
bnVlOw0KPisNCj4rCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKG9iaiwNCj5JTlRF
TF9SRUdJT05fTE1FTSkpDQo+KwkJCWVyciA9IC1FSU5WQUw7DQo+Kw0KPisJCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9wYWdlcyhvYmopOw0KPisJfQ0KPisJaTkxNV9nZW1fb2JqZWN0X3B1dChvYmop
Ow0KPisNCj4rCXJldHVybiBlcnI7DQo+K30NCj4rDQo+K3N0YXRpYyBpbnQgaWd0X2xtZW1fY3Jl
YXRlX21pZ3JhdGUodm9pZCAqYXJnKQ0KPit7DQo+KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJn
Ow0KPisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsNCj4rCXN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7DQo+KwlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHd3
Ow0KPisJaW50IGVyciA9IDA7DQo+Kw0KPisJLyogU3dpdGNoIG9iamVjdCBiYWNraW5nLXN0b3Jl
IG9uIGNyZWF0ZSAqLw0KPisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbShpOTE1
LCBQQUdFX1NJWkUpOw0KPisJaWYgKElTX0VSUihvYmopKQ0KPisJCXJldHVybiBQVFJfRVJSKG9i
aik7DQo+Kw0KPisJZm9yX2k5MTVfZ2VtX3d3KCZ3dywgZXJyLCB0cnVlKSB7DQo+KwkJZXJyID0g
aTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqLCAmd3cpOw0KPisJCWlmIChlcnIpDQo+KwkJCWNvbnRp
bnVlOw0KPisNCj4rCQlpZiAoIWk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZShvYmosDQo+SU5U
RUxfUkVHSU9OX0xNRU0pKSB7DQo+KwkJCWVyciA9IC1FSU5WQUw7DQo+KwkJCWNvbnRpbnVlOw0K
PisJCX0NCj4rDQo+KwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCAmd3csDQo+
SU5URUxfUkVHSU9OX0xNRU0pOw0KPisJCWlmIChlcnIpDQo+KwkJCWNvbnRpbnVlOw0KPisNCj4r
CQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7DQo+KwkJaWYgKGVycikNCj4r
CQkJY29udGludWU7DQo+Kw0KPisJCWlmIChpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3JhdGUob2Jq
LA0KPklOVEVMX1JFR0lPTl9TTUVNKSkNCj4rCQkJZXJyID0gLUVJTlZBTDsNCj4rDQo+KwkJaTkx
NV9nZW1fb2JqZWN0X3VucGluX3BhZ2VzKG9iaik7DQo+Kwl9DQo+KwlpOTE1X2dlbV9vYmplY3Rf
cHV0KG9iaik7DQo+Kw0KPisJcmV0dXJuIGVycjsNCj4rfQ0KPisNCj4rc3RhdGljIGludCBsbWVt
X3BhZ2VzX21pZ3JhdGVfb25lKHN0cnVjdCBpOTE1X2dlbV93d19jdHggKnd3LA0KPisJCQkJICBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQ0KPit7DQo+KwlpbnQgZXJyOw0KPisNCj4r
CWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgd3cpOw0KPisJaWYgKGVycikNCj4rCQly
ZXR1cm4gZXJyOw0KPisNCj4rCWVyciA9IGk5MTVfZ2VtX29iamVjdF93YWl0KG9iaiwNCj4rCQkJ
CSAgIEk5MTVfV0FJVF9JTlRFUlJVUFRJQkxFIHwNCj4rCQkJCSAgIEk5MTVfV0FJVF9QUklPUklU
WSB8DQo+KwkJCQkgICBJOTE1X1dBSVRfQUxMLA0KPisJCQkJICAgTUFYX1NDSEVEVUxFX1RJTUVP
VVQpOw0KPisJaWYgKGVycikNCj4rCQlyZXR1cm4gZXJyOw0KPisNCj4rCWlmIChpOTE1X2dlbV9v
YmplY3RfaXNfbG1lbShvYmopKSB7DQo+KwkJaWYgKCFpOTE1X2dlbV9vYmplY3RfY2FuX21pZ3Jh
dGUob2JqLA0KPklOVEVMX1JFR0lPTl9TTUVNKSkgew0KDQpJIGRvbid0IHNlZSBhbnkgIHRlc3Rp
bmcgb2YgdGhlIHBhcmFtZXRlciBudW1fYWxsb3dlZC4NCg0KSXMgdGhhdCBkb25lIHNvbWV3aGVy
ZSBlbHNlPw0KDQpNaWtlDQoNCj4rCQkJcHJfZXJyKCJvYmplY3QgY2FuJ3QgbWlncmF0ZSB0byBz
bWVtLlxuIik7DQo+KwkJCXJldHVybiAtRUlOVkFMOw0KPisJCX0NCj4rDQo+KwkJZXJyID0gaTkx
NV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCB3dywNCj5JTlRFTF9SRUdJT05fU01FTSk7DQo+KwkJ
aWYgKGVycikgew0KPisJCQlwcl9lcnIoIk9iamVjdCBmYWlsZWQgbWlncmF0aW9uIHRvIHNtZW1c
biIpOw0KPisJCQlpZiAoZXJyKQ0KPisJCQkJcmV0dXJuIGVycjsNCj4rCQl9DQo+Kw0KPisJCWlm
IChpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopKSB7DQo+KwkJCXByX2Vycigib2JqZWN0IHN0
aWxsIGJhY2tlZCBieSBsbWVtXG4iKTsNCj4rCQkJZXJyID0gLUVJTlZBTDsNCj4rCQl9DQo+Kw0K
PisJCWlmICghaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKSB7DQo+KwkJCXBy
X2Vycigib2JqZWN0IG5vdCBiYWNrZWQgYnkgc3RydWN0IHBhZ2VcbiIpOw0KPisJCQllcnIgPSAt
RUlOVkFMOw0KPisJCX0NCj4rDQo+Kwl9IGVsc2Ugew0KPisJCWlmICghaTkxNV9nZW1fb2JqZWN0
X2Nhbl9taWdyYXRlKG9iaiwNCj5JTlRFTF9SRUdJT05fTE1FTSkpIHsNCj4rCQkJcHJfZXJyKCJv
YmplY3QgY2FuJ3QgbWlncmF0ZSB0byBsbWVtLlxuIik7DQo+KwkJCXJldHVybiAtRUlOVkFMOw0K
PisJCX0NCj4rDQo+KwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCB3dywNCj5J
TlRFTF9SRUdJT05fTE1FTSk7DQo+KwkJaWYgKGVycikgew0KPisJCQlwcl9lcnIoIk9iamVjdCBm
YWlsZWQgbWlncmF0aW9uIHRvIGxtZW1cbiIpOw0KPisJCQlpZiAoZXJyKQ0KPisJCQkJcmV0dXJu
IGVycjsNCj4rCQl9DQo+Kw0KPisJCWlmIChpOTE1X2dlbV9vYmplY3RfaGFzX3N0cnVjdF9wYWdl
KG9iaikpIHsNCj4rCQkJcHJfZXJyKCJvYmplY3Qgc3RpbGwgYmFja2VkIGJ5IHN0cnVjdCBwYWdl
XG4iKTsNCj4rCQkJZXJyID0gLUVJTlZBTDsNCj4rCQl9DQo+Kw0KPisJCWlmICghaTkxNV9nZW1f
b2JqZWN0X2lzX2xtZW0ob2JqKSkgew0KPisJCQlwcl9lcnIoIm9iamVjdCBub3QgYmFja2VkIGJ5
IGxtZW1cbiIpOw0KPisJCQllcnIgPSAtRUlOVkFMOw0KPisJCX0NCj4rCX0NCj4rDQo+KwlyZXR1
cm4gZXJyOw0KPit9DQo+Kw0KPitzdGF0aWMgaW50IGlndF9sbWVtX3BhZ2VzX21pZ3JhdGUodm9p
ZCAqYXJnKQ0KPit7DQo+KwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gYXJnOw0KPisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsNCj4rCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmo7DQo+KwlzdHJ1Y3QgaTkxNV9nZW1fd3dfY3R4IHd3Ow0KPisJc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnE7DQo+KwlpbnQgZXJyOw0KPisJaW50IGk7DQo+Kw0KPisJLyogRnJvbSBM
TUVNIHRvIHNobWVtIGFuZCBiYWNrIGFnYWluICovDQo+Kw0KPisJb2JqID0gaTkxNV9nZW1fb2Jq
ZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIFNaXzJNLCAwKTsNCj4rCWlmIChJU19FUlIob2JqKSkNCj4r
CQlyZXR1cm4gUFRSX0VSUihvYmopOw0KPisNCj4rCWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2Nr
KG9iaiwgTlVMTCk7DQo+KwlpZiAoZXJyKQ0KPisJCWdvdG8gb3V0X3B1dDsNCj4rDQo+KwllcnIg
PSBfX19faTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlcyhvYmopOw0KPisJaWYgKGVycikgew0KPisJ
CWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsNCj4rCQlnb3RvIG91dF9wdXQ7DQo+Kwl9DQo+
Kw0KPisJZXJyID0gaW50ZWxfY29udGV4dF9taWdyYXRlX2NsZWFyKGd0LT5taWdyYXRlLmNvbnRl
eHQsIE5VTEwsDQo+KwkJCQkJICBvYmotPm1tLnBhZ2VzLT5zZ2wsIG9iai0NCj4+Y2FjaGVfbGV2
ZWwsDQo+KwkJCQkJICBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShvYmopLA0KPisJCQkJCSAgMCwg
JnJxKTsNCj4rCWlmIChycSkgew0KPisJCWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKG9iai0+YmFz
ZS5yZXN2LCAmcnEtPmZlbmNlKTsNCj4rCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsNCj4rCX0NCj4r
CWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsNCj4rCWlmIChlcnIpDQo+KwkJZ290byBvdXRf
cHV0Ow0KPisNCj4rCWZvciAoaSA9IDE7IGkgPD0gNDsgKytpKSB7DQo+KwkJZm9yX2k5MTVfZ2Vt
X3d3KCZ3dywgZXJyLCB0cnVlKSB7DQo+KwkJCWVyciA9IGxtZW1fcGFnZXNfbWlncmF0ZV9vbmUo
Jnd3LCBvYmopOw0KPisJCQlpZiAoZXJyKQ0KPisJCQkJY29udGludWU7DQo+Kw0KPisJCQllcnIg
PSBpOTE1X2dlbV9vYmplY3Rfd2FpdF9taWdyYXRpb24ob2JqLCB0cnVlKTsNCj4rCQkJaWYgKGVy
cikNCj4rCQkJCWNvbnRpbnVlOw0KPisNCj4rCQkJZXJyID0gaW50ZWxfbWlncmF0ZV9jbGVhcigm
Z3QtPm1pZ3JhdGUsICZ3dywgTlVMTCwNCj4rCQkJCQkJICBvYmotPm1tLnBhZ2VzLT5zZ2wsDQo+
KwkJCQkJCSAgb2JqLT5jYWNoZV9sZXZlbCwNCj4rDQo+aTkxNV9nZW1fb2JqZWN0X2lzX2xtZW0o
b2JqKSwNCj4rCQkJCQkJICAweGRlYWRiZWFmLCAmcnEpOw0KPisJCQlpZiAocnEpIHsNCj4rCQkJ
CWRtYV9yZXN2X2FkZF9leGNsX2ZlbmNlKG9iai0+YmFzZS5yZXN2LA0KPisJCQkJCQkJJnJxLT5m
ZW5jZSk7DQo+KwkJCQlpOTE1X3JlcXVlc3RfcHV0KHJxKTsNCj4rCQkJfQ0KPisJCX0NCj4rCQlp
ZiAoZXJyKQ0KPisJCQlicmVhazsNCj4rCX0NCj4rb3V0X3B1dDoNCj4rCWk5MTVfZ2VtX29iamVj
dF9wdXQob2JqKTsNCj4rDQo+KwlyZXR1cm4gZXJyOw0KPit9DQo+Kw0KPitpbnQgaTkxNV9nZW1f
bWlncmF0ZV9saXZlX3NlbGZ0ZXN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4r
ew0KPisJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsNCj4rCQlT
VUJURVNUKGlndF9zbWVtX2NyZWF0ZV9taWdyYXRlKSwNCj4rCQlTVUJURVNUKGlndF9sbWVtX2Ny
ZWF0ZV9taWdyYXRlKSwNCj4rCQlTVUJURVNUKGlndF9sbWVtX3BhZ2VzX21pZ3JhdGUpLA0KPisJ
fTsNCj4rDQo+KwlpZiAoIUhBU19MTUVNKGk5MTUpKQ0KPisJCXJldHVybiAwOw0KPisNCj4rCXJl
dHVybiBpbnRlbF9ndF9saXZlX3N1YnRlc3RzKHRlc3RzLCAmaTkxNS0+Z3QpOw0KPit9DQo+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmgNCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRl
c3RzLmgNCj5pbmRleCBhNjgxOTdjZjEwNDQuLmUyZmQxYjYxYWY3MSAxMDA2NDQNCj4tLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oDQo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaA0K
PkBAIC00MCw2ICs0MCw3IEBAIHNlbGZ0ZXN0KGh1Z2VwYWdlcywNCj5pOTE1X2dlbV9odWdlX3Bh
Z2VfbGl2ZV9zZWxmdGVzdHMpDQo+IHNlbGZ0ZXN0KGdlbV9jb250ZXh0cywgaTkxNV9nZW1fY29u
dGV4dF9saXZlX3NlbGZ0ZXN0cykNCj4gc2VsZnRlc3QoZ2VtX2V4ZWNidWYsIGk5MTVfZ2VtX2V4
ZWNidWZmZXJfbGl2ZV9zZWxmdGVzdHMpDQo+IHNlbGZ0ZXN0KGNsaWVudCwgaTkxNV9nZW1fY2xp
ZW50X2JsdF9saXZlX3NlbGZ0ZXN0cykNCj4rc2VsZnRlc3QoZ2VtX21pZ3JhdGUsIGk5MTVfZ2Vt
X21pZ3JhdGVfbGl2ZV9zZWxmdGVzdHMpDQo+IHNlbGZ0ZXN0KHJlc2V0LCBpbnRlbF9yZXNldF9s
aXZlX3NlbGZ0ZXN0cykNCj4gc2VsZnRlc3QobWVtb3J5X3JlZ2lvbiwgaW50ZWxfbWVtb3J5X3Jl
Z2lvbl9saXZlX3NlbGZ0ZXN0cykNCj4gc2VsZnRlc3QoaGFuZ2NoZWNrLCBpbnRlbF9oYW5nY2hl
Y2tfbGl2ZV9zZWxmdGVzdHMpDQo+LS0NCj4yLjMxLjENCj4NCj5fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPkludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj5J
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+aHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
