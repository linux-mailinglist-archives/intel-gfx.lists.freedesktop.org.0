Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 26AC4E3E08
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 23:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985826E81C;
	Thu, 24 Oct 2019 21:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013576E81C
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 21:17:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 14:17:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="197235445"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga008.fm.intel.com with ESMTP; 24 Oct 2019 14:17:35 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 14:17:35 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.114]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 14:17:34 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Catch GTT fault errors for
 gen11+ planes
Thread-Index: AQHVfh2+nRqnu2MilUu4I/ukHg5R7Kdq2gOA
Date: Thu, 24 Oct 2019 21:17:34 +0000
Message-ID: <b4d36b9dfc4dc883f7ddee0f924e66ab6cbd9073.camel@intel.com>
References: <20191008211716.8391-1-matthew.d.roper@intel.com>
In-Reply-To: <20191008211716.8391-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <F941D7ECA44EE348BA80BCB0E76B2409@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Catch GTT fault errors for gen11+
 planes
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

T24gVHVlLCAyMDE5LTEwLTA4IGF0IDE0OjE3IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBH
ZW4xMSsgaGFzIG1vcmUgaGFyZHdhcmUgcGxhbmVzIHRoYW4gZ2VuOSBzbyB3ZSBuZWVkIHRvIHRl
c3QNCj4gYWRkaXRpb25hbA0KPiBwaXBlIGludGVycnVwdCByZWdpc3RlciBiaXRzIHRvIHJlY29n
bml6ZSBhbnkgR1RUIGZhdWx0cyB0aGF0IGhhcHBlbg0KPiBvbg0KPiB0aGVzZSBleHRyYSBwbGFu
ZXMuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCg0KPiANCj4gQnNwZWM6IDUwMzM1DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYyB8IDQgKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCB8IDggKysrKysrKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfaXJxLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+IGluZGV4IGYy
MzcxYjYwODNjNi4uNTQ5OTQ1MGMxNTI0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMN
Cj4gQEAgLTI1ODksNyArMjU4OSw5IEBAIHN0YXRpYyB1MzIgZ2VuOF9kZV9wb3J0X2F1eF9tYXNr
KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIA0KPiAgc3RhdGljIHUz
MiBnZW44X2RlX3BpcGVfZmF1bHRfbWFzayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2
X3ByaXYpDQo+ICB7DQo+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkNCj4gKwlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gKwkJcmV0dXJuIEdFTjExX0RFX1BJUEVfSVJR
X0ZBVUxUX0VSUk9SUzsNCj4gKwllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpDQo+
ICAJCXJldHVybiBHRU45X0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsNCj4gIAllbHNlDQo+ICAJ
CXJldHVybiBHRU44X0RFX1BJUEVfSVJRX0ZBVUxUX0VSUk9SUzsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+IGluZGV4IDZkNjdiZDIzOGNmZS4uMjQzMTFmZWU3MDA5IDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gQEAgLTczNzMsNiArNzM3Myw5IEBAIGVudW0gew0KPiAg
I2RlZmluZSAgR0VOOF9QSVBFX1ZTWU5DCQkoMSA8PCAxKQ0KPiAgI2RlZmluZSAgR0VOOF9QSVBF
X1ZCTEFOSwkJKDEgPDwgMCkNCj4gICNkZWZpbmUgIEdFTjlfUElQRV9DVVJTT1JfRkFVTFQJCSgx
IDw8IDExKQ0KPiArI2RlZmluZSAgR0VOMTFfUElQRV9QTEFORTdfRkFVTFQJKDEgPDwgMjIpDQo+
ICsjZGVmaW5lICBHRU4xMV9QSVBFX1BMQU5FNl9GQVVMVAkoMSA8PCAyMSkNCj4gKyNkZWZpbmUg
IEdFTjExX1BJUEVfUExBTkU1X0ZBVUxUCSgxIDw8IDIwKQ0KPiAgI2RlZmluZSAgR0VOOV9QSVBF
X1BMQU5FNF9GQVVMVAkJKDEgPDwgMTApDQo+ICAjZGVmaW5lICBHRU45X1BJUEVfUExBTkUzX0ZB
VUxUCQkoMSA8PCA5KQ0KPiAgI2RlZmluZSAgR0VOOV9QSVBFX1BMQU5FMl9GQVVMVAkJKDEgPDwg
OCkNCj4gQEAgLTczOTIsNiArNzM5NSwxMSBAQCBlbnVtIHsNCj4gIAkgR0VOOV9QSVBFX1BMQU5F
M19GQVVMVCB8IFwNCj4gIAkgR0VOOV9QSVBFX1BMQU5FMl9GQVVMVCB8IFwNCj4gIAkgR0VOOV9Q
SVBFX1BMQU5FMV9GQVVMVCkNCj4gKyNkZWZpbmUgR0VOMTFfREVfUElQRV9JUlFfRkFVTFRfRVJS
T1JTIFwNCj4gKwkoR0VOOV9ERV9QSVBFX0lSUV9GQVVMVF9FUlJPUlMgfCBcDQo+ICsJIEdFTjEx
X1BJUEVfUExBTkU3X0ZBVUxUIHwgXA0KPiArCSBHRU4xMV9QSVBFX1BMQU5FNl9GQVVMVCB8IFwN
Cj4gKwkgR0VOMTFfUElQRV9QTEFORTVfRkFVTFQpDQo+ICANCj4gICNkZWZpbmUgR0VOOF9ERV9Q
T1JUX0lTUiBfTU1JTygweDQ0NDQwKQ0KPiAgI2RlZmluZSBHRU44X0RFX1BPUlRfSU1SIF9NTUlP
KDB4NDQ0NDQpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
