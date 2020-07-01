Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A303D2110F9
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 18:46:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 495356E95C;
	Wed,  1 Jul 2020 16:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818906E959
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 16:46:06 +0000 (UTC)
IronPort-SDR: dfax5S9fJ5IC+7OK0twx40XakeZsNBeqM2Gdtwx1jPxRMr87yRdRohi/LBJ61Sv3cddHWZfm41
 Y+LWYamX8uDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="148189327"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="148189327"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 09:46:05 -0700
IronPort-SDR: ha+nXAmMh0RW41qhS9rGZwQf1LDudynFV+ONvgW6VjGIKHq1ilPBjddQ+r/lcjalwzfJdJwhaH
 uVfupYtB2THQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="295611383"
Received: from irsmsx152.ger.corp.intel.com ([163.33.192.66])
 by orsmga002.jf.intel.com with ESMTP; 01 Jul 2020 09:46:05 -0700
Received: from irsmsx602.ger.corp.intel.com (163.33.146.8) by
 IRSMSX152.ger.corp.intel.com (163.33.192.66) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 1 Jul 2020 17:46:04 +0100
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 1 Jul 2020 17:46:04 +0100
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Wed, 1 Jul 2020 17:46:04 +0100
From: "Fiedorowicz, Lukasz" <lukasz.fiedorowicz@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "michal@hardline.pl" <michal@hardline.pl>
Thread-Topic: [PATCH] drm/i915/guc: Expand guc_info debugfs with more
 information
Thread-Index: AQHWT7Pjbm12k2ZrnEKhIMnSl+PhSajy3goA
Date: Wed, 1 Jul 2020 16:46:03 +0000
Message-ID: <11b9fdc99aa1e21fb49c7b74b6d8c79a8d621c6b.camel@intel.com>
References: <20200701142752.419878-1-michal@hardline.pl>
In-Reply-To: <20200701142752.419878-1-michal@hardline.pl>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.2-0ubuntu1 
x-originating-ip: [163.33.253.164]
Content-ID: <EB3BD2579B7DEE44B9E7087EBCD3BB96@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Expand guc_info debugfs with
 more information
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
Cc: "Winiarski, Michal" <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDE2OjI3ICswMjAwLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90
ZToNCj4gRnJvbTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29t
Pg0KPiANCj4gVGhlIGluZm9ybWF0aW9uIGFib3V0IHBsYXRmb3JtL2RyaXZlci91c2VyIHZpZXcg
b2YgR3VDIGZpcm13YXJlIHVzYWdlDQo+IGN1cnJlbnRseSByZXF1aXJlcyB1c2VyIHRvIGVpdGhl
ciBnbyB0aHJvdWdoIGtlcm5lbCBsb2cgb3IgcGFyc2UgdGhlDQo+IGNvbWJpbmF0aW9uIG9mICJl
bmFibGVfZ3VjIiBtb2RwYXJhbSBhbmQgdmFyaW91cyBkZWJ1Z2ZzIGVudHJpZXMuDQo+IExldCdz
IGtlZXAgdGhpbmdzIHNpbXBsZSBhbmQgYWRkIGEgInN1cHBvcnRlZC91c2VkL3dhbnRlZCIgbWF0
cml4DQo+IChhbHJlYWR5IHVzZWQgaW50ZXJuYWxseSBieSBpOTE1KSBpbiBndWNfaW5mbyBkZWJ1
Z2ZzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5p
YXJza2lAaW50ZWwuY29tPg0KDQpMR1RNDQpSZXZpZXdlZC1ieTogTHVrYXN6IEZpZWRvcm93aWN6
IDxsdWthc3ouZmllZG9yb3dpY3pAaW50ZWwuY29tPg0KDQo+IENjOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPg0KPiBDYzogTHVrYXN6IEZp
ZWRvcm93aWN6IDxsdWthc3ouZmllZG9yb3dpY3pAaW50ZWwuY29tPg0KPiBDYzogTWljaGFsIFdh
amRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMgfCAyMyArKysrKysrKysrKysrKysrLS0tLS0t
LQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWMuYw0KPiBpbmRleCA4NjE2
NTc4OTdjMGYuLjQ0NmE0MTk0NmY1NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfZ3VjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjLmMNCj4gQEAgLTczMywxOSArNzMzLDI4IEBAIGludCBpbnRlbF9ndWNfYWxsb2Nh
dGVfYW5kX21hcF92bWEoc3RydWN0DQo+IGludGVsX2d1YyAqZ3VjLCB1MzIgc2l6ZSwNCj4gICAq
Lw0KPiAgdm9pZCBpbnRlbF9ndWNfbG9hZF9zdGF0dXMoc3RydWN0IGludGVsX2d1YyAqZ3VjLCBz
dHJ1Y3QgZHJtX3ByaW50ZXINCj4gKnApDQo+ICB7DQo+ICsJc3RydWN0IGludGVsX3VjICp1YyA9
IGNvbnRhaW5lcl9vZihndWMsIHN0cnVjdCBpbnRlbF91YywgZ3VjKTsNCj4gIAlzdHJ1Y3QgaW50
ZWxfZ3QgKmd0ID0gZ3VjX3RvX2d0KGd1Yyk7DQo+ICAJc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gZ3QtPnVuY29yZTsNCj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gIA0KPiAt
CWlmICghaW50ZWxfZ3VjX2lzX3N1cHBvcnRlZChndWMpKSB7DQo+IC0JCWRybV9wcmludGYocCwg
Ikd1QyBub3Qgc3VwcG9ydGVkXG4iKTsNCj4gKwlkcm1fcHJpbnRmKHAsICJbZ3VjXSBzdXBwb3J0
ZWQ6JXMgd2FudGVkOiVzIHVzZWQ6JXNcbiIsDQo+ICsJCSAgIHllc25vKGludGVsX3VjX3N1cHBv
cnRzX2d1Yyh1YykpLA0KPiArCQkgICB5ZXNubyhpbnRlbF91Y193YW50c19ndWModWMpKSwNCj4g
KwkJICAgeWVzbm8oaW50ZWxfdWNfdXNlc19ndWModWMpKSk7DQo+ICsJZHJtX3ByaW50ZihwLCAi
W2h1Y10gc3VwcG9ydGVkOiVzIHdhbnRlZDolcyB1c2VkOiVzXG4iLA0KPiArCQkgICB5ZXNubyhp
bnRlbF91Y19zdXBwb3J0c19odWModWMpKSwNCj4gKwkJICAgeWVzbm8oaW50ZWxfdWNfd2FudHNf
aHVjKHVjKSksDQo+ICsJCSAgIHllc25vKGludGVsX3VjX3VzZXNfaHVjKHVjKSkpOw0KPiArCWRy
bV9wcmludGYocCwgIltzdWJtaXNzaW9uXSBzdXBwb3J0ZWQ6JXMgd2FudGVkOiVzIHVzZWQ6JXNc
biIsDQo+ICsJCSAgIHllc25vKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSks
DQo+ICsJCSAgIHllc25vKGludGVsX3VjX3dhbnRzX2d1Y19zdWJtaXNzaW9uKHVjKSksDQo+ICsJ
CSAgIHllc25vKGludGVsX3VjX3VzZXNfZ3VjX3N1Ym1pc3Npb24odWMpKSk7DQo+ICsNCj4gKwlp
ZiAoIWludGVsX2d1Y19pc19zdXBwb3J0ZWQoZ3VjKSB8fCAhaW50ZWxfZ3VjX2lzX3dhbnRlZChn
dWMpKQ0KPiAgCQlyZXR1cm47DQo+IC0JfQ0KPiAgDQo+IC0JaWYgKCFpbnRlbF9ndWNfaXNfd2Fu
dGVkKGd1YykpIHsNCj4gLQkJZHJtX3ByaW50ZihwLCAiR3VDIGRpc2FibGVkXG4iKTsNCj4gLQkJ
cmV0dXJuOw0KPiAtCX0NCj4gKwlkcm1fcHV0cyhwLCAiXG4iKTsNCj4gIA0KPiAgCWludGVsX3Vj
X2Z3X2R1bXAoJmd1Yy0+ZncsIHApOw0KPiAgDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
