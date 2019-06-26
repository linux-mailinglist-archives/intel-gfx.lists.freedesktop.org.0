Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB6957420
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 00:12:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E346E52F;
	Wed, 26 Jun 2019 22:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53F476E52F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 22:12:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 15:12:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="188810141"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 26 Jun 2019 15:12:52 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 15:12:52 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.123]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 15:12:52 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH v3 11/23] drm/i915: Handle the TCCOLD power-down event
Thread-Index: AQHVLEma+IBZCHaDzkSZbSzJpOnGd6au9VyA
Date: Wed, 26 Jun 2019 22:12:51 +0000
Message-ID: <08433bed7a8e0b79629d4cf45ed1667681f8ffb8.camel@intel.com>
References: <20190626180420.16541-1-imre.deak@intel.com>
 <20190626180420.16541-2-imre.deak@intel.com>
In-Reply-To: <20190626180420.16541-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <D5F7083FC94A4D44AB9DAAD3E953BFBC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 11/23] drm/i915: Handle the TCCOLD
 power-down event
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

T24gV2VkLCAyMDE5LTA2LTI2IGF0IDIxOjA0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEJh
c2VkIG9uIGEgcmVjZW50IEJTcGVjIHVwZGF0ZSAoSW5kZXgvMjE3NTApIHdlIG11c3QgaGFuZGxl
IHRoZQ0KPiBUQ0NPTEQNCj4gZXZlbnQgYXNzb2NpYXRlZCB3aXRoIHRoZSBEUC1hbHQgbW9kZS4g
V2UgY2FuIGRldGVjdCB0aGlzIGV2ZW50IGJ5DQo+IHJlYWRpbmcgYW4gaW52YWxpZCBhbGwtMXMg
dmFsdWUgZnJvbSBGSUEgcmVnaXN0ZXJzLg0KPiANCj4gQWZ0ZXIgZGV0ZWN0aW5nIFRDQ09MRCB3
ZSB3aWxsOg0KPiAtIGZhbGwgYmFjayB0byBUQlQtYWx0IG1vZGUgd2hlbiBhdHRlbXB0aW5nIHRv
IHN3aXRjaCB0byBEUC1hbHQgbW9kZQ0KPiAtIGNvbmNsdWRlIHRoYXQgbm90aGluZyBpcyBjb25u
ZWN0ZWQgZHVyaW5nIGxpdmUgc3RhdHVzIGRldGVjdGlvbg0KPiAtIFdBUk4gd2hlbiBhbHJlYWR5
IGluIHVuc2FmZSBtb2RlLCBzaW5jZSB0aGVuIFRDQ09MRCBpcyB1bmV4cGVjdGVkDQo+IA0KPiB2
MjoNCj4gLSBVc2UgRFJNX0RFQlVHX0tNUyBpbnN0ZWFkIG9mIERSTV9ERUJVR19EUklWRVIuIChK
b3PDqSkNCj4gdjM6DQo+IC0gVXNlIDB4ZmZmZmZmZmYgaW5zdGVhZCBvZiAtMSBhcyBpbnZhbGlk
IEZJQSByZWcgdmFsdWUuDQo+ICAgKEpvc8OpLCBWaWxsZSkNCj4gLSBDaGVjayBmb3IgVENDT0xE
IGluIGljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKCkgdG9vLiAoVmlsbGUpDQo+IA0KPiBDYzog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBSb2Ry
aWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERl
YWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jIHwgMzMgKysrKysrKysrKysrKysrKysrKysrKy0NCj4gLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA0MjQzZGI2
ZDI1YTcuLjk2ODU1MjUwYTViZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYw0KPiBAQCAtMjksNiArMjksOCBAQCB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFu
ZV9tYXNrKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgDQo+ICAJ
bGFuZV9tYXNrID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFNQKTsNCj4gIA0KPiArCVdBUk5f
T04obGFuZV9tYXNrID09IDB4ZmZmZmZmZmYpOw0KDQpuaXQ6IE1heWJlIGRlZmluZSBpdD8NCg0K
I2RlZmluZSBGSUFfVENDT0xEX1ZBTFVFIDB4ZmZmZmZmZmYNCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQoNCj4gKw0KPiAgCXJl
dHVybiAobGFuZV9tYXNrICYgRFBfTEFORV9BU1NJR05NRU5UX01BU0sodGNfcG9ydCkpID4+DQo+
ICAJICAgICAgIERQX0xBTkVfQVNTSUdOTUVOVF9TSElGVCh0Y19wb3J0KTsNCj4gIH0NCj4gQEAg
LTkyLDYgKzk0LDEyIEBAIHN0YXRpYyB1MzIgdGNfcG9ydF9saXZlX3N0YXR1c19tYXNrKHN0cnVj
dA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQ0KPiAgDQo+ICAJdmFsID0gSTkxNV9S
RUFEKFBPUlRfVFhfREZMRVhEUFNQKTsNCj4gIA0KPiArCWlmICh2YWwgPT0gMHhmZmZmZmZmZikg
ew0KPiArCQlEUk1fREVCVUdfS01TKCJQb3J0ICVzOiBQSFkgaW4gVENDT0xELCBub3RoaW5nDQo+
IGNvbm5lY3RlZFxuIiwNCj4gKwkJCSAgICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUpOw0KPiAr
CQlyZXR1cm4gbWFzazsNCj4gKwl9DQo+ICsNCj4gIAlpZiAodmFsICYgVENfTElWRV9TVEFURV9U
QlQodGNfcG9ydCkpDQo+ICAJCW1hc2sgfD0gQklUKFRDX1BPUlRfVEJUX0FMVCk7DQo+ICAJaWYg
KHZhbCAmIFRDX0xJVkVfU1RBVEVfVEModGNfcG9ydCkpDQo+IEBAIC0xMTEsMTIgKzExOSwxOSBA
QCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X3N0YXR1c19jb21wbGV0ZShzdHJ1Y3QNCj4gaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+YmFzZS5iYXNlLmRldik7DQo+ICAJ
ZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBkaWdfcG9y
dC0NCj4gPmJhc2UucG9ydCk7DQo+ICsJdTMyIHZhbDsNCj4gIA0KPiAtCXJldHVybiBJOTE1X1JF
QUQoUE9SVF9UWF9ERkxFWERQUE1TKSAmDQo+IC0JICAgICAgIERQX1BIWV9NT0RFX1NUQVRVU19D
T01QTEVURUQodGNfcG9ydCk7DQo+ICsJdmFsID0gSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFBN
Uyk7DQo+ICsJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7DQo+ICsJCURSTV9ERUJVR19LTVMoIlBv
cnQgJXM6IFBIWSBpbiBUQ0NPTEQsIGFzc3VtaW5nIG5vdA0KPiBjb21wbGV0ZVxuIiwNCj4gKwkJ
CSAgICAgIGRpZ19wb3J0LT50Y19wb3J0X25hbWUpOw0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJ
fQ0KPiArDQo+ICsJcmV0dXJuIHZhbCAmIERQX1BIWV9NT0RFX1NUQVRVU19DT01QTEVURUQodGNf
cG9ydCk7DQo+ICB9DQo+ICANCj4gLXN0YXRpYyB2b2lkIGljbF90Y19waHlfc2V0X3NhZmVfbW9k
ZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCwNCj4gK3N0YXRpYyBib29s
IGljbF90Y19waHlfc2V0X3NhZmVfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpk
aWdfcG9ydCwNCj4gIAkJCQkgICAgIGJvb2wgZW5hYmxlKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGlnX3BvcnQtDQo+ID5iYXNlLmJhc2Uu
ZGV2KTsNCj4gQEAgLTEyNCw2ICsxMzksMTMgQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9zZXRf
c2FmZV9tb2RlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCXUz
MiB2YWw7DQo+ICANCj4gIAl2YWwgPSBJOTE1X1JFQUQoUE9SVF9UWF9ERkxFWERQQ1NTUyk7DQo+
ICsJaWYgKHZhbCA9PSAweGZmZmZmZmZmKSB7DQo+ICsJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6
IFBIWSBpbiBUQ0NPTEQsIGNhbid0IHNldCBzYWZlLQ0KPiBtb2RlIHRvICVzXG4iLA0KPiArCQkJ
ICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSwNCj4gKwkJCSAgICAgIGVuYWJsZWRkaXNhYmxl
ZChlbmFibGUpKTsNCj4gKw0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsJfQ0KPiAgDQo+ICAJdmFs
ICY9IH5EUF9QSFlfTU9ERV9TVEFUVVNfTk9UX1NBRkUodGNfcG9ydCk7DQo+ICAJaWYgKCFlbmFi
bGUpDQo+IEBAIC0xMzQsNiArMTU2LDggQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9zZXRfc2Fm
ZV9tb2RlKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LA0KPiAgCWlmIChl
bmFibGUgJiYgd2FpdF9mb3IoIWljbF90Y19waHlfc3RhdHVzX2NvbXBsZXRlKGRpZ19wb3J0KSwN
Cj4gMTApKQ0KPiAgCQlEUk1fREVCVUdfS01TKCJQb3J0ICVzOiBQSFkgY29tcGxldGUgY2xlYXIg
dGltZWQNCj4gb3V0XG4iLA0KPiAgCQkJICAgICAgZGlnX3BvcnQtPnRjX3BvcnRfbmFtZSk7DQo+
ICsNCj4gKwlyZXR1cm4gdHJ1ZTsNCj4gIH0NCj4gIA0KPiAgLyoNCj4gQEAgLTE3Miw3ICsxOTYs
OCBAQCBzdGF0aWMgYm9vbCBpY2xfdGNfcGh5X2Nvbm5lY3Qoc3RydWN0DQo+IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+ICANCj4gLQlp
Y2xfdGNfcGh5X3NldF9zYWZlX21vZGUoZGlnX3BvcnQsIGZhbHNlKTsNCj4gKwlpZiAoIWljbF90
Y19waHlfc2V0X3NhZmVfbW9kZShkaWdfcG9ydCwgZmFsc2UpKQ0KPiArCQlyZXR1cm4gZmFsc2U7
DQo+ICANCj4gIAlpZiAoZGlnX3BvcnQtPnRjX21vZGUgPT0gVENfUE9SVF9MRUdBQ1kpDQo+ICAJ
CXJldHVybiB0cnVlOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
