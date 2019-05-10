Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108D819D79
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 14:56:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCA8089688;
	Fri, 10 May 2019 12:56:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A84D08954A;
 Fri, 10 May 2019 12:55:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16516300-1500050 for multiple; Fri, 10 May 2019 13:55:57 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190508121058.27038-5-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-5-tvrtko.ursulin@linux.intel.com>
Message-ID: <155749295460.28545.15011576295551611615@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 10 May 2019 13:55:54 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 04/21] trace.pl: Virtual engine
 preemption support
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wOCAxMzoxMDo0MSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFVzZSB0aGUgJ2NvbXBs
ZXRlZD8nIHRyYWNlcG9pbnQgZmllbGQgdG8gZGV0ZWN0IG1vcmUgcm9idXN0bHkgd2hlbiBhCj4g
cmVxdWVzdCBoYXMgYmVlbiBwcmVlbXB0ZWQgYW5kIHJlbW92ZSBpdCBmcm9tIHRoZSBlbmdpbmUg
ZGF0YWJhc2UgaWYgc28uCj4gCj4gT3RoZXJ3aXNlIHRoZSBzY3JpcHQgY2FuIGhpdCBhIHNjZW5h
cmlvIHdoZXJlIHRoZSBzYW1lIGdsb2JhbCBzZXFubyB3aWxsCj4gYmUgbWVudGlvbmVkIG11bHRp
cGxlIHRpbWVzIChvbiBhbiBlbmdpbmUgc2Vxbm8pIHdoaWNoIGFib3J0cyBwcm9jZXNzaW5nLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Cj4gLS0tCj4gIHNjcmlwdHMvdHJhY2UucGwgfCA4ICsrKystLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Nj
cmlwdHMvdHJhY2UucGwgYi9zY3JpcHRzL3RyYWNlLnBsCj4gaW5kZXggNmNjMzMyYmI2ZTJhLi5j
YjdjYzQ2ZGYyMmUgMTAwNzU1Cj4gLS0tIGEvc2NyaXB0cy90cmFjZS5wbAo+ICsrKyBiL3Njcmlw
dHMvdHJhY2UucGwKPiBAQCAtNDgzLDE3ICs0ODMsMTcgQEAgd2hpbGUgKDw+KSB7Cj4gICAgICAg
ICAgICAgICAgICRyaW5nbWFweyRyaW5nc3skcmluZ319ID0gJHJpbmc7Cj4gICAgICAgICAgICAg
ICAgICRkYnska2V5fSA9IFwlcmVxOwo+ICAgICAgICAgfSBlbHNpZiAoJHRwX25hbWUgZXEgJ2k5
MTU6aTkxNV9yZXF1ZXN0X291dDonKSB7Cj4gLSAgICAgICAgICAgICAgIG15ICRna2V5Owo+IC0K
PiAgICAgICAgICAgICAgICAgZGllIHVubGVzcyBleGlzdHMgJGN0eGVuZ2luZXN7JGN0eH07Cj4g
IAo+IC0gICAgICAgICAgICAgICAkZ2tleSA9IGRiX2tleSgkY3R4ZW5naW5lc3skY3R4fSwgJGN0
eCwgJHNlcW5vKTsKPiAtCj4gICAgICAgICAgICAgICAgIGlmICgkdHB7J2NvbXBsZXRlZD8nfSkg
ewo+ICsgICAgICAgICAgICAgICAgICAgICAgIG15ICRna2V5Owo+ICsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBkaWUgdW5sZXNzIGV4aXN0cyAkZGJ7JGtleX07Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgZGllIHVubGVzcyBleGlzdHMgJGRieyRrZXl9LT57J3N0YXJ0J307Cj4gICAgICAg
ICAgICAgICAgICAgICAgICAgZGllIGlmIGV4aXN0cyAkZGJ7JGtleX0tPnsnZW5kJ307Cj4gIAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICRna2V5ID0gZGJfa2V5KCRjdHhlbmdpbmVzeyRjdHh9
LCAkY3R4LCAkc2Vxbm8pOwoKSSdtIGxvc3QsIGhvdyBkb2VzIGRvIHRoZSBjb21taXQgbWVzc2Fn
ZT8gSSB0aG91Z2h0IGRiX2tleSgpIGp1c3QgZ2F2ZQp0aGUgaGFzaCB2YWx1ZSBhbmQgbm90IGFs
dGVyIHRoZSBkYj8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
