Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CAA351728
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 19:20:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930B36E145;
	Thu,  1 Apr 2021 17:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F27916E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 17:20:00 +0000 (UTC)
IronPort-SDR: QmrkKBohfdYw0E+yCyZH+X9iuRo6mneHYaylwMrsr/3nwV3j+KcAJg253xJvZxq0gH/qpEv3zR
 +U01y8nZXZpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="189034967"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="189034967"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 10:20:00 -0700
IronPort-SDR: GiFBqromRXylLSvaVeSU1d+HbEv/MUKZcBIcki3Y55w4b/pZWnMwhGF0bKJaCErBy9Ej3F5d05
 2t4fwHcxOZwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="528271579"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by orsmga004.jf.intel.com with ESMTP; 01 Apr 2021 10:19:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 1 Apr 2021 18:19:58 +0100
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Thu, 1 Apr 2021 10:19:56 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Mun, Gwan-gyeong" <gwan-gyeong.mun@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display/psr: Disable DC3CO when the PSR2 is
 used.
Thread-Index: AQHXJxjdR2Y3iM5R9k2jE4g+SyLqxKqgXksA
Date: Thu, 1 Apr 2021 17:19:56 +0000
Message-ID: <16769de8b8de47a087d465321b3c429017dc3392.camel@intel.com>
References: <20210401170237.40472-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20210401170237.40472-1-gwan-gyeong.mun@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <0DEED7730A1B8E49AF04ECFDBBB048E9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/psr: Disable DC3CO when
 the PSR2 is used.
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

T24gVGh1LCAyMDIxLTA0LTAxIGF0IDIwOjAyICswMzAwLCBHd2FuLWd5ZW9uZyBNdW4gd3JvdGU6
DQo+IER1ZSB0byB0aGUgY2hhbmdlZCBzZXF1ZW5jZSBvZiBhY3RpdmF0aW5nL2RlYWN0aXZhdGlu
ZyBEQzNDTywgZGlzYWJsZQ0KPiBEQzNDTyB1bnRpbCB0aGUgY2hhbmdlZCBkYzNjbyBhY3RpdmF0
aW5nL2RlYWN0aXZhdGluZyBzZXF1ZW5jZSBpcyBhcHBsaWVkLg0KDQpSZXZpZXdlZC1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+IFJlZmVy
ZW5jZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMv
MzEzNA0KPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMgfCA3ICsrKysrKysNCj4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMWQ1
NjE4MTJmY2FkLi4zMmQzZDU2MjU5YzIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtNjU0LDYgKzY1NCwxMyBAQCB0Z2xfZGMzY29fZXhpdGxp
bmVfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gwqAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+IMKg
CXUzMiBleGl0X3NjYW5saW5lczsNCj4gwqANCj4gDQo+IA0KPiANCj4gKwkvKg0KPiArCSAqIEZJ
WE1FOiBEdWUgdG8gdGhlIGNoYW5nZWQgc2VxdWVuY2Ugb2YgYWN0aXZhdGluZy9kZWFjdGl2YXRp
bmcgREMzQ08sDQo+ICsJICogZGlzYWJsZSBEQzNDTyB1bnRpbCB0aGUgY2hhbmdlZCBkYzNjbyBh
Y3RpdmF0aW5nL2RlYWN0aXZhdGluZyBzZXF1ZW5jZQ0KPiArCSAqIGlzIGFwcGxpZWQuIEIuU3Bl
Y3M6NDkxOTYNCj4gKwkgKi8NCj4gKwlyZXR1cm47DQo+ICsNCj4gwqAJLyoNCj4gwqAJICogRE1D
J3MgREMzQ08gZXhpdCBtZWNoYW5pc20gaGFzIGFuIGlzc3VlIHdpdGggU2VsZWN0aXZlIEZlY3Ro
DQo+IMKgCSAqIFRPRE86IHdoZW4gdGhlIGlzc3VlIGlzIGFkZHJlc3NlZCwgdGhpcyByZXN0cmlj
dGlvbiBzaG91bGQgYmUgcmVtb3ZlZC4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
