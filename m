Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C179F10C083
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 00:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C0F6E5CF;
	Wed, 27 Nov 2019 23:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 314AC6E5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 23:11:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 15:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="409170981"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 27 Nov 2019 15:11:15 -0800
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 15:11:15 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX125.amr.corp.intel.com ([169.254.2.206]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 15:11:15 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/7] drm/i915:
 s/pipe_config/new_crtc_state/ intel_{pre, post}_plane_update()
Thread-Index: AQHVpVXF8xpQKZgX4kC2mpew6PRfu6egKteAgAAAhwA=
Date: Wed, 27 Nov 2019 23:11:15 +0000
Message-ID: <9f56d7450f2a068958392112853c18654aa6f3cb.camel@intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
 <20191127190556.1574-4-ville.syrjala@linux.intel.com>
 <22bb95e4088bfddf5349f7fe4c1e92840d05bed1.camel@intel.com>
In-Reply-To: <22bb95e4088bfddf5349f7fe4c1e92840d05bed1.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <255DC61903735047A1587753FCD8E634@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: s/pipe_config/new_crtc_state/
 intel_{pre, post}_plane_update()
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDIzOjA5ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjA1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ID4gDQo+ID4gUmVwbGFjZSB0aGUgb2xkIHdvcmxkICdwaXBlX2NvbmZpZycgdmFyaWFibGUg
bmFtZSB3aXRoIHRoZSBuZXcNCj4gPiB0aGluZy4NCj4gPiANCg0KSSBndWVzcyB5b3UgbWVhbiBv
bGQgd29yZCAncGlwZV9jb25maWcnPw0KDQo+IA0KPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNDAg
KysrKysrKysrKy0tLS0tLQ0KPiA+IC0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDIwIGluc2Vy
dGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRleCA4OWM4ZjgxOGYyODku
LmUzNDFiOTdiN2RlYyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTYwNjgsMjAgKzYwNjgsMjAgQEAgc3RhdGljIHZv
aWQgaW50ZWxfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAq
b2xkX2NydGNfc3RhdGUpDQo+ID4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFz
ZS5kZXY7DQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGRldik7DQo+ID4gIAlzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUgPSBvbGRfY3J0Y19z
dGF0ZS0+dWFwaS5zdGF0ZTsNCj4gPiAtCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2Nv
bmZpZyA9DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQ0K
PiA+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUodG9faW50ZWxfYXRvbWljX3N0
YXRlKHMNCj4gPiB0YXRlKSwNCj4gPiAgCQkJCQkJY3J0Yyk7DQo+ID4gIAlzdHJ1Y3QgZHJtX3Bs
YW5lICpwcmltYXJ5ID0gY3J0Yy0+YmFzZS5wcmltYXJ5Ow0KPiA+ICAJc3RydWN0IGRybV9wbGFu
ZV9zdGF0ZSAqb2xkX3ByaW1hcnlfc3RhdGUgPQ0KPiA+ICAJCWRybV9hdG9taWNfZ2V0X29sZF9w
bGFuZV9zdGF0ZShzdGF0ZSwgcHJpbWFyeSk7DQo+ID4gIA0KPiA+IC0JaW50ZWxfZnJvbnRidWZm
ZXJfZmxpcCh0b19pOTE1KGNydGMtPmJhc2UuZGV2KSwgcGlwZV9jb25maWctDQo+ID4gPiBmYl9i
aXRzKTsNCj4gPiArCWludGVsX2Zyb250YnVmZmVyX2ZsaXAodG9faTkxNShjcnRjLT5iYXNlLmRl
diksIG5ld19jcnRjX3N0YXRlLQ0KPiA+ID4gZmJfYml0cyk7DQo+ID4gIA0KPiA+IC0JaWYgKHBp
cGVfY29uZmlnLT51cGRhdGVfd21fcG9zdCAmJiBwaXBlX2NvbmZpZy0+aHcuYWN0aXZlKQ0KPiA+
ICsJaWYgKG5ld19jcnRjX3N0YXRlLT51cGRhdGVfd21fcG9zdCAmJiBuZXdfY3J0Y19zdGF0ZS0N
Cj4gPiA+IGh3LmFjdGl2ZSkNCj4gPiAgCQlpbnRlbF91cGRhdGVfd2F0ZXJtYXJrcyhjcnRjKTsN
Cj4gPiAgDQo+ID4gLQlpZiAoaHN3X3Bvc3RfdXBkYXRlX2VuYWJsZV9pcHMob2xkX2NydGNfc3Rh
dGUsIHBpcGVfY29uZmlnKSkNCj4gPiAtCQloc3dfZW5hYmxlX2lwcyhwaXBlX2NvbmZpZyk7DQo+
ID4gKwlpZiAoaHN3X3Bvc3RfdXBkYXRlX2VuYWJsZV9pcHMob2xkX2NydGNfc3RhdGUsIG5ld19j
cnRjX3N0YXRlKSkNCj4gPiArCQloc3dfZW5hYmxlX2lwcyhuZXdfY3J0Y19zdGF0ZSk7DQo+ID4g
IA0KPiA+ICAJaWYgKG9sZF9wcmltYXJ5X3N0YXRlKSB7DQo+ID4gIAkJc3RydWN0IGRybV9wbGFu
ZV9zdGF0ZSAqbmV3X3ByaW1hcnlfc3RhdGUgPQ0KPiA+IEBAIC02MDkwLDIyICs2MDkwLDIyIEBA
IHN0YXRpYyB2b2lkIGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2Ny
dGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlKQ0KPiA+ICAJCWludGVsX2ZiY19wb3N0X3VwZGF0ZShj
cnRjKTsNCj4gPiAgDQo+ID4gIAkJaWYgKG5ld19wcmltYXJ5X3N0YXRlLT52aXNpYmxlICYmDQo+
ID4gLQkJICAgIChuZWVkc19tb2Rlc2V0KHBpcGVfY29uZmlnKSB8fA0KPiA+ICsJCSAgICAobmVl
ZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwNCj4gPiAgCQkgICAgICFvbGRfcHJpbWFyeV9z
dGF0ZS0+dmlzaWJsZSkpDQo+ID4gLQkJCWludGVsX3Bvc3RfZW5hYmxlX3ByaW1hcnkoJmNydGMt
PmJhc2UsDQo+ID4gcGlwZV9jb25maWcpOw0KPiA+ICsJCQlpbnRlbF9wb3N0X2VuYWJsZV9wcmlt
YXJ5KCZjcnRjLT5iYXNlLA0KPiA+IG5ld19jcnRjX3N0YXRlKTsNCj4gPiAgCX0NCj4gPiAgDQo+
ID4gIAlpZiAobmVlZHNfbnYxMl93YShvbGRfY3J0Y19zdGF0ZSkgJiYNCj4gPiAtCSAgICAhbmVl
ZHNfbnYxMl93YShwaXBlX2NvbmZpZykpDQo+ID4gKwkgICAgIW5lZWRzX252MTJfd2EobmV3X2Ny
dGNfc3RhdGUpKQ0KPiA+ICAJCXNrbF93YV84MjcoZGV2X3ByaXYsIGNydGMtPnBpcGUsIGZhbHNl
KTsNCj4gPiAgDQo+ID4gIAlpZiAobmVlZHNfc2NhbGVyY2xrX3dhKG9sZF9jcnRjX3N0YXRlKSAm
Jg0KPiA+IC0JICAgICFuZWVkc19zY2FsZXJjbGtfd2EocGlwZV9jb25maWcpKQ0KPiA+ICsJICAg
ICFuZWVkc19zY2FsZXJjbGtfd2EobmV3X2NydGNfc3RhdGUpKQ0KPiA+ICAJCWljbF93YV9zY2Fs
ZXJjbGtnYXRpbmcoZGV2X3ByaXYsIGNydGMtPnBpcGUsIGZhbHNlKTsNCj4gPiAgfQ0KPiA+ICAN
Cj4gPiAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ICpvbGRfY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCSAgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gKnBpcGVfY29uZmlnKQ0KPiA+ICsJCQkJICAgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gPiAqbmV3X2NydGNfc3RhdGUpDQo+ID4gIHsNCj4gPiAgCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhvbGRfY3J0Y19zdGF0ZS0NCj4gPiA+IHVhcGku
Y3J0Yyk7DQo+ID4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7DQo+
ID4gQEAgLTYxMTQsMTEgKzYxMTQsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHJlX3BsYW5lX3Vw
ZGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwNCj4gPiAg
CXN0cnVjdCBkcm1fcGxhbmUgKnByaW1hcnkgPSBjcnRjLT5iYXNlLnByaW1hcnk7DQo+ID4gIAlz
dHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpvbGRfcHJpbWFyeV9zdGF0ZSA9DQo+ID4gIAkJZHJtX2F0
b21pY19nZXRfb2xkX3BsYW5lX3N0YXRlKHN0YXRlLCBwcmltYXJ5KTsNCj4gPiAtCWJvb2wgbW9k
ZXNldCA9IG5lZWRzX21vZGVzZXQocGlwZV9jb25maWcpOw0KPiA+ICsJYm9vbCBtb2Rlc2V0ID0g
bmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICppbnRlbF9zdGF0ZSA9DQo+ID4gIAkJdG9faW50ZWxfYXRvbWljX3N0YXRlKHN0YXRl
KTsNCj4gPiAgDQo+ID4gLQlpZiAoaHN3X3ByZV91cGRhdGVfZGlzYWJsZV9pcHMob2xkX2NydGNf
c3RhdGUsIHBpcGVfY29uZmlnKSkNCj4gPiArCWlmIChoc3dfcHJlX3VwZGF0ZV9kaXNhYmxlX2lw
cyhvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUpKQ0KPiA+ICAJCWhzd19kaXNhYmxlX2lw
cyhvbGRfY3J0Y19zdGF0ZSk7DQo+ID4gIA0KPiA+ICAJaWYgKG9sZF9wcmltYXJ5X3N0YXRlKSB7
DQo+ID4gQEAgLTYxMjYsNyArNjEyNiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91
cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+ID4g
IAkJCWludGVsX2F0b21pY19nZXRfbmV3X3BsYW5lX3N0YXRlKGludGVsX3N0YXRlLA0KPiA+ICAJ
CQkJCQkJIHRvX2ludGVsX3BsYW5lDQo+ID4gKHByaW1hcnkpKTsNCj4gPiAgDQo+ID4gLQkJaW50
ZWxfZmJjX3ByZV91cGRhdGUoY3J0YywgcGlwZV9jb25maWcsDQo+ID4gbmV3X3ByaW1hcnlfc3Rh
dGUpOw0KPiA+ICsJCWludGVsX2ZiY19wcmVfdXBkYXRlKGNydGMsIG5ld19jcnRjX3N0YXRlLA0K
PiA+IG5ld19wcmltYXJ5X3N0YXRlKTsNCj4gPiAgCQkvKg0KPiA+ICAJCSAqIEdlbjIgcmVwb3J0
cyBwaXBlIHVuZGVycnVucyB3aGVuZXZlciBhbGwgcGxhbmVzIGFyZQ0KPiA+IGRpc2FibGVkLg0K
PiA+ICAJCSAqIFNvIGRpc2FibGUgdW5kZXJydW4gcmVwb3J0aW5nIGJlZm9yZSBhbGwgdGhlIHBs
YW5lcw0KPiA+IGdldCBkaXNhYmxlZC4NCj4gPiBAQCAtNjEzOCwxMiArNjEzOCwxMiBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2NydGNfc3Rh
dGUgKm9sZF9jcnRjX3N0YXRlLA0KPiA+ICANCj4gPiAgCS8qIERpc3BsYXkgV0EgODI3ICovDQo+
ID4gIAlpZiAoIW5lZWRzX252MTJfd2Eob2xkX2NydGNfc3RhdGUpICYmDQo+ID4gLQkgICAgbmVl
ZHNfbnYxMl93YShwaXBlX2NvbmZpZykpDQo+ID4gKwkgICAgbmVlZHNfbnYxMl93YShuZXdfY3J0
Y19zdGF0ZSkpDQo+ID4gIAkJc2tsX3dhXzgyNyhkZXZfcHJpdiwgY3J0Yy0+cGlwZSwgdHJ1ZSk7
DQo+ID4gIA0KPiA+ICAJLyogV2FfMjAwNjYwNDMxMjppY2wgKi8NCj4gPiAgCWlmICghbmVlZHNf
c2NhbGVyY2xrX3dhKG9sZF9jcnRjX3N0YXRlKSAmJg0KPiA+IC0JICAgIG5lZWRzX3NjYWxlcmNs
a193YShwaXBlX2NvbmZpZykpDQo+ID4gKwkgICAgbmVlZHNfc2NhbGVyY2xrX3dhKG5ld19jcnRj
X3N0YXRlKSkNCj4gPiAgCQlpY2xfd2Ffc2NhbGVyY2xrZ2F0aW5nKGRldl9wcml2LCBjcnRjLT5w
aXBlLCB0cnVlKTsNCj4gPiAgDQo+ID4gIAkvKg0KPiA+IEBAIC02MTU2LDcgKzYxNTYsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiA+ICAJICogd2FpdC1mb3ItdmJsYW5rIGJldHdlZW4g
ZGlzYWJsaW5nIHRoZSBwbGFuZSBhbmQgdGhlIHBpcGUuDQo+ID4gIAkgKi8NCj4gPiAgCWlmIChI
QVNfR01DSChkZXZfcHJpdikgJiYgb2xkX2NydGNfc3RhdGUtPmh3LmFjdGl2ZSAmJg0KPiA+IC0J
ICAgIHBpcGVfY29uZmlnLT5kaXNhYmxlX2N4c3IgJiYNCj4gPiBpbnRlbF9zZXRfbWVtb3J5X2N4
c3IoZGV2X3ByaXYsIGZhbHNlKSkNCj4gPiArCSAgICBuZXdfY3J0Y19zdGF0ZS0+ZGlzYWJsZV9j
eHNyICYmDQo+ID4gaW50ZWxfc2V0X21lbW9yeV9jeHNyKGRldl9wcml2LCBmYWxzZSkpDQo+ID4g
IAkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBjcnRjLT5waXBlKTsNCj4gPiAgDQo+
ID4gIAkvKg0KPiA+IEBAIC02MTY2LDE1ICs2MTY2LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX3By
ZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsDQo+ID4gIAkgKg0KPiA+ICAJICogV2FDeFNSRGlzYWJsZWRGb3JTcHJpdGVTY2FsaW5nOml2
Yg0KPiA+ICAJICovDQo+ID4gLQlpZiAocGlwZV9jb25maWctPmRpc2FibGVfbHBfd20gJiYgaWxr
X2Rpc2FibGVfbHBfd20oZGV2X3ByaXYpDQo+ID4gJiYNCj4gPiAtCSAgICBvbGRfY3J0Y19zdGF0
ZS0+aHcuYWN0aXZlKQ0KPiA+ICsJaWYgKG9sZF9jcnRjX3N0YXRlLT5ody5hY3RpdmUgJiYNCj4g
PiArCSAgICBuZXdfY3J0Y19zdGF0ZS0+ZGlzYWJsZV9scF93bSAmJg0KPiA+IGlsa19kaXNhYmxl
X2xwX3dtKGRldl9wcml2KSkNCj4gPiAgCQlpbnRlbF93YWl0X2Zvcl92YmxhbmsoZGV2X3ByaXYs
IGNydGMtPnBpcGUpOw0KPiA+ICANCj4gPiAgCS8qDQo+ID4gIAkgKiBJZiB3ZSdyZSBkb2luZyBh
IG1vZGVzZXQsIHdlJ3JlIGRvbmUuICBObyBuZWVkIHRvIGRvIGFueQ0KPiA+IHByZS12YmxhbmsN
Cj4gPiAgCSAqIHdhdGVybWFyayBwcm9ncmFtbWluZyBoZXJlLg0KPiA+ICAJICovDQo+ID4gLQlp
ZiAobmVlZHNfbW9kZXNldChwaXBlX2NvbmZpZykpDQo+ID4gKwlpZiAobmVlZHNfbW9kZXNldChu
ZXdfY3J0Y19zdGF0ZSkpDQo+ID4gIAkJcmV0dXJuOw0KPiA+ICANCj4gPiAgCS8qDQo+ID4gQEAg
LTYxOTMsNyArNjE5Myw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3ByZV9wbGFuZV91cGRhdGUoc3Ry
dWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsDQo+ID4gIAkgKi8NCj4g
PiAgCWlmIChkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3MpDQo+ID4gIAkJZGV2
X3ByaXYtPmRpc3BsYXkuaW5pdGlhbF93YXRlcm1hcmtzKGludGVsX3N0YXRlLA0KPiA+IGNydGMp
Ow0KPiA+IC0JZWxzZSBpZiAocGlwZV9jb25maWctPnVwZGF0ZV93bV9wcmUpDQo+ID4gKwllbHNl
IGlmIChuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3dtX3ByZSkNCj4gPiAgCQlpbnRlbF91cGRhdGVf
d2F0ZXJtYXJrcyhjcnRjKTsNCj4gPiAgfQ0KPiA+ICANCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
