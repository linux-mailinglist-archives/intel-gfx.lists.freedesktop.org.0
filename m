Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E657099621
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 737C56EB33;
	Thu, 22 Aug 2019 14:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 649216E4F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:17:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 15:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,414,1559545200"; d="scan'208";a="178647048"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2019 15:46:17 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 21 Aug 2019 15:46:17 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.219]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 15:46:17 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH 07/11] drm/i915: Use subslice stride to set subslices
 for a given slice
Thread-Index: AQHVWHDWbbds+NUzAkW7w0vuFfOPm6cGqOsA
Date: Wed, 21 Aug 2019 22:46:16 +0000
Message-ID: <1566427570.128584.11.camel@intel.com>
References: <20190820230544.170010-1-stuart.summers@intel.com>
 <20190820230544.170010-8-stuart.summers@intel.com>
 <156642696880.20466.4671731770490212833@skylake-alporthouse-com>
In-Reply-To: <156642696880.20466.4671731770490212833@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.23.184.90]
Content-ID: <2A30112AF2361540BF86CF904C2872D0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/11] drm/i915: Use subslice stride to set
 subslices for a given slice
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

T24gV2VkLCAyMDE5LTA4LTIxIGF0IDIzOjM2ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFF1b3RpbmcgU3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMjEgMDA6MDU6NDApDQo+ID4gQWRkIGEg
c3Vic2xpY2Ugc3RyaWRlIGNhbGN1bGF0aW9uIHdoZW4gc2V0dGluZyBzdWJzbGljZXMuIFRoaXMN
Cj4gPiBhbGlnbnMgbW9yZSBjbG9zZWx5IHdpdGggdGhlIHVzZXJzcGFjZSBleHBlY3RhdGlvbiBv
ZiB0aGUgc3Vic2xpY2UNCj4gPiBtYXNrIHN0cnVjdHVyZS4NCj4gPiANCj4gPiB2MjogVXNlIGxv
Y2FsIHZhcmlhYmxlIGZvciBzdWJzbGljZV9tYXNrIG9uIEhTVyBhbmQNCj4gPiDCoMKgwqDCoGNs
ZWFuIHVwIGEgZmV3IG90aGVyIHN1YnNsaWNlX21hc2sgbG9jYWwgdmFyaWFibGUNCj4gPiDCoMKg
wqDCoGNoYW5nZXMNCj4gPiB2MzogQWRkIEdFTV9CVUdfT04gZm9yIHNzX3N0cmlkZSB0byBwcmV2
ZW50IGFycmF5IG92ZXJmbG93IChDaHJpcykNCj4gPiDCoMKgwqDCoFNwbGl0IG1haW4gc2V0IGZ1
bmN0aW9uIGFuZCByZWZhY3RvcnMgaW4gaW50ZWxfZGV2aWNlX2luZm8uYw0KPiA+IMKgwqDCoMKg
aW50byBzZXBhcmF0ZSBwYXRjaGVzIChDaHJpcykNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBT
dHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jIHwgMTIgKysrKysrKysrKy0tDQo+
ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggfMKgwqAyICstDQo+ID4g
wqAyIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4g
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5jDQo+ID4gaW5kZXggNzlh
OWI1ZjE4NmY5Li41ZDUzN2VjOTdmY2MgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfc3NldS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfc3NldS5jDQo+ID4gQEAgLTMxLDkgKzMxLDE3IEBAIGludGVsX3NzZXVfc3Vic2xpY2Vf
dG90YWwoY29uc3Qgc3RydWN0DQo+ID4gc3NldV9kZXZfaW5mbyAqc3NldSkNCj4gPiDCoH0NCj4g
PiDCoA0KPiA+IMKgdm9pZCBpbnRlbF9zc2V1X3NldF9zdWJzbGljZXMoc3RydWN0IHNzZXVfZGV2
X2luZm8gKnNzZXUsIGludA0KPiA+IHNsaWNlLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTggc3NfbWFzaykNCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHUz
MiBzc19tYXNrKQ0KPiA+IMKgew0KPiA+IC3CoMKgwqDCoMKgwqDCoHNzZXUtPnN1YnNsaWNlX21h
c2tbaV0gPSBzc19tYXNrICYgMHhmZjsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgaSwgb2Zmc2V0
Ow0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBHRU1fQlVHX09OKHNzZXUtPnNzX3N0cmlkZSA+
IDMyKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1LT5z
c19zdHJpZGU7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGZvciAoaSA9IDA7IGkgPCBzc2V1
LT5zc19zdHJpZGU7IGkrKykNCj4gDQo+IFlvdSBhcmUgc2F5aW5nIHRoYXQgaSBjYW4gYmUgYSBt
YXhpbXVtIG9mIDMyLCBhbmQNCj4gdTMyID4+ICg4ICogMzIpIGlzIGxlZ2FsPw0KDQpZZWFoIHRo
ZSBzdHJpZGUgaXMgY2FsY3VsYXRlZCBhcyBhIGRpdi1ieS04LCBzbyByZWFsbHkgdGhpcyBzaG91
bGQgYmUNCm1heCBvZiA0LCBub3QgMzIuIEknbGwgZml4IHRoaXMgYW5kIHJlcG9zdC4NCg0KPiAN
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c3Vic2xpY2VfbWFza1tv
ZmZzZXQgKyBpXSA9DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAoc3NfbWFzayA+PiAoQklUU19QRVJfQllURSAqIGkpKSAmIDB4ZmY7DQo+IA0KPiBU
aGUgMHhmZiBpcywgYW5kIHdhcywgc3VwZXJmbHVvdXMuIFNocnVnLg0KDQpJIGFncmVlIGluIHRo
ZSBwcmV2aW91cyBwYXRjaCB0aGlzIHdhc24ndCByZWFsbHkgaW50ZXJlc3RpbmcuIEkgY2FuDQpy
ZW1vdmUgdGhhdC4gQnV0IGhlcmUsIElNTywgaGF2aW5nIHRoZSBleHBsaWNpdCBBTkQgbWFrZXMg
dGhpcyBjbGVhcmVyLg0KDQpUaGFua3MsDQpTdHVhcnQNCg0KPiAtQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
