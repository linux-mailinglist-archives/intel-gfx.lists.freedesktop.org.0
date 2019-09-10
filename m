Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2F4AE727
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 11:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C1916E868;
	Tue, 10 Sep 2019 09:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABAE46E868
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 09:39:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18435569-1500050 for multiple; Tue, 10 Sep 2019 10:39:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190910075738.26919-1-chris@chris-wilson.co.uk>
 <87a7bcts4m.fsf@gaia.fi.intel.com>
In-Reply-To: <87a7bcts4m.fsf@gaia.fi.intel.com>
Message-ID: <156810839289.30942.17826426340427610628@skylake-alporthouse-com>
Date: Tue, 10 Sep 2019 10:39:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Clear STOP_RING bit on
 reset
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEwIDEwOjMxOjA1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBEdXJpbmcgcmVzZXQs
IHdlIHRyeSB0byBlbnN1cmUgbm8gZm9yd2FyZCBwcm9ncmVzcyBvZiB0aGUgQ1MgcHJpb3IgdG8K
PiA+IHRoZSByZXNldCBieSBzZXR0aW5nIHRoZSBTVE9QX1JJTkcgYml0IGluIFJJTkdfTUlfTU9E
RS4gU2luY2UgZ2VuOSwgdGhpcwo+ID4gcmVnaXN0ZXIgaXMgY29udGV4dCBzYXZlZCBhbmQgZG8g
d2UgZW5kIHVwIGluIHRoZSBvZGQgc2l0dWF0aW9uIHdoZXJlIHdlCj4gPiBzYXZlIHRoZSBTVE9Q
X1JJTkcgYml0IGFuZCBzbyB0cnkgdG8gc3RvcCB0aGUgZW5naW5lIGFnYWluIGltbWVkaWF0ZWx5
Cj4gPiB1cG9uIHJlc3VtZS4gVGhpcyBpcyBxdWl0ZSB1bmV4cGVjdGVkIGFuZCBjYXVzZXMgdXMg
dG8gY29tcGxhaW4gYWJvdXQgYW4KPiA+IGVhcmx5IENTIGNvbXBsZXRpb24gZXZlbnQhCj4gCj4g
VGhlIGNvbXBsZXRpb24gZXZlbnQgaXMgYSBwcm9kdWN0IG9mIHJlc3VtZSB3aXRoIGEgc3RvcCBz
ZXQ/CgpBIGNvbXBsZXRpb24gZXZlbnQgaXMgdGhlIHByb2R1Y3Qgb2YgU1RPUF9SSU5HLiBXaGV0
aGVyIGl0IGlzIHRoZQpjb21wbGV0aW9uIGV2ZW50IHRoYXQgd2Uga2VlcCBmYWlsaW5nIG9uLi4u
CiAKPiBJZiBteSBtZW1vcnkgc2VydmVzIG1lIHdlbGwsIHdlIGhhdmUgZm91Z2h0IHRoaXMgYmVm
b3JlLgoKRXhhY3RseS4gV2UndmUgcmVkdWNlZCB0aGUgZnJlcXVlbmN5IG9mIHdoZW4gd2UgYXBw
bHkgdGhlIFNUT1BfUklORywgYnV0CmhhdmUgbm90IGVsaW1pbmF0ZWQgaXQuCiAKPiBCdXQgSSBo
YXZlIHN0aWxsIG1pc3NpbmcgcGllY2VzLiBXaHkgd291bGQgd2Ugbm90IHdhbnQgdG8KPiBzZXQg
dGhpcyBmb3IgYWxsIGNvbnRleHRzIHByaW1lZCBmb3IgZXhlY3V0aW9uPyBJbiBnZW44IHRvby4K
Ckl0J3Mgbm90IGluIHRoZSBnZW44IGNvbnRleHQsIGFmYWljdC4gSSBzZWFyY2hlZCB0aGUgY29u
dGV4dCBpbWFnZSBmb3IgYW4KTFJJIHdpdGggdGhlIFJJTkdfTUlfTU9ERSByZWdpc3RlcjoKaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzMyOTkxOS8/c2VyaWVzPTY2NDY4
JnJldj0xCiAKPiBJIG1lYW4sIHF1ZXVpbmcgY29udGV4dCB3aXRoIGEgcmluZyBzdG9wcGVkIGp1
c3QgZG9lc24ndAo+IHNvdW5kIHJpZ2h0IG9uIGFueSBnZW4uCgpXZSBjbGVhciB0aGUgU1RPUF9S
SU5HIGluIHRoZSByZWdpc3RlciBvbiByZXN1bWUganVzdCBpbiBjYXNlLCBhbmQgdGhhdAppcyBi
ZWluZyBmbGFnZ2VkIG9uIEljZWxha2UgKHdoaWNoIEkgcHV0IGRvd24gdG8gdGhlIHJlc2V0IG5v
dCBiZWluZyB2ZXJ5CnRob3JvdWdoISkuIFRoZSByZW1haW5pbmcgcXVlc3Rpb24gd2FzIHdoZXRo
ZXIgd2Ugd2VyZSByZXN0b3JpbmcgaXQgZnJvbQp0aGUgY29udGV4dCBpbWFnZS4KLUNocmlzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
