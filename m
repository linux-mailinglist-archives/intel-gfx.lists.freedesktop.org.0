Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD58FA9AD0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 08:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C828E891DC;
	Thu,  5 Sep 2019 06:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF75489226;
 Thu,  5 Sep 2019 06:44:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 23:44:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,469,1559545200"; d="scan'208";a="207769379"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga004.fm.intel.com with ESMTP; 04 Sep 2019 23:44:47 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.187]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.10]) with mapi id 14.03.0439.000;
 Thu, 5 Sep 2019 07:44:46 +0100
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 08/19] drm/i915: Stop using
 drm_atomic_helper_check_planes()
Thread-Index: AQHVNYxBEEaVtE9UJkiWWrHT7geVsKcc7lgA
Date: Thu, 5 Sep 2019 06:44:46 +0000
Message-ID: <cc3b6ed7736319e9d920c7847b5d5e2cfce6e579.camel@intel.com>
References: <20190708125325.16576-1-ville.syrjala@linux.intel.com>
 <20190708125325.16576-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20190708125325.16576-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <E669EC331541FD4A8DBFDDBAEF9B6156@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/19] drm/i915: Stop using
 drm_atomic_helper_check_planes()
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE1OjUzICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UgbmVlZCB0byBpbnNlcnQgc3R1ZmYgYmV0d2VlbiB0aGUgcGxhbmUgYW5kIGNydGMg
LmF0b21pY19jaGVjaygpDQo+IGRybV9hdG9taWNfaGVscGVyX2NoZWNrX3BsYW5lcygpIGRvZXNu
J3QgYWxsb3cgdXMgdG8gZG8gdGhhdCBzbw0KPiBzdG9wIHVzaW5nIGl0IGFuZCBoYW5kIHJvbGwg
dGhlIGxvb3BzIGluc3RlYWQuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQoNClJldmlld2VkLWJ5OiBTdGFuaXNs
YXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4NCg0KPiAtLS0NCj4g
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDEwICstLS0N
Cj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaCB8ICAyICsN
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8IDU3ICsr
KysrKysrKysrKysrKw0KPiAtLS0tDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDUwIGluc2VydGlvbnMo
KyksIDE5IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jDQo+IGluZGV4IDdmZjE5YjUyNGY5ZC4uZDc0
OTM1NTFiMjhjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pY19wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMNCj4gQEAgLTE5NCwxNCArMTk0LDExIEBAIGdldF9jcnRjX2Zy
b21fc3RhdGVzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0
YXRlLA0KPiAgCXJldHVybiBOVUxMOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgaW50IGludGVsX3Bs
YW5lX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+IC0JCQkJICAgIHN0
cnVjdCBkcm1fcGxhbmVfc3RhdGUNCj4gKl9uZXdfcGxhbmVfc3RhdGUpDQo+ICtpbnQgaW50ZWxf
cGxhbmVfYXRvbWljX2NoZWNrKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAr
CQkJICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lKQ0KPiAgew0KPiAtCXN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmUgPSB0b19pbnRlbF9wbGFuZShfcGxhbmUpOw0KPiAtCXN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlID0NCj4gLQkJdG9faW50ZWxfYXRvbWljX3N0YXRlKF9uZXdf
cGxhbmVfc3RhdGUtPnN0YXRlKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19w
bGFuZV9zdGF0ZSA9DQo+IC0JCXRvX2ludGVsX3BsYW5lX3N0YXRlKF9uZXdfcGxhbmVfc3RhdGUp
Ow0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOw0K
PiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlID0NCj4g
IAkJaW50ZWxfYXRvbWljX2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsNCj4gIAlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9DQo+IEBAIC0zNjgsNSArMzY1LDQgQEAgdm9pZCBpOXh4
X3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gIGNvbnN0IHN0cnVjdCBkcm1fcGxhbmVfaGVscGVyX2Z1bmNzIGludGVsX3BsYW5lX2hl
bHBlcl9mdW5jcyA9IHsNCj4gIAkucHJlcGFyZV9mYiA9IGludGVsX3ByZXBhcmVfcGxhbmVfZmIs
DQo+ICAJLmNsZWFudXBfZmIgPSBpbnRlbF9jbGVhbnVwX3BsYW5lX2ZiLA0KPiAtCS5hdG9taWNf
Y2hlY2sgPSBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2ssDQo+ICB9Ow0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaA0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgNCj4gaW5kZXgg
Y2I3ZWY0ZjllYWZkLi5kYzg1YWYwMmU5YjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuaA0KPiBAQCAtNDEsNiArNDEsOCBA
QCBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NoZWNrX3dpdGhfc3RhdGUoY29uc3QNCj4gc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjXw0KPiAgCQkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4gIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlDQo+ICpvbGRfcGxhbmVfc3RhdGUsDQo+ICAJCQkJCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0
ZQ0KPiAqaW50ZWxfc3RhdGUpOw0KPiAraW50IGludGVsX3BsYW5lX2F0b21pY19jaGVjayhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCSAgICAgc3RydWN0IGludGVsX3Bs
YW5lICpwbGFuZSk7DQo+ICBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqb2xkX2NydGNfc3RhdGUsDQo+ICAJCQkJICAg
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiAgCQkJCSAgICBjb25z
dCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKm9sZF9wbGFuZV9zdGF0ZSwNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggNTYz
NWYyMDc5ZTRjLi41YTQyY2JmYTcyYzMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xMTczMywxNSArMTE3MzMsMTQgQEAgc3Rh
dGljIGJvb2wgYzhfcGxhbmVzX2NoYW5nZWQoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3Rh
dGUgKm5ld19jcnRjX3N0YXRlKQ0KPiAgCXJldHVybiAhb2xkX2NydGNfc3RhdGUtPmM4X3BsYW5l
cyAhPSAhbmV3X2NydGNfc3RhdGUtDQo+ID5jOF9wbGFuZXM7DQo+ICB9DQo+ICANCj4gLXN0YXRp
YyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0IGRybV9jcnRjICpfY3J0YywNCj4g
LQkJCQkgICBzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKl9jcnRjX3N0YXRlKQ0KPiArc3RhdGljIGlu
dCBpbnRlbF9jcnRjX2F0b21pY19jaGVjayhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwNCj4gKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIHsNCj4gLQlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoX2NydGMpOw0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgCXN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gLQkJdG9faW50ZWxfY3J0Y19z
dGF0ZShfY3J0Y19zdGF0ZSk7DQo+IC0JaW50IHJldDsNCj4gKwkJaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICAJYm9vbCBtb2RlX2NoYW5nZWQgPSBuZWVk
c19tb2Rlc2V0KGNydGNfc3RhdGUpOw0KPiArCWludCByZXQ7DQo+ICANCj4gIAlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA8IDUgJiYgIUlTX0c0WChkZXZfcHJpdikgJiYNCj4gIAkgICAgbW9kZV9j
aGFuZ2VkICYmICFjcnRjX3N0YXRlLT5iYXNlLmFjdGl2ZSkNCj4gQEAgLTExODEzLDEwICsxMTgx
Miw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RydWN0DQo+IGRybV9j
cnRjICpfY3J0YywNCj4gIAlyZXR1cm4gcmV0Ow0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgY29uc3Qg
c3RydWN0IGRybV9jcnRjX2hlbHBlcl9mdW5jcyBpbnRlbF9oZWxwZXJfZnVuY3MgPSB7DQo+IC0J
LmF0b21pY19jaGVjayA9IGludGVsX2NydGNfYXRvbWljX2NoZWNrLA0KPiAtfTsNCj4gLQ0KPiAg
c3RhdGljIHZvaWQgaW50ZWxfbW9kZXNldF91cGRhdGVfY29ubmVjdG9yX2F0b21pY19zdGF0ZShz
dHJ1Y3QNCj4gZHJtX2RldmljZSAqZGV2KQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvcjsNCj4gQEAgLTEzNDU3LDYgKzEzNDUyLDQyIEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2NydGNfY2hlY2tfZmFzdHNldChjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
b2xkX2NydGNfc3RhDQo+ICAJbmV3X2NydGNfc3RhdGUtPmhhc19kcnJzID0gb2xkX2NydGNfc3Rh
dGUtPmhhc19kcnJzOw0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVj
a19wbGFuZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+ICt7DQo+ICsJ
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZTsNCj4gKwlzdHJ1Y3QgaW50ZWxf
cGxhbmUgKnBsYW5lOw0KPiArCWludCBpLCByZXQ7DQo+ICsNCj4gKwlmb3JfZWFjaF9uZXdfaW50
ZWxfcGxhbmVfaW5fc3RhdGUoc3RhdGUsIHBsYW5lLCBwbGFuZV9zdGF0ZSwgaSkNCj4gew0KPiAr
CQlyZXQgPSBpbnRlbF9wbGFuZV9hdG9taWNfY2hlY2soc3RhdGUsIHBsYW5lKTsNCj4gKwkJaWYg
KHJldCkgew0KPiArCQkJRFJNX0RFQlVHX0FUT01JQygiW1BMQU5FOiVkOiVzXSBhdG9taWMgZHJp
dmVyDQo+IGNoZWNrIGZhaWxlZFxuIiwNCj4gKwkJCQkJIHBsYW5lLT5iYXNlLmJhc2UuaWQsIHBs
YW5lLQ0KPiA+YmFzZS5uYW1lKTsNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsJCX0NCj4gKwl9DQo+
ICsNCj4gKwlyZXR1cm4gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGludCBpbnRlbF9hdG9taWNf
Y2hlY2tfY3J0Y3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+ICt7DQo+
ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7DQo+ICsJc3RydWN0IGludGVs
X2NydGMgKmNydGM7DQo+ICsJaW50IGk7DQo+ICsNCj4gKwlmb3JfZWFjaF9uZXdfaW50ZWxfY3J0
Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgY3J0Y19zdGF0ZSwgaSkgew0KPiArCQlpbnQgcmV0ID0g
aW50ZWxfY3J0Y19hdG9taWNfY2hlY2soc3RhdGUsIGNydGMpOw0KPiArCQlpZiAocmV0KSB7DQo+
ICsJCQlEUk1fREVCVUdfQVRPTUlDKCJbQ1JUQzolZDolc10gYXRvbWljIGRyaXZlcg0KPiBjaGVj
ayBmYWlsZWRcbiIsDQo+ICsJCQkJCSBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtDQo+ID5iYXNl
Lm5hbWUpOw0KPiArCQkJcmV0dXJuIHJldDsNCj4gKwkJfQ0KPiArCX0NCj4gKw0KPiArCXJldHVy
biAwOw0KPiArfQ0KPiArDQo+ICAvKioNCj4gICAqIGludGVsX2F0b21pY19jaGVjayAtIHZhbGlk
YXRlIHN0YXRlIG9iamVjdA0KPiAgICogQGRldjogZHJtIGRldmljZQ0KPiBAQCAtMTM1MjAsNyAr
MTM1NTEsMTEgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3RydWN0DQo+IGRybV9k
ZXZpY2UgKmRldiwNCj4gIAlpZiAocmV0KQ0KPiAgCQlnb3RvIGZhaWw7DQo+ICANCj4gLQlyZXQg
PSBkcm1fYXRvbWljX2hlbHBlcl9jaGVja19wbGFuZXMoZGV2LCAmc3RhdGUtPmJhc2UpOw0KPiAr
CXJldCA9IGludGVsX2F0b21pY19jaGVja19wbGFuZXMoc3RhdGUpOw0KPiArCWlmIChyZXQpDQo+
ICsJCWdvdG8gZmFpbDsNCj4gKw0KPiArCXJldCA9IGludGVsX2F0b21pY19jaGVja19jcnRjcyhz
dGF0ZSk7DQo+ICAJaWYgKHJldCkNCj4gIAkJZ290byBmYWlsOw0KPiAgDQo+IEBAIC0xNTA1MSw4
ICsxNTA4Niw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19pbml0KHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpDQo+ICAJCWRldl9wcml2LT5wbGFu
ZV90b19jcnRjX21hcHBpbmdbaTl4eF9wbGFuZV0gPQ0KPiBpbnRlbF9jcnRjOw0KPiAgCX0NCj4g
IA0KPiAtCWRybV9jcnRjX2hlbHBlcl9hZGQoJmludGVsX2NydGMtPmJhc2UsICZpbnRlbF9oZWxw
ZXJfZnVuY3MpOw0KPiAtDQo+ICAJaW50ZWxfY29sb3JfaW5pdChpbnRlbF9jcnRjKTsNCj4gIA0K
PiAgCVdBUk5fT04oZHJtX2NydGNfaW5kZXgoJmludGVsX2NydGMtPmJhc2UpICE9IGludGVsX2Ny
dGMtPnBpcGUpOw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
