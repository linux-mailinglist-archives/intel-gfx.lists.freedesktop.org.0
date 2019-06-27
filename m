Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD04A58318
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 15:06:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7724F6E2BF;
	Thu, 27 Jun 2019 13:06:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 988436E2BF;
 Thu, 27 Jun 2019 13:06:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17044822-1500050 for multiple; Thu, 27 Jun 2019 14:06:27 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156164078479.9225.15669406077978719204@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 14:06:24 +0100
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yNyAxMzo1NToyMSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IExldCBWYWxncmluZCBr
bm93IHRoZSBpb2N0bCBpbml0aWFsaXplcyB0aGUgcGFzc2VkIGluIGluZm8gYmxvY2sgdG8gcmVk
dWNlCj4gdGhlIG5vaXNlIHdoaWxlIGRlYnVnZ2luZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICBsaWIvc3dfc3lu
Yy5jIHwgMTEgKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykK
PiAKPiBkaWZmIC0tZ2l0IGEvbGliL3N3X3N5bmMuYyBiL2xpYi9zd19zeW5jLmMKPiBpbmRleCBm
MjA4NjAzMzEyYzIuLjczZjNmNzAxNWQ5ZCAxMDA2NDQKPiAtLS0gYS9saWIvc3dfc3luYy5jCj4g
KysrIGIvbGliL3N3X3N5bmMuYwo+IEBAIC00MSw2ICs0MSwxNSBAQAo+ICAjaW5jbHVkZSAiZHJt
dGVzdC5oIgo+ICAjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIKPiAgCj4gKyNpZmRlZiBIQVZF
X1ZBTEdSSU5ECj4gKyNpbmNsdWRlIDx2YWxncmluZC92YWxncmluZC5oPgo+ICsjaW5jbHVkZSA8
dmFsZ3JpbmQvbWVtY2hlY2suaD4KPiArCj4gKyNkZWZpbmUgVkcoeCkgeAo+ICsjZWxzZQo+ICsj
ZGVmaW5lIFZHKHgpIGRvIHt9IHdoaWxlICgwKQo+ICsjZW5kaWYKPiArCj4gIC8qKgo+ICAgKiBT
RUNUSU9OOnN3X3N5bmMKPiAgICogQHNob3J0X2Rlc2NyaXB0aW9uOiBTb2Z0d2FyZSBzeW5jIChm
ZW5jaW5nKSBzdXBwb3J0IGxpYnJhcnkKPiBAQCAtMjE4LDYgKzIyNyw4IEBAIGludCBzeW5jX2Zl
bmNlX3N0YXR1cyhpbnQgZmVuY2UpCj4gICAgICAgICBpZiAoZmlsZV9pbmZvLm51bV9mZW5jZXMg
IT0gMSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7CgpeIE90aGVyd2lzZSBrbm93
biBhcyBsZXRzIHByZXRlbmQgd2UgbmV2ZXIgc2F3IHRoYXQga2VybmVsIGJ1Zy4KaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMxMTg4My8/c2VyaWVzPTYyMjc4JnJldj0x
CgpBbiBleGFtcGxlIG9mIHdoeSBpZ3Qgc2hvdWxkIG5vdCBiZSBmaWx0ZXJpbmcgdGhlIGtlcm5l
bC4KCkp1c3QgY29tcGxhaW5pbmcgYmVjYXVzZSBQZXRyaSBmb3VuZCBhIGJ1ZyBpbiBvbmUgb2Yg
dGVzdHMgdGhhdCBpcyBiZWluZwpibG9ja2VkIGJ5IG5vIG9uZSByZXZpZXdpbmcgdGhlIGtlcm5l
bCBmaXggdGhhdCBpcyBibG9ja2luZyBmaXhpbmcgdGhlCmxpYnJhcnkgdG8gYWxsb3cgdGhlIGJ1
ZyBmaXggaW4gdGhlIHRlc3QuCgo+ICsgICAgICAgVkcoVkFMR1JJTkRfTUFLRV9NRU1fREVGSU5F
RCgmZmVuY2VfaW5mbywgc2l6ZW9mKGZlbmNlX2luZm8pKSk7CgpNb3JlIGZ1biB3b3VsZCBiZSB0
bwoKc3RydWN0IHN5bmNfZmVuY2VfaW5mbyBmZW5jZV9pbmZvID0geyAuc3RhdHVzID0gLUVOT1NZ
UyB9OwoKU28gdGhhdCB2YWxncmluZCBrbm93cyBpdCBpcyBpbml0aWFsaXNlZCBhbmQgd2UgcmVs
aWFibHkgcmVwb3J0IGFuIGVycm9yCmlmIHRoZSBrZXJuZWwgZmFpbHMgdG8gZmlsbCBpbiB0aGUg
c3RydWN0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
