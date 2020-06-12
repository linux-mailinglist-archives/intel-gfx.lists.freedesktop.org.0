Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663021F7B0C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 17:42:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 898096E9D9;
	Fri, 12 Jun 2020 15:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C93E6E9D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 15:42:41 +0000 (UTC)
IronPort-SDR: 7kqCdVQcB9yvoBH6EziVy0nqPuh7r1CmUQGwL/TQGa7DQkoR6hGsxj8dkjhj2z9oIP/2Z8kBwg
 tvsZH49RbRLg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2020 08:42:40 -0700
IronPort-SDR: 6bF5c0BVx7GTl1kB86EVUNCa0L1illA6EFAv8Q/pyElmKNGIahBTHRAdASSHgVVh51KblwM4VK
 vKo80+0ov+1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,503,1583222400"; d="scan'208";a="448333032"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by orsmga005.jf.intel.com with ESMTP; 12 Jun 2020 08:42:39 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jun 2020 16:42:39 +0100
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 12 Jun 2020 16:42:38 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 12 Jun 2020 16:42:38 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/6] drm/i915: Reorder
 intel_psr2_config_valid()
Thread-Index: AQHWM6rWoJxickM5mkSRZ+Dd8+4Vg6jVKBaA
Date: Fri, 12 Jun 2020 15:42:38 +0000
Message-ID: <7ab9eb3561ed00717a9cd3232c3b581dfa636c23.camel@intel.com>
References: <20200526221447.64110-1-jose.souza@intel.com>
 <20200526221447.64110-3-jose.souza@intel.com>
In-Reply-To: <20200526221447.64110-3-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.66.162]
Content-ID: <8EDBC462FF186549AE2BDD34541ED9CE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Reorder
 intel_psr2_config_valid()
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

TG9va3MgZ29vZCB0byBtZS4NCg0KUmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1n
eWVvbmcubXVuQGludGVsLmNvbT4NCg0KT24gVHVlLCAyMDIwLTA1LTI2IGF0IDE1OjE0IC0wNzAw
LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIHdyb3RlOg0KPiBGdXR1cmUgcGF0Y2hlcyB3aWxsIGJy
aW5nIFBTUjIgc2VsZWN0aXZlIGZldGNoIGNvbmZpZ3VyYXRpb24NCj4gdmFsaWRhdGlvbiBidXQg
bW9zdCBvZiB0aGUgY29uZmlndXJhdGlvbiBjaGVja3Mgd2lsbCBiZSB1c2VkIGZvciBIVw0KPiB0
cmFja2luZyBhbmQgc2VsZWN0aXZlIGZldGNoIHNvIHRoZSByZW9kZXIgd2FzIG5lY2Vzc2FyeS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCA1MCArKysrKysrKysrKystLS0tLS0tLQ0KPiAtLS0tDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNzE0YzU5MGIzOWY1Li4wYzg2
ZTllMzQxYTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiBAQCAtNjQ2LDIxICs2NDYsNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192
YWxpZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+
ICAJfQ0KPiAgDQo+IC0JLyoNCj4gLQkgKiBTb21lIHBsYXRmb3JtcyBsYWNrIFBTUjIgSFcgdHJh
Y2tpbmcgYW5kIGluc3RlYWQgcmVxdWlyZQ0KPiBtYW51YWwNCj4gLQkgKiB0cmFja2luZyBieSBz
b2Z0d2FyZS4gIEluIHRoaXMgY2FzZSwgdGhlIGRyaXZlciBpcyByZXF1aXJlZA0KPiB0byB0cmFj
aw0KPiAtCSAqIHRoZSBhcmVhcyB0aGF0IG5lZWQgdXBkYXRlcyBhbmQgcHJvZ3JhbSBoYXJkd2Fy
ZSB0byBzZW5kDQo+IHNlbGVjdGl2ZQ0KPiAtCSAqIHVwZGF0ZXMuDQo+IC0JICoNCj4gLQkgKiBT
byB1bnRpbCB0aGUgc29mdHdhcmUgdHJhY2tpbmcgaXMgaW1wbGVtZW50ZWQsIFBTUjIgbmVlZHMg
dG8NCj4gYmUNCj4gLQkgKiBkaXNhYmxlZCBmb3IgcGxhdGZvcm1zIHdpdGhvdXQgUFNSMiBIVyB0
cmFja2luZy4NCj4gLQkgKi8NCj4gLQlpZiAoIUhBU19QU1JfSFdfVFJBQ0tJTkcoZGV2X3ByaXYp
KSB7DQo+IC0JCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJICAgICJObyBQU1Iy
IEhXIHRyYWNraW5nIGluIHRoZSBwbGF0Zm9ybVxuIik7DQo+IC0JCXJldHVybiBmYWxzZTsNCj4g
LQl9DQo+IC0NCj4gIAkvKg0KPiAgCSAqIERTQyBhbmQgUFNSMiBjYW5ub3QgYmUgZW5hYmxlZCBz
aW11bHRhbmVvdXNseS4gSWYgYQ0KPiByZXF1ZXN0ZWQNCj4gIAkgKiByZXNvbHV0aW9uIHJlcXVp
cmVzIERTQyB0byBiZSBlbmFibGVkLCBwcmlvcml0eSBpcyBnaXZlbiB0bw0KPiBEU0MNCj4gQEAg
LTY3Miw2ICs2NTcsMTIgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3Ry
dWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJcmV0dXJuIGZhbHNlOw0KPiAgCX0NCj4g
IA0KPiArCWlmIChjcnRjX3N0YXRlLT5jcmNfZW5hYmxlZCkgew0KPiArCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gKwkJCSAgICAiUFNSMiBub3QgZW5hYmxlZCBiZWNhdXNlIGl0IHdv
dWxkIGluaGliaXQNCj4gcGlwZSBDUkMgY2FsY3VsYXRpb25cbiIpOw0KPiArCQlyZXR1cm4gZmFs
c2U7DQo+ICsJfQ0KPiArDQo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4g
IAkJcHNyX21heF9oID0gNTEyMDsNCj4gIAkJcHNyX21heF92ID0gMzIwMDsNCj4gQEAgLTY4Niwx
NCArNjc3LDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0DQo+
IGludGVsX2RwICppbnRlbF9kcCwNCj4gIAkJbWF4X2JwcCA9IDI0Ow0KPiAgCX0NCj4gIA0KPiAt
CWlmIChjcnRjX2hkaXNwbGF5ID4gcHNyX21heF9oIHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4
X3YpIHsNCj4gLQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+IC0JCQkgICAgIlBTUjIg
bm90IGVuYWJsZWQsIHJlc29sdXRpb24gJWR4JWQgPiBtYXgNCj4gc3VwcG9ydGVkICVkeCVkXG4i
LA0KPiAtCQkJICAgIGNydGNfaGRpc3BsYXksIGNydGNfdmRpc3BsYXksDQo+IC0JCQkgICAgcHNy
X21heF9oLCBwc3JfbWF4X3YpOw0KPiAtCQlyZXR1cm4gZmFsc2U7DQo+IC0JfQ0KPiAtDQo+ICAJ
aWYgKGNydGNfc3RhdGUtPnBpcGVfYnBwID4gbWF4X2JwcCkgew0KPiAgCQlkcm1fZGJnX2ttcygm
ZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSMiBub3QgZW5hYmxlZCwgcGlwZSBicHAgJWQg
PiBtYXgNCj4gc3VwcG9ydGVkICVkXG4iLA0KPiBAQCAtNzE0LDkgKzY5NywyNiBAQCBzdGF0aWMg
Ym9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2Rw
LA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAgDQo+IC0JaWYgKGNydGNfc3RhdGUtPmNy
Y19lbmFibGVkKSB7DQo+ICsJLyoNCj4gKwkgKiBTb21lIHBsYXRmb3JtcyBsYWNrIFBTUjIgSFcg
dHJhY2tpbmcgYW5kIGluc3RlYWQgcmVxdWlyZQ0KPiBtYW51YWwNCj4gKwkgKiB0cmFja2luZyBi
eSBzb2Z0d2FyZS4gIEluIHRoaXMgY2FzZSwgdGhlIGRyaXZlciBpcyByZXF1aXJlZA0KPiB0byB0
cmFjaw0KPiArCSAqIHRoZSBhcmVhcyB0aGF0IG5lZWQgdXBkYXRlcyBhbmQgcHJvZ3JhbSBoYXJk
d2FyZSB0byBzZW5kDQo+IHNlbGVjdGl2ZQ0KPiArCSAqIHVwZGF0ZXMuDQo+ICsJICoNCj4gKwkg
KiBTbyB1bnRpbCB0aGUgc29mdHdhcmUgdHJhY2tpbmcgaXMgaW1wbGVtZW50ZWQsIFBTUjIgbmVl
ZHMgdG8NCj4gYmUNCj4gKwkgKiBkaXNhYmxlZCBmb3IgcGxhdGZvcm1zIHdpdGhvdXQgUFNSMiBI
VyB0cmFja2luZy4NCj4gKwkgKi8NCj4gKwlpZiAoIUhBU19QU1JfSFdfVFJBQ0tJTkcoZGV2X3By
aXYpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJICAgICJQU1Iy
IG5vdCBlbmFibGVkIGJlY2F1c2UgaXQgd291bGQgaW5oaWJpdA0KPiBwaXBlIENSQyBjYWxjdWxh
dGlvblxuIik7DQo+ICsJCQkgICAgIk5vIFBTUjIgSFcgdHJhY2tpbmcgaW4gdGhlIHBsYXRmb3Jt
XG4iKTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiArCWlmIChjcnRjX2hkaXNw
bGF5ID4gcHNyX21heF9oIHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4X3YpIHsNCj4gKwkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkgICAgIlBTUjIgbm90IGVuYWJsZWQsIHJl
c29sdXRpb24gJWR4JWQgPiBtYXgNCj4gc3VwcG9ydGVkICVkeCVkXG4iLA0KPiArCQkJICAgIGNy
dGNfaGRpc3BsYXksIGNydGNfdmRpc3BsYXksDQo+ICsJCQkgICAgcHNyX21heF9oLCBwc3JfbWF4
X3YpOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAgDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
