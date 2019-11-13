Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021AEFAF4C
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 12:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F64A6ECD6;
	Wed, 13 Nov 2019 11:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EBF6ECD6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 11:06:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19185604-1500050 for multiple; Wed, 13 Nov 2019 11:06:54 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
 <20191108142250.22709-3-chris@chris-wilson.co.uk>
 <cacb823f-fc7e-0b8f-0227-3e9dedd5e676@linux.intel.com>
In-Reply-To: <cacb823f-fc7e-0b8f-0227-3e9dedd5e676@linux.intel.com>
Message-ID: <157364321294.19497.7596676905193248847@skylake-alporthouse-com>
Date: Wed, 13 Nov 2019 11:06:52 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_fence: Avoid long
 preempt-off sleeps
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMyAxMDo1NDo1OCkKPiAKPiBPbiAwOC8x
MS8yMDE5IDE0OjIyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGUga2VybmVsIGlzIG5vdyBl
bmZvcmNpbmcgdGhhdCBjbGllbnRzIGFyZSBub3QgYWxsb3dlZCB0byBibG9jayBoaWdoZXIKPiA+
IHByaW9yaXR5IGNvbnRleHRzIGZyb20gYWNjZXNzaW5nIHRoZSBHUFU7IG9uZSBpcyBubyBsb25n
ZXIgYWxsb3dlZCB0bwo+ID4gc2xlZXAgZm9yIGEgc2Vjb25kIGhvZ2dpbmcgdGhlIEdQVS4gUmVk
dWNlIHRoZSBzbGVlcCBkb3duIHRvIDUwbXMsIHNob3J0Cj4gPiBlbm91Z2ggbm90IHRvIGFuZ2Vy
IHRoZSBwcmVlbXB0LW9mZiBjaGVja3Mgd2hpbGUgbG9uZyBlbm91Z2ggZm9yIGFueQo+ID4gb3Jk
aW5hcnkgR1BVIHdvcmsgdG8gY29tcGxldGUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAgIHRlc3RzL2k5
MTUvZ2VtX2V4ZWNfZmVuY2UuYyB8IDMgKystCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUv
Z2VtX2V4ZWNfZmVuY2UuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+ID4gaW5kZXgg
NGU4YmRkN2IzLi4wMDIxMjBiZjMgMTAwNjQ0Cj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVj
X2ZlbmNlLmMKPiA+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYwo+ID4gQEAgLTM0
OCw3ICszNDgsOCBAQCBzdGF0aWMgdm9pZCB0ZXN0X2ZlbmNlX2F3YWl0KGludCBmZCwgdW5zaWdu
ZWQgcmluZywgdW5zaWduZWQgZmxhZ3MpCj4gPiAgICAgICAgICAgICAgIGkrKzsKPiA+ICAgICAg
IH0KPiA+ICAgCj4gPiAtICAgICBzbGVlcCgxKTsKPiA+ICsgICAgIC8qIExvbmcsIGJ1dCBub3Qg
dG9vIGxvbmcgdG8gYW5nZXIgcHJlZW1wdGlvbiBkaXNhYmxlIGNoZWNrcyAqLwo+ID4gKyAgICAg
dXNsZWVwKDUwICogMTAwMCk7IC8qIDUwIG1zLCB0eXBpY2FsIHByZWVtcHQgcmVzZXQgaXMgMTUw
K21zICovCj4gCj4gV2FzIHRoZSBwb2ludCBvZiB0aGlzIHNsZWVwIHR3by1mb2xkOiAxKSBhbGxv
dyBzcGlubmVyIHRvIHN0YXJ0ICh1c2UgCj4gcG9sbGluZyBzcGlubmVyPykgYW5kIGFsbG93IGZv
cmtlZCBjaGlsZHJlbiB0byBzdWJtaXQgKHVzZSBwaXBlIHN5bmM/KT8KCkl0IHdhcyAzOiB3YWl0
IGxvbmcgZW5vdWdoIHNvIHdlIGNvdWxkIGJlIHJlYXNvbmFibHkgc3VyZSB0aGF0IHRoZQpjaGls
ZHJlbiB3ZXJlIGluZGVlZCB3YWl0aW5nIGFuZCBnaXZlbiB0aGUgb3Bwb3J0dW5pdHkgd291bGQg
bm90IHJ1bgphaGVhZCBvZiB0aGUgcGFyZW50LgoKVGhpcyBpcyBhIHZlcnkgbG9vc2UsIHJ1bnMg
YW55d2hlcmUgdGVzdC4gUmV2aXNlZCB2YXJpYW50cyBhcmUgaW4KZ2VtX2V4ZWNfc2NoZWR1bGVy
LCB3aGljaCBJIGxpa2UgdG8gdGhpbmsgYXJlIGEgYml0IG1vcmUgcHJlY2lzZS4KQWx0aG91Z2gg
SSB0aGluayB0aGUgZ2VuZXJhbCB0ZXN0IGNvbmNlcHQgb2YgImVuY291cmFnaW5nIHRoZSBjaGls
ZHJlbiB0bwpydW4gZmlyc3QiIGNvdWxkIGRvIHdpdGggYSBsaXR0bGUgbW9yZSBleHBsb3JhdGlv
biwgYXMgdGhlcmVpbiBhcmUgd2hlcmUKdGhlIGJ1Z3MgbGllLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
