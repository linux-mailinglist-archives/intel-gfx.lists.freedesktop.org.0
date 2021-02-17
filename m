Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C867A31DE10
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7E66E17B;
	Wed, 17 Feb 2021 17:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64FF86E17B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:24:05 +0000 (UTC)
IronPort-SDR: jK6z1UHcxHjYau/pkWuvvs8ow/jihN8QpzVqD6nhN6Yzs9k7n4V896iK5fipnUr/tnUYhK4uft
 xVPwSPAJeubQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="162391575"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="162391575"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:24:04 -0800
IronPort-SDR: TB0o8jCYmicvBnEzESw4mtVK6PE9MVCjHzgU7EcPW3w4M8u4cvV8/Nc8VdBRdyoQugds/yjjL3
 ALre4doPjY0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="580946615"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga005.jf.intel.com with ESMTP; 17 Feb 2021 09:24:04 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 09:24:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 09:24:04 -0800
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 09:24:04 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
Thread-Index: AQHXAWvFgtFzeGCzuUqI9w5witXg7KpVXxCAgAATkYCAABiMAIAHm+8A
Date: Wed, 17 Feb 2021 17:24:03 +0000
Message-ID: <65170873d65d0bcd9bb97e10fe152b7a3c42bac0.camel@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-3-jose.souza@intel.com> <YCbKi3rpV3pWwkHw@intel.com>
 <463536ed55ca9d96c96e48efe60e99e2dad8cb07.camel@intel.com>
 <YCbvjHhGHvD5vM+0@intel.com>
In-Reply-To: <YCbvjHhGHvD5vM+0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <4FCF5DDBCEB0A246946A54FEC7121CFF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTAyLTEyIGF0IDIzOjEzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgRmViIDEyLCAyMDIxIGF0IDA3OjQ0OjIyUE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjAyMS0wMi0xMiBhdCAyMDozNSArMDIwMCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOg0KPiA+ID4gT24gRnJpLCBGZWIgMTIsIDIwMjEgYXQgMTA6MjI6MDFBTSAt
MDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToNCj4gPiA+ID4gRm91bmQgYSBzeXN0
ZW0gd2VyZSBmaXJtd2FyZS9CSU9TIGxlZnQgdGhlIHBsYW5lX3Jlc19iIGFuZCBwbGFuZV9yZXNf
bA0KPiA+ID4gPiBzZXQgd2l0aCBub24temVybyB2YWx1ZXMgZm9yIGRpc2FibGUgcGxhbmVzLg0K
PiA+ID4gDQo+ID4gPiBJdCBwcmV0dHkgbXVjaCBoYXBwZW5zIGFsd2F5cyBzaW5jZSB0aGUgcmVz
ZXQgdmFsdWUgaXMgbm90IHplcm8uDQo+ID4gPiBJSVJDIHdlIG1hZGUgdGhlIHN0YXRlIGNoY2tl
ciBwZWRhbnRpYyBlbm91Z2ggdG8gY29tcGxhaW4gYWJvdXQNCj4gPiA+IHRoYXQsIHNvIHdlIG5l
ZWQgdG8gY2xlYW4gaXQgdXAuDQo+ID4gDQo+ID4gQXJlIHlvdSBwbGFubmluZyB0byBmaXggaXQg
c29vbj8NCj4gDQo+IEZpeCB3aGF0IGV4YWN0bHk/IEkgZ3Vlc3MgeW91J3JlIHNlZWluZyBhbiBh
Y3R1YWwgcHJvYmxlbSBvZiBzb21lIHNvcnQ/DQoNCllvdXIgY29tbWVudCBhYm92ZSBtYWRlIG1l
IHVuZGVyc3RhbmQgdGhhdCB5b3Ugd2VyZSBwbGFubmluZyB0byBmaXggdGhpcyBwbGFuZSB3YXRl
cm1hcmsgbWlzbWF0Y2hlcyBmb3IgZGlzYWJsZWQgcGxhbmVzIGluIG90aGVyIHdheSBvdGhlciB0
aGFuIHdoYXQNCnRoaXMgcGF0Y2ggZG9lcy4NCk9yIHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhp
cyBzb2x1dGlvbj8gDQoNCj4gDQo+ID4gSWYgbm90IEkgY2FuIGRvIGl0IGJ1dCB3aWxsIG5lZWQg
YSBjb3VwbGUgbW9yZSBvZiBoaW50cyBvZiB3aGF0IHlvdQ0KPiA+IHRoaW5raW5nIHRvIGRvLg0K
PiA+IA0KPiA+IFdlIHdpbGwgbmVlZCB0aGlzIGZpeGVkIHNvb24gb3RoZXJ3aXNlIHRoaXMgc3lz
dGVtIHdpbGwgYmxvY2sgQ0kNCj4gPiB0ZXN0aW5nIGluIHRoaXMgcGxhdGZvcm0uDQo+ID4gDQo+
ID4gPiANCj4gPiA+ID4gQXMgdGhlIHBsYW5lcyBhcmUgZGlzYWJsZWQgaTkxNSB3aWxsIG5vdCBl
dmVuIHRyeSB0byBzYW5pdGl6ZSBpdCBzbw0KPiA+ID4gPiBoZXJlIHJldHVybmluZyBlYXJsaWVy
IGlmIGJvdGggc2tsX3dtX2xldmVscyBiZWluZyBjb21wYXJlZCBhcmUNCj4gPiA+ID4gZGlzYWJs
ZWQsIGlmIHRoYXQgaXMgdHJ1ZSBubyBuZWVkIHRvIGNoZWNrIHRoZSBvdGhlciBmaWVsZHMgYXMg
SFcNCj4gPiA+ID4gd2lsbCBpZ25vcmUgaXQuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+
ID4gLS0tDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDIgKysN
Cj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMNCj4gPiA+ID4gaW5kZXggOGNjNjdmOWM0ZTU4Li5j
NjMwZGMxMGMzNGIgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0K
PiA+ID4gPiBAQCAtNTYzMyw2ICs1NjMzLDggQEAgdm9pZCBza2xfd3JpdGVfY3Vyc29yX3dtKHN0
cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gPiA+IMKgYm9vbCBza2xfd21fbGV2ZWxfZXF1
YWxzKGNvbnN0IHN0cnVjdCBza2xfd21fbGV2ZWwgKmwxLA0KPiA+ID4gPiDCoAkJCSBjb25zdCBz
dHJ1Y3Qgc2tsX3dtX2xldmVsICpsMikNCj4gPiA+ID4gwqB7DQo+ID4gPiA+ICsJaWYgKGwxLT5w
bGFuZV9lbiA9PSBmYWxzZSAmJiBsMi0+cGxhbmVfZW4gPT0gZmFsc2UpDQo+ID4gPiA+ICsJCXJl
dHVybiB0cnVlOw0KPiA+ID4gPiDCoAlyZXR1cm4gbDEtPnBsYW5lX2VuID09IGwyLT5wbGFuZV9l
biAmJg0KPiA+ID4gPiDCoAkJbDEtPmlnbm9yZV9saW5lcyA9PSBsMi0+aWdub3JlX2xpbmVzICYm
DQo+ID4gPiA+IMKgCQlsMS0+cGxhbmVfcmVzX2wgPT0gbDItPnBsYW5lX3Jlc19sICYmDQo+ID4g
PiA+IC0tIA0KPiA+ID4gPiAyLjMwLjENCj4gPiA+ID4gDQo+ID4gPiA+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+ID4gPiA+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QNCj4gPiA+ID4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4g
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA0KPiA+ID4gDQo+ID4gDQo+IA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
