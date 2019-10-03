Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12230CB115
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 23:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D8D6EA78;
	Thu,  3 Oct 2019 21:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE8E6EA78
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 21:29:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 14:29:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="182511854"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga007.jf.intel.com with ESMTP; 03 Oct 2019 14:29:06 -0700
Received: from orsmsx109.amr.corp.intel.com ([169.254.11.122]) by
 ORSMSX104.amr.corp.intel.com ([169.254.4.204]) with mapi id 14.03.0439.000;
 Thu, 3 Oct 2019 14:29:06 -0700
From: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC v3 3/9] drm/i915: Move CCS stride alignment W/A inside
 intel_fb_stride_alignment
Thread-Index: AQHVcfnkFJP9hZVYf0qCJLMJku0YTqdIcywAgAGBXQA=
Date: Thu, 3 Oct 2019 21:29:05 +0000
Message-ID: <d586d0de00a46f2bdeaa2af89f39102c8a101f5b.camel@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
 <20190923102935.5860-4-dhinakaran.pandiyan@intel.com>
 <20191002222944.GM1869@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191002222944.GM1869@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.139]
Content-ID: <9DDCA3EC764B864FA687BA1EEB63A30A@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v3 3/9] drm/i915: Move CCS stride alignment
 W/A inside intel_fb_stride_alignment
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDE5LTEwLTAyIGF0IDE1OjI5IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBP
biBNb24sIFNlcCAyMywgMjAxOSBhdCAwMzoyOToyOUFNIC0wNzAwLCBEaGluYWthcmFuIFBhbmRp
eWFuIHdyb3RlOg0KPiA+IEVhc2llciB0byByZWFkIGlmIGFsbCB0aGUgYWxpZ25tZW50IGNoYW5n
ZXMgYXJlIGluIG9uZSBwbGFjZSBhbmQgY29udGFpbmVkDQo+ID4gd2l0aGluIGEgZnVuY3Rpb24u
DQo+ID4gDQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+DQo+ID4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+
ID4gU2lnbmVkLW9mZi1ieTogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlh
bkBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jIHwgMzEgKysrKysrKysrKy0tLS0tLS0tLS0NCj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBpbmRl
eCBhOTRkMTQ1ZGQwNDguLmM0MzdmMDBjMjA3MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTI1NTEsNyArMjU1MSwy
MiBAQCBpbnRlbF9mYl9zdHJpZGVfYWxpZ25tZW50KGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiLCBpbnQNCj4gPiBjb2xvcl9wbGFuZSkNCj4gPiAgCQllbHNlDQo+ID4gIAkJCXJldHVy
biA2NDsNCj4gPiAgCX0gZWxzZSB7DQo+ID4gLQkJcmV0dXJuIGludGVsX3RpbGVfd2lkdGhfYnl0
ZXMoZmIsIGNvbG9yX3BsYW5lKTsNCj4gPiArCQl1MzIgdGlsZV93aWR0aCA9IGludGVsX3RpbGVf
d2lkdGhfYnl0ZXMoZmIsIGNvbG9yX3BsYW5lKTsNCj4gPiArDQo+ID4gKwkJLyoNCj4gPiArCQkg
KiBEaXNwbGF5IFdBICMwNTMxOiBza2wsYnh0LGtibCxnbGsNCj4gPiArCQkgKg0KPiA+ICsJCSAq
IFJlbmRlciBkZWNvbXByZXNzaW9uIGFuZCBwbGFuZSB3aWR0aCA+IDM4NDANCj4gPiArCQkgKiBj
b21iaW5lZCB3aXRoIGhvcml6b250YWwgcGFubmluZyByZXF1aXJlcyB0aGUNCj4gPiArCQkgKiBw
bGFuZSBzdHJpZGUgdG8gYmUgYSBtdWx0aXBsZSBvZiA0LiBXZSdsbCBqdXN0DQo+ID4gKwkJICog
cmVxdWlyZSB0aGUgZW50aXJlIGZiIHRvIGFjY29tbW9kYXRlIHRoYXQgdG8gYXZvaWQNCj4gPiAr
CQkgKiBwb3RlbnRpYWwgcnVudGltZSBlcnJvcnMgYXQgcGxhbmUgY29uZmlndXJhdGlvbiB0aW1l
Lg0KPiA+ICsJCSAqLw0KPiA+ICsJCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpICYmIGlzX2Njc19t
b2RpZmllcihmYi0+bW9kaWZpZXIpICYmDQo+ID4gKwkJICAgIGNvbG9yX3BsYW5lID09IDAgJiYg
ZmItPndpZHRoID4gMzg0MCkNCj4gPiArCQkJdGlsZV93aWR0aCAqPSA0Ow0KPiANCj4gSSByZWFs
aXplIHlvdSdyZSBvbmx5IG1vdmluZyB0aGlzLCBidXQgSSBmaW5kIHRoaXMgd29ya2Fyb3VuZA0K
PiBkZXNjcmlwdGlvbiBjb25mdXNpbmcgc2luY2UgdGhlIHdvcmRpbmcgaXMgc29tZXdoYXQgYW1i
aWd1b3VzIGFzIHRvDQo+IHdoZXRoZXIgaXQncyBleHBlY3RpbmcgdGhlIHBsYW5lIHN0cmlkZSB0
byBiZSBhIG11bHRpcGxlIG9mIDQgYnl0ZXMgb3IgNA0KPiB0aWxlcy4gIE9uIGNhc3VhbCByZWFk
LCBJIHRoaW5rIG1vc3QgcGVvcGxlIHdvdWxkIGFzc3VtZSB0aGF0IHdlJ3JlDQo+IHRhbGtpbmcg
YWJvdXQgYnl0ZXMgaGVyZS4gIE9ubHkgb25jZSB5b3UgcmVhbGl6ZSB0aGF0IHRoZSBQTEFORV9T
VFJJREUNCj4gcmVnaXN0ZXIgaXRzZWxmIGdldHMgcHJvZ3JhbW1lZCBpbiB1bml0cyBvZiB0aWxl
IHdpZHRoIGRvZXMgdGhlIHdvcmRpbmcNCj4gaGVyZSBiZWNvbWUgY2xlYXIuICBNYXliZSB3ZSBj
b3VsZCBjbGFyaWZ5IHRoZSBjb21tZW50IHdoaWxlIG1vdmluZyBpdD8NCkkgcmVtZW1iZXIgd2Fu
dGluZyB0byByZXdyaXRlIHRoYXQgY29tbWVudCBmb3IgdGhlIGV4YWN0IHJlYXNvbiwgYnV0IGZv
cmdvdCB0byBkbyBzby4gVGhhbmtzIGZvciB0aGUNCnJldmlldywgSSdsbCBmaXggaXQuDQoNCj4g
DQo+IEFsc28gaXQgbWlnaHQgYmUgc2xpZ2h0bHkgbW9yZSBjbGVhciB0byBkbyBhICJyZXR1cm4g
dGlsZV93aWR0aCAqIDQiDQo+IGhlcmUgaW5zdGVhZCBvZiBtb2RpZnlpbmcgdGlsZV93aWR0aCBz
aW5jZSB0aGF0J3MgYSBiaXQgbW9yZSBpbnR1aXRpdmUNCj4gZGVzY3JpcHRpb24gb2Ygd2hhdCB3
ZSdyZSB0cnlpbmcgdG8gZG8uDQo+IA0KPiBFaXRoZXIgd2F5LA0KPiANCj4gUmV2aWV3ZWQtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IA0KPiANCj4gTWF0dA0K
PiANCj4gDQo+ID4gKw0KPiA+ICsJCXJldHVybiB0aWxlX3dpZHRoOw0KPiA+ICAJfQ0KPiA+ICB9
DQo+ID4gIA0KPiA+IEBAIC0xNTcwNSwyMCArMTU3MjAsNiBAQCBzdGF0aWMgaW50IGludGVsX2Zy
YW1lYnVmZmVyX2luaXQoc3RydWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiwNCj4gPiAg
CQl9DQo+ID4gIA0KPiA+ICAJCXN0cmlkZV9hbGlnbm1lbnQgPSBpbnRlbF9mYl9zdHJpZGVfYWxp
Z25tZW50KGZiLCBpKTsNCj4gPiAtDQo+ID4gLQkJLyoNCj4gPiAtCQkgKiBEaXNwbGF5IFdBICMw
NTMxOiBza2wsYnh0LGtibCxnbGsNCj4gPiAtCQkgKg0KPiA+IC0JCSAqIFJlbmRlciBkZWNvbXBy
ZXNzaW9uIGFuZCBwbGFuZSB3aWR0aCA+IDM4NDANCj4gPiAtCQkgKiBjb21iaW5lZCB3aXRoIGhv
cml6b250YWwgcGFubmluZyByZXF1aXJlcyB0aGUNCj4gPiAtCQkgKiBwbGFuZSBzdHJpZGUgdG8g
YmUgYSBtdWx0aXBsZSBvZiA0LiBXZSdsbCBqdXN0DQo+ID4gLQkJICogcmVxdWlyZSB0aGUgZW50
aXJlIGZiIHRvIGFjY29tbW9kYXRlIHRoYXQgdG8gYXZvaWQNCj4gPiAtCQkgKiBwb3RlbnRpYWwg
cnVudGltZSBlcnJvcnMgYXQgcGxhbmUgY29uZmlndXJhdGlvbiB0aW1lLg0KPiA+IC0JCSAqLw0K
PiA+IC0JCWlmIChJU19HRU4oZGV2X3ByaXYsIDkpICYmIGkgPT0gMCAmJiBmYi0+d2lkdGggPiAz
ODQwICYmDQo+ID4gLQkJICAgIGlzX2Njc19tb2RpZmllcihmYi0+bW9kaWZpZXIpKQ0KPiA+IC0J
CQlzdHJpZGVfYWxpZ25tZW50ICo9IDQ7DQo+ID4gLQ0KPiA+ICAJCWlmIChmYi0+cGl0Y2hlc1tp
XSAmIChzdHJpZGVfYWxpZ25tZW50IC0gMSkpIHsNCj4gPiAgCQkJRFJNX0RFQlVHX0tNUygicGxh
bmUgJWQgcGl0Y2ggKCVkKSBtdXN0IGJlIGF0IGxlYXN0ICV1IGJ5dGUgYWxpZ25lZFxuIiwNCj4g
PiAgCQkJCSAgICAgIGksIGZiLT5waXRjaGVzW2ldLCBzdHJpZGVfYWxpZ25tZW50KTsNCj4gPiAt
LSANCj4gPiAyLjE3LjENCj4gPiANCj4gDQo+IA0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
