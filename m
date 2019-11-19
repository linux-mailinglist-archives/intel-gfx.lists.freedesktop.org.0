Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB4110292A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:21:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74916E8CF;
	Tue, 19 Nov 2019 16:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1036E8CF
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:21:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19260449-1500050 for multiple; Tue, 19 Nov 2019 16:21:00 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-7-chris@chris-wilson.co.uk>
 <6c06a4a7-7719-c83b-0fa0-ddc47b4d91c9@linux.intel.com>
In-Reply-To: <6c06a4a7-7719-c83b-0fa0-ddc47b4d91c9@linux.intel.com>
Message-ID: <157418045491.12093.7455490803476182400@skylake-alporthouse-com>
Date: Tue, 19 Nov 2019 16:20:54 +0000
Subject: Re: [Intel-gfx] [PATCH 06/19] drm/i915/gt: Schedule request
 retirement when submission idles
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xOSAxNTowNDo0NikKPiAKPiBPbiAxOC8x
MS8yMDE5IDIzOjAyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ID4gaW5kZXggMzNjZTI1OGQ0ODRmLi5mN2M4ZmVjNDM2YTkgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0xNDIsNiArMTQyLDcgQEAK
PiA+ICAgI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgo+ID4gICAjaW5jbHVkZSAiaW50ZWxf
Z3QuaCIKPiA+ICAgI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCj4gPiArI2luY2x1ZGUgImludGVs
X2d0X3JlcXVlc3RzLmgiCj4gPiAgICNpbmNsdWRlICJpbnRlbF9scmNfcmVnLmgiCj4gPiAgICNp
bmNsdWRlICJpbnRlbF9tb2NzLmgiCj4gPiAgICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgo+ID4g
QEAgLTIyNzgsNiArMjI3OSwxOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90
YXNrbGV0KHVuc2lnbmVkIGxvbmcgZGF0YSkKPiA+ICAgICAgICAgICAgICAgaWYgKHRpbWVvdXQg
JiYgcHJlZW1wdF90aW1lb3V0KGVuZ2luZSkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgcHJl
ZW1wdF9yZXNldChlbmdpbmUpOwo+ID4gICAgICAgfQo+ID4gKwo+ID4gKyAgICAgLyoKPiA+ICsg
ICAgICAqIElmIHRoZSBHUFUgaXMgY3VycmVudGx5IGlkbGUsIHJldGlyZSB0aGUgb3V0c3RhbmRp
bmcgY29tcGxldGVkCj4gPiArICAgICAgKiByZXF1ZXN0cy4gVGhpcyB3aWxsIGFsbG93IHVzIHRv
IGVudGVyIHNvZnQtcmM2IGFzIHNvb24gYXMgcG9zc2libGUsCj4gPiArICAgICAgKiBhbGJlaXQg
YXQgdGhlIGNvc3Qgb2YgcnVubmluZyB0aGUgcmV0aXJlIHdvcmtlciBtdWNoIG1vcmUgZnJlcXVl
bnRseQo+ID4gKyAgICAgICogKG92ZXIgdGhlIGVudGlyZSBHVCBub3QganVzdCB0aGlzIGVuZ2lu
ZSkgYW5kIGVtaXR0aW5nIG1vcmUgaWRsZQo+ID4gKyAgICAgICogYmFycmllcnMgKGkuZS4ga2Vy
bmVsIGNvbnRleHQgc3dpdGNoZXMgdW5waW5uaW5nIGFsbCB0aGF0IHdlbnQKPiA+ICsgICAgICAq
IGJlZm9yZSkgd2hpY2ggbWF5IGFkZCBzb21lIGV4dHJhIGxhdGVuY3kuCj4gPiArICAgICAgKi8K
PiA+ICsgICAgIGlmIChpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSAmJgo+ID4gKyAg
ICAgICAgICFleGVjbGlzdHNfYWN0aXZlKCZlbmdpbmUtPmV4ZWNsaXN0cykpCj4gPiArICAgICAg
ICAgICAgIGludGVsX2d0X3NjaGVkdWxlX3JldGlyZV9yZXF1ZXN0cyhlbmdpbmUtPmd0KTsKPiAK
PiBJIGFtIHN0aWxsIG5vdCBhIGZhbiBvZiBkb2luZyB0aGlzIGZvciBhbGwgcGxhdGZvcm1zLgoK
SSB1bmRlcnN0YW5kLiBJIHRoaW5rIGl0IG1ha2VzIGEgZmFpciBhbW91bnQgb2Ygc2Vuc2UgdG8g
ZG8gZWFybHkKcmV0aXJlcywgYW5kIHdpc2ggdG8gcHVyc3VlIHRoYXQgaWYgSSBjYW4gc2hvdyB0
aGVyZSBpcyBubyBoYXJtLgogCj4gSXRzIG5vdCBqdXN0IHRoZSBjb3N0IG9mIHJldGlyZW1lbnQg
YnV0IHRoZXJlIGlzIAo+IGludGVsX2VuZ2luZV9mbHVzaF9zdWJtaXNzaW9uIG9uIGFsbCBlbmdp
bmVzIGluIHRoZXJlIGFzIHdlbGwgd2hpY2ggd2UgCj4gY2Fubm90IGF2b2lkIHRyaWdnZXJpbmcg
ZnJvbSB0aGlzIHBhdGguCj4gCj4gV291bGQgaXQgYmUgd29ydGggZXhwZXJpbWVudGluZyB3aXRo
IGFkZGl0aW9uYWwgcGVyLWVuZ2luZSByZXRpcmUgCj4gd29ya2Vycz8gTW9zdCBvZiB0aGUgY29k
ZSBjb3VsZCBiZSBzaGFyZWQsIGp1c3QgYSBsaXR0bGUgYml0IG9mIAo+IHNwZWNpYWxpemF0aW9u
IHRvIGZpbHRlciBvbiBlbmdpbmUuCgpJIGhhdmVuJ3Qgc2tldGNoZWQgb3V0IGFueXRoaW5nIG1v
cmUgdGhhbiBwZWVraW5nIGF0IHRoZSBsYXN0IHJlcXVlc3Qgb24KdGhlIHRpbWVsaW5lIGFuZCBk
b2luZyBhIHJxLT5lbmdpbmUgPT0gZW5naW5lIGZpbHRlci4gV2Fsa2luZyB0aGUgZ2xvYmFsCnRp
bWVsaW5lLmFjdGl2ZV9saXN0IGluIHRoYXQgY2FzZSBpcyBhbHNvIGEgbnVpc2FuY2UuCgpUaGVy
ZSdzIGRlZmluaXRlbHkgc2NvcGUgaGVyZSBmb3IgdXMgdXNpbmcgc29tZSBtb3JlIGluZm9ybWF0
aW9uIGZyb20KcHJvY2Vzc19jc2IoKSBhYm91dCB3aGljaCBjb250ZXh0IGNvbXBsZXRlZCBhbmQg
bGltaXQgd29yayB0byB0aGF0CnRpbWVsaW5lLiBIbW0sIHNvbWV0aGluZyBhbG9uZyB0aG9zZSBs
aW5lcyBtYXliZS4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
