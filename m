Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30814F9946
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 20:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EAC46EBD2;
	Tue, 12 Nov 2019 19:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F126EBD2
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 19:02:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Nov 2019 11:02:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="216131527"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 12 Nov 2019 11:02:44 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 12 Nov 2019 11:02:43 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.120]) with mapi id 14.03.0439.000;
 Tue, 12 Nov 2019 11:02:43 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCH] drm/i915: Fix detection for a CMP-V PCH
Thread-Index: AQHVmUao4re1jmdO60uNXSpcWFWrjaeIaw6A
Date: Tue, 12 Nov 2019 19:02:43 +0000
Message-ID: <33603d743349ddf4e98843a61d442ef1868cd320.camel@intel.com>
References: <20191112104608.24587-1-imre.deak@intel.com>
In-Reply-To: <20191112104608.24587-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <31883FC4167FE54E922951722E159B22@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix detection for a CMP-V PCH
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
Cc: "cyrus.lien@canonical.com" <cyrus.lien@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTEyIGF0IDEyOjQ2ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFj
Y29yZGluZyB0byBpbnRlcm5hbCBkb2N1bWVudHMgSSBmb3VuZCBmb3IgQ01QIFBDSHMgdGhlIFBD
SSBJRA0KPiAweEEzQzENCj4gYmVsb25ncyB0byBhIENNUC1WIGNoaXBzZXQuIEJhc2VkIG9uIHRo
ZSBzYW1lIGRvY3MgdGhlIHByb2dyYW1taW5nIG9mDQo+IHRoZSBQQ0ggaXMgY29tcGF0aWJsZSB3
aXRoIHRoYXQgb2YgS0JQLiBGaXggdXAgbXkgcHJldmlvdXMgd3JvbmcNCj4gYXNzdW1wdGlvbiBh
Y2NvcmRpbmdseSB1c2luZyB0aGUgU1BUIHByb2dyYW1taW5nIHdoaWNoIGluIHR1cm4gaXMgdGhl
DQo+IGJhc2lzIGZvciBLQlAuDQo+IA0KPiBUaGUgb3JpZ2luYWwgYnVnIHJlcG9ydGVyIHZlcmlm
aWVkIHRoYXQgdGhpcyBpcyB0aGUgY29ycmVjdCBQQ0gNCj4gaWRlbnRpZmljYXRpb24gKHRoZSBv
bmx5IHdheSB3ZSdsbCBwcm9ncmFtIHZhbGlkIEREQyBwaW4tcGFpciB2YWx1ZXMNCj4gdG8NCj4g
dGhlIEdNQlVTIHJlZ2lzdGVyKSBhbmQgdGhlIFdpbmRvd3MgdGVhbSB1c2VzIHRoZSBzYW1lIGlk
ZW50aWZpY2F0aW9uDQo+ICh0aGF0IGlzIHVzaW5nIHRoZSBLQlAgcHJvZ3JhbW1pbmcgbW9kZWwg
Zm9yIHRoaXMgUENIKS4NCj4gDQo+IEkgZmlsZWQgdGhlIG5lY2Vzc2FyeSBCc3BlYyB1cGRhdGUg
cmVxdWVzdHMgKEJTcGVjLzMzNzM0KS4NCg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IEJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIwNTENCj4gRml4ZXM6IDM3
YzkyZGMzMDNkZCAoImRybS9pOTE1OiBBZGQgbmV3IENOTCBQQ0ggSUQgc2VlbiBvbiBhIENNTA0K
PiBwbGF0Zm9ybSIpDQo+IFJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IEN5cnVzIDxjeXJ1cy5saWVu
QGNhbm9uaWNhbC5jb20+DQo+IENjOiBDeXJ1cyA8Y3lydXMubGllbkBjYW5vbmljYWwuY29tPg0K
PiBDYzogVGltbyBBYWx0b25lbiA8dGphYWx0b25AdWJ1bnR1LmNvbT4NCj4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJ
bXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcGNoLmMgfCA2ICsrKysrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcGNoLmggfCAyICstDQo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wY2guYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jDQo+IGluZGV4IGZk
MjIzNTViOWE5Ni4uNDNiNjhiNWZjNTYyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wY2guYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2gu
Yw0KPiBAQCAtNjIsNyArNjIsNiBAQCBpbnRlbF9wY2hfdHlwZShjb25zdCBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsIHVuc2lnbmVkIHNob3J0IGlkKQ0KPiAgCQkvKiBLQlAg
aXMgU1BUIGNvbXBhdGlibGUgKi8NCj4gIAkJcmV0dXJuIFBDSF9TUFQ7DQo+ICAJY2FzZSBJTlRF
TF9QQ0hfQ05QX0RFVklDRV9JRF9UWVBFOg0KPiAtCWNhc2UgSU5URUxfUENIX0NOUDJfREVWSUNF
X0lEX1RZUEU6DQo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIENhbm5vbiBMYWtlIFBDSCAoQ05Q
KVxuIik7DQo+ICAJCVdBUk5fT04oIUlTX0NBTk5PTkxBS0UoZGV2X3ByaXYpICYmDQo+ICFJU19D
T0ZGRUVMQUtFKGRldl9wcml2KSk7DQo+ICAJCXJldHVybiBQQ0hfQ05QOw0KPiBAQCAtNzYsNiAr
NzUsMTEgQEAgaW50ZWxfcGNoX3R5cGUoY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4g
KmRldl9wcml2LCB1bnNpZ25lZCBzaG9ydCBpZCkNCj4gIAkJV0FSTl9PTighSVNfQ09GRkVFTEFL
RShkZXZfcHJpdikpOw0KPiAgCQkvKiBDb21ldFBvaW50IGlzIENOUCBDb21wYXRpYmxlICovDQo+
ICAJCXJldHVybiBQQ0hfQ05QOw0KPiArCWNhc2UgSU5URUxfUENIX0NNUF9WX0RFVklDRV9JRF9U
WVBFOg0KPiArCQlEUk1fREVCVUdfS01TKCJGb3VuZCBDb21ldCBMYWtlIFYgUENIIChDTVAtVilc
biIpOw0KPiArCQlXQVJOX09OKCFJU19DT0ZGRUVMQUtFKGRldl9wcml2KSk7DQo+ICsJCS8qIENv
bWV0IExha2UgViBQQ0ggaXMgYmFzZWQgb24gS0JQLCB3aGljaCBpcyBTUFQNCj4gY29tcGF0aWJs
ZSAqLw0KPiArCQlyZXR1cm4gUENIX1NQVDsNCj4gIAljYXNlIElOVEVMX1BDSF9JQ1BfREVWSUNF
X0lEX1RZUEU6DQo+ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIEljZSBMYWtlIFBDSFxuIik7DQo+
ICAJCVdBUk5fT04oIUlTX0lDRUxBS0UoZGV2X3ByaXYpKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcGNoLmgNCj4gaW5kZXggNTJkMTQ1ZGNkYjE1Li4zMDUzZDFjZTM5OGIgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BjaC5oDQo+IEBAIC00MCwxMCArNDAsMTAgQEAgZW51bSBpbnRlbF9w
Y2ggew0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfU1BUX0xQX0RFVklDRV9JRF9UWVBFCQkweDlEMDAN
Cj4gICNkZWZpbmUgSU5URUxfUENIX0tCUF9ERVZJQ0VfSURfVFlQRQkJMHhBMjgwDQo+ICAjZGVm
aW5lIElOVEVMX1BDSF9DTlBfREVWSUNFX0lEX1RZUEUJCTB4QTMwMA0KPiAtI2RlZmluZSBJTlRF
TF9QQ0hfQ05QMl9ERVZJQ0VfSURfVFlQRQkJMHhBMzgwDQo+ICAjZGVmaW5lIElOVEVMX1BDSF9D
TlBfTFBfREVWSUNFX0lEX1RZUEUJCTB4OUQ4MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfQ01QX0RF
VklDRV9JRF9UWVBFCQkweDAyODANCj4gICNkZWZpbmUgSU5URUxfUENIX0NNUDJfREVWSUNFX0lE
X1RZUEUJCTB4MDY4MA0KPiArI2RlZmluZSBJTlRFTF9QQ0hfQ01QX1ZfREVWSUNFX0lEX1RZUEUJ
CTB4QTM4MA0KPiAgI2RlZmluZSBJTlRFTF9QQ0hfSUNQX0RFVklDRV9JRF9UWVBFCQkweDM0ODAN
Cj4gICNkZWZpbmUgSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRQkJMHg0QjAwDQo+ICAjZGVm
aW5lIElOVEVMX1BDSF9UR1BfREVWSUNFX0lEX1RZUEUJCTB4QTA4MA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
