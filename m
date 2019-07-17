Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F62F6BCD6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F9D6E14B;
	Wed, 17 Jul 2019 13:17:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 261996E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:17:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17371140-1500050 for multiple; Wed, 17 Jul 2019 14:17:27 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
Message-ID: <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 17 Jul 2019 14:17:26 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0xNyAxNDowOTowMCkKPiAKPiBPbiAxNi8w
Ny8yMDE5IDE2OjM3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTE2IDE2OjI1OjIyKQo+ID4+Cj4gPj4gT24gMTYvMDcvMjAxOSAxMzo0OSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBt
YXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPiA+Pj4gcHV0X3BhZ2Vz
KCkuIEhvd2V2ZXIsIHRyeV90b191bm1hcCgpIGFjcXVpcmVzIHRoZSBwYWdlIGxvY2sgYW5kIHNv
IHdlCj4gPj4+IG11c3QgYXZvaWQgcmVjdXJzaXZlbHkgbG9ja2luZyB0aGUgcGFnZXMgb3Vyc2Vs
dmVzIC0tIHdoaWNoIG1lYW5zIHRoYXQKPiA+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRo
ZSBsb2NrIGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+ID4+PiBjYW4ndCBiZSBz
dXJlIG9mIHRoZSBsb2NrLCB3ZSBoYXZlIHRvIHJpc2sgc2tpcCBkaXJ0eWluZyB0aGUgcGFnZSwg
b3IKPiA+Pj4gZWxzZSByaXNrIGNhbGxpbmcgc2V0X3BhZ2VfZGlydHkoKSB3aXRob3V0IGEgbG9j
ayBhbmQgc28gcmlzayBmcwo+ID4+PiBjb3JydXB0aW9uLgo+ID4+Cj4gPj4gU28gaWYgdHJ5bG9j
ayByYW5kb21seSBmYWlsIHdlIGdldCBkYXRhIGNvcnJ1cHRpb24gaW4gd2hhdGV2ZXIgZGF0YSBz
ZXQKPiA+PiBhcHBsaWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3aGljaCBpcyB3aGF0IHRoZSBvcmln
aW5hbCBwYXRjaCB3YXMgdHJ5aW5nCj4gPj4gdG8gYXZvaWQ/IEFyZSB3ZSBhYmxlIHRvIGRldGVj
dCB0aGUgYmFja2luZyBzdG9yZSB0eXBlIHNvIGF0IGxlYXN0IHdlCj4gPj4gZG9uJ3QgcmlzayBz
a2lwcGluZyBzZXRfcGFnZV9kaXJ0eSB3aXRoIGFub255bW91cy9zaG1lbWZzPwo+ID4gCj4gPiBw
YWdlLT5tYXBwaW5nPz8/Cj4gCj4gV291bGQgcGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0
IHRlbGxpbmcgdXM/CgpJdCBiYXNpY2FsbHkgdGVsbHMgdXMgaWYgdGhlcmUgaXMgYSBmcyBhcm91
bmQ7IGFueXRoaW5nIHRoYXQgaXMgdGhlIG1vc3QKYmFzaWMgb2YgbWFsbG9jIChldmVuIHRtcGZz
L3NobWVtZnMgaGFzIHBhZ2UtPm1hcHBpbmcpLgogCj4gPiBXZSBzdGlsbCBoYXZlIHRoZSBpc3N1
ZSB0aGF0IGlmIHRoZXJlIGlzIGEgbWFwcGluZyB3ZSBzaG91bGQgYmUgdGFraW5nCj4gPiB0aGUg
bG9jaywgYW5kIHdlIG1heSBoYXZlIGJvdGggYSBtYXBwaW5nIGFuZCBiZSBpbnNpZGUgdHJ5X3Rv
X3VubWFwKCkuCj4gCj4gSXMgdGhpcyBhIHByb2JsZW0/IE9uIGEgcGF0aCB3aXRoIG1hcHBpbmdz
IHdlIHRyeWxvY2sgYW5kIHNvIHNvbHZlIHRoZSAKPiBzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1
cnNpdmUgZGVhZGxvY2sgaXNzdWVzLCBhbmQgd2l0aCBubyBtYXBwaW5ncyAKPiB3aXRoIGFsd2F5
cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZvaWQgZGF0YSBjb3JydXB0aW9uLgoKVGhlIHByb2JsZW0g
YXMgSSBzZWUgaXQgaXMgIXBhZ2UtPm1hcHBpbmcgYXJlIGxpa2VseSBhbiBpbnNpZ25pZmljYW50
Cm1pbm9yaXR5IG9mIHVzZXJwdHI7IGFzIEkgdGhpbmsgZXZlbiBtZW1mZCBhcmUgZXNzZW50aWFs
bHkgc2htZW1mcyAob3IKaHVnZXRsYmZzKSBhbmQgc28gaGF2ZSBtYXBwaW5ncy4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
