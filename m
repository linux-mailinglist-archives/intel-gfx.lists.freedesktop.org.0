Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20638A4D7
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 19:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679696E594;
	Mon, 12 Aug 2019 17:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ADC6E594
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 17:48:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 10:39:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; d="scan'208";a="177551102"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga007.fm.intel.com with ESMTP; 12 Aug 2019 10:39:42 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.69]) by
 fmsmsx107.amr.corp.intel.com ([169.254.6.225]) with mapi id 14.03.0439.000;
 Mon, 12 Aug 2019 10:39:42 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 4/4] drm/i915: Add transcoder
 restriction to PSR2
Thread-Index: AQHVRyjZPFJ4keY29kaCr1kHYWOkXqb4ELyAgABAIQA=
Date: Mon, 12 Aug 2019 17:39:41 +0000
Message-ID: <d8dd615dcacce3e039a31e86a6f04b946ec8d6ff.camel@intel.com>
References: <20190730224753.14907-1-jose.souza@intel.com>
 <20190730224753.14907-4-jose.souza@intel.com>
 <0d587aab-b706-fe1f-095a-002e51dab820@intel.com>
In-Reply-To: <0d587aab-b706-fe1f-095a-002e51dab820@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.51]
Content-ID: <2394D32616D85B4F8C168F2CE2C94A4C@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 4/4] drm/i915: Add transcoder restriction
 to PSR2
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

T24gTW9uLCAyMDE5LTA4LTEyIGF0IDE5OjIwICswNTMwLCBHdXB0YSwgQW5zaHVtYW4gd3JvdGU6
DQo+IA0KPiBPbiA3LzMxLzIwMTkgNDoxNyBBTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90
ZToNCj4gPiBBY2NvcmRpbmcgdG8gUFNSMl9DVEwgZGVmaW5pdGlvbiBvbiBCU3BlYyB0aGVyZSBp
cyBvbmx5IG9uZQ0KPiA+IGluc3RhbmNlDQo+ID4gb2YgUFNSMl9DVEwgYWxzbyBJQ0wgZGlzcGxh
eSBvdmVydmlldyBzdGF0ZSB0aGF0IFBTUjIgaXMgb25seQ0KPiA+IHN1cHBvcnRlZCBpbiBFRFAg
dHJhbnNjb2Rlciwgc28gbm93IHRoYXQgaXMgcG9zc2libGUgdG8gaGF2ZSBQU1IgaW4NCj4gPiBh
bnkgdHJhbnNjb2RlciBsZXRzIGFkZCB0aGlzIGhhcmR3YXJlIHJlc3RyaWN0aW9uLg0KPiA+IA0K
PiA+IEJTcGVjOiA3NzEzDQo+ID4gQlNwZWM6IDIwNTg0DQo+ID4gQ2M6IERoaW5ha2FyYW4gUGFu
ZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPg0KPiA+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNSArKysrKw0KPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggZjA2YjRhMGI5ZTI2Li41MjY5
OTA3NjdjNTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtNTQ1LDYgKzU0NSwxMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2Nv
bmZpZ192YWxpZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gICAJaWYgKCFk
ZXZfcHJpdi0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQ0KPiA+ICAgCQlyZXR1cm4gZmFsc2U7DQo+
ID4gICANCj4gPiArCWlmIChjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVS
X0VEUCkgew0KPiA+ICsJCURSTV9ERUJVR19LTVMoIlBTUjIgaXMgb25seSBzdXBwb3J0ZWQgaW4g
RURQDQo+ID4gdHJhbnNjb2RlclxuIik7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJfQ0K
PiA+ICsNCj4gVEdMIHN1cHBvcnRzIFBTUjIgb24gVFJBTlNDT0RFUl9BLCBhbSBpIG1pc3Npbmcg
YW55dGhpbmcgaGVyZT8NCg0KVGhhdCBpcyByaWdodCBUR0wgc3VwcG9ydCBQU1IyIG9uIFRSQU5T
Q09ERVJfQSwgdGhpcyBzZXJpZXMgd2FzIGJlaW5nDQpzZW50IGJlZm9yZSBUR0wgd2FzIG1hZGUg
cHVibGljIHRoYXQgaXMgd2h5IHRoaXMgd2h5IG9ubHkgZWRwIGluIGhlcmUsDQpJIHdpbGwgZml4
IHRoYXQgaW4gdGhlIG5leHQgdmVyc2lvbiBidXQgYW55d2F5cyB0aGVyZSBhIGZldyBtb3JlIFBT
Ug0KcGF0Y2hlcyB0byBlbmFibGUgUFNSIG9uIFRHTC4NCg0KPiA+ICAgCS8qDQo+ID4gICAJICog
RFNDIGFuZCBQU1IyIGNhbm5vdCBiZSBlbmFibGVkIHNpbXVsdGFuZW91c2x5LiBJZiBhDQo+ID4g
cmVxdWVzdGVkDQo+ID4gICAJICogcmVzb2x1dGlvbiByZXF1aXJlcyBEU0MgdG8gYmUgZW5hYmxl
ZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8NCj4gPiBEU0MNCj4gPiANCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
