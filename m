Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9279931A591
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 20:42:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF6C6E083;
	Fri, 12 Feb 2021 19:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7F46E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 19:42:22 +0000 (UTC)
IronPort-SDR: cVlMz5SSX1VXMBk4RAauXw45CdlJdYpsP2ApjxgcLk+g5PqiO6e323mTzxia21BzrS7X+6VZTA
 zU4F6VhGx6Ew==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="181690135"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="181690135"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 11:42:19 -0800
IronPort-SDR: hU2ioHZsh2AVmkfxIoMcwMdMrCwG3abz18ZZiO/3uvMyxZeMEv+CbUwHI4ivzaJuk2a4/Pd9oZ
 FjFex/kOZ5Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="376464244"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2021 11:42:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:42:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Feb 2021 11:42:17 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Fri, 12 Feb 2021 11:42:17 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
Thread-Index: AQHXAWvFzoGb7xSwY06yjubbSUNGp6pVa26AgAAGnYA=
Date: Fri, 12 Feb 2021 19:42:17 +0000
Message-ID: <53eacc4a83726b8db5d063d02479a085df7542ae.camel@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <YCbU65VC/YP4MRHf@intel.com>
In-Reply-To: <YCbU65VC/YP4MRHf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <7B77C62F40484B40B840E7ADE2A9AE18@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display/adl_s: Fix
 dpclka_cfgcr0_clk_off mapping
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTEyIGF0IDIxOjIwICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDEyLCAyMDIxIGF0IDEwOjIxOjU5QU0gLTA4MDAsIEpvc8OpIFJvYmVy
dG8gZGUgU291emEgd3JvdGU6DQo+ID4gVGhlIGNmZ2NyMC8xX2Nsa19vZmYgbWFwcGluZyBpcyB3
cm9uZyBmb3IgYWRsLXMgd2hhdCBjb3VsZCBjYXVzZQ0KPiA+IHRoZSB3cm9uZyBjbG9jayBiZWlu
ZyBkaXNhYmxlZCBhbmQgbGVhdmluZyBhIG5vdCBuZWVkZWQgY2xvY2sNCj4gPiBydW5uaW5nIGNv
bnN1bWluZyBtb3JlIHBvd2VyIHRoYW4gbmVlZGVkLg0KPiA+IA0KPiA+IEJzcGVjOiA1MDI4Nw0K
PiA+IEJzcGVjOiA1MzgxMg0KPiA+IEJzcGVjOiA1MzcyMw0KPiA+IEZpeGVzOiBkNmQyYmM5OTZl
NDUgKCJkcm0vaTkxNS9hZGxfczogQ29uZmlndXJlIFBvcnQgY2xvY2sgcmVnaXN0ZXJzIGZvciBB
REwtUyIpDQo+ID4gQ2M6IEFkaXR5YSBTd2FydXAgPGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPg0K
PiA+IENjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gPiBD
YzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiAt
LS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8ICA0ICsr
Ky0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDEyICsr
KysrKysrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMNCj4gPiBpbmRleCAyZDY5MDZmNjk5NWYuLjc2MzFlMDgwMzQ5ZCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+IEBAIC0xNTg1LDcgKzE1
ODUsOSBAQCBoc3dfc2V0X3NpZ25hbF9sZXZlbHMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwN
Cj4gPiAgc3RhdGljIHUzMiBpY2xfZHBjbGthX2NmZ2NyMF9jbGtfb2ZmKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCQkJCSAgICAgZW51bSBwaHkgcGh5KQ0KPiA+ICB7
DQo+ID4gLQlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpIHsNCj4gPiArCWlmIChJU19BTERF
UkxBS0VfUyhkZXZfcHJpdikpIHsNCj4gPiArCQlyZXR1cm4gQURMU19EUENMS0FfQ0ZHQ1JfRERJ
X0NMS19PRkYocGh5KTsNCj4gPiArCX0gZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikp
IHsNCj4gPiAgCQlyZXR1cm4gUktMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsNCj4g
PiAgCX0gZWxzZSBpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKSB7DQo+ID4g
IAkJcmV0dXJuIElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSk7DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXggMjI0YWQ4OTdhZjM0Li43YzY5YjUwY2NjNWMgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtMTA0MTYsNiArMTA0MTYs
MTggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7DQo+ID4gIAkJCQkJCQlBRExTX0RQQ0xLQV9ERElK
X1NFTF9NQVNLLCBcDQo+ID4gIAkJCQkJCQlBRExTX0RQQ0xLQV9ERElLX1NFTF9NQVNLKQ0KPiA+
ICANCj4gPiANCj4gPiArI2RlZmluZSBfQURMU19EUENMS0FfRERJQV9DTEtfT0ZGCQkJUkVHX0JJ
VCgxMCkNCj4gPiArI2RlZmluZSBfQURMU19EUENMS0FfRERJQl9DTEtfT0ZGCQkJUkVHX0JJVCgx
MSkNCj4gPiArI2RlZmluZSBfQURMU19EUENMS0FfRERJSV9DTEtfT0ZGCQkJUkVHX0JJVCgyNCkN
Cj4gPiArI2RlZmluZSBfQURMU19EUENMS0FfRERJSl9DTEtfT0ZGCQkJUkVHX0JJVCg0KQ0KPiA+
ICsjZGVmaW5lIF9BRExTX0RQQ0xLQV9ERElLX0NMS19PRkYJCQlSRUdfQklUKDUpDQo+IA0KPiBT
byBzaG9zZSBhcmUgYXBwYXJlbnRseSBzcGxpdCBiZXR3ZWVuIHRoZSB0d28gcmVnaXN0ZXJzLiBX
aHkgYXJlbid0DQo+IHdlIGRlZmluaW5nIHRoZXNlIHNvIHRoYXQgaXQgd291bGQgYmUgb2J2aW91
cyB3aGljaCByZWdpc3RlciB0aGV5DQo+IGxpdmUgaW4/IFRoaXMgc3R1ZmYgaXMgY29uZnVzaW5n
IGVub3VnaCB3aXRoIHRoZSBodyBmb2xrcyBjaHVybmluZw0KPiB0aGUgYml0cyBhcm91bmQgcmFu
ZG9tbHkgb24gZXZlcnkgcGxhdGZvcm0sIHNvIEkgZG9uJ3QgdGhpbmsgd2UNCj4gc2hvdWxkIGFk
ZCB0byB0aGUgY29uZnVzaW9uIGJ5IG9iZnVzY2F0aW5nIHRoZSBiaXQgZGVmaW5lcy4gSSBkbw0K
PiBsaWtlIHRoYXQgeW91IG5hbWVkIHRoZSBiaXRzLCB3aGljaCBpc24ndCBjYXNlIGZvciB0aGUg
b3RoZXINCj4gcGxhdGZvcm1zLiBXb3VsZCBiZSBuaWNlIHRvIGZpeCBpdCBhbGwgdXAgYWN0dWFs
bHkuDQo+IA0KPiBIbW0uIEhvd2V2ZXIsIHRoaXMgbmV3IGRlZmludGlvbiBzZWVtIHRvIG1hdGNo
IA0KPiBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRigpIDEwMCUuIFNvIGhvdyBjYW4gdGhp
cyBiZSBmaXhpbmcNCj4gc29tZXRoaW5nPyBBbHNvIElDTCBmb3Igc3VyZSBjYW4ndCBoYXZlIHRo
YXQgbWFueSBjb21ibyBQSFlzIGNhbg0KPiBpdD8gV2Ugc2hvdWxkIG51a2UgdGhlIGV4dHJhIHN0
dWZmIGZyb20gdGhlIElDTCBkZWZpbnRpb24gaWYgaXQncw0KPiBubyBsb25nZXIgdXNlZC4NCg0K
R29vZCBjYXRjaCAmIG15IGJhZC4NCldhcyBmaXhpbmcgaXQgZm9yIG90aGVyIHBsYXRmb3JtIGFu
ZCB0b3VnaHQgdGhhdCBpdCBtaWdodCBiZSBicm9rZW4NCmZvciBBREwtUyB0b28gYnV0IGFzIGFs
bCBwb3J0cyBhcmUgY29tYm8gcG9ydHMNCklDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGIHdp
bGwgZG8gdGhlIHJpZ2h0IGpvYi4NCg0KRHJvcHBpbmcgdGhpcyBwYXRjaC4NCg0KPiANCj4gPiAr
I2RlZmluZSBBRExTX0RQQ0xLQV9DRkdDUl9ERElfQ0xLX09GRihwaHkpCQlfUElDSygocGh5KSwg
XA0KPiA+ICsJCQkJCQkJICAgICAgX0FETFNfRFBDTEtBX0RESUFfQ0xLX09GRiwgXA0KPiA+ICsJ
CQkJCQkJICAgICAgX0FETFNfRFBDTEtBX0RESUJfQ0xLX09GRiwgXA0KPiA+ICsJCQkJCQkJICAg
ICAgX0FETFNfRFBDTEtBX0RESUlfQ0xLX09GRiwgXA0KPiA+ICsJCQkJCQkJICAgICAgX0FETFNf
RFBDTEtBX0RESUpfQ0xLX09GRiwgXA0KPiA+ICsJCQkJCQkJICAgICAgX0FETFNfRFBDTEtBX0RE
SUtfQ0xLX09GRikNCj4gPiArDQo+ID4gIC8qIENOTCBQTEwgKi8NCj4gPiAgI2RlZmluZSBEUExM
MF9FTkFCTEUJCTB4NDYwMTANCj4gPiAgI2RlZmluZSBEUExMMV9FTkFCTEUJCTB4NDYwMTQNCj4g
PiAtLSANCj4gPiAyLjMwLjENCj4gPiANCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gPiBJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQoNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
