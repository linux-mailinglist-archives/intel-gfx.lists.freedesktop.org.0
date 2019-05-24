Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EA629505
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5EF6E04B;
	Fri, 24 May 2019 09:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BEF6E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:42:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16665938-1500050 for multiple; Fri, 24 May 2019 10:42:36 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
In-Reply-To: <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
Message-ID: <155869095409.28319.17899714925932847048@skylake-alporthouse-com>
Date: Fri, 24 May 2019 10:42:34 +0100
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yNCAxMDoyODoxNikKPiBPbiAyMS8w
NS8yMDE5IDE3OjM2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTIxIDE1OjA4OjUyKQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gPj4gaW5kZXggZjI2M2E4Mzc0MjczLi4yYWQ5NTk3N2Y3YTggMTAwNjQ0Cj4gPj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4+IEBAIC0yMDg1LDcgKzIwODUsNyBA
QCBzdGF0aWMgaW50IGdlbjlfZW1pdF9iYl9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwK
PiA+PiAgICAgICAgICBpZiAoSVNfRVJSKGNzKSkKPiA+PiAgICAgICAgICAgICAgICAgIHJldHVy
biBQVFJfRVJSKGNzKTsKPiA+PiAgIAo+ID4+IC0gICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZG
IHwgTUlfQVJCX0VOQUJMRTsKPiA+PiArICAgICAgICpjcysrID0gTUlfQVJCX09OX09GRiB8IHJx
LT5od19jb250ZXh0LT5hcmJfZW5hYmxlOwo+ID4gTXkgcHJlZGljdGlvbiBpcyB0aGF0IHRoaXMg
d2lsbCByZXN1bHQgaW4gdGhpcyBjb250ZXh0IGJlaW5nIHJlc2V0IGR1ZQo+ID4gdG8gcHJlZW1w
dGlvbiB0aW1lb3V0cyBhbmQgdGhlIGNvbnRleHQgdW5kZXIgcHJvZmlsZSBiZWluZyBiYW5uZWQu
IE5vdGUKPiA+IHRoYXQgcHJlZW1wdGlvbiB0aW1lb3V0cyB3aWxsIGJlIHRoZSBwcmltYXJ5IG1l
YW5zIGZvciBoYW5nIGRldGVjdGlvbgo+ID4gZm9yIGVuZGxlc3MgYmF0Y2hlcy4KPiA+IC1DaHJp
cwo+ID4KPiAKPiBBbm90aGVyIHRob3VnaHQgOgo+IAo+IFdoYXQgaWYgd2UgcmFuIHdpdGggdGhl
IG1heCBwcmlvcml0eT8KPiBJdCB3b3VsZCBiZSBmaW5lIHRvIGhhdmUgdGhlIGhhbmdjaGVjayBw
cmVlbXB0IHRoZSB3b3JrbG9hZCAoaXQncyBwcmV0dHkgCj4gc2hvcnQgYW5kIHNob3VsZG4ndCBh
ZmZlY3QgcGVyZiBjb3VudGVycyBmcm9tIDNkL2NvbXB1dGUgcGlwZWxpbmUgbXVjaCkgCj4gYXMg
bG9uZyBhcyBlbnN1cmUgbm90aGluZyBlbHNlIHJ1bnMuCgpJdCdzIGNlcnRhaW5seSBzYWZlciBm
cm9tIHRoZSBwb3YgdGhhdCB3ZSBkb24ndCBibG9jayBwcmVlbXB0aW9uIGFuZCBzbwpkb24ndCBp
bmN1ciBmb3JjZWQgcmVzZXRzLiBOb3Qga2VlbiBvbiB0aGUgc3lzdGVtIGJlaW5nIHBlcnR1cmJl
ZCBieSB0aGUKYWN0IG9mIG9ic2VydmluZyBpdCwgYW5kIEkgc3RpbGwgZGlzbGlrZSB0aGUgbm90
aW9uIG9mIHBlcm1pdHRpbmcgb25lCmNsaWVudCB0byBob2cgdGhlIEdQVSBzbyBlYXNpbHkuIE1h
a2VzIG1lIHRoaW5rIG9mIFJUIHRocm90dGxpbmcsIGFuZApnZW5lcmFsbHkgdGhyb3dpbmcgb3V0
IHRoZSBhYnNvbHV0ZSBwcmlvcml0eSBzeXN0ZW0gKGluIGV4Y2hhbmdlIGZvcgpjb21wdXRlZCBk
ZWFkbGluZXMgb3Igc29tZXRoaW5nKS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
