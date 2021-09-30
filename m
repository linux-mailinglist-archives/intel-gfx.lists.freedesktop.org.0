Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCA441E08C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 20:03:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBE676EC42;
	Thu, 30 Sep 2021 18:03:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6426EC42
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 18:03:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10123"; a="288908214"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="288908214"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 11:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="555882758"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 30 Sep 2021 11:03:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 11:03:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 30 Sep 2021 11:03:31 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Thu, 30 Sep 2021 11:03:31 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 6/9] drm/i915/display/adlp: Optimize PSR2
 power-savings in corner cases
Thread-Index: AQHXtY9N25bjRIgd5keYobXIg+TBkKu8pdmAgACw9QA=
Date: Thu, 30 Sep 2021 18:03:31 +0000
Message-ID: <3ccb50fb679aca97e8a614f7707c17c8fbdc4fb2.camel@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-6-jose.souza@intel.com>
 <f9b00ea2-0c2f-6727-f870-0119f0da6499@intel.com>
In-Reply-To: <f9b00ea2-0c2f-6727-f870-0119f0da6499@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <377162FC5BAF504E8615BFC02E56A5EF@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/adlp: Optimize PSR2
 power-savings in corner cases
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIxLTA5LTMwIGF0IDEwOjM1ICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IA0KPiBPbiA5LzMwLzIxIDM6MTQgQU0sIEpvc8OpIFJvYmVydG8gZGUgU291emEgd3JvdGU6
DQo+ID4gVGhlIFdhXzE0MDE0OTcxNTA4IGlzIHJlcXVpcmVkIHRvIGZpeCBzY2Fub3V0IHdoZW4g
YSBmZWF0dXJlIHRoYXQgaTkxNQ0KPiA+IGRvIG5vdCBzdXBwb3J0IGlzIGVuYWJsZWQgYW5kIHRo
aXMgZmVhdHVyZSBpcyBub3QgcGxhbm5lZCB0byBiZSBlbmFibGVkDQo+ID4gZm9yIGFkbHAuDQo+
ID4gDQo+ID4gS2VlcGluZyB0aGlzIHdvcmthcm91bmQgZW5hYmxlZCBjYW4gYmFkbHkgaHVydCBw
b3dlci1zYXZpbmdzIHdoZW4NCj4gPiBhIGZ1bGwgZnJhbWUgZmV0Y2ggaXMgcmVxdWlyZWQoc2Vl
IHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBvcnRlZCgpDQo+ID4gYW5kIHBzcjJfc2Vs
X2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKCkpLg0KPiA+IA0KPiA+IEhlcmUgYSBleGFtcGxl
IHRoYXQgY291bGQgYmFkbHkgaHVydCBwb3dlci1zYXZpbmdzLCB1c2Vyc3BhY2UgZG9lcw0KPiA+
IGEgcGFnZSBmbGlwIHRvIGEgcm90YXRlZCBwbGFuZSwgc28gQ09OVElOVU9TX0ZVTExfRlJBTUUg
c2V0Lg0KPiA+IEJ1dCB0aGVuIGZvciBhIHdob2xlIDMwIHNlY29uZHMgbm90aGluZyBpbiB0aGUg
c2NyZWVuIHJlcXVpcmVzIHVwZGF0ZXMNCj4gPiBidXQgYmVjYXVzZSBDT05USU5VT1NfRlVMTF9G
UkFNRSBpcyBzZXQsIGl0IHdpbGwgbm90IGdvIGludG8gREM1L0RDNi4NCj4gPiANCj4gPiBSZXZl
cnRpbmcgV2FfMTQwMTQ5NzE1MDggZml4ZXMgdGhhdCwgYXMgb25seSBhIHNpbmdsZSBmcmFtZSB3
aWxsIGJlDQo+ID4gc2VudCBhbmQgdGhlbiBkaXNwbGF5IGNhbiBnbyB0byBEQzUvREM2IGZvciB0
aG9zZSAzMCBzZWNvbmRzIG9mDQo+ID4gaWRsZW5lc3MuDQo+ID4gDQo+IEFuZCBhZGQgYSBsaXR0
bGUgbW9yZSBleHBsYW5hdGlvbiBoZXJlLg0KPiBEQzZ2IGlzIGEgcG93ZXIgc2F2aW5nIHN0YXRl
IHdoZXJlIHRoZSBkaXNwbGF5IGVuZ2luZSBpcyBwb3dlcmVkIG9mZiANCj4gd2hlbiBkaXNwbGF5
IGVudGVycyBQU1IyIGluIHRoZSB2aWRlbyBwbGF5YmFjay4NCj4gQW5kIHRoZSBXYV8xNDAxNDk3
MTUwOCByZWxhdGVkIHRvIERDNnYuDQoNCldpbGwgZG8gdGhhbmtzLg0KDQo+IA0KPiBSZXZpZXdl
ZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0KPiANCj4g
PiBCU3BlYzogNTQzNjkNCj4gPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYyB8IDExICsrKy0tLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IGluZGV4IGU4YWYzOTU5MWRmZWEuLmIz
N2YxMjNmZTBjOTcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBAQCAtMTQ5OSwxNSArMTQ5OSwxMCBAQCBzdGF0aWMgdm9pZCBwc3IyX21h
bl90cmtfY3RsX2NhbGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4g
ICANCj4gPiAgIAlpZiAoZnVsbF91cGRhdGUpIHsNCj4gPiAgIAkJLyoNCj4gPiAtCQkgKiBXYV8x
NDAxNDk3MTUwODphZGxwDQo+ID4gLQkJICogU0lOR0xFX0ZVTExfRlJBTUUgYml0IGlzIG5vdCBo
b2xkIGluIHJlZ2lzdGVyIHNvIGNhbiBub3QgYmUNCj4gPiAtCQkgKiByZXN0b3JlZCBieSBETUMs
IHNvIHVzaW5nIENPTlRJTlVPU19GVUxMX0ZSQU1FIHRvIG1pbWljIHRoYXQNCj4gPiArCQkgKiBO
b3QgYXBwbHlpbmcgV2FfMTQwMTQ5NzE1MDg6YWRscCBhcyB3ZSBkbyBub3Qgc3VwcG9ydCB0aGUN
Cj4gPiArCQkgKiBmZWF0dXJlIHRoYXQgcmVxdWlyZXMgdGhpcyB3b3JrYXJvdW5kLg0KPiA+ICAg
CQkgKi8NCj4gPiAtCQlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKQ0KPiA+IC0JCQl2YWwg
fD0gQURMUF9QU1IyX01BTl9UUktfQ1RMX1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FOw0KPiA+IC0J
CWVsc2UNCj4gPiAtCQkJdmFsIHw9IFBTUjJfTUFOX1RSS19DVExfU0ZfU0lOR0xFX0ZVTExfRlJB
TUU7DQo+ID4gLQ0KPiA+ICsJCXZhbCB8PSBtYW5fdHJrX2N0bF9zaW5nbGVfZnVsbF9mcmFtZV9i
aXRfZ2V0KGRldl9wcml2KTsNCj4gPiAgIAkJZ290byBleGl0Ow0KPiA+ICAgCX0NCj4gPiAgIA0K
PiA+IA0KDQo=
