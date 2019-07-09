Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E985E63C29
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 21:49:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDEF889533;
	Tue,  9 Jul 2019 19:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852E289533
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 19:49:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 12:49:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="170690265"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 12:49:23 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 12:49:23 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.242]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 12:49:22 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 14/25] drm/i915/tgl: update ddi/tc clock_off bits
Thread-Index: AQHVNeNDCEzxs+vrNEKkwKrvWG21a6bDKF+A
Date: Tue, 9 Jul 2019 19:49:21 +0000
Message-ID: <ad62c6fb887e72e3cdb8869eb6c5fc0be957053b.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-15-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-15-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <615DE81A18842440828B94705904B3B1@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 14/25] drm/i915/tgl: update ddi/tc
 clock_off bits
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

RllJDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMTY4MDUvP3Nl
cmllcz02MjQ5MiZyZXY9Nw0KDQpJcyBqdXN0IHdhaXRpbmcgQ0kgZmVlZGJhY2sgdG8gZ2V0IG1l
cmdlZCBhbmQgaXQgaXMgZG9pbmcgdGhlIHNhbWUgam9iDQphcyB0aGlzIHBhdGNoLg0KDQpPbiBN
b24sIDIwMTktMDctMDggYXQgMTY6MTYgLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4g
RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4NCj4gDQo+IEluIEdF
TiAxMiBQT1JUX0MgRERJIGNsa19vZmYgYml0IGlzIG5vdCBlcXVhbGx5IGRpc3RhbmNlZCB0byBB
L0IsDQo+IGl0J3MgYXQgb2Zmc2V0IDI0LiBTaW1pbGFybHkgVEMgcG9ydCAoNS82KSBjbGsgb2Zm
IGJpdHMgYXJlIGF0DQo+IG9mZnNldCAyMi8yMy4gRXh0ZW5kIHRoZSBtYWNyb3MgdG8gY292ZXIg
dGhlIGFkZGl0aW9uYWwgcG9ydHMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3VtYXIg
PG1haGVzaDEua3VtYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0K
PiBpbmRleCA1Y2E3NGVjYTA1YTQuLjQ1ODhkZjllMTFkZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oDQo+IEBAIC05NzIzLDkgKzk3MjMsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7
DQo+ICAjZGVmaW5lIERQQ0xLQV9DRkdDUjBfSUNMCQkJX01NSU8oMHgxNjQyODApDQo+ICAjZGVm
aW5lICBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBvcnQpCSgxIDw8ICgocG9ydCkNCj4gPT0g
IFBPUlRfRiA/IDIzIDogXA0KPiAgCQkJCQkJICAgICAgKHBvcnQpICsgMTApKQ0KPiAtI2RlZmlu
ZSAgSUNMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocG9ydCkgICAoMSA8PCAoKHBvcnQpICsg
MTApKQ0KPiAtI2RlZmluZSAgSUNMX0RQQ0xLQV9DRkdDUjBfVENfQ0xLX09GRih0Y19wb3J0KSAo
MSA8PCAoKHRjX3BvcnQpID09DQo+IFBPUlRfVEM0ID8gXA0KPiAtCQkJCQkJICAgICAgMjEgOiAo
dGNfcG9ydCkgKw0KPiAxMikpDQo+ICsjZGVmaW5lICBJQ0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X09GRihwb3J0KQkoMSA8PCAoKHBvcnQpID09IFBPUlRfQw0KPiA/IDI0IDogXA0KPiArCQkJCQkJ
ICAgICAgIChwb3J0KSArIDEwKSkNCj4gKyNkZWZpbmUgIElDTF9EUENMS0FfQ0ZHQ1IwX1RDX0NM
S19PRkYodGNfcG9ydCkJKDEgPDwNCj4gKCh0Y19wb3J0KSA8IFBPUlRfVEM0ID8gXA0KPiArCQkJ
CQkJICAgICAgICh0Y19wb3J0KSArIDEyIDoNCj4gXA0KPiArCQkJCQkJICAgICAgICh0Y19wb3J0
KSAtDQo+IFBPUlRfVEM0ICsgMjEpKQ0KPiAgI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9ERElfQ0xL
X1NFTF9TSElGVChwb3J0KQkoKHBvcnQpID09DQo+IFBPUlRfRiA/IDIxIDogXA0KPiAgCQkJCQkJ
KHBvcnQpICogMikNCj4gICNkZWZpbmUgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfTUFTSyhw
b3J0KQkoMyA8PA0KPiBEUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZUKHBvcnQpKQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
