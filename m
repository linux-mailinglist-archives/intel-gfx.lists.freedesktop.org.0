Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2071CD4498
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89C126EC57;
	Fri, 11 Oct 2019 15:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD1C86EC57
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 15:41:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18806438-1500050 for multiple; Fri, 11 Oct 2019 16:41:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-8-chris@chris-wilson.co.uk>
 <7bfc079e-e76b-9e43-de61-a00ab6b97b72@linux.intel.com>
 <157080373793.31572.12385908510774881252@skylake-alporthouse-com>
In-Reply-To: <157080373793.31572.12385908510774881252@skylake-alporthouse-com>
Message-ID: <157080847692.31572.8238102037262192206@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 16:41:16 +0100
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTEgMTU6MjI6MTcpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAxNDo1NTowMCkKPiA+IAo+ID4gT24gMTAvMTAvMjAxOSAw
ODoxNCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiArICAgICAgICAgICAgIGlmIChlbmdpbmUp
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBhY3RpdmUgfD0gZW5naW5lLT5tYXNrOwo+ID4g
PiArCj4gPiA+ICsgICAgICAgICAgICAgZG1hX2ZlbmNlX3B1dChmZW5jZSk7Cj4gPiA+ICsgICAg
IH0KPiA+ID4gKwo+ID4gPiArICAgICAvKgo+ID4gPiArICAgICAgKiBTZW5kIGEgImhpZ2ggcHJp
b3JpdHkgcHVsc2UiIGRvd24gdGhlIGVuZ2luZSB0byBjYXVzZSB0aGUKPiA+ID4gKyAgICAgICog
Y3VycmVudCByZXF1ZXN0IHRvIGJlIG1vbWVudGFyaWx5IHByZWVtcHRlZC4gKElmIGl0IGZhaWxz
IHRvCj4gPiA+ICsgICAgICAqIGJlIHByZWVtcHRlZCwgaXQgd2lsbCBiZSByZXNldCkuIEFzIHdl
IGhhdmUgbWFya2VkIG91ciBjb250ZXh0Cj4gPiA+ICsgICAgICAqIGFzIGJhbm5lZCwgYW55IGlu
Y29tcGxldGUgcmVxdWVzdCwgaW5jbHVkaW5nIGFueSBydW5uaW5nLCB3aWxsCj4gPiA+ICsgICAg
ICAqIGJlIHNraXBwZWQgZm9sbG93aW5nIHRoZSBwcmVlbXB0aW9uLgo+ID4gPiArICAgICAgKi8K
PiA+ID4gKyAgICAgcmVzZXQgPSAwOwo+ID4gPiArICAgICBmb3JfZWFjaF9lbmdpbmVfbWFza2Vk
KGVuZ2luZSwgZ3QtPmk5MTUsIGFjdGl2ZSwgdG1wKQo+ID4gPiArICAgICAgICAgICAgIGlmIChp
bnRlbF9lbmdpbmVfcHVsc2UoZW5naW5lKSkKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJl
c2V0IHw9IGVuZ2luZS0+bWFzazsKPiA+IAo+ID4gV2hhdCBpZiB3ZSB3ZXJlIGFibGUgdG8gc2Vu
ZCBhIHB1bHNlLCBidXQgdGhlIGhvZyBjYW5ub3QgYmUgcHJlZW1wdGVkIAo+ID4gYW5kIGhhbmdj
aGVjayBpcyBvYnZpb3VzbHkgZGlzYWJsZWQgLSB3aG8gd2lsbCBkbyB0aGUgcmVzZXQ/Cj4gCj4g
SG1tLCB0aGUgaWRlYSBpcyB0aGF0IGZvcmNlZC1wcmVlbXB0aW9uIGNhdXNlcyB0aGUgcmVzZXQu
Cj4gKFNlZSBpZ3QvZ2VtX2N0eF9wZXJzaXN0ZW5jZS9ob3N0aWxlKQo+IAo+IEhvd2V2ZXIsIGlm
IHdlIGdpdmUgdGhlIHN5c2FkbWluIHRoZSBtZWFucyB0byBkaXNhYmxlIGZvcmNlLXByZWVtcHRp
b24sCj4gd2UganVzdCBnYXZlIHRoZW0gYW5vdGhlciBzaG92ZWwgdG8gZGlnIGEgaG9sZSB3aXRo
Lgo+IAo+IEEgbGFzdCByZXNvcnQgd291bGQgYmUgYW5vdGhlciB0aW1lciBoZXJlIHRvIGVuc3Vy
ZSB0aGUgY29udGV4dCB3YXMKPiB0ZXJtaW5hdGVkLgoKVGhhdCBkb2VzIG5vdCBjdXQgaXQsIGFz
IHdlIG9ubHkgbG9va2luZyBhdCBpdCBmcm9tIHRoZSBwb3Ygb2YgdGhlCmNvbnRleHQgYmVpbmcg
Z3VpbHR5IGFuZCBub3QgdGhlIHZpY3RpbS4gU28gdGhlIGFuc3dlciByZW1haW5zIGZvcmNlZApw
cmVlbXB0aW9uLCBhbmQgYSBiYWNrZG9vciBpZiB0aGF0IGlzIGRpc2FibGVkLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
