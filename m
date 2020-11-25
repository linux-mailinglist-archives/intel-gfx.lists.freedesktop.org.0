Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4520C2C4B06
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 23:46:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEED88800A;
	Wed, 25 Nov 2020 22:46:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 478AA6E4B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 22:46:26 +0000 (UTC)
IronPort-SDR: dcfM9jiXfU6foSXzkffdsHy0TwJsSVwc3AFvhmoks7A88tmQ6jVNe9dLuoHexdSF1LN3TJjOLb
 kr0tHwu1jANw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="172367096"
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="172367096"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 14:46:25 -0800
IronPort-SDR: qzSEgMMZNBs+8lcQ9wq/nRJzghTgBBVzSQSZlz4cmvEQEwgLAuphpWjW+MK7olj/1mp3FvWoYN
 YHArZwxe/4kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,370,1599548400"; d="scan'208";a="333164565"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 25 Nov 2020 14:46:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 14:46:25 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 25 Nov 2020 14:46:24 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Wed, 25 Nov 2020 14:46:24 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Swarup, Aditya" <aditya.swarup@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 21/21] drm/i915/adl_s: Update memory
 bandwidth parameters
Thread-Index: AQHWvRLF1wGE5rUHv0iYa+vbbbMFxqnZf1VQ
Date: Wed, 25 Nov 2020 22:46:24 +0000
Message-ID: <e5f55f1e27874fdbbd5730ae3f08881d@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-22-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-22-aditya.swarup@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 21/21] drm/i915/adl_s: Update memory
 bandwidth parameters
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBBZGl0
eWEgU3dhcnVwDQo+IFNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDE3LCAyMDIwIDEwOjUwIEFNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlIE1hcmNoaSwgTHVjYXMNCj4gPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDIxLzIxXSBkcm0v
aTkxNS9hZGxfczogVXBkYXRlIG1lbW9yeQ0KPiBiYW5kd2lkdGggcGFyYW1ldGVycw0KPiANCj4g
RnJvbTogVGVqYXMgVXBhZGh5YXkgPHRlamFza3VtYXJ4LnN1cmVuZHJha3VtYXIudXBhZGh5YXlA
aW50ZWwuY29tPg0KPiANCj4gSnVzdCBsaWtlIFJLTCwgdGhlIEFETF9TIHBsYXRmb3JtIGFsc28g
aGFzIGRpZmZlcmVudCBtZW1vcnkgY2hhcmFjdGVyaXN0aWNzDQo+IGZyb20gcGFzdCBwbGF0Zm9y
bXMuICBVcGRhdGUgdGhlIHZhbHVlcyB1c2VkIGJ5IG91ciBtZW1vcnkgYmFuZHdpZHRoDQo+IGNh
bGN1bGF0aW9ucyBhY2NvcmRpbmdseS4NCj4gDQo+IEJzcGVjOiA2NDYzMQ0KPiBDYzogTWF0dCBS
b3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4NCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IFRlamFzIFVwYWRoeWF5DQo+IDx0ZWphc2t1bWFyeC5zdXJlbmRyYWt1bWFyLnVw
YWRoeWF5QGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlh
LnN3YXJ1cEBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNo
YS5zcml2YXRzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9idy5jIHwgOCArKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0K
PiBpbmRleCBiZDA2MDQwNGQyNDkuLjMyNTIyZWMxZmZiOSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtMjA1LDYgKzIwNSwxMiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGludGVsX3NhX2luZm8gcmtsX3NhX2luZm8gPSB7DQo+ICAJLmRpc3BsYXly
dGlkcyA9IDEyOCwNCj4gIH07DQo+IA0KPiArc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9zYV9p
bmZvIGFkbHNfc2FfaW5mbyA9IHsNCj4gKwkuZGVidXJzdCA9IDE2LA0KPiArCS5kZXByb2did2xp
bWl0ID0gMzgsIC8qIEdCL3MgKi8NCj4gKwkuZGlzcGxheXJ0aWRzID0gMjU2LA0KPiArfTsNCj4g
Kw0KPiAgc3RhdGljIGludCBpY2xfZ2V0X2J3X2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfc2FfaW5mbyAqc2EpICB7DQo+ICAJc3Ry
dWN0IGludGVsX3Fndl9pbmZvIHFpID0ge307DQo+IEBAIC0zMTcsNiArMzIzLDggQEAgdm9pZCBp
bnRlbF9id19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikNCj4g
DQo+ICAJaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQ0KPiAgCQlpY2xfZ2V0X2J3X2luZm8o
ZGV2X3ByaXYsICZya2xfc2FfaW5mbyk7DQo+ICsJZWxzZSBpZiAoSVNfQUxERVJMQUtFX1MoZGV2
X3ByaXYpKQ0KPiArCQlpY2xfZ2V0X2J3X2luZm8oZGV2X3ByaXYsICZhZGxzX3NhX2luZm8pOw0K
PiAgCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTIpKQ0KPiAgCQlpY2xfZ2V0X2J3X2luZm8o
ZGV2X3ByaXYsICZ0Z2xfc2FfaW5mbyk7DQo+ICAJZWxzZSBpZiAoSVNfR0VOKGRldl9wcml2LCAx
MSkpDQo+IC0tDQo+IDIuMjcuMA0KPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
