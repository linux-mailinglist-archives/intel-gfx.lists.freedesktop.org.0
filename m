Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A1C8C499
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 01:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8566E106;
	Tue, 13 Aug 2019 23:03:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51C206E106
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 23:03:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 16:03:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="194297610"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 13 Aug 2019 16:03:50 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 13 Aug 2019 16:03:49 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.240]) with mapi id 14.03.0439.000;
 Tue, 13 Aug 2019 16:03:49 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "lucas.de.marchi@gmail.com" <lucas.de.marchi@gmail.com>
Thread-Topic: [Intel-gfx] [PATCH v7 2/4] drm/i915: Add _TRANS2()
Thread-Index: AQHVRyjZ04MNCX+1oUmuan6oKY33wKbvRR4AgAr4owA=
Date: Tue, 13 Aug 2019 23:03:48 +0000
Message-ID: <8551bd7b0eb129523b3667e75c82795a92bd5862.camel@intel.com>
References: <20190730224753.14907-1-jose.souza@intel.com>
 <20190730224753.14907-2-jose.souza@intel.com>
 <20190806233118.GB8519@ldmartin-desk1>
In-Reply-To: <20190806233118.GB8519@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <2FFB8530BDBF934E895E9EE8E52FEBE6@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/i915: Add _TRANS2()
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
Cc: "dhinakaran.pandiya@intel.com" <dhinakaran.pandiya@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGF0Y2hlcyAxIGFuZCAyIHB1c2hlZCB0byBkaW5xIGFzIGJvdGggYXJlIHJldmlld2VkIGFuZCBh
cmUganVzdCBtb3ZpbmcNCmNvZGUgd2l0aCBubyBiZWhhdmlvciBjaGFuZ2VzLg0KDQpPbiBUdWUs
IDIwMTktMDgtMDYgYXQgMTY6MzEgLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gT24g
VHVlLCBKdWwgMzAsIDIwMTkgYXQgMDM6NDc6NTFQTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90ZToN
Cj4gPiBBIG5ldyBtYWNybyB0aGF0IGlzIGdvaW5nIHRvIGJlIGFkZGVkIGluIGEgZnVydGhlciBw
YXRjaCB3aWxsIG5lZWQNCj4gPiB0bw0KPiA+IGFkanVzdCB0aGUgb2Zmc2V0IHJldHVybmVkIGJ5
IF9NTUlPX1RSQU5TMigpLCBzbyBoZXJlIGFkZGluZw0KPiA+IF9UUkFOUzIoKSBhbmQgbW92aW5n
IG1vc3Qgb2YgdGhlIGltcGxlbWVudGF0aW9uIG9mIF9NTUlPX1RSQU5TMigpDQo+ID4gdG8NCj4g
PiBpdCBhbmQgd2hpbGUgYXQgaXQgdGFraW5nIHRoZSBvcHBvcnR1bml0eSB0byByZW5hbWUgcGlw
ZSB0byB0cmFucy4NCj4gPiANCj4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPg0KPiA+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRpeWFA
aW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWth
cmFuLnBhbmRpeWFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggfCA3ICsrKystLS0NCj4gPiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+ID4gaW5kZXggMjEzMDZkZDM3OTBhLi5mNGUxYWNjOTM2YjMgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gPiBAQCAtMjUxLDkgKzI1MSwxMCBAQCBzdGF0
aWMgaW5saW5lIGJvb2wNCj4gPiBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVnKQ0K
PiA+ICNkZWZpbmUgX01NSU9fUElQRTIocGlwZSwgcmVnKQkJX01NSU8oSU5URUxfSU5GTyhkZXZf
cHINCj4gPiBpdiktPnBpcGVfb2Zmc2V0c1twaXBlXSAtIFwNCj4gPiAJCQkJCSAgICAgIElOVEVM
X0lORk8oZGV2X3ByaXYpLQ0KPiA+ID5waXBlX29mZnNldHNbUElQRV9BXSArIChyZWcpICsgXA0K
PiA+IAkJCQkJICAgICAgRElTUExBWV9NTUlPX0JBU0UoZGV2X3ByaQ0KPiA+IHYpKQ0KPiA+IC0j
ZGVmaW5lIF9NTUlPX1RSQU5TMihwaXBlLCByZWcpCQlfTU1JTyhJTlRFTF9JTkZPKGRldl9wcg0K
PiA+IGl2KS0+dHJhbnNfb2Zmc2V0c1socGlwZSldIC0gXA0KPiA+IC0JCQkJCSAgICAgIElOVEVM
X0lORk8oZGV2X3ByaXYpLQ0KPiA+ID50cmFuc19vZmZzZXRzW1RSQU5TQ09ERVJfQV0gKyAocmVn
KSArIFwNCj4gPiAtCQkJCQkgICAgICBESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpDQo+ID4gdikp
DQo+ID4gKyNkZWZpbmUgX1RSQU5TMih0cmFuLCByZWcpCQkoSU5URUxfSU5GTyhkZXZfcHJpdikt
DQo+ID4gPnRyYW5zX29mZnNldHNbKHRyYW4pXSAtIFwNCj4gPiArCQkJCQkgSU5URUxfSU5GTyhk
ZXZfcHJpdiktDQo+ID4gPnRyYW5zX29mZnNldHNbVFJBTlNDT0RFUl9BXSArIChyZWcpICsgXA0K
PiA+ICsJCQkJCSBESVNQTEFZX01NSU9fQkFTRShkZXZfcHJpdikpDQo+IA0KPiBhIHB1cmUgbW92
ZSB3aXRoIG5vIGJlaGF2aW9yIGNoYW5nZQ0KPiANCj4gDQo+IFJldmlld2VkLWJ5OiBMdWNhcyBE
ZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gDQo+IEx1Y2FzIERlIE1hcmNo
aQ0KPiANCj4gDQo+ID4gKyNkZWZpbmUgX01NSU9fVFJBTlMyKHRyYW4sIHJlZykJCV9NTUlPKF9U
UkFOUzIodHJhbiwNCj4gPiByZWcpKQ0KPiA+ICNkZWZpbmUgX0NVUlNPUjIocGlwZSwgcmVnKQkJ
X01NSU8oSU5URUxfSU5GTyhkZXZfcHJpdiktDQo+ID4gPmN1cnNvcl9vZmZzZXRzWyhwaXBlKV0g
LSBcDQo+ID4gCQkJCQkgICAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0NCj4gPiA+Y3Vyc29yX29m
ZnNldHNbUElQRV9BXSArIChyZWcpICsgXA0KPiA+IAkJCQkJICAgICAgRElTUExBWV9NTUlPX0JB
U0UoZGV2X3ByaQ0KPiA+IHYpKQ0KPiA+IC0tIA0KPiA+IDIuMjIuMA0KPiA+IA0KPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
