Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 674401786F3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 01:21:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0346EA93;
	Wed,  4 Mar 2020 00:21:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09AF26EA93
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 00:21:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 16:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="263401985"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 03 Mar 2020 16:21:02 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Mar 2020 16:21:02 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.129]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.133]) with mapi id 14.03.0439.000;
 Tue, 3 Mar 2020 16:21:01 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes
 until we've compute the wms fully
Thread-Index: AQHV7na1YwcN62ujbEGgCdWX8B8R3ag4HwKA
Date: Wed, 4 Mar 2020 00:21:01 +0000
Message-ID: <2f65710060a20a9d0622b545ee269ab2682e75cb.camel@intel.com>
References: <20200228203552.30273-1-ville.syrjala@linux.intel.com>
 <20200228203552.30273-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200228203552.30273-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.241]
Content-ID: <D3FEE927FDB45241B4CCDEEF2AAB3C89@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Don't check for wm changes
 until we've compute the wms fully
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

T24gRnJpLCAyMDIwLTAyLTI4IGF0IDIyOjM1ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gQ3VycmVudGx5IHdlJ3JlIGNvbXBhcmluZyB0aGUgd2F0ZXJtYXJrcyBiZXR3ZWVuIHRo
ZSBvbGQgYW5kIG5ldw0KPiBzdGF0ZXMNCj4gYmVmb3JlIHdlJ3ZlIGZ1bGx5IGNvbXB1dGVkIHRo
ZSBuZXcgd2F0ZXJtYXJrcy4gSW4gcGFydGljdWxhcg0KPiBza2xfYnVpbGRfcGlwZV93bSgpIHdp
bGwgbm90IGFjY291bnQgZm9yIHRoZSBhbW91bnQgb2YgZGRiIHNwYWNlDQo+IHdlJ2xsDQo+IGhh
dmUuIFRoYXQgaW5mb3JtYXRpb24gaXMgb25seSBhdmFpbGFibGUgZHVyaW5nIHNrbF9jb21wdXRl
X2RkYigpDQo+IHdoaWNoIHdpbGwgcHJvY2VlZCB0byB6ZXJvIG91dCBhbnkgd2F0ZXJtYXJrIGxl
dmVsIGV4Y2VlZGluZyB0aGUNCj4gZGRiIGFsbG9jYXRpb24uIElmIHdlJ3JlIHNob3J0IG9uIGRk
YiBzcGFjZSB0aGlzIHdpbGwgZW5kIHVwDQo+IGFkZGluZyB0aGUgcGxhbmUgdG8gdGhlIHN0YXRl
IGR1ZSBlcnJvbm91c2x5IGRldGVybWluaW5nIHRoYXQgdGhlDQo+IHdhdGVybWFya3MgaGF2ZSBj
aGFuZ2VkLiBGaXggdGhlIHByb2JsZW0gYnkgZGVmZXJyaW5nDQo+IHNrbF93bV9hZGRfYWZmZWN0
ZWRfcGxhbmVzKCkgdW50aWwgd2UgaGF2ZSB0aGUgZmluYWwgd2F0ZXJtYXJrcw0KPiBjb21wdXRl
ZC4NCj4gDQo+IE5vdGljZWQgdGhpcyB3aGVuIHRyeWluZyBlbmFibGUgdHJhbnNpdGlvbiB3YXRl
cm1hcmtzIG9uIGdsay4NCj4gV2Ugbm93IGNvbXB1dGVkIHRoZSB0cmFuc193bSBhcyAyOCwgYnV0
IHdlIG9ubHkgaGFkIDE0IGJsb2Nrcw0KPiBvZiBkZGIsIGFuZCB0aHVzIHNrbF9jb21wdXRlX2Rk
YigpIGVuZGVkIHVwIGRpc2FibGluZyB0aGUgY3Vyc29yDQo+IHRyYW5zX3dtIGV2ZXJ5IHRpbWUu
IFRodXMgd2UgZW5kZWQgdXAgYWRkaW5nIHRoZSBjdXJzb3IgdG8gZXZlcnkNCj4gY29tbWl0IHRo
YXQgZGlkbid0IGFjdHVhbGx5IGFmZmVjdCB0aGUgY3Vyc29yIGF0IGFsbC4NCj4gDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE2ICsrKysrKysr
KysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IGluZGV4IDM5Mjk5ODExYjY1
MC4uYTNkNzZlNjljYWFlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gQEAgLTU3
NjIsMTYgKzU3NjIsMjQgQEAgc2tsX2NvbXB1dGVfd20oc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZQ0KPiAqc3RhdGUpDQo+ICAJCXJldCA9IHNrbF9idWlsZF9waXBlX3dtKG5ld19jcnRjX3N0YXRl
KTsNCj4gIAkJaWYgKHJldCkNCj4gIAkJCXJldHVybiByZXQ7DQo+IC0NCj4gLQkJcmV0ID0gc2ts
X3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoc3RhdGUsIGNydGMpOw0KPiAtCQlpZiAocmV0KQ0KPiAt
CQkJcmV0dXJuIHJldDsNCj4gIAl9DQo+ICANCj4gIAlyZXQgPSBza2xfY29tcHV0ZV9kZGIoc3Rh
dGUpOw0KPiAgCWlmIChyZXQpDQo+ICAJCXJldHVybiByZXQ7DQo+ICANCj4gKwkvKg0KPiArCSAq
IHNrbF9jb21wdXRlX2RkYigpIHdpbGwgaGF2ZSBhZGp1c3RlZCB0aGUgZmluYWwgd2F0ZXJtYXJr
cw0KPiArCSAqIGJhc2VkIG9uIGhvdyBtdWNoIGRkYiBpcyBhdmFpbGFibGUuIE5vdyB3ZSBjYW4g
YWN0dWFsbHkNCj4gKwkgKiBjaGVjayBpZiB0aGUgZmluYWwgd2F0ZXJtYXJrcyBjaGFuZ2VkLg0K
PiArCSAqLw0KPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBj
cnRjLA0KPiBvbGRfY3J0Y19zdGF0ZSwNCj4gKwkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7
DQo+ICsJCXJldCA9IHNrbF93bV9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0YXRlLCBjcnRjKTsNCj4g
KwkJaWYgKHJldCkNCj4gKwkJCXJldHVybiByZXQ7DQo+ICsJfQ0KDQpza2xfY29tcHV0ZV9kZGIo
KSBpcyBhbHJlYWR5IGNhbGxpbmcgc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFuZXMoKSBhZnRlcg0K
ZG8gdGhlIGRkYiBhbGxvY2F0aW9uIGZvciBlYWNoIHBpcGUsIHNvIHdlIGNvdWxkIHJlbW92ZSB0
aGlzIGNodW5rLA0Kd2l0aCB0aGF0Og0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gKw0KPiAgCXNrbF9wcmludF93bV9jaGFu
Z2VzKHN0YXRlKTsNCj4gIA0KPiAgCXJldHVybiAwOw0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
