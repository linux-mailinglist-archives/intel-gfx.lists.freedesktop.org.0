Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0837AEDDA2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 12:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 942026E2E5;
	Mon,  4 Nov 2019 11:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53D26E2E1;
 Mon,  4 Nov 2019 11:22:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:13:36 -0800
X-IronPort-AV: E=Sophos;i="5.68,266,1569308400"; d="scan'208";a="195398545"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:13:33 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 10:13:28 +0100
Message-ID: <2117261.1uHUvrbj0G@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <157260256522.17607.15985195702419423317@skylake-alporthouse-com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
 <157260256522.17607.15985195702419423317@skylake-alporthouse-com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc:
 Don't filter out invalid addresses
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBGcmlkYXksIE5vdmVtYmVyIDEsIDIwMTkgMTE6MDI6NDUgQU0gQ0VUIENo
cmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5c3p0b2ZpayAoMjAxOS0xMC0z
MSAxNToyODo1NCkKPiA+IENvbW1pdCBhMzU1YjJkNmViNDIgKCJpZ3QvZ2VtX2V4ZWNfcmVsb2M6
IEZpbHRlciBvdXQgdW5hdmFpbGFibGUKPiA+IGFkZHJlc3NlcyBmb3IgIXBwZ3R0IikgaW50cm9k
dWNlZCBmaWx0ZXJpbmcgb2YgYWRkcmVzc2VzIHBvc3NpYmx5Cj4gPiBvY2N1cGllZCBieSBvdGhl
ciB1c2VycyBvZiBzaGFyZWQgR1RULiAgVW5mb3J0dW5hdGVseSwgdGhhdCBmaWx0ZXJpbmcKPiA+
IGRvZXNuJ3QgZGlzdGluZ3Vpc2ggYmV0d2VlbiBhY3R1YWxseSBvY2N1cGllZCBhZGRyZXNzZXMg
YW5kIG90aGVyd2lzZQo+ID4gaW52YWxpZCBzb2Z0cGluIG9mZnNldHMuICBBcyBzb29uIGFzIGlu
Y29ycmVjdCBHVFQgYWxpZ25tZW50IGlzIGFzc3VtZWQKPiA+IHdoZW4gcnVubmluZyBvbiBmdXR1
cmUgYmFja2VuZHMgd2l0aCBwb3NzaWJseSBsYXJnZXIgbWluaW11bSBwYWdlCj4gPiBzaXplcywg
YSBoYWxmIG9mIGNhbGN1bGF0ZWQgb2Zmc2V0cyB0byBiZSB0ZXN0ZWQgd2lsbCBiZSBpbmNvcnJl
Y3RseQo+ID4gZGV0ZWN0ZWQgYXMgb2NjdXBpZWQgYnkgb3RoZXIgdXNlcnMgYW5kIHNpbGVudGx5
IHNraXBwZWQgaW5zdGVhZCBvZgo+ID4gcmVwb3J0ZWQgYXMgYSBwcm9ibGVtLiAgVGhhdCB3aWxs
IHNpZ25pZmljYW50bHkgZGlzdG9ydCB0aGUgaW50ZW5kZWQKPiA+IHRlc3QgcGF0dGVybi4KPiA+
IAo+ID4gRmlsdGVyIG91dCBmYWlsaW5nIGFkZHJlc3NlcyBvbmx5IGlmIG5vdCByZXBvcnRlZCBh
cyBpbnZhbGlkLgo+ID4gCj4gPiB2MjogU2tpcCB1bmF2YWlsYWJsZSBhZGRyZXNzZXMgb25seSB3
aGVuIG5vdCBydW5uaW5nIG9uIGZ1bGwgUFBHVFQuCj4gPiB2MzogUmVwbGFjZSB0aGUgbm90IG9u
IGZ1bGwgUFBHVFQgcmVxdWlyZW1lbnQgZm9yIHNraXBwaW5nIHdpdGggZXJyb3IKPiA+ICAgICBj
b2RlIGNoZWNraW5nLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsg
PGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICB0ZXN0cy9pOTE1L2dlbV9l
eGVjX3JlbG9jLmMgfCAxMiArKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkx
NS9nZW1fZXhlY19yZWxvYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jCj4gPiBpbmRl
eCA1ZjU5ZmU5OS4uNDIzZmVkOGIgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVj
X3JlbG9jLmMKPiA+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+ID4gQEAgLTUy
MCw3ICs1MjAsNyBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQsIHVuc2lnbmVkIGZs
YWdzKQo+ID4gICAgICAgICB1aW50NjRfdCBndHRfc2l6ZSA9IGdlbV9hcGVydHVyZV9zaXplKGZk
KTsKPiA+ICAgICAgICAgY29uc3QgdWludDMyX3QgYmJlID0gTUlfQkFUQ0hfQlVGRkVSX0VORDsK
PiA+ICAgICAgICAgaWd0X3NwaW5fdCAqc3BpbiA9IE5VTEw7Cj4gPiAtICAgICAgIGludCBjb3Vu
dCwgbjsKPiA+ICsgICAgICAgaW50IGNvdW50LCBuLCBlcnI7Cj4gPiAgCj4gPiAgICAgICAgIGln
dF9yZXF1aXJlKGdlbV9oYXNfc29mdHBpbihmZCkpOwo+ID4gIAo+ID4gQEAgLTU0Miw4ICs1NDIs
MTEgQEAgc3RhdGljIHZvaWQgYmFzaWNfcmFuZ2UoaW50IGZkLCB1bnNpZ25lZCBmbGFncykKPiA+
ICAgICAgICAgICAgICAgICBnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5kbGUsIDAsICZiYmUsIHNp
emVvZihiYmUpKTsKPiA+ICAgICAgICAgICAgICAgICBleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9f
dXNlcl9wb2ludGVyKCZvYmpbbl0pOwo+ID4gICAgICAgICAgICAgICAgIGV4ZWNidWYuYnVmZmVy
X2NvdW50ID0gMTsKPiA+IC0gICAgICAgICAgICAgICBpZiAoX19nZW1fZXhlY2J1ZihmZCwgJmV4
ZWNidWYpKQo+ID4gKyAgICAgICAgICAgICAgIGVyciA9IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVj
YnVmKTsKPiA+ICsgICAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4gCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBpZ3RfYXNzZXJ0KGVyciAhPSAtRUlOVkFMKTsKPiAKPiBJJ3ZlIGJlZW4gdGhp
bmtpbmcgYWJvdXQgdGhpcyBhbmQgSSB0aGluayB0aGUgcmlnaHQgYXBwcm9hY2ggaXMKPiAKPiAv
KiBJZmYgdXNpbmcgYSBzaGFyZWQgR1RULCBzb21lIG9mIGl0IG1heSBiZSByZXNlcnZlZCAqLwo+
IGlndF9hc3NlcnRfZXEoZXJyLCAtRU5PU1BDKTsKClRoYW5rcyBmb3IgeW91ciBoZWxwLCBJJ2xs
IGZvbGxvdyB5b3VyIGFwcHJvYWNoLgoKU2hvdWxkbid0IHdlIGFsc28gdXNlIHRoZSB0cmljayB3
aXRoIGludmFsaWQgcmVsb2MgaGVyZSB0byBzYXZlIHJlcXVlc3QgCmVtaXNzaW9uPwoKVGhhbmtz
LApKYW51c3oKCj4gCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICsg
ICAgICAgICAgICAgICB9Cj4gCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
