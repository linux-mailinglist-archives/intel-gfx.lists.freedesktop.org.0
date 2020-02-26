Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD8316FDFB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 12:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3FB6E8AA;
	Wed, 26 Feb 2020 11:40:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96F216E8AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 11:40:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 03:40:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="410574389"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga005.jf.intel.com with ESMTP; 26 Feb 2020 03:40:34 -0800
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 11:40:33 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Feb 2020 11:40:33 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 26 Feb 2020 11:40:33 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 09/20] drm/i915: Nuke skl_ddb_get_hw_state()
Thread-Index: AQHV6/6xhfQ4BfMTGE2kfxEWPARV8KgtWkeA
Date: Wed, 26 Feb 2020 11:40:33 +0000
Message-ID: <c48ca86a98a3018ab863675d34b0f654d260e9c4.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <D376A04F8F53114FA1F0EB74202AABCD@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 09/20] drm/i915: Nuke
 skl_ddb_get_hw_state()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIwLTAyLTI1IGF0IDE5OjExICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gc2tsX2RkYl9nZXRfaHdfc3RhdGUoKSBpcyByZWR1bmRhbnQgYW5kIGtpbmRhIGNhbGxl
ZCBpbiB0aHcgd3JvbmcNCj4gc3BvdCBhbnl3YXkuIEp1c3Qga2lsbCBpdC4NCg0KUmV2aWV3ZWQt
Ynk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0K
DQo+IA0KPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YyB8IDcgLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaCB8IDEgLQ0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jDQo+IGluZGV4IGQ0NzMwZDliNGUxYi4uODdmODhlYTZiN2FlIDEwMDY0NA0KPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTQxMTcsMTIgKzQxMTcsNiBAQCB2b2lkIHNrbF9w
aXBlX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0DQo+IGludGVsX2NydGMgKmNydGMsDQo+ICAJaW50
ZWxfZGlzcGxheV9wb3dlcl9wdXQoZGV2X3ByaXYsIHBvd2VyX2RvbWFpbiwgd2FrZXJlZik7DQo+
ICB9DQo+ICANCj4gLXZvaWQgc2tsX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQ0KPiAtew0KPiAtCWRldl9wcml2LT5kYnVmLmVuYWJsZWRfc2xpY2Vz
ID0NCj4gLQkJaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19tYXNrKGRldl9wcml2KTsNCj4gLX0N
Cj4gLQ0KPiAgLyoNCj4gICAqIERldGVybWluZXMgdGhlIGRvd25zY2FsZSBhbW91bnQgb2YgYSBw
bGFuZSBmb3IgdGhlIHB1cnBvc2VzIG9mDQo+IHdhdGVybWFyayBjYWxjdWxhdGlvbnMuDQo+ICAg
KiBUaGUgYnNwZWMgZGVmaW5lcyBkb3duc2NhbGUgYW1vdW50IGFzOg0KPiBAQCAtNTkxMCw3ICs1
OTA0LDYgQEAgdm9pZCBza2xfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdA0KPiBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gIA0KPiAtCXNrbF9kZGJfZ2V0X2h3X3N0
YXRlKGRldl9wcml2KTsNCj4gIAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBj
cnRjKSB7DQo+ICAJCWNydGNfc3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uu
c3RhdGUpOw0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uaA0KPiBpbmRleCBmYWRmN2Ni
YzQ0YzQuLjEwNTRhMGFiMWU0MCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oDQo+IEBA
IC0zOCw3ICszOCw2IEBAIHU4IGludGVsX2VuYWJsZWRfZGJ1Zl9zbGljZXNfbWFzayhzdHJ1Y3QN
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOw0KPiAgdm9pZCBza2xfcGlwZV9kZGJfZ2V0
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJICAgICAgIHN0cnVjdCBz
a2xfZGRiX2VudHJ5ICpkZGJfeSwNCj4gIAkJCSAgICAgICBzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSAq
ZGRiX3V2KTsNCj4gLXZvaWQgc2tsX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KTsNCj4gIHZvaWQgc2tsX3BpcGVfd21fZ2V0X2h3X3N0YXRlKHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjLA0KPiAgCQkJICAgICAgc3RydWN0IHNrbF9waXBlX3dtICpvdXQp
Ow0KPiAgdm9pZCBnNHhfd21fc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
