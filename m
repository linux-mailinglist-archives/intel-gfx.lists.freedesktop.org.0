Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE0621EC9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:50:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 484AF890FF;
	Fri, 17 May 2019 19:50:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1628E898B6;
 Fri, 17 May 2019 19:50:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16593819-1500050 for multiple; Fri, 17 May 2019 20:50:13 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <15886722-3193-d4e7-35e9-c2f7cdeba086@linux.intel.com>
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-25-tvrtko.ursulin@linux.intel.com>
 <20190517113927.GA2556@intel.intel>
 <15886722-3193-d4e7-35e9-c2f7cdeba086@linux.intel.com>
Message-ID: <155812261156.1890.13665815883645421049@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 20:50:11 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 24/25] gem_wsim: Discover
 engines
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0xNyAxMjo1MTowNikKPiAKPiBPbiAxNy8w
NS8yMDE5IDEyOjM5LCBBbmRpIFNoeXRpIHdyb3RlOgo+ID4gSGkgVHZydGtvLAo+ID4gCj4gPj4g
K3N0YXRpYyBpbnQKPiA+PiArX19pOTE1X3F1ZXJ5KGludCBpOTE1LCBzdHJ1Y3QgZHJtX2k5MTVf
cXVlcnkgKnEpCj4gPj4gK3sKPiA+PiArICAgIGlmIChpZ3RfaW9jdGwoaTkxNSwgRFJNX0lPQ1RM
X0k5MTVfUVVFUlksIHEpKQo+ID4+ICsgICAgICAgICAgICByZXR1cm4gLWVycm5vOwo+ID4+ICsg
ICAgcmV0dXJuIDA7Cj4gPj4gK30KPiA+PiArCj4gPj4gK3N0YXRpYyBpbnQKPiA+PiArX19pOTE1
X3F1ZXJ5X2l0ZW1zKGludCBpOTE1LCBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSAqaXRlbXMs
IHVpbnQzMl90IG5faXRlbXMpCj4gPj4gK3sKPiA+PiArICAgIHN0cnVjdCBkcm1faTkxNV9xdWVy
eSBxID0gewo+ID4+ICsgICAgICAgICAgICAubnVtX2l0ZW1zID0gbl9pdGVtcywKPiA+PiArICAg
ICAgICAgICAgLml0ZW1zX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihpdGVtcyksCj4gPj4gKyAgICB9
Owo+ID4+ICsgICAgcmV0dXJuIF9faTkxNV9xdWVyeShpOTE1LCAmcSk7Cj4gPj4gK30KPiA+PiAr
Cj4gPj4gK3N0YXRpYyB2b2lkCj4gPj4gK2k5MTVfcXVlcnlfaXRlbXMoaW50IGk5MTUsIHN0cnVj
dCBkcm1faTkxNV9xdWVyeV9pdGVtICppdGVtcywgdWludDMyX3Qgbl9pdGVtcykKPiA+PiArewo+
ID4+ICsgICAgaWd0X2Fzc2VydF9lcShfX2k5MTVfcXVlcnlfaXRlbXMoaTkxNSwgaXRlbXMsIG5f
aXRlbXMpLCAwKTsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGJvb2wgaGFzX3F1ZXJ5KGlu
dCBpOTE1KQo+ID4+ICt7Cj4gPj4gKyAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnkgcXVlcnkgPSB7
fTsKPiA+PiArCj4gPj4gKyAgICByZXR1cm4gX19pOTE1X3F1ZXJ5KGk5MTUsICZxdWVyeSkgPT0g
MDsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3RhdGljIGJvb2wgaGFzX2VuZ2luZV9xdWVyeShpbnQg
aTkxNSkKPiA+PiArewo+ID4+ICsgICAgc3RydWN0IGRybV9pOTE1X3F1ZXJ5X2l0ZW0gaXRlbSA9
IHsKPiA+PiArICAgICAgICAgICAgLnF1ZXJ5X2lkID0gRFJNX0k5MTVfUVVFUllfRU5HSU5FX0lO
Rk8sCj4gPj4gKyAgICB9Owo+ID4+ICsKPiA+PiArICAgIHJldHVybiBfX2k5MTVfcXVlcnlfaXRl
bXMoaTkxNSwgJml0ZW0sIDEpID09IDAgJiYgaXRlbS5sZW5ndGggPiAwOwo+ID4+ICt9Cj4gPj4g
Kwo+ID4+ICtzdGF0aWMgdm9pZCBxdWVyeV9lbmdpbmVzKHZvaWQpCj4gPj4gK3sKPiA+IAo+ID4g
Wy4uLl0KPiA+IAo+ID4+ICsgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5l
X2luZm8gKmVuZ2luZV9pbmZvOwo+ID4+ICsgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVl
cnlfaXRlbSBpdGVtID0gewo+ID4+ICsgICAgICAgICAgICAgICAgICAgIC5xdWVyeV9pZCA9IERS
TV9JOTE1X1FVRVJZX0VOR0lORV9JTkZPLAo+ID4+ICsgICAgICAgICAgICB9Owo+ID4+ICsgICAg
ICAgICAgICBjb25zdCB1bnNpZ25lZCBpbnQgc3ogPSA0MDk2Owo+ID4+ICsgICAgICAgICAgICB1
bnNpZ25lZCBpbnQgaTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIGVuZ2luZV9pbmZvID0gbWFs
bG9jKHN6KTsKPiA+PiArICAgICAgICAgICAgaWd0X2Fzc2VydChlbmdpbmVfaW5mbyk7Cj4gPj4g
KyAgICAgICAgICAgIG1lbXNldChlbmdpbmVfaW5mbywgMCwgc3opOwo+ID4+ICsKPiA+PiArICAg
ICAgICAgICAgaXRlbS5kYXRhX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihlbmdpbmVfaW5mbyk7Cj4g
Pj4gKyAgICAgICAgICAgIGl0ZW0ubGVuZ3RoID0gc3o7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAg
ICBpOTE1X3F1ZXJ5X2l0ZW1zKGZkLCAmaXRlbSwgMSk7Cj4gPj4gKyAgICAgICAgICAgIGlndF9h
c3NlcnQoaXRlbS5sZW5ndGggPiAwKTsKPiA+PiArICAgICAgICAgICAgaWd0X2Fzc2VydChpdGVt
Lmxlbmd0aCA8PSBzeik7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAgICBudW0gPSBlbmdpbmVfaW5m
by0+bnVtX2VuZ2luZXM7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAgICBlbmdpbmVzID0gY2FsbG9j
KG51bSwKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplb2Yoc3RydWN0IGk5
MTVfZW5naW5lX2NsYXNzX2luc3RhbmNlKSk7Cj4gPj4gKyAgICAgICAgICAgIGlndF9hc3NlcnQo
ZW5naW5lcyk7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtOyBp
KyspIHsKPiA+PiArICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZW5naW5lX2lu
Zm8gKmVuZ2luZSA9Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAoc3RydWN0IGRy
bV9pOTE1X2VuZ2luZV9pbmZvICopJmVuZ2luZV9pbmZvLT5lbmdpbmVzW2ldOwo+ID4+ICsKPiA+
PiArICAgICAgICAgICAgICAgICAgICBlbmdpbmVzW2ldID0gZW5naW5lLT5lbmdpbmU7Cj4gPj4g
KyAgICAgICAgICAgIH0KPiA+PiArICAgIH0KPiA+PiArCj4gPj4gKyAgICBfX2VuZ2luZXMgPSBl
bmdpbmVzOwo+ID4+ICsgICAgX19udW1fZW5naW5lcyA9IG51bTsKPiA+PiArfQo+ID4gCj4gPiB3
b3VsZCBpdCBtYWtlIHNlbnNlIHRvIG1ha2UgYSBsaWJyYXJ5IG91dCBvZiBhbGwgdGhlIGFib3Zl
PyBlLmcuCj4gPiBnZW1fZW5naW5lX3RvcG9sb2d5IGRvZXMgc2ltaWxhciB0aGluZyAoYWxsIHN0
YXRpYyBmdW5jdGlvbnMgbGlrZQo+ID4gaGVyZSwgdGhvdWdoKS4KPiAKPiBEZWZpbml0ZWx5IHll
cywgYnV0IGNvb3JkaW5hdGluZyBhbGwgc2VyaWVzIHNlZW1zIHRyaWNreS4gSSB0aGluayBiZXN0
IAo+IHdvdWxkIGJlIHRvIGNvbnNvbGlkYXRlIG9uY2UgZXZlcnl0aGluZyBnZXRzIG1lcmdlZD8K
ClRoZSBjaGFsbGVuZ2UgaXMgY2FydmluZyBvdXQgdGhlIGNvcmUgaW50byBhIHNlcGFyYXRlIGxp
YnJhcnkgdGhhdApkb2Vzbid0IHB1bGwgbGliaWd0LmxhIGluLiAoVHZydGtvIGhhcyBhbHJlYWR5
IGNvbW1pdHRlZCB0aGUgY2FyZGluYWwgc2luCm9mIHVzaW5nIGxpYmlndCBvdXRzaWRlIG9mIHRl
c3RzLy4pIEF0IHdoaWNoIHBvaW50LCB5b3UgaGF2ZSBqdXN0IGEKYnVuY2ggb2YgaW9jdGwgd3Jh
cHBlcnMsIGFuZCBmd2l3IHNvbWUgb2YgdXMgbWF5IHdpc2ggZ2VtX3dzaW0gaXRzZWxmCndhcyBh
IHNjcmlwdGluZyBlbmdpbmUuLi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
