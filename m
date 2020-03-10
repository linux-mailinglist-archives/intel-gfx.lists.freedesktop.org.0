Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA921800AC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9F5589D30;
	Tue, 10 Mar 2020 14:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CF089D30
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:54:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 07:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="276979257"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by fmsmga002.fm.intel.com with ESMTP; 10 Mar 2020 07:54:13 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 14:54:12 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 14:54:12 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Tue, 10 Mar 2020 14:54:12 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v19 1/8] drm/i915: Start passing latency as parameter
Thread-Index: AQHV9i4PFwKkUZ04nkOR3GATYWHaVqhB5TKAgAAE3QA=
Date: Tue, 10 Mar 2020 14:54:12 +0000
Message-ID: <468947d5c7842d7e30ec0b6881a41e237aff4fdd.camel@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
 <20200310143251.GG13686@intel.com>
In-Reply-To: <20200310143251.GG13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <780AE4CE616A4849A10582DEEB5D0969@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v19 1/8] drm/i915: Start passing latency as
 parameter
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAzLTEwIGF0IDE2OjMyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgTWFyIDA5LCAyMDIwIGF0IDA2OjExOjU3UE0gKzAyMDAsIFN0YW5pc2xhdiBM
aXNvdnNraXkgd3JvdGU6DQo+ID4gV2UgbmVlZCB0byBzdGFydCBwYXNzaW5nIG1lbW9yeSBsYXRl
bmN5IGFzIGENCj4gPiBwYXJhbWV0ZXIgd2hlbiBjYWxjdWxhdGluZyBwbGFuZSB3bSBsZXZlbHMs
DQo+ID4gYXMgbGF0ZW5jeSBjYW4gZ2V0IGNoYW5nZWQgaW4gZGlmZmVyZW50DQo+ID4gY2lyY3Vt
c3RhbmNlcyhmb3IgZXhhbXBsZSB3aXRoIG9yIHdpdGhvdXQgU0FHVikuDQo+ID4gU28gd2UgbmVl
ZCB0byBiZSBtb3JlIGZsZXhpYmxlIG9uIHRoYXQgbWF0dGVyLg0KPiA+IA0KPiA+IFJldmlld2Vk
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+
IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IHwgMTIgKysrKysrKystLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4g
PiBpbmRleCA4Mzc1MDU0YmEyN2QuLmM3OTI4Yzg3MGIwYSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYw0KPiA+IEBAIC00MDE2LDYgKzQwMTYsNyBAQCBzdGF0aWMgaW50IHNrbF9j
b21wdXRlX3dtX3BhcmFtcyhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlLA0KPiA+ICAJCQkJIGludCBjb2xvcl9wbGFuZSk7DQo+ID4gIHN0YXRpYyB2b2lkIHNr
bF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNy
dGNfc3RhdGUsDQo+ID4gIAkJCQkgaW50IGxldmVsLA0KPiA+ICsJCQkJIHUzMiBsYXRlbmN5LA0K
PiANCj4gU28geW91IGRpZG4ndCBjaGFuZ2UgdGhlIHR5cGVzPw0KDQpZZXMsIEkgc2F3IHlvdXIg
Y29tbWVudCB0aGVyZSAtIGFuZCBsb29rZWQgaW50byB0aGlzLCBob3dldmVyIEkganVzdA0Kd29u
ZGVyZWQsIGRvZXMgaXQgbWFrZSBhbnkgc2Vuc2UgZG8gdG8gdGhhdC4gVGhlIHJlYXNvbiBpcyBi
ZWNhdXNlDQpza2xfbGF0ZW5jeSBpcyBhbnl3YXkgZGVmaW5lZCBhcyB1MTYgaW4gaTkxNV9kcnYu
aCwganVzdCBhcyBwcmkvc3ByL2N1cg0KbGF0ZW5jaWVzLCBzbyB3b25kZXIgaG93IHRoaXMgInVu
c2lnbmVkIGludCIgZ29pbmcgdG8gZml0IGludG8gdGhpcy4gDQpTaG91bGQgSSBtYXliZSB0aGVu
IGNoYW5nZSBpdCB0byB1MTYgLSBhdCBsZWFzdCB0aGF0IHdvdWxkIHNvbWVob3cNCmNvbXBseSB3
aXRoIHRoZSBjdXJyZW50IGRlY2xhcmF0aW9ucy4NCg0KPiANCj4gPiAgCQkJCSBjb25zdCBzdHJ1
Y3Qgc2tsX3dtX3BhcmFtcyAqd3AsDQo+ID4gIAkJCQkgY29uc3Qgc3RydWN0IHNrbF93bV9sZXZl
bA0KPiA+ICpyZXN1bHRfcHJldiwNCj4gPiAgCQkJCSBzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1
bHQgLyogb3V0DQo+ID4gKi8pOw0KPiA+IEBAIC00MDM4LDcgKzQwMzksOSBAQCBza2xfY3Vyc29y
X2FsbG9jYXRpb24oY29uc3Qgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwNCj4gPiAgCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCByZXQpOw0KPiA+ICANCj4gPiAg
CWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBtYXhfbGV2ZWw7IGxldmVsKyspIHsNCj4gPiAtCQlz
a2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgJndwLCAmd20sICZ3bSk7DQo+
ID4gKwkJdTMyIGxhdGVuY3kgPSBkZXZfcHJpdi0+d20uc2tsX2xhdGVuY3lbbGV2ZWxdOw0KPiA+
ICsNCj4gPiArCQlza2xfY29tcHV0ZV9wbGFuZV93bShjcnRjX3N0YXRlLCBsZXZlbCwgbGF0ZW5j
eSwgJndwLA0KPiA+ICZ3bSwgJndtKTsNCj4gPiAgCQlpZiAod20ubWluX2RkYl9hbGxvYyA9PSBV
MTZfTUFYKQ0KPiA+ICAJCQlicmVhazsNCj4gPiAgDQo+ID4gQEAgLTQ5NzIsMTIgKzQ5NzUsMTIg
QEAgc3RhdGljIGJvb2wgc2tsX3dtX2hhc19saW5lcyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwgaW50IGxldmVsKQ0KPiA+ICANCj4gPiAgc3RhdGljIHZvaWQgc2tsX2Nv
bXB1dGVfcGxhbmVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19z
dGF0ZSwNCj4gPiAgCQkJCSBpbnQgbGV2ZWwsDQo+ID4gKwkJCQkgdTMyIGxhdGVuY3ksDQo+ID4g
IAkJCQkgY29uc3Qgc3RydWN0IHNrbF93bV9wYXJhbXMgKndwLA0KPiA+ICAJCQkJIGNvbnN0IHN0
cnVjdCBza2xfd21fbGV2ZWwNCj4gPiAqcmVzdWx0X3ByZXYsDQo+ID4gIAkJCQkgc3RydWN0IHNr
bF93bV9sZXZlbCAqcmVzdWx0IC8qIG91dCAqLykNCj4gPiAgew0KPiA+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjX3N0YXRlLQ0KPiA+ID51YXBpLmNy
dGMtPmRldik7DQo+ID4gLQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xfbGF0ZW5jeVts
ZXZlbF07DQo+ID4gIAl1aW50X2ZpeGVkXzE2XzE2X3QgbWV0aG9kMSwgbWV0aG9kMjsNCj4gPiAg
CXVpbnRfZml4ZWRfMTZfMTZfdCBzZWxlY3RlZF9yZXN1bHQ7DQo+ID4gIAl1MzIgcmVzX2Jsb2Nr
cywgcmVzX2xpbmVzLCBtaW5fZGRiX2FsbG9jID0gMDsNCj4gPiBAQCAtNTEwNiw5ICs1MTA5LDEw
IEBAIHNrbF9jb21wdXRlX3dtX2xldmVscyhjb25zdCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlLA0KPiA+ICANCj4gPiAgCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8PSBt
YXhfbGV2ZWw7IGxldmVsKyspIHsNCj4gPiAgCQlzdHJ1Y3Qgc2tsX3dtX2xldmVsICpyZXN1bHQg
PSAmbGV2ZWxzW2xldmVsXTsNCj4gPiArCQl1MzIgbGF0ZW5jeSA9IGRldl9wcml2LT53bS5za2xf
bGF0ZW5jeVtsZXZlbF07DQo+ID4gIA0KPiA+IC0JCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNf
c3RhdGUsIGxldmVsLCB3bV9wYXJhbXMsDQo+ID4gLQkJCQkgICAgIHJlc3VsdF9wcmV2LCByZXN1
bHQpOw0KPiA+ICsJCXNrbF9jb21wdXRlX3BsYW5lX3dtKGNydGNfc3RhdGUsIGxldmVsLCBsYXRl
bmN5LA0KPiA+ICsJCQkJICAgICB3bV9wYXJhbXMsIHJlc3VsdF9wcmV2LCByZXN1bHQpOw0KPiA+
ICANCj4gPiAgCQlyZXN1bHRfcHJldiA9IHJlc3VsdDsNCj4gPiAgCX0NCj4gPiAtLSANCj4gPiAy
LjI0LjEuNDg1LmdhZDA1YTNkOGU1DQo+IA0KPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
