Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDDB458EE8
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D5589DFE;
	Mon, 22 Nov 2021 13:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8734189DFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:02:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="233499983"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="233499983"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:02:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="606401858"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga004.jf.intel.com with ESMTP; 22 Nov 2021 05:02:20 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 22 Nov 2021 13:02:20 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2242.012;
 Mon, 22 Nov 2021 13:02:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 5/5] drm/i915: Allow cdclk squasher to be
 reconfigured live
Thread-Index: AQHX3UduzPBWcL4pRUeT+bZwmfnvKawPh6Aw
Date: Mon, 22 Nov 2021 13:02:19 +0000
Message-ID: <03e68fffa4ca4c36b40e8d6b87c6f116@intel.com>
References: <20211119131348.725220-1-mika.kahola@intel.com>
 <20211119131348.725220-6-mika.kahola@intel.com>
In-Reply-To: <20211119131348.725220-6-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Allow cdclk squasher to be
 reconfigured live
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIE1pa2ENCj4gS2Fo
b2xhDQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMTksIDIwMjEgMzoxNCBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggdjIgNS81XSBkcm0vaTkxNTogQWxsb3cgY2RjbGsgc3F1YXNoZXIgdG8gYmUNCj4gcmVjb25m
aWd1cmVkIGxpdmUNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IA0KPiBTdXBwb3NlZGx5IHdlIHNob3VsZCBiZSBhYmxlIHRvIGNo
YW5nZSB0aGUgY2RjbGsgc3F1YXNoZXIgd2F2ZWZvcm0gZXZlbg0KPiB3aGVuIG1hbnkgcGlwZXMg
YXJlIGFjdGl2ZS4gTWFrZSBpdCBzby4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNDAgKysrKysrKysrKysrKysrKysrKyst
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGlu
ZGV4IDVmY2IzOTMwNzlmNy4uMDc1YWQ2MDU1NzY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0xOTUxLDYgKzE5NTEsMjUgQEAgc3Rh
dGljIGJvb2wgaW50ZWxfY2RjbGtfY2FuX2NyYXdsKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gIAkJYS0+cmVmID09IGItPnJlZjsNCj4gIH0NCj4gDQo+ICtzdGF0aWMg
Ym9vbCBpbnRlbF9jZGNsa19jYW5fc3F1YXNoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gKwkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY2RjbGtfY29uZmlnICphLA0KPiAr
CQkJCSAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19jb25maWcgKmIpIHsNCj4gKwkvKg0KPiAr
CSAqIEZJWE1FIHNob3VsZCBzdG9yZSBhIGJpdCBtb3JlIHN0YXRlIGluIGludGVsX2NkY2xrX2Nv
bmZpZw0KPiArCSAqIHRvIGRpZmZlcmVudGlhdGUgc3F1YXNoZXIgdnMuIGNkMnggZGl2aWRlciBw
cm9wZXJseS4gRm9yDQo+ICsJICogdGhlIG1vbWVudCBhbGwgcGxhdGZvcm1zIHdpdGggc3F1YXNo
ZXIgdXNlIGEgZml4ZWQgY2QyeA0KPiArCSAqIGRpdmlkZXIuDQo+ICsJICovDQo+ICsJaWYgKCFo
YXNfY2RjbGtfc3F1YXNoZXIoZGV2X3ByaXYpKQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4g
KwlyZXR1cm4gYS0+Y2RjbGsgIT0gYi0+Y2RjbGsgJiYNCj4gKwkJYS0+dmNvICE9IDAgJiYNCj4g
KwkJYS0+dmNvID09IGItPnZjbyAmJg0KPiArCQlhLT5yZWYgPT0gYi0+cmVmOw0KPiArfQ0KPiAr
DQo+ICAvKioNCj4gICAqIGludGVsX2NkY2xrX25lZWRzX21vZGVzZXQgLSBEZXRlcm1pbmUgaWYg
Y2hhbmdvbmcgYmV0d2VlbiB0aGUgQ0RDTEsNCj4gICAqICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25maWd1cmF0aW9ucyByZXF1aXJlcyBhIG1vZGVzZXQgb24gYWxsIHBpcGVzDQo+IEBA
IC0xOTg4LDcgKzIwMDcsMTcgQEAgc3RhdGljIGJvb2wgaW50ZWxfY2RjbGtfY2FuX2NkMnhfdXBk
YXRlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAlpZiAoRElTUExB
WV9WRVIoZGV2X3ByaXYpIDwgMTAgJiYgIUlTX0JST1hUT04oZGV2X3ByaXYpKQ0KPiAgCQlyZXR1
cm4gZmFsc2U7DQo+IA0KPiArCS8qDQo+ICsJICogRklYTUUgc2hvdWxkIHN0b3JlIGEgYml0IG1v
cmUgc3RhdGUgaW4gaW50ZWxfY2RjbGtfY29uZmlnDQo+ICsJICogdG8gZGlmZmVyZW50aWF0ZSBz
cXVhc2hlciB2cy4gY2QyeCBkaXZpZGVyIHByb3Blcmx5LiBGb3INCj4gKwkgKiB0aGUgbW9tZW50
IGFsbCBwbGF0Zm9ybXMgd2l0aCBzcXVhc2hlciB1c2UgYSBmaXhlZCBjZDJ4DQo+ICsJICogZGl2
aWRlci4NCj4gKwkgKi8NCj4gKwlpZiAoaGFzX2NkY2xrX3NxdWFzaGVyKGRldl9wcml2KSkNCj4g
KwkJcmV0dXJuIGZhbHNlOw0KPiArDQo+ICAJcmV0dXJuIGEtPmNkY2xrICE9IGItPmNkY2xrICYm
DQo+ICsJCWEtPnZjbyAhPSAwICYmDQo+ICAJCWEtPnZjbyA9PSBiLT52Y28gJiYNCj4gIAkJYS0+
cmVmID09IGItPnJlZjsNCj4gIH0NCj4gQEAgLTI2NzIsOSArMjcwMSwxNCBAQCBpbnQgaW50ZWxf
bW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0K
PiAgCQkJcGlwZSA9IElOVkFMSURfUElQRTsNCj4gIAl9DQo+IA0KPiAtCWlmIChpbnRlbF9jZGNs
a19jYW5fY3Jhd2woZGV2X3ByaXYsDQo+IC0JCQkJICAmb2xkX2NkY2xrX3N0YXRlLT5hY3R1YWws
DQo+IC0JCQkJICAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwpKSB7DQo+ICsJaWYgKGludGVsX2Nk
Y2xrX2Nhbl9zcXVhc2goZGV2X3ByaXYsDQo+ICsJCQkJICAgJm9sZF9jZGNsa19zdGF0ZS0+YWN0
dWFsLA0KPiArCQkJCSAgICZuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbCkpIHsNCj4gKwkJZHJtX2Ri
Z19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkgICAgIkNhbiBjaGFuZ2UgY2RjbGsgdmlhIHNx
dWFzaGVyXG4iKTsNCj4gKwl9IGVsc2UgaWYgKGludGVsX2NkY2xrX2Nhbl9jcmF3bChkZXZfcHJp
diwNCj4gKwkJCQkJICZvbGRfY2RjbGtfc3RhdGUtPmFjdHVhbCwNCj4gKwkJCQkJICZuZXdfY2Rj
bGtfc3RhdGUtPmFjdHVhbCkpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+
ICAJCQkgICAgIkNhbiBjaGFuZ2UgY2RjbGsgdmlhIGNyYXdsXG4iKTsNCj4gIAl9IGVsc2UgaWYg
KHBpcGUgIT0gSU5WQUxJRF9QSVBFKSB7DQo+IC0tDQo+IDIuMjcuMA0KDQo=
