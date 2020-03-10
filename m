Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1B517F8FB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9256889CE1;
	Tue, 10 Mar 2020 12:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4271189CE1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:52:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 05:52:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="441290397"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2020 05:52:53 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 05:52:53 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Mar 2020 05:52:53 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.111]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.153]) with mapi id 14.03.0439.000;
 Tue, 10 Mar 2020 18:22:49 +0530
From: "B S, Karthik" <karthik.b.s@intel.com>
To: "Zanoni, Paulo R" <paulo.r.zanoni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 5/7] drm/i915: Add flip_done_handler definition
Thread-Index: AQHV86zmOD9/muZcb062AyRTySJRVKhAjscAgAE/EYA=
Date: Tue, 10 Mar 2020 12:52:48 +0000
Message-ID: <7138C0D2D3905F4CB0CD9B8757DFA969274B4C36@BGSMSX104.gar.corp.intel.com>
References: <20200306113927.16904-1-karthik.b.s@intel.com>
 <20200306113927.16904-6-karthik.b.s@intel.com>
 <6931b691b2a49878110f308ad16230a07b260842.camel@intel.com>
In-Reply-To: <6931b691b2a49878110f308ad16230a07b260842.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 5/7] drm/i915: Add flip_done_handler definition
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBaYW5vbmksIFBhdWxvIFIgPHBh
dWxvLnIuemFub25pQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgTWFyY2ggMTAsIDIwMjAg
NDo0OSBBTQ0KPiBUbzogQiBTLCBLYXJ0aGlrIDxrYXJ0aGlrLmIuc0BpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbTsgS3Vsa2FybmksIFZhbmRpdGENCj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
PjsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UkZDIDUvN10gZHJtL2k5MTU6IEFkZCBmbGlwX2RvbmVfaGFuZGxlciBkZWZpbml0aW9uDQo+IA0K
PiBFbSBzZXgsIDIwMjAtMDMtMDYgw6BzIDE3OjA5ICswNTMwLCBLYXJ0aGlrIEIgUyBlc2NyZXZl
dToNCj4gPiBTZW5kIHRoZSBmbGlwIGRvbmUgZXZlbnQgaW4gdGhlIGhhbmRsZXIgYW5kIGRpc2Fi
bGUgdGhlIGludGVycnVwdC4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEthcnRoaWsgQiBTIDxr
YXJ0aGlrLmIuc0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfaXJxLmMgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDE4IGluc2VydGlvbnMoKykNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGlu
ZGV4IDU5NTVlNzM3YTQ1ZC4uMWZlZGE5YWVjZjRhDQo+ID4gMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmMNCj4gPiBAQCAtMTI0Myw2ICsxMjQzLDI0IEBAIGRpc3BsYXlfcGlwZV9j
cmNfaXJxX2hhbmRsZXIoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+
ICAJCQkgICAgIHUzMiBjcmM0KSB7fQ0KPiA+ICAjZW5kaWYNCj4gPg0KPiA+ICtzdGF0aWMgdm9p
ZCBmbGlwX2RvbmVfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+
ID4gKwkJCSAgICAgIHVuc2lnbmVkIGludCBwaXBlKQ0KPiANCj4gVGhlIGNvbXBpbGVyIGlzIGdv
aW5nIHRvIGNvbXBsYWluIHRoYXQgd2UgYWRkZWQgYSBzdGF0aWMgZnVuY3Rpb24gd2l0aCBubw0K
PiBjYWxsZXIuDQo+IA0KPiBTZWUgbXkgY29tbWVudCBvbiBjb21taXQgMTogcGxlYXNlIHNxdWFz
aCB0aGlzIHBhdGNoIHdpdGggdGhlIG9uZSB0aGF0DQo+IG1ha2VzIHVzZSBvZiB0aGUgbmV3IGZ1
bmN0aW9uLg0KDQpTdXJlLiBXaWxsIHJlc3RydWN0dXJlIHRoZSBwYXRjaGVzIGFzIHBlciB5b3Vy
IGZlZWRiYWNrLiBUaGFua3MuDQo+IA0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9IGludGVsX2dldF9jcnRjX2Zvcl9waXBlKGRldl9wcml2LCBwaXBlKTsNCj4gPiArCXN0
cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9IGNydGMtPmJhc2Uuc3RhdGU7DQo+ID4g
KwlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07DQo+ID4gKwl1bnNpZ25l
ZCBsb25nIGlycWZsYWdzOw0KPiA+ICsNCj4gPiArCXNwaW5fbG9ja19pcnFzYXZlKCZkZXYtPmV2
ZW50X2xvY2ssIGlycWZsYWdzKTsNCj4gPiArDQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+ZXZlbnQt
PmJhc2UuZXZlbnQtPnR5cGUgPT0NCj4gRFJNX0VWRU5UX0ZMSVBfQ09NUExFVEUpIHsNCj4gPiAr
CQlkcm1fY3J0Y19zZW5kX3ZibGFua19ldmVudCgmY3J0Yy0+YmFzZSwgY3J0Y19zdGF0ZS0NCj4g
PmV2ZW50KTsNCj4gPiArCQljcnRjX3N0YXRlLT5ldmVudCA9IE5VTEw7DQo+ID4gKwl9DQo+ID4g
Kw0KPiA+ICsJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmZGV2LT5ldmVudF9sb2NrLCBpcnFmbGFn
cyk7DQo+ID4gKwlpY2xfZGlzYWJsZV9mbGlwX2RvbmUoJmNydGMtPmJhc2UpOw0KPiA+ICt9DQo+
ID4NCj4gPiAgc3RhdGljIHZvaWQgaHN3X3BpcGVfY3JjX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gPiAgCQkJCSAgICAgZW51bSBwaXBlIHBpcGUpDQoN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
