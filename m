Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B9E1FB81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 22:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B566189208;
	Wed, 15 May 2019 20:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2A3891FD;
 Wed, 15 May 2019 20:32:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16569430-1500050 for multiple; Wed, 15 May 2019 21:32:52 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155795023802.12244.1056297010443188648@skylake-alporthouse-com>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-14-chris@chris-wilson.co.uk>
 <02a9bce5-7c1d-3af4-f283-e59355b18f70@linux.intel.com>
 <155795023802.12244.1056297010443188648@skylake-alporthouse-com>
Message-ID: <155795237217.12244.8663219783910546542@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 May 2019 21:32:52 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 14/16] i915/gem_exec_balancer:
 Exercise bonded pairs
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTUgMjA6NTc6MTgpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNS0xNSAxMTo1ODoyMCkKPiA+IAo+ID4gT24gMDgvMDUvMjAxOSAx
MTowOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgaWd0
X2Fzc2VydF9mKGxvYWQgPiAwLjkwLAo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJlbmdpbmUgJWQgKGNsYXNzOmluc3RhbmNlICVkOiVkKSB3YXMgZm91bmQgdG8gYmUg
b25seSAlLjFmJSUgYnVzeVxuIiwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBuLCBzaWJsaW5nc1tuXS5lbmdpbmVfY2xhc3MsIHNpYmxpbmdzW25dLmVuZ2luZV9pbnN0
YW5jZSwKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2FkKjEwMCk7
Cj4gPiAKPiA+IE1hc3RlciBhbHNvIG5lZWRzIHRvIGJlIGNoZWNrZWQgSSB0aGluay4gWW91IGhh
dmUgdGhlIGluZnJhc3RydWN0dXJlIHRvIAo+ID4gb3BlbiB0d28gcG11cyBpbiB0aGUgcHJldmlv
dXMgcGF0Y2ggc28gc2hvdWxkIGJlIGVhc3kuCj4gCj4gSGF2ZW4ndCB3ZSBjaGVja2VkIHByZWNp
c2VseSB0aGF0IGluIGVhcmxpZXIgdGVzdHM/IFdoYXQgd291bGQgcGVyaGFwcwo+IGJlIGZhaXJl
ciBoZXJlIHdvdWxkIGJlIHRvIHZlcmlmeSB0aGUgb3RoZXIgZW5naW5lIHdhcyBpZGxlLCBvdGhl
cndpc2UKPiB3ZSBjb3VsZCBzYXkgd2UgZmx1a2VkIGl0LiBGdXJ0aGVybW9yZSwgd2Ugc2hvdWxk
IHJlcGVhdCBhIGZldyB0aW1lcwo+IHdpdGggc2F5ICgwLCAxKSwgKDAsIDEpLCAoMSwgMCksICgx
LCAwKSB0byBmdXJ0aGVyIHJ1bGUgb3V0IGZsdWtlcywgYW5kCj4gdGhlbiB0byBmaW5pc2ggd2l0
aCBhIHJhbmRvbSBzbW9rZXRlc3Qgb2Ygc29tZSBkZXNjcmlwdGlvbi4KPiAKPiBQZXJoYXBzIGV2
ZW4gYSB0ZXN0IGlzIGNsb3NlciB0byB0aGUgdHlwaWNhbCB3b3JrbG9hZCB3b3VsZCBpbnZvbHZl
Cj4gc2VtYXBob3JlIGNvbW11bmljYXRpb24gYWNyb3NzIHRoZSBib25kLiBCdXQgSSBkb24ndCBr
bm93IGEgd2F5IGluIHdoaWNoCj4gSSBjYW4gZGV0ZXJtaW5lIHdoaWNoIGVuZ2luZSBJIGFtIG9u
IGluIG9yZGVyIHRvIHJlY29yZCB0aGF0IGZyb20gdGhlCj4gR1BVIGl0c2VsZi4KClRvIHJlbWlu
ZCBteXNlbGYsIHRoZSBpbXBvcnRhbmNlIGhlcmUgaXMgb24gdUFCSSBzdHJlc3NpbmcsIGl0J3Mg
aXMgbXVjaAplYXNpZXIgdG8gcHJvdmUgdGhlIHJlbGF0aW9uc2hpcCBpbiB0aGUga2VybmVsIGFu
ZCB0aGF0IGlzIHdoZXJlIHdlIGRvLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
