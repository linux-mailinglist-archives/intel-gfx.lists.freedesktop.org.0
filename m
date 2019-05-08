Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDFE17691
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 13:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D35CD8941D;
	Wed,  8 May 2019 11:18:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710908941D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 11:17:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16489045-1500050 for multiple; Wed, 08 May 2019 12:17:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-14-chris@chris-wilson.co.uk>
 <4b4fa815-b2b2-7873-bc55-720f856ce596@linux.intel.com>
In-Reply-To: <4b4fa815-b2b2-7873-bc55-720f856ce596@linux.intel.com>
Message-ID: <155731427456.28198.14269344483505289083@skylake-alporthouse-com>
Date: Wed, 08 May 2019 12:17:54 +0100
Subject: Re: [Intel-gfx] [PATCH 14/40] drm/i915: Load balancing across a
 virtual engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMToyOTozNCkKPiAKPiBPbiAwOC8w
NS8yMDE5IDA5OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArc3RhdGljIGludCBsaXZlX3Zp
cnR1YWxfZW5naW5lKHZvaWQgKmFyZykKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IGFyZzsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNp
YmxpbmdzW01BWF9FTkdJTkVfSU5TVEFOQ0UgKyAxXTsKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZTsKPiA+ICsgICAgIGVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+ID4g
KyAgICAgdW5zaWduZWQgaW50IGNsYXNzLCBpbnN0Owo+ID4gKyAgICAgaW50IGVyciA9IC1FTk9E
RVY7Cj4gPiArCj4gPiArICAgICBpZiAoVVNFU19HVUNfU1VCTUlTU0lPTihpOTE1KSkKPiA+ICsg
ICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiArCj4gPiArICAgICBtdXRleF9sb2NrKCZpOTE1LT5k
cm0uc3RydWN0X211dGV4KTsKPiA+ICsKPiA+ICsgICAgIGZvcl9lYWNoX2VuZ2luZShlbmdpbmUs
IGk5MTUsIGlkKSB7Cj4gPiArICAgICAgICAgICAgIGVyciA9IG5vcF92aXJ0dWFsX2VuZ2luZShp
OTE1LCAmZW5naW5lLCAxLCAxLCAwKTsKPiA+ICsgICAgICAgICAgICAgaWYgKGVycikgewo+ID4g
KyAgICAgICAgICAgICAgICAgICAgIHByX2VycigiRmFpbGVkIHRvIHdyYXAgZW5naW5lICVzOiBl
cnI9JWRcbiIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZ2luZS0+bmFtZSwg
ZXJyKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dF91bmxvY2s7Cj4gPiArICAg
ICAgICAgICAgIH0KPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIGZvciAoY2xhc3MgPSAwOyBj
bGFzcyA8PSBNQVhfRU5HSU5FX0NMQVNTOyBjbGFzcysrKSB7Cj4gPiArICAgICAgICAgICAgIGlu
dCBuc2libGluZywgbjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgbnNpYmxpbmcgPSAwOwo+ID4g
KyAgICAgICAgICAgICBmb3IgKGluc3QgPSAwOyBpbnN0IDw9IE1BWF9FTkdJTkVfSU5TVEFOQ0U7
IGluc3QrKykgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlmICghaTkxNS0+ZW5naW5lX2Ns
YXNzW2NsYXNzXVtpbnN0XSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJyZWFr
Owo+IAo+IEkgcHJldmlvdXMgcmV2aWV3IEkgc2FpZCBJIHRoaW5rIHRoaXMgc2hvdWxkIGJlIGNv
bnRpbnVlIGluc3RlYWQgb2YgCj4gYnJlYWsgc28gdmNzMCArIHZjczIgc2t1cyBjYW4gYWxzbyBi
ZSB0ZXN0ZWQuCgpDb21wbGV0ZWx5IG1pc3NlZCB0aGF0LCBzb3JyeS4KCj4gPiArCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgc2libGluZ3NbbnNpYmxpbmcrK10gPSBpOTE1LT5lbmdpbmVfY2xh
c3NbY2xhc3NdW2luc3RdOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICAgICAgICAgIGlm
IChuc2libGluZyA8IDIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgY29udGludWU7Cj4gCj4g
QW5kIGFsc28gdGhhdCBzaW5nbGUgZW5naW5lIFZFIGNvdWxkIGJlIHRlc3RlZCBqdXN0IGFzIHdl
bGwsIHVubGVzcyBJIGFtIAo+IG1pc3Npbmcgc29tZXRoaW5nLgoKVGhlcmUncyBubyBzdWNoIHRo
aW5nIGFzIHNpbmdsZSBlbmdpbmUgVkUuIFRoZSBjdXJyZW50IGRlc2lnbiByZXF1aXJlcwp0aGF0
IHRoaXMgdHlwZSBvZiBzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgZW5jb21wYXNzZXMgbW9yZSB0aGFu
IG9uZSBlbmdpbmUKKGZhaWxpbmcgdGhhdCB3ZSBicmVhayB0aGUgc2luZ2xlIHJlcXVlc3Qgc2No
ZWR1bGluZywgYWx0aG91Z2ggbWlnaHQgYmUKYWJsZSB0byBsaWZ0IHRoYXQgd2l0aCB0aW1lc2xp
Y2luZyBidXQgdGhlIGVhcmx5IHJlc3VsdHMgd2VyZSBub3QKZmF2b3VyYWJsZSk7IHRoZSBzaW5n
bGUgZW5naW5lIGJlaW5nIGEgcmVndWxhciBpbnRlbF9jb250ZXh0IGluc3RhbmNlLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
