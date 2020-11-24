Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9381F2C33A5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 23:03:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726C96E0A6;
	Tue, 24 Nov 2020 22:03:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70296E0A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 22:03:42 +0000 (UTC)
IronPort-SDR: NmJQC/bA3/cl27vV4MKb3RUW5PBE7SlXHrtlVxnZiiO9MHvNf3V81yvdPyr01SniOLi0BPGGlX
 hXMvsADkc+uA==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="169462726"
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="169462726"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 14:03:42 -0800
IronPort-SDR: JZLfD1ZOmKOkgf1oZSvRAMRzjSOvdQoWaO71nHDZgY69QzCKSahDfoSbzw66KBJ70wGqnLhQ1d
 TKL4YdZ02LpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,367,1599548400"; d="scan'208";a="312720557"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 24 Nov 2020 14:03:42 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Nov 2020 14:03:41 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 03:33:38 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 24 Nov 2020 14:03:35 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
Thread-Index: AQHWvqZp9ipM8+so4UWz2Ss2oWaquanYZCqA
Date: Tue, 24 Nov 2020 22:03:35 +0000
Message-ID: <d5698ec6956ff3f0df5d3bcce9b836fcd06ef7d0.camel@intel.com>
References: <20201119155050.20328-2-uma.shankar@intel.com>
 <20201119193614.25914-1-uma.shankar@intel.com>
In-Reply-To: <20201119193614.25914-1-uma.shankar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <045A79243C853E4B9CA639FC97FB30EC@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v3 1/2] drm/i915/display/tgl: Disable FBC with PSR2
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

T24gRnJpLCAyMDIwLTExLTIwIGF0IDAxOjA2ICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToNCj4g
VGhlcmUgYXJlIHNvbWUgY29ybmVyIGNhc2VzIHdydCB1bmRlcnJ1biB3aGVuIHdlIGVuYWJsZQ0K
PiBGQkMgd2l0aCBQU1IyIG9uIFRHTC4gUmVjb21tZW5kYXRpb24gZnJvbSBoYXJkd2FyZSBpcyB0
bw0KPiBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQuDQo+IA0KPiBCc3BlYzogNTA0MjIg
SFNEOiAxNDAxMDI2MDAwMg0KPiANCj4gdjI6IEFkZGVkIHBzcjIgZW5hYmxlZCBjaGVjayBmcm9t
IGNydGNfc3RhdGUgKEFuc2h1bWFuKQ0KPiBBZGRlZCBCc3BlYyBsaW5rIGFuZCBIU0QgcmVmZXJu
ZWNlcyAoSm9zZSkNCj4gDQo+IHYzOiBNb3ZlZCB0aGUgbG9naWMgdG8gZGlzYWJsZSBmYmMgdG8g
aW50ZWxfZmJjX3VwZGF0ZV9zdGF0ZV9jYWNoZQ0KPiBhbmQgcmVtb3ZlZCB0aGUgY3J0Yy0+Y29u
ZmlnIHVzYWdlcywgYXMgcGVyIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgOSArKysrKysrKysNCj4g
wqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gaW5kZXggYTViMDcyODE2YTdiLi5jYjI5YzZmMDY4
ZjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJj
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBA
QCAtNzAxLDYgKzcwMSwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfdXBkYXRlX3N0YXRlX2Nh
Y2hlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLA0KPiDCoAlzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVy
ICpmYiA9IHBsYW5lX3N0YXRlLT5ody5mYjsNCj4gwqANCj4gDQo+IA0KPiANCj4gwqAJY2FjaGUt
PnBsYW5lLnZpc2libGUgPSBwbGFuZV9zdGF0ZS0+dWFwaS52aXNpYmxlOw0KPiArDQo+ICsJLyoN
Cj4gKwkgKiBUaWdlcmxha2UgaXMgbm90IHN1cHBvcnRpbmcgRkJDIHdpdGggUFNSMi4NCj4gKwkg
KiBSZWNvbW1lbmRhdGlvbiBpcyB0byBrZWVwIHRoaXMgY29tYmluYXRpb24gZGlzYWJsZWQNCj4g
KwkgKiBCc3BlYzogNTA0MjIgSFNEOiAxNDAxMDI2MDAwMg0KPiArCSAqLw0KPiArCWlmIChjcnRj
X3N0YXRlLT5oYXNfcHNyMiAmJiBJU19USUdFUkxBS0UoZGV2X3ByaXYpKQ0KPiArCQljYWNoZS0+
cGxhbmUudmlzaWJsZSA9IGZhbHNlOw0KDQpMb29rcyBsaWtlIGEgaGFjayB0byBtZSwgd291bGQg
YmUgYmV0dGVyIGFkZCBhIHBzcjIgdmFyaWFibGUgaW4gaW50ZWxfZmJjX3N0YXRlX2NhY2hlLg0K
V2UgYWxzbyB3b3VsZCBuZWVkIGhhdmUgYSBQU1IyIHJlYXNvbiBzZXQgaW4gbm9fZmJjX3JlYXNv
biBhbmQgaGFuZGxlIGl0IGluIElHVC4NCg0KPiArDQo+IMKgCWlmICghY2FjaGUtPnBsYW5lLnZp
c2libGUpDQo+IMKgCQlyZXR1cm47DQo+IMKgDQo+IA0KPiANCj4gDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
