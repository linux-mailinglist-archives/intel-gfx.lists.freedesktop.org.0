Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA7B5842F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:06:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D81796E415;
	Thu, 27 Jun 2019 14:06:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A7E6E415;
 Thu, 27 Jun 2019 14:06:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17045607-1500050 for multiple; Thu, 27 Jun 2019 15:06:38 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <73df9149-e9a2-8fc7-ba53-073ca496d5aa@linux.intel.com>
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
 <156164078479.9225.15669406077978719204@skylake-alporthouse-com>
 <73df9149-e9a2-8fc7-ba53-073ca496d5aa@linux.intel.com>
Message-ID: <156164439534.9225.10573719047261245304@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 15:06:35 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yNyAxNDo1OToxMCkKPiAKPiBPbiAyNy8w
Ni8yMDE5IDE0OjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4gKyAgICAgICBWRyhWQUxHUklO
RF9NQUtFX01FTV9ERUZJTkVEKCZmZW5jZV9pbmZvLCBzaXplb2YoZmVuY2VfaW5mbykpKTsKPiA+
IAo+ID4gTW9yZSBmdW4gd291bGQgYmUgdG8KPiA+IAo+ID4gc3RydWN0IHN5bmNfZmVuY2VfaW5m
byBmZW5jZV9pbmZvID0geyAuc3RhdHVzID0gLUVOT1NZUyB9Owo+ID4gCj4gPiBTbyB0aGF0IHZh
bGdyaW5kIGtub3dzIGl0IGlzIGluaXRpYWxpc2VkIGFuZCB3ZSByZWxpYWJseSByZXBvcnQgYW4g
ZXJyb3IKPiA+IGlmIHRoZSBrZXJuZWwgZmFpbHMgdG8gZmlsbCBpbiB0aGUgc3RydWN0Lgo+IAo+
IC4uLiBzdXJlLCB0aGlzIGlzIGFsc28gb2theS4gRm9yIG1lIC1FTk9TWVMgaXMgbm90IHN0cmlj
dGx5IG5lZWRlZCBhdCAKPiB0aGlzIGxldmVsLiBJdCB3b3VsZCBiZSBtb3JlIG9mIGEgdW5pdCB0
ZXN0IGZvciB0aGUgaW9jdGwsIG5vdCBiZWxvbmdpbmcgCj4gdG8gdGhlIGxpYnJhcnkgaGVscGVy
LCBidXQgaXQgaXMgYWxzbyBmaW5lIHRvIGluamVjdCBzb21lIG1vcmUgZXhwbGljaXQgCj4gdHJh
c2ggc28gaXQgY2FuIGJlIGNhdWdodCBldmVuIGlmIHRoZXJlIGFyZSBubyBzcGVjaWZpYyB1bml0
IHRlc3RzLgo+IAo+IEkgZG9uJ3QgYWxzbyBzZWUgYSBwcm9ibGVtIHdpdGggVmFsZ3JpbmQgYW5u
b3RhdGlvbi4gSXQgZG9lc24ndCBoaWRlIAo+IGFueXRoaW5nLCBub3IgZG9lcyBpdCBzYW5pdGlz
ZXMuIEJ1dCB5ZXMsIGl0IGlzIG5vdCBuZWVkZWQgaWYgd2UgZ28gZm9yIAo+IC1FTk9TWVMgdHJp
Y2suCgpUaGF0J3MgYWxsIEkgd2FzIHRoaW5raW5nLCB0d28gYmlyZHMgb25lIHN0b25lLiBJIHRo
aW5rIGl0IGlzIGEgYm9udXMgaWYKd2UgZG9uJ3QgcGFwZXIgb3ZlciB0aGUga2VybmVsIHJhbmRv
bWx5IHNlcnZpbmcgdXAgZ2FyYmFnZSAtLSBidXQgYXQgdGhlCnNhbWUgdGltZSByYW5kb20gZmFp
bHVyZXMgYXJlIG5vdCB0aGUgZWFzaWVzdCB0byBkZWJ1Zy4gQnV0IGF0IGxlYXN0IHRoZXkKc2Vy
dmUgYXMgY2FuYXJpZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
