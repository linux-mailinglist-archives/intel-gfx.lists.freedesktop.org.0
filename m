Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55269E5E52
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 19:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584226E0DA;
	Sat, 26 Oct 2019 17:55:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8596D6E0DA;
 Sat, 26 Oct 2019 17:55:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18976799-1500050 for multiple; Sat, 26 Oct 2019 18:55:35 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191026173923.GA10452@intel.intel>
References: <20191025142333.11806-1-chris@chris-wilson.co.uk>
 <20191026173923.GA10452@intel.intel>
Message-ID: <157211253297.13056.6458418209046254056@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 26 Oct 2019 18:55:33 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Use explicit iterator names
 in for_each_engine()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTI2IDE4OjM5OjIzKQo+IEhpIENocmlzLAo+IAo+
IEkgdGhvdWdodCB3ZSB3YW50ZWQgdG8ga2VlcCB0aGUgd2FybmluZ3MgYXMgYSByZW1pbmRlciB1
bnRpbCB3ZQo+IHJlbW92ZWQgdGhlIGxlZ2FjeSBmb3JlYWNoIDopCj4gCj4gWy4uLl0KPiAKPiA+
IGRpZmYgLS1naXQgYS9saWIvaWd0X2d0LmggYi9saWIvaWd0X2d0LmgKPiA+IGluZGV4IDczYjUw
MDJhMC4uNjYwODhkMzkxIDEwMDY0NAo+ID4gLS0tIGEvbGliL2lndF9ndC5oCj4gPiArKysgYi9s
aWIvaWd0X2d0LmgKPiA+IEBAIC03MiwxOSArNzIsMjEgQEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBp
bnRlbF9leGVjdXRpb25fZW5naW5lIHsKPiA+ICAgICAgIHVuc2lnbmVkIGZsYWdzOwo+ID4gIH0g
aW50ZWxfZXhlY3V0aW9uX2VuZ2luZXNbXTsKPiA+ICAKPiA+ICsjZGVmaW5lIGViX3JpbmcoZSkg
KChlKS0+ZXhlY19pZCB8IChlKS0+ZmxhZ3MpCj4gPiArCj4gPiAgI2RlZmluZSBmb3JfaWYoZXhw
cl9fKSBpZiAoIShleHByX18pKSB7fSBlbHNlCj4gPiAgCj4gPiAtI2RlZmluZSBmb3JfZWFjaF9l
bmdpbmUoZmRfXywgZmxhZ3NfXykgXAo+ID4gLSAgICAgZm9yIChjb25zdCBzdHJ1Y3QgaW50ZWxf
ZXhlY3V0aW9uX2VuZ2luZSAqZV9fID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7XAo+ID4gLSAg
ICAgICAgICBlX18tPm5hbWU7IFwKPiA+IC0gICAgICAgICAgZV9fKyspIFwKPiA+IC0gICAgICAg
ICAgICAgZm9yX2lmIChnZW1faGFzX3JpbmcoZmRfXywgZmxhZ3NfXyA9IGVfXy0+ZXhlY19pZCB8
IGVfXy0+ZmxhZ3MpKQo+ID4gLQo+ID4gLSNkZWZpbmUgZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5l
KGZkX18sIGZsYWdzX18pIFwKPiA+IC0gICAgIGZvciAoY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1
dGlvbl9lbmdpbmUgKmVfXyA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzO1wKPiA+IC0gICAgICAg
ICAgZV9fLT5uYW1lOyBcCj4gPiAtICAgICAgICAgIGVfXysrKSBcCj4gPiAtICAgICAgICAgICAg
IGZvcl9pZiAoZ2VtX3JpbmdfaGFzX3BoeXNpY2FsX2VuZ2luZShmZF9fLCBmbGFnc19fID0gZV9f
LT5leGVjX2lkIHwgZV9fLT5mbGFncykpCj4gPiArI2RlZmluZSBmb3JfZWFjaF9lbmdpbmUoaXRf
XywgZmRfXykgXAo+ID4gKyAgICAgZm9yIChjb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2Vu
Z2luZSAqaXRfXyA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzO1wKPiA+ICsgICAgICAgICAgaXRf
Xy0+bmFtZTsgXAo+ID4gKyAgICAgICAgICBpdF9fKyspIFwKPiA+ICsgICAgICAgICAgICAgZm9y
X2lmIChnZW1faGFzX3JpbmcoZmRfXywgZWJfcmluZyhpdF9fKSkpCj4gPiArCj4gPiArI2RlZmlu
ZSBmb3JfZWFjaF9waHlzaWNhbF9lbmdpbmUoaXRfXywgZmRfXykgXAo+ID4gKyAgICAgZm9yIChj
b25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZSAqaXRfXyA9IGludGVsX2V4ZWN1dGlv
bl9lbmdpbmVzO1wKPiA+ICsgICAgICAgICAgaXRfXy0+bmFtZTsgXAo+ID4gKyAgICAgICAgICBp
dF9fKyspIFwKPiA+ICsgICAgICAgICAgICAgZm9yX2lmIChnZW1fcmluZ19oYXNfcGh5c2ljYWxf
ZW5naW5lKGZkX18sIGViX3JpbmcoaXRfXykpKQo+IAo+ICh3ZSBhbHJlYWR5IHRhbGtlZCBvbmNl
IGFib3V0IHRoaXMpIGl0IG1ha2VzIG1vcmUgc2Vuc2UgdG8gbWUgdGhlCj4gaXRlcmF0b3IgdG8g
YmUgZGVjbGFyZWQgb3V0c2lkZSB0aGUgZnJvbSBsb29wIGluIG9yZGVyIHRvIG5vdCBrZWVwCj4g
aXQgaGlkZGVuIGZyb20gdGhlIHVzZXIuCj4gCj4gSXQncyBhbHNvIHRvIGJlIGNvbnNpc3RlbnQg
d2l0aCBhbGwgdGhlIHJlc3Qgb2YgdGhlIGl0ZXJhdGlvbnMsCj4gc3RhcnRpbmcgZnJvbSB0aGUg
J2ZvcigpJy4KClRoaXMgaXMgb25lIEM5OSBmZWF0dXJlIEkgd2lzaCB3ZSBjb3VsZCB1c2UgaW4g
dGhlIGtlcm5lbC4gVGhhdCBhbmQKYXV0by4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
