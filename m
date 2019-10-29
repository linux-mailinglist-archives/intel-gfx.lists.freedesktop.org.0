Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE55E8524
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:09:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37A06EB27;
	Tue, 29 Oct 2019 10:09:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCE26EB27
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:09:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19004284-1500050 for multiple; Tue, 29 Oct 2019 10:09:11 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191029095856.25431-7-matthew.auld@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-7-matthew.auld@intel.com>
Message-ID: <157234374888.10560.15684744478233434927@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 10:09:08 +0000
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/selftests: check for missing
 aperture
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjkgMDk6NTg6NTYpCj4gV2UgbWF5IGJlIG1p
c3Npbmcgc3VwcG9ydCBmb3IgdGhlIG1hcHBhYmxlIGFwZXJ0dXJlIG9uIHNvbWUgcGxhdGZvcm1z
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNv
bT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT4KPiAtLS0KPiAgLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29o
ZXJlbmN5LmMgICAgfCAgNSArKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRl
c3RzL2k5MTVfZ2VtX21tYW4uYyB8ICA2ICsrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9oYW5nY2hlY2suYyAgICAgICB8IDE0ICsrKysrKysrKystLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jICAgICAgICAgIHwgIDQgKysrKwo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgICAgICB8ICAz
ICsrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29oZXJlbmN5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvaGVyZW5jeS5jCj4gaW5kZXggMGExOTVlNWI5OGU2Li4yNzllOTA0N2JjNmQgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b2hlcmVuY3kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29oZXJlbmN5LmMKPiBAQCAtMjUwLDcgKzI1MCwxMCBAQCBzdGF0aWMgYm9vbCBhbHdh
eXNfdmFsaWQoc3RydWN0IGNvbnRleHQgKmN0eCkKPiAgCj4gIHN0YXRpYyBib29sIG5lZWRzX2Zl
bmNlX3JlZ2lzdGVycyhzdHJ1Y3QgY29udGV4dCAqY3R4KQo+ICB7CgpJIHZvdGUgZm9yIGEgc3Ry
dWN0IGludGVsX2d0ICpndCA9IGN0eC0+ZW5naW5lLT5ndDsKCj4gLSAgICAgICByZXR1cm4gIWlu
dGVsX2d0X2lzX3dlZGdlZChjdHgtPmVuZ2luZS0+Z3QpOwo+ICsgICAgICAgaWYgKGludGVsX2d0
X2lzX3dlZGdlZChjdHgtPmVuZ2luZS0+Z3QpKQo+ICsgICAgICAgICAgICAgICByZXR1cm4gZmFs
c2U7Cj4gKwo+ICsgICAgICAgcmV0dXJuIGN0eC0+ZW5naW5lLT5ndC0+Z2d0dC0+bnVtX2ZlbmNl
czsKPiAgfQoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
