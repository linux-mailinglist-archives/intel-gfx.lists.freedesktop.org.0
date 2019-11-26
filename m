Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291C010A663
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 23:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076FA6E040;
	Tue, 26 Nov 2019 22:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92F936E040
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 22:12:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 14:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="233895341"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 14:12:53 -0800
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 14:12:53 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.3]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 14:12:52 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
Thread-Index: AQHVoZinjTIqbAZQ8UahiJs/KxLShaeeb00AgAAg54A=
Date: Tue, 26 Nov 2019 22:12:52 +0000
Message-ID: <625713c7e7111958caf8283a15aeaa7ecf356a5c.camel@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191123005459.155383-4-jose.souza@intel.com>
 <20191126201506.GH1208@intel.com>
In-Reply-To: <20191126201506.GH1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <844824BE7AEE28448DEC76D40ABA8BA3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/dp: Power down sink before
 disable pipe/transcoder clock
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTExLTI2IGF0IDIyOjE1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDIyLCAyMDE5IGF0IDA0OjU0OjU2UE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gRGlzYWJsaW5nIHBpcGUvdHJhbnNjb2RlciBjbG9j
ayBiZWZvcmUgcG93ZXIgZG93biBzaW5rIGNvdWxkIGNhdXNlDQo+ID4gc2luayBsb3N0IHNpZ25h
bCwgY2F1c2luZyBpdCB0byB0cmlnZ2VyIGEgaG90cGx1ZyB0byBub3RpZnkgc291cmNlDQo+ID4g
dGhhdCBsaW5rIHNpZ25hbCB3YXMgbG9zdC4NCj4gPiANCj4gPiBDYzogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAyICstDQo+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gaW5kZXggZDJmMGQzOTNk
M2VlLi43ZDNhNmUzYzdmNTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gPiBAQCAtMzgwOCwxMiArMzgwOCwxMiBAQCBzdGF0aWMgdm9pZA0K
PiA+IGludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsDQo+ID4gIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZfcHJpdiwgZW5j
b2Rlci0+cG9ydCk7DQo+ID4gIA0KPiA+ICAJaWYgKCFpc19tc3QpIHsNCj4gPiAtCQlpbnRlbF9k
ZGlfZGlzYWJsZV9waXBlX2Nsb2NrKG9sZF9jcnRjX3N0YXRlKTsNCj4gPiAgCQkvKg0KPiA+ICAJ
CSAqIFBvd2VyIGRvd24gc2luayBiZWZvcmUgZGlzYWJsaW5nIHRoZSBwb3J0LCBvdGhlcndpc2UN
Cj4gPiB3ZSBlbmQNCj4gPiAgCQkgKiB1cCBnZXR0aW5nIGludGVycnVwdHMgZnJvbSB0aGUgc2lu
ayBvbiBkZXRlY3RpbmcNCj4gPiBsaW5rIGxvc3MuDQo+ID4gIAkJICovDQo+ID4gIAkJaW50ZWxf
ZHBfc2lua19kcG1zKGludGVsX2RwLCBEUk1fTU9ERV9EUE1TX09GRik7DQo+ID4gKwkJaW50ZWxf
ZGRpX2Rpc2FibGVfcGlwZV9jbG9jayhvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gIAl9DQo+IA0KPiBU
aGUgc3BlYyBzZWVtcyB0byBzYXkgdGhhdCB3ZSBzaG91bGQgZG8gdGhpcyBhZnRlciB0dXJuaW5n
IG9mZg0KPiBERElfQlVGX0NUTCBvbiB0Z2wrLg0KDQpXaGF0IHN0ZXA/IEkgY2FuJ3QgZmluZCBh
bnkgc3RlcCB0YWxraW5nIGFib3V0IEFVWCBEUF9TRVRfUE9XRVIuDQoNCk15IHVuZGVyc3RhdGlu
ZyBpcyB0aGF0IHdlIHNob3VsZCBwb3dlciBvZmYgc2luayBiZWZvcmUgaW50ZXJmZXJpbmcgaW4N
CnRoZSBtYWlubGluayBzaWduYWwgb3RoZXJ3aXNlIHNpbmsgY291bGQgdHJpZ2dlciBob3RwbHVn
cyB0byBub3RpZnkNCnNvdXJjZSBhYm91dCBsaW5rIGxvc3MuDQoNCj4gDQo+ID4gIA0KPiA+ICAJ
aW50ZWxfZGlzYWJsZV9kZGlfYnVmKGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlKTsNCj4gPiAtLSAN
Cj4gPiAyLjI0LjANCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
