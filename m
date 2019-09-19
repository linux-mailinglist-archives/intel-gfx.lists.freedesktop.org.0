Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CB4B7029
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 02:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4ADE6F4B9;
	Thu, 19 Sep 2019 00:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69626F4B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 00:43:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 17:43:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="199227190"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 18 Sep 2019 17:43:34 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 17:43:33 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.40]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.68]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 17:43:33 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915: Future-proof DDC pin mapping
Thread-Index: AQHVbnyy/ED1MDNol0uQJFN0MjA2KKcynuUA
Date: Thu, 19 Sep 2019 00:43:32 +0000
Message-ID: <8101f5ca0fce3b4e424870b344b3b25bb78a67a5.camel@intel.com>
References: <20190918235626.3750-1-matthew.d.roper@intel.com>
In-Reply-To: <20190918235626.3750-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <A3CF498F2867ED4AA718C322FB2AB2A1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Future-proof DDC pin mapping
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

T24gV2VkLCAyMDE5LTA5LTE4IGF0IDE2OjU2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
ZSBnZW5lcmFsbHkgYXNzdW1lIGZ1dHVyZSBwbGF0Zm9ybXMgd2lsbCBpbmhlcml0IHRoZSBiZWhh
dmlvciBvZiB0aGUNCj4gbW9zdCByZWNlbnQgcGxhdGZvcm1zLCBzbyB1cGRhdGUgb3VyIEREQyBw
aW4gbWFwcGluZyBkZWZhdWx0cyB0bw0KPiBtYXRjaA0KPiBob3cgSUNQL1RHUCBiZWhhdmUgKGku
ZS4sIHBpbnMgc3RhcnRpbmcgZnJvbSBHTUJVU19QSU5fMV9CWFQgZm9yDQo+IGNvbWJvDQo+IFBI
WSdzIGFuZCBwaW5zIHN0YXJ0aW5nIGZyb20gR01CVVNfUElOXzlfVEMxX0lDUCBmb3IgVEMNCj4g
UEhZJ3MpLiAgTUNDJ3MNCj4gbm9uLXN0YW5kYXJkIGhhbmRsaW5nIG9mIGNvbWJvIFBIWSBDIHNl
ZW1zIGxpa2UgYSBwbGF0Zm9ybS1zcGVjaWZpYw0KPiBxdWlyayB0aGF0IGlzIHVubGlrZWx5IHRv
IGJlIGR1cGxpY2F0ZWQgb24gZnV0dXJlIHBsYXRmb3Jtcywgc28NCj4gY29udGludWUNCj4gaGFu
ZGxpbmcgaXQgYXMgYSBzcGVjaWFsIGNhc2UuDQo+IA0KPiBXaXRob3V0IHRoaXMgY2hhbmdlLCBm
dXR1cmUgcGxhdGZvcm1zIHdvdWxkIGRlZmF1bHQgdG8gZ2VuNC1zdHlsZSBwaW4NCj4gbWFwcGlu
ZyB3aGljaCBpcyBhbG1vc3QgY2VydGFpbmx5IG5vdCB3aGF0IHdlJ2xsIHdhbnQuDQo+IA0KDQpS
ZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
DQoNCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIHwgMiAr
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBpbmRleCBj
NTAwZmM5MTU0YzguLmI5ZDUzZWFlZTgwYSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gQEAgLTMwMjksNyArMzAyOSw3IEBAIHN0YXRpYyB1OCBp
bnRlbF9oZG1pX2RkY19waW4oc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0K
PiAgDQo+ICAJaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkNCj4gIAkJZGRjX3BpbiA9IG1jY19w
b3J0X3RvX2RkY19waW4oZGV2X3ByaXYsIHBvcnQpOw0KPiAtCWVsc2UgaWYgKEhBU19QQ0hfVEdQ
KGRldl9wcml2KSB8fCBIQVNfUENIX0lDUChkZXZfcHJpdikpDQo+ICsJZWxzZSBpZiAoSU5URUxf
UENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApDQo+ICAJCWRkY19waW4gPSBpY2xfcG9ydF90
b19kZGNfcGluKGRldl9wcml2LCBwb3J0KTsNCj4gIAllbHNlIGlmIChIQVNfUENIX0NOUChkZXZf
cHJpdikpDQo+ICAJCWRkY19waW4gPSBjbnBfcG9ydF90b19kZGNfcGluKGRldl9wcml2LCBwb3J0
KTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
