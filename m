Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFC244016B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 19:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97DE6EA77;
	Fri, 29 Oct 2021 17:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4187B6EA77
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 17:47:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="210767894"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="210767894"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 10:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="724997097"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga006.fm.intel.com with ESMTP; 29 Oct 2021 10:47:29 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 10:47:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 23:17:25 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Fri, 29 Oct 2021 10:47:23 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>, "B S, Karthik"
 <karthik.b.s@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Check async flip state of every crtc
 and plane once
Thread-Index: AQHXzDpNl33Etnt0h0ulNraXnsur7qvp+CqAgADAkoA=
Date: Fri, 29 Oct 2021 17:47:22 +0000
Message-ID: <ef277430243319664ea65ffe5126392ed658055c.camel@intel.com>
References: <20211028203418.69680-1-jose.souza@intel.com>
 <YXuToZWS85LP7ftd@intel.com>
In-Reply-To: <YXuToZWS85LP7ftd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C697E8F363AF2345936CACFE846927B6@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Check async flip state of
 every crtc and plane once
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTEwLTI5IGF0IDA5OjI0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDI4LCAyMDIxIGF0IDAxOjM0OjE4UE0gLTA3MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gRm9yIGV2ZXJ5IGNydGMgaW4gc3RhdGUsIGludGVsX2F0
b21pY19jaGVja19hc3luYygpIHdhcyBjaGVja2luZyBhbGwNCj4gPiB0aGUgY3J0YyBhbmQgcGxh
bmUgc3RhdGVzIGFnYWluLg0KPiA+IA0KPiA+IENjOiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNA
aW50ZWwuY29tPg0KPiA+IENjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzOCArKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRl
eCA3OWNkMTU4NTAzYjM3Li4zYjVhOGU5NzEzNDNmIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBAQCAtNzcwNywzNSArNzcw
NywzNyBAQCBzdGF0aWMgdm9pZCBraWxsX2JpZ2pvaW5lcl9zbGF2ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgICogY29ycmVzcG9uZCB0byB0aGUgbGFzdCB2Ymxhbmsg
YW5kIGhhdmUgbm8gcmVsYXRpb24gdG8gdGhlIGFjdHVhbCB0aW1lIHdoZW4NCj4gPiAgICogdGhl
IGZsaXAgZG9uZSBldmVudCB3YXMgc2VudC4NCj4gPiAgICovDQo+ID4gLXN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX2NoZWNrX2FzeW5jKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0K
PiA+ICtzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ID4gIHsNCj4gPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYp
Ow0KPiA+ICAJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLCAq
bmV3X2NydGNfc3RhdGU7DQo+ID4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5l
d19wbGFuZV9zdGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZTsNCj4gPiAtCXN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjOw0KPiA+ICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4gPiAgCWludCBpOw0K
PiA+ICANCj4gPiAtCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBj
cnRjLCBvbGRfY3J0Y19zdGF0ZSwNCj4gPiAtCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsN
Cj4gPiAtCQlpZiAoaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgew0K
PiA+IC0JCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiTW9kZXNldCBSZXF1aXJlZC4gQXN5bmMg
ZmxpcCBub3Qgc3VwcG9ydGVkXG4iKTsNCj4gPiAtCQkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gLQkJ
fQ0KPiA+ICsJb2xkX2NydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRl
KHN0YXRlLCBjcnRjKTsNCj4gPiArCW5ld19jcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX2dldF9u
ZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gIA0KPiA+IC0JCWlmICghbmV3X2NydGNf
c3RhdGUtPmh3LmFjdGl2ZSkgew0KPiA+IC0JCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiQ1JU
QyBpbmFjdGl2ZVxuIik7DQo+ID4gLQkJCXJldHVybiAtRUlOVkFMOw0KPiA+IC0JCX0NCj4gPiAt
CQlpZiAob2xkX2NydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXMgIT0gbmV3X2NydGNfc3RhdGUtPmFj
dGl2ZV9wbGFuZXMpIHsNCj4gPiAtCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiAtCQkJ
CSAgICAiQWN0aXZlIHBsYW5lcyBjYW5ub3QgYmUgY2hhbmdlZCBkdXJpbmcgYXN5bmMgZmxpcFxu
Iik7DQo+ID4gLQkJCXJldHVybiAtRUlOVkFMOw0KPiA+IC0JCX0NCj4gPiArCWlmIChpbnRlbF9j
cnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIk1vZGVzZXQgUmVxdWlyZWQuIEFzeW5jIGZsaXAgbm90IHN1cHBvcnRlZFxu
Iik7DQo+ID4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICsJaWYgKCFu
ZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRy
bSwgIkNSVEMgaW5hY3RpdmVcbiIpOw0KPiA+ICsJCXJldHVybiAtRUlOVkFMOw0KPiA+ICsJfQ0K
PiA+ICsJaWYgKG9sZF9jcnRjX3N0YXRlLT5hY3RpdmVfcGxhbmVzICE9IG5ld19jcnRjX3N0YXRl
LT5hY3RpdmVfcGxhbmVzKSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPiAr
CQkJICAgICJBY3RpdmUgcGxhbmVzIGNhbm5vdCBiZSBjaGFuZ2VkIGR1cmluZyBhc3luYyBmbGlw
XG4iKTsNCj4gPiArCQlyZXR1cm4gLUVJTlZBTDsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gIAlmb3Jf
ZWFjaF9vbGRuZXdfaW50ZWxfcGxhbmVfaW5fc3RhdGUoc3RhdGUsIHBsYW5lLCBvbGRfcGxhbmVf
c3RhdGUsDQo+ID4gIAkJCQkJICAgICBuZXdfcGxhbmVfc3RhdGUsIGkpIHsNCj4gPiArCQlpZiAo
cGxhbmUtPmJhc2UuY3J0YyAhPSAmY3J0Yy0+YmFzZSkNCj4gPiArCQkJY29udGludWU7DQo+IA0K
PiBOb3QgdGhlIHBvaW50ZXIgeW91IHdhbnQgdG8gYmUgbG9va2luZyBhdC4NCg0KbmV3X3BsYW5l
X3N0YXRlLT5ody5jcnRjPw0KDQo+IA0KPiA+ICsNCj4gPiAgCQkvKg0KPiA+ICAJCSAqIFRPRE86
IEFzeW5jIGZsaXAgaXMgb25seSBzdXBwb3J0ZWQgdGhyb3VnaCB0aGUgcGFnZSBmbGlwIElPQ1RM
DQo+ID4gIAkJICogYXMgb2Ygbm93LiBTbyBzdXBwb3J0IGN1cnJlbnRseSBhZGRlZCBmb3IgcHJp
bWFyeSBwbGFuZSBvbmx5Lg0KPiA+IEBAIC04MDU0LDcgKzgwNTYsNyBAQCBzdGF0aWMgaW50IGlu
dGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LA0KPiA+ICAJZm9yX2VhY2hf
b2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0YXRlLA0K
PiA+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiA+ICAJCWlmIChuZXdfY3J0Y19z
dGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gLQkJCXJldCA9IGludGVsX2F0b21pY19jaGVj
a19hc3luYyhzdGF0ZSk7DQo+ID4gKwkJCXJldCA9IGludGVsX2F0b21pY19jaGVja19hc3luYyhz
dGF0ZSwgY3J0Yyk7DQo+ID4gIAkJCWlmIChyZXQpDQo+ID4gIAkJCQlnb3RvIGZhaWw7DQo+ID4g
IAkJfQ0KPiA+IC0tIA0KPiA+IDIuMzMuMQ0KPiANCg0K
