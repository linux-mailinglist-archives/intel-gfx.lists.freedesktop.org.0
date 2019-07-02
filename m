Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E64B95C673
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 02:49:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8522589CBE;
	Tue,  2 Jul 2019 00:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9105489CBE
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 00:49:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 17:49:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,441,1557212400"; d="scan'208";a="186664575"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 17:49:05 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.210]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.66]) with mapi id 14.03.0439.000;
 Mon, 1 Jul 2019 17:49:05 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 3/4] drm/i915/psr: Make PSR registers
 relative to transcoders
Thread-Index: AQHVJvMVU9N/RGQoqEq4aTOv8rPaoaakp28AgACdgwCABoUugIAGoTKAgAR0NYCAACfPAA==
Date: Tue, 2 Jul 2019 00:49:05 +0000
Message-ID: <0fbae123334d9ebacedb6ff191af8d41b1f4d621.camel@intel.com>
References: <20190619230222.4346-1-jose.souza@intel.com>
 <20190619230222.4346-3-jose.souza@intel.com> <878stwu12j.fsf@intel.com>
 <a0e7424a0c7e856c79fc3a05959f475b9fe67f8b.camel@intel.com>
 <5263d1cfbc1fe95596dfa47b2e794e298fd670fa.camel@intel.com>
 <ee78f346f2f98c1856764f8bc38a771cde8cbe97.camel@intel.com>
 <8e20188439f9dcb8312ddaedb8582ffac386548b.camel@intel.com>
In-Reply-To: <8e20188439f9dcb8312ddaedb8582ffac386548b.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <AB8E89C094019342822BC61F85A3C889@intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA3LTAxIGF0IDIyOjI2ICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDE5LTA2LTI4IGF0IDE5OjI1IC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdy
b3RlOg0KPiA+IE9uIE1vbiwgMjAxOS0wNi0yNCBhdCAxNDoxMSAtMDcwMCwgU291emEsIEpvc2Ug
d3JvdGU6DQo+ID4gPiA+ID4gPiArI2RlZmluZSBfSFNXX0VEUF9QU1JfQkFTRSAgICAgICAgICAg
ICAgICAgICAgICAgIDB4NjQ4MDANCj4gPiA+ID4gPiA+ICsjZGVmaW5lIF9TUkRfQ1RMX0EgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgMHg2MDgwMA0KPiA+ID4gPiA+ID4gKyNkZWZpbmUg
X1NSRF9DVExfRURQICAgICAgICAgICAgICAgICAgICAgICAgICAgICAweDZmODAwDQo+ID4gPiA+
ID4gPiArI2RlZmluZSBfSFNXX1BTUl9BREoocmVnKSAgICAgICAgICAgICAgICAgICAgICAgICgo
cmVnKSAtDQo+ID4gPiA+ID4gPiBfU1JEX0NUTF9BICsNCj4gPiA+ID4gPiA+IF9IU1dfRURQX1BT
Ul9CQVNFKQ0KPiA+ID4gPiA+ID4gKyNkZWZpbmUgX1BTUl9BREoodHJhbiwNCj4gPiA+ID4gPiA+
IHJlZykgICAgICAgICAgICAgICAgICAgICAgKElTX0hBU1dFTEwoZGV2DQo+ID4gPiA+ID4gPiBf
cHJpdikgPyBfSFNXX1BTUl9BREoocmVnKSA6IF9UUkFOUzIodHJhbiwgcmVnKSkNCj4gPiA+ID4g
PiA+ICsjZGVmaW5lDQo+ID4gPiA+ID4gPiBFRFBfUFNSX0NUTCh0cmFuKSAgICAgICAgICAgICAg
ICAgICAgICAgIF9NTUlPKF9QU1JfQURKKA0KPiA+ID4gPiA+ID4gdHJhbiwNCj4gPiA+ID4gPiA+
IF9TUkRfQ1RMX0EpKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFRoZXJlIGFyZSBjdXJyZW50bHkg
dGhyZWUgaW5zdGFuY2VzIG9mIHBsYXRmb3JtL2dlbiBjaGVja3MgaW4NCj4gPiA+ID4gPiBpOTE1
X3JlZy5oLiBUaGV5IGFyZSB0aGUgZXhjZXB0aW9uLCBhbmQgdGhleSdyZSBpbiBpbmRpdmlkdWFs
DQo+ID4gPiA+ID4gbWFjcm9zDQo+ID4gPiA+ID4gdGhhdCBhcmVuJ3QgZXZlbiByZWdpc3RlciBv
ZmZzZXQgZGVmaW5pdGlvbnMgbGV0IGFsb25lDQo+ID4gPiA+ID4gaGVscGVycw0KPiA+ID4gPiA+
IHRoYXQNCj4gPiA+ID4gPiBnZXQNCj4gPiA+ID4gPiBwcm9saWZlcmF0ZWQgdG8gc2V2ZXJhbCBv
dGhlciBtYWNyb3MuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gVGhpcyBjaGFuZ2UgaGVyZSBpcyBx
dWl0ZSBhIGJpZyBwcmVjZWRlbnQgaW4gdGhhdCByZWdhcmQsIGFuZA0KPiA+ID4gPiA+IG5vdA0K
PiA+ID4gPiA+IHRvDQo+ID4gPiA+ID4gYmUNCj4gPiA+ID4gPiBkb25lIGxpZ2h0bHkuIFVzdWFs
bHkgdGhlIGNhc2UgaXMgb3RoZXJzIHdpbGwgZm9sbG93IHN1aXQsIHNvDQo+ID4gPiA+ID4gdGhp
cw0KPiA+ID4gPiA+IGlzDQo+ID4gPiA+ID4gbm90IGp1c3QgYWJvdXQgdGhpcyBvbmUgaW5zdGFu
Y2UuIEl0J3MgYWJvdXQgZGVjaWRpbmcgd2hldGhlcg0KPiA+ID4gPiA+IHRoaXMNCj4gPiA+ID4g
PiBpcw0KPiA+ID4gPiA+IHRoZSBkaXJlY3Rpb24gd2Ugd2FudCB0byB0YWtlLiBIb3cgZmFyIGFy
ZSB3ZSBwcmVwYXJlZCB0byBnbw0KPiA+ID4gPiA+IGFuZA0KPiA+ID4gPiA+IGhvdw0KPiA+ID4g
PiA+IGRvDQo+ID4gPiA+ID4gd2Ugc3RvcCB0aGVyZT8NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBU
aGVyZSdzIHJlYWxseSBubyB3YXkgdG8gc2V0IHRoZSBwc3ItPnRyYW5zY29kZXIgc3VjaCBvbiBI
U1cNCj4gPiA+ID4gPiB0aGF0DQo+ID4gPiA+ID4gaXQNCj4gPiA+ID4gPiB3b3VsZCB3b3JrIHdp
dGggTU1JT19UUkFOUzIoKT8NCj4gPiA+ID4gDQo+ID4gPiA+IEknbSBnb2luZyB0byB0aGluayBh
Ym91dCBidXQgcmlnaHQgbm93IHRoZSBvbmx5IG90aGVyIG9wdGlvbg0KPiA+ID4gPiB0aGF0DQo+
ID4gPiA+IGNvbWVzDQo+ID4gPiA+IGluIG15IG1pbmQgaXMgdG8gaGF2ZSB0aGUgdHJhbnNjb2Rl
ciBvZmZzZXQgYXMgbWFjcm8gcGFyYW1ldGVyOg0KPiA+ID4gPiANCj4gPiA+ID4gI2RlZmluZSBf
U1JEX0NUTCAweDgwMA0KPiA+ID4gPiAjZGVmaW5lIEVEUF9QU1JfQ1RMKHRyYW5zKSBfTU1JTyh0
cmFucyArIF9TUkRfQ1RMKQ0KPiA+ID4gPiANCj4gPiA+ID4gQnV0IHdlIHdvdWxkIGxvc2UgdGhl
IGZ1bGwgb2Zmc2V0IGFkZHJlc3Mgb2YgUFNSIHJlZ2lzdGVycy4NCj4gPiA+IA0KPiA+ID4gVGhp
cyBpcyB0aGUgb25seSBvdGhlciBnb29kIG9wdGlvbiB0aGF0IEkgY2FuIHRoaW5rIGFib3V0Lg0K
PiA+ID4gDQo+ID4gPiBBbnkgb3RoZXIgaWRlYSBESz8NCj4gPiBObyBnb29kIG9uZXMgdW5mb3J0
dW5hdGVseS4gVGhpcyBpcyB0aGUgc2ltcGxlc3Qgb25lIEkgY291bGQgdGhpbmsNCj4gPiBvZg0K
PiA+IA0KPiA+IGludGVsX3Bzcl9pbml0KCkNCj4gPiB7DQo+ID4gLi4uDQo+ID4gaWYoSVNfSEFT
V0VMTChkZXZfcHJpdikpDQo+ID4gCWRldl9wcml2LT5wc3IuaHN3X2FkanVzdCA9IF9TUkRfQ1RM
X0VEUCAtIF9IU1dfRURQX1BTUl9CQVNFOyANCj4gPiAuLi4NCj4gPiB9DQo+ID4gDQo+ID4gDQo+
ID4gI2RlZmluZSBfTU1JT19QU1IodHJhbiwgcmVnKSBfTU1JT19UUkFOUzIodHJhbiwgcmVnIC0N
Cj4gPiBkZXZfcHJpdi5wc3IuaHN3X2FkanVzdCkNCj4gPiAjZGVmaW5lIEVEUF9QU1JfQ1RMKHRy
YW4pIF9NTUlPX1BTUih0cmFuLCBfU1JEX0NUTF9BKQ0KPiA+IA0KPiA+IA0KPiA+IHNob3VsZCB3
b3JrIGJlY2F1c2UgdHJhbiA9PSBUUkFOU0NPREVSX0VEUCBmb3IgSFNXDQo+IA0KPiBUaGUgcHJv
YmxlbSB3aXRoIHRoaXMgc3VnZ2VzdGlvbiBpcyB0aGF0IGl0IHdvdWxkIHJlcXVpcmUgbW9yZQ0K
PiBjaGFuZ2VzDQo+IHRvIHN1cHBvcnQgbXVsdGlwbGUgUFNSIGluc3RhbmNlcyBpbiBmdXR1cmUs
IHVubGVzcyB3ZSBtYWtlIGl0DQo+IHJlcXVpcmVkDQo+IHRvIGhhdmUgc3RydWN0IGludGVsX3Bz
ciAqcHNyIGRlZmluZWQgbGlrZSBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYg
aXMgcmVxdWlyZWQgYnkgSTkxNV9XUklURS9SRUFEKCkuDQo+IA0KPiANCj4gI2RlZmluZSBfTU1J
T19QU1IodHJhbiwgcmVnKSBfTU1JT19UUkFOUzIodHJhbiwgcmVnIC0gcHNyLQ0KPiA+aHN3X2Fk
anVzdCkNCj4gDQo+IElmIGNob3NlbiB0aGlzIGFwcHJvYWNoIHdlIGNvdWxkIGFscmVhZHkgY29t
cGxldGUgcmVtb3ZlIHRoZSB0cmFuDQo+IHBhcmFtZXRlcjoNCj4gDQo+ICNkZWZpbmUgX01NSU9f
UFNSKHJlZykgX01NSU9fVFJBTlMyKHBzci0+dHJhbnNjb2RlciwgcmVnIC0gcHNyLQ0KPiA+IGhz
d19hZGp1c3QpDQoNCk90aGVyIG9wdGlvbiBoZXJlOg0KDQojZGVmaW5lIF9NTUlPX1BTUih0cmFu
LCByZWcpIF9NTUlPX1RSQU5TMih0cmFuLCByZWcgLQ0KZGV2X3ByaXYucHNyX2hzd19hZGp1c3Qp
DQoNCkFzIEhTVyBjYW4gb25seSBoYXZlIG9uZSBQU1IgaW5zdGFuY2UuDQoNCj4gDQo+ICMNCj4g
DQo+IFNvIHdlIGhhdmUgNCBvcHRpb25zOg0KPiANCj4gMSAtIFRoZSBvbmUgaW1wbGVtZW50ZWQg
aW4gdGhpcyBwYXRjaA0KPiANCj4gMiAtIE9mZnNldCBhcyBwYXJhbWV0ZXINCj4gCSNkZWZpbmUg
X1NSRF9DVEwgMHg4MDANCj4gCSNkZWZpbmUgRURQX1BTUl9DVEwodHJhbnNfb2Zmc2V0KSBfTU1J
Tyh0cmFuc19vZmZzZXQgKw0KPiBfU1JEX0NUTCkNCj4gDQo+IDMgLSBES3Mgc3VnZ2VzdGlvbiB3
aXRoIG9uZSBvZiB0aGUgc3VnZ2VzdGlvbnMgYWJvdmUgdG8gc3VwcG9ydA0KPiBtdWx0aXBsZSBQ
U1IgaW5zdGFuY2VzDQoNCg0KDQoNCj4gDQo+IDQgLSBIYXZlIEhTVyBQU1Igc3BlY2lmaWMgbWFj
cm9zIGFuZCBoYXZlIHNldmVyYWwgaWYgKElTX0hBU1dFTEwoKSkNCj4gc3ByZWFkIHRvIFBTUiBj
b2RlDQo+IA0KPiANCj4gTXkgdm90ZSBpcyBvcHRpb24gMS4NCj4gDQo+IFBsZWFzZSBsZXQgbWUg
a25vdyB5b3VyIHRob3VnaHRzPw0KPiAJDQo+IA0KPiA+IA0KPiA+IC1ESw0KPiA+IA0KPiA+IEJS
LA0KPiA+IEphbmkuDQo+ID4gDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
