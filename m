Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C0C230C77
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 16:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89FEB6E0AD;
	Tue, 28 Jul 2020 14:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB33B6E0AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 14:32:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21958920-1500050 for multiple; Tue, 28 Jul 2020 15:31:59 +0100
MIME-Version: 1.0
In-Reply-To: <305ab51a-2424-10e3-771f-8c4d0935c862@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-8-chris@chris-wilson.co.uk>
 <305ab51a-2424-10e3-771f-8c4d0935c862@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jul 2020 15:31:59 +0100
Message-ID: <159594671979.665.1677057801615092854@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/66] drm/i915: Make the stale cached
 active node available for any timeline
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTIyIDEyOjE5OjI4KQo+
IAo+IE9uIDIwMjAtMDctMTUgMTM6NTAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFJhdGhlciB0
aGFuIHJlcXVpcmUgdGhlIG5leHQgdGltZWxpbmUgYWZ0ZXIgaWRsaW5nIHRvIG1hdGNoIHRoZSBN
UlUKPiA+IGJlZm9yZSBpZGxpbmcsIHJlc2V0IHRoZSBpbmRleCBvbiB0aGUgbm9kZSBhbmQgYWxs
b3cgaXQgdG8gbWF0Y2ggdGhlCj4gPiBmaXJzdCByZXF1ZXN0LiBIb3dldmVyLCB0aGlzIHJlcXVp
cmVzIGNtcHhjaGcodTY0KSBhbmQgc28gaXMgbm90IHRyaXZpYWwKPiA+IG9uIDMyYiwgc28gZm9y
IGNvbXBhdGliaWxpdHkgd2UganVzdCBmYWxsYmFjayB0byBrZWVwaW5nIHRoZSBjYWNoZWQgbm9k
ZQo+ID4gcG9pbnRpbmcgdG8gdGhlIE1SVSB0aW1lbGluZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMjEgKysrKysrKysrKysrKysrKysr
Ky0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+ID4gaW5kZXggMDg1NGIxNTUy
YmMxLi42NzM3YjU2MTVjMGMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5j
Cj4gPiBAQCAtMTU3LDYgKzE1NywxMCBAQCBfX2FjdGl2ZV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0
aXZlICpyZWYpCj4gPiAgICAgICAgICAgICAgIHJiX2xpbmtfbm9kZSgmcmVmLT5jYWNoZS0+bm9k
ZSwgTlVMTCwgJnJlZi0+dHJlZS5yYl9ub2RlKTsKPiA+ICAgICAgICAgICAgICAgcmJfaW5zZXJ0
X2NvbG9yKCZyZWYtPmNhY2hlLT5ub2RlLCAmcmVmLT50cmVlKTsKPiA+ICAgICAgICAgICAgICAg
R0VNX0JVR19PTihyZWYtPnRyZWUucmJfbm9kZSAhPSAmcmVmLT5jYWNoZS0+bm9kZSk7Cj4gPiAr
Cj4gPiArICAgICAgICAgICAgIC8qIE1ha2UgdGhlIGNhY2hlZCBub2RlIGF2YWlsYWJsZSBmb3Ig
cmV1c2Ugd2l0aCBhbnkgdGltZWxpbmUgKi8KPiA+ICsgICAgICAgICAgICAgaWYgKElTX0VOQUJM
RUQoQ09ORklHXzY0QklUKSkKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWYtPmNhY2hlLT50
aW1lbGluZSA9IDA7IC8qIG5lZWRzIGNtcHhjaGcodTY0KSAqLwo+ID4gICAgICAgfQo+ID4gICAK
PiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnJlZi0+dHJlZV9sb2NrLCBmbGFncyk7
Cj4gPiBAQCAtMjM1LDkgKzIzOSwyMiBAQCBzdGF0aWMgc3RydWN0IGFjdGl2ZV9ub2RlICpfX2Fj
dGl2ZV9sb29rdXAoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsIHU2NCBpZHgpCj4gPiAgIHsKPiA+
ICAgICAgIHN0cnVjdCBhY3RpdmVfbm9kZSAqaXQ7Cj4gPiAgIAo+ID4gKyAgICAgR0VNX0JVR19P
TihpZHggPT0gMCk7IC8qIDAgaXMgdGhlIHVub3JkZXJlZCB0aW1lbGluZSwgcnN2ZCBmb3IgY2Fj
aGUgKi8KPiA+ICsKPiA+ICAgICAgIGl0ID0gUkVBRF9PTkNFKHJlZi0+Y2FjaGUpOwo+ID4gLSAg
ICAgaWYgKGl0ICYmIGl0LT50aW1lbGluZSA9PSBpZHgpCj4gPiAtICAgICAgICAgICAgIHJldHVy
biBpdDsKPiA+ICsgICAgIGlmIChpdCkgewo+ID4gKyAgICAgICAgICAgICB1NjQgY2FjaGVkID0g
UkVBRF9PTkNFKGl0LT50aW1lbGluZSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmIChjYWNo
ZWQgPT0gaWR4KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVybiBpdDsKPiA+ICsKPiA+
ICsjaWZkZWYgQ09ORklHXzY0QklUIC8qIGZvciBjbXB4Y2hnKHU2NCkgKi8KPiA+ICsgICAgICAg
ICAgICAgaWYgKCFjYWNoZWQgJiYgIWNtcHhjaGcoJml0LT50aW1lbGluZSwgMCwgaWR4KSkgewo+
IAo+IERvZXNuJ3QgY21weGNoZygpIGFscmVhZHkgZG8gYW4gdW5sb2NrZWQgY29tcGFyZSBiZWZv
cmUgYXR0ZW1wdGluZyB0aGUgCj4gbG9ja2VkIGN5Y2xlPwoKSXQgZ29lcyBzdHJhaWdodCB0byB0
aGUgbG9ja2VkIGluc3RydWN0aW9uLCBhcyBpdCdzIHVzdWFsbHkgdXNlZCBhdAp0aGUgZW5kIG9m
IGEgbG9vcCB0aGF0IGxvb2tzIGF0IHRoZSBvbGQgdmFsdWUgKGFuZCBub3cgdHJ5X2NtcHhjaGcp
LiBZb3UKY2FuIHNlZSB0aGUgZGlmZmVyZW5jZSBpbiBwZXJmLCBhcyB0aGUgY21weGNoZyBzdGFu
ZHMgb3V0IGxpa2UgYSBzb3JlCnRodW1iLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
