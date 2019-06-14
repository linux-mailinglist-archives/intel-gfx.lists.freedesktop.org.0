Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A2946402
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D29789A7A;
	Fri, 14 Jun 2019 16:27:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05EC489A7A
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:26:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905116-1500050 for multiple; Fri, 14 Jun 2019 17:26:45 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190614151731.17608-23-tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-23-tvrtko.ursulin@linux.intel.com>
Message-ID: <156052960284.7796.644751129756189340@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Jun 2019 17:26:42 +0100
Subject: Re: [Intel-gfx] [RFC 22/31] drm/i915: Move i915_gem_chipset_flush
 to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyMikKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0LmgKPiBpbmRleCAwNTFkNzA2OWRiNTUuLjhkODQ3MTZjM2IzYiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5oCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAo+IEBAIC05LDggKzksNyBAQAo+ICAKPiAg
I2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV90eXBlcy5oIgo+ICAjaW5jbHVkZSAiZ3QvaW50ZWxf
Z3RfdHlwZXMuaCIKPiAtCj4gLXN0cnVjdCBkcm1faTkxNV9wcml2YXRlOwo+ICsjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKPiAgCj4gIHZvaWQgaW50ZWxfZ3RfaW5pdChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
LCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7Cj4gIAo+IEBAIC0yMCw0ICsxOSwxMSBA
QCB2b2lkIGludGVsX2d0X2NsZWFyX2Vycm9yX3JlZ2lzdGVycyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0
LAo+ICAKPiAgdm9pZCBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcyhzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KTsKPiAgCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpbnRlbF9ndF9jaGlwc2V0X2ZsdXNoKHN0
cnVjdCBpbnRlbF9ndCAqZ3QpCj4gK3sKPiArICAgICAgIHdtYigpOwo+ICsgICAgICAgaWYgKElO
VEVMX0dFTihndC0+aTkxNSkgPCA2KQo+ICsgICAgICAgICAgICAgICBpbnRlbF9ndHRfY2hpcHNl
dF9mbHVzaCgpOwo+ICt9CgpHcnIsIGluIG15IGN1cnJlbnQgbWluZHNldCBJJ2QgdGFrZSBhbiBv
dXQtb2YtbGluZSBjaGlwc2V0IGZsdXNoIG92ZXIgYW4KaW5jbHVkZSAiaTkxNV9kcnYuaCIKCklu
IHRoZSBsb25nIHJ1biwgaGF2aW5nIGl0IG91dC1vZi1saW5lIG1heSBiZSBiZXR0ZXIgZm9yIGRl
dGVjdGluZyBpZiBpdAppcyBldmVyIGEgcHJvYmxlbSAobW9yZSBub3RpY2VhYmxlKS4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
