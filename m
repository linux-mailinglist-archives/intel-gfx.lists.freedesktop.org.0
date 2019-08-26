Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE77E9D4D2
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C6876E272;
	Mon, 26 Aug 2019 17:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D27C46E272
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:17:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 10:17:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="355492241"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 26 Aug 2019 10:17:41 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 26 Aug 2019 10:17:41 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.91]) by
 FMSMSX114.amr.corp.intel.com ([169.254.6.244]) with mapi id 14.03.0439.000;
 Mon, 26 Aug 2019 10:17:41 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum
 resolution supported by PSR2 HW
Thread-Index: AQHVWYvBa2BPyL81y06bbC/opBUZQacKmlEAgAOKWwCAAAHogA==
Date: Mon, 26 Aug 2019 17:17:40 +0000
Message-ID: <2d520d4716dba8ad363c07e561decb2a9b806907.camel@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-10-lucas.demarchi@intel.com>
 <20190824110652.GC30506@intel.com>
 <20190826171050.ay7sa3yvc5cdgznb@ldmartin-desk1>
In-Reply-To: <20190826171050.ay7sa3yvc5cdgznb@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <F7E367AF02CE5B4C9C209CD9161D5115@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum
 resolution supported by PSR2 HW
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA4LTI2IGF0IDEwOjEwIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IE9uIFNhdCwgQXVnIDI0LCAyMDE5IGF0IDA0OjM2OjUyUE0gKzA1MzAsIEFuc2h1bWFuIEd1
cHRhIHdyb3RlOg0KPiA+IE9uIDIwMTktMDgtMjMgYXQgMDE6MjA6NDEgLTA3MDAsIEx1Y2FzIERl
IE1hcmNoaSB3cm90ZToNCj4gPiA+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBUR0wgUFNSMiBIVyBzdXBwb3J0cyBhIGJp
Z2dlciByZXNvbHV0aW9uLCBzbyBsZXRzIGFkZCBpdA0KPiA+ID4gDQo+ID4gPiBDYzogRGhpbmFr
YXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+DQo+ID4gPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiA+ID4gU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4N
Cj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMgfCA1ICsrKystDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiBpbmRleCBjMzNhYTE2ZWQwMzguLjVkMjRmMWM0N2EyYiAx
MDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiA+IEBAIC01NzAsNyArNTcwLDEwIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmln
X3ZhbGlkKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+ID4gIAkJcmV0dXJu
IGZhbHNlOw0KPiA+ID4gIAl9DQo+ID4gPiANCj4gPiA+IC0JaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsNCj4gPiA+ICsJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIpIHsNCj4gPiBBcyBwZXIgQi5TcGVjczoyODY5MiBvbiBmZXcg
R2VuMTEgcGxhdGZvcm0sIFBTUjIgc3VwcG9ydHMgbWF4DQo+ID4gcmVzb2x1dGlvbiBvZiA1MTIw
WDMyMDAuDQo+ID4gRG8gd2UgbmVlZCB0byBoYW5kbGUgdGhvc2UgR2VuMTEgcGxhdGZvcm0gaGVy
ZT8NCj4gDQo+IHRoZSBvbmx5IHRoaW5nIEkgc2VlIHRoZXJlIGZvciBnZW4xMSBpczoNCj4gDQo+
IAkiUFNSMiBtYXhpbXVtIHBpcGUgaG9yaXpvbnRhbCBhY3RpdmUgc2l6ZSA0MDk2IHBpeGVscy4i
DQoNCg0KV2UgYXJlIGZvbGxvd2luZyBCU3BlYyA3NzEzDQoNCj4gDQo+IEx1Y2FzIERlIE1hcmNo
aQ0KPiANCj4gPiA+ICsJCXBzcl9tYXhfaCA9IDUxMjA7DQo+ID4gPiArCQlwc3JfbWF4X3YgPSAz
MjAwOw0KPiA+ID4gKwl9IGVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwNCj4g
PiA+IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7DQo+ID4gPiAgCQlwc3JfbWF4X2ggPSA0MDk2
Ow0KPiA+ID4gIAkJcHNyX21heF92ID0gMjMwNDsNCj4gPiA+ICAJfSBlbHNlIGlmIChJU19HRU4o
ZGV2X3ByaXYsIDkpKSB7DQo+ID4gPiAtLQ0KPiA+ID4gMi4yMy4wDQo+ID4gPiANCj4gPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiBJbnRl
bC1nZnggbWFpbGluZyBsaXN0DQo+ID4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
