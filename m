Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647ED6FE09
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 12:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC50E898C6;
	Mon, 22 Jul 2019 10:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85DA789958
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 10:46:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17502112-1500050 for multiple; Mon, 22 Jul 2019 11:46:25 +0100
MIME-Version: 1.0
To: Robin Murphy <robin.murphy@arm.com>, iommu@lists.linux-foundation.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b0325309-02ea-2284-d3e1-fa78ea62ad1a@arm.com>
References: <20190720180848.15192-1-chris@chris-wilson.co.uk>
 <b0325309-02ea-2284-d3e1-fa78ea62ad1a@arm.com>
Message-ID: <156379238258.24728.11112424033468968352@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 22 Jul 2019 11:46:22 +0100
Subject: Re: [Intel-gfx] [PATCH] iommu/iova: Remove stale cached32_node
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
Cc: intel-gfx@lists.freedesktop.org, Joerg Roedel <jroedel@suse.de>,
 Joerg Roedel <joro@8bytes.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2JpbiBNdXJwaHkgKDIwMTktMDctMjIgMTE6MTM6NDkpCj4gSGkgQ2hyaXMsCj4g
Cj4gT24gMjAvMDcvMjAxOSAxOTowOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gU2luY2UgdGhl
IGNhY2hlZDMyX25vZGUgaXMgYWxsb3dlZCB0byBiZSBhZHZhbmNlZCBhYm92ZSBkbWFfMzJiaXRf
cGZuCj4gPiAodG8gcHJvdmlkZSBhIHNob3J0Y3V0IGludG8gdGhlIGxpbWl0ZWQgcmFuZ2UpLCB3
ZSBuZWVkIHRvIGJlIGNhcmVmdWwgdG8KPiA+IHJlbW92ZSB0aGUgdG8gYmUgZnJlZWQgbm9kZSBp
ZiBpdCBpcyB0aGUgY2FjaGVkMzJfbm9kZS4KPiAKPiBUaGFua3MgZm9yIGRpZ2dpbmcgaW4gLSBq
dXN0IHRvIGNvbmZpcm0gbXkgdW5kZXJzdGFuZGluZywgdGhlIAo+IHByb2JsZW1hdGljIHNpdHVh
dGlvbiBpcyB3aGVyZSBib3RoIDMyLWJpdCBhbmQgNjQtYml0IG5vZGVzIGhhdmUgYmVlbiAKPiBh
bGxvY2F0ZWQsIHRoZSB0b3Btb3N0IDMyLWJpdCBub2RlIGlzIGZyZWVkLCB0aGVuIHRoZSBsb3dl
c3QgNjQtYml0IG5vZGUgCj4gaXMgZnJlZWQsIHdoaWNoIGxlYXZlcyB0aGUgcG9pbnRlciBkYW5n
bGluZyBiZWNhdXNlIHRoZSBzZWNvbmQgZnJlZSAKPiBmYWlscyB0aGUgImZyZWUtPnBmbl9oaSA8
IGlvdmFkLT5kbWFfMzJiaXRfcGZuIiBjaGVjay4gRG9lcyB0aGF0IG1hdGNoIAo+IHlvdXIgcmVh
c29uaW5nPwoKWWVzLiBPbmNlIGNhY2hlZDMyX25vZGUgaXMgc2V0IHRvIHRoZSByaWdodCBvZiBk
bWFfMzJiaXRfcGZuIGl0IGZhaWxzCnRvIGJlIHBpY2tlZCB1cCBpbiB0aGUgbmV4dCBjeWNsZSB0
aHJvdWdoIF9fY2FjaGVkX3Jibm9kZV9kZWxldGVfdXBkYXRlCnNob3VsZCBjYWNoZWQzMl9ub2Rl
IGJlIHRoZSBuZXh0IHZpY3RpbS4KIAo+IEFzc3VtaW5nIEkgaGF2ZW4ndCBjb21wbGV0ZWx5IG1p
c3JlYWQgdGhlIHByb2JsZW0sIEkgY2FuJ3QgdGhpbmsgb2YgYSAKPiBtb3JlIGFwcHJvcHJpYXRl
IHdheSB0byBmaXggaXQsIHNvOwo+IAo+IFJldmlld2VkLWJ5OiBSb2JpbiBNdXJwaHkgPHJvYmlu
Lm11cnBoeUBhcm0uY29tPgo+IAo+IEkgY291bGQgc3dlYXIgSSBkaWQgY29uc2lkZXIgdGhhdCBj
b3JuZXIgY2FzZSBhdCBzb21lIHBvaW50LCBidXQgc2luY2UgCj4gTGVpemhlbiBhbmQgSSByZXdy
b3RlIHRoaXMgc3R1ZmYgYWJvdXQgNSB0aW1lcyBiZXR3ZWVuIHVzIEknbSBub3QgCj4gZW50aXJl
bHkgc3VycHJpc2VkIHN1Y2ggYSBzdWJ0bGV0eSBjb3VsZCBoYXZlIGdvdCBsb3N0IGFnYWluIGFs
b25nIHRoZSB3YXkuCgpJIGFkbWl0IHRvIGJlaW5nIGltcHJlc3NlZCB0aGF0IHJiX3ByZXYoKSBk
b2VzIG5vdCBhcHBlYXIgaGlnaCBpbiB0aGUKcHJvZmlsZXMgLS0gdGhvdWdoIEkgZ3Vlc3MgdGhh
dCBpcyBtb3JlIGFuIGFydGlmYWN0IG9mIHRoZSBzY2FyeSBsYXllcnMKb2YgY2FjaGluZyBhYm92
ZSBpdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
