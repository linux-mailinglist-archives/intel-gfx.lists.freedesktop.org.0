Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EA32C62E6
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:19:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033236EC0F;
	Fri, 27 Nov 2020 10:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34976EC0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:19:21 +0000 (UTC)
IronPort-SDR: OrlabKfF74rR5u978/29Hw3CYMT3xqEwSqdkQt2LR58HhLv2MTva5BM2yjKTLJG3JtU6f/Zrj9
 fJu92W2K9Leg==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="257083539"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="257083539"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 02:19:21 -0800
IronPort-SDR: h9qDnAD7hxqnnQFfhLkkDAmULUm44jGb5FBHmjpbJLH7Fk/BNyUIQMIXbokZpJf2Q3144r3RH3
 4M8YrWRz+Wrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="328613069"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 27 Nov 2020 02:19:21 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 02:19:20 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 27 Nov 2020 02:19:19 -0800
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 27 Nov 2020 10:19:18 +0000
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH v2 5/6] RFC/WIP: drm/i915/display/psr: Consider tiling
 when doing the plane offset calculation
Thread-Index: AQHWrLtOV4YRL5MESkefQk5JWIlcpqnb8/0A
Date: Fri, 27 Nov 2020 10:19:18 +0000
Message-ID: <c30919c0e05a3c8af3d7b91d557263dc35111bb8.camel@intel.com>
References: <20201027234526.33043-1-jose.souza@intel.com>
 <20201027234526.33043-5-jose.souza@intel.com>
In-Reply-To: <20201027234526.33043-5-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <7164766D684B0342A430EA3BEEAEA0CA@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 5/6] RFC/WIP: drm/i915/display/psr:
 Consider tiling when doing the plane offset calculation
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

SXQgd29ya3MgcHJvcGVybHkgb24gYSBub3JtYWwgcmdiYSBwbGFuZS4NCkluIG9yZGVyIHRvIGFw
cGx5IHRoaXMgcGF0Y2gsIHRoZSBjb21taXQgbWVzc2FnZWQgbmVlZCB0byBiZSBwb2xpc2hlZC4N
Cg0KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNv
bT4NClRlc3RlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29t
Pg0KDQpPbiBUdWUsIDIwMjAtMTAtMjcgYXQgMTY6NDUgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUg
U291emEgd3JvdGU6DQo+IERvIHRoZSBjYWxjdWxhdGlvbiBvZiB4IGFuZCB5IG9mZnNldHMgdXNp
bmcNCj4gc2tsX2NhbGNfbWFpbl9zdXJmYWNlX29mZnNldCgpLg0KPiANCj4gUkZDL1dJUDogVGhp
cyBjYXVzZXMgdGhlIHZhbHVlIG9mIHRoZSBjYWxjdWxhdGVkIHggdG8gYmUgZGlmZmVyZW50DQo+
IHRoYW4NCj4gcGxhbmVfc3RhdGUtPmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS54LCBub3Qgc3Vy
ZSBpZiB0aGF0IGlzDQo+IGV4cGVjdGVkLg0KPiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNCArKysrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNo
YW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTZlZTUxNDg0ZGQ2Li4w
MGM3NmVhODJmOTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBAQCAtMTE4OCw3ICsxMTg4LDggQEAgdm9pZCBpbnRlbF9wc3IyX3Byb2dyYW1fcGxh
bmVfc2VsX2ZldGNoKHN0cnVjdA0KPiBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ICAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShwbGFuZS0+YmFzZS5kZXYpOw0KPiAg
CWVudW0gcGlwZSBwaXBlID0gcGxhbmUtPnBpcGU7DQo+ICAJY29uc3Qgc3RydWN0IGRybV9yZWN0
ICpjbGlwOw0KPiAtCXUzMiB2YWw7DQo+ICsJdTMyIHZhbCwgb2Zmc2V0Ow0KPiArCWludCByZXQs
IHgsIHk7DQo+ICANCj4gIAlpZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3NlbF9mZXRjaCkN
Cj4gIAkJcmV0dXJuOw0KPiBAQCAtMTIwNSw5ICsxMjA2LDE0IEBAIHZvaWQgaW50ZWxfcHNyMl9w
cm9ncmFtX3BsYW5lX3NlbF9mZXRjaChzdHJ1Y3QNCj4gaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAg
CXZhbCB8PSBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDE7DQo+ICAJaW50ZWxfZGVfd3JpdGVfZnco
ZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9QT1MocGlwZSwgcGxhbmUtDQo+ID5pZCksIHZhbCk7
DQo+ICANCj4gLQkvKiBUT0RPOiBjb25zaWRlciB0aWxpbmcgYW5kIGF1eGlsaWFyeSBzdXJmYWNl
cyAqLw0KPiAtCXZhbCA9IChjbGlwLT55MSArIHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVtjb2xv
cl9wbGFuZV0ueSkgPDwNCj4gMTY7DQo+IC0JdmFsIHw9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFu
ZVtjb2xvcl9wbGFuZV0ueDsNCj4gKwkvKiBUT0RPOiBjb25zaWRlciBhdXhpbGlhcnkgc3VyZmFj
ZXMgKi8NCj4gKwl4ID0gcGxhbmVfc3RhdGUtPnVhcGkuc3JjLngxID4+IDE2Ow0KPiArCXkgPSAo
cGxhbmVfc3RhdGUtPnVhcGkuc3JjLnkxID4+IDE2KSArIGNsaXAtPnkxOw0KPiArCXJldCA9IHNr
bF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQocGxhbmVfc3RhdGUsICZ4LCAmeSwNCj4gJm9mZnNl
dCk7DQo+ICsJaWYgKHJldCkNCj4gKwkJZHJtX3dhcm5fb25jZSgmZGV2X3ByaXYtPmRybSwNCj4g
InNrbF9jYWxjX21haW5fc3VyZmFjZV9vZmZzZXQoKSByZXR1cm5lZCAlaVxuIiwNCj4gKwkJCSAg
ICAgIHJldCk7DQo+ICsJdmFsID0geSA8PCAxNiB8IHg7DQo+ICAJaW50ZWxfZGVfd3JpdGVfZnco
ZGV2X3ByaXYsIFBMQU5FX1NFTF9GRVRDSF9PRkZTRVQocGlwZSwgcGxhbmUtDQo+ID5pZCksDQo+
ICAJCQkgIHZhbCk7DQo+ICANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
