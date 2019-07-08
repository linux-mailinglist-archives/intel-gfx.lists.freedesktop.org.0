Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C111261E3D
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 14:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D961389C59;
	Mon,  8 Jul 2019 12:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6AD89C59
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 12:16:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17169221-1500050 for multiple; Mon, 08 Jul 2019 13:16:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-1-chris@chris-wilson.co.uk>
 <90ade255-1338-0c87-4df9-f445b66cefaf@linux.intel.com>
In-Reply-To: <90ade255-1338-0c87-4df9-f445b66cefaf@linux.intel.com>
Message-ID: <156258817632.9375.11792986185475548766@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 13:16:16 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/oa: Reconfigure contexts on
 the fly
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wOCAxMzoxMDozNCkKPiAKPiBPbiAwOC8w
Ny8yMDE5IDEyOjE5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBdm9pZCBhIGdsb2JhbCBpZGxl
IGJhcnJpZXIgYnkgcmVjb25maWd1cmluZyBlYWNoIGNvbnRleHQgYnkgcmV3cml0aW5nCj4gPiB0
aGVtIHdpdGggTUlfU1RPUkVfRFdPUkQgZnJvbSB0aGUga2VybmVsIGNvbnRleHQuCj4gPiAKPiA+
IHYyOiBXZSBvbmx5IG5lZWQgdG8gZGV0ZXJtaW5lIHRoZSBkZXNpcmVkIHJlZ2lzdGVyIHZhbHVl
cyBvbmNlLCB0aGV5IGFyZQo+ID4gdGhlIHNhbWUgZm9yIGFsbCBjb250ZXh0cy4KPiA+IAo+ID4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
PiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+
ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiBSZXZp
ZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0
LmMgfCAgIDIgKwo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAg
ICAgIHwgICA3ICstCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAg
ICAgICAgfCAyNDggKysrKysrKysrKysrKysrLS0tLS0KPiA+ICAgMyBmaWxlcyBjaGFuZ2VkLCAx
OTUgaW5zZXJ0aW9ucygrKSwgNjIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4gaW5kZXggZTM2N2RjZTJhNjk2Li4x
ZjBkMTBiYjg4YzEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dC5jCj4gPiBAQCAtNjI0LDcgKzYyNCw5IEBAIGk5MTVfZ2VtX2NvbnRleHRfY3Jl
YXRlX2tlcm5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50IHByaW8pCj4gPiAg
ICAgICBjdHgtPnNjaGVkLnByaW9yaXR5ID0gSTkxNV9VU0VSX1BSSU9SSVRZKHByaW8pOwo+ID4g
ICAgICAgY3R4LT5yaW5nX3NpemUgPSBQQUdFX1NJWkU7Cj4gPiAgIAo+ID4gKyAgICAgLyogSXNv
bGF0ZSB0aGUga2VybmVsIGNvbnRleHQgZnJvbSBwcnlpbmcgZXllcyBhbmQgc3RpY2t5IGZpbmdl
cnMgKi8KPiA+ICAgICAgIEdFTV9CVUdfT04oIWk5MTVfZ2VtX2NvbnRleHRfaXNfa2VybmVsKGN0
eCkpOwo+ID4gKyAgICAgbGlzdF9kZWxfaW5pdCgmY3R4LT5saW5rKTsKPiAKPiBXaHkgZXhhY3Rs
eT8KCk90aGVyd2lzZSB3ZSByZWN1cnNpdmVseSB0cnkgdG8gbW9kaWZ5IHRoZSBjb250ZXh0LgoK
PiBBbnkgcmVwZXJjdXNzaW9ucyBmb3IgaTkxNV9zeXNmcy9pOTE1X2wzX3dyaXRlPyBkZWJ1Z2Zz
IEkgZ2F0aGVyIHlvdSAKPiB3b24ndCBjYXJlIGFib3V0PwoKTm8sIGJlY2F1c2Ugd2hhdCBtYXR0
ZXJzIGZvciB0aG9zZSBpcyB1c2VyIGNvbnRleHRzLgogCj4gU2hvdWxkIGFkZGluZyB0byBpOTE1
LT5jb250ZXh0cy5saXN0IGJlIGRvbmUgZnJvbSBnZW1fY29udGV4dF9yZWdpc3Rlcj8gCj4gV2hh
dCByZW1haW5zIG5vdCBhIGtlcm5lbCBjb250ZXh0LCBidXQgb24gYSBsaXN0PwoKQW5kIEkgYWxz
byBwbGFuIHRvIHB1bGwgaXQgdW5kZXIgaXRzIG93biBtdXRleC4KIAo+IFdvbid0IHByZWVtcHQg
Y29udGV4dCBiZSBtaXNzZWQgaW4gcmUtY29uZmlndXJhdGlvbj8KCldoYXQgcHJlZW1wdC1jb250
ZXh0PyA6LXAgQW5kIEkgd291bGQgc2tpcCBrZXJuZWxfY29udGV4dCBpZiBJIGNvdWxkLCBidXQK
Zm9yIHdoYXRldmVyIHJlYXNvbiBvYSBldmVudHMgYXJlIGJlaW5nIHNlbnQgdG8gdXNlcnNwYWNl
IGV2ZW4gd2hpbGUgdGhlCkdQVSBpcyBpZGxlIGFuZCBpZ3QgZXhwZWN0cyB0aGUgcmVndWxhciB0
aWNrLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
