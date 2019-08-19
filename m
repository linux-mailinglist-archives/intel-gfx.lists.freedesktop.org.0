Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC08B91F9F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 11:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F10E96E0E4;
	Mon, 19 Aug 2019 09:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 898F16E0E4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 09:05:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18185989-1500050 for multiple; Mon, 19 Aug 2019 10:04:55 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87ftlx5yvi.fsf@gaia.fi.intel.com>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-3-chris@chris-wilson.co.uk>
 <87ftlx5yvi.fsf@gaia.fi.intel.com>
Message-ID: <156620549366.30002.3962015031126643907@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 19 Aug 2019 10:04:53 +0100
Subject: Re: [Intel-gfx] [PATCH 02/18] drm/i915/gt: Mark up the nested
 engine-pm timeline lock as irqsafe
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE5IDA5OjQzOjI5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXZSB1c2UgYSBmYWtl
IHRpbWVsaW5lLT5tdXRleCBsb2NrIHRvIHJlYXNzdXJlIGxvY2tkZXAgdGhhdCB0aGUgdGltZWxp
bmUKPiA+IGlzIGFsd2F5cyBsb2NrZWQgd2hlbiBlbWl0dGluZyByZXF1ZXN0cy4gSG93ZXZlciwg
dGhlIHVzZSBpbnNpZGUKPiA+IF9fZW5naW5lX3BhcmsoKSBtYXkgYmUgaW5zaWRlIGhhcmRpcnEg
YW5kIHNvIGxvY2tkZXAgbm93IGNvbXBsYWlucyBhYm91dAo+ID4gdGhlIG1peGVkIGlycS1zdGF0
ZSBvZiB0aGUgbmVzdGVkIGxvY2tlZC4gRGlzYWJsZSBpcnFzIGFyb3VuZCB0aGUKPiA+IGxvY2tk
ZXAgdHJhY2tpbmcgdG8ga2VlcCBpdCBoYXBweS4KPiA+Cj4gPiBGaXhlczogNmM2OWE0NTQ0NWFm
ICgiZHJtL2k5MTUvZ3Q6IE1hcmsgY29udGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3RlZCBi
eSB0aW1lbGluZS0+bXV0ZXgiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9wbS5jIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfcG0uYwo+ID4gaW5kZXggNWYwM2Y3ZGNhZDcyLi41ZDAwMzc1MTk2OGIgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKPiA+IEBAIC0zNyw5ICsz
NywxNSBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3VucGFyayhzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAq
d2YpCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiArI2lmIElTX0VOQUJMRUQo
Q09ORklHX0xPQ0tERVApCj4gPiArCj4gPiAgc3RhdGljIGlubGluZSB2b2lkIF9fdGltZWxpbmVf
bWFya19sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ICB7Cj4gPiArICAgICB1bnNp
Z25lZCBsb25nIGZsYWdzOwo+ID4gKwo+ID4gKyAgICAgbG9jYWxfaXJxX3NhdmUoZmxhZ3MpOwo+
ID4gICAgICAgbXV0ZXhfYWNxdWlyZSgmY2UtPnRpbWVsaW5lLT5tdXRleC5kZXBfbWFwLCAyLCAw
LCBfVEhJU19JUF8pOwo+ID4gKyAgICAgbG9jYWxfaXJxX3Jlc3RvcmUoZmxhZ3MpOwo+IAo+IEkg
YW0gc3RhcnRpbmcgdG8gaGF2ZSBzZWNvbmQgdGhvdWdodHMuIE9uZSBjb3VsZCBhcmd1ZSB0aGF0
IHRoZQo+IG5ldCBlZmZlY3QgaXMgb24gcG9zaXRpdmUgc2lkZS4KPiAKPiBCdXQgd2UgZGl2ZXJn
ZSBvbiBiZWhhdmlvdXIgbm93LgoKQXJlIHlvdSB3b3JyeWluZyBhYm91dCB0aGUgI2lmLSNlbHNl
IGFuZCBhY2NpZGVudGFsbHkgc3RpY2tpbmcgbW9yZSBjb2RlCmluIHRoZXJlPwotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
