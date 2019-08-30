Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 357D7A3EB5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 21:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ABF86E3C1;
	Fri, 30 Aug 2019 19:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DE06E3C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 19:59:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 12:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="265417878"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2019 12:59:17 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 30 Aug 2019 12:59:17 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.51]) with mapi id 14.03.0439.000;
 Fri, 30 Aug 2019 12:59:16 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix regression with crtc disable ordering
Thread-Index: AQHVXxwPA9L8uMaYQ0GHTdhNqz8ByacUke2A
Date: Fri, 30 Aug 2019 19:59:16 +0000
Message-ID: <b9d96756d306e8de99837e14adc30020b8ee989c.camel@intel.com>
References: <20190830101644.8740-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20190830101644.8740-1-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <DD988E48DB0A9644AD67B9B1AC299AA1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix regression with crtc disable
 ordering
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

T24gRnJpLCAyMDE5LTA4LTMwIGF0IDEyOjE2ICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToNCj4gV2hlbiB3ZSBtb3ZlZCB0aGUgY29kZSB0byBkaXNhYmxlIGNydGMncyB0byBhIHNlcGFy
YXRlIHBhdGNoLA0KPiB3ZSBmb3Jnb3QgdG8gZW5zdXJlIHRoYXQNCj4gZm9yX2VhY2hfb2xkbmV3
X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZSgpDQo+IHdhcyBtb3ZlZCBhcyB3ZWxsLg0KPiAN
Cg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmto
b3JzdEBsaW51eC5pbnRlbC5jb20+DQo+IEZpeGVzOiA2NmQ5Y2VjOGE2YzkgKCJkcm0vaTkxNS9k
aXNwbGF5OiBNb3ZlIHRoZSBjb21taXRfdGFpbCgpDQo+IGRpc2FibGUgc2VxdWVuY2UgdG8gc2Vw
YXJhdGUgZnVuY3Rpb24iKQ0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+DQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDIxICsrKysrKysrKystLS0tLS0NCj4gLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggYjM4ZDg0MmZmNmVjLi5lNjYx
ZTIwOTkxMTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+IEBAIC0xMzc4NCw3ICsxMzc4NCwxNSBAQCBzdGF0aWMgdm9pZA0KPiBpbnRl
bF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSkNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsNCj4gIAlpbnQgaTsNCj4gIA0KPiAtCWZv
cl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLA0KPiBvbGRfY3J0
Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gKwkvKg0KPiArCSAqIERpc2FibGUgQ1JU
Qy9waXBlcyBpbiByZXZlcnNlIG9yZGVyIGJlY2F1c2Ugc29tZQ0KPiBmZWF0dXJlcyhNU1QgaW4N
Cj4gKwkgKiBUR0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZlIHJlbGF0aW9uc2hpcCBiZXR3
ZWVuIHBpcGVzLA0KPiBzbyBpdA0KPiArCSAqIHNob3VsZCBhbHdheXMgcGljayB0aGUgbG93ZXN0
IHBpcGUgYXMgbWFzdGVyIGFzIGl0IHdpbGwgYmUNCj4gZW5hYmxlZA0KPiArCSAqIGZpcnN0IGFu
ZCBkaXNhYmxlIGluIHRoZSByZXZlcnNlIG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZQ0KPiB0
aGUNCj4gKwkgKiBsYXN0IG9uZSB0byBiZSBkaXNhYmxlZC4NCj4gKwkgKi8NCj4gKwlmb3JfZWFj
aF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKHN0YXRlLCBjcnRjLA0KPiBvbGRf
Y3J0Y19zdGF0ZSwNCj4gKwkJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkNCj4gew0KPiAgCQlp
ZiAoIW5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpKQ0KPiAgCQkJY29udGludWU7DQo+ICAN
Cj4gQEAgLTEzOTYzLDE1ICsxMzk3MSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21t
aXRfdGFpbChzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlpZiAoc3Rh
dGUtPm1vZGVzZXQpDQo+ICAJCXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZf
cHJpdiwNCj4gUE9XRVJfRE9NQUlOX01PREVTRVQpOw0KPiAgDQo+IC0JLyoNCj4gLQkgKiBEaXNh
YmxlIENSVEMvcGlwZXMgaW4gcmV2ZXJzZSBvcmRlciBiZWNhdXNlIHNvbWUNCj4gZmVhdHVyZXMo
TVNUIGluDQo+IC0JICogVEdMKykgcmVxdWlyZXMgbWFzdGVyIGFuZCBzbGF2ZSByZWxhdGlvbnNo
aXAgYmV0d2VlbiBwaXBlcywNCj4gc28gaXQNCj4gLQkgKiBzaG91bGQgYWx3YXlzIHBpY2sgdGhl
IGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlDQo+IGVuYWJsZWQNCj4gLQkgKiBm
aXJzdCBhbmQgZGlzYWJsZSBpbiB0aGUgcmV2ZXJzZSBvcmRlciBzbyB0aGUgbWFzdGVyIHdpbGwg
YmUNCj4gdGhlDQo+IC0JICogbGFzdCBvbmUgdG8gYmUgZGlzYWJsZWQuDQo+IC0JICovDQo+IC0J
Zm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0YywN
Cj4gb2xkX2NydGNfc3RhdGUsDQo+IC0JCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpDQo+IHsN
Cj4gKwlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywNCj4g
b2xkX2NydGNfc3RhdGUsDQo+ICsJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiAgCQlp
ZiAobmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwNCj4gIAkJICAgIG5ld19jcnRjX3N0
YXRlLT51cGRhdGVfcGlwZSkgew0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
