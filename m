Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7DE29356
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:44:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57D5B6E0A0;
	Fri, 24 May 2019 08:44:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E5B6E0A0;
 Fri, 24 May 2019 08:44:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:44:14 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 01:44:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524072551.24429-1-chris@chris-wilson.co.uk>
 <b330aca7-2686-3c42-d17e-bdcf0d412b17@linux.intel.com>
 <155868683254.28319.251717788186809854@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9e387397-0541-7197-707e-2c9cca3d0d45@linux.intel.com>
Date: Fri, 24 May 2019 09:44:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155868683254.28319.251717788186809854@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] benchmarks/gem_wsim: Heap allocate
 VLA structs
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI0LzA1LzIwMTkgMDk6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjIwOjQ3KQo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA4OjI1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBcHBhcmVudGx5IFZMQSBzdHJ1Y3RzIChlLmcuIHN0
cnVjdCB7IGludCBhcnJheVtjb3VudF0gfSkgaXMgYSBnY2MKPj4+IGV4dGVuc2lvbiB0aGF0IGNs
YW5nIHJlZnVzZXMgdG8gc3VwcG9ydCBhcyBoYW5kbGluZyBtZW1vcnkgbGF5b3V0IGlzIHRvbwo+
Pj4gZGlmZmljdWx0IGZvciBpdC4KPj4+Cj4+PiBNb3ZlIHRoZSBvbi1zdGFjayBWTEEgdG8gdGhl
IGhlYXAuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4+PiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KPj4+IC0tLQo+Pj4gICAgYmVuY2htYXJrcy9nZW1fd3NpbS5jIHwgMTQ2ICsrKysrKysr
KysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQs
IDk1IGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9i
ZW5jaG1hcmtzL2dlbV93c2ltLmMgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKPj4+IGluZGV4IGUy
ZmZiOTNhOS4uMGEwMDMyYmZmIDEwMDY0NAo+Pj4gLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5j
Cj4+PiArKysgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKPj4+IEBAIC0xNDQxLDYgKzE0NDEsNDgg
QEAgc2V0X2N0eF9zc2V1KHN0cnVjdCBjdHggKmN0eCwgdWludDY0X3Qgc2xpY2VfbWFzaykKPj4+
ICAgICAgICByZXR1cm4gc2xpY2VfbWFzazsKPj4+ICAgIH0KPj4+ICAgIAo+Pj4gK3N0YXRpYyBz
aXplX3Qgc2l6ZW9mX2xvYWRfYmFsYW5jZShpbnQgY291bnQpCj4+PiArewo+Pj4gKyAgICAgc3Ry
dWN0IGk5MTVfY29udGV4dF9lbmdpbmVzX2xvYWRfYmFsYW5jZSAqcHRyOwo+Pj4gKwo+Pj4gKyAg
ICAgYXNzZXJ0KHNpemVvZihwdHItPmVuZ2luZXNbY291bnRdKSA9PSBjb3VudCAqIHNpemVvZihw
dHItPmVuZ2luZXNbMF0pKTsKPj4KPj4gVGhpcyBzZWVtcyB3cm9uZyAtIGlzIGJvdW5kIHRvIHRy
aWdnZXIuCj4gCj4gV2h5IGRvZXMgaXQgc2VlbSB3cm9uZz8gVGhhdCdzIHRoZSBjYWxjdWxhdGlv
biB1c2VkIHByZXZpb3VzbHksIGFuZCB0aGUKPiBwdHItPmVuZ2luZXNbXSB3YXMgbWVhbnQgdG8g
YmUgcGFja2VkIGluIG9yZGVyIGZvcgo+IHNpemVvZihwdHItPmVuZ2luZXNbY291bnRdKSA9PSBj
b3VudCAqIHNpemVvZihwdHItPmVuZ2luZXNbMF0pLiBBbnl3YXksCj4gSSB0aHJldyBpdCBpbiB0
aGVyZSB0byBjaGVjayBpZiB0aGUgY2FsY3VsYXRpb24gd2FzIHNhbmUuCgpCZWNhdXNlIHNpemVv
ZihwdHItPmVuZ2luZXNbMF0pID09IHNpemVvZihwdHItPmVuZ2luZXNbTl0pLCBzaW5jZSB0aGUg
CmNvZGUgaXMgbm90IGRlY2xhcmluZyBOIGJpZyBhcnJheSwganVzdCByZWZlcmVuY2luZyB0aGUg
ZWxlbWVudCBOLiBTbyAKZm9yIG1vcmUgdGhhbiBvbmUgZW5naW5lIEkgZXhwZWN0IGl0IGV4cGxv
ZGVzLiBVbmxlc3MgSSBhbSB3YXkgd3JvbmcuLiBJIApndWVzcyBzb21lb25lIG5lZWRzIHRvIHJ1
biBpdC4uIDopCgo+Pj4gKyAgICAgcmV0dXJuIHNpemVvZigqcHRyKSArIHNpemVvZihwdHItPmVu
Z2luZXNbY291bnRdKTsKPj4KPj4gU28gc2l6ZSBvZiBvZiBlbmdpbmUgbmVlZHMgdG8gYmUgbXVs
dGlwbGllZCBieSBjb3VudC4KPiAKPiAoSnVzdCBub3RlIHRoaXMgaXMgdGhlIHdoYXQgdGhlIGN1
cnJlbnQgVkxBIGV2YWx1YXRlcyB0byA6KQo+IAo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgc3Ry
dWN0IGk5MTVfY29udGV4dF9lbmdpbmVzX2xvYWRfYmFsYW5jZSAqCj4+PiArYWxsb2NfbG9hZF9i
YWxhbmNlKGludCBjb3VudCkKPj4+ICt7Cj4+PiArICAgICByZXR1cm4gY2FsbG9jKDEsIHNpemVv
Zl9sb2FkX2JhbGFuY2UoY291bnQpKTsKPj4KPj4gSG93IGFib3V0IGFsbG9jYSBzbyBjbGVhbnVw
IGlzIHNpbXBsZXI/IE9yIGlzIGFsbG9jYSBhbHNvIG9uIHRoZQo+PiB1bnBvcHVsYXIgbGlzdD8K
PiAKPiBJIGRvbid0IG1pbmQuIFdvdWxkIHNoYXZlIGEgZmV3IGxpbmVzIGluZGVlZCwgYnV0IHdl
IG5lZWQgdGhlIG1lbXNldHMKPiBiYWNrLiAjZGVmaW5lIGFsbG9jYTAoKT8KCkFuZCBhIGhlbHBl
ciBtYWNybyB0byBnZW5lcmljYWxseSBkZWFsIHdpdGggc3RydWN0IGhlYWRlciArIGVuZ2luZXMg
CmFycmF5IHNvIGl0IGRvZXNuJ3QgbmVlZCB0byBiZSByZXBlYXRlZCB0aHJlZSB0aW1lcy4gWWFk
YXlhZGEgdG9vIG11Y2ggCndvcmsuLiA6KSAuLi4KCj4+IE9yIHBvc3NpYmx5IHdoYXQgU2ltb24g
c3VnZ2VzdGVkLCBqdXN0IGEgbGFyZ2UgdGVtcG9yYXJ5IHN0YWNrIGFycmF5cwo+PiB3b3VsZCBi
ZSBlbm91Z2ggYW5kIGVhc2llc3QgZGlmZi4gSnVzdCB3aXRoIGFuIGFzc2VydCB0aGF0IGl0IGZp
dHMuCj4gCj4gSSBkb24ndCB0aGluayB0aGF0IGlzIGFzIGNsZWFuIGZvciB0aGUgbG9uZyB0ZXJt
LgoKLi4uIHRoaXMgc2hvdWxkIGJlIGp1c3QgZmluZSBmb3Igbm93IHNvIEknZCB2b3RlIGZvciBp
dC4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
