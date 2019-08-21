Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF15A977EC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 13:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999B06E2D4;
	Wed, 21 Aug 2019 11:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70206E2D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 11:29:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 04:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="172749733"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga008.jf.intel.com with ESMTP; 21 Aug 2019 04:29:16 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.7]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.214]) with mapi id 14.03.0439.000;
 Wed, 21 Aug 2019 12:29:15 +0100
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 18/40] drm/i915: Disable pipes in
 reverse order
Thread-Index: AQHVVN/BHx9OyaWZ6EuSm7F1dATOO6cFbOOA
Date: Wed, 21 Aug 2019 11:29:15 +0000
Message-ID: <715956bd3bf41f165bae454dfd40f650cbc5079b.camel@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-19-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-19-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <133F643DD31F8A42AD513EE53F8FCBAF@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 18/40] drm/i915: Disable pipes in reverse
 order
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

T24gU2F0LCAyMDE5LTA4LTE3IGF0IDAyOjM4IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
Cj4gRnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4g
Cj4gRGlzYWJsZSBDUlRDL3BpcGVzIGluIHJldmVyc2Ugb3JkZXIgYmVjYXVzZSBzb21lIGZlYXR1
cmVzIChNU1QgaW4KPiBUR0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZlIHJlbGF0aW9uc2hp
cCBiZXR3ZWVuIHBpcGVzLCBzbyBpdAo+IHNob3VsZCBhbHdheXMgcGljayB0aGUgbG93ZXN0IHBp
cGUgYXMgbWFzdGVyIGFzIGl0IHdpbGwgYmUgZW5hYmxlZAo+IGZpcnN0IGFuZCBkaXNhYmxlIGlu
IHRoZSByZXZlcnNlIG9yZGVyIHNvIHRoZSBtYXN0ZXIgd2lsbCBiZSB0aGUgbGFzdAo+IG9uZSB0
byBiZSBkaXNhYmxlZC4KPiAKPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwu
Y29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5j
b20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YyB8IDEwICsrKysrKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKPiBpbmRleCBiNTFkMWNlYjg3MzkuLmRkYjg0MzZlMjIwOCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEzOTA4LDcg
KzEzOTA4LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QK
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJaWYgKHN0YXRlLT5tb2Rlc2V0KQo+ICAJ
CXdha2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwKPiBQT1dFUl9ET01B
SU5fTU9ERVNFVCk7Cj4gIAo+IC0JZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
c3RhdGUsIGNydGMsCj4gb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gKwkv
Kgo+ICsJICogRGlzYWJsZSBDUlRDL3BpcGVzIGluIHJldmVyc2Ugb3JkZXIgYmVjYXVzZSBzb21l
Cj4gZmVhdHVyZXMoTVNUIGluCj4gKwkgKiBUR0wrKSByZXF1aXJlcyBtYXN0ZXIgYW5kIHNsYXZl
IHJlbGF0aW9uc2hpcCBiZXR3ZWVuIHBpcGVzLAo+IHNvIGl0Cj4gKwkgKiBzaG91bGQgYWx3YXlz
IHBpY2sgdGhlIGxvd2VzdCBwaXBlIGFzIG1hc3RlciBhcyBpdCB3aWxsIGJlCj4gZW5hYmxlZAo+
ICsJICogZmlyc3QgYW5kIGRpc2FibGUgaW4gdGhlIHJldmVyc2Ugb3JkZXIgc28gdGhlIG1hc3Rl
ciB3aWxsIGJlCj4gdGhlCj4gKwkgKiBsYXN0IG9uZSB0byBiZSBkaXNhYmxlZC4KPiArCSAqLwo+
ICsJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGVfcmV2ZXJzZShzdGF0ZSwgY3J0
YywKPiBvbGRfY3J0Y19zdGF0ZSwKPiArCQkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKQo+IHsK
PiAgCQlpZiAobmVlZHNfbW9kZXNldChuZXdfY3J0Y19zdGF0ZSkgfHwKPiAgCQkgICAgbmV3X2Ny
dGNfc3RhdGUtPnVwZGF0ZV9waXBlKSB7Cj4gIApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
