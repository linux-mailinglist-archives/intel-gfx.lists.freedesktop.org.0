Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAC3E7123
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 13:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E5DC6E7D2;
	Mon, 28 Oct 2019 12:17:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07EFF6E7D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 12:16:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18992724-1500050 for multiple; Mon, 28 Oct 2019 12:16:56 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191027150313.10802-1-chris@chris-wilson.co.uk>
 <157226478507.8043.8486482740267218580@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <157226478507.8043.8486482740267218580@jlahtine-desk.ger.corp.intel.com>
Message-ID: <157226501399.32326.12505624004113950921@skylake-alporthouse-com>
Date: Mon, 28 Oct 2019 12:16:54 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check a few more fixed
 locations within the context image
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMTAtMjggMTI6MTM6MDUpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMTAtMjcgMTc6MDM6MTMpCj4gPiBBcyB3ZSB1c2UgaGFyZCBjb2Rl
ZCBvZmZzZXRzIGZvciBhIGZldyBsb2NhdGlvbnMgd2l0aGluIHRoZSBjb250ZXh0Cj4gPiBpbWFn
ZSwgaW5jbHVkZSB0aG9zZSBpbiB0aGUgc2VsZnRlc3RzIHRvIGFzc2VydCB0aGF0IHRoZXkgYXJl
IHZhbGlkLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KPiAKPiA8U05JUD4KPiAKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2xyYy5jCj4gPiBAQCAtMzE5NCw2ICszMTk0LDI2IEBAIHN0YXRpYyBpbnQg
bGl2ZV9scmNfZml4ZWQodm9pZCAqYXJnKQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgdTMy
IG9mZnNldDsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKm5hbWU7Cj4g
PiAgICAgICAgICAgICAgICAgfSB0YmxbXSA9IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
IHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZz
ZXQoUklOR19TVEFSVChlbmdpbmUtPm1taW9fYmFzZSkpLAo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBDVFhfUklOR19CVUZGRVJfU1RBUlQgLSAxLAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiUklOR19TVEFSVCIKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIH0sCj4gPiArICAgICAgICAgICAgICAgICAgICAgICB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KFJJTkdfQ1RMKGVuZ2luZS0+bW1p
b19iYXNlKSksCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENUWF9SSU5HX0JV
RkZFUl9DT05UUk9MIC0gMSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlJJ
TkdfQ1RMIgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfSwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9tbWlv
X3JlZ19vZmZzZXQoUklOR19IRUFEKGVuZ2luZS0+bW1pb19iYXNlKSksCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIENUWF9SSU5HX0hFQUQgLSAxLAo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiUklOR19IRUFEIgo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgfSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHsKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgaTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19UQUlMKGVuZ2luZS0+bW1p
b19iYXNlKSksCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENUWF9SSU5HX1RB
SUwgLSAxLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUklOR19UQUlMIgo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgfSwKPiAKPiBRdWl0ZSByZXBldGl0aXZlLiBJZiB5
b3UgYXJlIG5vdCBsb29raW5nIHRvIGFkZCBkaXNzaW1pbGFyIHBhdHRlcm5zLAo+IGNvdWxkIHVz
ZSBhICNkZWZpbmUsIGJ1dCB1cCB0byB5b3UuCgpUaGUgdGFibGVzIHNwYXJlcyB1cyBldmVuIG1v
cmUgcmVwZXRpdGlvbiA6KQpJIGRpZG4ndCBsb29rIHRvbyBoYXJkIGF0IHJlZHVjaW5nIHRoZSBy
ZXBldGl0aXZlbmVzcyBhcyBJIHdhcyBleHBlY3RpbmcKYSBmZXcgbW9yZSByZWdpc3RlcnMgdG8g
YnJlYWsgdGhlIG1vdWxkLiBXZSBzaGFsbCBzZWUgd2hhdCB0aGUgZnV0dXJlCmJyaW5ncy4KClRo
ZXJlJ3MgYSBmZXcgbW9yZSByZWdpc3RlcnMgd2UgdXNlIGhhcmRjb2RlZCBsb2NhdGlvbnMgZm9y
LCBtb3N0bHkgaW4KcGVyZi4gSG1tLCBJIHNob3VsZCBwcm9iYWJseSBtYWtlIHRoYXQgYSBsb2Nh
bCB0ZXN0IGZvciBzZWxmdGVzdF9wZXJmLmMKc28gdGhhdCB0aGUgbG9naWMgYW5kIHRlc3QgYXJl
IGNsb3NlIHRvZ2V0aGVyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
