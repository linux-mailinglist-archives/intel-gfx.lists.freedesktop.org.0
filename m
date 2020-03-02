Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0D0175EB6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 16:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 507DE6E338;
	Mon,  2 Mar 2020 15:50:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15C8891D4
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 15:50:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 07:50:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,507,1574150400"; d="scan'208";a="228496570"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga007.jf.intel.com with ESMTP; 02 Mar 2020 07:50:46 -0800
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 2 Mar 2020 15:50:45 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 15:50:45 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Mon, 2 Mar 2020 15:50:45 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v2 05/20] drm/i915: Make skl_compute_dbuf_slices() behave
 consistently for all platforms
Thread-Index: AQHV6/6tz02Jn0qi+0C39L0ep1RTsagsKdKAgAlCDoCAAA/2AA==
Date: Mon, 2 Mar 2020 15:50:45 +0000
Message-ID: <bcbda508cb8ca211def6662c848a0d97ab989249.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-6-ville.syrjala@linux.intel.com>
 <587c8ad3b5fc69b2ec0d4fcae302d4e8c959ba82.camel@intel.com>
 <20200302145037.GK13686@intel.com>
In-Reply-To: <20200302145037.GK13686@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <0317FFAA3DE36646BB7C8AD7E617339A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 05/20] drm/i915: Make
 skl_compute_dbuf_slices() behave consistently for all platforms
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

T24gTW9uLCAyMDIwLTAzLTAyIGF0IDE2OjUwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRmViIDI1LCAyMDIwIGF0IDA1OjMwOjU3UE0gKzAwMDAsIExpc292c2tpeSwg
U3RhbmlzbGF2IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAyMC0wMi0yNSBhdCAxOToxMSArMDIwMCwg
VmlsbGUgU3lyamFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IEN1cnJlbnRseSBza2xfY29t
cHV0ZV9kYnVmX3NsaWNlcygpIHJldHVybnMgMCBmb3IgYW55IGluYWN0aXZlDQo+ID4gPiBwaXBl
DQo+ID4gPiBvbg0KPiA+ID4gaWNsKywgYnV0IHJldHVybnMgQklUKFMxKSBvbiBwcmUtaWNsIGZv
ciBhbnkgcGlwZSAod2hldGhlciBpdCdzDQo+ID4gPiBhY3RpdmUgb3INCj4gPiA+IG5vdCkuIExl
dCdzIG1ha2UgdGhlIGJlaGF2aW91ciBjb25zaXN0ZW50IGFuZCBhbHdheXMgcmV0dXJuIDAgZm9y
DQo+ID4gPiBhbnkNCj4gPiA+IGluYWN0aXZlIHBpcGUuDQo+ID4gPiANCj4gPiA+IENjOiBTdGFu
aXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
MiArLQ0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gPiBpbmRl
eCBhMmU3ODk2OWMwZGYuLjY0MGY0YzRmZDUwOCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMNCj4gPiA+IEBAIC00NDA4LDcgKzQ0MDgsNyBAQCBzdGF0aWMgdTggc2tsX2Nv
bXB1dGVfZGJ1Zl9zbGljZXMoY29uc3QNCj4gPiA+IHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ICAJICogRm9yIGFueXRoaW5nIGVsc2UganVzdCByZXR1
cm4gb25lIHNsaWNlIHlldC4NCj4gPiA+ICAJICogU2hvdWxkIGJlIGV4dGVuZGVkIGZvciBvdGhl
ciBwbGF0Zm9ybXMuDQo+ID4gPiAgCSAqLw0KPiA+ID4gLQlyZXR1cm4gQklUKERCVUZfUzEpOw0K
PiA+ID4gKwlyZXR1cm4gYWN0aXZlX3BpcGVzICYgQklUKHBpcGUpID8gQklUKERCVUZfUzEpIDog
MDsNCj4gPiANCj4gPiBJIHRoaW5rIHRoZSBpbml0aWFsIGlkZWEgd2FzIHRoaXMgd29uJ3QgYmUg
ZXZlbiBjYWxsZWQgaWYgdGhlcmUgDQo+ID4gYXJlIG5vIGFjdGl2ZSBwaXBlcyBhdCBhbGwgLSBz
a2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzDQo+ID4gd291bGQNCj4gPiBiYWlsIG91
dCBpbW1lZGlhdGVseS4gSWYgdGhlcmUgd2VyZSBzb21lIGFjdGl2ZSBwaXBlcyAtIHRoZW4gd2UN
Cj4gPiB3aWxsDQo+ID4gaGF2ZSB0byB1c2Ugc2xpY2UgUzEgYW55d2F5IC0gYmVjYXVzZSB0aGVy
ZSB3ZXJlIHNpbXBseSBubyBvdGhlcg0KPiA+IHNsaWNlcw0KPiA+IGF2YWlsYWJsZS4gSWYgc29t
ZSBwaXBlcyB3ZXJlIGluYWN0aXZlIC0gdGhleSBhcmUgY3VycmVudGx5IHNraXBwZWQNCj4gPiBi
eQ0KPiA+ICFjcnRjX3N0YXRlLT5ody5hY3RpdmUgY2hlY2sgLSBzbyBJIHdvdWxkIGp1c3Qga2Vl
cCBpdCBzaW1wbGUgYW5kDQo+ID4gZG9uJ3QNCj4gPiBjYWxsIHRoaXMgZnVuY3Rpb24gZm9yIG5v
bi1hY3RpdmUgcGlwZXMgYXQgYWxsLg0KPiANCj4gVGhhdCdzIGp1c3QgZ29pbmcgdG8gbWFrZSB0
aGUgY2FsbGVyIG1vcmUgbWVzc3kgYnkgZm9yY2luZyBpdCB0bw0KPiBjaGVjayBmb3IgYWN0aXZl
X3BpcGVzIDAgdnMuIG5vdC4gSWUuIHdlJ2QgYmUgc3BsaXR0aW5nIHRoZQ0KPiByZXNwb25zaWJp
bGl0eSBvZiBjb21wdXRpbmcgdGhlIGRidWYgc2xpY2VzIGZvciB0aGlzIHBpcGUgYmV0d2Vlbg0K
PiBza2xfY29tcHV0ZV9kYnVmX3NsaWNlcygpIGFuZCBpdHMgY2FsbGVyLiBOb3QgYSBnb29kIGlk
ZWEgSU1PLg0KDQpXZWxsLCBpbiB0aGF0IHNlbnNlIEkgYWdyZWUuIEN1cnJlbnRseSBpdCBpcyBq
dXN0IHRoYXQgdGhpcyBjaGVjayBpcw0KYW55d2F5IHRoZXJlIHdoZW4geW91IGdldCBkZGIgYWxs
b2NhdGlvbiBsaW1pdHMuIA0KDQpDb3VsZCB0aGlzIGJlIGFjdHVhbGx5IGV2ZW4gbmljZXIgdG8g
Z2V0IG9uZSBtb3JlIHZlcnkgc2ltcGxlIHRhYmxlIGZvcg0KZXZlcnl0aGluZyAiYmVmb3JlLWdl
bjExIj8gV2Ugd291bGQgaGF2ZSBpdCB0aGVuIGluIGEgcXVpdGUgdW5pZmllZA0KbG9va2luZyB3
YXkuDQoNClN0YW4NCg0KDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
