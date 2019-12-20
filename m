Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB9C128231
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 19:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CC46EC8B;
	Fri, 20 Dec 2019 18:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F916EC8B
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 18:27:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 10:27:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="218553384"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga006.jf.intel.com with ESMTP; 20 Dec 2019 10:27:50 -0800
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Dec 2019 10:27:50 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.67]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.48]) with mapi id 14.03.0439.000;
 Fri, 20 Dec 2019 10:27:50 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v5 6/7] drm/i915/display: Check if pipe fastset is
 allowed by external dependencies
Thread-Index: AQHVt0prjIk/SyRKY0OK1Cue0MEnHqfDtd4AgAAn/4A=
Date: Fri, 20 Dec 2019 18:27:49 +0000
Message-ID: <1278e1a7670186bea48728c61173be614b7b1a1f.camel@intel.com>
References: <20191220152954.83276-1-jose.souza@intel.com>
 <20191220152954.83276-6-jose.souza@intel.com>
 <20191220160434.GQ1208@intel.com>
In-Reply-To: <20191220160434.GQ1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.207.149]
Content-ID: <0161666ED87F40489D2427198FC08E8A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5 6/7] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTEyLTIwIGF0IDE4OjA0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRGVjIDIwLCAyMDE5IGF0IDA3OjI5OjUzQU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gQ2hlY2sgaWYgZmFzdHNldCBpcyBhbGxvd2VkIGJ5
IGV4dGVybmFsIGRlcGVuZGVuY2llcyBsaWtlIG90aGVyDQo+ID4gcGlwZXMNCj4gPiBhbmQgdHJh
bnNjb2RlcnMuDQo+ID4gDQo+ID4gUmlnaHQgbm93IHRoaXMgcGF0Y2ggb25seSBmb3JjZXMgYSBm
dWxsbW9kZXNldCBpbiBNU1Qgc2xhdmVzIG9mIE1TVA0KPiA+IG1hc3RlcnMgdGhhdCBuZWVkcyBh
IGZ1bGxtb2Rlc2V0IGJ1dCBpdCB3aWxsIGJlIG5lZWRlZCBmb3IgcG9ydA0KPiA+IHN5bmMNCj4g
PiBhcyB3ZWxsLg0KPiA+IA0KPiA+IHYzOg0KPiA+IC0gbW92ZWQgaGFuZGxpbmcgdG8gaW50ZWxf
YXRvbWljX2NoZWNrKCkgdGhpcyB3YXkgaXMgZ3VhcmFudGVlIHRoYXQNCj4gPiBhbGwgcGlwZXMg
d2lsbCBoYXZlIGl0cyBzdGF0ZSBjb21wdXRlZA0KPiA+IA0KPiA+IHY0Og0KPiA+IC0gYWRkZWQg
YSBmdW5jdGlvbiB0byByZXR1cm4gaWYgTVNUIG1hc3RlciBuZWVlZHMgbW9kZXNldCB0byBzaW1w
bHkNCj4gPiBjb2RlIGluIGludGVsX2F0b21pY19jaGVjaygpDQo+ID4gDQo+ID4gdjU6DQo+ID4g
LSBmaXhlZCBhbmQgbW92ZWQgY29kZSB0byBjaGVjayBpZiBNU1QgbWFzdGVyIG5lZWRzIGEgbW9k
ZXNldA0KPiA+IA0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4NCj4gPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4NCj4gPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3MA0KPiA+ICsrKysrKysrKysrKysrKystLS0t
DQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA1NyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jDQo+ID4gaW5kZXggMjQ4NDFkZGU0OTBiLi4xMWYyYzEzZWMyM2UgMTAwNjQ0DQo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBA
IC0xMzkwOSwxOSArMTM5MDksNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2NoZWNrX2Zhc3Rz
ZXQoY29uc3QNCj4gPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhDQo+ID4g
IA0KPiA+ICAJbmV3X2NydGNfc3RhdGUtPnVhcGkubW9kZV9jaGFuZ2VkID0gZmFsc2U7DQo+ID4g
IAluZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgPSB0cnVlOw0KPiA+IC0NCj4gPiAtCS8qDQo+
ID4gLQkgKiBJZiB3ZSdyZSBub3QgZG9pbmcgdGhlIGZ1bGwgbW9kZXNldCB3ZSB3YW50IHRvDQo+
ID4gLQkgKiBrZWVwIHRoZSBjdXJyZW50IE0vTiB2YWx1ZXMgYXMgdGhleSBtYXkgYmUNCj4gPiAt
CSAqIHN1ZmZpY2llbnRseSBkaWZmZXJlbnQgdG8gdGhlIGNvbXB1dGVkIHZhbHVlcw0KPiA+IC0J
ICogdG8gY2F1c2UgcHJvYmxlbXMuDQo+ID4gLQkgKg0KPiA+IC0JICogRklYTUU6IHNob3VsZCBy
ZWFsbHkgY29weSBtb3JlIGZ1enp5IHN0YXRlIGhlcmUNCj4gPiAtCSAqLw0KPiA+IC0JbmV3X2Ny
dGNfc3RhdGUtPmZkaV9tX24gPSBvbGRfY3J0Y19zdGF0ZS0+ZmRpX21fbjsNCj4gPiAtCW5ld19j
cnRjX3N0YXRlLT5kcF9tX24gPSBvbGRfY3J0Y19zdGF0ZS0+ZHBfbV9uOw0KPiA+IC0JbmV3X2Ny
dGNfc3RhdGUtPmRwX20yX24yID0gb2xkX2NydGNfc3RhdGUtPmRwX20yX24yOw0KPiA+IC0JbmV3
X2NydGNfc3RhdGUtPmhhc19kcnJzID0gb2xkX2NydGNfc3RhdGUtPmhhc19kcnJzOw0KPiA+ICB9
DQo+ID4gIA0KPiA+ICBzdGF0aWMgaW50IGludGVsX2NydGNfYWRkX3BsYW5lc190b19zdGF0ZShz
dHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IEBAIC0xNDAzMiw2ICsx
NDAxOSwyMCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19jcnRjcyhzdHJ1Y3QNCj4g
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICAJcmV0dXJuIDA7DQo+ID4gIH0NCj4g
PiAgDQo+ID4gK3N0YXRpYyBib29sIGludGVsX2NwdV90cmFuc2NvZGVyX25lZWRzX21vZGVzZXQo
c3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiArCQkJCQkgICAgICAg
ZW51bSB0cmFuc2NvZGVyDQo+ID4gdHJhbnNjb2RlcikNCj4gPiArew0KPiA+ICsJc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlOw0KPiA+ICsJc3RydWN0IGludGVsX2NydGMg
KmNydGM7DQo+ID4gKwlpbnQgaTsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0
Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsDQo+ID4gaSkNCj4gPiArCQlp
ZiAobmV3X2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyID09IHRyYW5zY29kZXIpDQo+ID4gKwkJ
CXJldHVybiBuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gKwlyZXR1
cm4gZmFsc2U7DQo+ID4gK30NCj4gDQo+IEkgd291bGQgaGlnaGx5IHJlY29tbWVuZCBzcGxpdHRp
bmcgdGhpcyBwYXRjaCBpbnRvIHR3byBiZWZvcmUgcHVzaGluZw0KPiBzbyB0aGF0IHRoZSBjaGVj
ayB2cy4gY29weSBzcGxpdCBnb2VzIGluIGZpcnN0LCB0aGVuIHRoZSBNU1QgdGhpbmcgb24NCj4g
dG9wLiBUaGF0IHdheSBpZiB3ZSBoYXZlIHRvIHJldmVydCBlaXRoZXIgTVNUIG9yIHBvcnQgc3lu
YyB0aGVuIGF0DQo+IGxlYXN0IHdlIGtlZXAgdGhpcyBwYXJ0IGFuZCB3b24ndCBicmVhayB0aGUg
b3RoZXIgZmVhdHVyZSBpbiB0aGUNCj4gcHJvY2Vzcy4NCg0Kb2theSwgZG9pbmcgdGhhdA0KDQo+
IA0KPiA+ICsNCj4gPiAgLyoqDQo+ID4gICAqIGludGVsX2F0b21pY19jaGVjayAtIHZhbGlkYXRl
IHN0YXRlIG9iamVjdA0KPiA+ICAgKiBAZGV2OiBkcm0gZGV2aWNlDQo+ID4gQEAgLTE0MDg5LDYg
KzE0MDkwLDQ5IEBAIHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrKHN0cnVjdA0KPiA+IGRy
bV9kZXZpY2UgKmRldiwNCj4gPiAgCQkJYW55X21zID0gdHJ1ZTsNCj4gPiAgCX0NCj4gDQo+IFdh
cyBnb2luZyB0byBzYXkgdGhpcyBhbnlfbXMgdGhpbmcgaGFzIHRvIG1vdmUsIGJ1dCBJIGd1ZXNz
IG5vdA0KPiByZWFsbHkNCj4gc2luY2UgdGhlIGJlbG93IGxvb3Agd29uJ3QgZG8gYW55dGhpbmcg
dW5sZXNzIHdlIHN0aWxsIGhhdmUgYXQgbGVhc3QNCj4gb25lIGNydGMgbmVlZGluZyBhIG1vZGVz
ZXQuIFByb2JhYmx5IHNob3VsZCBtb3ZlIGl0LCBidXQgY2FuIGJlIGRvbmUNCj4gbGF0ZXIuDQoN
Ck9rYXkNCg0KPiANCj4gPiAgDQo+ID4gKwkvKioNCj4gPiArCSAqIENoZWNrIGlmIGZhc3RzZXQg
aXMgYWxsb3dlZCBieSBleHRlcm5hbCBkZXBlbmRlbmNpZXMgbGlrZQ0KPiA+IG90aGVyDQo+ID4g
KwkgKiBwaXBlcyBhbmQgdHJhbnNjb2RlcnMuDQo+ID4gKwkgKg0KPiA+ICsJICogUmlnaHQgbm93
IGl0IG9ubHkgZm9yY2VzIGEgZnVsbG1vZGVzZXQgd2hlbiB0aGUgTVNUIG1hc3Rlcg0KPiA+ICsJ
ICogdHJhbnNjb2RlciBkaWQgbm90IGNoYW5nZWQgYnV0IHRoZSBwaXBlIG9mIHRoZSBtYXN0ZXIN
Cj4gPiB0cmFuc2NvZGVyDQo+ID4gKwkgKiBuZWVkcyBhIGZ1bGxtb2Rlc2V0IHNvIGFsbCBzbGF2
ZXMgYWxzbyBuZWVkcyB0byBkbyBhDQo+ID4gZnVsbG1vZGVzZXQuDQo+ID4gKwkgKi8NCj4gPiAr
CWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19z
dGF0ZSwNCj4gPiBpKSB7DQo+ID4gKwkJZW51bSB0cmFuc2NvZGVyIG1hc3RlciA9IG5ld19jcnRj
X3N0YXRlLQ0KPiA+ID5tc3RfbWFzdGVyX3RyYW5zY29kZXI7DQo+ID4gKw0KPiA+ICsJCWlmICgh
bmV3X2NydGNfc3RhdGUtPnVhcGkuZW5hYmxlIHx8DQo+IA0KPiBUaGVzZSB1YXBpLmVuYWJsZSBj
aGVja3Mgc2VlbSBmaXNoeS4gU2hvdWxkIGF0IGxlYXN0IGJlIGh3LmVuYWJsZQ0KPiBzaW5jZQ0K
PiB3ZSdyZSBwYXN0IC5jb21wdXRlX2NvbmZpZygpIHN0YWdlIGFscmVhZHkuDQoNCk9rYXkNCg0K
PiANCj4gPiArCQkgICAgIWludGVsX2RwX21zdF9pc19zbGF2ZV90cmFucyhuZXdfY3J0Y19zdGF0
ZSkgfHwNCj4gPiArCQkgICAgbmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gKwkJ
CWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQlpZiAoaW50ZWxfY3B1X3RyYW5zY29kZXJfbmVlZHNf
bW9kZXNldChzdGF0ZSwgbWFzdGVyKSkNCj4gPiB7DQo+ID4gKwkJCW5ld19jcnRjX3N0YXRlLT51
YXBpLm1vZGVfY2hhbmdlZCA9IHRydWU7DQo+ID4gKwkJCW5ld19jcnRjX3N0YXRlLT51cGRhdGVf
cGlwZSA9IGZhbHNlOw0KPiA+ICsJCX0NCj4gPiArCX0NCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9v
bGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywNCj4gPiBvbGRfY3J0Y19zdGF0
ZSwNCj4gPiArCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gPiArCQlpZiAoIW5ld19j
cnRjX3N0YXRlLT51YXBpLmVuYWJsZSB8fA0KPiA+ICsJCSAgICBuZWVkc19tb2Rlc2V0KG5ld19j
cnRjX3N0YXRlKSB8fA0KPiA+ICsJCSAgICAhbmV3X2NydGNfc3RhdGUtPnVwZGF0ZV9waXBlKQ0K
PiA+ICsJCQljb250aW51ZTsNCj4gPiArDQo+ID4gKwkJLyoNCj4gPiArCQkgKiBJZiB3ZSdyZSBu
b3QgZG9pbmcgdGhlIGZ1bGwgbW9kZXNldCB3ZSB3YW50IHRvDQo+ID4gKwkJICoga2VlcCB0aGUg
Y3VycmVudCBNL04gdmFsdWVzIGFzIHRoZXkgbWF5IGJlDQo+ID4gKwkJICogc3VmZmljaWVudGx5
IGRpZmZlcmVudCB0byB0aGUgY29tcHV0ZWQgdmFsdWVzDQo+ID4gKwkJICogdG8gY2F1c2UgcHJv
YmxlbXMuDQo+ID4gKwkJICoNCj4gPiArCQkgKiBGSVhNRTogc2hvdWxkIHJlYWxseSBjb3B5IG1v
cmUgZnV6enkgc3RhdGUgaGVyZQ0KPiA+ICsJCSAqLw0KPiA+ICsJCW5ld19jcnRjX3N0YXRlLT5m
ZGlfbV9uID0gb2xkX2NydGNfc3RhdGUtPmZkaV9tX247DQo+ID4gKwkJbmV3X2NydGNfc3RhdGUt
PmRwX21fbiA9IG9sZF9jcnRjX3N0YXRlLT5kcF9tX247DQo+ID4gKwkJbmV3X2NydGNfc3RhdGUt
PmRwX20yX24yID0gb2xkX2NydGNfc3RhdGUtPmRwX20yX24yOw0KPiA+ICsJCW5ld19jcnRjX3N0
YXRlLT5oYXNfZHJycyA9IG9sZF9jcnRjX3N0YXRlLT5oYXNfZHJyczsNCj4gDQo+IFN0aWxsIHNh
ZC4NCg0KDQpBbnkgc3VnZ2VzdGlvbiBob3cgdG8gZml4IHRoaXM/IEkgY2FuIHdvcmsgb24gdGhp
cyBhZnRlciB0aGlzIE1TVCBmaXJlLg0KDQo+IA0KPiA+ICsJfQ0KPiA+ICsNCj4gPiAgCWlmIChh
bnlfbXMgJiYgIWNoZWNrX2RpZ2l0YWxfcG9ydF9jb25mbGljdHMoc3RhdGUpKSB7DQo+ID4gIAkJ
RFJNX0RFQlVHX0tNUygicmVqZWN0aW5nIGNvbmZsaWN0aW5nIGRpZ2l0YWwgcG9ydA0KPiA+IGNv
bmZpZ3VyYXRpb25cbiIpOw0KPiA+ICAJCXJldCA9IEVJTlZBTDsNCj4gPiAtLSANCj4gPiAyLjI0
LjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
