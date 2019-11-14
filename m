Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7E4FC4D7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 11:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50F8D6E7FA;
	Thu, 14 Nov 2019 10:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFB56E7FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 10:57:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19198871-1500050 for multiple; Thu, 14 Nov 2019 10:57:41 +0000
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191114105311.GW1208@intel.com>
References: <20191113171944.19308-1-chris@chris-wilson.co.uk>
 <20191114105311.GW1208@intel.com>
Message-ID: <157372906009.2850.8894773443339250948@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 14 Nov 2019 10:57:40 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Hide smem_start from
 userspace
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMTEtMTQgMTA6NTM6MTEpCj4gT24gV2VkLCBO
b3YgMTMsIDIwMTkgYXQgMDU6MTk6NDRQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
RG8gbm90IGxlYWsgb3VyIGludGVybmFsIGtlcm5lbCBhZGRyZXNzIGZvciByYW5kb20gdXNlcnNw
YWNlIHRvIGFidXNlLgo+ID4gRGFuaWVsIGFkZGVkIHRoZSBzdXBwb3J0IHRvIGZiZGV2IHRvIGZp
bHRlciBvdXQgdGhlIHBoeXNpY2FsIGFkZHJlc3Nlcwo+ID4gYmVpbmcgZXhwb3NlZCBieSBmYmRl
diwgcHV0IHRoYXQgdG8gdXNlIHRvIHByb3RlY3Qgb3Vyc2VsdmVzLgo+ID4gCj4gPiBCdWd6aWxs
YTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjU2Cj4g
PiBGaXhlczogNWY4ODliOWE2MWRkICgiZHJtL2k5MTU6IERpc3JlZ2FyZCBkcm1fbW9kZV9jb25m
aWcuZmJfYmFzZSIpCj4gPiBSZWZlcmVuY2VzOiBkYTZjNzcwN2NhZjMgKCJmYmRldjogQWRkIEZC
SU5GT19ISURFX1NNRU1fU1RBUlQgZmxhZyIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA1ICsrKy0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwo+ID4gaW5kZXggM2QxMDYxNDcwZTc2Li5iZmYzMTE1
NjE1OTcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiZGV2LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYwo+ID4gQEAgLTIyNiw4ICsyMjYsOCBAQCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0
cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCj4gPiAgICAgICAgICAgICAgIGdvdG8gb3V0X3Vu
cGluOwo+ID4gICAgICAgfQo+ID4gIAo+ID4gLSAgICAgaWZiZGV2LT5oZWxwZXIuZmIgPSAmaWZi
ZGV2LT5mYi0+YmFzZTsKPiA+IC0KPiA+ICsgICAgIC8qIGRvbid0IGxlYWsgYW55IHBoeXNpY2Fs
IGFkZHJlc3NlcyB0byB1c2Vyc3BhY2UgKi8KPiA+ICsgICAgIGluZm8tPmZsYWdzIHw9IEZCSU5G
T19ISURFX1NNRU1fU1RBUlQ7Cj4gCj4gRG9lc24ndCB0aGUgZmIgaGVscGVyIGFscmVhZHkgZG8g
dGhpcz8KPiAKPiBMb29rcyBsaWtlIGl0IHRyaWVzLiBUaG91Z2ggSSBoYXZlIG5vIGlkZWEgd2h5
IGl0IGRvZXMKPiBpdCBpbiBpbml0aWFsX2NvbmZpZygpIGluc3RlYWQgb2YgZmlsbF9mYl9pbmZv
KCkuCgpJIHdhc24ndCBldmVuIHN1cmUgd2UgdG9vayB0aGF0IHBhdGguCgo+ID4gICAgICAgaW5m
by0+ZmJvcHMgPSAmaW50ZWxmYl9vcHM7Cj4gPiAgCj4gPiAgICAgICAvKiBzZXR1cCBhcGVydHVy
ZSBiYXNlL3NpemUgZm9yIHZlc2FmYiB0YWtlb3ZlciAqLwo+ID4gQEAgLTI0Nyw2ICsyNDcsNyBA
QCBzdGF0aWMgaW50IGludGVsZmJfY3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIs
Cj4gPiAgICAgICBpbmZvLT5maXguc21lbV9zdGFydCA9ICh1bnNpZ25lZCBsb25nKWluZm8tPnNj
cmVlbl9iYXNlOwo+IAo+IElzbid0IHNjcmVlbl9iYXNlIHRoZSB2aXJ0dWFsIGFkZHJlc3M/IFdo
eSBkbyB3ZSBwdXQgdGhhdCBpbnRvCj4gc21lbV9zdGFydD8KCkkgbWFkZSB0aGUgbWlzdGFrZSBv
ZiB0aGlua2luZyBpdCB3YXMgb25seSBpbnRlcm5hbGx5IHVzZWQuIFNvIEkgdGFrZQp0aGF0IGFz
IGFuIGltcGxpY2l0IHItYiBmb3IgdGhlIGZpeCBhbmQgdGhlIGlndCBwcm92aW5nIHRoYXQgSSB3
YXMKZHVtYi4uLgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5NDE2
LwpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5NDIxLwotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
