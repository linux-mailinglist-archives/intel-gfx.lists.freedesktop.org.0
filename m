Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 036052CA786
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 16:58:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62E676E56D;
	Tue,  1 Dec 2020 15:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BAE06E56D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 15:58:52 +0000 (UTC)
IronPort-SDR: BE/iCR21Fe+x4wawzAwEotz2w3smmeqFNDSim8RBI9S9WwDfesXF78RrSZ0wkVjbaMPki8OKI9
 0Zptk2TP3BgA==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172064404"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="172064404"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 07:55:21 -0800
IronPort-SDR: xkIZfrxm4sflNJdnCTTVzpF6yxJXnuCOVvpS4EuMwAxK0klooXEqYTwVzfr6I97MK0HFL1t30/
 W/Hv4cMRnCuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="345509272"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2020 07:55:20 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 07:55:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 21:25:16 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 1 Dec 2020 07:55:13 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWx+nb0u4H3ZAS8kaebQ6z9eNofani6fEAgAABIoA=
Date: Tue, 1 Dec 2020 15:55:13 +0000
Message-ID: <7bb7468a0b8f43258d7e01a64fee31f682fd5737.camel@intel.com>
References: <20201201143042.22188-1-uma.shankar@intel.com>
 <20201201143042.22188-2-uma.shankar@intel.com>
 <c15b78267f9c82e2eb4d6ff9989f013c51b4c4f7.camel@intel.com>
In-Reply-To: <c15b78267f9c82e2eb4d6ff9989f013c51b4c4f7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-ID: <8E7516D4043B3F4182354426CC93F57C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v4 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

T24gVHVlLCAyMDIwLTEyLTAxIGF0IDA3OjUxIC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBUdWUsIDIwMjAtMTItMDEgYXQgMjA6MDAgKzA1MzAsIFVtYSBTaGFua2Fy
IHdyb3RlOg0KPiA+IFRoZXJlIGFyZSBzb21lIGNvcm5lciBjYXNlcyB3cnQgdW5kZXJydW4gd2hl
biB3ZSBlbmFibGUNCj4gPiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJv
bSBoYXJkd2FyZSBpcyB0bw0KPiA+IGtlZXAgdGhpcyBjb21iaW5hdGlvbiBkaXNhYmxlZC4NCj4g
PiANCj4gPiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiA+IA0KPiA+IHYyOiBBZGRl
ZCBwc3IyIGVuYWJsZWQgY2hlY2sgZnJvbSBjcnRjX3N0YXRlIChBbnNodW1hbikNCj4gPiBBZGRl
ZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJuZWNlcyAoSm9zZSkNCj4gPiANCj4gPiB2MzogTW92
ZWQgdGhlIGxvZ2ljIHRvIGRpc2FibGUgZmJjIHRvIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2Fj
aGUNCj4gPiBhbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29uZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxl
J3MgcmVjb21tZW5kYXRpb24uDQo+ID4gDQo+ID4gdjQ6IEludHJvZHVjZWQgYSB2YXJpYWJsZSBp
biBmYmMgc3RhdGVfY2FjaGUgaW5zdGVhZCBvZiB0aGUgZWFybGllcg0KPiA+IHBsYW5lLnZpc2li
bGUgV0EsIGFzIHN1Z2dlc3RlZCBieSBKb3NlLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMjkgKysrKysrKysrKysrKysrKysr
KysrKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgIHwg
IDEgKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ID4gaW5kZXggYTViMDcy
ODE2YTdiLi5mZjJmMmMwMGExMGUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBAQCAtNzAwLDcgKzcwMCwyMSBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9mYmNfdXBkYXRlX3N0YXRlX2NhY2hlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiA+
IMKgCXN0cnVjdCBpbnRlbF9mYmNfc3RhdGVfY2FjaGUgKmNhY2hlID0gJmZiYy0+c3RhdGVfY2Fj
aGU7DQo+ID4gwqAJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIgPSBwbGFuZV9zdGF0ZS0+aHcu
ZmI7DQo+ID4gwqANCj4gPiANCj4gPiANCj4gPiANCj4gPiArCWlmIChjcnRjX3N0YXRlLT5oYXNf
cHNyMikNCj4gPiArCQljYWNoZS0+cHNyMl9hY3RpdmUgPSB0cnVlOw0KPiA+ICsJZWxzZQ0KPiA+
ICsJCWNhY2hlLT5wc3IyX2FjdGl2ZSA9IGZhbHNlOw0KPiANCj4gY2FjaGUtPnBzcjJfYWN0aXZl
ID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7DQo+IA0KPiANCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJ
ICogVGlnZXJsYWtlIGlzIG5vdCBzdXBwb3J0aW5nIEZCQyB3aXRoIFBTUjIuDQo+ID4gKwkgKiBS
ZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4gPiAr
CSAqIEJzcGVjOiA1MDQyMiBIU0Q6IDE0MDEwMjYwMDAyDQo+ID4gKwkgKi8NCj4gPiArCWlmIChJ
U19USUdFUkxBS0UoZGV2X3ByaXYpICYmIGNhY2hlLT5wc3IyX2FjdGl2ZSkNCj4gPiArCQlyZXR1
cm47DQo+IA0KPiANCj4gSGVyZSB5b3Ugc2hvdWxkIG9ubHkgc2V0IHBzcjJfYWN0aXZlLCBhZGQg
aXQgdG8gdGhlIGJvdHRvbSBvZiBpbnRlbF9mYmNfdXBkYXRlX3N0YXRlX2NhY2hlLg0KPiBUaGUg
Y2hlY2sgc2hvdWxkIG9ubHkgYmUgZG9uZSBpbiBpbnRlbF9mYmNfY2FuX2FjdGl2YXRlKCkuDQo+
IA0KPiA+ICsNCj4gPiDCoAljYWNoZS0+cGxhbmUudmlzaWJsZSA9IHBsYW5lX3N0YXRlLT51YXBp
LnZpc2libGU7DQo+ID4gKw0KPiA+IMKgCWlmICghY2FjaGUtPnBsYW5lLnZpc2libGUpDQo+ID4g
wqAJCXJldHVybjsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0K
PiA+IA0KPiA+IEBAIC03OTksNiArODEzLDE2IEBAIHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5f
YWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gwqAJc3RydWN0IGludGVsX2Zi
YyAqZmJjID0gJmRldl9wcml2LT5mYmM7DQo+ID4gwqAJc3RydWN0IGludGVsX2ZiY19zdGF0ZV9j
YWNoZSAqY2FjaGUgPSAmZmJjLT5zdGF0ZV9jYWNoZTsNCj4gPiDCoA0KPiA+IA0KPiA+IA0KPiA+
IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ICsJLyoNCj4gPiArCSAqIFRpZ2VybGFrZSBp
cyBub3Qgc3VwcG9ydGluZyBGQkMgd2l0aCBQU1IyLg0KPiA+ICsJICogUmVjb21tZW5kYXRpb24g
aXMgdG8ga2VlcCB0aGlzIGNvbWJpbmF0aW9uIGRpc2FibGVkDQo+ID4gKwkgKiBCc3BlYzogNTA0
MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiA+ICsJICovDQo+ID4gKwlpZiAoZmJjLT5zdGF0ZV9jYWNo
ZS5wc3IyX2FjdGl2ZSAmJiBJU19USUdFUkxBS0UoZGV2X3ByaXYpKSB7DQo+ID4gKwkJZmJjLT5u
b19mYmNfcmVhc29uID0gIm5vdCBzdXBwb3J0ZWQgd2l0aCBQU1IyIjsNCj4gPiArCQlyZXR1cm4g
ZmFsc2U7DQo+ID4gKwl9DQo+ID4gKw0KPiA+IMKgCWlmICghaW50ZWxfZmJjX2Nhbl9lbmFibGUo
ZGV2X3ByaXYpKQ0KPiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gwqANCj4gPiANCj4gPiANCj4g
PiANCj4gPiANCj4gPiANCj4gPiANCj4gPiANCj4gPiBAQCAtMTI3Myw2ICsxMjk3LDExIEBAIHZv
aWQgaW50ZWxfZmJjX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiDCoAlpZiAoIWNhY2hlLT5wbGFuZS52aXNpYmxlKQ0KPiA+IMKgCQlnb3RvIG91dDsNCj4gPiDC
oA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+ICsJaWYgKGZi
Yy0+c3RhdGVfY2FjaGUucHNyMl9hY3RpdmUgJiYgSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0K
PiA+ICsJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJub3Qgc3VwcG9ydGVkIHdpdGggUFNSMiI7DQo+
ID4gKwkJZ290byBvdXQ7DQo+ID4gKwl9DQoNCkFsc28gbm8gbmVlZCB0byBjaGVjayBpdCBoZXJl
LCBvbmx5IGluIGludGVsX2ZiY19jYW5fYWN0aXZhdGUuDQpXZSBhbHJlYWR5IGFsbG9jYXRlIHRo
ZSBjZmIgZXZlbiB3aGVuIG90aGVyIHJlYXNvbnMgZG8gbm90IGFsbG93IEZCQyB0byBiZSBhY3Rp
dmF0ZWQuDQoNCj4gPiArDQo+ID4gwqAJaWYgKGludGVsX2ZiY19hbGxvY19jZmIoZGV2X3ByaXYs
DQo+ID4gwqAJCQkJaW50ZWxfZmJjX2NhbGN1bGF0ZV9jZmJfc2l6ZShkZXZfcHJpdiwgY2FjaGUp
LA0KPiA+IMKgCQkJCXBsYW5lX3N0YXRlLT5ody5mYi0+Zm9ybWF0LT5jcHBbMF0pKSB7DQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ID4gaW5kZXggMTViZThkZWJhZTU0Li5mNGUwOGMxYTU4
NjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gPiBAQCAtNDE2LDYgKzQx
Niw3IEBAIHN0cnVjdCBpbnRlbF9mYmMgew0KPiA+IMKgCQl1MTYgZ2VuOV93YV9jZmJfc3RyaWRl
Ow0KPiA+IMKgCQl1MTYgaW50ZXJ2YWw7DQo+ID4gwqAJCXM4IGZlbmNlX2lkOw0KPiA+ICsJCWJv
b2wgcHNyMl9hY3RpdmU7DQo+ID4gwqAJfSBzdGF0ZV9jYWNoZTsNCj4gPiDCoA0KPiA+IA0KPiA+
IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IA0KPiA+IMKgCS8qDQo+IA0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
