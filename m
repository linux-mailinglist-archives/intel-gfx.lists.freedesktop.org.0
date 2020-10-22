Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519E296783
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 01:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7776E42E;
	Thu, 22 Oct 2020 23:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D896E42E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 23:07:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22778115-1500050 for multiple; Fri, 23 Oct 2020 00:07:44 +0100
MIME-Version: 1.0
In-Reply-To: <20201022223816.GT6112@intel.com>
References: <20201022210814.23004-1-chris@chris-wilson.co.uk>
 <20201022223816.GT6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Fri, 23 Oct 2020 00:07:42 +0100
Message-ID: <160340806273.18131.9846895765115713180@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Skip RPS tests on
 Ironlake (only IPS)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTAtMjIgMjM6Mzg6MTYpCj4gT24gVGh1LCBP
Y3QgMjIsIDIwMjAgYXQgMTA6MDg6MTRQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
U2luY2UgSXJvbmxha2UgdXNlcyBpbnRlbF9pcHMua28gZm9yIGl0cyBkeW5hbWljIGZyZXF1ZW5j
eSBhZGp1c3RtZW50LAo+ID4gd2UgZG8gbm90IGhhdmUgZGlyZWN0IGNvbnRyb2wgb3ZlciB0aGUg
ZnJlcXVlbmN5IG1hbmFnZW1lbnQgc28gc3VjaAo+ID4gdGVzdHMgYXJlIGRlZnVuY3QuCj4gCj4g
V2UgY291bGQganVzdCBpZ25vcmUgd2hhdCBpcHMgaXMgc2F5aW5nLCBidXQgbWF5YmUgd2UgZG9u
J3Qgd2FudCB0by4KClRoZSBpZGVhIG9mIHRoZSB0ZXN0IGlzIHRvIHNldCBtaW5pbXVtIGZyZXF1
ZW5jeSwgcnVuIGEgc3Bpbm5lciBhbmQKY2hlY2sgd2UgZXZlbnR1YWxseSByZWFjaCBtYXhpbXVt
LCBhbmQgdGhlbiBnbyBiYWNrIHRvIG1pbmltdW0uCgppcHMgaGFzIGEgcmVhbGx5IHNsb3cgcmVz
cG9uc2UgdGltZSwgaWlyYyBpdCB3YXMgb24gdGhlIG9yZGVyIG9mIDIKbWludXRlcywgdGhvdWdo
IG15IG1lbW9yeSBtYXkgYmUgb3ZlciBleGFnZ2VyYXRpbmcgaXQsIGJ1dCBjZXJ0YWlubHkgeW91
CmNhbiB3YXRjaCBnbHhnZWFycyB0aWNrIHVwIG92ZXIgbWFueSBvZiBpdHMgNXMgaXRlcmF0aW9u
cy4KClNvIHRoYXQgcnVsZXMgaXQgb3V0IGZvciBCQVQgc2VsZnRlc3RzIGFzIGJlaW5nIHRvbyBz
bG93LiBJbiBwbGFjZSBvZgp0aGUgcnBzIGN5Y2xlIGNvdW50ZXJzIGFuZCB0aHJlc2hvbGQgY2hl
Y2tzLCB3ZSBjb3VsZCBpbnZlc3RpZ2F0ZSB0aGUKcmVnaXN0ZXJzIHVzZWQgYnkgZ2VuNV9ycHNf
aXJxX2hhbmRsZToKCiAgICAgICAgYnVzeV91cCA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwg
UkNQUkVWQlNZVFVQQVZHKTsKICAgICAgICBidXN5X2Rvd24gPSBpbnRlbF91bmNvcmVfcmVhZCh1
bmNvcmUsIFJDUFJFVkJTWVRETkFWRyk7CiAgICAgICAgbWF4X2F2ZyA9IGludGVsX3VuY29yZV9y
ZWFkKHVuY29yZSwgUkNCTUFYQVZHKTsKICAgICAgICBtaW5fYXZnID0gaW50ZWxfdW5jb3JlX3Jl
YWQodW5jb3JlLCBSQ0JNSU5BVkcpOwoKQmFzaWMgdGVzdHMgbGlrZSBidXN5IHNwaW4sIGRvIHRo
b3NlIHJlZ2lzdGVycyBzYXkgdG8gY2xvY2sgdXAgZXRjLgoKVGhlIG90aGVyIHRlc3QgdGhhdCB3
b3VsZCBiZSB3b3J0aCBzZWVpbmcgaWYgd2UgY2FuIGRvIHNvbWV0aGluZyBhYm91dCBpcwp0aGUg
ImZyZXF1ZW5jeSByZXNwb25zZS9zY2FsaW5nIiwgaS5lLiBjaGVjayB0aGF0IHRoZSBHUFUgZG9l
cyBydW4gZmFzdGVyCmlmIHdlIGFzayBmb3IgYSBoaWdoZXIgZnJlcXVlbmN5LiBUaGF0IHdvdWxk
IHJlcXVpcmUgdGhpbmtpbmcgb2YgYSBuaWNlCndheSB0byBtZWFzdXJlIHRocm91Z2hwdXQgb24g
aWxrLiBIbW0sIHRoZSBibGl0dGVyIHNob3VsZCBzY2FsZSB3aXRoCmZyZXF1ZW5jeSBbb25lIHdv
dWxkIGhvcGUhXS4gQnV0IHRoZSBibGl0dGVyIGluY2x1ZGVzIG1lbW9yeSBidywgc28gbm90CmFz
IHB1cmUgYXMgdGhlIENTIG1lYXN1cmVtZW50cyB3ZSBoYXZlIG9uIGdlbjgrLgoKClNvIHdpdGgg
YSBiaXQgb2YgdGltZSwgd2UgY291bGQgaGF2ZSBhIGNvdXBsZSBvZiBzZWxmdGVzdHMgdG8gY29u
ZmlybQp0aGF0IGlsayBjYW4gZGV0ZWN0IGhpZ2gvbG93IGxvYWRzLCB3aGljaCBtYXkgY29tZSBp
biBoYW5keSBhdCBzb21lCnBvaW50LiBBIHRhc2sgZm9yIGxhdGVyLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
