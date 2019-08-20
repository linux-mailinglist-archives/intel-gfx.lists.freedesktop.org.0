Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54757966EC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 18:57:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A406E430;
	Tue, 20 Aug 2019 16:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0B36E430
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 16:57:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 09:57:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="172505189"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga008.jf.intel.com with ESMTP; 20 Aug 2019 09:57:54 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 20 Aug 2019 09:57:54 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 FMSMSX102.amr.corp.intel.com ([169.254.10.170]) with mapi id 14.03.0439.000;
 Tue, 20 Aug 2019 09:57:54 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Do not create a new max_bpc prop
 for MST connectors
Thread-Index: AQHVV3K3j0cND3DePkq6golnvpKG3qcEt0OA
Date: Tue, 20 Aug 2019 16:57:53 +0000
Message-ID: <2660918703ee30cb1517bcb8dcc7078b55f253d1.camel@intel.com>
References: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190820161657.9658-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <258EAABC23785F4DBAE4DFC724264095@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not create a new max_bpc prop
 for MST connectors
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
Cc: "sunpeng.li@amd.com" <sunpeng.li@amd.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTA4LTIwIGF0IDE5OjE2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2UncmUgbm90IGFsbG93ZWQgdG8gY3JlYXRlIG5ldyBwcm9wZXJ0aWVzIGFmdGVyIGRl
dmljZSByZWdpc3RyYXRpb24NCj4gc28gZm9yIE1TVCBjb25uZWN0b3JzIHdlIG5lZWQgdG8gZWl0
aGVyIGNyZWF0ZSB0aGUgbWF4X2JwYyBwcm9wZXJ0eQ0KPiBlYXJsaWVyLCBvciB3ZSByZXVzZSBv
bmUgd2UgYWxyZWFkeSBoYXZlLiBMZXQncyBkbyB0aGUgbGF0dGVyDQo+IGFwcG9yYWNoDQo+IHNp
bmNlIHRoZSBjb3JyZXNwb25kaW5nIFNTVCBjb25uZWN0b3IgYWxyZWFkeSBoYXMgdGhlIHByb3Ag
YW5kIGl0cw0KPiBtaW4vbWF4IGFyZSBjb3JyZWN0IGFsc28gZm9yIHRoZSBNU1QgY29ubmVjdG9y
Lg0KPiANCj4gVGhlIHByb2JsZW0gd2FzIGhpZ2hsaWdodGVkIGJ5IGNvbW1pdCA0ZjUzNjhiNTU0
MWEgKCJkcm0va21zOg0KPiBDYXRjaCBtb2RlX29iamVjdCBsaWZldGltZSBlcnJvcnMiKSB3aGlj
aCByZXN1bHRzIGluIHRoZSBmb2xsb3dpbmcNCj4gc3BldzoNCj4gWyAxMzMwLjg3ODk0MV0gV0FS
TklORzogQ1BVOiAyIFBJRDogMTU1NCBhdA0KPiBkcml2ZXJzL2dwdS9kcm0vZHJtX21vZGVfb2Jq
ZWN0LmM6NDUgX19kcm1fbW9kZV9vYmplY3RfYWRkKzB4YTAvMHhiMA0KPiBbZHJtXQ0KPiAuLi4N
Cj4gWyAxMzMwLjg3OTAwOF0gQ2FsbCBUcmFjZToNCj4gWyAxMzMwLjg3OTAyM10gIGRybV9wcm9w
ZXJ0eV9jcmVhdGUrMHhiYS8weDE4MCBbZHJtXQ0KPiBbIDEzMzAuODc5MDM2XSAgZHJtX3Byb3Bl
cnR5X2NyZWF0ZV9yYW5nZSsweDE1LzB4MzAgW2RybV0NCj4gWyAxMzMwLjg3OTA0OF0gIGRybV9j
b25uZWN0b3JfYXR0YWNoX21heF9icGNfcHJvcGVydHkrMHg2Mi8weDgwIFtkcm1dDQo+IFsgMTMz
MC44NzkwODZdICBpbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3RvcisweDExZi8weDE0MCBbaTkxNV0N
Cj4gWyAxMzMwLjg3OTA5NF0gIGRybV9kcF9hZGRfcG9ydC5pc3JhLjIwKzB4MjBiLzB4NDQwIFtk
cm1fa21zX2hlbHBlcl0NCj4gLi4uDQo+IA0KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZw0K
PiBDYzogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4NCj4gQ2M6IHN1bnBlbmcubGlAYW1k
LmNvbQ0KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4NCj4gQ2M6
IFNlYW4gUGF1bCA8c2VhbkBwb29ybHkucnVuPg0KPiBGaXhlczogNWNhMGVmOGE1NmI4ICgiZHJt
L2k5MTU6IEFkZCBtYXhfYnBjIHByb3BlcnR5IGZvciBEUCBNU1QiKQ0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMgfCAxMCArKysr
KysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9tc3QuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMN
Cj4gaW5kZXggODNmYWEyNDZlMzYxLi45NzQ4NTgxYzFkNjIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiBAQCAtNTM2LDcgKzUzNiwxNSBA
QCBzdGF0aWMgc3RydWN0IGRybV9jb25uZWN0b3INCj4gKmludGVsX2RwX2FkZF9tc3RfY29ubmVj
dG9yKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sbw0KPiAgDQo+ICAJaW50ZWxfYXR0YWNoX2ZvcmNl
X2F1ZGlvX3Byb3BlcnR5KGNvbm5lY3Rvcik7DQo+ICAJaW50ZWxfYXR0YWNoX2Jyb2FkY2FzdF9y
Z2JfcHJvcGVydHkoY29ubmVjdG9yKTsNCj4gLQlkcm1fY29ubmVjdG9yX2F0dGFjaF9tYXhfYnBj
X3Byb3BlcnR5KGNvbm5lY3RvciwgNiwgMTIpOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBSZXVzZSB0
aGUgcHJvcCBmcm9tIHRoZSBTU1QgY29ubmVjdG9yIGJlY2F1c2Ugd2UncmUNCj4gKwkgKiBub3Qg
YWxsb3dlZCB0byBjcmVhdGUgbmV3IHByb3BzIGFmdGVyIGRldmljZSByZWdpc3RyYXRpb24uDQo+
ICsJICovDQo+ICsJY29ubmVjdG9yLT5tYXhfYnBjX3Byb3BlcnR5ID0NCj4gKwkJaW50ZWxfZHAt
PmF0dGFjaGVkX2Nvbm5lY3Rvci0+YmFzZS5tYXhfYnBjX3Byb3BlcnR5Ow0KPiArCWlmIChjb25u
ZWN0b3ItPm1heF9icGNfcHJvcGVydHkpDQo+ICsJCWRybV9jb25uZWN0b3JfYXR0YWNoX21heF9i
cGNfcHJvcGVydHkoY29ubmVjdG9yLCA2LA0KPiAxMik7DQoNCkkgd2FzIGxvb2tpbmcgdG8gdGhl
IHNhbWUgaXNzdWUgYW5kIHRoaW5raW5nIGlmIGRvIHNvbWV0aGluZyBzaW1pbGFyIHRvDQppbnRl
bF9hdHRhY2hfZm9yY2VfYXVkaW9fcHJvcGVydHkoKS9pbnRlbF9hdHRhY2hfYnJvYWRjYXN0X3Jn
Yl9wcm9wZXJ0KA0KKSB3b3VsZCBiZSB0aGUgcmlnaHQgYXBwcm9hY2ggYnV0IHRoaXMgbG9va3Mg
ZXZlbiBiZXR0ZXIuDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4NCg0KPiAgDQo+ICAJcmV0dXJuIGNvbm5lY3RvcjsNCj4gIA0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
