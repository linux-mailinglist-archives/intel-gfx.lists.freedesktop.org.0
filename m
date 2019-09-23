Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B520DBBB01
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 20:12:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4E1B6E992;
	Mon, 23 Sep 2019 18:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D63F96E98D;
 Mon, 23 Sep 2019 18:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18590817-1500050 for multiple; Mon, 23 Sep 2019 19:11:55 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <c05c43c9-f0a3-c304-aa3e-a4ce08a093c3@linux.intel.com>
References: <20190920222610.29282-1-chris@chris-wilson.co.uk>
 <af3150e8-3854-e091-6713-a6ca68093a4b@linux.intel.com>
 <156925342367.29243.9296989859129945270@skylake-alporthouse-com>
 <c05c43c9-f0a3-c304-aa3e-a4ce08a093c3@linux.intel.com>
Message-ID: <156926231128.29243.14725074715483958209@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 23 Sep 2019 19:11:51 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_balancer:
 Check for scheduling bonded-pairs on the same engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMyAxNzoyMTo1MCkKPiAKPiBPbiAyMy8w
OS8yMDE5IDE2OjQzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTIzIDE1OjI5OjExKQo+ID4+Cj4gPj4gT24gMjAvMDkvMjAxOSAyMzoyNiwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiArICAgICAgICAgICAgIHNwaW4gPSBfX2lndF9zcGlu
X25ldyhpOTE1LAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuY3R4
ID0gY3R4LAo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuZmxhZ3Mg
PSAoSUdUX1NQSU5fTk9fUFJFRU1QVElPTiB8Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBJR1RfU1BJTl9QT0xMX1JVTikpOwo+ID4+PiArICAgICAg
ICAgICAgIGlndF9zcGluX2VuZChzcGluKTsgLyogd2UganVzdCB3YW50IGl0cyBhZGRyZXNzIGZv
ciBsYXRlciAqLwo+ID4+PiArICAgICAgICAgICAgIGdlbV9zeW5jKGk5MTUsIHNwaW4tPmhhbmRs
ZSk7Cj4gPj4+ICsgICAgICAgICAgICAgaWd0X3NwaW5fcmVzZXQoc3Bpbik7Cj4gPj4+ICsKPiA+
Pj4gKyAgICAgICAgICAgICBvYmpbMF0gPSBzcGluLT5vYmpbMF07Cj4gPj4+ICsgICAgICAgICAg
ICAgb2JqWzFdID0gc3Bpbi0+b2JqWzFdOwo+IAo+IGlndF9hc3NlcnRfZXEoSUdUX1NQSU5fQkFU
Q0gsIDEpOwoKU2Vuc2libGUgZW5vdWdoLCBpdCdzIGFsd2F5cyBnb2luZyB0byBiZSB0aWVkIHRv
IGltcGxlbWVudGF0aW9uIGFzIHdlCnBsYXkgdHJpY2tzIGZyb20gdGhlIGdwdS4KCj4gPj4+ICsg
ICAgICAgICAgICAgICAgICAgICAvKiBBOiBTdWJtaXQgdGhlIHNlbWFwaG9yZSB3YWl0ICovCj4g
Pj4+ICsgICAgICAgICAgICAgICAgICAgICBlYi5idWZmZXJfY291bnQgPSAzOwo+ID4+PiArICAg
ICAgICAgICAgICAgICAgICAgZWIuZmxhZ3MgPSAoMSArIHJhbmQoKSAlIGNvdW50KSB8IEk5MTVf
RVhFQ19GRU5DRV9PVVQ7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBnZW1fZXhlY2J1Zl93
cihpOTE1LCAmZWIpOwo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAvKiBCOiBT
dWJtaXQgdGhlIHNwaW5uZXIgKGluIHBhcmFsbGVsKSAqLwo+ID4+Cj4gPj4gSG93IGluIHBhcmFs
bGVsIHdoZW4gaXQgaXMgdGhlIHNhbWUgY29udGV4dCBzbyB0aGV5IGFyZSBpbXBsaWNpdGx5IGlu
IG9yZGVyPwo+ID4gCj4gPiBEaWZmZXJlbnQgZW5naW5lcyB3aXRoIGRpZmZlcmVudCB0aW1lbGlu
ZXMsIHVzaW5nIHRoZSBzdWJtaXQgdG8gcmVxdWVzdAo+ID4gcGFyYWxsZWwgZXhlY3V0aW9uLgo+
IAo+IFllYWggSSBraW5kIG9mIG1pc3NlZCBhIGZldyB0aGluZ3MuIExvb2tzIGdvb2QuIEZvciBj
b21wbGV0ZW5lc3MgeW91IAo+IHNob3VsZCBhbHNvIGFkZCBhIGZsYXZvdXIgd2hpY2ggYWN0dWFs
bHkgc2V0cyB1cCB0aGUgYm9uZCBzbyB0aGUgImlmIAo+IChib25kKSIgcGF0aCBpbiB2aXJ0dWFs
X2JvbmRfZXhlY3V0ZSBpcyBhbHNvIGV4ZXJjaXNlZC4gQnV0IHRoaXMgbG9va3MgZ29vZC4KCkkn
bGwgdHJ5IHRvIGNhcHR1cmUgdGhlIHF1ZXN0aW9ucyBpbiBiZXR0ZXIgY29tbWVudHMuIEkgd2Fz
IGF2b2lkaW5nCnNldHRpbmcgdXAgdGhlIGV4cGxpY2l0IGJvbmRzIG1vc3RseSBiZWNhdXNlIEkg
d2FzIGFtYXplZCB0byBnZXQgYQp3b3JraW5nIHRlc3QsIGFuZCBJIHdhcyBnZXR0aW5nIGxvc3Qg
aW4gdGhlIGNvbWJpbmF0b3JpYWxzIHRvIG1ha2UgaXQKZXhwbGljaXQgOikgKGkuZS4gd2hhdCBz
aG91bGQgd2UgZG8gaWYgd2UgaGF2ZSBtb3JlIGVuZ2luZXMgaW4gdGhlIHNldCkuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
