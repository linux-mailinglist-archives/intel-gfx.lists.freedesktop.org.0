Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42773103A5E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 13:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3AB56E4A2;
	Wed, 20 Nov 2019 12:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A90F6E4A2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 12:55:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 04:55:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="200706151"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 04:55:43 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
Date: Wed, 20 Nov 2019 12:55:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120093302.3723715-6-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/selftests: Force bonded
 submission to overlap
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzExLzIwMTkgMDk6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBCb25kZWQgcmVxdWVz
dCBzdWJtaXNzaW9uIGlzIGRlc2lnbmVkIHRvIGFsbG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4K
PiBwYXJhbGxlbCBhcyBsYWlkIG91dCBieSB0aGUgdXNlci4gSWYgdGhlIG1hc3RlciByZXF1ZXN0
IGlzIGFscmVhZHkKPiBmaW5pc2hlZCBiZWZvcmUgaXRzIGJvbmRlZCBwYWlyIGlzIHN1Ym1pdHRl
ZCwgdGhlIHBhaXIgd2VyZSBub3QgZGVzdGluZWQKPiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdl
IGxvc2UgdGhlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4gdG8gZGljdGF0
ZSBzZWxlY3Rpb24gb2YgdGhlIHNlY29uZGFyeS4gSWYgdGhlIHNlY29uZCByZXF1ZXN0IHdhcwo+
IHJlcXVpcmVkIHRvIGJlIHJ1biBvbiBhIHBhcnRpY3VsYXIgZW5naW5lIGluIGEgdmlydHVhbCBz
ZXQsIHRoYXQgc2hvdWxkCj4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVyIHRoYW4gbGVmdCB0
byB0aGUgd2hpbXMgb2YgYSByYW5kb20KPiB1bmNvbm5lY3RlZCByZXF1ZXN0cyEKPiAKPiBJbiB0
aGUgc2VsZnRlc3QsIEkgbWFkZSB0aGUgbWlzdGFrZSBvZiBub3QgZW5zdXJpbmcgdGhlIG1hc3Rl
ciB3b3VsZAo+IG92ZXJsYXAgd2l0aCBpdHMgYm9uZGVkIHBhaXJzLCBtZWFuaW5nIHRoYXQgaXQg
Y291bGQgaW5kZWVkIGNvbXBsZXRlCj4gYmVmb3JlIHdlIHN1Ym1pdHRlZCB0aGUgYm9uZHMuIFRo
b3NlIGJvbmRzIHdlcmUgdGhlbiBmcmVlIHRvIHNlbGVjdCBhbnkKPiBhdmFpbGFibGUgZW5naW5l
IGluIHRoZWlyIHZpcnR1YWwgc2V0LCBhbmQgbm90IHRoZSBvbmUgZXhwZWN0ZWQgYnkgdGhlCj4g
dGVzdC4KClRoZXJlIGlzIGEgc3VibWl0IGF3YWl0IHdoaWNoIGVuc3VyZXMgbWFzdGVyIGlzIG5v
dCBydW5uYWJsZSBiZWZvcmUgCmJvbmRlZCBwYWlycyBhcmUgc3VibWl0dGVkLiBXaHkgd2FzIHRo
YXQgbm90IGVub3VnaD8gQXJlIHRoZSBzcG9yYWRpYyAKdGVzdCBmYWlsdXJlcz8KClJlZ2FyZHMs
CgpUdnJ0a28KCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyB8IDIzICsr
KysrKysrKysrKysrKysrKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3Qvc2VsZnRlc3RfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMu
Ywo+IGluZGV4IDE2ZWJlNGQyMzA4ZS4uZjNiMDYxMGQxZjEwIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfbHJjLmMKPiBAQCAtMzAzNiwxNSArMzAzNiwyMSBAQCBzdGF0aWMg
aW50IGJvbmRfdmlydHVhbF9lbmdpbmUoc3RydWN0IGludGVsX2d0ICpndCwKPiAgIAlzdHJ1Y3Qg
aTkxNV9nZW1fY29udGV4dCAqY3R4Owo+ICAgCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxWzE2XTsK
PiAgIAllbnVtIGludGVsX2VuZ2luZV9pZCBpZDsKPiArCXN0cnVjdCBpZ3Rfc3Bpbm5lciBzcGlu
Owo+ICAgCXVuc2lnbmVkIGxvbmcgbjsKPiAgIAlpbnQgZXJyOwo+ICAgCj4gICAJR0VNX0JVR19P
Tihuc2libGluZyA+PSBBUlJBWV9TSVpFKHJxKSAtIDEpOwo+ICAgCj4gLQljdHggPSBrZXJuZWxf
Y29udGV4dChndC0+aTkxNSk7Cj4gLQlpZiAoIWN0eCkKPiArCWlmIChpZ3Rfc3Bpbm5lcl9pbml0
KCZzcGluLCBndCkpCj4gICAJCXJldHVybiAtRU5PTUVNOwo+ICAgCj4gKwljdHggPSBrZXJuZWxf
Y29udGV4dChndC0+aTkxNSk7Cj4gKwlpZiAoIWN0eCkgewo+ICsJCWVyciA9IC1FTk9NRU07Cj4g
KwkJZ290byBlcnJfc3BpbjsKPiArCX0KPiArCj4gICAJZXJyID0gMDsKPiAgIAlycVswXSA9IEVS
Ul9QVFIoLUVOT01FTSk7Cj4gICAJZm9yX2VhY2hfZW5naW5lKG1hc3RlciwgZ3QsIGlkKSB7Cj4g
QEAgLTMwNTUsNyArMzA2MSw3IEBAIHN0YXRpYyBpbnQgYm9uZF92aXJ0dWFsX2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LAo+ICAgCj4gICAJCW1lbXNldF9wKCh2b2lkICopcnEsIEVSUl9QVFIo
LUVJTlZBTCksIEFSUkFZX1NJWkUocnEpKTsKPiAgIAo+IC0JCXJxWzBdID0gaWd0X3JlcXVlc3Rf
YWxsb2MoY3R4LCBtYXN0ZXIpOwo+ICsJCXJxWzBdID0gc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgm
c3BpbiwgY3R4LCBtYXN0ZXIsIE1JX05PT1ApOwo+ICAgCQlpZiAoSVNfRVJSKHJxWzBdKSkgewo+
ICAgCQkJZXJyID0gUFRSX0VSUihycVswXSk7Cj4gICAJCQlnb3RvIG91dDsKPiBAQCAtMzA2OCwx
MCArMzA3NCwxNyBAQCBzdGF0aWMgaW50IGJvbmRfdmlydHVhbF9lbmdpbmUoc3RydWN0IGludGVs
X2d0ICpndCwKPiAgIAkJCQkJCQkgICAgICAgJmZlbmNlLAo+ICAgCQkJCQkJCSAgICAgICBHRlBf
S0VSTkVMKTsKPiAgIAkJfQo+ICsKPiAgIAkJaTkxNV9yZXF1ZXN0X2FkZChycVswXSk7Cj4gICAJ
CWlmIChlcnIgPCAwKQo+ICAgCQkJZ290byBvdXQ7Cj4gICAKPiArCQlpZiAoIShmbGFncyAmIEJP
TkRfU0NIRURVTEUpICYmCj4gKwkJICAgICFpZ3Rfd2FpdF9mb3Jfc3Bpbm5lcigmc3BpbiwgcnFb
MF0pKSB7Cj4gKwkJCWVyciA9IC1FSU87Cj4gKwkJCWdvdG8gb3V0Owo+ICsJCX0KPiArCj4gICAJ
CWZvciAobiA9IDA7IG4gPCBuc2libGluZzsgbisrKSB7Cj4gICAJCQlzdHJ1Y3QgaW50ZWxfY29u
dGV4dCAqdmU7Cj4gICAKPiBAQCAtMzExOSw2ICszMTMyLDggQEAgc3RhdGljIGludCBib25kX3Zp
cnR1YWxfZW5naW5lKHN0cnVjdCBpbnRlbF9ndCAqZ3QsCj4gICAJCQl9Cj4gICAJCX0KPiAgIAkJ
b25zdGFja19mZW5jZV9maW5pKCZmZW5jZSk7Cj4gKwkJaW50ZWxfZW5naW5lX2ZsdXNoX3N1Ym1p
c3Npb24obWFzdGVyKTsKPiArCQlpZ3Rfc3Bpbm5lcl9lbmQoJnNwaW4pOwo+ICAgCj4gICAJCWlm
IChpOTE1X3JlcXVlc3Rfd2FpdChycVswXSwgMCwgSFogLyAxMCkgPCAwKSB7Cj4gICAJCQlwcl9l
cnIoIk1hc3RlciByZXF1ZXN0IGRpZCBub3QgZXhlY3V0ZSAob24gJXMpIVxuIiwKPiBAQCAtMzE1
Niw2ICszMTcxLDggQEAgc3RhdGljIGludCBib25kX3ZpcnR1YWxfZW5naW5lKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsCj4gICAJCWVyciA9IC1FSU87Cj4gICAKPiAgIAlrZXJuZWxfY29udGV4dF9jbG9z
ZShjdHgpOwo+ICtlcnJfc3BpbjoKPiArCWlndF9zcGlubmVyX2ZpbmkoJnNwaW4pOwo+ICAgCXJl
dHVybiBlcnI7Cj4gICB9Cj4gICAKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
