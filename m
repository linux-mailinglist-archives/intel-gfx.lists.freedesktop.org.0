Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 785D318C00E
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 20:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD706E062;
	Thu, 19 Mar 2020 19:05:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0216E02D
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 19:05:44 +0000 (UTC)
IronPort-SDR: lm/ZMO3Ykw1otVgZaQ3DCFFvV/B6qxqKhTs9lXf+92cSXvYIDBR/xlR0r3Zapuz6eVUL7mvgUe
 ku6XHcUACEyQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 12:05:43 -0700
IronPort-SDR: 4Gj6giucy8Q/Tcv50ynzrziq3hOSmnmg8ryOJsI0T8wr2qtpJk+P1BtRZ/A2vBn/NxNNqQCOLH
 prGB6V3cCsoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,572,1574150400"; d="scan'208";a="391898598"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 19 Mar 2020 12:05:43 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Mar 2020 12:05:41 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.62]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.150]) with mapi id 14.03.0439.000;
 Thu, 19 Mar 2020 12:05:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
Thread-Index: AQHV/RTfUVebD1xakkKP46Y4e7xqeahQvkwA
Date: Thu, 19 Mar 2020 19:05:40 +0000
Message-ID: <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
In-Reply-To: <20200318113009.16757-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <6FCFE2B80621CB4E83D5C186DEAD0958@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTAzLTE4IGF0IDE3OjAwICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
SWYgZXh0ZXJuYWwgbW9uaXRvcnMgYXJlIGNvbm5lY3RlZCBkdXJpbmcgYm9vdCB1cCwgZHJpdmVy
DQo+IHVzZXMgdGhlIHNhbWUgbW9kZSBwcm9ncmFtbWVkIGJ5IEJJT1MgYW5kIGF2b2lkcyBhIGZ1
bGwgbW9kZXNldC4NCj4gVGhpcyByZXN1bHRzIGluIGRpc3BsYXkgYXVkaW8gY29kZWMgbGVmdCB1
bmluaXRpYWxpemVkIGFuZA0KPiBkaXNwbGF5IGF1ZGlvIGZhaWxzIHRvIHdvcmsgdGlsbCB1c2Vy
IHRyaWdnZXJzIGEgbW9kZXNldC4NCj4gDQo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIHNhbWUgYnkg
dHJpZ2dlcmluZyBhIG1vZGVzZXQgYXQgYm9vdC4NCg0KV2UgaGFkIHRoZSBzYW1lIGlzc3VlIGZv
ciBQU1IsIHRha2UgYSBsb29rIHRvIHRoZSBmaXg6DQpjb21taXQgMzNlMDU5YTJlNGRmNDU0MzU5
ZjY0MmYyMjM1YWYzOWRlOWQzZTkxNA0KZHJtL2k5MTUvcHNyOiBGb3JjZSBQU1IgcHJvYmUgb25s
eSBhZnRlciBmdWxsIGluaXRpYWxpemF0aW9uDQoNCk1heWJlIG1ha2UgdGhpcyBldmVuIG1vcmUg
Z2VuZXJpYy4NCg0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPg0KPiBDYzogS2FpIFZlaG1hbmVuIDxrYWkudmVobWFuZW5AbGludXgu
aW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBTd2VlQXVuIEtob3IgPHN3ZWUuYXVuLmtob3JAaW50
ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgICAgIHwgNCArKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYyB8IDggKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICAgICAgICAgIHwgMyArKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygr
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGlu
ZGV4IDczZDBmNDY0OGMwNi4uYmEzODBhZmE3M2E2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTM3MDQsNiArMzcwNCwxMCBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9kZGlfdXBkYXRlX3BpcGUoc3RydWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsDQo+ICAJCQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0
ZSwNCj4gIAkJCQkgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpjb25uX3N0
YXRlKQ0KPiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArDQo+ICsJLyogQ2xlYXIgdGhlIGJvb3RmbGFnICov
DQo+ICsJZGV2X3ByaXYtPmJvb3RmbGFnID0gZmFsc2U7DQo+ICANCj4gIAlpZiAoIWludGVsX2Ny
dGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0hETUkpKQ0KPiAgCQlpbnRlbF9k
ZGlfdXBkYXRlX3BpcGVfZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwNCj4gY29ubl9zdGF0ZSk7DQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGlu
ZGV4IDhmMjNjNGQ1MWMzMy4uYTE0ODc1Mzk0OTVmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTQ3NTEsNiArMTQ3NTEsMTAg
QEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0DQo+IGRybV9kZXZpY2UgKmRl
diwNCj4gIAkJaWYgKG5ld19jcnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MgIT0NCj4g
IAkJICAgIG9sZF9jcnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MpDQo+ICAJCQluZXdf
Y3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOw0KPiArDQo+ICsJCS8qIFNldCBt
b2RlX2NoYW5nZSB0byBpbml0IGF1ZGlvIGNvZGUgb25jZSBhdCBib290ICovDQo+ICsJCWlmIChk
ZXZfcHJpdi0+Ym9vdGZsYWcgJiYgbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gKwkJCW5l
d19jcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ICAJfQ0KPiAgDQo+ICAJ
cmV0ID0gZHJtX2F0b21pY19oZWxwZXJfY2hlY2tfbW9kZXNldChkZXYsICZzdGF0ZS0+YmFzZSk7
DQo+IEBAIC0xNzY1NSwxMSArMTc2NTksMTUgQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfdXBkYXRl
X2ZkaV9wbGxfZnJlcShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICANCj4g
IHN0YXRpYyBpbnQgaW50ZWxfaW5pdGlhbF9jb21taXQoc3RydWN0IGRybV9kZXZpY2UgKmRldikN
Cj4gIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRl
dik7DQo+ICAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gTlVMTDsNCj4gIAlzdHJ1
Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4Ow0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjOw0KPiAgCWludCByZXQgPSAwOw0KPiAgDQo+ICsJLyogU2V0IEZsYWcgdG8gdHJpZ2dlciBt
b2Rlc2V0IGZvciBhdWRpbyBjb2RlYyBpbml0ICovDQo+ICsJZGV2X3ByaXYtPmJvb3RmbGFnID0g
dHJ1ZTsNCj4gKw0KPiAgCXN0YXRlID0gZHJtX2F0b21pY19zdGF0ZV9hbGxvYyhkZXYpOw0KPiAg
CWlmICghc3RhdGUpDQo+ICAJCXJldHVybiAtRU5PTUVNOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gaW5kZXggYTdlYTFkODU1MzU5Li4yMDcxOTZmOTYzMmIgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtMTIxMCw2ICsxMjEwLDkgQEAgc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgew0KPiAgCSAqIE5PVEU6IFRoaXMgaXMgdGhlIGRyaTEvdW1zIGR1bmdlb24sIGRv
bid0IGFkZCBzdHVmZiBoZXJlLg0KPiBZb3VyIHBhdGNoDQo+ICAJICogd2lsbCBiZSByZWplY3Rl
ZC4gSW5zdGVhZCBsb29rIGZvciBhIGJldHRlciBwbGFjZS4NCj4gIAkgKi8NCj4gKw0KPiArCS8q
IEZsYWcgdG8gdHJpZ2dlciBtb2Rlc2V0IGZvciBBdWRpbyBjb2RlYyBpbml0IG9uY2UgZHVyaW5n
DQo+IGJvb3QgKi8NCj4gKwlib29sIGJvb3RmbGFnOw0KPiAgfTsNCj4gIA0KPiAgc3RhdGljIGlu
bGluZSBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqdG9faTkxNShjb25zdCBzdHJ1Y3QNCj4gZHJt
X2RldmljZSAqZGV2KQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
