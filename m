Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77D135AD93
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Apr 2021 15:27:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 104416E51C;
	Sat, 10 Apr 2021 13:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B106E51C
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Apr 2021 13:27:27 +0000 (UTC)
IronPort-SDR: u3NcTR34l5CAeuezehWU5dD0kMTZ+10Qwk5H2e99U4XcNzYL0/DS8G1Vc7ES4OfRjpa/HuYA4w
 bEvBwORikN0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9950"; a="257902949"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="257902949"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2021 06:27:25 -0700
IronPort-SDR: VeyvXumn5tUu3EWH4s+dW6P/s5844JHLfrZBKbKbB5CZj2a44AJCiXKOl55OImy0gy+nchHJw6
 6NEWZve8+Gig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="382411688"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 10 Apr 2021 06:27:25 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 10 Apr 2021 06:27:24 -0700
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Sat, 10 Apr 2021 06:27:23 -0700
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.2106.013;
 Sat, 10 Apr 2021 14:27:22 +0100
From: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] Revert "drm/i915/tgl/psr: Fix glitches when doing
 frontbuffer modifications"
Thread-Index: AQHXLLhNGvKYx4ZcukynETtbR9iKyaqtsESA
Date: Sat, 10 Apr 2021 13:27:22 +0000
Message-ID: <ce1f67edec580ba44177616e3eb90de8a1a3b27b.camel@intel.com>
References: <20210408204917.254272-1-jose.souza@intel.com>
 <20210408204917.254272-2-jose.souza@intel.com>
In-Reply-To: <20210408204917.254272-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.253.164]
Content-ID: <D5FDF5289A5E3C4EA08101A84666D9FE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/tgl/psr: Fix glitches
 when doing frontbuffer modifications"
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

UmV2aWV3ZWQtYnk6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4N
ClRlc3RlZC1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPg0K
T24gVGh1LCAyMDIxLTA0LTA4IGF0IDEzOjQ5IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIHJldmVydHMgY29tbWl0IDcxYzFhNDk5ODMyMDk2MmY3YjgzNjJiMmM1
ZWUzNjYxMGQ0OWU4ZmIuDQo+IA0KPiBUaGUgcHJvcGVyIGZpeCBpcyBXYV8xNDAxMzcyMzYyMiwg
c28gbm93IHdlIGNhbiByZXZlcnQgdGhpcyBXQSBhbmQNCj4gZ2V0IGJhY2sgc29tZSBwb3dlciBz
YXZpbmdzLg0KPiANCj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVuQGludGVs
LmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgfCAxNiArLS0tLS0tLS0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAzMmQzZDU2MjU5YzIuLjZhNjFmZTQyNjg2ZSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0x
MTYxLDIxICsxMTYxLDcgQEAgc3RhdGljIHZvaWQgcHNyX2ZvcmNlX2h3X3RyYWNraW5nX2V4aXQo
c3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqB7DQo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsN
Cj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikpDQo+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKg0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICogV3JpdGVzIHRvIENVUlNVUkZMSVZFIGluIFRHTCBhcmUgY2F1c2luZyBJT01N
VQ0KPiBlcnJvcnMgYW5kDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB2aXN1
YWwgZ2xpdGNoZXMgdGhhdCBhcmUgb2Z0ZW4gcmVwcm9kdWNlZCB3aGVuDQo+IGV4ZWN1dGluZw0K
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogQ1BVIGludGVuc2l2ZSB3b3JrbG9h
ZHMgd2hpbGUgYSBlRFAgNEsgcGFuZWwgaXMNCj4gYXR0YWNoZWQuDQo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKg0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICog
TWFudWFsbHkgZXhpdGluZyBQU1IgY2F1c2VzIHRoZSBmcm9udGJ1ZmZlciB0byBiZQ0KPiB1cGRh
dGVkDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB3aXRob3V0IGdsaXRjaGVz
IGFuZCB0aGUgSU9NTVUgZXJyb3JzIGFyZSBhbHNvIGdvbmUNCj4gYnV0DQo+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgKiB0aGlzIGNvbWVzIGF0IHRoZSBjb3N0IG9mIGxlc3MgdGlt
ZSB3aXRoIFBTUiBhY3RpdmUuDQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKg0K
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogU28gdXNpbmcgdGhpcyB3b3JrYXJv
dW5kIHVudGlsIHRoaXMgaXNzdWUgaXMgcm9vdA0KPiBjYXVzZWQNCj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqIGFuZCBhIGJldHRlciBmaXggaXMgZm91bmQuDQo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGludGVsX3Bzcl9leGl0KGludGVsX2RwKTsNCj4gLcKgwqDCoMKgwqDCoMKgZWxzZSBpZiAo
RElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkpDQo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAv
Kg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIERpc3BsYXkgV0EgIzA4ODQ6
IHNrbCsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUaGlzIGRvY3VtZW50
ZWQgV0EgZm9yIGJ4dCBjYW4gYmUgc2FmZWx5IGFwcGxpZWQNCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
