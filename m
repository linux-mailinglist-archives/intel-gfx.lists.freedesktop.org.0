Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3B96379F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 16:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36A36E060;
	Tue,  9 Jul 2019 14:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92446E060
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 14:18:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17186197-1500050 for multiple; Tue, 09 Jul 2019 15:18:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709123351.5645-1-lionel.g.landwerlin@intel.com>
 <20190709123351.5645-11-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190709123351.5645-11-lionel.g.landwerlin@intel.com>
Message-ID: <156268192706.9375.13245515808831651255@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 15:18:47 +0100
Subject: Re: [Intel-gfx] [PATCH v8 10/13] drm/i915: add infrastructure to
 hold off preemption on a request
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMzozMzo0OCkKPiBXZSB3YW50
IHRvIHNldCB0aGlzIGZsYWcgaW4gdGhlIG5leHQgY29tbWl0IG9uIHJlcXVlc3RzIGNvbnRhaW5p
bmcKPiBwZXJmIHF1ZXJpZXMgc28gdGhhdCB0aGUgcmVzdWx0IG9mIHRoZSBwZXJmIHF1ZXJ5IGNh
biBqdXN0IGJlIGEgZGVsdGEKPiBvZiBnbG9iYWwgY291bnRlcnMsIHJhdGhlciB0aGFuIGRvaW5n
IHBvc3QgcHJvY2Vzc2luZyBvZiB0aGUgT0EKPiBidWZmZXIuCj4gCj4gU2lnbmVkLW9mZi1ieTog
TGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAgICAgIHwgIDcgKysrKysr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ByaW9saXN0X3R5cGVzLmggIHwgIDcgKysr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyAgICAgICAgIHwgIDQg
KystLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCAgICAgICAgIHwgMTQg
KysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Np
b24uYyB8IDEwICsrKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAg
ICAgICAgICAgICB8ICA1ICsrKy0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygr
KSwgNyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IGlu
ZGV4IDMwNzgyYWY4ZjRiYy4uNmMzNWQzM2Y5NjQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKPiBAQCAtMjU2LDcgKzI1NiwxMiBAQCBzdGF0aWMgaW5saW5lIGludCBycV9w
cmlvKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAKPiAgc3RhdGljIGludCBlZmZl
Y3RpdmVfcHJpbyhjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgewo+IC0gICAgICAg
aW50IHByaW8gPSBycV9wcmlvKHJxKTsKPiArICAgICAgIGludCBwcmlvOwo+ICsKPiArICAgICAg
IGlmIChpOTE1X3JlcXVlc3RfaGFzX3BlcmYocnEpKQo+ICsgICAgICAgICAgICAgICBwcmlvID0g
STkxNV9VU0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfUEVSRik7CgpPaywgSSBtYXkganVzdCBz
bmVhayBpbiBhIGNoYW5nZSBoZXJlIHRvIGVtYmVkIHRoZSBJOTE1X1VTRVJfUFJJT1JJVFkoKQpp
bnRvIHRoZSBJOTE1X1BSSU9SSVRZX0ZPTyBpdHNlbGYgc28gdGhhdCBpdCBsb29rcyBkaXN0aW5j
dCBmcm9tIHRoZSBzZXQKb2YgdXNlciBwcmlvcml0aWVzLgoKUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSSdsbCB3b3JrIHVwIGEgc2VsZnRlc3Qg
YW5kIGNoYXNlIHVwIHNvbWUgcmV2aWV3IGZvciB0aGF0LiBUaGFua3MsCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
