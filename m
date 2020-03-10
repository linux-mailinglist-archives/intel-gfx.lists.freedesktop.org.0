Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1673D17F570
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 11:54:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EC36E87B;
	Tue, 10 Mar 2020 10:54:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E827E6E87B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 10:54:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:54:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="231281140"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga007.jf.intel.com with ESMTP; 10 Mar 2020 03:54:05 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 03:54:04 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX154.amr.corp.intel.com (10.18.116.70) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 03:54:04 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.153]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 16:24:00 +0530
From: "B S, Karthik" <karthik.b.s@intel.com>
To: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 2/7] drm/i915: Add support for async flips in I915
Thread-Index: AQHV86zisMWfr6hrQU2An+1fTwvDN6hAjoWAgAEd25A=
Date: Tue, 10 Mar 2020 10:54:00 +0000
Message-ID: <7138C0D2D3905F4CB0CD9B8757DFA969274B4B77@BGSMSX104.gar.corp.intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-3-karthik.b.s@intel.com>
 <e5087cc40055ec596cfe195fecc06630fe4cbff6.camel@intel.com>
In-Reply-To: <e5087cc40055ec596cfe195fecc06630fe4cbff6.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915: Add support for async flips in
 I915
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBaYW5vbmksIFBhdWxvIFIgPHBh
dWxvLnIuemFub25pQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTAsIDIwMjAg
NDo0OCBBTQ0KPiBUbzogQiBTLCBLYXJ0aGlrIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbTsgS3Vsa2FybmksIFZhbmRpdGENCj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
PjsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UkZDIDIvN10gZHJtL2k5MTU6IEFkZCBzdXBwb3J0IGZvciBhc3luYyBmbGlwcyBpbiBJOTE1DQo+
IA0KPiBFbSBzZXgsIDIwMjAtMDMtMDYgw6BzIDE3OjA5ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2Ny
ZXZldToNCj4gPiBFbmFibGUgc3VwcG9ydCBmb3IgYXN5bmMgZmxpcHMgaW4gSTkxNS4NCj4gPiBT
ZXQgdGhlIEFzeW5jIEFkZHJlc3MgVXBkYXRlIEVuYWJsZSBiaXQgaW4gcGxhbmUgY3RsIHdoZW4g
YXN5bmMgZmxpcA0KPiA+IGlzIHJlcXVlc3RlZC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEth
cnRoaWsgQiBTIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgMSArDQo+ID4gIDIgZmls
ZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggZGQ0N2ViNjViNTYz
Li40Y2U5ODk3ZjVjNTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC00NzU2LDYgKzQ3NTYsOSBAQCB1MzIgc2tsX3Bs
YW5lX2N0bChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSwNCj4g
PiAgCQkJcGxhbmVfY3RsIHw9DQo+IFBMQU5FX0NUTF9ZVVZfUkFOR0VfQ09SUkVDVElPTl9ESVNB
QkxFOw0KPiA+ICAJfQ0KPiA+DQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlw
KQ0KPiA+ICsJCXBsYW5lX2N0bCB8PSBQTEFORV9DVExfQVNZTkNfRkxJUDsNCj4gPiArDQo+ID4g
IAlwbGFuZV9jdGwgfD0gc2tsX3BsYW5lX2N0bF9mb3JtYXQoZmItPmZvcm1hdC0+Zm9ybWF0KTsN
Cj4gPiAgCXBsYW5lX2N0bCB8PSBza2xfcGxhbmVfY3RsX3RpbGluZyhmYi0+bW9kaWZpZXIpOw0K
PiA+ICAJcGxhbmVfY3RsIHw9IHNrbF9wbGFuZV9jdGxfcm90YXRlKHJvdGF0aW9uICYNCj4gRFJN
X01PREVfUk9UQVRFX01BU0spOw0KPiA+IEBAIC0xNzczOCw2ICsxNzc0MSw3IEBAIHN0YXRpYyB2
b2lkIGludGVsX21vZGVfY29uZmlnX2luaXQoc3RydWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSkNCj4gPg0KPiA+ICAJbW9kZV9jb25maWctPmZ1bmNzID0gJmludGVsX21vZGVfZnVuY3M7
DQo+ID4NCj4gPiArCW1vZGVfY29uZmlnLT5hc3luY19wYWdlX2ZsaXAgPSB0cnVlOw0KPiANCj4g
V2Ugc2hvdWxkIG9ubHkgZW5hYmxlIHRoZSBmZWF0dXJlIHRvIHVzZXIgc3BhY2UgYWZ0ZXIgaXQg
aGFzIGJlZW4gZnVsbHkNCj4gaW1wbGVtZW50ZWQgaW5zaWRlIHRoZSBLZXJuZWwuIFRoaW5rIGFi
b3V0IHRoZSBjYXNlIHdoZXJlIGdpdC1iaXNlY3QNCj4gZGVjaWRlcyB0byBsYW5kIGF0IGV4YWN0
bHkgdGhpcyBjb21taXQgd2hlbiBzb21lb25lIGlzIGRlYnVnZ2luZyBhIGZhaWx1cmUNCj4gdW5y
ZWxhdGVkIHRvIGFzeW5jIHZibGFua3MuDQo+IA0KPiBBbHNvLCB3aGVuIGZlYXR1cmVzIGhhdmUg
dHJpdmlhbCBvbi9vZmYgc3dpdGNoZXMgbGlrZSB0aGUgbGluZSBhYm92ZSwgaXQncw0KPiBiZXR0
ZXIgaWYgdGhlIHBhdGNoIHRoYXQgZW5hYmxlcyB0aGUgZmVhdHVyZSBvbmx5IGNvbnRhaW5zIHRo
ZSBsaW5lIHRoYXQgdG9nZ2xlcw0KPiB0aGUgb24vb2ZmIHN3aXRjaC4gVGhpcyB3YXksIGlmIGEg
cmV2ZXJ0IGlzIG5lZWRlZCwgd2UgY2FuIGp1c3Qgc3dpdGNoIGl0IHRvIG9mZg0KPiB3aXRob3V0
IHJlbW92aW5nIG1vcmUgY29kZS4gQWxzbywgaXQgZW5hYmxlcyB1cyB0byBsYW5kIHRoZSByZXN0
IG9mIHRoZSBjb2RlDQo+IHdoaWxlIGtlZXBpbmcgdGhlIGZlYXR1cmUgb2ZmIGZvciBzdGFiaWxp
emF0aW9uLg0KPiANCj4gQWxzbywgdGhlIGxpbmUgYWJvdmUgaXMgZW5hYmxpbmcgdGhlIGZlYXR1
cmUgZm9yIGV2ZXJ5IHBsYXRmb3JtLCB3aGljaCBpcw0KPiBwcm9iYWJseSBub3QgYSBnb2FsIG9m
IHRoaXMgc2VyaWVzLg0KDQpBZ3JlZWQuIFdpbGwgbWFrZSB0aGUgb24vb2ZmIHBhcnQgYSBzZXBh
cmF0ZSBwYXRjaCBhbmQgYWxzbyBhZGQgYSBnZW4gY2hlY2sgZm9yIGl0Lg0KPiANCj4gDQo+ID4g
IAkvKg0KPiA+ICAJICogTWF4aW11bSBmcmFtZWJ1ZmZlciBkaW1lbnNpb25zLCBjaG9zZW4gdG8g
bWF0Y2gNCj4gPiAgCSAqIHRoZSBtYXhpbXVtIHJlbmRlciBlbmdpbmUgc3VyZmFjZSBzaXplIG9u
IGdlbjQrLg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IDgwY2YwMmE2ZWVj
MS4uNDIwMzdhZWU5Yjc4DQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgN
Cj4gPiBAQCAtNjc5NCw2ICs2Nzk0LDcgQEAgZW51bSB7DQo+ID4gICNkZWZpbmUgICBQTEFORV9D
VExfVElMRURfWAkJCSgxIDw8IDEwKQ0KPiA+ICAjZGVmaW5lICAgUExBTkVfQ1RMX1RJTEVEX1kJ
CQkoNCA8PCAxMCkNCj4gPiAgI2RlZmluZSAgIFBMQU5FX0NUTF9USUxFRF9ZRgkJCSg1IDw8IDEw
KQ0KPiA+ICsjZGVmaW5lICAgUExBTkVfQ1RMX0FTWU5DX0ZMSVAJCQkoMSA8PCA5KQ0KPiA+ICAj
ZGVmaW5lICAgUExBTkVfQ1RMX0ZMSVBfSE9SSVpPTlRBTAkJKDEgPDwgOCkNCj4gPiAgI2RlZmlu
ZSAgIFBMQU5FX0NUTF9NRURJQV9ERUNPTVBSRVNTSU9OX0VOQUJMRQkoMSA8PCA0KSAvKg0KPiBU
R0wrICovDQo+ID4gICNkZWZpbmUgICBQTEFORV9DVExfQUxQSEFfTUFTSwkJCSgweDMgPDwgNCkg
LyogUHJlLUdMSw0KPiAqLw0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
