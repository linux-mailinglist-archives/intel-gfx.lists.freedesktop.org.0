Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A692932B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9B7D6E084;
	Fri, 24 May 2019 08:33:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 232896E02B;
 Fri, 24 May 2019 08:33:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16664651-1500050 for multiple; Fri, 24 May 2019 09:33:55 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b330aca7-2686-3c42-d17e-bdcf0d412b17@linux.intel.com>
References: <20190524072551.24429-1-chris@chris-wilson.co.uk>
 <b330aca7-2686-3c42-d17e-bdcf0d412b17@linux.intel.com>
Message-ID: <155868683254.28319.251717788186809854@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 09:33:52 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOToyMDo0NykKPiAKPiBPbiAyNC8w
NS8yMDE5IDA4OjI1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcHBhcmVudGx5IFZMQSBzdHJ1
Y3RzIChlLmcuIHN0cnVjdCB7IGludCBhcnJheVtjb3VudF0gfSkgaXMgYSBnY2MKPiA+IGV4dGVu
c2lvbiB0aGF0IGNsYW5nIHJlZnVzZXMgdG8gc3VwcG9ydCBhcyBoYW5kbGluZyBtZW1vcnkgbGF5
b3V0IGlzIHRvbwo+ID4gZGlmZmljdWx0IGZvciBpdC4KPiA+IAo+ID4gTW92ZSB0aGUgb24tc3Rh
Y2sgVkxBIHRvIHRoZSBoZWFwLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGJlbmNobWFya3MvZ2VtX3dzaW0uYyB8
IDE0NiArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0KPiA+ICAgMSBm
aWxlIGNoYW5nZWQsIDk1IGluc2VydGlvbnMoKyksIDUxIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5j
Cj4gPiBpbmRleCBlMmZmYjkzYTkuLjBhMDAzMmJmZiAxMDA2NDQKPiA+IC0tLSBhL2JlbmNobWFy
a3MvZ2VtX3dzaW0uYwo+ID4gKysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gPiBAQCAtMTQ0
MSw2ICsxNDQxLDQ4IEBAIHNldF9jdHhfc3NldShzdHJ1Y3QgY3R4ICpjdHgsIHVpbnQ2NF90IHNs
aWNlX21hc2spCj4gPiAgICAgICByZXR1cm4gc2xpY2VfbWFzazsKPiA+ICAgfQo+ID4gICAKPiA+
ICtzdGF0aWMgc2l6ZV90IHNpemVvZl9sb2FkX2JhbGFuY2UoaW50IGNvdW50KQo+ID4gK3sKPiA+
ICsgICAgIHN0cnVjdCBpOTE1X2NvbnRleHRfZW5naW5lc19sb2FkX2JhbGFuY2UgKnB0cjsKPiA+
ICsKPiA+ICsgICAgIGFzc2VydChzaXplb2YocHRyLT5lbmdpbmVzW2NvdW50XSkgPT0gY291bnQg
KiBzaXplb2YocHRyLT5lbmdpbmVzWzBdKSk7Cj4gCj4gVGhpcyBzZWVtcyB3cm9uZyAtIGlzIGJv
dW5kIHRvIHRyaWdnZXIuCgpXaHkgZG9lcyBpdCBzZWVtIHdyb25nPyBUaGF0J3MgdGhlIGNhbGN1
bGF0aW9uIHVzZWQgcHJldmlvdXNseSwgYW5kIHRoZQpwdHItPmVuZ2luZXNbXSB3YXMgbWVhbnQg
dG8gYmUgcGFja2VkIGluIG9yZGVyIGZvcgpzaXplb2YocHRyLT5lbmdpbmVzW2NvdW50XSkgPT0g
Y291bnQgKiBzaXplb2YocHRyLT5lbmdpbmVzWzBdKS4gQW55d2F5LApJIHRocmV3IGl0IGluIHRo
ZXJlIHRvIGNoZWNrIGlmIHRoZSBjYWxjdWxhdGlvbiB3YXMgc2FuZS4KCj4gPiArICAgICByZXR1
cm4gc2l6ZW9mKCpwdHIpICsgc2l6ZW9mKHB0ci0+ZW5naW5lc1tjb3VudF0pOwo+IAo+IFNvIHNp
emUgb2Ygb2YgZW5naW5lIG5lZWRzIHRvIGJlIG11bHRpcGxpZWQgYnkgY291bnQuCgooSnVzdCBu
b3RlIHRoaXMgaXMgdGhlIHdoYXQgdGhlIGN1cnJlbnQgVkxBIGV2YWx1YXRlcyB0byA6KQoKPiA+
ICt9Cj4gPiArCj4gPiArc3RhdGljIHN0cnVjdCBpOTE1X2NvbnRleHRfZW5naW5lc19sb2FkX2Jh
bGFuY2UgKgo+ID4gK2FsbG9jX2xvYWRfYmFsYW5jZShpbnQgY291bnQpCj4gPiArewo+ID4gKyAg
ICAgcmV0dXJuIGNhbGxvYygxLCBzaXplb2ZfbG9hZF9iYWxhbmNlKGNvdW50KSk7Cj4gCj4gSG93
IGFib3V0IGFsbG9jYSBzbyBjbGVhbnVwIGlzIHNpbXBsZXI/IE9yIGlzIGFsbG9jYSBhbHNvIG9u
IHRoZSAKPiB1bnBvcHVsYXIgbGlzdD8KCkkgZG9uJ3QgbWluZC4gV291bGQgc2hhdmUgYSBmZXcg
bGluZXMgaW5kZWVkLCBidXQgd2UgbmVlZCB0aGUgbWVtc2V0cwpiYWNrLiAjZGVmaW5lIGFsbG9j
YTAoKT8KCj4gT3IgcG9zc2libHkgd2hhdCBTaW1vbiBzdWdnZXN0ZWQsIGp1c3QgYSBsYXJnZSB0
ZW1wb3Jhcnkgc3RhY2sgYXJyYXlzIAo+IHdvdWxkIGJlIGVub3VnaCBhbmQgZWFzaWVzdCBkaWZm
LiBKdXN0IHdpdGggYW4gYXNzZXJ0IHRoYXQgaXQgZml0cy4KCkkgZG9uJ3QgdGhpbmsgdGhhdCBp
cyBhcyBjbGVhbiBmb3IgdGhlIGxvbmcgdGVybS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
