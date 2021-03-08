Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79334330C9C
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 12:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBEC6E04A;
	Mon,  8 Mar 2021 11:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B7E6E04A
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 11:43:13 +0000 (UTC)
IronPort-SDR: 51j4MM5sLDYgr0xUEvM2ZAkQk2upmCaorBxVQcGowX8hcrpDIG8oyYPXUTeB932OcKl4kKQPap
 4HrBL6moTPUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="207776638"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="207776638"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 03:43:13 -0800
IronPort-SDR: QOJtKb5M75xjPylrJbR3Yvr28+P1bgUh0vOXdUr4oRVHxSUjn0u2ndzSKtGRBK2554ewWrXk5z
 oIxskndngncQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="402793464"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2021 03:43:12 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Mar 2021 11:43:11 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Mon, 8 Mar 2021 11:43:11 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 2/6] drm/i915: Do
 intel_dpll_readout_hw_state() after encoder readout
Thread-Index: AQHXC5EPWTfYQtM3EUaASo1raBbF/qp6CRdg
Date: Mon, 8 Mar 2021 11:43:11 +0000
Message-ID: <41b689150afe43588196e1bac877fdcf@intel.com>
References: <20210224144214.24803-3-ville.syrjala@linux.intel.com>
 <20210225161225.30746-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210225161225.30746-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915: Do
 intel_dpll_readout_hw_state() after encoder readout
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogVGh1cnNkYXksIEZlYnJ1YXJ5IDI1LCAyMDIxIDY6MTIgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0g
W1BBVENIIHYyIDIvNl0gZHJtL2k5MTU6IERvDQo+IGludGVsX2RwbGxfcmVhZG91dF9od19zdGF0
ZSgpIGFmdGVyIGVuY29kZXIgcmVhZG91dA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSBjbG9jayByZWFkb3V0IGZv
ciBEREkgZW5jb2RlcnMgbmVlZHMgdG8gbW92ZWQgaW50byB0aGUgZW5jb2RlcnMuDQo+IFRvIHRo
YXQgZW5kIGludGVsX2RwbGxfcmVhZG91dF9od19zdGF0ZSgpIG5lZWRzIHRvIGhhcHBlbiBhZnRl
ciB0aGUNCj4gZW5jb2RlciByZWFkb3V0IGFzIG90aGVyd2lzZSBpdCBjYW4ndCBjb3JyZWN0bHkg
cG9wdWxhdGUgdGhlIFBMTA0KPiBjcnRjX21hc2svYWN0aXZlX21hc2sgYml0bWFza3MuDQo+IA0K
PiB2MjogUG9wdWxhdGUgRFBMTCByZWYgY2xvY2tzIGJlZm9yZSB0aGUgZW5jb2Rlci0+Z2V0X2Nv
bmZpZygpDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8IDUgKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jIHwgOSArKysrKystLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIHwgMSArDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEwIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBkMGRhODg3NTFjNzIuLmZhZjk1
MDdjOWRhMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gQEAgLTEyOTA4LDYgKzEyOTA4LDcgQEAgaW50IGludGVsX21vZGVzZXRfaW5p
dF9ub2dlbShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gDQo+ICAJaW50ZWxf
dXBkYXRlX2N6Y2xrKGk5MTUpOw0KPiAgCWludGVsX21vZGVzZXRfaW5pdF9odyhpOTE1KTsNCj4g
KwlpbnRlbF9kcGxsX3VwZGF0ZV9yZWZfY2xrcyhpOTE1KTsNCj4gDQo+ICAJaW50ZWxfaGRjcF9j
b21wb25lbnRfaW5pdChpOTE1KTsNCj4gDQo+IEBAIC0xMzQ0NCw4ICsxMzQ0NSw2IEBAIHN0YXRp
YyB2b2lkDQo+IGludGVsX21vZGVzZXRfcmVhZG91dF9od19zdGF0ZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2KQ0KPiANCj4gIAlyZWFkb3V0X3BsYW5lX3N0YXRlKGRldl9wcml2KTsNCj4gDQo+IC0J
aW50ZWxfZHBsbF9yZWFkb3V0X2h3X3N0YXRlKGRldl9wcml2KTsNCj4gLQ0KPiAgCWZvcl9lYWNo
X2ludGVsX2VuY29kZXIoZGV2LCBlbmNvZGVyKSB7DQo+ICAJCXBpcGUgPSAwOw0KPiANCj4gQEAg
LTEzNDgwLDYgKzEzNDc5LDggQEAgc3RhdGljIHZvaWQNCj4gaW50ZWxfbW9kZXNldF9yZWFkb3V0
X2h3X3N0YXRlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpDQo+ICAJCQkgICAgcGlwZV9uYW1lKHBp
cGUpKTsNCj4gIAl9DQo+IA0KPiArCWludGVsX2RwbGxfcmVhZG91dF9od19zdGF0ZShkZXZfcHJp
dik7DQo+ICsNCj4gIAlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9iZWdpbihkZXYsICZjb25uX2l0
ZXIpOw0KPiAgCWZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5f
aXRlcikgew0KPiAgCQlpZiAoY29ubmVjdG9yLT5nZXRfaHdfc3RhdGUoY29ubmVjdG9yKSkgeyBk
aWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+
IGluZGV4IDUyOWIxZDU2OWFmMi4uYWM2NDYwOTYyZTI5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+IEBAIC00NjEyLDEyICs0NjEy
LDE1IEBAIHN0YXRpYyB2b2lkIHJlYWRvdXRfZHBsbF9od19zdGF0ZShzdHJ1Y3QNCj4gZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAkJICAgIHBsbC0+aW5mby0+bmFtZSwgcGxsLT5zdGF0ZS5j
cnRjX21hc2ssIHBsbC0+b24pOyAgfQ0KPiANCj4gLXZvaWQgaW50ZWxfZHBsbF9yZWFkb3V0X2h3
X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiArdm9pZCBpbnRlbF9kcGxs
X3VwZGF0ZV9yZWZfY2xrcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gIHsNCj4g
LQlpbnQgaTsNCj4gLQ0KPiAgCWlmIChpOTE1LT5kcGxsLm1nciAmJiBpOTE1LT5kcGxsLm1nci0+
dXBkYXRlX3JlZl9jbGtzKQ0KPiAgCQlpOTE1LT5kcGxsLm1nci0+dXBkYXRlX3JlZl9jbGtzKGk5
MTUpOw0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RwbGxfcmVhZG91dF9od19zdGF0ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkgew0KPiArCWludCBpOw0KPiANCj4gIAlmb3IgKGkg
PSAwOyBpIDwgaTkxNS0+ZHBsbC5udW1fc2hhcmVkX2RwbGw7IGkrKykNCj4gIAkJcmVhZG91dF9k
cGxsX2h3X3N0YXRlKGk5MTUsICZpOTE1LT5kcGxsLnNoYXJlZF9kcGxsc1tpXSk7DQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj4gaW5kZXgg
MmViNzYxOGVmOTU3Li44MWU2NzYzOWRhZGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgNCj4gQEAgLTQxMCw2ICs0MTAsNyBAQCB2b2lk
IGludGVsX2VuYWJsZV9zaGFyZWRfZHBsbChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkIGludGVsX2Rpc2FibGVfc2hhcmVkX2RwbGwoY29uc3Qgc3Ry
dWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOyAgdm9pZCBpbnRlbF9zaGFyZWRf
ZHBsbF9zd2FwX3N0YXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsgIHZv
aWQgaW50ZWxfc2hhcmVkX2RwbGxfaW5pdChzdHJ1Y3QgZHJtX2RldmljZQ0KPiAqZGV2KTsNCj4g
K3ZvaWQgaW50ZWxfZHBsbF91cGRhdGVfcmVmX2Nsa3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KTsNCj4gIHZvaWQgaW50ZWxfZHBsbF9yZWFkb3V0X2h3X3N0YXRlKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7ICB2b2lkDQo+IGludGVsX2RwbGxfc2FuaXRpemVf
c3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsNCj4gDQo+IC0tDQo+IDIu
MjYuMg0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
