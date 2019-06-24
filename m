Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF48E51CDE
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 23:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A676189D61;
	Mon, 24 Jun 2019 21:11:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F86089D61
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 21:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 14:11:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,413,1557212400"; d="scan'208";a="336625265"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 24 Jun 2019 14:11:10 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 24 Jun 2019 14:11:09 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 FMSMSX109.amr.corp.intel.com ([169.254.15.43]) with mapi id 14.03.0439.000;
 Mon, 24 Jun 2019 14:11:09 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
Thread-Index: AQHVJvMVU9N/RGQoqEq4aTOv8rPaoaakp28AgACdgwCABoUugA==
Date: Mon, 24 Jun 2019 21:11:08 +0000
Message-ID: <5263d1cfbc1fe95596dfa47b2e794e298fd670fa.camel@intel.com>
References: <20190619230222.4346-1-jose.souza@intel.com>
 <20190619230222.4346-3-jose.souza@intel.com> <878stwu12j.fsf@intel.com>
 <a0e7424a0c7e856c79fc3a05959f475b9fe67f8b.camel@intel.com>
In-Reply-To: <a0e7424a0c7e856c79fc3a05959f475b9fe67f8b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.250]
Content-ID: <135B1D32BD5E2D4EAA5A8FC0D8A40517@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTIwIGF0IDE3OjM2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gVGh1LCAyMDE5LTA2LTIwIGF0IDExOjEzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
PiBPbiBXZWQsIDE5IEp1biAyMDE5LCBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCj4gPiB3cm90ZToNCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gPiA+IGluZGV4IDRmYzhkYzA4Mzc2Ni4uMzFmYjRkZTUwODFjIDEwMDY0NA0KPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ID4gQEAgLTQyMjUsMTAgKzQyMjUsMTggQEAg
ZW51bSB7DQo+ID4gPiAgI2RlZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5z
LCBfUElQRUFTUkMpDQo+ID4gPiAgI2RlZmluZSBQSVBFX01VTFQodHJhbnMpCV9NTUlPX1RSQU5T
Mih0cmFucywgX1BJUEVfTVVMVF9BKQ0KPiA+ID4gIA0KPiA+ID4gLS8qIEhTVysgZURQIFBTUiBy
ZWdpc3RlcnMgKi8NCj4gPiA+IC0jZGVmaW5lIEhTV19FRFBfUFNSX0JBU0UJMHg2NDgwMA0KPiA+
ID4gLSNkZWZpbmUgQkRXX0VEUF9QU1JfQkFTRQkweDZmODAwDQo+ID4gPiAtI2RlZmluZSBFRFBf
UFNSX0NUTAkJCQlfTU1JTyhkZXZfcHJpdi0NCj4gPiA+ID4gcHNyX21taW9fYmFzZSArIDApDQo+
ID4gPiArLyoNCj4gPiA+ICsgKiBIU1crIGVEUCBQU1IgcmVnaXN0ZXJzDQo+ID4gPiArICoNCj4g
PiA+ICsgKiBIU1cgUFNSIHJlZ2lzdGVycyBhcmUgcmVsYXRpdmUgdG8gRERJQShfRERJX0JVRl9D
VExfQSArDQo+ID4gPiAweDgwMCkNCj4gPiA+IHdpdGgganVzdCBvbmUNCj4gPiA+ICsgKiBpbnN0
YW5jZSBvZiBpdA0KPiA+ID4gKyAqLw0KPiA+ID4gKyNkZWZpbmUgX0hTV19FRFBfUFNSX0JBU0UJ
CQkweDY0ODAwDQo+ID4gPiArI2RlZmluZSBfU1JEX0NUTF9BCQkJCTB4NjA4MDANCj4gPiA+ICsj
ZGVmaW5lIF9TUkRfQ1RMX0VEUAkJCQkweDZmODAwDQo+ID4gPiArI2RlZmluZSBfSFNXX1BTUl9B
REoocmVnKQkJCSgocmVnKSAtDQo+ID4gPiBfU1JEX0NUTF9BICsNCj4gPiA+IF9IU1dfRURQX1BT
Ul9CQVNFKQ0KPiA+ID4gKyNkZWZpbmUgX1BTUl9BREoodHJhbiwgcmVnKQkJCShJU19IQVNXRUxM
KGRldg0KPiA+ID4gX3ByaXYpID8gX0hTV19QU1JfQURKKHJlZykgOiBfVFJBTlMyKHRyYW4sIHJl
ZykpDQo+ID4gPiArI2RlZmluZSBFRFBfUFNSX0NUTCh0cmFuKQkJCV9NTUlPKF9QU1JfQURKKA0K
PiA+ID4gdHJhbiwNCj4gPiA+IF9TUkRfQ1RMX0EpKQ0KPiA+IA0KPiA+IFRoZXJlIGFyZSBjdXJy
ZW50bHkgdGhyZWUgaW5zdGFuY2VzIG9mIHBsYXRmb3JtL2dlbiBjaGVja3MgaW4NCj4gPiBpOTE1
X3JlZy5oLiBUaGV5IGFyZSB0aGUgZXhjZXB0aW9uLCBhbmQgdGhleSdyZSBpbiBpbmRpdmlkdWFs
DQo+ID4gbWFjcm9zDQo+ID4gdGhhdCBhcmVuJ3QgZXZlbiByZWdpc3RlciBvZmZzZXQgZGVmaW5p
dGlvbnMgbGV0IGFsb25lIGhlbHBlcnMgdGhhdA0KPiA+IGdldA0KPiA+IHByb2xpZmVyYXRlZCB0
byBzZXZlcmFsIG90aGVyIG1hY3Jvcy4NCj4gPiANCj4gPiBUaGlzIGNoYW5nZSBoZXJlIGlzIHF1
aXRlIGEgYmlnIHByZWNlZGVudCBpbiB0aGF0IHJlZ2FyZCwgYW5kIG5vdA0KPiA+IHRvDQo+ID4g
YmUNCj4gPiBkb25lIGxpZ2h0bHkuIFVzdWFsbHkgdGhlIGNhc2UgaXMgb3RoZXJzIHdpbGwgZm9s
bG93IHN1aXQsIHNvIHRoaXMNCj4gPiBpcw0KPiA+IG5vdCBqdXN0IGFib3V0IHRoaXMgb25lIGlu
c3RhbmNlLiBJdCdzIGFib3V0IGRlY2lkaW5nIHdoZXRoZXIgdGhpcw0KPiA+IGlzDQo+ID4gdGhl
IGRpcmVjdGlvbiB3ZSB3YW50IHRvIHRha2UuIEhvdyBmYXIgYXJlIHdlIHByZXBhcmVkIHRvIGdv
IGFuZA0KPiA+IGhvdw0KPiA+IGRvDQo+ID4gd2Ugc3RvcCB0aGVyZT8NCj4gPiANCj4gPiBUaGVy
ZSdzIHJlYWxseSBubyB3YXkgdG8gc2V0IHRoZSBwc3ItPnRyYW5zY29kZXIgc3VjaCBvbiBIU1cg
dGhhdA0KPiA+IGl0DQo+ID4gd291bGQgd29yayB3aXRoIE1NSU9fVFJBTlMyKCk/DQo+IA0KPiBJ
J20gZ29pbmcgdG8gdGhpbmsgYWJvdXQgYnV0IHJpZ2h0IG5vdyB0aGUgb25seSBvdGhlciBvcHRp
b24gdGhhdA0KPiBjb21lcw0KPiBpbiBteSBtaW5kIGlzIHRvIGhhdmUgdGhlIHRyYW5zY29kZXIg
b2Zmc2V0IGFzIG1hY3JvIHBhcmFtZXRlcjoNCj4gDQo+ICNkZWZpbmUgX1NSRF9DVEwgMHg4MDAN
Cj4gI2RlZmluZSBFRFBfUFNSX0NUTCh0cmFucykgX01NSU8odHJhbnMgKyBfU1JEX0NUTCkNCj4g
DQo+IEJ1dCB3ZSB3b3VsZCBsb3NlIHRoZSBmdWxsIG9mZnNldCBhZGRyZXNzIG9mIFBTUiByZWdp
c3RlcnMuDQoNClRoaXMgaXMgdGhlIG9ubHkgb3RoZXIgZ29vZCBvcHRpb24gdGhhdCBJIGNhbiB0
aGluayBhYm91dC4NCg0KQW55IG90aGVyIGlkZWEgREs/DQoNCj4gDQo+ID4gQlIsDQo+ID4gSmFu
aS4NCj4gPiANCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
