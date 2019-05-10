Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B8919E02
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8686989362;
	Fri, 10 May 2019 13:20:40 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D0F89362;
 Fri, 10 May 2019 13:20:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16516615-1500050 for multiple; Fri, 10 May 2019 14:20:34 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190508121058.27038-11-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-11-tvrtko.ursulin@linux.intel.com>
Message-ID: <155749443195.28545.5808007073578767822@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 14:20:31 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 10/21] gem_wsim: Extract str
 to engine lookup
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMzoxMDo0NykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFNpZ25lZC1vZmYtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gIGJlbmNo
bWFya3MvZ2VtX3dzaW0uYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMgYi9iZW5jaG1hcmtzL2dlbV93c2lt
LmMKPiBpbmRleCA1MjQ1NjkyZGY2ZWIuLmY2NTRkZWNiMjRjYyAxMDA2NDQKPiAtLS0gYS9iZW5j
aG1hcmtzL2dlbV93c2ltLmMKPiArKysgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKPiBAQCAtMzE4
LDYgKzMxOCwxOCBAQCB3c2ltX2Vycihjb25zdCBjaGFyICpmbXQsIC4uLikKPiAgICAgICAgIH0g
XAo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IHN0cl90b19lbmdpbmUoY29uc3QgY2hhciAqc3RyKQo+
ICt7Cj4gKyAgICAgICB1bnNpZ25lZCBpbnQgaTsKPiArCj4gKyAgICAgICBmb3IgKGkgPSAwOyBp
IDwgQVJSQVlfU0laRShyaW5nX3N0cl9tYXApOyBpKyspIHsKPiArICAgICAgICAgICAgICAgaWYg
KCFzdHJjYXNlY21wKHN0ciwgcmluZ19zdHJfbWFwW2ldKSkKPiArICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gaTsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICByZXR1cm4gLTE7Cj4gK30K
PiArCj4gIHN0YXRpYyBzdHJ1Y3Qgd29ya2xvYWQgKgo+ICBwYXJzZV93b3JrbG9hZChzdHJ1Y3Qg
d19hcmcgKmFyZywgdW5zaWduZWQgaW50IGZsYWdzLCBzdHJ1Y3Qgd29ya2xvYWQgKmFwcF93KQo+
ICB7Cj4gQEAgLTQ4MCwyMiArNDkyLDE4IEBAIHBhcnNlX3dvcmtsb2FkKHN0cnVjdCB3X2FyZyAq
YXJnLCB1bnNpZ25lZCBpbnQgZmxhZ3MsIHN0cnVjdCB3b3JrbG9hZCAqYXBwX3cpCj4gICAgICAg
ICAgICAgICAgIH0KPiAgCj4gICAgICAgICAgICAgICAgIGlmICgoZmllbGQgPSBzdHJ0b2tfcihm
c3RhcnQsICIuIiwgJmZjdHgpKSAhPSBOVUxMKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
dW5zaWduZWQgaW50IG9sZF92YWxpZCA9IHZhbGlkOwo+IC0KPiAgICAgICAgICAgICAgICAgICAg
ICAgICBmc3RhcnQgPSBOVUxMOwo+ICAKPiAtICAgICAgICAgICAgICAgICAgICAgICBmb3IgKGkg
PSAwOyBpIDwgQVJSQVlfU0laRShyaW5nX3N0cl9tYXApOyBpKyspIHsKPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGlmICghc3RyY2FzZWNtcChmaWVsZCwgcmluZ19zdHJfbWFwW2ld
KSkgewo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdGVwLmVuZ2lu
ZSA9IGk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChzdGVw
LmVuZ2luZSA9PSBCQ1MpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgYmNzX3VzZWQgPSB0cnVlOwo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB2YWxpZCsrOwo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBicmVhazsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH0KPiAtICAgICAg
ICAgICAgICAgICAgICAgICB9Cj4gLQo+IC0gICAgICAgICAgICAgICAgICAgICAgIGNoZWNrX2Fy
ZyhvbGRfdmFsaWQgPT0gdmFsaWQsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgaSA9IHN0cl90
b19lbmdpbmUoZmllbGQpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGNoZWNrX2FyZyhpIDwg
MCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIkludmFsaWQgZW5naW5lIGlk
IGF0IHN0ZXAgJXUhXG4iLCBucl9zdGVwcyk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaWYg
KGkgPj0gMCkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbGlkKys7CgpjaGVj
a19hcmcoKSByZXR1cm5lZCBhbHJlYWR5IGZvciBhbGwgaSA8IDAsIG5vPwpSZXZpZXdlZC1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
