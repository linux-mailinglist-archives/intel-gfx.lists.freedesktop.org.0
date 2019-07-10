Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA5C64381
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 10:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F11536E0C3;
	Wed, 10 Jul 2019 08:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 378976E0C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 08:25:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17195035-1500050 for multiple; Wed, 10 Jul 2019 09:25:26 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
In-Reply-To: <8736je1ey0.fsf@gaia.fi.intel.com>
Message-ID: <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 09:25:24 +0100
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDA5OjE3OjI3KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGlzIHdpbGwgYmUg
dXNlZnVsIHRvIGNvbnNvbGlkYXRlIHJlY3Vyc2l2ZSBjb2RlLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsrKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHwgMSArCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4g
aW5kZXggZGE0ZGI3NmNlMDU0Li4yZmM2MGU4YWNkOWEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMKPiA+IEBAIC0xNTM3LDYgKzE1MzcsOCBAQCBzdGF0aWMgdm9pZCBw
cGd0dF9pbml0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dCwgc3RydWN0IGludGVsX2d0ICpndCkK
PiA+ICAgICAgIHBwZ3R0LT52bS52bWFfb3BzLnVuYmluZF92bWEgID0gcHBndHRfdW5iaW5kX3Zt
YTsKPiA+ICAgICAgIHBwZ3R0LT52bS52bWFfb3BzLnNldF9wYWdlcyAgID0gcHBndHRfc2V0X3Bh
Z2VzOwo+ID4gICAgICAgcHBndHQtPnZtLnZtYV9vcHMuY2xlYXJfcGFnZXMgPSBjbGVhcl9wYWdl
czsKPiA+ICsKPiA+ICsgICAgIHBwZ3R0LT52bS50b3AgPSBpOTE1X3ZtX2lzXzRsdmwoJnBwZ3R0
LT52bSkgPyAzIDogMjsKPiAKPiBQZXJoYXBzIGl0IGJlY29tZXMgZXZpZGVudCBsYXRlciBpbiB0
aGUgc2VyaWVzIHdoeSB0b3AgYW5kCj4gbm90IGxldmVsLCBzbyB0aGVzZSB3b3VsZCBiZSA0IGFu
ZCAzIGhlcmUuCgpCZWNhdXNlIHdlIHVzZSB0b3AgYW5kIG5vdCBsZXZlbCA6KQotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
