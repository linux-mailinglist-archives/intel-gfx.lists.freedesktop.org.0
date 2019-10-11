Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C0ED43E3
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 17:12:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11EC76EC51;
	Fri, 11 Oct 2019 15:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64C066EC51
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 15:12:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18806054-1500050 for multiple; Fri, 11 Oct 2019 16:12:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-10-chris@chris-wilson.co.uk>
 <a087c394-da92-e35c-f5c8-f1baefe0342f@linux.intel.com>
In-Reply-To: <a087c394-da92-e35c-f5c8-f1baefe0342f@linux.intel.com>
Message-ID: <157080671963.31572.12487101325975352392@skylake-alporthouse-com>
Date: Fri, 11 Oct 2019 16:11:59 +0100
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Flush idle barriers when
 waiting
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xMSAxNTo1NjozNSkKPiAKPiBPbiAxMC8x
MC8yMDE5IDA4OjE0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJZiB3ZSBkbyBmaW5kIG91cnNl
bHZlcyB3aXRoIGFuIGlkbGUgYmFycmllciBpbnNpZGUgb3VyIGFjdGl2ZSB3aGlsZQo+ID4gd2Fp
dGluZywgYXR0ZW1wdCB0byBmbHVzaCBpdCBieSBlbWl0dGluZyBhIHB1bHNlIHVzaW5nIHRoZSBr
ZXJuZWwKPiA+IGNvbnRleHQuCj4gCj4gVGhlIHBvaW50IG9mIHRoaXMgb25lIGNvbXBsZXRlbHkg
ZXNjYXBlcyBtZSBhdCB0aGUgbW9tZW50LiBJZGxlIGJhcnJpZXJzIAo+IGFyZSBrZXB0IGluIHRo
ZXJlIHRvIGJlIGNvbnN1bWVkIGJ5IHRoZSBlbmdpbmVfcG0gcGFya2luZywgc28gaWYgYW55IAo+
IHJhbmRvbSB3YWl0ZXIgZmluZHMgc29tZSAodGhlcmUgd2lsbCBhbHdheXMgYmUgc29tZSwgYXMg
bG9uZyBhcyB0aGUgCj4gZW5naW5lIGV4ZWN1dGVkIHNvbWUgdXNlciBjb250ZXh0LCByaWdodD8p
LAoKTm90IGFueSByYW5kb20gd2FpdGVyOyB0aGUgd2FpdGVyIGhhcyB0byBiZSB3YWl0aW5nIG9u
IGEgY29udGV4dCB0aGF0CndhcyBhY3RpdmUgYW5kIHNvIHNldHVwIGEgYmFycmllci4KCj4gd2h5
IHdvdWxkIGl0IHdhbnQgdG8gaGFuZGxlIAo+IHRoZW0/IEFnYWluIGp1c3QgdG8gdXNlIHRoZSBv
cHBvcnR1bml0eSBmb3Igc29tZSBob3VzZSBrZWVwaW5nPyBCdXQgd2hhdCAKPiBpZiB0aGUgc3lz
dGVtIGlzIG90aGVyd2lzZSBxdWl0ZSBidXN5IGFuZCBhIGxvdy1wcmlvcml0eSBjbGllbnQganVz
dCAKPiBoYXBwZW5zIHRvIHdhbnQgdG8gd2FpdCBvbiBzb21ldGhpbmcgc2lsbHk/CgpUaGVyZSdz
IG5vIGd1YXJhbnRlZSB0aGF0IGl0IHdpbGwgZXZlciBiZSBmbHVzaGVkLiBTbyB3aHkgd291bGRu
J3Qgd2UKdXNlIGEgbG93IHByaW9yaXR5IHJlcXVlc3QgdG8gZ2l2ZSBhIHNlbWJsYW5jZSBvZiBm
b3J3YXJkIHByb2dyZXNzIGFuZApnaXZlIGEgZ3VhcmFudGVlIHRoYXQgdGhlIHdhaXQgd2lsbCBj
b21wbGV0ZS4KCkl0J3MgYSBoeXBvdGhldGljYWwgcG9pbnQsIHRoZXJlIGFyZSBubyB3YWl0ZXJz
IHRoYXQgbmVlZCB0byB3YWl0IHVwb24KdGhlaXIgb3duIGJhcnJpZXJzIGF0IHByZXNlbnQuIFdl
IGFyZSBqdXN0IGNvbXBsZXRpbmcgdGhlIHBpY3R1cmUgZm9yCmlkbGUgYmFycmllciB0cmFja2lu
Zy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
