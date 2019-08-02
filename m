Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7E17E764
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 03:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 029626E856;
	Fri,  2 Aug 2019 01:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B7C6E856
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 01:08:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 18:08:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,336,1559545200"; d="scan'208";a="175428784"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga003.jf.intel.com with ESMTP; 01 Aug 2019 18:08:32 -0700
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 1 Aug 2019 18:08:32 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.137]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.188]) with mapi id 14.03.0439.000;
 Thu, 1 Aug 2019 18:08:32 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915: Get transcoder power domain before
 reading its register
Thread-Index: AQHVSMDOOJh1slsypEqAq4mMfOT4KabneccAgAAHqYA=
Date: Fri, 2 Aug 2019 01:08:32 +0000
Message-ID: <bcb1cbd2e9584836560982421dbef7166fee5df6.camel@intel.com>
References: <20190801232812.28375-1-jose.souza@intel.com>
 <20190802004106.qgsdwbjz7k4yqg2v@ldmartin-desk1>
In-Reply-To: <20190802004106.qgsdwbjz7k4yqg2v@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <AC5A92A2E4952E4DBE9987126C59AF2E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Get transcoder power domain
 before reading its register
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA4LTAxIGF0IDE3OjQxIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFRodSwgQXVnIDAxLCAyMDE5IGF0IDA0OjI4OjExUE0gLTA3MDAsIEpvc2UgU291emEg
d3JvdGU6DQo+ID4gV2hlbiBnZXR0aW5nIHRoZSBwaXBlcyBhdHRhY2hlZCB0byBlbmNvZGVyIGlm
IGl0IGlzIG5vdCBhIGVEUA0KPiA+IGVuY29kZXINCj4gPiBpdCBpdGVyYXRlcyBvdmVyIGFsbCBw
aXBlcyBhbmQgcmVhZCBhIHRyYW5zY29kZXIgcmVnaXN0ZXIuDQo+ID4gQnV0IGl0IHNob3VsZCBu
b3QgcmVhZCBhIHRyYW5zY29kZXIgcmVnaXN0ZXIgYmVmb3JlIGdldCBpdHMgcG93ZXINCj4gPiBk
b21haW4uDQo+ID4gDQo+ID4gSXQgd2FzIG5vdCBhIGlzc3VlIGluIGdlbnMgb2xkZXIgdGhhbiAx
MiBiZWNhdXNlIGlmIGl0IG9ubHkgaGFkDQo+ID4gcG9ydCBBIGNvbm5lY3RlZCBpdCB3b3VsZCBi
ZSBhdHRhY2hlZCB0byBFRFAgYW5kIGl0IHdvdWxkIHNraXAgYWxsDQo+ID4gdGhlIHRyYW5zY29k
ZXJzIHJlYWRvdXQsIGlmIGl0IGhhZCBtb3JlIHRoYW4gb25lIHBvcnQgY29ubmVjdGVkLA0KPiA+
IHBpcGUgQiB3b3VsZCBjYXVzZSBQRzMgdG8gYmUgb24gYW5kIGl0IGNvbnRhaW5zIGFsbCBvdGhl
cg0KPiA+IHRyYW5zY29kZXJzLg0KPiA+IA0KPiA+IEJ1dCBvbiBnZW4gMTIgdGhlcmUgaXMgbm8g
RURQIHRyYW5zY29kZXIgc28gaXQgaXMgYWx3YXlzIGl0ZXJhdGluZw0KPiA+IG92ZXIgYWxsIHBp
cGVzIGFuZCBpZiBvbmx5IG9uZSBzaW5rIGlzIGNvbm5lY3RlZCwgUEczIGlzIGtlcHQgb2ZmDQo+
ID4gYW5kIHJlYWRpbmcgb3RoZXIgdHJhbnNjb2RlcnMgcmVnaXN0ZXJzIHdvdWxkIGNhdXNlIGEN
Cj4gPiB1bmNsYWltZWQgcmVhZCB3YXJuaW5nLg0KPiA+IA0KPiA+IFNvIGhlcmUgZ2V0dGluZyB0
aGUgcG93ZXIgZG9tYWluIG9mIHRoZSB0cmFuc2NvZGVyIG9ubHkgaWYgaXQgaXMNCj4gPiBlbmFi
bGVkLCBvdGhlcndpc2UgaXQgaXMgbm90IGNvbm5lY3RlZCB0byB0aGUgRERJLg0KPiA+IA0KPiA+
IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
OCArKysrKysrKw0KPiA+IDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPiANCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IGluZGV4
IGZiNTg4NDUwMjBkYy4uNjYwYmIwMDFiZTM1IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gQEAgLTIwMTUsNiArMjAxNSwxMiBAQCBzdGF0
aWMgdm9pZA0KPiA+IGludGVsX2RkaV9nZXRfZW5jb2Rlcl9waXBlcyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwNCj4gPiAJZm9yX2VhY2hfcGlwZShkZXZfcHJpdiwgcCkgew0KPiA+IAkJ
ZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gKGVudW0gdHJhbnNjb2RlcilwOw0KPiA+
IAkJdW5zaWduZWQgaW50IHBvcnRfbWFzaywgZGRpX3NlbGVjdDsNCj4gPiArCQlpbnRlbF93YWtl
cmVmX3QgdHJhbnNfd2FrZXJlZjsNCj4gPiArDQo+ID4gKwkJdHJhbnNfd2FrZXJlZiA9DQo+ID4g
aW50ZWxfZGlzcGxheV9wb3dlcl9nZXRfaWZfZW5hYmxlZChkZXZfcHJpdiwNCj4gPiArCQkJCQkJ
CQkgICBQT1dFDQo+ID4gUl9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJhbnNjb2RlcikpOw0KPiAN
Cj4gQW5kIG9uIFRpZ2VyIExha2UgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQiwNCj4gUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVJfQw0KPiBhbmQgUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRCBhcmUg
b24gUFczLiBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9BDQo+IGlzDQo+IG9uIFBXMS4NCj4gDQo+
IExvb2tzIGNvcnJlY3QuIA0KPiANCj4gUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiANCj4gQXJlIHRoZSB3YXJuaW5ncyBub3cgZml4ZWQ/
DQoNCldpdGggb25seSBlRFAgY29ubmVjdGVkIHllcywgd2Ugc3RpbGwgaGF2ZSBhIGZldyB3aXRo
IGVEUCtIRE1JLg0KDQo+IA0KPiB0aGFua3MNCj4gTHVjYXMgRGUgTWFyY2hpDQo+IA0KPiANCj4g
DQo+IA0KPiA+ICsJCWlmICghdHJhbnNfd2FrZXJlZikNCj4gPiArCQkJY29udGludWU7DQo+ID4g
DQo+ID4gCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgew0KPiA+IAkJCXBvcnRfbWFz
ayA9IFRHTF9UUkFOU19ERElfUE9SVF9NQVNLOw0KPiA+IEBAIC0yMDI1LDYgKzIwMzEsOCBAQCBz
dGF0aWMgdm9pZA0KPiA+IGludGVsX2RkaV9nZXRfZW5jb2Rlcl9waXBlcyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gPiAJCX0NCj4gPiANCj4gPiAJCXRtcCA9IEk5MTVfUkVBRChU
UkFOU19ERElfRlVOQ19DVEwoY3B1X3RyYW5zY29kZXIpKTsNCj4gPiArCQlpbnRlbF9kaXNwbGF5
X3Bvd2VyX3B1dChkZXZfcHJpdiwNCj4gPiBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUihjcHVfdHJh
bnNjb2RlciksDQo+ID4gKwkJCQkJdHJhbnNfd2FrZXJlZik7DQo+ID4gDQo+ID4gCQlpZiAoKHRt
cCAmIHBvcnRfbWFzaykgIT0gZGRpX3NlbGVjdCkNCj4gPiAJCQljb250aW51ZTsNCj4gPiAtLSAN
Cj4gPiAyLjIyLjANCj4gPiANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
