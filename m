Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED8710954F
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 22:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 623B389BDB;
	Mon, 25 Nov 2019 21:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6589689BDB
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 21:59:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 13:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="233546337"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga004.fm.intel.com with ESMTP; 25 Nov 2019 13:59:48 -0800
Received: from fmsmsx162.amr.corp.intel.com (10.18.125.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 25 Nov 2019 13:59:48 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.27]) by
 fmsmsx162.amr.corp.intel.com ([169.254.5.105]) with mapi id 14.03.0439.000;
 Mon, 25 Nov 2019 13:59:47 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Singh, Gaurav K" <gaurav.k.singh@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Enable PSR2 in next iteration of
 suspend-resume/S0ix cycling
Thread-Index: AQHVouBweyAbXcJC6E2e+/DVPfW57qec96cA
Date: Mon, 25 Nov 2019 21:59:47 +0000
Message-ID: <a05814026af61db3825deb847fcd7f4941ae3965.camel@intel.com>
References: <1574611468-3319-1-git-send-email-gaurav.k.singh@intel.com>
In-Reply-To: <1574611468-3319-1-git-send-email-gaurav.k.singh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.225]
Content-ID: <36FAC91E06067547A616D2C621D3701F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable PSR2 in next iteration of
 suspend-resume/S0ix cycling
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

SGkgR2F1cmF2DQoNCkFzIHdlIGFscmVhZHkgdGFsa2VkLCBvbiB1cHN0cmVhbSBmb3Igbm93IHdl
IGRvIG5vdCB3YW50IHRvIHJlY292ZXJ5IG9mDQpQU1IgcnVudGltZSBlcnJvcnMsIHNvIG5vdCBt
ZXJnaW5nIHRoaXMgcGF0Y2guDQoNCkJ1dCBpZiB5b3Ugd2FudCBjb21tZW50cyBpbiB0aGlzIHBh
dGNoIHRvIG1lcmdlIGluIHlvdXIga2VybmVsIHRyZWUuLi5JDQp3b3VsZCBjaGFuZ2UgdGhlIGNv
bW1pdCB0aXRsZSB0bzogIkRvIG5vdCBtYXJrIGFzIHNpbmsgYXMgbm90IHJlbGlhYmxlDQp0byBQ
U1IgcnVudGltZSBlcnJvcnMiIG9yIHNvbWV0aGluZyBzaW1pbGFyIGFzIHRoZSBjaGFuZ2VzIGhl
cmUgd2lsbA0Kbm90IG9ubHkgYWZmZWN0IGR1cmluZyBzdXNwZW5kLXJlc3VtZSBjeWNsaW5nLg0K
DQpBbHNvIEkgd291bGQgY2hhbmdlIGl0IHRvIG9ubHkgZG8gbm90IHNldCBzaW5rX25vdF9yZWxp
YWJsZSBpbiBjYXNlIG9mDQpDUkMgbWlzbWF0Y2ggbGVhdmluZyB0aGUgb3RoZXIgZXJyb3JzIHNl
dHRpbmcgc2lua19ub3RfcmVsaWFibGUsIGlmDQpkb2luZyBzbyBjaGFuZ2luZyB0aGUgY29tbWl0
IG1lc3NhZ2Ugc3VnZ2VzdGVkIGFib3ZlLg0KDQpPbiBTdW4sIDIwMTktMTEtMjQgYXQgMjE6MzQg
KzA1MzAsIEdhdXJhdiBLIFNpbmdoIHdyb3RlOg0KPiBJbiBjYXNlIG9mIENSQyBtaXNtYXRjaCwg
cGFuZWwgZ2VuZXJhdGVzIElSUV9IRCBhbmQNCj4gUFNSMiBnZXRzIGRpc2FibGVkIGJ5IGk5MTUg
ZHJpdmVyLiBEdWUgdG8gdGhpcywgUFNSMiB3aWxsDQo+IG9ubHkgYmUgZW5hYmxlZCBiYWNrIG9u
bHkgaWYgc3lzdGVtIGlzIHJlYm9vdGVkIG9yIGNvbGQgYm9vdC4NCj4gU28sIGluIGNhc2VzIG9m
IHN1c3BlbmQgcmVzdW1lIHN0cmVzcyB0ZXN0IGFuZCBTMGl4IHN0cmVzcyB0ZXN0LA0KPiB3aGVu
IHdlIGVuY291bnRlciB0aGlzIENSQyBpc3N1ZSBvbiBhIHBhcnRpY3VsYXIgaXRlcmF0aW9uLA0K
PiBvbmNlIFBTUjIgaXMgZGlzYWJsZWQsaXQgcmVtYWlucyBkaXNhYmxlZCB0aHJvdWdob3V0IGFs
bCB0aGUNCj4gY3ljbGluZyBpdGVyYXRpb25zIHVudGlsIHRoZSBzeXN0ZW0gaXMgcmVib290ZWQu
DQo+IA0KPiBLZWVwaW5nIHRoaXMgaW4gbWluZCwgbWFueSB0aW1lcyB1c2VycyBkbyBub3QgcmVi
b290IHRoZWlyIHN5c3RlbSBhbmQNCj4gdGhleSBqdXN0IGtlZXAgbGlkIG9mZi9vbiBvciBzdXNw
ZW5kL3Jlc3VtZS4gSW4gdGhlc2Ugc2NlbmFyaW9zDQo+IGluIGNhc2Ugb2YgQ1JDIGlzc3VlLCBw
YW5lbCB3aWxsIGJlY29tZSBub24tUFNSMiB3aGljaCB3aWxsDQo+IGV2ZW50dWFsbHkNCj4gZHJh
aW4gb3V0IGJhdHRlcnkuDQo+IA0KPiBJbiBvcmRlciB0byBmaXggdGhpcyBiZWhhdmlvciwgZGlk
IG5vdCBzZXQgdGhlICJzaW5rX25vdF9yZWxpYWJsZSINCj4gZmxhZw0KPiB0byBiZSB0cnVlLCBz
byB0aGF0IGludGVsX3Bzcl9jb21wdXRlX2NvbmZpZygpIGNhbiBwYXNzIGluIGNhc2Ugb2YgYQ0K
PiBub3JtYWwgbW9kZXNldCB3aGljaCB3aWxsIGxlYWQgdG8gZW5hYmxpbmcgUFNSMiBhZ2FpbiBp
biBuZXh0DQo+IGl0ZXJhdGlvbg0KPiBvZiBzdXNwZW5kL3Jlc3VtZSBvciBTMGl4IGN5Y2xlKHdp
dGhvdXQgcmVib290KS4NCj4gDQo+IFRlc3RlZCB0aGlzIHBhdGNoIGFuZCB3b3JrcyBmaW5lIG9u
IEdlbjkgSW50ZWwgY2hyb21lYm9vaywgUFNSMiB3YXMNCj4gZW5hYmxlZCBiYWNrIGluIG5leHQg
aXRlcmF0aW9uLCBubyBvdGhlciBzaWRlZWZmZWN0cyBvYnNlcnZlZC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEdhdXJhdiBLIFNpbmdoIDxnYXVyYXYuay5zaW5naEBpbnRlbC5jb20+DQo+IC0tLQ0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUgKystLS0NCj4g
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggYzFkMTMz
MzYyYjc2Li44NDY1ZDBmYzIyMTQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQyMCwxMCArMTQyMCw5IEBAIHZvaWQgaW50ZWxfcHNyX3No
b3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+ICAJaWYgKHZhbCAmIH5l
cnJvcnMpDQo+ICAJCURSTV9FUlJPUigiUFNSX0VSUk9SX1NUQVRVUyB1bmhhbmRsZWQgZXJyb3Jz
ICV4XG4iLA0KPiAgCQkJICB2YWwgJiB+ZXJyb3JzKTsNCj4gLQlpZiAodmFsICYgZXJyb3JzKSB7
DQo+ICsJaWYgKHZhbCAmIGVycm9ycykNCj4gIAkJaW50ZWxfcHNyX2Rpc2FibGVfbG9ja2VkKGlu
dGVsX2RwKTsNCj4gLQkJcHNyLT5zaW5rX25vdF9yZWxpYWJsZSA9IHRydWU7DQo+IC0JfQ0KPiAr
DQo+ICAJLyogY2xlYXIgc3RhdHVzIHJlZ2lzdGVyICovDQo+ICAJZHJtX2RwX2RwY2Rfd3JpdGVi
KCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLCB2YWwpOw0KPiAgZXhpdDoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
