Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3C710CDFF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 18:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3036E86F;
	Thu, 28 Nov 2019 17:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 628016E86F
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 17:39:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 09:39:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="240785000"
Received: from irsmsx153.ger.corp.intel.com ([163.33.192.75])
 by fmsmga002.fm.intel.com with ESMTP; 28 Nov 2019 09:39:57 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX153.ger.corp.intel.com (163.33.192.75) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 Nov 2019 17:39:56 +0000
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.193]) with mapi id 14.03.0439.000;
 Thu, 28 Nov 2019 17:39:56 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v6 1/4] drm/i915: Remove skl_ddl_allocation struct
Thread-Index: AQHVpTEWQuEhxUpbMUqMoR0QWFrgrqegw0qAgAAXYQA=
Date: Thu, 28 Nov 2019 17:39:55 +0000
Message-ID: <6b45ce930a8143e1cd84ff8a75d14c6a3392da21.camel@intel.com>
References: <20191127144128.3195-1-stanislav.lisovskiy@intel.com>
 <20191127144128.3195-2-stanislav.lisovskiy@intel.com>
 <20191128161357.GU1208@intel.com>
In-Reply-To: <20191128161357.GU1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <60D1273B5D886042B4969FE5C79127F1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 1/4] drm/i915: Remove skl_ddl_allocation
 struct
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

T24gVGh1LCAyMDE5LTExLTI4IGF0IDE4OjEzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTm92IDI3LCAyMDE5IGF0IDA0OjQxOjI1UE0gKzAyMDAsIFN0YW5pc2xhdiBM
aXNvdnNraXkgd3JvdGU6DQo+ID4gQ3VycmVudCBjb25zZW5zdXMgdGhhdCBpdCBpcyByZWR1bmRh
bnQgYXMNCj4gPiB3ZSBhbHJlYWR5IGhhdmUgc2tsX2RkYl92YWx1ZXMgc3RydWN0IG91dCB0aGVy
ZSwNCj4gPiBhbHNvIHRoaXMgc3RydWN0IGNvbnRhaW5zIG9ubHkgc2luZ2xlIG1lbWJlcg0KPiA+
IHdoaWNoIG1ha2VzIGl0IHVubmVjZXNzYXJ5Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiA+IC0t
LQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAg
IHwgMTAgKysrKystLS0tLQ0KPiA+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jICAgIHwgIDggKysrKy0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgICAgICB8ICA2ICstLS0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgICAgIHwgMTUgKysrKysrKy0tDQo+
ID4gLS0tLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAg
ICAgICAgICAgfCAgNCArKy0tDQo+ID4gIDUgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygr
KSwgMjQgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IGluZGV4IDUzZGMzMTBhNWY2ZC4uNTMwODMy
MDY3MTEzIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gPiBAQCAtMTMzOTMsMTAgKzEzMzkzLDEwIEBAIHN0YXRpYyB2b2lkIHZl
cmlmeV93bV9zdGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjICpjcnRjLA0KPiA+ICAJc3RydWN0
IHNrbF9od19zdGF0ZSB7DQo+ID4gIAkJc3RydWN0IHNrbF9kZGJfZW50cnkgZGRiX3lbSTkxNV9N
QVhfUExBTkVTXTsNCj4gPiAgCQlzdHJ1Y3Qgc2tsX2RkYl9lbnRyeSBkZGJfdXZbSTkxNV9NQVhf
UExBTkVTXTsNCj4gPiAtCQlzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uIGRkYjsNCj4gPiArCQlz
dHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgZGRiOw0KPiA+ICAJfSAqaHc7DQo+ID4gLQlzdHJ1Y3Qgc2ts
X2RkYl9hbGxvY2F0aW9uICpzd19kZGI7DQo+ID4gKwlzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgKnN3
X2RkYjsNCj4gPiAgCXN0cnVjdCBza2xfcGlwZV93bSAqc3dfd207DQo+ID4gIAlzdHJ1Y3Qgc2ts
X2RkYl9lbnRyeSAqaHdfZGRiX2VudHJ5LCAqc3dfZGRiX2VudHJ5Ow0KPiA+ICAJY29uc3QgZW51
bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+IEBAIC0xMzQxNSw3ICsxMzQxNSw3IEBAIHN0
YXRpYyB2b2lkIHZlcmlmeV93bV9zdGF0ZShzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjICpjcnRjLA0K
PiA+ICAJc2tsX3BpcGVfZGRiX2dldF9od19zdGF0ZShjcnRjLCBody0+ZGRiX3ksIGh3LT5kZGJf
dXYpOw0KPiA+ICANCj4gPiAgCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2LCAmaHctPmRk
Yik7DQo+ID4gLQlzd19kZGIgPSAmZGV2X3ByaXYtPndtLnNrbF9ody5kZGI7DQo+ID4gKwlzd19k
ZGIgPSAmZGV2X3ByaXYtPndtLnNrbF9odzsNCj4gPiAgDQo+ID4gIAlpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMSAmJg0KPiA+ICAJICAgIGh3LT5kZGIuZW5hYmxlZF9zbGljZXMgIT0gc3df
ZGRiLT5lbmFibGVkX3NsaWNlcykNCj4gPiBAQCAtMTQ2NDcsOCArMTQ2NDcsOCBAQCBzdGF0aWMg
dm9pZA0KPiA+IHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlKQ0KPiA+ICAJdW5zaWduZWQgaW50IHVwZGF0ZWQgPSAwOw0KPiA+ICAJYm9v
bCBwcm9ncmVzczsNCj4gPiAgCWludCBpOw0KPiA+IC0JdTggaHdfZW5hYmxlZF9zbGljZXMgPSBk
ZXZfcHJpdi0+d20uc2tsX2h3LmRkYi5lbmFibGVkX3NsaWNlczsNCj4gPiAtCXU4IHJlcXVpcmVk
X3NsaWNlcyA9IHN0YXRlLT53bV9yZXN1bHRzLmRkYi5lbmFibGVkX3NsaWNlczsNCj4gPiArCXU4
IGh3X2VuYWJsZWRfc2xpY2VzID0gZGV2X3ByaXYtPndtLnNrbF9ody5lbmFibGVkX3NsaWNlczsN
Cj4gPiArCXU4IHJlcXVpcmVkX3NsaWNlcyA9IHN0YXRlLT53bV9yZXN1bHRzLmVuYWJsZWRfc2xp
Y2VzOw0KPiA+ICAJc3RydWN0IHNrbF9kZGJfZW50cnkgZW50cmllc1tJOTE1X01BWF9QSVBFU10g
PSB7fTsNCj4gPiAgDQo+ID4gIAlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShz
dGF0ZSwgY3J0YywNCj4gPiBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9w
b3dlci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuYw0KPiA+IGluZGV4IGNlMWI2NGY0ZGQ0NC4uNzUxOThkYTEzNDc5IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMNCj4gPiBAQCAtNDI2NCw3ICs0MjY0LDcgQEAgc3RhdGljIHU4IGludGVsX2RidWZfbWF4
X3NsaWNlcyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgdm9p
ZCBpY2xfZGJ1Zl9zbGljZXNfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gPiAgCQkJICAgIHU4IHJlcV9zbGljZXMpDQo+ID4gIHsNCj4gPiAtCWNvbnN0IHU4IGh3
X2VuYWJsZWRfc2xpY2VzID0gZGV2X3ByaXYtDQo+ID4gPndtLnNrbF9ody5kZGIuZW5hYmxlZF9z
bGljZXM7DQo+ID4gKwljb25zdCB1OCBod19lbmFibGVkX3NsaWNlcyA9IGRldl9wcml2LQ0KPiA+
ID53bS5za2xfaHcuZW5hYmxlZF9zbGljZXM7DQo+ID4gIAlib29sIHJldDsNCj4gPiAgDQo+ID4g
IAlpZiAocmVxX3NsaWNlcyA+IGludGVsX2RidWZfbWF4X3NsaWNlcyhkZXZfcHJpdikpIHsNCj4g
PiBAQCAtNDI4MSw3ICs0MjgxLDcgQEAgdm9pZCBpY2xfZGJ1Zl9zbGljZXNfdXBkYXRlKHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ICAJCXJldCA9IGludGVsX2Ri
dWZfc2xpY2Vfc2V0KGRldl9wcml2LCBEQlVGX0NUTF9TMiwNCj4gPiBmYWxzZSk7DQo+ID4gIA0K
PiA+ICAJaWYgKHJldCkNCj4gPiAtCQlkZXZfcHJpdi0+d20uc2tsX2h3LmRkYi5lbmFibGVkX3Ns
aWNlcyA9IHJlcV9zbGljZXM7DQo+ID4gKwkJZGV2X3ByaXYtPndtLnNrbF9ody5lbmFibGVkX3Ns
aWNlcyA9IHJlcV9zbGljZXM7DQo+ID4gIH0NCj4gPiAgDQo+ID4gIHN0YXRpYyB2b2lkIGljbF9k
YnVmX2VuYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ID4gQEAgLTQz
MDAsNyArNDMwMCw3IEBAIHN0YXRpYyB2b2lkIGljbF9kYnVmX2VuYWJsZShzdHJ1Y3QNCj4gPiBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgCQkgKiBGSVhNRTogZm9yIG5vdyBwcmV0
ZW5kIHRoYXQgd2Ugb25seSBoYXZlIDEgc2xpY2UsDQo+ID4gc2VlDQo+ID4gIAkJICogaW50ZWxf
ZW5hYmxlZF9kYnVmX3NsaWNlc19udW0oKS4NCj4gPiAgCQkgKi8NCj4gPiAtCQlkZXZfcHJpdi0+
d20uc2tsX2h3LmRkYi5lbmFibGVkX3NsaWNlcyA9IDE7DQo+ID4gKwkJZGV2X3ByaXYtPndtLnNr
bF9ody5lbmFibGVkX3NsaWNlcyA9IDE7DQo+ID4gIH0NCj4gPiAgDQo+ID4gIHN0YXRpYyB2b2lk
IGljbF9kYnVmX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+
IEBAIC00MzE5LDcgKzQzMTksNyBAQCBzdGF0aWMgdm9pZCBpY2xfZGJ1Zl9kaXNhYmxlKHN0cnVj
dA0KPiA+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiA+ICAJCSAqIEZJWE1FOiBmb3Ig
bm93IHByZXRlbmQgdGhhdCB0aGUgZmlyc3Qgc2xpY2UgaXMNCj4gPiBhbHdheXMNCj4gPiAgCQkg
KiBlbmFibGVkLCBzZWUgaW50ZWxfZW5hYmxlZF9kYnVmX3NsaWNlc19udW0oKS4NCj4gPiAgCQkg
Ki8NCj4gPiAtCQlkZXZfcHJpdi0+d20uc2tsX2h3LmRkYi5lbmFibGVkX3NsaWNlcyA9IDE7DQo+
ID4gKwkJZGV2X3ByaXYtPndtLnNrbF9ody5lbmFibGVkX3NsaWNlcyA9IDE7DQo+ID4gIH0NCj4g
PiAgDQo+ID4gIHN0YXRpYyB2b2lkIGljbF9tYnVzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gaW5kZXgg
ZmRhZTVhOTE5YmM4Li42NDU3ZjhlNTU3YTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gPiBAQCAtNzk4LDEzICs3OTgsOSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgc2tsX2Rk
Yl9lbnRyeV9lcXVhbChjb25zdA0KPiA+IHN0cnVjdCBza2xfZGRiX2VudHJ5ICplMSwNCj4gPiAg
CXJldHVybiBmYWxzZTsNCj4gPiAgfQ0KPiA+ICANCj4gPiAtc3RydWN0IHNrbF9kZGJfYWxsb2Nh
dGlvbiB7DQo+ID4gLQl1OCBlbmFibGVkX3NsaWNlczsgLyogR0VOMTEgaGFzIGNvbmZpZ3VyYWJs
ZSAyIHNsaWNlcyAqLw0KPiA+IC19Ow0KPiA+IC0NCj4gPiAgc3RydWN0IHNrbF9kZGJfdmFsdWVz
IHsNCj4gPiAgCXVuc2lnbmVkIGRpcnR5X3BpcGVzOw0KPiANCj4gRGlkbid0IEkgYWxyZWFkeSBu
dWtlIHRoaXMgZGlydHlfcGlwZXMgY3JhcD8NCg0KSnVzdCBjaGVja2VkIGZyb20gZHJtLXRpcCAt
IGl0J3Mgc3RpbGwgdGhlcmUgOkQNCg0KQW55d2F5IEkgZG9uJ3QgdG91Y2ggaXQuIE9yIGRvIHlv
dSBtZWFuIEkgbmVlZCB0byBraWxsDQpza2xfZGRiX3ZhbHVlcyBhcyB3ZWxsPyANCg0KU3Rhbg0K
DQo+IA0KPiA+IC0Jc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiBkZGI7DQo+ID4gKwl1OCBlbmFi
bGVkX3NsaWNlczsgLyogR0VOMTEgaGFzIGNvbmZpZ3VyYWJsZSAyIHNsaWNlcyAqLw0KPiA+ICB9
Ow0KPiA+ICANCj4gPiAgc3RydWN0IHNrbF93bV9sZXZlbCB7DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMNCj4gPiBpbmRleCA1YWFkOWQ0OWE1MjguLjM4NTdlYzNkMmJkNiAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+IEBAIC0zODIzLDcgKzM4MjMsNyBAQCBz
dGF0aWMgdTE2IGludGVsX2dldF9kZGJfc2l6ZShzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gPiAgCQkJICAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUN
Cj4gPiAqY3J0Y19zdGF0ZSwNCj4gPiAgCQkJICAgICAgY29uc3QgdTY0IHRvdGFsX2RhdGFfcmF0
ZSwNCj4gPiAgCQkJICAgICAgY29uc3QgaW50IG51bV9hY3RpdmUsDQo+ID4gLQkJCSAgICAgIHN0
cnVjdCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYikNCj4gPiArCQkJICAgICAgc3RydWN0IHNrbF9k
ZGJfdmFsdWVzICpkZGIpDQo+ID4gIHsNCj4gPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9t
b2RlICphZGp1c3RlZF9tb2RlOw0KPiA+ICAJdTY0IHRvdGFsX2RhdGFfYnc7DQo+ID4gQEAgLTM4
NTksNyArMzg1OSw3IEBAIHN0YXRpYyB2b2lkDQo+ID4gIHNrbF9kZGJfZ2V0X3BpcGVfYWxsb2Nh
dGlvbl9saW1pdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gPiAqZGV2X3ByaXYsDQo+ID4g
IAkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0K
PiA+ICAJCQkJICAgY29uc3QgdTY0IHRvdGFsX2RhdGFfcmF0ZSwNCj4gPiAtCQkJCSAgIHN0cnVj
dCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYiwNCj4gPiArCQkJCSAgIHN0cnVjdCBza2xfZGRiX3Zh
bHVlcyAqZGRiLA0KPiA+ICAJCQkJICAgc3RydWN0IHNrbF9kZGJfZW50cnkgKmFsbG9jLCAvKiBv
dXQNCj4gPiAqLw0KPiA+ICAJCQkJICAgaW50ICpudW1fYWN0aXZlIC8qIG91dCAqLykNCj4gPiAg
ew0KPiA+IEBAIC00MDQ3LDcgKzQwNDcsNyBAQCB2b2lkIHNrbF9waXBlX2RkYl9nZXRfaHdfc3Rh
dGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0YyAqY3J0YywNCj4gPiAgfQ0KPiA+ICANCj4gPiAgdm9p
ZCBza2xfZGRiX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
DQo+ID4gLQkJCSAgc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbiAqZGRiIC8qIG91dCAqLykNCj4g
PiArCQkJICBzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgKmRkYiAvKiBvdXQgKi8pDQo+ID4gIHsNCj4g
PiAgCWRkYi0+ZW5hYmxlZF9zbGljZXMgPSBpbnRlbF9lbmFibGVkX2RidWZfc2xpY2VzX251bShk
ZXZfcHJpdik7DQo+ID4gIH0NCj4gPiBAQCAtNDIyNyw3ICs0MjI3LDcgQEAgaWNsX2dldF90b3Rh
bF9yZWxhdGl2ZV9kYXRhX3JhdGUoc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gPiAgDQo+ID4gIHN0YXRpYyBpbnQNCj4gPiAgc2tsX2FsbG9jYXRlX3BpcGVfZGRi
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+IC0JCSAgICAgIHN0cnVj
dCBza2xfZGRiX2FsbG9jYXRpb24gKmRkYiAvKiBvdXQgKi8pDQo+ID4gKwkJICAgICAgc3RydWN0
IHNrbF9kZGJfdmFsdWVzICpkZGIgLyogb3V0ICovKQ0KPiA+ICB7DQo+ID4gIAlzdHJ1Y3QgZHJt
X2F0b21pY19zdGF0ZSAqc3RhdGUgPSBjcnRjX3N0YXRlLT51YXBpLnN0YXRlOw0KPiA+ICAJc3Ry
dWN0IGRybV9jcnRjICpjcnRjID0gY3J0Y19zdGF0ZS0+dWFwaS5jcnRjOw0KPiA+IEBAIC01MTg0
LDEzICs1MTg0LDEzIEBAIHN0YXRpYyBpbnQNCj4gPiAgc2tsX2NvbXB1dGVfZGRiKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiA+ICB7DQo+ID4gIAljb25zdCBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLQ0KPiA+ID5iYXNlLmRldik7
DQo+ID4gLQlzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uICpkZGIgPSAmc3RhdGUtPndtX3Jlc3Vs
dHMuZGRiOw0KPiA+ICsJc3RydWN0IHNrbF9kZGJfdmFsdWVzICpkZGIgPSAmc3RhdGUtPndtX3Jl
c3VsdHM7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGU7DQo+
ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7DQo+ID4gIAlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gPiAgCWludCByZXQsIGk7DQo+ID4gIA0KPiA+IC0JbWVt
Y3B5KGRkYiwgJmRldl9wcml2LT53bS5za2xfaHcuZGRiLCBzaXplb2YoKmRkYikpOw0KPiA+ICsJ
bWVtY3B5KGRkYiwgJmRldl9wcml2LT53bS5za2xfaHcsIHNpemVvZigqZGRiKSk7DQo+ID4gIA0K
PiA+ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsDQo+
ID4gb2xkX2NydGNfc3RhdGUsDQo+ID4gIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+
ID4gQEAgLTU2NjYsMTEgKzU2NjYsMTAgQEAgdm9pZCBza2xfcGlwZV93bV9nZXRfaHdfc3RhdGUo
c3RydWN0DQo+ID4gaW50ZWxfY3J0YyAqY3J0YywNCj4gPiAgdm9pZCBza2xfd21fZ2V0X2h3X3N0
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gPiAgew0KPiA+ICAJc3Ry
dWN0IHNrbF9kZGJfdmFsdWVzICpodyA9ICZkZXZfcHJpdi0+d20uc2tsX2h3Ow0KPiA+IC0Jc3Ry
dWN0IHNrbF9kZGJfYWxsb2NhdGlvbiAqZGRiID0gJmRldl9wcml2LT53bS5za2xfaHcuZGRiOw0K
PiA+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+ID4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZTsNCj4gPiAgDQo+ID4gLQlza2xfZGRiX2dldF9od19zdGF0ZShkZXZf
cHJpdiwgZGRiKTsNCj4gPiArCXNrbF9kZGJfZ2V0X2h3X3N0YXRlKGRldl9wcml2LCBodyk7DQo+
ID4gIAlmb3JfZWFjaF9pbnRlbF9jcnRjKCZkZXZfcHJpdi0+ZHJtLCBjcnRjKSB7DQo+ID4gIAkJ
Y3J0Y19zdGF0ZSA9IHRvX2ludGVsX2NydGNfc3RhdGUoY3J0Yy0+YmFzZS5zdGF0ZSk7DQo+ID4g
IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oDQo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oDQo+ID4gaW5kZXggYjU3OWM3MjRiOTE1
Li4xZDAzNzMyZmYyMmUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgNCj4gPiBA
QCAtMTcsOCArMTcsOCBAQCBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlOw0KPiA+ICBzdHJ1Y3Qg
aW50ZWxfY3J0YzsNCj4gPiAgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+ID4gIHN0cnVjdCBp
bnRlbF9wbGFuZTsNCj4gPiAtc3RydWN0IHNrbF9kZGJfYWxsb2NhdGlvbjsNCj4gPiAgc3RydWN0
IHNrbF9kZGJfZW50cnk7DQo+ID4gK3N0cnVjdCBza2xfZGRiX3ZhbHVlczsNCj4gPiAgc3RydWN0
IHNrbF9waXBlX3dtOw0KPiA+ICBzdHJ1Y3Qgc2tsX3dtX2xldmVsOw0KPiA+ICANCj4gPiBAQCAt
MzcsNyArMzcsNyBAQCB2b2lkIHNrbF9waXBlX2RkYl9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVs
X2NydGMNCj4gPiAqY3J0YywNCj4gPiAgCQkJICAgICAgIHN0cnVjdCBza2xfZGRiX2VudHJ5ICpk
ZGJfeSwNCj4gPiAgCQkJICAgICAgIHN0cnVjdCBza2xfZGRiX2VudHJ5ICpkZGJfdXYpOw0KPiA+
ICB2b2lkIHNrbF9kZGJfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwNCj4gPiAtCQkJICBzdHJ1Y3Qgc2tsX2RkYl9hbGxvY2F0aW9uICpkZGIgLyogb3V0ICov
KTsNCj4gPiArCQkJICBzdHJ1Y3Qgc2tsX2RkYl92YWx1ZXMgKmRkYiAvKiBvdXQgKi8pOw0KPiA+
ICB2b2lkIHNrbF9waXBlX3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywN
Cj4gPiAgCQkJICAgICAgc3RydWN0IHNrbF9waXBlX3dtICpvdXQpOw0KPiA+ICB2b2lkIGc0eF93
bV9zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOw0KPiA+IC0tIA0K
PiA+IDIuMTcuMQ0KPiANCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
