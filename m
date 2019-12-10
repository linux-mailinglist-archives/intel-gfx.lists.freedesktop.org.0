Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD87D119195
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 21:10:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70B96E172;
	Tue, 10 Dec 2019 20:10:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF176E172
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 20:10:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 12:10:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,300,1571727600"; d="scan'208";a="210492925"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 10 Dec 2019 12:10:54 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 10 Dec 2019 12:10:53 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.123]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.244]) with mapi id 14.03.0439.000;
 Tue, 10 Dec 2019 12:10:53 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
Thread-Index: AQHVmXedYgJkjC6M2Ues/e6bebX2bqe0X96AgAAa2ICAAARQgA==
Date: Tue, 10 Dec 2019 20:10:53 +0000
Message-ID: <d0e974e42f3bb1b385c99faf47cc3634bb0bf953.camel@intel.com>
References: <20191112163812.22075-1-ville.syrjala@linux.intel.com>
 <20191112163812.22075-3-ville.syrjala@linux.intel.com>
 <8bd8a68e72804b48a1270877a8d62eeb8c4a08df.camel@intel.com>
 <20191210195527.GC1208@intel.com>
In-Reply-To: <20191210195527.GC1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.40.69]
Content-ID: <CED60AA8632F544C9C11DD066C72CE09@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: ELiminate
 intel_pipe_to_cpu_transcoder() from assert_fdi_tx()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDE5LTEyLTEwIGF0IDIxOjU1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgRGVjIDEwLCAyMDE5IGF0IDA2OjE5OjI0UE0gKzAwMDAsIFNvdXphLCBKb3Nl
IHdyb3RlOg0KPiA+IE9uIFR1ZSwgMjAxOS0xMS0xMiBhdCAxODozOCArMDIwMCwgVmlsbGUgU3ly
amFsYSB3cm90ZToNCj4gPiA+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+DQo+ID4gPiANCj4gPiA+IExldCdzIHN0YXJ0IHRvIGVsaW1pbmF0ZSBp
bnRlbF9waXBlX3RvX2NwdV90cmFuc2NvZGVyKCkgc28gdGhhdA0KPiA+ID4gd2UgY2FuIGdldCBy
aWQgb2Ygb25lIG1vcmUgY3J0Yy0+Y29uZmlnIHVzYWdlICh3aGljaCB3ZSB3aWxsIHdhbnQNCj4g
PiA+IHRvIG51a2UgYXMgd2VsbCkuDQo+ID4gPiANCj4gPiA+IEluIHRoZSBjYXNlIG9mIGFzc2Vy
dF9mZGlfdHgoKSB3ZSBrbm93IHRoYXQgd2UncmUgbmV2ZXINCj4gPiA+IGRlYWxpbmcgd2l0aCB0
aGUgRURQIHRyYW5zY29kZXIgc28gd2UgY2FuIHNpbXBseSByZXBsYWNlDQo+ID4gPiB0aGlzIHdp
dGggYSBjYXN0Lg0KPiA+IA0KPiA+IFRoZXJlIHN0aWxsIG9uZSBFRFAgdHJhbnNjb2RlciBjYXNl
IHdoZW4gcnVubmluZyBpbiBhIEhTVzoNCj4gPiANCj4gPiBoYXN3ZWxsX2NydGNfZW5hYmxlKCkN
Cj4gPiAJbHB0X3BjaF9lbmFibGUoKQ0KPiA+IAkJbHB0X2VuYWJsZV9wY2hfdHJhbnNjb2Rlcigp
DQo+ID4gCQkJYXNzZXJ0X2ZkaV90eF9lbmFibGVkKCkNCj4gDQo+IFRoZSB0cmFuc2NvZGVyIHdp
bGwgbmV2ZXIgRURQLiBCdXQgdGhpcyBjYXN0aW5nIGJhY2sgYW5kIGZvcnRoIA0KPiBpcyBhIGJp
dCB1Z2x5LiBNYXliZSBJIHNob3VsZCBqdXN0IGtpbGwgdGhlc2UgRkRJIFRYIGFzc2VydHMNCj4g
ZnJvbSB0aGUgaHN3L2JkdyBjb2RlLi4uDQoNCk9oIG1pc3JlYWQgY3J0IHdpdGggY3J0Yywgc28g
aGFzX3BjaF9lbmNvZGVyIHdpbGwgbm90IGJlIHNldCBmb3IgZWRwLg0KDQpSZXZpZXdlZC1ieTog
Sm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQoNCj4gDQo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAxMCArKysrKysrLS0tDQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBpbmRleCBl
N2U1NDk3ZTZmMmUuLmNhYmQ4ODMzNzgyMiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gQEAgLTExNDEsMTEgKzEx
NDEsMTUgQEAgc3RhdGljIHZvaWQgYXNzZXJ0X2ZkaV90eChzdHJ1Y3QNCj4gPiA+IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LA0KPiA+ID4gIAkJCSAgZW51bSBwaXBlIHBpcGUsIGJvb2wgc3Rh
dGUpDQo+ID4gPiAgew0KPiA+ID4gIAlib29sIGN1cl9zdGF0ZTsNCj4gPiA+IC0JZW51bSB0cmFu
c2NvZGVyIGNwdV90cmFuc2NvZGVyID0NCj4gPiA+IGludGVsX3BpcGVfdG9fY3B1X3RyYW5zY29k
ZXIoZGV2X3ByaXYsDQo+ID4gPiAtCQkJCQkJCQkgICAgICBwDQo+ID4gPiBpcGUpOw0KPiA+ID4g
IA0KPiA+ID4gIAlpZiAoSEFTX0RESShkZXZfcHJpdikpIHsNCj4gPiA+IC0JCS8qIERESSBkb2Vz
IG5vdCBoYXZlIGEgc3BlY2lmaWMgRkRJX1RYIHJlZ2lzdGVyICovDQo+ID4gPiArCQkvKg0KPiA+
ID4gKwkJICogRERJIGRvZXMgbm90IGhhdmUgYSBzcGVjaWZpYyBGRElfVFggcmVnaXN0ZXIuDQo+
ID4gPiArCQkgKg0KPiA+ID4gKwkJICogRkRJIGlzIG5ldmVyIGhvb2tlZCBmZWQgZnJvbSBFRFAg
dHJhbnNjb2Rlcg0KPiA+ID4gKwkJICogc28gcGlwZS0+dHJhbnNjb2RlciBjYXN0IGlzIGZpbmUg
aGVyZS4NCj4gPiA+ICsJCSAqLw0KPiA+ID4gKwkJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2Nv
ZGVyID0gKGVudW0gdHJhbnNjb2RlcilwaXBlOw0KPiA+ID4gIAkJdTMyIHZhbCA9DQo+ID4gPiBJ
OTE1X1JFQUQoVFJBTlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7DQo+ID4gPiAgCQlj
dXJfc3RhdGUgPSAhISh2YWwgJiBUUkFOU19ERElfRlVOQ19FTkFCTEUpOw0KPiA+ID4gIAl9IGVs
c2Ugew0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
