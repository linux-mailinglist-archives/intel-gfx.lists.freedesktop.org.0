Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABB5DC00D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 10:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986B36EAF5;
	Fri, 18 Oct 2019 08:34:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76BB76EAF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 08:34:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 01:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="348016901"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
 by orsmga004.jf.intel.com with ESMTP; 18 Oct 2019 01:34:38 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 18 Oct 2019 09:34:37 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.193]) with mapi id 14.03.0439.000;
 Fri, 18 Oct 2019 09:34:36 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Ausmus, James" <james.ausmus@intel.com>
Thread-Topic: [PATCH v4 1/2] drm/i915: Refactor intel_can_enable_sagv
Thread-Index: AQHVg1/bJNS4kkHJuU+qF7ifweUDUadfUwaAgACygAA=
Date: Fri, 18 Oct 2019 08:34:35 +0000
Message-ID: <ea6f15ae569628982bc2cf67e71642d3f5670508.camel@intel.com>
References: <20191015135013.10630-1-stanislav.lisovskiy@intel.com>
 <20191015135013.10630-2-stanislav.lisovskiy@intel.com>
 <20191017215310.GB10747@jausmus-gentoo-dev6.jf.intel.com>
In-Reply-To: <20191017215310.GB10747@jausmus-gentoo-dev6.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <5D2363696D1885408D0D9CD2C661CB45@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Refactor
 intel_can_enable_sagv
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTEwLTE3IGF0IDE0OjUzIC0wNzAwLCBKYW1lcyBBdXNtdXMgd3JvdGU6DQo+
IE9uIFR1ZSwgT2N0IDE1LCAyMDE5IGF0IDA0OjUwOjEyUE0gKzAzMDAsIFN0YW5pc2xhdiBMaXNv
dnNraXkgd3JvdGU6DQo+ID4gQ3VycmVudGx5IGludGVsX2Nhbl9lbmFibGVfc2FndiBmdW5jdGlv
biBjb250YWlucw0KPiA+IGEgbWl4IG9mIHdvcmthcm91bmRzIGZvciBkaWZmZXJlbnQgcGxhdGZv
cm1zDQo+ID4gc29tZSBvZiB0aGVtIGFyZSBub3QgdmFsaWQgZm9yIGdlbnMgPj0gMTEgYWxyZWFk
eSwNCj4gPiBzbyBsZXRzIHNwbGl0IGl0IGludG8gc2VwYXJhdGUgZnVuY3Rpb25zLg0KPiA+IA0K
PiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNr
aXlAaW50ZWwuY29tPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAaW50
ZWwuY29tPg0KPiA+IENjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgfCA3Mw0KPiA+ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNzAg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiArYm9vbCBpY2xfY2FuX2Vu
YWJsZV9zYWd2KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICt7DQo+ID4g
KwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gc3RhdGUtPmJhc2UuZGV2Ow0KPiA+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOw0KPiA+ICsJc3RydWN0
IGludGVsX2NydGMgKmNydGM7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2Ny
dGNfc3RhdGU7DQo+ID4gKwlpbnQgbGV2ZWwsIGxhdGVuY3k7DQo+ID4gKwlpbnQgaTsNCj4gPiAr
CWludCBwbGFuZV9pZDsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVsX2hhc19zYWd2KGRldl9wcml2
KSkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKw0KPiA+ICsJLyoNCj4gPiArCSAqIElmIHRo
ZXJlIGFyZSBubyBhY3RpdmUgQ1JUQ3MsIG5vIGFkZGl0aW9uYWwgY2hlY2tzIG5lZWQgYmUNCj4g
PiBwZXJmb3JtZWQNCj4gPiArCSAqLw0KPiA+ICsJaWYgKGh3ZWlnaHQ4KHN0YXRlLT5hY3RpdmVf
cGlwZXMpID09IDApDQo+ID4gKwkJcmV0dXJuIHRydWU7DQo+ID4gKw0KPiA+ICsJZm9yX2VhY2hf
bmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsDQo+ID4gKwkJCQkJICAgICBuZXdf
Y3J0Y19zdGF0ZSwgaSkgew0KPiA+ICsNCj4gPiArCQlpZiAoY3J0Yy0+YmFzZS5zdGF0ZS0+YWRq
dXN0ZWRfbW9kZS5mbGFncyAmDQo+ID4gRFJNX01PREVfRkxBR19JTlRFUkxBQ0UpDQo+ID4gKwkJ
CXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gKwkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+YmFzZS5l
bmFibGUpDQo+ID4gKwkJCWNvbnRpbnVlOw0KPiA+ICsNCj4gPiArCQlmb3JfZWFjaF9wbGFuZV9p
ZF9vbl9jcnRjKGNydGMsIHBsYW5lX2lkKSB7DQo+ID4gKwkJCXN0cnVjdCBza2xfcGxhbmVfd20g
KndtID0NCj4gPiArCQkJCSZuZXdfY3J0Y19zdGF0ZS0NCj4gPiA+d20uc2tsLm9wdGltYWwucGxh
bmVzW3BsYW5lX2lkXTsNCj4gPiArDQo+ID4gKwkJCS8qIFNraXAgdGhpcyBwbGFuZSBpZiBpdCdz
IG5vdCBlbmFibGVkICovDQo+ID4gKwkJCWlmICghd20tPndtWzBdLnBsYW5lX2VuKQ0KPiA+ICsJ
CQkJY29udGludWU7DQo+ID4gKw0KPiA+ICsJCQkvKiBGaW5kIHRoZSBoaWdoZXN0IGVuYWJsZWQg
d20gbGV2ZWwgZm9yIHRoaXMNCj4gPiBwbGFuZSAqLw0KPiA+ICsJCQlmb3IgKGxldmVsID0gaWxr
X3dtX21heF9sZXZlbChkZXZfcHJpdik7DQo+ID4gKwkJCSAgICAgIXdtLT53bVtsZXZlbF0ucGxh
bmVfZW47IC0tbGV2ZWwpDQo+ID4gKwkJCSAgICAgeyB9DQo+ID4gKw0KPiA+ICsJCQlsYXRlbmN5
ID0gZGV2X3ByaXYtPndtLnNrbF9sYXRlbmN5W2xldmVsXTsNCj4gDQo+IFRoaXMgaXNuJ3QgZXhh
Y3RseSB0aGUgc2FtZSBmb3IgVEdMLiBGcm9tIEJTcGVjIDQ5MzI1LCAiQ2FsY3VsYXRlDQo+IHdh
dGVybWFyayBsZXZlbCAwIHdpdGggbGV2ZWwgMCBsYXRlbmN5ICsgU0FHViBibG9jayB0aW1lLiBJ
ZiB0aGUNCj4gcmVzdWx0DQo+IGNhbiBiZSBzdXBwb3J0ZWQgKGRvZXMgbm90IGV4Y2VlZCBtYXhp
bXVtKSwgdGhlbiB0aGUgcGxhbmUgY2FuDQo+IHRvbGVyYXRlDQo+IFNBR1YiLCBzbyBJIHRoaW5r
IGl0IGNhbiBiZSBzaW1wbGlmaWVkIGZvciBHZW4xMisgYnkgbm90IGhhdmluZyB0bw0KPiBsb29w
DQo+IHRocm91Z2ggYWxsIHRoZSB3bSBsZXZlbHMuDQo+IA0KPiAtSmFtZXMNCg0KWWVzLCB3ZSBk
aXNjdXNzZWQgdGhhdCB3aXRoIFZpbGxlIGFzIEkgdW5kZXJzdG9vZCwgcHJvcGVybHkgZG9pbmcN
CnRoYXQgZm9yIFRHTCByZXF1aXJlcyBjaGFuZ2VzIHRvIHdhdGVybWFyay9kZGIgYWxsb2NhdGlv
biBhbGdvcml0aG0sDQpzbyB0aGF0IHdlIGNoZWNrIGlmIGRidWYgY2FuIGZpdCBMZXZlbCAwIHdh
dGVybWFyayBpbmNyZWFzZWQgYnkgU0FHVg0KYmxvY2sgdGltZS4gSSB3YXMgbm90IHN1cmUgd2hl
dGhlciBzaG91bGQgSSBhZGQgdGhpcyBwYXRjaCB0byB0aGlzDQpzZXJpZXMgb3IgcHJvY2VlZCB3
aXRoIHRoYXQgc2VwYXJhdGVseSwgcHJvYmFibHkgdGhpcyBpcyB3b3J0aCBhZGRpbmcNCmhlcmUg
LSBob3dldmVyIHRoZW4gaXQgd291bGQgcmVxdWlyZSBjaGFuZ2VzIHRvIHdhdGVybWFyayBhbGdv
cml0aG0sDQphcyB3ZSBuZWVkIHRvIHJlY2FsY3VsYXRlIG1pbl9kZGJfYWxsb2MgZm9yIExldmVs
IDAgbGF0ZW5jeSArIFNBR1YNCmFuZCB0aGVuIGNoZWNrIGlmIHdlIGZpdCBpbnRvIERCdWYgYWdh
aW4uDQpTbyBiYXNpY2FsbHkgd2UnbGwgaGF2ZSB0byBjYWxjdWxhdGUgd2F0ZXJtYXJrIGxldmVs
IDAgdHdpY2UgLSBvbmNlIGZvcg0KU0FHViBlbmFibGVkIGFuZCBvbmNlIGZvciBTQUdWIGRpc2Fi
bGVkIGNhc2UsIEkgd291bGQgcHJvYmFibHkgZG8gaXQgDQphbHJlYWR5IGR1cmluZyB3YXRlcm1h
cmsgY2FsY3VsYXRpb25zIG5vdCB3aGVuIGNoZWNraW5nIGJhbmR3aWR0aCBhbmQNCnRoZW4gc2V0
IHNvbWUgIlNBR1YgY2FuIGVuYWJsZSIgZmxhZywgd2hpY2ggd2lsbCBiZSB0aGVuIHVzZWQgYnkN
CmludGVsX2Nhbl9lbmFibGVfc2Fndiwgc28gdGhhdCB3ZSBhY3QgYWNjb3JkaW5nbHkgd2hlbg0K
YmFuZHdpZHRoIGNoZWNrIGFuZCByZXN0cmljdGluZyBxZ3YgcG9pbnRzIGhhcHBlbnMuIEZvciBw
cmUtZ2VuIDEyIGl0DQp3aWxsIG90aGVyd2lzZSB1c2UgdGhlIG9sZCBhbGdvcml0aG0uDQoNCj4g
DQo+ID4gKw0KPiA+ICsJCQkvKg0KPiA+ICsJCQkgKiBJZiBhbnkgb2YgdGhlIHBsYW5lcyBvbiB0
aGlzIHBpcGUgZG9uJ3QNCj4gPiBlbmFibGUgd20gbGV2ZWxzIHRoYXQNCj4gPiArCQkJICogaW5j
dXIgbWVtb3J5IGxhdGVuY2llcyBoaWdoZXIgdGhhbg0KPiA+IHNhZ3ZfYmxvY2tfdGltZV91cyB3
ZQ0KPiA+ICsJCQkgKiBjYW4ndCBlbmFibGUgU0FHVi4NCj4gPiArCQkJICovDQo+ID4gKwkJCWlm
IChsYXRlbmN5IDwgZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cykNCj4gPiArCQkJCXJldHVy
biBmYWxzZTsNCj4gPiArCQl9DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHRydWU7DQo+
ID4gK30NCj4gPiArDQo+ID4gK2Jvb2wgaW50ZWxfY2FuX2VuYWJsZV9zYWd2KHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gc3RhdGUtPmJhc2UuZGV2Ow0KPiA+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShkZXYpOw0KPiA+ICsNCj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKQ0KPiA+ICsJCXJldHVybiBpY2xfY2FuX2VuYWJsZV9zYWd2KHN0YXRlKTsNCj4g
PiArDQo+ID4gKwlyZXR1cm4gc2tsX2Nhbl9lbmFibGVfc2FndihzdGF0ZSk7DQo+ID4gK30NCj4g
PiArDQo+ID4gIHN0YXRpYyB1MTYgaW50ZWxfZ2V0X2RkYl9zaXplKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJICAgICAgY29uc3QgdTY0IHRvdGFsX2Rh
dGFfcmF0ZSwNCj4gPiAtLSANCj4gPiAyLjE3LjENCj4gPiANCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
