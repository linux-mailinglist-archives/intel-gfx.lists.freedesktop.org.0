Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859419E31
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 15:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C20AA899DB;
	Fri, 10 May 2019 13:29:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414A48990D;
 Fri, 10 May 2019 13:29:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16516726-1500050 for multiple; Fri, 10 May 2019 14:29:12 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190508121058.27038-14-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-14-tvrtko.ursulin@linux.intel.com>
Message-ID: <155749495035.10894.4199156109033147118@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 14:29:10 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 13/21] gem_wsim: Compact int
 command parsing with a macro
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMzoxMDo1MCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFBhcnNpbmcgYW4gaW50
ZWdlciB3b3JrbG9hZCBkZXNjcmlwdG9yIGZpZWxkIGlzIGEgY29tbW9uIHBhdHRlcm4gd2hpY2gg
d2UKPiBjYW4gZXh0cmFjdCB0byBhIGhlbHBlciBtYWNybyBhbmQgYnkgZG9pbmcgc28gZnVydGhl
ciBpbXByb3ZlIHRoZQo+IHJlYWRhYmlsaXR5IG9mIHRoZSBtYWluIHBhcnNpbmcgbG9vcC4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IC0tLQo+ICBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCA4MCArKysrKysrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25z
KCspLCA1NSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYmVuY2htYXJrcy9nZW1fd3Np
bS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gaW5kZXggNGRiZmMzZTkyMmE5Li5jMmUxM2Q5
OTM5YzIgMTAwNjQ0Cj4gLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4gKysrIGIvYmVuY2ht
YXJrcy9nZW1fd3NpbS5jCj4gQEAgLTM3MCw2ICszNzAsMTUgQEAgc3RhdGljIGludCBwYXJzZV9l
bmdpbmVfbWFwKHN0cnVjdCB3X3N0ZXAgKnN0ZXAsIGNvbnN0IGNoYXIgKl9zdHIpCj4gICAgICAg
ICByZXR1cm4gMDsKPiAgfQo+ICAKPiArI2RlZmluZSBpbnRfZmllbGQoX1NURVBfLCBfRklFTERf
LCBfQ09ORF8sIF9FUlJfKSBcCj4gKyAgICAgICBpZiAoKGZpZWxkID0gc3RydG9rX3IoZnN0YXJ0
LCAiLiIsICZmY3R4KSkpIHsgXAo+ICsgICAgICAgICAgICAgICB0bXAgPSBhdG9pKGZpZWxkKTsg
XAo+ICsgICAgICAgICAgICAgICBjaGVja19hcmcoX0NPTkRfLCBfRVJSXywgbnJfc3RlcHMpOyBc
Cj4gKyAgICAgICAgICAgICAgIHN0ZXAudHlwZSA9IF9TVEVQXzsgXAo+ICsgICAgICAgICAgICAg
ICBzdGVwLl9GSUVMRF8gPSB0bXA7IFwKPiArICAgICAgICAgICAgICAgZ290byBhZGRfc3RlcDsg
XAo+ICsgICAgICAgfSBcCgpNb3JlIGhpZGRlbiBjb250cm9sIGZsb3cgOi1wClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
