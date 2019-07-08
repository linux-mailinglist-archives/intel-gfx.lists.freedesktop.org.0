Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC0E61FC0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 15:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7747189B22;
	Mon,  8 Jul 2019 13:47:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A4CC89B22
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 13:47:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17170329-1500050 for multiple; Mon, 08 Jul 2019 14:47:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-2-chris@chris-wilson.co.uk>
 <20190708113909.18117-1-chris@chris-wilson.co.uk>
 <9ee10ea0-6f1f-de68-3ff5-7a607a986ac3@linux.intel.com>
 <156258852175.9375.12523322915332431559@skylake-alporthouse-com>
 <156259274575.9375.11752216809720039961@skylake-alporthouse-com>
 <c49d580d-4db5-8d0b-01b6-1392eec32f47@linux.intel.com>
In-Reply-To: <c49d580d-4db5-8d0b-01b6-1392eec32f47@linux.intel.com>
Message-ID: <156259362594.9375.16872584835598042849@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 14:47:05 +0100
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add to timeline requires the
 timeline mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wOCAxNDo0MDoxOCkKPiAKPiBPbiAwOC8w
Ny8yMDE5IDE0OjMyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0wNy0wOCAxMzoyMjowMSkKPiA+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5
LTA3LTA4IDEzOjE4OjAyKQo+ID4+Pgo+ID4+PiBPbiAwOC8wNy8yMDE5IDEyOjM5LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4gPj4+PiB2MjogVGhvdWdoIGl0IGRvZXNuJ3QgYWZmZWN0IHRoZSBjdXJy
ZW50IHVzZXJzLCBjb250ZXh0cyBtYXkgc2hhcmUKPiA+Pj4+IHRpbWVsaW5lcyBzbyBjaGVjayBp
ZiB3ZSBhbHJlYWR5IGhvbGQgdGhlIHJpZ2h0IG11dGV4Lgo+ID4+Cj4gPj4+PiAraW50IGludGVs
X2NvbnRleHRfcHJlcGFyZV9yZW1vdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
Cj4gPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSkKPiA+Pj4+ICt7Cj4gPj4+PiArICAgICBzdHJ1Y3QgaW50ZWxfdGltZWxp
bmUgKnRsID0gY2UtPnJpbmctPnRpbWVsaW5lOwo+ID4+Pj4gKyAgICAgaW50IGVycjsKPiA+Pj4+
ICsKPiA+Pj4+ICsgICAgIC8qIE9ubHkgc3VpdGFibGUgZm9yIHVzZSBpbiByZW1vdGVseSBtb2Rp
ZnlpbmcgdGhpcyBjb250ZXh0ICovCj4gPj4+PiArICAgICBHRU1fQlVHX09OKHJxLT5od19jb250
ZXh0ID09IGNlKTsKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgIGlmIChycS0+dGltZWxpbmUgIT0gdGwp
IHsgLyogYmV3YXJlIHRpbWVsaW5lIHNoYXJpbmcgKi8KPiA+Pj4+ICsgICAgICAgICAgICAgZXJy
ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlX25lc3RlZCgmdGwtPm11dGV4LAo+ID4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFNJTkdMRV9E
RVBUSF9ORVNUSU5HKTsKPiA+Pj4KPiA+Pj4gV2hpY2ggY2FsbGVyIGlzIGhvbGRpbmcgdGwtPm11
dGV4Pwo+ID4+Cj4gPj4gTm9uZSB0b2RheSwgYnV0IGl0IGlzIGNvbmNlaXZhYmxlLiBTbyByYXRo
ZXIgdGhhbiBoYXZlIGEgbXlzdGVyaW91cwo+ID4+IGRlYWRsb2NrIG5vdCByZXBvcnRlZCBieSBs
b2NrZGVwIGluIHRoZSBmdXR1cmUsIG5pcCB0aGUgcHJvYmxlbSBpbiB0aGUKPiA+PiBidWQuCj4g
PiAKPiA+IEp1c3QgaW4gY2FzZSwgY3JlYXRpbmcgYSByZXF1ZXN0IHRha2VzIHRoZSB0aW1lbGlu
ZS0+bXV0ZXggYW5kIGhvbGRzIGl0Cj4gPiB1bnRpbCBzdWJtaXR0ZWQuIFNvIHRoZSBzY2VuYXJp
byBJIGNvbnNpZGVyZWQgd2FzIGlmIG9uZSB1c2VyIGNvbnRleHQKPiA+IHdhbnRlZCB0byBtb2Rp
ZnkgYW5vdGhlciBvbmUgKHdoaWNoIGNvdWxkIHdvcmspLCBidXQgdGhleSBoYXBwZW4gdG8gYmUK
PiA+IG9uIGEgY29tbW9uIHRpbWVsaW5lLgo+IAo+IE1heWJlIG15IGZvcndhcmQgdmlzaW9uIGlz
IHRvbyBsaW1pdGVkLiA6KSBCdXQgc2luY2UgY29kZSBjb25zb2xpZGF0aW9uIAo+IGlzIHdvcnRo
IGl0LCBob3cgYWJvdXQgeW91IGtlZXAgdGhhdCBhc3BlY3QgaW4gdGhpcyBwYXRjaCwgYW5kIGxl
YXZlIHRoZSAKPiB0bC0+bXV0ZXggdGFraW5nIGZvciBsYXRlcj8KCkluIHRoZSBjdXJyZW50IHNl
dCBvZiBwYXRjaGVzIG9uIHRoZSBsaXN0IGZvciByZW1vdmluZyBzdHJ1Y3RfbXV0ZXgKYXJvdW5k
IHJlcXVlc3RzLCBpdCBpcyBhbHJlYWR5IGlsbGVnYWwgdG8gZG8gdGhlIG9wZXJhdGlvbiBvbgp0
bC0+bGFzdF9yZXF1ZXN0IHdpdGhvdXQgaG9sZGluZyB0aGUgdGwtPm11dGV4LgoKSSdtIGNvbnNp
ZGVyaW5nIGhvdyBiZXN0IHRvIGFkZCBsb2NrZGVwIHRvIGhpZ2hsaWdodCB0aGF0LiBJIHRoaW5r
IGlmIEkKYWRkIGEgc3RydWN0IG11dGV4ICpsb2NrIHRvIGk5MTVfYWN0aXZlX3JlcXVlc3QsIGFu
ZCBtYWtlIGl0IG9ubHkgZXhpc3QKdW5kZXIgZGVidWc/Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
