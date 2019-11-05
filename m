Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C55EFC8C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:39:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAC36E9F0;
	Tue,  5 Nov 2019 11:39:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB1A6E9EF;
 Tue,  5 Nov 2019 11:39:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19087522-1500050 for multiple; Tue, 05 Nov 2019 11:39:04 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87imnyo8u8.fsf@gaia.fi.intel.com>
References: <20191104201710.3778-1-chris@chris-wilson.co.uk>
 <87imnyo8u8.fsf@gaia.fi.intel.com>
Message-ID: <157295394385.14950.10836757962075610612@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 05 Nov 2019 11:39:03 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Wait for both
 engines to complete before resubmitting
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTA1IDExOjM0OjIzKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBcyB0aGUgc2NyYXRj
aCBidWYgaXMgc2hhcmVkIGJldHdlZW4gdGhlIHR3byByZXF1ZXN0cyBvbiBib3RoIGVuZ2luZXMs
Cj4gPiB3ZSBuZWVkIHRvIHdhaXQgZm9yIGJvdGggdG8gZmluaXNoIHVzaW5nIHRoZSBidWZmZXIg
YmVmb3JlIHdlIHJlc2V0IGl0Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2Vy
LmMgfCAyICstCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYyBi
L3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYwo+ID4gaW5kZXggZTUyZjVkZjk1Li43MGM0
NTI5YjQgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPiA+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYwo+ID4gQEAgLTg0MCw3ICs4NDAs
NyBAQCBzdGF0aWMgdm9pZCBib25kZWRfc2xpY2UoaW50IGk5MTUpCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgZ2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICBjbG9zZShlYi5yc3ZkMik7Cj4gPiAgCj4gPiAtICAgICAgICAgICAgICAgICAgICAgZ2VtX3N5
bmMoaTkxNSwgb2JqWzJdLmhhbmRsZSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZ2VtX3N5
bmMoaTkxNSwgb2JqWzBdLmhhbmRsZSk7Cj4gCj4gT2ssIGxldCBtZSB0cnkgdG8gbWFrZSBzZW5z
ZSBvZiBpdCBhbGwuIEZpcnN0IG9mZiwgdGhlIG5lZWQgZm9yCj4gb2JqW0lHVF9TUElOX1NDUkFU
Q0hdLmhhbmRsZSBncm93cy4KPiAKPiBCdXQgYXMgdGhlIHNlbWFwaG9yZSB3aWxsIHdhaXQgdGhl
IHNwaW5uZXIgdG8gc3RhcnQgYW5kIHRoZW4gZW5kIGl0Lgo+IEl0IGlzIG5vdCBlbm91Z2ggdG8g
d2FpdCB0aGUgc2VtYXBob3JlIGJhdGNoIHRvIHN5bmMuIFRoYXQgaXMgY2xlYXIuCgpJdCBzaG91
bGQgYmUgZW5vdWdoIHRvIHdhaXQgZm9yIHRoZSBzcGlubmVyIGNvbXBsZXRpb24gdG8gYmUgc3Vy
ZSB0aGF0CnRoZSBzZW1hcGhvcmUgYmF0Y2ggaXMgcGFzdCB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJu
IChidXQgbm90IG5lY2Vzc2FyaWx5CmNvbXBsZXRlIGFzIGl0IG1heSBiZSBwcmVlbXB0ZWQgYmVm
b3JlIHdlIG1hcmsgaXQgYXMgY29tcGxldGUpLiBTbyBpdAp3b3VsZCBiZSBwb3NzaWJsZSBmb3Ig
dXMgdG8gc2VlIHRoZSBjb250ZXh0IHN0aWxsIGluIGZsaWdodCBhbmQgcmVkdWNlCnRoZSByYW5k
b21uZXNzIG9mIG91ciBzZWxlY3Rpb24uCiAKPiBCdXQgb24gc3luY2luZyB0aGUgc2NyYXRjaDog
dGhlIG9ialsxXS5oYW5kbGUgaXMgY2F1c2luZyB3cml0ZQo+IGhhemFyZCB0byBvYmpbMF0gc28g
aWYgd2Ugd2FpdCBvYmpbMF0sIHRoZW4gaXQgaXMgaW1wbGllZCB0aGF0Cj4gb2JqWzFdLmhhbmRs
ZSBoYXMgZmluaXNoZWQ/CgpZZXMuIG9ialsyXS5oYW5kbGUgaGFzIG9uZSBmZW5jZSAoZnJvbSB0
aGUgc3Bpbm5lciBiYXRjaCksIG9ialswXS5oYW5kbGUKaGFzIHR3byBmZW5jZXMgKGZyb20gYm90
aCBiYXRjaGVzKSwgbGlrZXdpc2Ugb2JqWzFdLmhhbmRsZS4gU28gaWYgeW91CndhaXQgb24gZWl0
aGVyIG9ialswXS5oYW5kbGUgb3Igb2JqWzFdLmhhbmRsZSwgeW91IGZsdXNoIGJvdGggZmVuY2Vz
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
