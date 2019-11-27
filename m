Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6CF10C081
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 00:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF0276E5CE;
	Wed, 27 Nov 2019 23:06:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01ECE6E5CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 23:06:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 15:06:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="240504091"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga002.fm.intel.com with ESMTP; 27 Nov 2019 15:06:44 -0800
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 15:06:42 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.47]) with mapi id 14.03.0439.000;
 Wed, 27 Nov 2019 15:06:42 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915: Pass dev_priv to
 ilk_disable_lp_wm()
Thread-Index: AQHVpVXCVmnOj9TmjU2ww2FfZZIX9qegKhoA
Date: Wed, 27 Nov 2019 23:06:42 +0000
Message-ID: <6a9606b2fbe68b8525a7505f9037ecdd2fbc3c05.camel@intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
 <20191127190556.1574-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20191127190556.1574-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.66]
Content-ID: <E824AE4958AB124EADC550DA02F9DF52@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Pass dev_priv to
 ilk_disable_lp_wm()
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

T24gV2VkLCAyMDE5LTExLTI3IGF0IDIxOjA1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR2V0IHJpZCBvZiBhbm90aGVyICdkZXYnIHVzYWdlIGJ5IHBhc3NpbmcgZGV2X3ByaXYg
aW5zdGVhZC4NCj4gDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgfCA0ICstLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3BtLmggICAgICAgICAgICAgIHwgMiArLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCBkNTU5YjdhZTExNTEuLjg5
YzhmODE4ZjI4OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gQEAgLTYxNjYsNyArNjE2Niw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3By
ZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRl
LA0KPiAgCSAqDQo+ICAJICogV2FDeFNSRGlzYWJsZWRGb3JTcHJpdGVTY2FsaW5nOml2Yg0KPiAg
CSAqLw0KPiAtCWlmIChwaXBlX2NvbmZpZy0+ZGlzYWJsZV9scF93bSAmJiBpbGtfZGlzYWJsZV9s
cF93bShkZXYpICYmDQo+ICsJaWYgKHBpcGVfY29uZmlnLT5kaXNhYmxlX2xwX3dtICYmIGlsa19k
aXNhYmxlX2xwX3dtKGRldl9wcml2KQ0KPiAmJg0KPiAgCSAgICBvbGRfY3J0Y19zdGF0ZS0+aHcu
YWN0aXZlKQ0KPiAgCQlpbnRlbF93YWl0X2Zvcl92YmxhbmsoZGV2X3ByaXYsIGNydGMtPnBpcGUp
Ow0KPiAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCA1YWFkOWQ0OWE1Mjgu
LjhkNjM2NzI0NTJhOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBAIC0zNTky
LDEwICszNTkyLDggQEAgc3RhdGljIHZvaWQgaWxrX3dyaXRlX3dtX3ZhbHVlcyhzdHJ1Y3QNCj4g
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ICAJZGV2X3ByaXYtPndtLmh3ID0gKnJlc3Vs
dHM7DQo+ICB9DQo+ICANCj4gLWJvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9kZXZp
Y2UgKmRldikNCj4gK2Jvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQ0KPiAgew0KPiAtCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGV2KTsNCj4gLQ0KPiAgCXJldHVybiBfaWxrX2Rpc2FibGVfbHBfd20oZGV2
X3ByaXYsIFdNX0RJUlRZX0xQX0FMTCk7DQo+ICB9DQo+ICANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5oDQo+IGluZGV4IGI1NzljNzI0YjkxNS4uYzA2YzZhODQ2ZDlhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmgNCj4gQEAgLTU0LDcgKzU0LDcgQEAgdm9pZCBza2xfd3JpdGVfcGxh
bmVfd20oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAkJCWNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gIHZvaWQgc2tsX3dyaXRlX2N1cnNvcl93bShz
dHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gLWJvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRy
bV9kZXZpY2UgKmRldik7DQo+ICtib29sIGlsa19kaXNhYmxlX2xwX3dtKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdik7DQo+ICB2b2lkIGludGVsX2luaXRfaXBjKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdik7DQo+ICB2b2lkIGludGVsX2VuYWJsZV9pcGMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsNCj4gIA0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
