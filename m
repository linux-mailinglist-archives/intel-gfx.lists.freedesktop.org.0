Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D316D63E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 23:09:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF8A6E427;
	Thu, 18 Jul 2019 21:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B63E6E427
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 21:09:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jul 2019 14:09:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,279,1559545200"; d="scan'208";a="191745834"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jul 2019 14:09:04 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.237]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.170]) with mapi id 14.03.0439.000;
 Thu, 18 Jul 2019 14:09:03 -0700
From: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 03/22] drm/i915/tgl: update ddi/tc
 clock_off bits
Thread-Index: AQHVORe48b1AanAxFEmrkexqpeqMYqbRXcGA
Date: Thu, 18 Jul 2019 21:09:03 +0000
Message-ID: <6c7996e3997028081a70b1d57446406d6bfeca62.camel@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-4-lucas.demarchi@intel.com>
In-Reply-To: <20190713010940.17711-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.8.109]
Content-ID: <7304E684A0487A4994F20630426F4AB3@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/22] drm/i915/tgl: update ddi/tc clock_off
 bits
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
Cc: "mahesh1.kumar@intel.com" <mahesh1.kumar@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA3LTEyIGF0IDE4OjA5IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEZyb206IE1haGVzaCBLdW1hciA8bWFoZXNoMS5rdW1hckBpbnRlbC5jb20+DQo+IA0KPiBJ
biBHRU4gMTIgUE9SVF9DIERESSBjbGtfb2ZmIGJpdCBpcyBub3QgZXF1YWxseSBkaXN0YW5jZWQg
dG8gQS9CLA0KPiBpdCdzIGF0IG9mZnNldCAyNC4gU2ltaWxhcmx5IFRDIHBvcnQgKDUvNikgY2xr
IG9mZiBiaXRzIGFyZSBhdA0KPiBvZmZzZXQgMjIvMjMuIEV4dGVuZCB0aGUgbWFjcm9zIHRvIGNv
dmVyIHRoZSBhZGRpdGlvbmFsIHBvcnRzLg0KPiANClJldmlld2VkLWJ5OiBNYXR0IEF0d29vZCA8
bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIgPG1haGVzaDEu
a3VtYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2Fz
LmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgNSArKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCBkZWY3
MWZkMmU0ZDEuLmQ4NzNkOWZiYmYwZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+
IEBAIC05NzQ5LDggKzk3NDksOSBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsNCj4gIA0KPiAgI2Rl
ZmluZSBJQ0xfRFBDTEtBX0NGR0NSMAkJCV9NTUlPKDB4MTY0MjgwKQ0KPiAgI2RlZmluZSAgSUNM
X0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KQkoMSA8PCBfUElDSyhwaHksIDEwLA0KPiAx
MSwgMjQpKQ0KPiAtI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0
KSAoMSA8PCAoKHRjX3BvcnQpID09DQo+IFBPUlRfVEM0ID8gXA0KPiAtCQkJCQkJICAgICAgMjEg
OiAodGNfcG9ydCkgKw0KPiAxMikpDQo+ICsjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9UQ19D
TEtfT0ZGKHRjX3BvcnQpCSgxIDw8DQo+ICgodGNfcG9ydCkgPCBQT1JUX1RDNCA/IFwNCj4gKwkJ
CQkJCSAgICAgICAodGNfcG9ydCkgKyAxMiA6DQo+IFwNCj4gKwkJCQkJCSAgICAgICAodGNfcG9y
dCkgLQ0KPiBQT1JUX1RDNCArIDIxKSkNCj4gICNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX0RE
SV9DTEtfU0VMX1NISUZUKHBoeSkJKChwaHkpICogMikNCj4gICNkZWZpbmUgIElDTF9EUENMS0Ff
Q0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KQkoMyA8PA0KPiBJQ0xfRFBDTEtBX0NGR0NSMF9E
RElfQ0xLX1NFTF9TSElGVChwaHkpKQ0KPiAgI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJ
X0NMS19TRUwocGxsLCBwaHkpCSgocGxsKSA8PA0KPiBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9TSElGVChwaHkpKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
