Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B9314F005
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 16:47:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921CA6FB8C;
	Fri, 31 Jan 2020 15:47:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E986E21B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 15:47:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 07:46:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,386,1574150400"; d="scan'208";a="310034241"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga001.jf.intel.com with ESMTP; 31 Jan 2020 07:46:57 -0800
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jan 2020 07:46:56 -0800
Received: from fmsmsx120.amr.corp.intel.com ([169.254.15.223]) by
 FMSMSX153.amr.corp.intel.com ([169.254.9.91]) with mapi id 14.03.0439.000;
 Fri, 31 Jan 2020 07:46:56 -0800
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: "Abodunrin, Akeem G" <akeem.g.abodunrin@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>,
 "Balestrieri, Francesco" <francesco.balestrieri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Kuoppala, Mika"
 <mika.kuoppala@intel.com>, "Kumar Valsan, Prathap"
 <prathap.kumar.valsan@intel.com>, "Dutt, Sudeep" <sudeep.dutt@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/gen7: Clear all EU/L3 residual contexts
Thread-Index: AQHV18tGPwkI6W99+0Gj4hg7mNFbPagFDriA///ZmsA=
Date: Fri, 31 Jan 2020 15:45:02 +0000
Deferred-Delivery: Fri, 31 Jan 2020 15:44:48 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68EBA55F4@fmsmsx120.amr.corp.intel.com>
References: <20200130165721.20342-1-akeem.g.abodunrin@intel.com>
 <20200130165721.20342-3-akeem.g.abodunrin@intel.com>
 <158046432762.8720.11526385420365501697@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <158046432762.8720.11526385420365501697@jlahtine-desk.ger.corp.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gen7: Clear all EU/L3 residual
 contexts
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

UmVkdWNpbmcgYXVkaWVuY2UgYXMgdGhpcyBzZXJpZXMgaXMgb2YgaGlnaCBpbnRlcmVzdCBleHRl
cm5hbGx5Lg0KDQpJIGZ1bGx5IGFncmVlIHdpdGggSm9vbmFzJyBzdWdnZXN0aW9uIGhlcmUsIGFu
ZCB3ZSBoYXZlIGJlZW4gbG9va2luZyBhdCBkb2luZyBqdXN0IHRoYXQuIEJ1dCBjYW4gd2UgaXRl
cmF0ZSBhcyBhIGZvbGxvdyB1cCBwYXRjaCBzZXJpZXM/IFB1dHRpbmcgaW4gdGhlIGluZnJhIHRv
IHN1cHBvcnQgaWd0IGFzc2VtYmx5IGZyb20gc291cmNlIHdpbGwgdGFrZSBhIGxpdHRsZSB0aW1l
IChpZ3QgYXNzZW1ibGVyIGRvZXNuJ3QgbGlrZSB0aGUgc291cmNlIHJpZ2h0IG5vdywgc28gaXQg
bG9va3MgbGlrZSBpdCB3aWxsIG5lZWQgdXBkYXRpbmcpLCBhbmQgd2UgYXJlIHVuZGVyIHByZXNz
dXJlIHRvIGdldCB0aGlzIHNlY3VyaXR5IGZpeCBvdXQuDQoNCkpvbg0KDQo+IC0tLS0tT3JpZ2lu
YWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDMxLCAyMDIwIDE6NTIg
QU0NCj4gVG86IEFib2R1bnJpbiwgQWtlZW0gRyA8YWtlZW0uZy5hYm9kdW5yaW5AaW50ZWwuY29t
PjsgV2lsc29uLCBDaHJpcyBQDQo+IDxjaHJpcy5wLndpbHNvbkBpbnRlbC5jb20+OyBQaGlsbGlw
cywgRCBTY290dCA8ZC5zY290dC5waGlsbGlwc0BpbnRlbC5jb20+Ow0KPiBWZXR0ZXIsIERhbmll
bCA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+OyBTdGV3YXJ0LCBEYXZpZCBDDQo+IDxkYXZpZC5j
LnN0ZXdhcnRAaW50ZWwuY29tPjsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgQmFs
ZXN0cmllcmksDQo+IEZyYW5jZXNjbyA8ZnJhbmNlc2NvLmJhbGVzdHJpZXJpQGludGVsLmNvbT47
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPjsgQmxvb21maWVsZCwgSm9uDQo+IDxqb24uYmxvb21maWVsZEBpbnRl
bC5jb20+OyBLdW9wcGFsYSwgTWlrYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+Ow0KPiBBcmFu
LCBPbWVyIDxvbWVyLmFyYW5AaW50ZWwuY29tPjsgUGF0aGksIFByYWd5YW5zcmkNCj4gPHByYWd5
YW5zcmkucGF0aGlAaW50ZWwuY29tPjsgS3VtYXIgVmFsc2FuLCBQcmF0aGFwDQo+IDxwcmF0aGFw
Lmt1bWFyLnZhbHNhbkBpbnRlbC5jb20+OyBEdXR0LCBTdWRlZXAgPHN1ZGVlcC5kdXR0QGludGVs
LmNvbT47DQo+IEx1Y2ssIFRvbnkgPHRvbnkubHVja0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJl
OiBbUEFUQ0ggMi8yXSBkcm0vaTkxNS9nZW43OiBDbGVhciBhbGwgRVUvTDMgcmVzaWR1YWwgY29u
dGV4dHMNCj4gDQo+IFF1b3RpbmcgQWtlZW0gRyBBYm9kdW5yaW4gKDIwMjAtMDEtMzAgMTg6NTc6
MjEpDQo+ID4gRnJvbTogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHByYXRoYXAua3VtYXIudmFsc2Fu
QGludGVsLmNvbT4NCj4gPg0KPiA+IE9uIGdlbjcgYW5kIGdlbjcuNSBkZXZpY2VzLCB0aGVyZSBj
b3VsZCBiZSBsZWZ0b3ZlciBkYXRhIHJlc2lkdWFscyBpbg0KPiA+IEVVL0wzIGZyb20gdGhlIHJl
dGlyaW5nIGNvbnRleHQuIFRoaXMgcGF0Y2ggaW50cm9kdWNlcyB3b3JrYXJvdW5kIHRvIGNsZWFy
DQo+ID4gdGhhdCByZXNpZHVhbCBjb250ZXh0cywgYnkgc3VibWl0dGluZyBhIGJhdGNoIGJ1ZmZl
ciB3aXRoIGRlZGljYXRlZCBIVw0KPiA+IGNvbnRleHQgdG8gdGhlIEdQVSB3aXRoIHJpbmcgYWxs
b2NhdGlvbiBmb3IgZWFjaCBjb250ZXh0IHN3aXRjaGluZy4NCj4gPg0KPiA+IFRoaXMgc2VjdXJp
dHkgbWl0aWdhdGlvbiBjaGFuZ2UgZG9lcyBub3QgdHJpZ2dlciBhbnkgcGVyZm9ybWFuY2UNCj4g
PiByZWdyZXNzaW9uLiBQZXJmb3JtYW5jZSBpcyBvbiBwYXIgd2l0aCBjdXJyZW50IG1haW5saW5l
L2RybS10aXAuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBQcmF0aGFwIEt1bWFy
IFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFrZWVtIEcgQWJvZHVucmluIDxha2VlbS5nLmFib2R1bnJpbkBpbnRlbC5jb20+DQo+ID4g
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXMucC53aWxzb25AaW50ZWwuY29tPg0KPiA+IENjOiBCYWxl
c3RyaWVyaSBGcmFuY2VzY28gPGZyYW5jZXNjby5iYWxlc3RyaWVyaUBpbnRlbC5jb20+DQo+ID4g
Q2M6IEJsb29tZmllbGQgSm9uIDxqb24uYmxvb21maWVsZEBpbnRlbC5jb20+DQo+ID4gQ2M6IER1
dHQgU3VkZWVwIDxzdWRlZXAuZHV0dEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2dlbjdfcmVuZGVyY2xlYXIuYyAgICB8IDUzNSArKysrKysrKysr
KysrKysrKysNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5o
ICAgIHwgIDE1ICsNCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1h
bmRzLmggIHwgIDE3ICstDQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJt
aXNzaW9uLmMgICB8ICAgMyArLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxz
LmggICAgICAgICAgICAgfCAgIDUgKw0KPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDU3MiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jDQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9nZW43X3JlbmRlcmNsZWFyLmgNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlDQo+ID4gaW5kZXggM2M4OGQ3ZDhjNzY0Li5mOTZiYWU2NjRhMDMg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQ0KPiA+IEBAIC03OCw2ICs3OCw3IEBAIGd0
LXkgKz0gXA0KPiA+ICAgICAgICAgZ3QvZGVidWdmc19ndC5vIFwNCj4gPiAgICAgICAgIGd0L2Rl
YnVnZnNfZ3RfcG0ubyBcDQo+ID4gICAgICAgICBndC9nZW42X3BwZ3R0Lm8gXA0KPiA+ICsgICAg
ICAgZ3QvZ2VuN19yZW5kZXJjbGVhci5vIFwNCj4gPiAgICAgICAgIGd0L2dlbjhfcHBndHQubyBc
DQo+ID4gICAgICAgICBndC9pbnRlbF9icmVhZGNydW1icy5vIFwNCj4gPiAgICAgICAgIGd0L2lu
dGVsX2NvbnRleHQubyBcDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2dlbjdfcmVuZGVyY2xlYXIuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2dlbjdfcmVu
ZGVyY2xlYXIuYw0KPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+ID4gaW5kZXggMDAwMDAwMDAw
MDAwLi5hNmY1ZjE2MDJlMzMNCj4gPiAtLS0gL2Rldi9udWxsDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvZ2VuN19yZW5kZXJjbGVhci5jDQo+ID4gQEAgLTAsMCArMSw1MzUgQEAN
Cj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0KPiA+ICsvKg0KPiA+ICsgKiBD
b3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbg0KPiA+ICsgKi8NCj4gPiArDQo+ID4g
KyNpbmNsdWRlICJnZW43X3JlbmRlcmNsZWFyLmgiDQo+ID4gKyNpbmNsdWRlICJpOTE1X2Rydi5o
Ig0KPiA+ICsjaW5jbHVkZSAiaTkxNV91dGlscy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfZ3B1
X2NvbW1hbmRzLmgiDQo+ID4gKw0KPiA+ICsjZGVmaW5lIE1BWF9VUkJfRU5UUklFUyA2NA0KPiA+
ICsjZGVmaW5lIFNUQVRFX1NJWkUgKDQgKiAxMDI0KQ0KPiA+ICsjZGVmaW5lIEdUM19JTkxJTkVf
REFUQV9ERUxBWVMgMHgxRTAwDQo+ID4gKyNkZWZpbmUgYmF0Y2hfYWR2YW5jZShZLCBDUykgR0VN
X0JVR19PTigoWSktPmVuZCAhPSAoQ1MpKQ0KPiA+ICsNCj4gPiArLyoNCj4gPiArICogTWVkaWEg
Q0IgS2VybmVsIGZvciBnZW43IGRldmljZXMNCj4gPiArICogVE9ETzogQWRkIGNvbW1lbnRzIHRv
IGtlcm5lbCwgaW5kaWNhdGluZyB3aGF0IGVhY2ggYXJyYXkgb2YgaGV4IGRvZXMNCj4gb3INCj4g
PiArICogaW5jbHVkZSBoZWFkZXIgZmlsZSwgd2hpY2ggaGFzIGFzc2VtYmx5IHNvdXJjZSBhbmQg
c3VwcG9ydCBpbiBpZ3QgdG8gYmUNCj4gPiArICogYWJsZSB0byBnZW5lcmF0ZSBrZXJuZWwgaW4g
dGhpcyBzYW1lIGZvcm1hdA0KPiA+ICsgKi8NCj4gDQo+IEhhdmluZyB0aGUgb3JpZ2luYWwgc291
cmNlIGNvZGUgZm9yIHRoZSBrZXJuZWxzIGluIElHVCBpcyB0aGUNCj4gYmVzdCB3YXkgdG8gcHJv
Y2VlZC4gVGhlIGtlcm5lbHMgc2hvdWxkIGFsc28gYmUgc3BsaXQgaW50bw0KPiBzZXBhcmF0ZSBm
aWxlcyB3aGljaCBjYW4gYmUgZ2VuZXJhdGVkIGZyb20gSUdUIGFuZCBjb3BpZWQNCj4gb3ZlciBh
cy1pcyBmb3IgZWFzeSB2ZXJpZmljYXRpb24uDQo+IA0KPiBSZWdhcmRzLCBKb29uYXMNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
