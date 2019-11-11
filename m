Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 945AFF766F
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 15:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31216E23B;
	Mon, 11 Nov 2019 14:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594896E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 14:32:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19160817-1500050 for multiple; Mon, 11 Nov 2019 14:32:34 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <157348243641.28106.6605301745084118769@skylake-alporthouse-com>
References: <20191111133205.11590-1-chris@chris-wilson.co.uk>
 <20191111133205.11590-2-chris@chris-wilson.co.uk>
 <57389ded-7186-9d5c-3d46-b8aa0a7e025c@linux.intel.com>
 <157348243641.28106.6605301745084118769@skylake-alporthouse-com>
Message-ID: <157348275112.28106.13456340027702285373@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 14:32:31 +0000
Subject: Re: [Intel-gfx] [FIXES 2/3] drm/i915/userptr: Handle unlocked gup
 retries
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTEgMTQ6Mjc6MTYpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMS0xMSAxNDoxOTozMSkKPiA+IAo+ID4gT24gMTEvMTEvMjAxOSAx
MzozMiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBFbmFibGUgZ3VwIHRvIHJldHJ5IGFuZCBm
YXVsdCB0aGUgcGFnZXMgb3V0c2lkZSBvZiB0aGUgbW1hcF9zZW0gbG9jayBpbgo+ID4gPiBvdXIg
d29ya2VyLiBBcyB3ZSBhcmUgaW5zaWRlIG91ciB3b3JrZXIsIG91dHNpZGUgb2YgYW55IGNyaXRp
Y2FsIHBhdGgsCj4gPiA+IHdlIGNhbiBhbGxvdyB0aGUgbW1hcF9zZW0gbG9jayB0byBiZSBkcm9w
cGVkIGluIG9yZGVyIHRvIHNlcnZpY2UgYSBwYWdlCj4gPiA+IGZhdWx0OyB0aGlzIGluIHR1cm4g
YWxsb3dzIHRoZSBtbSB0byBwb3B1bGF0ZSB0aGUgcGFnZSB1c2luZyBhIHNsb3cKPiA+ID4gZmF1
bHQgaGFuZGxlci4KPiA+ID4gCj4gPiA+IFRlc3RjYXNlOiBpZ3QvZ2VtX3VzZXJwdHIvdXNlcmZh
dWx0Cj4gPiAKPiA+IFRoZXJlIGFyZSBubyByZWZlcmVuY2VzIG9yIGV4cGxhbmF0aW9uIG9uIHdo
YXQgZG9lcyB0aGlzIGZpeD8KPiAKPiBndXAgc2ltcGx5IGZhaWxzIGlmIGl0IGlzIG5vdCBhbGxv
d2VkIHRvIGRyb3AgdGhlIGxvY2sgZm9yIHNvbWUgZmF1bHRzLAo+IAo+IF9fZ2V0X3VzZXJfcGFn
ZXNfbG9ja2VkOgo+ICAgICAgICAgICAgICAgICByZXQgPSBfX2dldF91c2VyX3BhZ2VzKHRzaywg
bW0sIHN0YXJ0LCBucl9wYWdlcywgZmxhZ3MsIHBhZ2VzLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHZtYXMsIGxvY2tlZCk7Cj4gICAgICAgICAgICAgICAgIGlmICgh
bG9ja2VkKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIC8qIFZNX0ZBVUxUX1JFVFJZIGNvdWxk
bid0IHRyaWdnZXIsIGJ5cGFzcyAqLwo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBy
ZXQ7Cj4gCj4gdXNlcmZhdWx0IGJlaW5nIHRoZSBmaXJzdCB0aW1lIEkgZGlzY292ZXJlZCB0aGlz
IGV2ZW4gZXhpc3RlZC4gU2luY2Ugd2UKPiBhcmUgb25seSBob2xkaW5nIHRoZSBtbWFwX3NlbSBm
b3IgdGhlIGd1cCAoYW5kIG5vdCBwcm90ZWN0aW5nIGFueXRoaW5nCj4gZWxzZSkgd2UgY2FuIHNp
bXBseSBhbGxvdyBndXAgdG8gZHJvcCB0aGUgbG9jayBpZiBpdCBuZWVkcyB0by4KCkZpeGVzOiA1
YjU2ZDQ5ZmMzMWQgKCJtbTogYWRkIGxvY2tlZCBwYXJhbWV0ZXIgdG8gZ2V0X3VzZXJfcGFnZXNf
cmVtb3RlKCkiKQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
