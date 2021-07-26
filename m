Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 040223D6895
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 23:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F846E4D7;
	Mon, 26 Jul 2021 21:23:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A016E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jul 2021 21:23:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="234180850"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="234180850"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 14:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="474133668"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2021 14:23:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 26 Jul 2021 14:23:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 26 Jul 2021 14:23:54 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Mon, 26 Jul 2021 14:23:54 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915/display/psr2: Force a PSR exit
 in the frontbuffer modification flushes
Thread-Index: AQHXeqhG6A6FF4si2ES3GmktZ2oCNqtV01bg
Date: Mon, 26 Jul 2021 21:23:54 +0000
Message-ID: <1dbf14fb850b4cf79f4d78f07b745676@intel.com>
References: <20210717011227.204494-1-jose.souza@intel.com>
 <20210717011227.204494-4-jose.souza@intel.com>
In-Reply-To: <20210717011227.204494-4-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display/psr2: Force a PSR exit
 in the frontbuffer modification flushes
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3PDqQ0K
PiBSb2JlcnRvIGRlIFNvdXphDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAxNiwgMjAyMSA2OjEyIFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRl
bC1nZnhdIFtQQVRDSCA0LzRdIGRybS9pOTE1L2Rpc3BsYXkvcHNyMjogRm9yY2UgYSBQU1IgZXhp
dCBpbg0KPiB0aGUgZnJvbnRidWZmZXIgbW9kaWZpY2F0aW9uIGZsdXNoZXMNCj4gDQo+IFRoZSBD
VVJTVVJGTElWRSgpIHdyaXRlIGRvIG5vdCB3b3JrcyB3aXRoIFBTUjIgc2VsZWN0aXZlIGZldGNo
LCB0aGUgb25seQ0KPiB3YXkgdG8gdXBkYXRlIHNjcmVlbiBpcyB0byBwcm9ncmFtIFBTUjIgcGxh
bmUgYW5kIHRyYW5zY29kZXIgcmVnaXN0ZXJzDQo+IGR1cmluZyB0aGUgdmJsYW5rLg0KPiANCj4g
V2UgY291bGQgdXNlIHRoZSBmcm9udGJ1ZmZlciBkaXJ0eSBhcmVhcyBzZXQgYnkgdXNlcnNwYWNl
IHdpdGgNCj4gZHJtTW9kZURpcnR5RkIoKSBidXQgd2Ugd291bGQgc3RpbGwgbmVlZCB0byB3YWl0
IGZvciB0aGUgdmJsYW5rIHRvIHByb3Blcmx5DQo+IHVwZGF0ZSB0aGUgUFNSMiByZWdpc3RlcnMu
DQo+IFdoYXQgSSB0aGluayBpcyBub3Qgd29ydGh5IHRoZSBkZXZlbG9wbWVudCB0aW1lIGNvbnNp
ZGVyaW5nIHRoYXQgdGhlcmUgaXMgc28NCj4gZmV3IHVzZXJzcGFjZSBhcHBsaWNhdGlvbnMgdGhh
dCBtYWtlcyB1c2Ugb2YgdGhpcyBvbGQgbWV0aG9kLg0KPiANCj4gU28gaGVyZSBmb3JjaW5nIGEg
UFNSIGV4aXQgaW4gdGhpcyBjYXNlLCB0aGlzIHdpbGwgZ3VhcmF0ZWUgdGhhdCBwYW5lbCB3aWxs
IGJlDQpzLyBndWFyYXRlZS8gZ3VhcmFudGVlDQoNCj4gcHJvcGVybHkgdXBkYXRlZC4NCj4gDQo+
IENjOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
UmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4N
Cg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAy
ICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCAx
YzQxMDQyODQxZmIxLi43MzE2OTY3YWJhOTRiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0NDgsNyArMTQ0OCw3IEBAIHN0YXRpYyB2b2lk
IHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAp
ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShp
bnRlbF9kcCk7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gKwlp
ZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDkgJiYNCj4gKyFpbnRlbF9kcC0+cHNyLnBzcjJf
c2VsX2ZldGNoX2VuYWJsZWQpDQo+ICAJCS8qDQo+ICAJCSAqIERpc3BsYXkgV0EgIzA4ODQ6IHNr
bCsNCj4gIAkJICogVGhpcyBkb2N1bWVudGVkIFdBIGZvciBieHQgY2FuIGJlIHNhZmVseSBhcHBs
aWVkDQo+IC0tDQo+IDIuMzIuMA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
