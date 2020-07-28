Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FEF230CB2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 16:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01BBA6E320;
	Tue, 28 Jul 2020 14:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25A16E320
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 14:50:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21959117-1500050 for multiple; Tue, 28 Jul 2020 15:50:27 +0100
MIME-Version: 1.0
In-Reply-To: <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-11-chris@chris-wilson.co.uk>
 <dabc6756-3ba8-ee58-ca6c-e2ae2f0227ac@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 15:50:27 +0100
Message-ID: <159594782797.665.3798858958968044733@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 11/66] drm/i915: Preallocate stashes for vma
 page-directories
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTI3IDEwOjI0OjI0KQo+
IEhpLCBDaHJpcywKPiAKPiBJdCBhcHBlYXJzIHRvIG1lIGxpa2UgdGhpcyBzZXJpZXMgaXMgZG9p
bmcgYSBsb3Qgb2YgZGlmZmVyZW50IHRoaW5nczoKPiAKPiAtIFZhcmlvdXMgb3B0aW1pemF0aW9u
cwo+IC0gTG9ja2luZyByZXdvcmsKPiAtIEFkZGluZyBzY2hlZHVsZXJzCj4gLSBPdGhlciBtaXNj
IGZpeGVzCj4gCj4gQ291bGQgeW91IHBsZWFzZSBzZXBhcmF0ZSBvdXQgYXMgbXVjaCBhcyBwb3Nz
aWJsZSB0aGUgbG9ja2luZyByZXdvcmsgCj4gcHJlcmVxdWlzaXRlcyBpbiBvbmUgc2VyaWVzIHdp
dGggY292ZXIgbGV0dGVyLCBhbmQgbW9zdCBpbXBvcnRhbnRseSB0aGUgCj4gbWFqb3IgcGFydCBv
ZiB0aGUgbG9ja2luZyByZXdvcmsgKG9ubHkpIHdpdGggYSBtb3JlIGVsYWJvcmF0ZSBjb3ZlciAK
PiBsZXR0ZXIgZGlzY3Vzc2luZywgaWYgbm90IHRyaXZpYWwsIGhvdyBlYWNoIHBhdGNoIGZpdHMg
aW4gYW5kIG9uIGRlc2lnbiAKPiBhbmQgZnV0dXJlIGRpcmVjdGlvbnMsIFF1ZXN0aW9ucyB0aGF0
IEkgaGF2ZSBzdHVtYmxlZCBvbiBzbyBmYXIgKGJlaW5nIGEgCj4gbmV3LXRvLXRoZS1kcml2ZXIg
cmV2aWV3ZXIpOgoKVGhlIGxvY2tpbmcgZGVwZW5kIG9uIHRoZSBmb3JtZXIgd29yayB0byByZWR1
Y2UgdGhlIGltcGFjdC4gSXQncyBzdGlsbCBhCm1ham9yIGlzc3VlIHRoYXQgd2UgaW50cm9kdWNl
IGEgYnJvYWQgbG9jayB0aGF0IGlzIGhlbGQgZm9yIHNldmVyYWwKaHVuZHJlZCBtaWxsaXNlY29u
ZHMgYWNyb3NzIG1hbnkgb2JqZWN0cyB0aGF0IHN0YWxscyBnYW1lJmNvbXBvc2l0b3IuCiAKPiAt
IFdoZW4gYXJlIG1lbW9yeSBhbGxvY2F0aW9ucyBkaXNhbGxvd2VkPyBJZiB3ZSBuZWVkIHRvIHBy
ZS1hbGxvY2F0ZSBpbiAKPiBleGVjYnVmLCB3aGVuPyB3aHk/CgpUaGF0IHNob3VsZCBiZSBtZW50
aW9uZWQgaW4gdGhlIGNvZGUuCgo+IC0gV2hlbiBpcyB0aGUgcmVxdWVzdCBkbWEtZmVuY2UgcHVi
bGlzaGVkPwoKVGhlcmUgYSBiaWcgY29tbWVudCB0byB0aGF0IGVmZmVjdC4KCj4gLSBEbyB3ZSBu
ZWVkIHRvIGtlZXAgY3B1IGFzeW5jaHJvbm91cyBleGVjYnVmIHRhc2tzIGFmdGVyIHRoaXM/IHdo
eT8KCktlZXA/IE9oLCB5b3UgbWVhbiBub3QgaW1tZWRpYXRlbHkgZGlzY2FyZCBhZnRlciBwdWJs
aXNoaW5nIHRoZW0sIGJ1dAp3aHkgd2UgbmVlZCB0aGVtLiBTYW1lIHJlYXNvbiBhcyB3ZSBuZWVk
IHRoZW0gYmVmb3JlLgoKPiAtIFdoYXQgYWJvdXQgdXNlcnB0ciBwaW5uaW5nIGVuZGluZyB1cCBp
biB0aGUgZG1hX2ZlbmNlIGNyaXRpY2FsIHBhdGg/CgpJdCdzIGluIHRoZSB1c2VyIGNyaXRpY2Fs
IHBhdGggKHRoZSBzaG9ydGVzdCBwYXRoIHRvIHBlcmZvcm0gdGhlaXIKc2VxdWVuY2Ugb2Ygb3Bl
cmF0aW9ucyksIGJ1dCBpdCdzIGJlZm9yZSB0aGUgZG1hLWZlbmNlIGl0c2VsZi4gSSBzYXkKdGhh
dCdzIGEgcGFydGljdWxhcmx5IG5hc3R5IGZhbHNlIGNsYWltIHRoYXQgaXQgaXMgbm90IG9uIHRo
ZSBjcml0aWNhbApwYXRoLCBidXQgYmVpbmcgd2hlcmUgaXQgaXMgY2lyY3VtdmVudHMgdGhlIHdo
b2xlIGFyZ3VtZW50LgogCj4gQW5kIHRoZW4gbW92ZSBhbnl0aGluZyBub24tcmVsYXRlZCB0byBz
ZXBhcmF0ZSBzZXJpZXM/CgpOb3QgcmVsYXRlZCB0byB3aGF0PyBEZXZlbG9wbWVudCBvZiBpOTE1
PwotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
