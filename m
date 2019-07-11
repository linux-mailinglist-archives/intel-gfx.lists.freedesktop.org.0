Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC14165DD0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 18:49:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760B36E162;
	Thu, 11 Jul 2019 16:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7863F6E162
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 16:49:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 09:49:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="317732354"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga004.jf.intel.com with ESMTP; 11 Jul 2019 09:49:07 -0700
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.234]) by
 irsmsx110.ger.corp.intel.com ([169.254.15.82]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 17:49:06 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Don't overestimate 4:2:0 link symbol clock
Thread-Index: AQHVNx9HvMZIEsl9QUeW6KuqJQ+O1abFkheA
Date: Thu, 11 Jul 2019 16:49:06 +0000
Message-ID: <bb7f15e2644c4592bb0f62aa64e0300b2f8bb30e.camel@intel.com>
References: <20190710125851.3275-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190710125851.3275-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.174]
Content-ID: <96A69946D8C06D4081DDBA0B6F44820E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't overestimate 4:2:0 link
 symbol clock
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

T24gV2VkLCAyMDE5LTA3LTEwIGF0IDE1OjU4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2l0aCA0OjI6MCBvdXRwdXQgdGhlIExTIGNsb2NrIGNhbiBiZSBoYWxmIG9mIHdoYXQg
aXQgaXMgd2l0aCA0OjQ6NC4NCj4gTWFrZSB0aGF0IGhhcHBlbi4NCj4gDQo+IENjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgNCArKystDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDBiZGI3ZWNjNWE4MS4u
MWRmYWNmMDkwZmI4IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC0xODUzLDggKzE4NTMsMTAgQEAgaW50ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZp
Z193aWRlKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJaW50IG1vZGVfcmF0ZSwg
bGlua19jbG9jaywgbGlua19hdmFpbDsNCj4gIA0KPiAgCWZvciAoYnBwID0gbGltaXRzLT5tYXhf
YnBwOyBicHAgPj0gbGltaXRzLT5taW5fYnBwOyBicHAgLT0gMiAqDQo+IDMpIHsNCj4gKwkJaW50
IG91dHB1dF9icHAgPSBpbnRlbF9kcF9vdXRwdXRfYnBwKHBpcGVfY29uZmlnLCBicHApOw0KPiAr
DQo+ICAJCW1vZGVfcmF0ZSA9IGludGVsX2RwX2xpbmtfcmVxdWlyZWQoYWRqdXN0ZWRfbW9kZS0N
Cj4gPmNydGNfY2xvY2ssDQo+IC0JCQkJCQkgICBicHApOw0KPiArCQkJCQkJICAgb3V0cHV0X2Jw
cCk7DQo+ICANCj4gIAkJZm9yIChjbG9jayA9IGxpbWl0cy0+bWluX2Nsb2NrOyBjbG9jayA8PSBs
aW1pdHMtDQo+ID5tYXhfY2xvY2s7IGNsb2NrKyspIHsNCj4gIAkJCWZvciAobGFuZV9jb3VudCA9
IGxpbWl0cy0+bWluX2xhbmVfY291bnQ7DQpBY2NvcmRpbmcgdG8gRFAgMS40IHNwZWMgc2VjdGlv
biAxLjcuMSBbTWFrZXVwIG9mIHRoZSBNYWluLUxpbmtdLA0KcHJldmlvdXMgaW1wbGVtZW50YXRp
b24gd29ya2VkIGJ5IGJlbG93IGV4cGxhaW5hdGlvbi4NCkFmdGVyIHRoZSBzdHJlYW0gZGF0YSBp
cyBwYWNrZWQgYW5kIG1hcHBlZCB0byB0aGUgTWFpbi1MaW5rLCB0aGUgcGFja2VkDQpzdHJlYW0g
ZGF0YSByYXRlIHNoYWxsIGJlIGxlc3MgdGhhbiBvciBlcXVhbCB0byB0aGUgTWFpbi1MaW5r4oCZ
cyBsaW5rDQpzeW1ib2wgcmF0ZS4gV2hlbiB0aGUgcGFja2VkIHN0cmVhbSBkYXRhIHJhdGUgaXMg
bGVzcyB0aGFuIHRoZSBNYWluLQ0KTGlua+KAmXMgbGluayBzeW1ib2wgcmF0ZSwgc3R1ZmZpbmcg
c3ltYm9scyBhcmUgaW5zZXJ0ZWQuDQoNClJldmlld2VkLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3
YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQpUZXN0ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dh
bi1neWVvbmcubXVuQGludGVsLmNvbT4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
