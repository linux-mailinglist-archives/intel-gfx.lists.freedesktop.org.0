Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 796421B3025
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 21:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC0B26E323;
	Tue, 21 Apr 2020 19:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A082A6E323
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 19:19:25 +0000 (UTC)
IronPort-SDR: c68KzRqfGzcHOqJ+KieynwaxC7RIjM4NLzfKEECpEowfgLMjp8Q18ylGABtTymLa4cgkvSjQad
 smCRCSqjKL5g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 12:19:24 -0700
IronPort-SDR: 16rw5wefdYYGEhC9VSxO/rH6TsT56zoXlSQqYP90yOx3GtEfGGU3t3vtGQ+vD48fHsUoLg2VRt
 ddnAko77t/TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="429634906"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga005.jf.intel.com with ESMTP; 21 Apr 2020 12:19:24 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 12:19:03 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.191]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.51]) with mapi id 14.03.0439.000;
 Tue, 21 Apr 2020 12:19:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/4] drm/i915: Split some long lines
Thread-Index: AQHWF080viIAOtA8NE6XmwBiPsQcLaiEarAA
Date: Tue, 21 Apr 2020 19:19:03 +0000
Message-ID: <71492643c554352b9026ad87fadf39e07b543c7c.camel@intel.com>
References: <20200420200610.31798-1-ville.syrjala@linux.intel.com>
 <20200420200610.31798-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20200420200610.31798-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.15.8]
Content-ID: <359D199B27E5324683D8E5627C6EF8D3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Split some long lines
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

T24gTW9uLCAyMDIwLTA0LTIwIGF0IDIzOjA2ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU3BsaXQgc29tZSBvdmVybHkgbG9uZyBsaW5lcy4NCg0KUmV2aWV3ZWQtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAxMCAr
KysrKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IGFkMTcyYTM4ZWEzOC4uMWYzZGY4Mzk2ZDNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTEyNjEsNyArMTI2MSwxMCBAQCB2b2lk
IGhzd19mZGlfbGlua190cmFpbihzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwNCj4g
IAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoc3dfZGRpX3RyYW5zbGF0aW9uc19mZGkpICog
MjsgaSsrKQ0KPiB7DQo+ICAJCS8qIENvbmZpZ3VyZSBEUF9UUF9DVEwgd2l0aCBhdXRvLXRyYWlu
aW5nICovDQo+ICAJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEUF9UUF9DVEwoUE9SVF9FKSwN
Cj4gLQkJCSAgICAgICBEUF9UUF9DVExfRkRJX0FVVE9UUkFJTiB8DQo+IERQX1RQX0NUTF9FTkhB
TkNFRF9GUkFNRV9FTkFCTEUgfCBEUF9UUF9DVExfTElOS19UUkFJTl9QQVQxIHwNCj4gRFBfVFBf
Q1RMX0VOQUJMRSk7DQo+ICsJCQkgICAgICAgRFBfVFBfQ1RMX0ZESV9BVVRPVFJBSU4gfA0KPiAr
CQkJICAgICAgIERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFCTEUgfA0KPiArCQkJICAgICAg
IERQX1RQX0NUTF9MSU5LX1RSQUlOX1BBVDEgfA0KPiArCQkJICAgICAgIERQX1RQX0NUTF9FTkFC
TEUpOw0KPiAgDQo+ICAJCS8qIENvbmZpZ3VyZSBhbmQgZW5hYmxlIERESV9CVUZfQ1RMIGZvciBE
REkgRSB3aXRoIG5leHQNCj4gdm9sdGFnZS4NCj4gIAkJICogRERJIEUgZG9lcyBub3Qgc3VwcG9y
dCBwb3J0IHJldmVyc2FsLCB0aGUNCj4gZnVuY3Rpb25hbGl0eSBpcw0KPiBAQCAtMTMzNyw3ICsx
MzQwLDEwIEBAIHZvaWQgaHN3X2ZkaV9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+
ICplbmNvZGVyLA0KPiAgDQo+ICAJLyogRW5hYmxlIG5vcm1hbCBwaXhlbCBzZW5kaW5nIGZvciBG
REkgKi8NCj4gIAlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBfVFBfQ1RMKFBPUlRfRSksDQo+
IC0JCSAgICAgICBEUF9UUF9DVExfRkRJX0FVVE9UUkFJTiB8DQo+IERQX1RQX0NUTF9MSU5LX1RS
QUlOX05PUk1BTCB8IERQX1RQX0NUTF9FTkhBTkNFRF9GUkFNRV9FTkFCTEUgfA0KPiBEUF9UUF9D
VExfRU5BQkxFKTsNCj4gKwkJICAgICAgIERQX1RQX0NUTF9GRElfQVVUT1RSQUlOIHwNCj4gKwkJ
ICAgICAgIERQX1RQX0NUTF9MSU5LX1RSQUlOX05PUk1BTCB8DQo+ICsJCSAgICAgICBEUF9UUF9D
VExfRU5IQU5DRURfRlJBTUVfRU5BQkxFIHwNCj4gKwkJICAgICAgIERQX1RQX0NUTF9FTkFCTEUp
Ow0KPiAgfQ0KPiAgDQo+ICBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfaW5pdF9kcF9idWZfcmVnKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
