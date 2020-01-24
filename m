Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D10DB1479F7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 10:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3726FF9C;
	Fri, 24 Jan 2020 09:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B316FF9C
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:06:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19991214-1500050 for multiple; Fri, 24 Jan 2020 09:05:59 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200122204329.2477-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200122204329.2477-1-ville.syrjala@linux.intel.com>
Message-ID: <157985675792.6050.13590254937126760466@skylake-alporthouse-com>
Date: Fri, 24 Jan 2020 09:05:57 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix modeset locks in
 sanitize_watermarks()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTIyIDIwOjQzOjI5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2UndmUgYWRk
ZWQgbW9yZSBpbnRlcm5hbCB0aGluZ3MgdGhhdCB1c2UgbW9kZXNldCBsb2NrcyBhbmQKPiB0aHVz
IHdlIG5lZWQgdG8gYmUgcHJlcGFyZWQgZm9yIGludGVsX2F0b21pY19jaGVjaygpIGdyYWJiaW5n
Cj4gbW9yZSBsb2NrcyB0aGFuIHdoYXQgb3VyIGluaXRpYWwgZHJtX21vZGVzZXRfbG9ja19hbGxf
Y3R4KCkKPiB0b29rLiBTbyB3ZSdyZSBtaXNzaW5nIHRoZSBiYWNrb2ZmIGhhbmRsaW5nIGhlcmUu
Cj4gCj4gQWxzbyBkcm1fYXRvbWljX2hlbHBlcl9kdXBsaWNhdGVfc3RhdGUoKSB3b3JrcyBhZ2Fp
bnN0IHVzCj4gYnkgY2xlYXJpbmcgc3RhdGUtPmFjcXVpcmVfY3R4IGluIGFudGljaXBhdGlvbiBv
Zgo+IGRybV9hdG9taWNfaGVscGVyX2NvbW1pdF9kdXBsaWNhdGVkX3N0YXRlKCkgYmVpbmcgdXNl
ZCB0bwo+IGNvbW1pdCB0aGUgc3RhdGUuCj4gCj4gV2UgY291bGQgcHJvYmFibHkganVzdCByZXNl
dCBhY3F1aXJlX2N0eCBiYWNrLCBidXQgaW5zdGVhZAo+IGxldCdzIGp1c3QgcmV3cml0ZSB0aGUg
d2hvbGUgdGhpbmcgd2l0aG91dCB1c2luZyBlaXRoZXIgb2YKPiB0aG9zZSAiaGVscGVycyIuIFRo
ZXJlJ3MgYWxzbyBubyBuZWVkIHRvIGFkZCBhbnkgY29ubmVjdG9ycwo+IHRvIHRoZSBzdGF0ZSBo
ZXJlIHNpbmNlIHdlIGp1c3Qgd2FudCB0aGUgbmV3IHdhdGVybWFya3MKPiB3aGljaCBkb24ndCBk
ZXBlbmQgb24gY29ubmVjdG9ycy4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KClNvbWUgYW1vdW50IG9mIHN0YXJpbmcgbGF0ZXIsIGFpdWkg
dGhlIG5ldyBmbG93IGlzIGNvcnJlY3QuClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
