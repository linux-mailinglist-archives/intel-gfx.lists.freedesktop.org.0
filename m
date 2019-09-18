Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F634B69CC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 19:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 033AF6F5D0;
	Wed, 18 Sep 2019 17:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DB06F5E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 17:44:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 10:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,521,1559545200"; d="scan'208";a="199118678"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 10:44:01 -0700
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 10:43:57 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 fmsmsx156.amr.corp.intel.com ([169.254.13.247]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 10:43:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Singh, Gaurav K" <gaurav.k.singh@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix S0ix/S3 suspend stress issue
Thread-Index: AQHVbeUMNWp+Gp9YbECMVA7VSnI49KcyKteA
Date: Wed, 18 Sep 2019 17:43:56 +0000
Message-ID: <f4db44faaf4d66e18e19aaecba4f89eb0b3bc6ef.camel@intel.com>
References: <1568786033-1434-1-git-send-email-gaurav.k.singh@intel.com>
In-Reply-To: <1568786033-1434-1-git-send-email-gaurav.k.singh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <4E4B282998209241A1E1C2B8712F4F33@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix S0ix/S3 suspend stress issue
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

T24gV2VkLCAyMDE5LTA5LTE4IGF0IDExOjIzICswNTMwLCBHYXVyYXYgSyBTaW5naCB3cm90ZToN
Cj4gRHVyaW5nIFMwaXgvUzMgc3VzcGVuZCBzdHJlc3MgdGVzdCBvbiBDb21ldGxha2UgY2hyb21l
Ym9vaywNCj4gYWZ0ZXIgZmV3IGl0ZXJhdGlvbnMgd2UgYXJlIHNlZWluZyBmYWlsdXJlIHdydCBQ
U1IgbGluayBDUkMNCj4gRXJyb3IgYW5kIHN0cmVzcyB0ZXN0IHN0b3BzLiBUaGlzIFMwaXggdGVz
dCBpcyBmYWlsaW5nIG9ubHkNCj4gd2hlbiB0aGVyZSBpcyBhIENSQyBtaXNtYXRjaC4gSW4gY2Fz
ZSBvZiBDUkMgbWlzbWF0Y2gsIHBhbmVsDQo+IGdlbmVyYXRlcyBJUlFfSEQgYW5kIHdoZW5ldmVy
IHRoZXJlIGlzIENSQyBtaXNtYXRjaCwgd2UgYXJlDQo+IGRpc2FibGluZyBQU1IyIGluIGRyaXZl
ci4NCj4gDQo+IEJ5IG5vdCBkaXNhYmxpbmcgUFNSMiBpbiBkcml2ZXIgYW5kIG9ubHkgYnkgd3Jp
dGluZyAxIHRvIGNsZWFyDQo+IHN0aWNreSBiaXQgMCBpbiBEUENEIDB4MjAwNiBpbiBwYW5lbCxp
c3N1ZSBnb2VzIGF3YXkuDQo+IENvbXBsZXRlZCAyNTAwIFMwaXgvUzMgdGVzdCBjeWNsZXMgb24g
bXVsdGlwbGUgQ01MIGNocm9tZWJvb2tzLg0KPiANCj4gQXMgcGVyIEVEUCBzcGVjIGZvciBDUkMg
bWlzbWF0Y2gsIG5vdGhpbmcgaGFzIGJlZW4gbWVudGlvbmVkDQo+IGV4cGxpY2l0bHkgZm9yIFNv
dXJjZSBkZXZpY2UsIG9ubHkgYnkgd3JpdGluZyAxIHRvIGNsZWFyDQo+IHN0aWNreSBiaXQgMCBp
biBEUENEIDB4MjAwNiBpbiBzaW5rIGlzIG1lbnRpb25lZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEdhdXJhdiBLIFNpbmdoIDxnYXVyYXYuay5zaW5naEBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKy0tLS0tDQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggYjNjN2VlZjUzYmYz
Li41MDJlMjlkYmJlYTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBAQCAtMTMyNSwxNSArMTMyNSwxMSBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9w
dWxzZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCWlmICh2YWwgJiBEUF9QU1Jf
VlNDX1NEUF9VTkNPUlJFQ1RBQkxFX0VSUk9SKQ0KPiAgCQlEUk1fREVCVUdfS01TKCJQU1IgVlND
IFNEUCB1bmNvcnJlY3RhYmxlIGVycm9yLA0KPiBkaXNhYmxpbmcgUFNSXG4iKTsNCj4gIAlpZiAo
dmFsICYgRFBfUFNSX0xJTktfQ1JDX0VSUk9SKQ0KPiAtCQlEUk1fRVJST1IoIlBTUiBMaW5rIENS
QyBlcnJvciwgZGlzYWJsaW5nIFBTUlxuIik7DQo+ICsJCURSTV9ERUJVR19LTVMoIlBTUiBMaW5r
IENSQyBlcnJvciwgY2xlYXJpbmcgUFNSIGVycm9yDQo+IHN0YXR1cyBEUENEXG4iKTsNCj4gIA0K
PiAgCWlmICh2YWwgJiB+ZXJyb3JzKQ0KPiAgCQlEUk1fRVJST1IoIlBTUl9FUlJPUl9TVEFUVVMg
dW5oYW5kbGVkIGVycm9ycyAleFxuIiwNCj4gIAkJCSAgdmFsICYgfmVycm9ycyk7DQo+IC0JaWYg
KHZhbCAmIGVycm9ycykgew0KPiAtCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHAp
Ow0KPiAtCQlwc3ItPnNpbmtfbm90X3JlbGlhYmxlID0gdHJ1ZTsNCj4gLQl9DQoNCldpdGggdGhp
cyBjaGFuZ2UgeW91IGFyZSBicmVha2luZyBDUkMgYW5kIGFsbCB0aGUgb3RoZXIgZXJyb3IgaGFu
ZGxpbmcuDQoNCklmIENSQyBkaWQgbm90IG1hdGNoLCBpdCBtZWFucyB0aGUgaW1hZ2UgdGhhdCB3
YXMgcmVjZWl2ZWQgYnkgc2luayBkbw0Kbm90IG1hdGNoIHRoZSBleHBlY3RlZCwgaXQgY291bGQg
aGFwcGVuIGJlY2F1c2Ugb2YgcHJvYmxlbXMgb24gc2luaywNCnNvdXJjZSBvciBmbGF0IGNhYmxl
Lg0KDQpJdCBpcyBiZXR0ZXIgaGF2ZSBwZXJmZWN0IGZyYW1lcyB0aGFuIHNhdmUgcG93ZXIsIHNv
IHRoaXMgaXMgbm90DQphY2NlcHRhYmxlLg0KDQo+ICAJLyogY2xlYXIgc3RhdHVzIHJlZ2lzdGVy
ICovDQo+ICAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1Jf
U1RBVFVTLCB2YWwpOw0KPiAgZXhpdDoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
