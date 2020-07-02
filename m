Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E1F212FF8
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 01:24:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 246436E18F;
	Thu,  2 Jul 2020 23:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6801F6E18F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 23:24:06 +0000 (UTC)
IronPort-SDR: G7QanSCxQPSXaKrk6bdjI87w3hDgtJnHiA9XMzbcn+PHpFg+65N4g0udqaxGkQYGy1saH8S1rg
 0da6OxT9qMGw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="212072264"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="212072264"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 16:24:05 -0700
IronPort-SDR: iDLhNXVXXumOV7HGC/7hBKpN7fuoPcwCySoV74DzO1MWPCdsY0wpeinvdctKNfvvhi7qic9NIH
 +tr+CiXeJOLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="265827999"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 02 Jul 2020 16:24:05 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 2 Jul 2020 16:24:04 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.85]) with mapi id 14.03.0439.000;
 Thu, 2 Jul 2020 16:24:04 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/fbc: Use the correct plane stride
Thread-Index: AQHWUIbIsH+kuGJf4k+lTnCC+c1twaj1ZIIA
Date: Thu, 2 Jul 2020 23:24:04 +0000
Message-ID: <a3d6b78b881a1fd554c12f247ecd8cbfa8106faf.camel@intel.com>
References: <20200702153723.24327-1-ville.syrjala@linux.intel.com>
 <20200702153723.24327-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20200702153723.24327-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.51]
Content-ID: <D8A5641FB7F0B74EA33B62676242198E@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/fbc: Use the correct plane
 stride
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
PiANCj4gQ29uc3VsdCB0aGUgYWN0dWFsIHBsYW5lIHN0cmlkZSBpbnN0ZWFkIG9mIHRoZSBmYiBz
dHJpZGUuIFRoZSB0d28NCj4gd2lsbCBkaXNhZ3JlZSB3aGVuIHdlIHJlbWFwIHRoZSBndHQuIFRo
ZSBwbGFuZSBzdHJpZGUgaXMgd2hhdCB0aGUNCj4gaHcgd2lsbCBiZSBmZWQgc28gdGhhdCdzIHdo
YXQgd2Ugc2hvdWxkIGxvb2sgYXQgZm9yIHRoZSBGQkMNCj4gcmV0cmljdGlvbnMvY2ZiIGFsbG9j
YXRpb24uDQo+IA0KPiBTaW5jZSB3ZSBubyBsb25nZXIgcmVxdWlyZSBhIGZlbmNlIHdlIGFyZSBn
b2luZyB0byBhdHRlbXB0IHVzaW5nDQo+IEZCQyB3aXRoIHJlbWFwcGluZywgYW5kIHNvIHdlIHNo
b3VsZCBsb29rIGF0IGNvcnJlY3Qgc3RyaWRlLg0KPiANCj4gV2l0aCA5MC8yNzAgZGVncmVlIHJv
dGF0aW9uIHRoZSBwbGFuZSBzdHJpZGUgaXMgc3RvcmVkIGluIHVuaXRzDQo+IG9mIHBpeGVscywg
c28gd2UgbmVlZCB0byBjb252ZXIgaXQgdG8gYnl0ZXMgZm9yIHRoZSBwdXJwb3Nlcw0KPiBvZiBj
YWxjdWxhdGluZyB0aGUgY2ZiIHN0cmlkZS4gTm90IGVudGlyZWx5IHN1cmUgaWYgdGhpcyBtYXRj
aGVzDQo+IHRoZSBodyBiZWhhdmlvdXIgdGhvdWdoLiBOZWVkIHRvIHJldmVyc2UgZW5naW5lZXIg
dGhhdCBhdCBzb21lDQo+IHBvaW50Li4uDQo+IA0KPiBXZSBhbHNvIG5lZWQgdG8gcmVvcmRlciB0
aGUgcGl4ZWwgZm9ybWF0IGNoZWNrIHZzLiBzdHJpZGUgY2hlY2sNCj4gdG8gYXZvaWQgdHJpZ2dl
cmluZyBhIHNwdXJpb3VzIFdBUk4oc3RyaWRlICYgNjMpIHdpdGggY3BwPT0xIGFuZA0KPiBwbGFu
ZSBzdHJpZGU9PTMyLg0KPiANCj4gdjI6IFRyeSB0byBkZWFsIHdpdGggcm90YXRlZCBzdHJpZGUg
YW5kIHJlbGF0ZWQgV0FSTg0KPiANCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gRml4ZXM6IDY5MWY3YmE1OGQ1MiAoImRybS9pOTE1
L2Rpc3BsYXkvZmJjOiBNYWtlIGZlbmNlcyBhIG5pY2UtdG8taGF2ZSBmb3IgR0VOOSsiKQ0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMg
fCAxNiArKysrKysrKysrLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYw0KPiBpbmRleCA2OWEwNjgyZGRiNmEuLmQzMGMyYTM4OTI5NCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IEBAIC02OTUsOSArNjk1LDEz
IEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0IGludGVs
X2NydGMgKmNydGMsDQo+ICAJY2FjaGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUgPSBwbGFuZV9z
dGF0ZS0+aHcucGl4ZWxfYmxlbmRfbW9kZTsNCj4gIA0KPiAgCWNhY2hlLT5mYi5mb3JtYXQgPSBm
Yi0+Zm9ybWF0Ow0KPiAtCWNhY2hlLT5mYi5zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXTsNCj4gIAlj
YWNoZS0+ZmIubW9kaWZpZXIgPSBmYi0+bW9kaWZpZXI7DQo+ICANCj4gKwkvKiBGSVhNRSBpcyB0
aGlzIGNvcnJlY3Q/ICovDQo+ICsJY2FjaGUtPmZiLnN0cmlkZSA9IHBsYW5lX3N0YXRlLT5jb2xv
cl9wbGFuZVswXS5zdHJpZGU7DQo+ICsJaWYgKGRybV9yb3RhdGlvbl85MF9vcl8yNzAocGxhbmVf
c3RhdGUtPmh3LnJvdGF0aW9uKSkNCg0KSWYgaXQgd2FzIHdyb25nIG91ciBDSSB3b3VsZCBjYXVn
aHQgdGhpcyBpbiBCRFcgb3IgU05CIGZvciBleGFtcGxlLg0KDQo+ICsJCWNhY2hlLT5mYi5zdHJp
ZGUgKj0gZmItPmZvcm1hdC0+Y3BwWzBdOw0KPiArDQo+ICAJLyogRkJDMSBjb21wcmVzc2lvbiBp
bnRlcnZhbDogYXJiaXRyYXJ5IGNob2ljZSBvZiAxIHNlY29uZCAqLw0KPiAgCWNhY2hlLT5pbnRl
cnZhbCA9IGRybV9tb2RlX3ZyZWZyZXNoKCZjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlKTsN
Cj4gIA0KPiBAQCAtNzk3LDYgKzgwMSwxMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfY2FuX2Fj
dGl2YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJ
fQ0KPiAgDQo+ICsJaWYgKCFwaXhlbF9mb3JtYXRfaXNfdmFsaWQoZGV2X3ByaXYsIGNhY2hlLT5m
Yi5mb3JtYXQtPmZvcm1hdCkpIHsNCj4gKwkJZmJjLT5ub19mYmNfcmVhc29uID0gInBpeGVsIGZv
cm1hdCBpcyBpbnZhbGlkIjsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiAgCWlm
ICghcm90YXRpb25faXNfdmFsaWQoZGV2X3ByaXYsIGNhY2hlLT5mYi5mb3JtYXQtPmZvcm1hdCwN
Cj4gIAkJCSAgICAgICBjYWNoZS0+cGxhbmUucm90YXRpb24pKSB7DQo+ICAJCWZiYy0+bm9fZmJj
X3JlYXNvbiA9ICJyb3RhdGlvbiB1bnN1cHBvcnRlZCI7DQo+IEBAIC04MTMsMTEgKzgyMiw2IEBA
IHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpDQo+ICAJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+ICANCj4gLQlpZiAoIXBpeGVsX2Zvcm1h
dF9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+Zm9ybWF0KSkgew0KPiAtCQlm
YmMtPm5vX2ZiY19yZWFzb24gPSAicGl4ZWwgZm9ybWF0IGlzIGludmFsaWQiOw0KPiAtCQlyZXR1
cm4gZmFsc2U7DQo+IC0JfQ0KPiAtDQo+ICAJaWYgKGNhY2hlLT5wbGFuZS5waXhlbF9ibGVuZF9t
b2RlICE9IERSTV9NT0RFX0JMRU5EX1BJWEVMX05PTkUgJiYNCj4gIAkgICAgY2FjaGUtPmZiLmZv
cm1hdC0+aGFzX2FscGhhKSB7DQo+ICAJCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJwZXItcGl4ZWwg
YWxwaGEgYmxlbmRpbmcgaXMgaW5jb21wYXRpYmxlIHdpdGggRkJDIjsNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
