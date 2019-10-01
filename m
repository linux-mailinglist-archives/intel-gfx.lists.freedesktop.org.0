Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5234BC3E85
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA1646E85B;
	Tue,  1 Oct 2019 17:25:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6FD6E85B
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:25:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 10:25:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="343050364"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga004.jf.intel.com with ESMTP; 01 Oct 2019 10:25:42 -0700
Received: from fmsmsx111.amr.corp.intel.com (10.18.116.5) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 1 Oct 2019 10:25:40 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx111.amr.corp.intel.com ([169.254.12.246]) with mapi id 14.03.0439.000;
 Tue, 1 Oct 2019 10:25:40 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915: Limit MST modes based on plane size too
Thread-Index: AQHVeG9reDMeqPE3bEK5sk8bRkYiPqdGfvaA
Date: Tue, 1 Oct 2019 17:25:40 +0000
Message-ID: <b30dbe4958ffe33d7edf343f50808cf9d890dd29.camel@intel.com>
References: <20191001154629.11063-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20191001154629.11063-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <7A94AF87BD858B428458BB05C51B407E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Limit MST modes based on
 plane size too
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

T24gVHVlLCAyMDE5LTEwLTAxIGF0IDE4OjQ2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2hlbiBhZGRpbmcgdGhlIG1heCBwbGFuZSBzaXplIGNoZWNrcyB0byB0aGUgLm1vZGVf
dmFsaWQoKSBob29rcw0KPiBJIG5hdHVyYWxseSBmb3Jnb3QgYWJvdXQgTVNULiBUYWtlIGNhcmUg
b2YgdGhhdCBvbmUgYXMgd2VsbC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogTWFuYXNpIE5hdmFyZSA8bWFu
YXNpLmQubmF2YXJlQGludGVsLmNvbT4NCj4gQ2M6IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVu
Pg0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+
IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
Pg0KPiBGaXhlczogMmQyMDQxMWUyNWEzICgiZHJtL2k5MTU6IERvbid0IGFkdmVydGlzZSBtb2Rl
cyB0aGF0IGV4Y2VlZCB0aGUNCj4gbWF4IHBsYW5lIHNpemUiKQ0KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAzICsrLQ0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+IGluZGV4IGRm
NGYzNWMxMGE2OS4uMjIwM2JlMjhlYTAxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gQEAgLTQyNCw2ICs0MjQsNyBAQCBzdGF0aWMgZW51
bSBkcm1fbW9kZV9zdGF0dXMNCj4gIGludGVsX2RwX21zdF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uZWN0b3IsDQo+ICAJCQlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9k
ZSkNCj4gIHsNCj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1
KGNvbm5lY3Rvci0+ZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25u
ZWN0b3IgPQ0KPiB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwID0gaW50ZWxfY29ubmVjdG9yLT5tc3RfcG9ydDsNCj4gIAlpbnQgbWF4
X2RvdGNsayA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpLT5tYXhfZG90Y2xrX2ZyZXE7DQo+IEBA
IC00NTEsNyArNDUyLDcgQEAgaW50ZWxfZHBfbXN0X21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25u
ZWN0b3INCj4gKmNvbm5lY3RvciwNCj4gIAlpZiAobW9kZV9yYXRlID4gbWF4X3JhdGUgfHwgbW9k
ZS0+Y2xvY2sgPiBtYXhfZG90Y2xrKQ0KPiAgCQlyZXR1cm4gTU9ERV9DTE9DS19ISUdIOw0KPiAg
DQo+IC0JcmV0dXJuIE1PREVfT0s7DQo+ICsJcmV0dXJuIGludGVsX21vZGVfdmFsaWRfbWF4X3Bs
YW5lX3NpemUoZGV2X3ByaXYsIG1vZGUpOw0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgc3RydWN0IGRy
bV9lbmNvZGVyICppbnRlbF9tc3RfYXRvbWljX2Jlc3RfZW5jb2RlcihzdHJ1Y3QNCj4gZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yLA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
