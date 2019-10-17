Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9B7DB8B3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 22:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1B0989E36;
	Thu, 17 Oct 2019 20:54:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 310AE89E36
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 20:54:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18875218-1500050 for multiple; Thu, 17 Oct 2019 21:54:37 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191017161852.8836-1-tvrtko.ursulin@linux.intel.com>
References: <20191017134531.20659-1-tvrtko.ursulin@linux.intel.com>
 <20191017161852.8836-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157134567578.10597.3148663006904145379@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 21:54:35 +0100
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Make
 for_each_engine_masked work on intel_gt
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNyAxNzoxODo1MikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1lZGl1bSB0ZXJtIGdv
YWwgaXMgdG8gZWxpbWluYXRlIHRoZSBpOTE1LT5lbmdpbmVbXSBhcnJheSBhbmQgdG8gZ2V0IHRo
ZXJlCj4gd2UgaGF2ZSByZWNlbnRseSBpbnRyb2R1Y2VkIGVxdWl2YWxlbnQgYXJyYXkgaW4gaW50
ZWxfZ3QuIE5vdyB3ZSBuZWVkIHRvCj4gbWlncmF0ZSB0aGUgY29kZSBmdXJ0aGVyIHRvd2FyZHMg
dGhpcyBzdGF0ZS4KPiAKPiBUaGlzIG5leHQgc3RlcCBpcyB0byBlbGltaW5hdGUgdXNhZ2Ugb2Yg
aTkxNS0+ZW5naW5lc1tdIGZyb20gdGhlCj4gZm9yX2VhY2hfZW5naW5lX21hc2tlZCBpdGVyYXRv
ci4KPiAKPiBGb3IgdGhpcyB0byB3b3JrIHdlIGFsc28gbmVlZCB0byB1c2UgZW5naW5lLT5pZCBh
cyBpbmRleCB3aGVuIHBvcHVsYXRpbmcKPiB0aGUgZ3QtPmVuZ2luZVtdIGFycmF5IGFuZCBhZGp1
c3QgdGhlIGRlZmF1bHQgZW5naW5lIHNldCBpbmRleGluZyB0byB1c2UKPiBlbmdpbmUtPmxlZ2Fj
eV9pZHggaW5zdGVhZCBvZiBhc3N1bWluZyBndC0+ZW5naW5lc1tdIGluZGV4aW5nLgo+IAo+IHYy
Ogo+ICAgKiBQb3B1bGF0ZSBndC0+ZW5naW5lW10gZWFybGllci4KPiAgICogQ2hlY2sgdGhhdCB3
ZSBkb24ndCBkdXBsaWNhdGUgZW5naW5lLT5sZWdhY3lfaWR4Cj4gCj4gdjM6Cj4gICAqIFdvcmsg
YXJvdW5kIHRoZSBpbml0aWFsaXphdGlvbiBvcmRlciBpc3N1ZSBiZXR3ZWVuIGRlZmF1bHRfZW5n
aW5lcygpCj4gICAgIGFuZCBpbnRlbF9lbmdpbmVzX2RyaXZlcl9yZWdpc3RlcigpIHdoaWNoIHNl
dHMgZW5naW5lLT5sZWdhY3lfaWR4IGZvcgo+ICAgICBub3cuIEl0IHdpbGwgYmUgZml4ZWQgcHJv
cGVybHkgbGF0ZXIuCj4gCj4gdjQ6Cj4gICAqIE1lcmdlIHdpdGggZm9yZ290dGVuIHYyLjUuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCiogZmluZ2VycyBj
cm9zc2VkCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
