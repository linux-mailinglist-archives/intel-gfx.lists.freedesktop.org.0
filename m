Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56939464C50
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 12:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D8606EA37;
	Wed,  1 Dec 2021 11:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5080F6EA37
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 11:04:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236255646"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236255646"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 03:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="602062965"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2021 03:04:27 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 11:04:25 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2308.020;
 Wed, 1 Dec 2021 11:04:25 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 15/20] drm/i915/fbc: Disable FBC fully on
 FIFO underrun
Thread-Index: AQHX4Se2DYjsuPwC/0CukiGhNOoueqwdg/xQ
Date: Wed, 1 Dec 2021 11:04:25 +0000
Message-ID: <6834053978894376bfe6e680f3c23218@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-16-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-16-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 15/20] drm/i915/fbc: Disable FBC fully on
 FIFO underrun
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogV2VkbmVzZGF5LCBOb3ZlbWJlciAyNCwgMjAyMSAxOjM3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAxNS8yMF0gZHJtL2k5MTUvZmJjOiBEaXNhYmxlIEZCQyBmdWxseSBvbiBGSUZPDQo+
IHVuZGVycnVuDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5IGEgRklGTyB1bmRlcnJ1biBqdXN0IGNhdXNl
cyBGQkMgdG8gYmUgZGVhY3RpdmF0ZWQsIGFuZCBsYXRlciBjaGVja3MNCj4gdGhlbiBwcmV2ZW50
IGl0IGZyb20gYmVpbmcgcmVhY3RpdmF0ZWQuIFdlIGNhbiBzaW1waWZ5IG91ciBsaXZlcyBhIGJp
dCBieSBsb2dpY2FsbHkNCj4gZGlzYWJsaW5nIEZCQyBvbiBGSUZPIHVuZGVycnVuYS4gVGhpcyBh
dm9pZHMgdGhlIGZ1bm55IGludGVybWVkaWF0ZSBzdGF0ZSB3aGVyZQ0KPiBGQkMgaXMgbG9naWNh
bGx5IGVuYWJsZWQgYnV0IGNhbid0IGFjdHVhbGx5IGJlIGFjdGl2YXRlZC4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDI5ICsr
KysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgMjEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gaW5kZXggNjE2YWI5NTc2NmIyLi43NGJhNTRkNzBlNTcgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtOTk0LDE2ICs5
OTQsNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2ZiX3NpemVfY2hhbmdlZChzdHJ1Y3QgaW50
ZWxfZmJjDQo+ICpmYmMpDQo+ICAJcmV0dXJuIGZiYy0+c3RhdGVfY2FjaGUuY2ZiX3NpemUgPiBm
YmMtPmNvbXByZXNzZWRfZmIuc2l6ZSAqIGZiYy0NCj4gPmxpbWl0OyAgfQ0KPiANCj4gLXN0YXRp
YyBib29sIGludGVsX2ZiY19jYW5fZW5hYmxlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykgLXsNCj4g
LQlpZiAoZmJjLT51bmRlcnJ1bl9kZXRlY3RlZCkgew0KPiAtCQlmYmMtPm5vX2ZiY19yZWFzb24g
PSAidW5kZXJydW4gZGV0ZWN0ZWQiOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0JfQ0KPiAtDQo+
IC0JcmV0dXJuIHRydWU7DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBpbnQgaW50ZWxfZmJjX2NoZWNr
X3BsYW5lKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCSBzdHJ1Y3Qg
aW50ZWxfcGxhbmUgKnBsYW5lKQ0KPiAgew0KPiBAQCAtMTEyMywyMiArMTExMywxMSBAQCBzdGF0
aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMNCj4gKmZiYykN
Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGZiYy0+aTkxNTsNCj4gIAlzdHJ1
Y3QgaW50ZWxfZmJjX3N0YXRlICpjYWNoZSA9ICZmYmMtPnN0YXRlX2NhY2hlOw0KPiANCj4gLQlp
ZiAoIWludGVsX2ZiY19jYW5fZW5hYmxlKGZiYykpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0K
PiAgCWlmIChjYWNoZS0+bm9fZmJjX3JlYXNvbikgew0KPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24g
PSBjYWNoZS0+bm9fZmJjX3JlYXNvbjsNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4gDQo+
IC0JLyogV2UgZG9uJ3QgbmVlZCB0byB1c2UgYSBzdGF0ZSBjYWNoZSBoZXJlIHNpbmNlIHRoaXMg
aW5mb3JtYXRpb24gaXMNCj4gLQkgKiBnbG9iYWwgZm9yIGFsbCBDUlRDLg0KPiAtCSAqLw0KPiAt
CWlmIChmYmMtPnVuZGVycnVuX2RldGVjdGVkKSB7DQo+IC0JCWZiYy0+bm9fZmJjX3JlYXNvbiA9
ICJ1bmRlcnJ1biBkZXRlY3RlZCI7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQl9DQo+IC0NCj4g
IAkvKiBUaGUgdXNlIG9mIGEgQ1BVIGZlbmNlIGlzIG9uZSBvZiB0d28gd2F5cyB0byBkZXRlY3Qg
d3JpdGVzIGJ5IHRoZQ0KPiAgCSAqIENQVSB0byB0aGUgc2Nhbm91dCBhbmQgdHJpZ2dlciB1cGRh
dGVzIHRvIHRoZSBGQkMuDQo+ICAJICoNCj4gQEAgLTE0NjcsNiArMTQ0NiwxMSBAQCBzdGF0aWMg
dm9pZCBfX2ludGVsX2ZiY19lbmFibGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJaWYgKGNhY2hlLT5ub19mYmNfcmVhc29uKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAr
CWlmIChmYmMtPnVuZGVycnVuX2RldGVjdGVkKSB7DQo+ICsJCWZiYy0+bm9fZmJjX3JlYXNvbiA9
ICJGSUZPIHVuZGVycnVuIjsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0KPiAgCWlmIChpbnRl
bF9mYmNfYWxsb2NfY2ZiKGZiYywgaW50ZWxfZmJjX2NmYl9zaXplKHBsYW5lX3N0YXRlKSwgbWlu
X2xpbWl0KSkgew0KPiAgCQlmYmMtPm5vX2ZiY19yZWFzb24gPSAibm90IGVub3VnaCBzdG9sZW4g
bWVtb3J5IjsNCj4gIAkJcmV0dXJuOw0KPiBAQCAtMTU2Nyw2ICsxNTUxLDkgQEAgc3RhdGljIHZv
aWQgaW50ZWxfZmJjX3VuZGVycnVuX3dvcmtfZm4oc3RydWN0DQo+IHdvcmtfc3RydWN0ICp3b3Jr
KQ0KPiAgCWZiYy0+dW5kZXJydW5fZGV0ZWN0ZWQgPSB0cnVlOw0KPiANCj4gIAlpbnRlbF9mYmNf
ZGVhY3RpdmF0ZShmYmMsICJGSUZPIHVuZGVycnVuIik7DQo+ICsJaWYgKCFmYmMtPmZsaXBfcGVu
ZGluZykNCj4gKwkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGk5MTUsIGZiYy0+cGxhbmUtPnBpcGUp
Ow0KPiArCV9faW50ZWxfZmJjX2Rpc2FibGUoZmJjKTsNCj4gIG91dDoNCj4gIAltdXRleF91bmxv
Y2soJmZiYy0+bG9jayk7DQo+ICB9DQo+IC0tDQo+IDIuMzIuMA0KDQo=
