Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9103E1F9CB5
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 18:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FBF6E37F;
	Mon, 15 Jun 2020 16:11:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035236E37F
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 16:11:50 +0000 (UTC)
IronPort-SDR: Sn/wypG+uMTQFKBH+hMBE4KoTF+79HMRi6q+PeTDa6WglnOQj1GsSajH03dMZh0wPjSj7Ky+jG
 YQUHpWBtFx7g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2020 09:11:50 -0700
IronPort-SDR: sTYpeQt/2SHOwxqSD0iTuWvOcEXVJG4TBLIz6jhIuvIgXxEHuHAW6yBojDHCY/gQjtYbd5o88O
 xa1JzjBVEyHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,515,1583222400"; d="scan'208";a="262758928"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 15 Jun 2020 09:11:49 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 15 Jun 2020 09:11:49 -0700
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.74]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.26]) with mapi id 14.03.0439.000;
 Mon, 15 Jun 2020 09:11:49 -0700
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Remove redundant
 i915_request_await_object in blit clears
Thread-Index: AQHWQyfBzRq6WwcZhUC28EGcMGIyPqjZ189Q
Date: Mon, 15 Jun 2020 16:11:48 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663010F364871@fmsmsx107.amr.corp.intel.com>
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
 <20200615151449.32605-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200615151449.32605-1-tvrtko.ursulin@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove redundant
 i915_request_await_object in blit clears
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj5TZW50OiBNb25kYXksIEp1bmUgMTUsIDIwMjAg
MTE6MTUgQU0NCj5UbzogSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPkNjOiBVcnN1
bGluLCBUdnJ0a28gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT47IEF1bGQsIE1hdHRoZXcNCj48
bWF0dGhldy5hdWxkQGludGVsLmNvbT47IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPjsgUnVobCwNCj5NaWNoYWVsIEogPG1pY2hhZWwuai5ydWhsQGludGVsLmNvbT4NCj5T
dWJqZWN0OiBbUEFUQ0ggdjJdIGRybS9pOTE1OiBSZW1vdmUgcmVkdW5kYW50IGk5MTVfcmVxdWVz
dF9hd2FpdF9vYmplY3QNCj5pbiBibGl0IGNsZWFycw0KPg0KPkZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+DQo+T25lIGk5MTVfcmVxdWVzdF9hd2FpdF9v
YmplY3QgaXMgZW5vdWdoIGFuZCB3ZSBrZWVwIHRoZSBvbmUgdW5kZXIgdGhlDQo+b2JqZWN0IGxv
Y2sgc28gaXQgaXMgZmluYWwuDQo+DQo+QXQgdGhlIHNhbWUgdGltZSBtb3ZlIGFzeW5jIGNsZmx1
c2hpbmcgc2V0dXAgdW5kZXIgdGhlIHNhbWUgbG9ja2VkDQo+c2VjdGlvbiBhbmQgY29uc29saWRh
dGUgY29tbW9uIGNvZGUgaW50byBhIGhlbHBlciBmdW5jdGlvbi4NCj4NCj52MjoNCj4gKiBFbWl0
IGluaXRpYWwgYnJlYWRjcnVtYnMgYWZ0ZXIgYXdheXMgYXJlIHNldCB1cC4gKENocmlzKQ0KPg0K
PlNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
DQo+Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj5DYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+Q2M6IE1pY2hhZWwgSi4gUnVobCA8
bWljaGFlbC5qLnJ1aGxAaW50ZWwuY29tPg0KPi0tLQ0KPiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9vYmplY3RfYmx0LmMgICAgfCA1MiArKysrKysrKy0tLS0tLS0tLS0tDQo+IDEgZmls
ZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkNCj4NCj5kaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPmIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF9ibHQuYw0KPmluZGV4IGY0
NTdkNzEzMDQ5MS4uYmZkYjMyZDQ2ODc3IDEwMDY0NA0KPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfYmx0LmMNCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fb2JqZWN0X2JsdC5jDQo+QEAgLTEyNiw2ICsxMjYsMTcgQEAgdm9pZCBp
bnRlbF9lbWl0X3ZtYV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9jb250ZXh0DQo+KmNlLCBzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSkNCj4gCWludGVsX2VuZ2luZV9wbV9wdXQoY2UtPmVuZ2luZSk7DQo+IH0N
Cj4NCj4rc3RhdGljIGludA0KPittb3ZlX29ial90b19ncHUoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiwNCg0KSSBhbSBub3QgdW5kZXJzdGFuZGluZyB0aGUgbmFtZSBvZiB0aGlzIGZ1
bmN0aW9uLg0KDQpIb3cgaXMgdGhlIG9iamVjdCBtb3ZlZCB0byB0aGUgZ3B1PyAgSXMgY2xmbHVz
aCBhIG1vdmU/IE9yIGlzDQppdCB0aGF0IGl0IGlzIG1vdmluZyB0byB0aGUgZ3B1IGRvbWFpbj8N
Cg0KV2hhdCBhYm91dDogDQoNCm9ial9mbHVzaF9hbmRfd2FpdCgpDQoNCm9yIGp1c3Q6IA0KDQpm
bHVzaF9hbmRfd2FpdCgpDQoNCj8NCg0KT3IgYW0gSSBtaXNzaW5nIHNvbWV0aGluZz8g8J+Yig0K
DQpNaWtlDQoNCj4rCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwNCj4rCQlib29sIHdyaXRlKQ0K
Pit7DQo+KwlpZiAob2JqLT5jYWNoZV9kaXJ0eSAmIH5vYmotPmNhY2hlX2NvaGVyZW50KQ0KPisJ
CWk5MTVfZ2VtX2NsZmx1c2hfb2JqZWN0KG9iaiwgMCk7DQo+Kw0KPisJcmV0dXJuIGk5MTVfcmVx
dWVzdF9hd2FpdF9vYmplY3QocnEsIG9iaiwgd3JpdGUpOw0KPit9DQo+Kw0KPiBpbnQgaTkxNV9n
ZW1fb2JqZWN0X2ZpbGxfYmx0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+IAkJ
CSAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlLA0KPiAJCQkgICAgIHUzMiB2YWx1ZSkNCj5A
QCAtMTQzLDEyICsxNTQsNiBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X2ZpbGxfYmx0KHN0cnVjdA0K
PmRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwNCj4gCWlmICh1bmxpa2VseShlcnIpKQ0KPiAJCXJl
dHVybiBlcnI7DQo+DQo+LQlpZiAob2JqLT5jYWNoZV9kaXJ0eSAmIH5vYmotPmNhY2hlX2NvaGVy
ZW50KSB7DQo+LQkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsNCj4tCQlpOTE1X2dlbV9jbGZs
dXNoX29iamVjdChvYmosIDApOw0KPi0JCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsNCj4t
CX0NCj4tDQo+IAliYXRjaCA9IGludGVsX2VtaXRfdm1hX2ZpbGxfYmx0KGNlLCB2bWEsIHZhbHVl
KTsNCj4gCWlmIChJU19FUlIoYmF0Y2gpKSB7DQo+IAkJZXJyID0gUFRSX0VSUihiYXRjaCk7DQo+
QEAgLTE2NSwyNyArMTcwLDIyIEBAIGludCBpOTE1X2dlbV9vYmplY3RfZmlsbF9ibHQoc3RydWN0
DQo+ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiAJaWYgKHVubGlrZWx5KGVycikpDQo+IAkJ
Z290byBvdXRfcmVxdWVzdDsNCj4NCj4tCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3Qo
cnEsIG9iaiwgdHJ1ZSk7DQo+LQlpZiAodW5saWtlbHkoZXJyKSkNCj4tCQlnb3RvIG91dF9yZXF1
ZXN0Ow0KPi0NCj4tCWlmIChjZS0+ZW5naW5lLT5lbWl0X2luaXRfYnJlYWRjcnVtYikgew0KPi0J
CWVyciA9IGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsNCj4tCQlpZiAodW5s
aWtlbHkoZXJyKSkNCj4tCQkJZ290byBvdXRfcmVxdWVzdDsNCj4tCX0NCj4tDQo+IAlpOTE1X3Zt
YV9sb2NrKHZtYSk7DQo+LQllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCB2bWEt
Pm9iaiwgdHJ1ZSk7DQo+KwllcnIgPSBtb3ZlX29ial90b19ncHUodm1hLT5vYmosIHJxLCB0cnVl
KTsNCj4gCWlmIChlcnIgPT0gMCkNCj4gCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZSh2
bWEsIHJxLA0KPkVYRUNfT0JKRUNUX1dSSVRFKTsNCj4gCWk5MTVfdm1hX3VubG9jayh2bWEpOw0K
PiAJaWYgKHVubGlrZWx5KGVycikpDQo+IAkJZ290byBvdXRfcmVxdWVzdDsNCj4NCj4tCWVyciA9
IGNlLT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsDQo+LQkJCQkJYmF0Y2gtPm5vZGUuc3RhcnQs
IGJhdGNoLT5ub2RlLnNpemUsDQo+LQkJCQkJMCk7DQo+KwlpZiAoY2UtPmVuZ2luZS0+ZW1pdF9p
bml0X2JyZWFkY3J1bWIpDQo+KwkJZXJyID0gY2UtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1
bWIocnEpOw0KPisNCj4rCWlmIChsaWtlbHkoIWVycikpDQo+KwkJZXJyID0gY2UtPmVuZ2luZS0+
ZW1pdF9iYl9zdGFydChycSwNCj4rCQkJCQkJYmF0Y2gtPm5vZGUuc3RhcnQsDQo+KwkJCQkJCWJh
dGNoLT5ub2RlLnNpemUsDQo+KwkJCQkJCTApOw0KPiBvdXRfcmVxdWVzdDoNCj4gCWlmICh1bmxp
a2VseShlcnIpKQ0KPiAJCWk5MTVfcmVxdWVzdF9zZXRfZXJyb3Jfb25jZShycSwgZXJyKTsNCj5A
QCAtMzE3LDE2ICszMTcsNiBAQCBzdHJ1Y3QgaTkxNV92bWEgKmludGVsX2VtaXRfdm1hX2NvcHlf
Ymx0KHN0cnVjdA0KPmludGVsX2NvbnRleHQgKmNlLA0KPiAJcmV0dXJuIEVSUl9QVFIoZXJyKTsN
Cj4gfQ0KPg0KPi1zdGF0aWMgaW50IG1vdmVfdG9fZ3B1KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCBz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgYm9vbA0KPndyaXRlKQ0KPi17DQo+LQlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7DQo+LQ0KPi0JaWYgKG9iai0+Y2FjaGVf
ZGlydHkgJiB+b2JqLT5jYWNoZV9jb2hlcmVudCkNCj4tCQlpOTE1X2dlbV9jbGZsdXNoX29iamVj
dChvYmosIDApOw0KPi0NCj4tCXJldHVybiBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCBv
YmosIHdyaXRlKTsNCj4tfQ0KPi0NCj4gaW50IGk5MTVfZ2VtX29iamVjdF9jb3B5X2JsdChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqc3JjLA0KPiAJCQkgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpkc3QsDQo+IAkJCSAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQ0KPkBA
IC0zNzUsNyArMzY1LDcgQEAgaW50IGk5MTVfZ2VtX29iamVjdF9jb3B5X2JsdChzdHJ1Y3QNCj5k
cm1faTkxNV9nZW1fb2JqZWN0ICpzcmMsDQo+IAkJZ290byBvdXRfcmVxdWVzdDsNCj4NCj4gCWZv
ciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHZtYSk7IGkrKykgew0KPi0JCWVyciA9IG1vdmVfdG9f
Z3B1KHZtYVtpXSwgcnEsIGkpOw0KPisJCWVyciA9IG1vdmVfb2JqX3RvX2dwdSh2bWFbaV0tPm9i
aiwgcnEsIGkpOw0KPiAJCWlmICh1bmxpa2VseShlcnIpKQ0KPiAJCQlnb3RvIG91dF91bmxvY2s7
DQo+IAl9DQo+LS0NCj4yLjIwLjENCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
