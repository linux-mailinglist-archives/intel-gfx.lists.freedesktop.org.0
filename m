Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C993F10A64E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 23:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC856E1B2;
	Tue, 26 Nov 2019 22:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB636E1B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 22:03:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 14:03:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="260818770"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Nov 2019 14:03:09 -0800
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 14:03:09 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX126.amr.corp.intel.com ([169.254.1.160]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 14:03:08 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/7] drm/i915/display: Refactor
 intel_commit_modeset_disables()
Thread-Index: AQHVoZinqwzIXygh40aP4L0XiqGy2qeeZZwAgAAn34A=
Date: Tue, 26 Nov 2019 22:03:08 +0000
Message-ID: <179a6918f894feb8753674ea419f3e50fae775e8.camel@intel.com>
References: <20191123005459.155383-1-jose.souza@intel.com>
 <20191126194024.GE1208@intel.com>
In-Reply-To: <20191126194024.GE1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <1E1735168CA9D14DA897D33384318BEF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/display: Refactor
 intel_commit_modeset_disables()
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

T24gVHVlLCAyMDE5LTExLTI2IGF0IDIxOjQwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDIyLCAyMDE5IGF0IDA0OjU0OjUzUE0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emENCj4gd3JvdGU6DQo+ID4gQ29tbWl0IDljNzIyZTE3YzFiOSAoImRybS9pOTE1
OiBEaXNhYmxlIHBpcGVzIGluIHJldmVyc2Ugb3JkZXIiKQ0KPiA+IHJldmVydGVkIHRoZSBvcmRl
ciB0aGF0IHBpcGVzIGdldHMgZGlzYWJsZWQgYmVjYXVzZSBvZiBUR0wNCj4gPiBtYXN0ZXIvc2xh
dmUgcmVsYXRpb25zaGlwIGJldHdlZW4gdHJhbnNjb2RlcnMgaW4gTVNUIG1vZGUuDQo+ID4gDQo+
ID4gQnV0IGFzIHN0YXRlZCBpbiBhIGNvbW1lbnQgaW4gc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoKSB0aGUNCj4gPiBlbmFibGluZyBvcmRlciBpcyBub3QgYWx3YXlzIGNyZXNjZW50LCBwb3Nz
aWJseSBjYXVzaW5nIHByZXZpb3VzbHkNCj4gPiBzZWxlY3RlZCBzbGF2ZSB0cmFuc2NvZGVyIGJl
aW5nIGVuYWJsZWQgYmVmb3JlIG1hc3RlciBzbyBhbm90aGVyDQo+ID4gYXBwcm9hY2ggd2lsbCBi
ZSBuZWVkZWQgdG8gc2VsZWN0IGEgdHJhbnNjb2RlciB0byBtYXN0ZXIgaW4gTVNUDQo+ID4gbW9k
ZS4NCj4gPiBJdCB3aWxsIGJlIHNpbWlsYXIgdG8gdGhlIGFwcHJvYWNoIHRha2VuIGluIHBvcnQg
c3luYy4NCj4gPiANCj4gPiBCdXQgaW5zdGVhZCBvZiBpbXBsZW1lbnQgc29tZXRoaW5nIGxpa2UN
Cj4gPiBpbnRlbF90cmFuc19wb3J0X3N5bmNfbW9kZXNldF9kaXNhYmxlcygpIHRvIE1TVCBsZXRz
IHNpbXBseSBpdCBhbmQNCj4gPiBpdGVyYXRlIG92ZXIgYWxsIHBpcGVzIDIgdGltZXMsIHRoZSBm
aXJzdCBvbmUgZGlzYWJsaW5nIGFueSBzbGF2ZQ0KPiA+IGFuZA0KPiA+IHRoZW4gZGlzYWJsaW5n
IGV2ZXJ5dGhpbmcgZWxzZS4NCj4gPiBUaGUgTVNUIGJpdHMgd2lsbCBiZSBhZGRlZCBpbiBhbm90
aGVyIHBhdGNoLg0KPiA+IA0KPiA+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVA
aW50ZWwuY29tPg0KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pg0KPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDc5ICsrKysrKy0tLS0tLS0tDQo+ID4gLS0tLS0tDQo+ID4g
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA1NyBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4gaW5kZXggNTNkYzMxMGE1ZjZkLi4xYjFmYmI2ZDhhY2MgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC0xNDQ0
Myw1MyArMTQ0NDMsMTYgQEAgc3RhdGljIHZvaWQNCj4gPiBpbnRlbF9vbGRfY3J0Y19zdGF0ZV9k
aXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQlkZXZfcHJp
di0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3Moc3RhdGUsIGNydGMpOw0KPiA+ICB9DQo+ID4g
IA0KPiA+IC1zdGF0aWMgdm9pZCBpbnRlbF90cmFuc19wb3J0X3N5bmNfbW9kZXNldF9kaXNhYmxl
cyhzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IC0JCQkJCQkgICBz
dHJ1Y3QgaW50ZWxfY3J0Yw0KPiA+ICpjcnRjLA0KPiA+IC0JCQkJCQkgICBzdHJ1Y3QNCj4gPiBp
bnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCQkJICAgc3RydWN0DQo+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpDQo+ID4gLXsNCj4gPiAtCXN0cnVj
dCBpbnRlbF9jcnRjICpzbGF2ZV9jcnRjID0NCj4gPiBpbnRlbF9nZXRfc2xhdmVfY3J0YyhuZXdf
Y3J0Y19zdGF0ZSk7DQo+ID4gLQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X3NsYXZlX2Ny
dGNfc3RhdGUgPQ0KPiA+IC0JCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUs
IHNsYXZlX2NydGMpOw0KPiA+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9zbGF2ZV9j
cnRjX3N0YXRlID0NCj4gPiAtCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRl
LCBzbGF2ZV9jcnRjKTsNCj4gPiAtDQo+ID4gLQlXQVJOX09OKCFzbGF2ZV9jcnRjIHx8ICFuZXdf
c2xhdmVfY3J0Y19zdGF0ZSB8fA0KPiA+IC0JCSFvbGRfc2xhdmVfY3J0Y19zdGF0ZSk7DQo+ID4g
LQ0KPiA+IC0JLyogRGlzYWJsZSBTbGF2ZSBmaXJzdCAqLw0KPiA+IC0JaW50ZWxfcHJlX3BsYW5l
X3VwZGF0ZShvbGRfc2xhdmVfY3J0Y19zdGF0ZSwNCj4gPiBuZXdfc2xhdmVfY3J0Y19zdGF0ZSk7
DQo+ID4gLQlpZiAob2xkX3NsYXZlX2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gPiAtCQlpbnRl
bF9vbGRfY3J0Y19zdGF0ZV9kaXNhYmxlcyhzdGF0ZSwNCj4gPiAtCQkJCQkgICAgICBvbGRfc2xh
dmVfY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCQkgICAgICBuZXdfc2xhdmVfY3J0Y19zdGF0ZSwNCj4g
PiAtCQkJCQkgICAgICBzbGF2ZV9jcnRjKTsNCj4gPiAtDQo+ID4gLQkvKiBEaXNhYmxlIE1hc3Rl
ciAqLw0KPiA+IC0JaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShvbGRfY3J0Y19zdGF0ZSwgbmV3X2Ny
dGNfc3RhdGUpOw0KPiA+IC0JaWYgKG9sZF9jcnRjX3N0YXRlLT5ody5hY3RpdmUpDQo+ID4gLQkJ
aW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsDQo+ID4gLQkJCQkJICAgICAgb2xk
X2NydGNfc3RhdGUsDQo+ID4gLQkJCQkJICAgICAgbmV3X2NydGNfc3RhdGUsDQo+ID4gLQkJCQkJ
ICAgICAgY3J0Yyk7DQo+ID4gLX0NCj4gPiAtDQo+ID4gIHN0YXRpYyB2b2lkIGludGVsX2NvbW1p
dF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
DQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSwg
Km9sZF9jcnRjX3N0YXRlOw0KPiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+ID4gIAlp
bnQgaTsNCj4gPiAgDQo+ID4gLQkvKg0KPiA+IC0JICogRGlzYWJsZSBDUlRDL3BpcGVzIGluIHJl
dmVyc2Ugb3JkZXIgYmVjYXVzZSBzb21lDQo+ID4gZmVhdHVyZXMoTVNUIGluDQo+ID4gLQkgKiBU
R0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZlIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHBpcGVz
LA0KPiA+IHNvIGl0DQo+ID4gLQkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhlIGxvd2VzdCBwaXBl
IGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlDQo+ID4gZW5hYmxlZA0KPiA+IC0JICogZmlyc3QgYW5k
IGRpc2FibGUgaW4gdGhlIHJldmVyc2Ugb3JkZXIgc28gdGhlIG1hc3RlciB3aWxsIGJlDQo+ID4g
dGhlDQo+ID4gLQkgKiBsYXN0IG9uZSB0byBiZSBkaXNhYmxlZC4NCj4gPiAtCSAqLw0KPiA+IC0J
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0YywN
Cj4gPiBvbGRfY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKQ0K
PiA+IHsNCj4gPiAtCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKQ0KPiA+ICsJ
LyogT25seSBkaXNhYmxlIHBvcnQgc3luYyBzbGF2ZXMgKi8NCj4gPiArCWZvcl9lYWNoX29sZG5l
d19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLA0KPiA+IG9sZF9jcnRjX3N0YXRlLA0K
PiA+ICsJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiA+ICsJCWlmICghbmVlZHNfbW9k
ZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwgIWNydGMtPmFjdGl2ZSkNCj4gDQo+IFdoYXQncyB0aGUg
ZGVhbCB3aXRoIHRoZXNlIGNydGMtPmFjdGl2ZSBjaGVja3M/DQoNCldpdGgganVzdCBvbmUgbG9v
cCB3ZSB3ZXJlIHVzaW5nICJvbGRfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlIiBidXQgYXMgd2UNCnNo
b3VsZCBub3QgbW9kaWZ5IHRoZSBjb21wdXRlZCBzdGF0ZSBpbiB0aGlzIHBoYXNlIGFuZA0KaW50
ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoKSBzZXRzIGNydGMtPmFjdGl2ZSA9IGZhbHNlLCB1
c2luZyBpdA0KaW5zdGVhZC4NCg0KPiANCj4gPiAgCQkJY29udGludWU7DQo+ID4gIA0KPiA+ICAJ
CS8qIEluIGNhc2Ugb2YgVHJhbnNjb2RlciBwb3J0IFN5bmMgbWFzdGVyIHNsYXZlIENSVENzDQo+
ID4gY2FuIGJlDQo+ID4gQEAgLTE0NDk3LDIzICsxNDQ2MCwyNSBAQCBzdGF0aWMgdm9pZA0KPiA+
IGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQ0KPiA+ICAJCSAqIHNsYXZlIENSVENzIGFyZSBkaXNhYmxlZCBmaXJzdCBhbmQgdGhl
biBtYXN0ZXIgQ1JUQw0KPiA+IHNpbmNlDQo+ID4gIAkJICogU2xhdmUgdmJsYW5rcyBhcmUgbWFz
a2VkIHRpbGwgTWFzdGVyIFZibGFua3MuDQo+ID4gIAkJICovDQo+ID4gLQkJaWYgKGlzX3RyYW5z
X3BvcnRfc3luY19tb2RlKG5ld19jcnRjX3N0YXRlKSkgew0KPiA+IC0JCQlpZiAoaXNfdHJhbnNf
cG9ydF9zeW5jX21hc3RlcihuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gLQkJCQlpbnRlbF90cmFuc19w
b3J0X3N5bmNfbW9kZXNldF9kaXNhYmxlcygNCj4gPiBzdGF0ZSwNCj4gPiAtCQkJCQkJCQkgICAg
ICAgDQo+ID4gY3J0YywNCj4gPiAtCQkJCQkJCQkgICAgICAgDQo+ID4gb2xkX2NydGNfc3RhdGUs
DQo+ID4gLQkJCQkJCQkJICAgICAgIA0KPiA+IG5ld19jcnRjX3N0YXRlKTsNCj4gPiAtCQkJZWxz
ZQ0KPiA+IC0JCQkJY29udGludWU7DQo+ID4gLQkJfSBlbHNlIHsNCj4gPiAtCQkJaW50ZWxfcHJl
X3BsYW5lX3VwZGF0ZShvbGRfY3J0Y19zdGF0ZSwNCj4gPiBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4g
KwkJaWYgKCFpc190cmFuc19wb3J0X3N5bmNfbW9kZShuZXdfY3J0Y19zdGF0ZSkpDQo+ID4gKwkJ
CWNvbnRpbnVlOw0KPiA+ICsJCWlmIChpc190cmFuc19wb3J0X3N5bmNfbWFzdGVyKG5ld19jcnRj
X3N0YXRlKSkNCj4gPiArCQkJY29udGludWU7DQo+IA0KPiBXZSBkb24ndCBoYXZlIGlzX3RyYW5z
X3N5bmNfc2xhdmUoKT8NCg0KV2UgZG9uJ3QuDQoNCj4gDQo+ID4gIA0KPiA+IC0JCQlpZiAob2xk
X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gPiAtCQkJCWludGVsX29sZF9jcnRjX3N0YXRlX2Rp
c2FibGVzKHN0YXRlLA0KPiA+IC0JCQkJCQkJICAgICAgb2xkX2NydGNfDQo+ID4gc3RhdGUsDQo+
ID4gLQkJCQkJCQkgICAgICBuZXdfY3J0Y18NCj4gPiBzdGF0ZSwNCj4gPiAtCQkJCQkJCSAgICAg
IGNydGMpOw0KPiA+IC0JCX0NCj4gPiArCQlpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKG9sZF9jcnRj
X3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gKwkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlz
YWJsZXMoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLA0KPiA+ICsJCQkJCSAgICAgIG5ld19jcnRjX3N0
YXRlLCBjcnRjKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwkvKiBEaXNhYmxlIGV2ZXJ5dGhpbmcg
ZWxzZSBsZWZ0IG9uICovDQo+ID4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0
ZShzdGF0ZSwgY3J0YywNCj4gPiBvbGRfY3J0Y19zdGF0ZSwNCj4gPiArCQkJCQkgICAgbmV3X2Ny
dGNfc3RhdGUsIGkpIHsNCj4gPiArCQlpZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUp
IHx8ICFjcnRjLT5hY3RpdmUpDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQlpbnRl
bF9wcmVfcGxhbmVfdXBkYXRlKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7DQo+ID4g
KwkJaW50ZWxfb2xkX2NydGNfc3RhdGVfZGlzYWJsZXMoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLA0K
PiA+ICsJCQkJCSAgICAgIG5ld19jcnRjX3N0YXRlLCBjcnRjKTsNCj4gDQo+IFBvbmRlcmluZyBp
ZiB0aGVyZSdzIGFueSBjaGFuY2Ugb2Ygc29tZSBvZGQgZmFpbCBpZiB3ZSBoYXZlIHR3byBwb3J0
cw0KPiBydW5uaW5nIGluIHBvcnQgc3luYyBtb2RlLiBUaGF0IHdpbGwgbm93IGxlYWQgdG8NCj4g
ZGlzYWJsZV9zbGF2ZSgwKS0+ZGlzYWJsZV9zbGF2ZSgxKS0+ZGlzYWJsZV9tYXN0ZXIoMCktDQo+
ID5kaXNhYmxlX21hc3RlcigxKS4uLg0KDQpUaG91Z2h0cyBNYW5hc2k/DQoNCj4gDQo+ID4gIAl9
DQo+ID4gIH0NCj4gPiAgDQo+ID4gLS0gDQo+ID4gMi4yNC4wDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
