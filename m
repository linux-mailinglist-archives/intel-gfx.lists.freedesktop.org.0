Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 130153734D8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 08:08:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DDA6E427;
	Wed,  5 May 2021 06:08:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48A686E427
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 May 2021 06:08:20 +0000 (UTC)
IronPort-SDR: cPY2z9sbxAffzRGcXFHckAozGJzmYe5g34BOn3TiKdGv8bEPXXwmlOnBxHIyHbJ8DU6cPYvGtE
 uDH4jZukDWmA==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="259423087"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="259423087"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 23:08:18 -0700
IronPort-SDR: pgfOxEbKNW7yT58HGcDvfKSCJzzYsI8lydRLjGRaacLY0X5s06cR/dplol1Lt2i5DYKhv5EsGJ
 zLvUprI4v4+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; d="scan'208";a="433654363"
Received: from kmsmsx602.gar.corp.intel.com ([172.21.219.142])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2021 23:08:16 -0700
Received: from pgsmsx602.gar.corp.intel.com (10.108.199.137) by
 kmsmsx602.gar.corp.intel.com (172.21.219.142) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 5 May 2021 14:08:15 +0800
Received: from pgsmsx602.gar.corp.intel.com ([10.108.199.137]) by
 pgsmsx602.gar.corp.intel.com ([10.108.199.137]) with mapi id 15.01.2106.013;
 Wed, 5 May 2021 14:08:15 +0800
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3YyLDEvMl0gZHJtL2k5MTU6IERvbid0IGluY2x1ZGUgaW50ZWxfZGUu?=
 =?utf-8?B?aCBmcm9tIGludGVsX2Rpc3BsYXlfdHlwZXMuaCAocmV2Mik=?=
Thread-Index: AQHXQL2+sejmbnLfc0uQzUMMuj5WS6rUaIug
Date: Wed, 5 May 2021 06:08:15 +0000
Message-ID: <1951a425d3f24667baa856ff30e8ae25@intel.com>
References: <20210430143945.6776-1-ville.syrjala@linux.intel.com>
 <162007169526.13684.2336533428443598886@emeril.freedesktop.org>
 <YJECxkQRkAAKPbRl@intel.com>
In-Reply-To: <YJECxkQRkAAKPbRl@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Don=27t_include_in?=
 =?utf-8?q?tel=5Fde=2Eh_from_intel=5Fdisplay=5Ftypes=2Eh_=28rev2=29?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiANClNlbnQ6IFR1ZXNkYXks
IE1heSA0LCAyMDIxIDE6MTYgQU0NClRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQpDYzogVnVkdW0sIExha3NobWluYXJheWFuYSA8bGFrc2htaW5hcmF5YW5hLnZ1ZHVtQGludGVs
LmNvbT4NClN1YmplY3Q6IFJlOiDinJcgRmkuQ0kuQkFUOiBmYWlsdXJlIGZvciBzZXJpZXMgc3Rh
cnRpbmcgd2l0aCBbdjIsMS8yXSBkcm0vaTkxNTogRG9uJ3QgaW5jbHVkZSBpbnRlbF9kZS5oIGZy
b20gaW50ZWxfZGlzcGxheV90eXBlcy5oIChyZXYyKQ0KDQpPbiBNb24sIE1heSAwMywgMjAyMSBh
dCAwNzo1NDo1NVBNIC0wMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxz
ID09DQo+IA0KPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFt2MiwxLzJdIGRybS9pOTE1
OiBEb24ndCBpbmNsdWRlIGludGVsX2RlLmggZnJvbSBpbnRlbF9kaXNwbGF5X3R5cGVzLmggKHJl
djIpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84
OTY5OC8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBDSSBC
dWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xMDAzOSAtPiBQYXRjaHdvcmtfMjAwNTMgDQo+
ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4g
DQo+IFN1bW1hcnkNCj4gLS0tLS0tLQ0KPiANCj4gICAqKkZBSUxVUkUqKg0KPiANCj4gICBTZXJp
b3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRjaHdvcmtfMjAwNTMgYWJzb2x1dGVs
eSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFsbHkuDQo+ICAgDQo+ICAgSWYgeW91IHRo
aW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFu
Z2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMjAwNTMsIHBsZWFzZSBub3RpZnkgeW91
ciBidWcgdGVhbSB0byBhbGxvdyB0aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVy
ZSBtb2RlLCB3aGljaCB3aWxsIHJlZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+IA0KPiAg
IEV4dGVybmFsIFVSTDogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10
aXAvUGF0Y2h3b3JrXzIwMDUzL2luZGV4Lmh0bWwNCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMN
Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gICBIZXJlIGFyZSB0aGUgdW5rbm93biBjaGFu
Z2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18yMDA1MzoNCj4g
DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMg
IyMjIw0KPiANCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAYmx0Og0KPiAgICAgLSBmaS1i
ZHctNTU1N3U6ICAgICAgIFtQQVNTXVsxXSAtPiBbSU5DT01QTEVURV1bMl0NCj4gICAgWzFdOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMDAzOS9maS1i
ZHctNTU1N3UvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBibHQuaHRtbA0KPiAgICBbMl06IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMDA1My9m
aS1iZHctNTU1N3UvDQo+IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAYmx0Lmh0bWwNCg0KPDQ+IFsy
NzYuOTU4NzY5XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAzNTggYXQga2VybmVsL3dvcmtxdWV1ZS5j
OjE0MTggX19xdWV1ZV93b3JrKzB4MmQyLzB4NjIwIC4uLg0KPDQ+IFsyNzYuOTU5MDA5XSAgcXVl
dWVfd29ya19vbisweDY4LzB4ODAgPDQ+IFsyNzYuOTU5MDE2XSAgbm9kZV9mcmVlKzB4NDMvMHg2
MCBbaTkxNV0gPDQ+IFsyNzYuOTU5MTQwXSAgcG9vbF9mcmVlX29sZGVyX3RoYW4rMHgxMzIvMHgx
NzAgW2k5MTVdIDw0PiBbMjc2Ljk1OTI3MF0gIHBvb2xfZnJlZV93b3JrKzB4MTIvMHg0MCBbaTkx
NV0gPDQ+IFsyNzYuOTU5Mzk1XSAgcHJvY2Vzc19vbmVfd29yaysweDI3MC8weDVjMCA8ND4gWzI3
Ni45NTk0MDddICB3b3JrZXJfdGhyZWFkKzB4MzcvMHgzODANCg0KV2hpY2ggaXMNCiAgICAgICAg
LyogaWYgZHJhaW5pbmcsIG9ubHkgd29ya3MgZnJvbSB0aGUgc2FtZSB3b3JrcXVldWUgYXJlIGFs
bG93ZWQgKi8NCglpZiAodW5saWtlbHkod3EtPmZsYWdzICYgX19XUV9EUkFJTklORykgJiYNCgkg
ICAgV0FSTl9PTl9PTkNFKCFpc19jaGFpbmVkX3dvcmsod3EpKSkNCgkgICAgICAgIHJldHVybjsN
Cg0KQmFzZWQgb24gYSBjdXJzb3J5IGdsYW5jZSB0aGUgcXVldWVfd29yayBpcyBwcm9iYWJseSBj
b21pbmcgZnJvbQ0KaTkxNV9nZW1fZnJlZV9vYmplY3QoKSAtPiBxdWV1ZV93b3JrKGk5MTUtPndx
LCAmaTkxNS0+bW0uZnJlZV93b3JrKTsNCg0KU28gbG9va3MgbGlrZSBpOTE1X2dlbV9kcmFpbl93
b3JrcXVldWUoKSBpcyBicm9rZW4uDQoNCkVudGlyZWx5IHVucmVsYXRlZCB0byB0aGlzIHBhdGNo
IHNlcmllcy4NCg0KLS0NClZpbGxlIFN5cmrDpGzDpA0KSW50ZWwNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
