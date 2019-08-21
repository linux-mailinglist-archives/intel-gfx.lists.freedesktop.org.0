Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF78982BC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 20:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018B26E963;
	Wed, 21 Aug 2019 18:28:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7296E963
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 18:27:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18218400-1500050 for multiple; Wed, 21 Aug 2019 19:27:47 +0100
MIME-Version: 1.0
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190821063236.19705-6-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-6-animesh.manna@intel.com>
Message-ID: <156641206513.20466.17542600102889652839@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 21 Aug 2019 19:27:45 +0100
Subject: Re: [Intel-gfx] [PATCH v2 05/15] drm/i915/dsb: Indexed register
 write function for DSB.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3OjMyOjI1KQo+IERTQiBjYW4gcHJv
Z3JhbSBsYXJnZSBzZXQgb2YgZGF0YSB0aHJvdWdoIGluZGV4ZWQgcmVnaXN0ZXIgd3JpdGUKPiAo
b3Bjb2RlIDB4OSkgaW4gb25lIHNob3QuIFdpbGwgYmUgdXNpbmcgZm9yIGJ1bGsgcmVnaXN0ZXIg
cHJvZ3JhbW1pbmcKPiBlLmcuIGdhbW1hIGx1dCBwcm9ncmFtbWluZywgSERSIG1ldGEgZGF0YSBw
cm9ncmFtbWluZy4KPiAKPiBDYzogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50
ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYyB8IDQyICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDYgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQs
IDQ4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmMKPiBpbmRleCA4YTlkMDgyYjE2MDEuLjRmZThjYWM2MjQ2YSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+IEBAIC0yMiw2ICsyMiw3IEBACj4gICNk
ZWZpbmUgRFNCX09QQ09ERV9JTkRFWEVEX1dSSVRFICAgICAgIDB4OQo+ICAjZGVmaW5lIERTQl9P
UENPREVfUE9MTCAgICAgICAgICAgICAgICAgICAgICAgIDB4QQo+ICAjZGVmaW5lIERTQl9CWVRF
X0VOICAgICAgICAgICAgICAgICAgICAoMHhmIDw8IDIwKQo+ICsjZGVmaW5lIERTQl9SRUdfVkFM
VUVfTUFTSyAgICAgICAgICAgICAweGZmZmZmCj4gIAo+ICBzdHJ1Y3QgaW50ZWxfZHNiICoKPiAg
aW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiBAQCAtNzksNiArODAsNDIg
QEAgaW50ZWxfZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgICAgICAgIHJldHVy
biBkc2I7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGludGVsX2RzYl9pbmRleGVkX3JlZ193cml0
ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsIGk5MTVfcmVnX3QgcmVnLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB1MzIgdmFsKQo+ICt7Cj4gKyAgICAgICB1MzIgKmJ1
ZiA9IGRzYi0+Y21kX2J1ZjsKPiArICAgICAgIHUzMiByZWdfdmFsOwo+ICsKPiArICAgICAgIHJl
Z192YWwgPSBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0ICsgMV0gJiBEU0JfUkVHX1ZBTFVFX01B
U0s7CgpVbmNhY2hlZCByZWFkLgoKPiArICAgICAgIGlmIChyZWdfdmFsICE9IGk5MTVfbW1pb19y
ZWdfb2Zmc2V0KHJlZykpIHsKPiArICAgICAgICAgICAgICAgLyogRXZlcnkgaW5zdHJ1Y3Rpb24g
c2hvdWxkIGJlIDggYnl0ZSBhbGlnbmVkLiAqLwo+ICsgICAgICAgICAgICAgICBpZiAoZHNiLT5m
cmVlX3BvcyAmIDB4MSkKPiArICAgICAgICAgICAgICAgICAgICAgICBkc2ItPmZyZWVfcG9zKys7
Cgpkc2ItPmZyZWVfcG9zID0gQUxJR04oZHNiLT5mcmVlX3BvcywgMik7Cgo+ICsKPiArICAgICAg
ICAgICAgICAgLyogVXBkYXRlIHRoZSBzaXplLiAqLwo+ICsgICAgICAgICAgICAgICBkc2ItPmlu
c19zdGFydF9vZmZzZXQgPSBkc2ItPmZyZWVfcG9zOwo+ICsgICAgICAgICAgICAgICBidWZbZHNi
LT5mcmVlX3BvcysrXSA9IDE7Cj4gKwo+ICsgICAgICAgICAgICAgICAvKiBVcGRhdGUgdGhlIG9w
Y29kZSBhbmQgcmVnLiAqLwo+ICsgICAgICAgICAgICAgICBidWZbZHNiLT5mcmVlX3BvcysrXSA9
IChEU0JfT1BDT0RFX0lOREVYRURfV1JJVEUgIDw8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIERTQl9PUENPREVfU0hJRlQpIHwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQocmVnKTsKPiArCj4gKyAg
ICAgICAgICAgICAgIC8qIFVwZGF0ZSB0aGUgdmFsdWUuICovCj4gKyAgICAgICAgICAgICAgIGJ1
Zltkc2ItPmZyZWVfcG9zKytdID0gdmFsOwo+ICsgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAg
ICAgICAgLyogVXBkYXRlIHRoZSBuZXcgdmFsdWUuICovCj4gKyAgICAgICAgICAgICAgIGJ1Zltk
c2ItPmZyZWVfcG9zKytdID0gdmFsOwo+ICsKPiArICAgICAgICAgICAgICAgLyogVXBkYXRlIHRo
ZSBzaXplLiAqLwo+ICsgICAgICAgICAgICAgICBidWZbZHNiLT5pbnNfc3RhcnRfb2Zmc2V0XSsr
OwoKVW5jYWNoZWQgcmVhZCBhbmQgd3JpdGUuIFNvIGZhciB0aGlzIGlzIHdvcmtpbmcgb3V0IHRv
IGJlIF9tb3JlXwpleHBlbnNpdmUgdGhhbiBtbWlvLgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
