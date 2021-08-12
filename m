Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6D93EA967
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 19:24:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D636E43B;
	Thu, 12 Aug 2021 17:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F626E43B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 17:24:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="279147005"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="279147005"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 10:24:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="676849246"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga005.fm.intel.com with ESMTP; 12 Aug 2021 10:24:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 10:24:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 10:24:02 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.010;
 Thu, 12 Aug 2021 10:24:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "daniel@ffwll.ch" <daniel@ffwll.ch>, "Mun, Gwan-gyeong"
 <gwan-gyeong.mun@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH 1/4] drm/i915/display/tgl+: Dispatch atomic commits
 instead of front buffer modifications
Thread-Index: AQHXhZ/SIma1LQ2RdEaEfIDkOFZQgqtwqSIA
Date: Thu, 12 Aug 2021 17:24:02 +0000
Message-ID: <7bb64b5affe28a87f716a03f52c709e5211acb67.camel@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
In-Reply-To: <20210731001019.150373-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <73646C0B870D64459D2145C64E100531@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display/tgl+: Dispatch atomic
 commits instead of front buffer modifications
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

T24gRnJpLCAyMDIxLTA3LTMwIGF0IDE3OjEwIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBQU1IyIHNlbGVjdGl2ZSBmZXRjaCByZXF1aXJlcyBwbGFuZSBhbmQgdHJhbnNj
b2RlciByZWdpc3RlcnMgdG8NCj4gYmUgcHJvZ3JhbWVkIGR1cmluZyB0aGUgdmJsYW5rIHRvIHBy
b3Blcmx5IHVwZGF0ZSB0aGUgZGlzcGxheSBhbmQNCj4gdGhlcmUgaXMgbm8gd2F5IGFyb3VuZCBp
dC4NCj4gDQo+IFdlIGNvdWxkIGRpc2FibGUgUFNSMiBhdCBldmVyeSBub3RpZmljYXRpb24gb2Yg
ZGlydHkgZnJvbnQgYnVmZmVyIGZyb20NCj4gdXNlciBzcGFjZSBidXQgdGhhdCB3b3VsZCBodXJ0
IHRoZSBwb3dlciBzYXZpbmdzIGFuZCBpdCB3b3VsZCBzdGlsbA0KPiBjYXVzZSBzb21lIHJhY2Ug
Y29uZGl0aW9ucyBiZXR3ZWVuIFBTUjIgZXhpdCBzZXF1ZW5jZSBhbmQgYXRvbWljDQo+IGNvbW1p
dHMgdGhhdCBjYXVzZXMgdW5kZXJydW5zIGFuZCBnbGl0Y2hlcy4NCj4gDQo+IFNvIGZyb20gZGlz
cGxheSAxMiBhbmQgbmV3ZXIgd2Ugd2lsbCBzdGFydCB0byBkbyBhdG9taWMgY29tbWl0cw0KPiBl
dmVyeSB0aW1lIHVzZXIgc3BhY2Ugbm90aWZ5IHRoYXQgZnJvbnQgYnVmZmVyIGlzIGRpcnR5IGFu
ZCBpZ25vcmUNCj4gYWxsIGZyb250YnVmZmVyIGZsdXNoZXMgYW5kIGludmFsaWRhdGVzIG9uIHRo
ZSBQU1Igc2lkZS4NCg0KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4N
CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KDQo+IA0KPiBDYzogRGFu
aWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPg0KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2Fu
LWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyAgfCAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKysrKy0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgICAgIHwgNiArKysrKysNCj4gIDMgZmlsZXMgY2hh
bmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiBpbmRleCBjNzYxOGZlZjAxNDM5
Li5kNDQwMjJjYjQ2YTY1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3Vyc29yLmMNCj4gQEAgLTYxNyw2ICs2MTcsNyBAQCBpbnRlbF9sZWdhY3lfY3Vyc29y
X3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+ICAJCQkgICB1MzIgc3JjX3csIHUz
MiBzcmNfaCwNCj4gIAkJCSAgIHN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0eCAqY3R4KQ0K
PiAgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShfY3J0Yy0+
ZGV2KTsNCj4gIAlzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUoX3Bs
YW5lKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoX2NydGMp
Ow0KPiAgCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqb2xkX3BsYW5lX3N0YXRlID0NCj4gQEAg
LTYzOCw3ICs2MzksNyBAQCBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3Bs
YW5lICpfcGxhbmUsDQo+ICAJICovDQo+ICAJaWYgKCFjcnRjX3N0YXRlLT5ody5hY3RpdmUgfHwg
aW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KGNydGNfc3RhdGUpIHx8DQo+ICAJICAgIGNydGNfc3Rh
dGUtPnVwZGF0ZV9waXBlIHx8IGNydGNfc3RhdGUtPmJpZ2pvaW5lciB8fA0KPiAtCSAgICBjcnRj
X3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2gpDQo+ICsJICAgIERJU1BMQVlfVkVSKGk5MTUp
ID49IDEyKQ0KPiAgCQlnb3RvIHNsb3c7DQo+ICANCj4gIAkvKg0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA1ZmYwYTAxMWIyOGViLi40
YTkzNmUxZTdmYTgyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTE3MjAsMTAgKzExNzIwLDE1IEBAIHN0YXRpYyBpbnQgaW50
ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9kaXJ0eShzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwNCj4g
IAkJCQkJdW5zaWduZWQgbnVtX2NsaXBzKQ0KPiAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmogPSBpbnRlbF9mYl9vYmooZmIpOw0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsNCj4gIA0KPiAgCWk5MTVfZ2VtX29i
amVjdF9mbHVzaF9pZl9kaXNwbGF5KG9iaik7DQo+IC0JaW50ZWxfZnJvbnRidWZmZXJfZmx1c2go
dG9faW50ZWxfZnJvbnRidWZmZXIoZmIpLCBPUklHSU5fRElSVFlGQik7DQo+ICANCj4gKwlpZiAo
RElTUExBWV9WRVIoaTkxNSkgPj0gMTIpDQo+ICsJCXJldHVybiBkcm1fYXRvbWljX2hlbHBlcl9k
aXJ0eWZiKGZiLCBmaWxlLCBmbGFncywgY29sb3IsIGNsaXBzLA0KPiArCQkJCQkJIG51bV9jbGlw
cyk7DQo+ICsNCj4gKwlpbnRlbF9mcm9udGJ1ZmZlcl9mbHVzaCh0b19pbnRlbF9mcm9udGJ1ZmZl
cihmYiksIE9SSUdJTl9ESVJUWUZCKTsNCj4gIAlyZXR1cm4gMDsNCj4gIH0NCj4gIA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMWIwZGFmNjQ5ZTgy
My4uY2FmOTJmNDE0YTZlNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IEBAIC0yMDM5LDYgKzIwMzksOSBAQCB2b2lkIGludGVsX3Bzcl9pbnZhbGlk
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIHsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gIA0KPiArCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gMTIpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWlmIChvcmlnaW4gPT0gT1JJR0lOX0ZM
SVApDQo+ICAJCXJldHVybjsNCj4gIA0KPiBAQCAtMjEyMyw2ICsyMTI2LDkgQEAgdm9pZCBpbnRl
bF9wc3JfZmx1c2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCQkJY29u
dGludWU7DQo+ICAJCX0NCj4gIA0KPiArCQlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEy
KQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gIAkJbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5s
b2NrKTsNCj4gIAkJaWYgKCFpbnRlbF9kcC0+cHNyLmVuYWJsZWQpIHsNCj4gIAkJCW11dGV4X3Vu
bG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCg0K
