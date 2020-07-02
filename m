Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3317B212FBF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 01:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331586E5B2;
	Thu,  2 Jul 2020 23:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617266E5B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 23:02:07 +0000 (UTC)
IronPort-SDR: qNSTNm3DGR4B0dQzgDCzW38EtJ3Ypmt3nDYtwvfP03cWvLQ6NWiMxwo2c9IU35tibq+8H+FPZP
 MujlDeEqjYkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="212070949"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="212070949"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 16:02:06 -0700
IronPort-SDR: 7pVq8VhR/Xq6A8VaNvkM3ZI5yLtfW6OYbVurki7jS2/5aaeHgLfd8o3RipDe8CNfYUU5+cVKgt
 EfC7LjYOHlYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="267198105"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2020 16:02:06 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Jul 2020 16:02:05 -0700
Received: from fmsmsx124.amr.corp.intel.com (10.18.125.39) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 2 Jul 2020 16:02:05 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx124.amr.corp.intel.com ([169.254.8.247]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 16:02:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/fbc: Fix nuke for pre-snb
 platforms
Thread-Index: AQHWUIbG70dQGMURwk+8OaE1wfoTn6j1Xl2A
Date: Thu, 2 Jul 2020 23:02:05 +0000
Message-ID: <4640b96482ac43decad11d006ca7112433b742ed.camel@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702153723.24327-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <1578862EB268DB49A2A92363374F9CE0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/fbc: Fix nuke for pre-snb
 platforms
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

T24gVGh1LCAyMDIwLTA3LTAyIGF0IDE4OjM3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIE1TR19GQkNfUkVORF9TVEFURSByZWdpc3RlciBvbmx5IGV4aXN0cyBvbiBzbmIr
LiBGb3Igb2xkZXINCj4gcGxhdGZvcm1zICh3b3VsZCBhbHNvIHdvcmsgZm9yIHNuYispIHdlIGNh
biBzaW1wbHkgcmV3aXRlIERTUFNVUkYNCj4gdG8gdHJpZ2dlciBhIGZsaXAgbnVrZS4NCj4gDQo+
IFdoaWxlIGdlbmVyYWxseSBSTVcgaXMgY29uc2lkZXJlZCBoYXJtZnVsIHdlJ2xsIHVzZSBpdCBo
ZXJlIGZvcg0KPiBzaW1wbGljaXR5LiBBbmQgc2luY2UgRkJDIGRvZXNuJ3QgZXhpc3QgaW4gaTgz
MCB3ZSBkb24ndCBoYXZlIHRvDQo+IHdvcnJ5IGFib3V0IHRoZSBEU1BTVVJGIGRvdWJsZSBidWZm
ZXJpbmcgaGFyZHdhcmUgZmFpbHMgcHJlc2VudA0KPiBvbiB0aGF0IHBsYXRmb3JtLg0KDQpEaWQg
bm90IGZvdW5kIGEgZXhwbGljaXQgc3RhdGVtZW50IGFib3V0IHdyaXRpbmcgRFNQU1VSRiB3aWxs
IG51a2UgY29tcHJlc3NlZCBidWZmZXIgYnV0IHRoYXQgbWFrZXMgc2Vuc2UsIGFsc28gY2hlY2tl
ZCB0aGF0IE1TR19GQkNfUkVORF9TVEFURSBkbyBub3QNCmV4aXN0IHRoaXMgb2xkZXIgcGxhdGZv
cm1zLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mYmMuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrLQ0KPiAgMSBm
aWxlIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBpbmRleCBkMzBjMmEzODkyOTQu
LjAzNjU0NmNlOGRiOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+IEBAIC0xODcsOCArMTg3LDMwIEBAIHN0YXRpYyBib29sIGc0eF9mYmNfaXNfYWN0
aXZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlyZXR1cm4gaW50ZWxf
ZGVfcmVhZChkZXZfcHJpdiwgRFBGQ19DT05UUk9MKSAmIERQRkNfQ1RMX0VOOw0KPiAgfQ0KPiAg
DQo+ICtzdGF0aWMgdm9pZCBpOHh4X2ZiY19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikNCj4gK3sNCj4gKwlzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBh
cmFtcyA9ICZkZXZfcHJpdi0+ZmJjLnBhcmFtczsNCj4gKwllbnVtIGk5eHhfcGxhbmVfaWQgaTl4
eF9wbGFuZSA9IHBhcmFtcy0+Y3J0Yy5pOXh4X3BsYW5lOw0KPiArDQo+ICsJc3Bpbl9sb2NrX2ly
cSgmZGV2X3ByaXYtPnVuY29yZS5sb2NrKTsNCj4gKwlpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJp
diwgRFNQQUREUihpOXh4X3BsYW5lKSwNCj4gKwkJCSAgaW50ZWxfZGVfcmVhZF9mdyhkZXZfcHJp
diwgRFNQQUREUihpOXh4X3BsYW5lKSkpOw0KPiArCXNwaW5fdW5sb2NrX2lycSgmZGV2X3ByaXYt
PnVuY29yZS5sb2NrKTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgaTk2NV9mYmNfcmVjb21w
cmVzcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICt7DQo+ICsJc3RydWN0
IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZGV2X3ByaXYtPmZiYy5wYXJhbXM7DQo+
ICsJZW51bSBpOXh4X3BsYW5lX2lkIGk5eHhfcGxhbmUgPSBwYXJhbXMtPmNydGMuaTl4eF9wbGFu
ZTsNCj4gKw0KPiArCXNwaW5fbG9ja19pcnEoJmRldl9wcml2LT51bmNvcmUubG9jayk7DQo+ICsJ
aW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIERTUFNVUkYoaTl4eF9wbGFuZSksDQo+ICsJCQkg
IGludGVsX2RlX3JlYWRfZncoZGV2X3ByaXYsIERTUFNVUkYoaTl4eF9wbGFuZSkpKTsNCj4gKwlz
cGluX3VubG9ja19pcnEoJmRldl9wcml2LT51bmNvcmUubG9jayk7DQo+ICt9DQo+ICsNCj4gIC8q
IFRoaXMgZnVuY3Rpb24gZm9yY2VzIGEgQ0ZCIHJlY29tcHJlc3Npb24gdGhyb3VnaCB0aGUgbnVr
ZSBvcGVyYXRpb24uICovDQo+IC1zdGF0aWMgdm9pZCBpbnRlbF9mYmNfcmVjb21wcmVzcyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICtzdGF0aWMgdm9pZCBzbmJfZmJjX3Jl
Y29tcHJlc3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgew0KPiAgCXN0
cnVjdCBpbnRlbF9mYmMgKmZiYyA9ICZkZXZfcHJpdi0+ZmJjOw0KPiAgDQo+IEBAIC0xOTgsNiAr
MjIwLDE2IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYs
IE1TR19GQkNfUkVORF9TVEFURSk7DQo+ICB9DQo+ICANCj4gK3N0YXRpYyB2b2lkIGludGVsX2Zi
Y19yZWNvbXByZXNzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gK3sNCj4g
KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA2KQ0KPiArCQlzbmJfZmJjX3JlY29tcHJlc3Mo
ZGV2X3ByaXYpOw0KPiArCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gNCkNCj4gKwkJ
aTk2NV9mYmNfcmVjb21wcmVzcyhkZXZfcHJpdik7DQo+ICsJZWxzZQ0KPiArCQlpOHh4X2ZiY19y
ZWNvbXByZXNzKGRldl9wcml2KTsNCj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgaWxrX2ZiY19h
Y3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpDQo+ICB7DQo+ICAJc3Ry
dWN0IGludGVsX2ZiY19yZWdfcGFyYW1zICpwYXJhbXMgPSAmZGV2X3ByaXYtPmZiYy5wYXJhbXM7
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
