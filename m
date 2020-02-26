Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F8F16F9DF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 09:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31286E1C4;
	Wed, 26 Feb 2020 08:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7FC6E1C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 08:42:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 00:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="438353012"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by fmsmga006.fm.intel.com with ESMTP; 26 Feb 2020 00:42:07 -0800
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 irsmsx105.ger.corp.intel.com (163.33.3.28) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Feb 2020 08:41:33 +0000
Received: from irsmsx604.ger.corp.intel.com (163.33.146.137) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Feb 2020 08:41:33 +0000
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137]) by
 IRSMSX604.ger.corp.intel.com ([163.33.146.137]) with mapi id 15.01.1713.004;
 Wed, 26 Feb 2020 08:41:33 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 13/20] drm/i915: Pass the crtc to
 skl_compute_dbuf_slices()
Thread-Index: AQHV6/6+vq4ro2C14k6GE4DQMh619agtKD+A
Date: Wed, 26 Feb 2020 08:41:33 +0000
Message-ID: <fa8af92d094e70a0982d85e4ac3c4b349a0b4af5.camel@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <AB76FC5C81B7524FA368EC7E015AF0B8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 13/20] drm/i915: Pass the crtc to
 skl_compute_dbuf_slices()
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
PiANCj4gc2tsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoKSBoYXMgbm8gdXNlIGZvciB0aGUgY3J0YyBz
dGF0ZSwgc28NCj4ganVzdCBwYXNzIHRoZSBjcnRjIGl0c2VsZi4NCg0KDQpSZXZpZXdlZC1ieTog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQoNCj4g
DQo+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwg
MjIgKysrKysrKysrKy0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlv
bnMoKyksIDEyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+
IGluZGV4IDNmNDhjZTc1MTdlMi4uMjU2NjIyYjYwM2NkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gQEAgLTM4NjEsNyArMzg2MSw3IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaW50
ZWxfY3J0Y19kZGJfd2VpZ2h0KGNvbnN0DQo+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0DQo+ICAJcmV0dXJuIGhkaXNwbGF5Ow0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdTggc2tsX2Nv
bXB1dGVfZGJ1Zl9zbGljZXMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gKmNydGNf
c3RhdGUsDQo+ICtzdGF0aWMgdTggc2tsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoc3RydWN0IGludGVs
X2NydGMgKmNydGMsDQo+ICAJCQkJICB1OCBhY3RpdmVfcGlwZXMpOw0KPiAgDQo+ICBzdGF0aWMg
aW50DQo+IEBAIC0zODczLDEwICszODczLDEwIEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlv
bl9saW1pdHMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgew0KPiAg
CXN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSA9IGNydGNfc3RhdGUtPnVhcGkuc3RhdGU7
DQo+ICAJc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPQ0KPiB0b19pbnRl
bF9hdG9taWNfc3RhdGUoc3RhdGUpOw0KPiAtCXN0cnVjdCBkcm1fY3J0YyAqZm9yX2NydGMgPSBj
cnRjX3N0YXRlLT51YXBpLmNydGM7DQo+IC0JY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGM7
DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmZvcl9jcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0
YXRlLQ0KPiA+dWFwaS5jcnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gIAl1
bnNpZ25lZCBpbnQgcGlwZV93ZWlnaHQgPSAwLCB0b3RhbF93ZWlnaHQgPSAwLA0KPiB3ZWlnaHRf
YmVmb3JlX3BpcGUgPSAwOw0KPiAtCWVudW0gcGlwZSBmb3JfcGlwZSA9IHRvX2ludGVsX2NydGMo
Zm9yX2NydGMpLT5waXBlOw0KPiArCWVudW0gcGlwZSBmb3JfcGlwZSA9IGZvcl9jcnRjLT5waXBl
Ow0KPiAgCXN0cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpuZXdfZGJ1Zl9zdGF0ZSA9DQo+ICAJCWlu
dGVsX2F0b21pY19nZXRfbmV3X2RidWZfc3RhdGUoaW50ZWxfc3RhdGUpOw0KPiAgCWNvbnN0IHN0
cnVjdCBpbnRlbF9kYnVmX3N0YXRlICpvbGRfZGJ1Zl9zdGF0ZSA9DQo+IEBAIC0zOTIwLDE0ICsz
OTIwLDE0IEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2NhdGlvbl9saW1pdHMoc3RydWN0DQo+IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCQkgKg0KPiAgCQkgKiBGSVhNRSBnZXQgcmlk
IG9mIHRoaXMgbWVzcw0KPiAgCQkgKi8NCj4gLQkJKmFsbG9jID0gdG9faW50ZWxfY3J0Y19zdGF0
ZShmb3JfY3J0Yy0+c3RhdGUpLQ0KPiA+d20uc2tsLmRkYjsNCj4gKwkJKmFsbG9jID0gdG9faW50
ZWxfY3J0Y19zdGF0ZShmb3JfY3J0Yy0+YmFzZS5zdGF0ZSktDQo+ID53bS5za2wuZGRiOw0KPiAg
CQlyZXR1cm4gMDsNCj4gIAl9DQo+ICANCj4gIAkvKg0KPiAgCSAqIEdldCBhbGxvd2VkIERCdWYg
c2xpY2VzIGZvciBjb3JyZXNwb25kZW50IHBpcGUgYW5kIHBsYXRmb3JtLg0KPiAgCSAqLw0KPiAt
CWRidWZfc2xpY2VfbWFzayA9IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNydGNfc3RhdGUsDQo+
IGFjdGl2ZV9waXBlcyk7DQo+ICsJZGJ1Zl9zbGljZV9tYXNrID0gc2tsX2NvbXB1dGVfZGJ1Zl9z
bGljZXMoZm9yX2NydGMsDQo+IGFjdGl2ZV9waXBlcyk7DQo+ICANCj4gIAkvKg0KPiAgCSAqIEZp
Z3VyZSBvdXQgYXQgd2hpY2ggREJ1ZiBzbGljZSB3ZSBzdGFydCwgaS5lIGlmIHdlIHN0YXJ0IGF0
DQo+IERidWYgUzINCj4gQEAgLTM5NTMsOCArMzk1Myw4IEBAIHNrbF9kZGJfZ2V0X3BpcGVfYWxs
b2NhdGlvbl9saW1pdHMoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAg
CQlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSkNCj4gIAkJCWNvbnRpbnVlOw0KPiAgDQo+IC0J
CXBpcGVfZGJ1Zl9zbGljZV9tYXNrID0NCj4gc2tsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoY3J0Y19z
dGF0ZSwNCj4gLQkJCQkJCQkgICAgICAgYWN0aXZlX3ANCj4gaXBlcyk7DQo+ICsJCXBpcGVfZGJ1
Zl9zbGljZV9tYXNrID0NCj4gKwkJCXNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNydGMsIGFjdGl2
ZV9waXBlcyk7DQo+ICANCj4gIAkJLyoNCj4gIAkJICogQWNjb3JkaW5nIHRvIEJTcGVjIHBpcGUg
Y2FuIHNoYXJlIG9uZSBkYnVmIHNsaWNlDQo+IHdpdGggYW5vdGhlcg0KPiBAQCAtNDAwNCw3ICs0
MDA0LDcgQEAgc2tsX2RkYl9nZXRfcGlwZV9hbGxvY2F0aW9uX2xpbWl0cyhzdHJ1Y3QNCj4gZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICANCj4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYt
PmRybSwNCj4gIAkJICAgICJbQ1JUQzolZDolc10gZGJ1ZiBzbGljZXMgMHgleCwgZGRiICglZCAt
ICVkKSwNCj4gYWN0aXZlIHBpcGVzIDB4JXhcbiIsDQo+IC0JCSAgICBmb3JfY3J0Yy0+YmFzZS5p
ZCwgZm9yX2NydGMtPm5hbWUsDQo+ICsJCSAgICBmb3JfY3J0Yy0+YmFzZS5iYXNlLmlkLCBmb3Jf
Y3J0Yy0+YmFzZS5uYW1lLA0KPiAgCQkgICAgZGJ1Zl9zbGljZV9tYXNrLCBhbGxvYy0+c3RhcnQs
IGFsbG9jLT5lbmQsDQo+IGFjdGl2ZV9waXBlcyk7DQo+ICANCj4gIAlyZXR1cm4gMDsNCj4gQEAg
LTQ0MDIsMTAgKzQ0MDIsOCBAQCBzdGF0aWMgdTggdGdsX2NvbXB1dGVfZGJ1Zl9zbGljZXMoZW51
bSBwaXBlDQo+IHBpcGUsIHU4IGFjdGl2ZV9waXBlcykNCj4gIAlyZXR1cm4gY29tcHV0ZV9kYnVm
X3NsaWNlcyhwaXBlLCBhY3RpdmVfcGlwZXMsDQo+IHRnbF9hbGxvd2VkX2RidWZzKTsNCj4gIH0N
Cj4gIA0KPiAtc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiAtCQkJCSAgdTggYWN0aXZlX3BpcGVz
KQ0KPiArc3RhdGljIHU4IHNrbF9jb21wdXRlX2RidWZfc2xpY2VzKHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjLCB1OA0KPiBhY3RpdmVfcGlwZXMpDQo+ICB7DQo+IC0Jc3RydWN0IGludGVsX2NydGMg
KmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7DQo+ICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+
ICAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiAgDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
