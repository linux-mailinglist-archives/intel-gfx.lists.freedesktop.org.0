Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3A818152
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 22:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DEE8991E;
	Wed,  8 May 2019 20:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D188994D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 20:49:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 13:49:38 -0700
X-ExtLoop1: 1
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga001.jf.intel.com with ESMTP; 08 May 2019 13:49:38 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 8 May 2019 13:49:38 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.212]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.180]) with mapi id 14.03.0415.000;
 Wed, 8 May 2019 13:49:38 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 1/2] drm/i915: Make
 sandybridge_pcode_read() deal with the second data register
Thread-Index: AQHVAeOiNvMBnOeYHkCr8fTf0cp1R6ZiMKQA
Date: Wed, 8 May 2019 20:49:37 +0000
Message-ID: <608bf091ab9ecb9c43bb3deaba36955818f8d8f2.camel@intel.com>
References: <20190503190831.1759-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190503190831.1759-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.75.46]
Content-ID: <670686154AC92B4490ED8D6BD8321C54@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915: Make
 sandybridge_pcode_read() deal with the second data register
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

T24gRnJpLCAyMDE5LTA1LTAzIGF0IDIyOjA4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIHBjb2RlIG1haWxib3ggaGFzIHR3byBkYXRhIHJlZ2lzdGVycy4gU28gZmFyIHdl
J3ZlIG9ubHkgZXZlciB1c2VkDQo+IHRoZSBvbmUsIGJ1dCB0aGF0J3MgYWJvdXQgdG8gY2hhbmdl
LiBFeHBvc2UgdGhlIHNlY29uZCBkYXRhIHJlZ2lzdGVyDQo+IHRvDQo+IHRoZSBjYWxsZXJzIG9m
IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoKS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQpMR1RNDQpSZXZpZXdlZC1i
eTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgIHwgIDQgKyst
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICB8IDEyICsrKysrKyst
LS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYyB8IDE1ICsrKysr
KysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuaCB8ICAz
ICsrLQ0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+IGluZGV4IDE0Y2Q4
M2U5ZWE4Yi4uMjAzMDg4ZjZmMjY5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYw0KPiBAQCAtMTQ5NCw3ICsxNDk0LDcgQEAgc3RhdGljIGludCBnZW42X2RycGNfaW5mbyhz
dHJ1Y3Qgc2VxX2ZpbGUgKm0pDQo+ICANCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8PSA3
KQ0KPiAgCQlzYW5keWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LA0KPiBHRU42X1BDT0RFX1JF
QURfUkM2VklEUywNCj4gLQkJCQkgICAgICAgJnJjNnZpZHMpOw0KPiArCQkJCSAgICAgICAmcmM2
dmlkcywgTlVMTCk7DQo+ICANCj4gIAlzZXFfcHJpbnRmKG0sICJSQzFlIEVuYWJsZWQ6ICVzXG4i
LA0KPiAgCQkgICB5ZXNubyhyY2N0bDEgJiBHRU42X1JDX0NUTF9SQzFlX0VOQUJMRSkpOw0KPiBA
QCAtMTc3Nyw3ICsxNzc3LDcgQEAgc3RhdGljIGludCBpOTE1X3JpbmdfZnJlcV90YWJsZShzdHJ1
Y3Qgc2VxX2ZpbGUNCj4gKm0sIHZvaWQgKnVudXNlZCkNCj4gIAkJaWFfZnJlcSA9IGdwdV9mcmVx
Ow0KPiAgCQlzYW5keWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LA0KPiAgCQkJCSAgICAgICBH
RU42X1BDT0RFX1JFQURfTUlOX0ZSRVFfVEFCTEUsDQo+IC0JCQkJICAgICAgICZpYV9mcmVxKTsN
Cj4gKwkJCQkgICAgICAgJmlhX2ZyZXEsIE5VTEwpOw0KPiAgCQlzZXFfcHJpbnRmKG0sICIlZFx0
XHQlZFx0XHRcdFx0JWRcbiIsDQo+ICAJCQkgICBpbnRlbF9ncHVfZnJlcShkZXZfcHJpdiwgKGdw
dV9mcmVxICoNCj4gIAkJCQkJCSAgICAgKElTX0dFTjlfQkMoZGV2X3ByDQo+IGl2KSB8fA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gaW5kZXggZWY5ZmM3N2Y4MTYyLi5iMDQzYTk2ZTEy
M2MgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBAQCAtMjgyMiw3ICsyODIyLDcg
QEAgc3RhdGljIHZvaWQgaW50ZWxfcmVhZF93bV9sYXRlbmN5KHN0cnVjdA0KPiBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwNCj4gIAkJdmFsID0gMDsgLyogZGF0YTAgdG8gYmUgcHJvZ3JhbW1l
ZCB0byAwIGZvciBmaXJzdCBzZXQNCj4gKi8NCj4gIAkJcmV0ID0gc2FuZHlicmlkZ2VfcGNvZGVf
cmVhZChkZXZfcHJpdiwNCj4gIAkJCQkJICAgICBHRU45X1BDT0RFX1JFQURfTUVNX0xBVEVOQw0K
PiBZLA0KPiAtCQkJCQkgICAgICZ2YWwpOw0KPiArCQkJCQkgICAgICZ2YWwsIE5VTEwpOw0KPiAg
DQo+ICAJCWlmIChyZXQpIHsNCj4gIAkJCURSTV9FUlJPUigiU0tMIE1haWxib3ggcmVhZCBlcnJv
ciA9ICVkXG4iLA0KPiByZXQpOw0KPiBAQCAtMjg0MSw3ICsyODQxLDcgQEAgc3RhdGljIHZvaWQg
aW50ZWxfcmVhZF93bV9sYXRlbmN5KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gIAkJdmFsID0gMTsgLyogZGF0YTAgdG8gYmUgcHJvZ3JhbW1lZCB0byAxIGZvciBzZWNv
bmQgc2V0DQo+ICovDQo+ICAJCXJldCA9IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoZGV2X3ByaXYs
DQo+ICAJCQkJCSAgICAgR0VOOV9QQ09ERV9SRUFEX01FTV9MQVRFTkMNCj4gWSwNCj4gLQkJCQkJ
ICAgICAmdmFsKTsNCj4gKwkJCQkJICAgICAmdmFsLCBOVUxMKTsNCj4gIAkJaWYgKHJldCkgew0K
PiAgCQkJRFJNX0VSUk9SKCJTS0wgTWFpbGJveCByZWFkIGVycm9yID0gJWRcbiIsDQo+IHJldCk7
DQo+ICAJCQlyZXR1cm47DQo+IEBAIC03MDYxLDcgKzcwNjEsNyBAQCBzdGF0aWMgdm9pZCBnZW42
X2luaXRfcnBzX2ZyZXF1ZW5jaWVzKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikNCj4gIA0KPiAgCQlpZiAoc2FuZHlicmlkZ2VfcGNvZGVfcmVhZChkZXZfcHJpdiwNCj4gIAkJ
CQkJICAgSFNXX1BDT0RFX0RZTkFNSUNfRFVUWV9DWUNMRQ0KPiBfQ09OVFJPTCwNCj4gLQkJCQkJ
ICAgJmRkY2Nfc3RhdHVzKSA9PSAwKQ0KPiArCQkJCQkgICAmZGRjY19zdGF0dXMsIE5VTEwpID09
IDApDQo+ICAJCQlycHMtPmVmZmljaWVudF9mcmVxID0NCj4gIAkJCQljbGFtcF90KHU4LA0KPiAg
CQkJCQkoKGRkY2Nfc3RhdHVzID4+IDgpICYgMHhmZiksDQo+IEBAIC03NDA4LDcgKzc0MDgsOCBA
QCBzdGF0aWMgdm9pZCBnZW42X2VuYWJsZV9yYzYoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQ0KPiAgCQkgICBHRU42X1JDX0NUTF9IV19FTkFCTEUpOw0KPiAgDQo+ICAJcmM2
dmlkcyA9IDA7DQo+IC0JcmV0ID0gc2FuZHlicmlkZ2VfcGNvZGVfcmVhZChkZXZfcHJpdiwgR0VO
Nl9QQ09ERV9SRUFEX1JDNlZJRFMsDQo+ICZyYzZ2aWRzKTsNCj4gKwlyZXQgPSBzYW5keWJyaWRn
ZV9wY29kZV9yZWFkKGRldl9wcml2LCBHRU42X1BDT0RFX1JFQURfUkM2VklEUywNCj4gKwkJCQkg
ICAgICZyYzZ2aWRzLCBOVUxMKTsNCj4gIAlpZiAoSVNfR0VOKGRldl9wcml2LCA2KSAmJiByZXQp
IHsNCj4gIAkJRFJNX0RFQlVHX0RSSVZFUigiQ291bGRuJ3QgY2hlY2sgZm9yIEJJT1MNCj4gd29y
a2Fyb3VuZFxuIik7DQo+ICAJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDYpICYmIChHRU42
X0RFQ09ERV9SQzZfVklEKHJjNnZpZHMNCj4gJiAweGZmKSA8IDQ1MCkpIHsNCj4gQEAgLTg1NTUs
NyArODU1Niw4IEBAIHZvaWQgaW50ZWxfaW5pdF9ndF9wb3dlcnNhdmUoc3RydWN0DQo+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCSAgICBJU19JVllCUklER0UoZGV2X3ByaXYpIHx8
IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7DQo+ICAJCXUzMiBwYXJhbXMgPSAwOw0KPiAgDQo+IC0J
CXNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoZGV2X3ByaXYsIEdFTjZfUkVBRF9PQ19QQVJBTVMsDQo+
ICZwYXJhbXMpOw0KPiArCQlzYW5keWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LCBHRU42X1JF
QURfT0NfUEFSQU1TLA0KPiArCQkJCSAgICAgICAmcGFyYW1zLCBOVUxMKTsNCj4gIAkJaWYgKHBh
cmFtcyAmIEJJVCgzMSkpIHsgLyogT0Mgc3VwcG9ydGVkICovDQo+ICAJCQlEUk1fREVCVUdfRFJJ
VkVSKCJPdmVyY2xvY2tpbmcgc3VwcG9ydGVkLCBtYXg6DQo+ICVkTUh6LCBvdmVyY2xvY2s6ICVk
TUh6XG4iLA0KPiAgCQkJCQkgKHJwcy0+bWF4X2ZyZXEgJiAweGZmKSAqIDUwLA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmMNCj4gaW5kZXggODdiNWExNGM3Y2E4Li5hMTE1
NjI1ZTk4MGMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGVi
YW5kLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2lkZWJhbmQuYw0KPiBA
QCAtMzc0LDcgKzM3NCw3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGdlbjdfY2hlY2tfbWFpbGJveF9z
dGF0dXModTMyDQo+IG1ib3gpDQo+ICB9DQo+ICANCj4gIHN0YXRpYyBpbnQgX19zYW5keWJyaWRn
ZV9wY29kZV9ydyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gLQkJCQkgIHUzMiBt
Ym94LCB1MzIgKnZhbCwNCj4gKwkJCQkgIHUzMiBtYm94LCB1MzIgKnZhbCwgdTMyICp2YWwxLA0K
PiAgCQkJCSAgaW50IGZhc3RfdGltZW91dF91cywNCj4gIAkJCQkgIGludCBzbG93X3RpbWVvdXRf
bXMsDQo+ICAJCQkJICBib29sIGlzX3JlYWQpDQo+IEBAIC0zOTMsNyArMzkzLDcgQEAgc3RhdGlj
IGludCBfX3NhbmR5YnJpZGdlX3Bjb2RlX3J3KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICpp
OTE1LA0KPiAgCQlyZXR1cm4gLUVBR0FJTjsNCj4gIA0KPiAgCWludGVsX3VuY29yZV93cml0ZV9m
dyh1bmNvcmUsIEdFTjZfUENPREVfREFUQSwgKnZhbCk7DQo+IC0JaW50ZWxfdW5jb3JlX3dyaXRl
X2Z3KHVuY29yZSwgR0VONl9QQ09ERV9EQVRBMSwgMCk7DQo+ICsJaW50ZWxfdW5jb3JlX3dyaXRl
X2Z3KHVuY29yZSwgR0VONl9QQ09ERV9EQVRBMSwgdmFsMSA/ICp2YWwxIDoNCj4gMCk7DQo+ICAJ
aW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwNCj4gIAkJCSAgICAgIEdFTjZfUENPREVfTUFJ
TEJPWCwgR0VONl9QQ09ERV9SRUFEWSB8DQo+IG1ib3gpOw0KPiAgDQo+IEBAIC00MDcsNiArNDA3
LDggQEAgc3RhdGljIGludCBfX3NhbmR5YnJpZGdlX3Bjb2RlX3J3KHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICppOTE1LA0KPiAgDQo+ICAJaWYgKGlzX3JlYWQpDQo+ICAJCSp2YWwgPSBpbnRl
bF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdFTjZfUENPREVfREFUQSk7DQo+ICsJaWYgKGlzX3Jl
YWQgJiYgdmFsMSkNCj4gKwkJKnZhbDEgPSBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIEdF
TjZfUENPREVfREFUQTEpOw0KPiAgDQo+ICAJaWYgKElOVEVMX0dFTihpOTE1KSA+IDYpDQo+ICAJ
CXJldHVybiBnZW43X2NoZWNrX21haWxib3hfc3RhdHVzKG1ib3gpOw0KPiBAQCAtNDE0LDEyICs0
MTYsMTMgQEAgc3RhdGljIGludCBfX3NhbmR5YnJpZGdlX3Bjb2RlX3J3KHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICppOTE1LA0KPiAgCQlyZXR1cm4gZ2VuNl9jaGVja19tYWlsYm94X3N0YXR1
cyhtYm94KTsNCj4gIH0NCj4gIA0KPiAtaW50IHNhbmR5YnJpZGdlX3Bjb2RlX3JlYWQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBtYm94LA0KPiB1MzIgKnZhbCkNCj4gK2ludCBz
YW5keWJyaWRnZV9wY29kZV9yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIg
bWJveCwNCj4gKwkJCSAgIHUzMiAqdmFsLCB1MzIgKnZhbDEpDQo+ICB7DQo+ICAJaW50IGVycjsN
Cj4gIA0KPiAgCW11dGV4X2xvY2soJmk5MTUtPnNiX2xvY2spOw0KPiAtCWVyciA9IF9fc2FuZHli
cmlkZ2VfcGNvZGVfcncoaTkxNSwgbWJveCwgdmFsLA0KPiArCWVyciA9IF9fc2FuZHlicmlkZ2Vf
cGNvZGVfcncoaTkxNSwgbWJveCwgdmFsLCB2YWwxLA0KPiAgCQkJCSAgICAgNTAwLCAwLA0KPiAg
CQkJCSAgICAgdHJ1ZSk7DQo+ICAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5zYl9sb2NrKTsNCj4gQEAg
LTQ0MCw3ICs0NDMsNyBAQCBpbnQgc2FuZHlicmlkZ2VfcGNvZGVfd3JpdGVfdGltZW91dChzdHJ1
Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gIAlpbnQgZXJyOw0KPiAgDQo+ICAJbXV0
ZXhfbG9jaygmaTkxNS0+c2JfbG9jayk7DQo+IC0JZXJyID0gX19zYW5keWJyaWRnZV9wY29kZV9y
dyhpOTE1LCBtYm94LCAmdmFsLA0KPiArCWVyciA9IF9fc2FuZHlicmlkZ2VfcGNvZGVfcncoaTkx
NSwgbWJveCwgJnZhbCwgTlVMTCwNCj4gIAkJCQkgICAgIGZhc3RfdGltZW91dF91cywgc2xvd190
aW1lb3V0X21zLA0KPiAgCQkJCSAgICAgZmFsc2UpOw0KPiAgCW11dGV4X3VubG9jaygmaTkxNS0+
c2JfbG9jayk7DQo+IEBAIC00NTcsNyArNDYwLDcgQEAgc3RhdGljIGJvb2wgc2tsX3Bjb2RlX3Ry
eV9yZXF1ZXN0KHN0cnVjdA0KPiBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJveCwNCj4g
IAkJCQkgIHUzMiByZXF1ZXN0LCB1MzIgcmVwbHlfbWFzaywgdTMyDQo+IHJlcGx5LA0KPiAgCQkJ
CSAgdTMyICpzdGF0dXMpDQo+ICB7DQo+IC0JKnN0YXR1cyA9IF9fc2FuZHlicmlkZ2VfcGNvZGVf
cncoaTkxNSwgbWJveCwgJnJlcXVlc3QsDQo+ICsJKnN0YXR1cyA9IF9fc2FuZHlicmlkZ2VfcGNv
ZGVfcncoaTkxNSwgbWJveCwgJnJlcXVlc3QsIE5VTEwsDQo+ICAJCQkJCSA1MDAsIDAsDQo+ICAJ
CQkJCSB0cnVlKTsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfc2lkZWJhbmQuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmgN
Cj4gaW5kZXggYTA5MDdlMmM0OTkyLi43ZmI5NTc0NWE0NDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3NpZGViYW5kLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfc2lkZWJhbmQuaA0KPiBAQCAtMTI3LDcgKzEyNyw4IEBAIHUzMiBpbnRlbF9z
YmlfcmVhZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gdTE2IHJlZywNCj4gIHZv
aWQgaW50ZWxfc2JpX3dyaXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MTYgcmVn
LCB1MzINCj4gdmFsdWUsDQo+ICAJCSAgICAgZW51bSBpbnRlbF9zYmlfZGVzdGluYXRpb24gZGVz
dGluYXRpb24pOw0KPiAgDQo+IC1pbnQgc2FuZHlicmlkZ2VfcGNvZGVfcmVhZChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIG1ib3gsDQo+IHUzMiAqdmFsKTsNCj4gK2ludCBzYW5k
eWJyaWRnZV9wY29kZV9yZWFkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgbWJv
eCwNCj4gKwkJCSAgIHUzMiAqdmFsLCB1MzIgKnZhbDEpOw0KPiAgaW50IHNhbmR5YnJpZGdlX3Bj
b2RlX3dyaXRlX3RpbWVvdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+IHUzMiBt
Ym94LA0KPiAgCQkJCSAgICB1MzIgdmFsLCBpbnQgZmFzdF90aW1lb3V0X3VzLA0KPiAgCQkJCSAg
ICBpbnQgc2xvd190aW1lb3V0X21zKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
