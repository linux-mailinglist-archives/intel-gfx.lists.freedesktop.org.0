Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2448EFDFDE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 15:17:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD5489D89;
	Fri, 15 Nov 2019 14:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CAC989D89
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 14:17:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19213759-1500050 for multiple; Fri, 15 Nov 2019 14:17:22 +0000
MIME-Version: 1.0
To: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
References: <20191115114549.23716-1-abdiel.janulgue@linux.intel.com>
Message-ID: <157382743979.11997.1764940468404555607@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 14:17:19 +0000
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Allow i915 to manage the vma
 offset nodes instead of drm core
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBYmRpZWwgSmFudWxndWUgKDIwMTktMTEtMTUgMTE6NDU6NDYpCj4gLXN0YXRpYyBp
bnQgY3JlYXRlX21tYXBfb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopCj4g
K3ZvaWQgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbW1hcF9vZmZzZXQoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaikKPiArewo+ICsgICAgICAgc3RydWN0IGk5MTVfbW1hcF9vZmZzZXQg
Km1tbzsKPiArCj4gKyAgICAgICBtdXRleF9sb2NrKCZvYmotPm1tb19sb2NrKTsKPiArICAgICAg
IGxpc3RfZm9yX2VhY2hfZW50cnkobW1vLCAmb2JqLT5tbWFwX29mZnNldHMsIG9mZnNldCkgewo+
ICsgICAgICAgICAgICAgICAvKiB2bWFfbm9kZV91bm1hcCBmb3IgR1RUIG1tYXBzIGhhbmRsZWQg
YWxyZWFkeSBpbgo+ICsgICAgICAgICAgICAgICAgKiBfX2k5MTVfZ2VtX29iamVjdF9yZWxlYXNl
X21tYXBfZ3R0Cj4gKyAgICAgICAgICAgICAgICAqLwo+ICsgICAgICAgICAgICAgICBpZiAobW1v
LT5tbWFwX3R5cGUgIT0gSTkxNV9NTUFQX1RZUEVfR1RUKQoKVGVtcHRlZCB0byBzYXkgYWx3YXlz
IGRvIGl0LCBidXQgdGhhdCB3b3VsZCBiZSBhIHdhc3RlIGluZGVlZC4KCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgZHJtX3ZtYV9ub2RlX3VubWFwKCZtbW8tPnZtYV9ub2RlLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBvYmotPmJhc2UuZGV2LT5hbm9uX2lu
b2RlLT5pX21hcHBpbmcpOwo+ICsgICAgICAgfQo+ICsgICAgICAgbXV0ZXhfdW5sb2NrKCZvYmot
Pm1tb19sb2NrKTsKPiArfQoKPiArdm9pZCBpOTE1X21tYXBfb2Zmc2V0X2Rlc3Ryb3koc3RydWN0
IGk5MTVfbW1hcF9vZmZzZXQgKm1tbywgc3RydWN0IG11dGV4ICptdXRleCkKPiArewo+ICsgICAg
ICAgaWYgKG1tby0+ZmlsZSkKPiArICAgICAgICAgICAgICAgZHJtX3ZtYV9ub2RlX3Jldm9rZSgm
bW1vLT52bWFfbm9kZSwgbW1vLT5maWxlKTsKCldhaXQgYSBzZWMuCgpUaGUgbW1vIGlzIGdsb2Jh
bCwgb25lIHBlciBvYmplY3QgcGVyIHR5cGUuIE5vdCBvbmUgcGVyIG9iamVjdCBwZXIgdHlwZQpw
ZXIgY2xpZW50LgoKV2Ugc2hvdWxkbid0IGJlIGFzc29jaWF0ZWQgd2l0aCBhIHNpbmdsZSBtbW8t
PmZpbGUuIFRoYXQgaXMgZW5vdWdoCmFkZHJlc3Mgc3BhY2UgbWFnbmlmaWNhdGlvbiBmb3IgYSBz
aW5nbGUgcHJvY2VzcyB0byBiZSBhYmxlIHRvIGV4aGF1c3QKdGhlIGVudGlyZSBnbG9iYWwgYWRk
cmVzcyBzcGFjZS4uLgoKSG93J3MgdGhpcyBtZWFudCB0byB3b3JrPwoKPiBAQCAtMTE4LDYgKzEz
MiwxMSBAQCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7Cj4gICAgICAgICB1bnNpZ25lZCBp
bnQgdXNlcmZhdWx0X2NvdW50Owo+ICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCB1c2VyZmF1bHRf
bGluazsKPiAgCj4gKyAgICAgICAvKiBQcm90ZWN0cyBhY2Nlc3MgdG8gbW1hcCBvZmZzZXRzICov
Cj4gKyAgICAgICBzdHJ1Y3QgbXV0ZXggbW1vX2xvY2s7Cj4gKyAgICAgICBzdHJ1Y3QgbGlzdF9o
ZWFkIG1tYXBfb2Zmc2V0czsKPiArICAgICAgIGJvb2wgcmVhZG9ubHk6MTsKCkdvIG9uLCBzdGVh
bCBhIGJpdCBmcm9tIGZsYWdzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
