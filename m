Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FA44C1EE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 21:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869A86E45F;
	Wed, 19 Jun 2019 19:59:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3F726E45F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 19:59:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 12:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="181702273"
Received: from cussonne-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.34.121])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 12:59:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Summers\, Stuart" <stuart.summers@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <30f205ed21d4acc5530ce6932bdf9145f4d61d26.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190619013856.11872-1-stuart.summers@intel.com>
 <87a7edlhj7.fsf@intel.com>
 <30f205ed21d4acc5530ce6932bdf9145f4d61d26.camel@intel.com>
Date: Wed, 19 Jun 2019 23:00:37 +0300
Message-ID: <87imt1pcpm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] mm: Use local variable for swap address
 space
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

T24gV2VkLCAxOSBKdW4gMjAxOSwgIlN1bW1lcnMsIFN0dWFydCIgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCAyMDE5LTA2LTE5IGF0IDE4OjMwICswMzAwLCBKYW5p
IE5pa3VsYSB3cm90ZToKPj4gT24gVHVlLCAxOCBKdW4gMjAxOSwgU3R1YXJ0IFN1bW1lcnMgPHN0
dWFydC5zdW1tZXJzQGludGVsLmNvbT4gd3JvdGU6Cj4+ID4gVGhpcyBhZGRyZXNzZXMgdGhlIGZv
bGxvd2luZyBidWlsZCBlcnJvcjoKPj4gPiBtbS9odWdlX21lbW9yeS5jOiBJbiBmdW5jdGlvbiDi
gJhfX3NwbGl0X2h1Z2VfcGFnZeKAmToKPj4gPiBtbS9odWdlX21lbW9yeS5jOjI1MDY6NDE6IHdh
cm5pbmc6IGRlcmVmZXJlbmNpbmcg4oCYdm9pZCAq4oCZIHBvaW50ZXIKPj4gPiAgICAgX194YV9z
dG9yZSgmc3dhcF9hZGRyZXNzX3NwYWNlKGVudHJ5KS0+aV9wYWdlcywKPj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+Cj4+ID4gbW0vaHVnZV9tZW1vcnkuYzoy
NTA2OjQxOiBlcnJvcjogcmVxdWVzdCBmb3IgbWVtYmVyIOKAmGlfcGFnZXPigJkgaW4KPj4gPiBz
b21ldGhpbmcgbm90IGEgc3RydWN0dXJlIG9yIHVuaW9uCj4+IAo+PiBEaWQgeW91IGNoZWNrIHVu
ZGVyIHdoYXQgY2lyY3Vtc3RhbmNlcyBpdCB3b3VsZCBiZSBhIHZvaWQgcG9pbnRlcj8KPgo+IFRo
aXMgZ290IHRoaW5ncyB3b3JraW5nLCBidXQgSSBhZ3JlZSBwcm9iYWJseSBuZWVkcyBhdCBsZWFz
dCBzb21lIGJhc2ljCj4gY2hlY2tzIGhlcmUuIEknbGwgcmV3b3JrIGl0LgoKSGludDogQ09ORklH
X1NXQVAuCgpCUiwKSmFuaS4KCgo+Cj4+IAo+PiBVbmRlciB0aG9zZSBjaXJjdW1zdGFuY2VzLCB3
aGF0IGRvIHlvdSB0aGluayB3aWxsIGhhcHBlbiBydW50aW1lCj4+IGFmdGVyCj4+IHlvdSd2ZSBi
cnVzaGVkIHRoZSBidWlsZCBlcnJvciB1bmRlciB0aGUgY2FycGV0Pwo+PiAKPj4gQW55d2F5LCB0
aGUgcGF0Y2ggaXMgYWdhaW5zdCBhIGNvbW1pdCBpbiB0b3BpYy9jb3JlLWZvci1DSSwgbm90IHRv
IGJlCj4+IG1lcmdlZCBlbHNld2hlcmUuCj4KPiBPayB0aGFua3MgZm9yIHRoZSBmZWVkYmFjayBh
bmQgbWFrZXMgc2Vuc2UuIEknbGwgcmVzdWJtaXQuCj4KPiBUaGFua3MsCj4gU3R1YXJ0Cj4KPj4g
Cj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+IAo+PiA+IAo+PiA+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3Vt
bWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+PiA+IC0tLQo+PiA+ICBtbS9odWdlX21l
bW9yeS5jIHwgNCArKystCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4gPiAKPj4gPiBkaWZmIC0tZ2l0IGEvbW0vaHVnZV9tZW1vcnkuYyBiL21t
L2h1Z2VfbWVtb3J5LmMKPj4gPiBpbmRleCBhZmZiMmMzNjY3ZjkuLmJjZWQ1NDg1MTM3YiAxMDA2
NDQKPj4gPiAtLS0gYS9tbS9odWdlX21lbW9yeS5jCj4+ID4gKysrIGIvbW0vaHVnZV9tZW1vcnku
Ywo+PiA+IEBAIC0yNTAzLDcgKzI1MDMsOSBAQCBzdGF0aWMgdm9pZCBfX3NwbGl0X2h1Z2VfcGFn
ZShzdHJ1Y3QgcGFnZQo+PiA+ICpwYWdlLCBzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0LAo+PiA+ICAJ
CQkJCWhlYWQgKyBpLCAwKTsKPj4gPiAgCQl9IGVsc2UgaWYgKFBhZ2VTd2FwQ2FjaGUocGFnZSkp
IHsKPj4gPiAgCQkJc3dwX2VudHJ5X3QgZW50cnkgPSB7IC52YWwgPSBwYWdlX3ByaXZhdGUoaGVh
ZAo+PiA+ICsgaSkgfTsKPj4gPiAtCQkJX194YV9zdG9yZSgmc3dhcF9hZGRyZXNzX3NwYWNlKGVu
dHJ5KS0+aV9wYWdlcywKPj4gPiArCQkJc3RydWN0IGFkZHJlc3Nfc3BhY2UgKmFkZHJlc3Nfc3Bh
Y2UgPQo+PiA+ICsJCQkJc3dhcF9hZGRyZXNzX3NwYWNlKGVudHJ5KTsKPj4gPiArCQkJX194YV9z
dG9yZSgmYWRkcmVzc19zcGFjZS0+aV9wYWdlcywKPj4gPiAgCQkJCSAgIHN3cF9vZmZzZXQoZW50
cnkpLAo+PiA+ICAJCQkJICAgaGVhZCArIGksIDApOwo+PiA+ICAJCX0KPj4gCj4+IAoKLS0gCkph
bmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
