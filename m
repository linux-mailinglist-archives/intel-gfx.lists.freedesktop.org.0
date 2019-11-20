Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E554104054
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF066E271;
	Wed, 20 Nov 2019 16:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FF16E271
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:08:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19274094-1500050 for multiple; Wed, 20 Nov 2019 16:08:48 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120152150.3853368-1-chris@chris-wilson.co.uk>
 <362b3365-f0b2-dd08-ee0a-f68a3021458d@linux.intel.com>
In-Reply-To: <362b3365-f0b2-dd08-ee0a-f68a3021458d@linux.intel.com>
Message-ID: <157426612489.13839.17720553725946842309@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 16:08:44 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Serialise with remote
 retirement
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxNjowNToyNCkKPiAKPiBPbiAyMC8x
MS8yMDE5IDE1OjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTaW5jZSByZXRpcmVtZW50IG1h
eSBiZSBydW5uaW5nIGluIGEgd29ya2VyIG9uIGFub3RoZXIgQ1BVLCBpdCBtYXkgYmUKPiA+IHNr
aXBwZWQgaW4gdGhlIGxvY2FsIGludGVsX2d0X3dhaXRfZm9yX2lkbGUoKS4gVG8gZW5zdXJlIHRo
ZSBzdGF0ZSBpcwo+ID4gY29uc2lzdGVudCBmb3Igb3VyIHNhbml0eSBjaGVja3MgdXBvbiBsb2Fk
LCBzZXJpYWxpc2Ugd2l0aCB0aGUgcmVtb3RlCj4gPiByZXRpcmVyIGJ5IHdhaXRpbmcgb24gdGhl
IHRpbWVsaW5lLT5tdXRleC4KPiAKPiBXaGF0IG1heSBnZXQgc2tpcHBlZD8gVGltZWxpbmUgbWln
aHQgaGF2ZSBiZWVuIHJlbW92ZWQgZnJvbSB0aGUgYWN0aXZlIAo+IGxpc3QgYmVmb3JlIHdhaXRf
Zm9yX2lkbGU/IEJ1dCB3aHkgd291bGQgdGhhdCBiZSBiYWQgZm9yIHRoaXMgY29kZT8gSXQgCj4g
anVzdCBzcGxpdHMgcGFydCBvZiB0aGUgcmV0aXJlbWVudCB0byB0d28gcGF0aHMgLSB3YWl0X2Zv
cl9pZGxlIHN0aWxsLi4uIAo+IG9vcHMgd2FpdC4uIGluZGVlZC4uIHdhaXRfZm9yX2lkbGUgdXNl
ZCB0byBndWFyYW50ZWUgcmV0aXJlbWVudCBhbmQgbm93IAo+IGl0IGNhbiBiZSBvbmdvaW5nLiBE
b2VzIHdhaXRfZm9yX2lkbGUgbmVlZHMgdG8gYWx3YXlzIHdhaXQgb3IgeW91IHRoaW5rIAo+IGNh
c2UtYnktY2FzZSBiYXNpcyBpcyBiZXR0ZXI/CgpNeSB0aG91Z2h0IHdhcyBjYXNlLWJ5LWNhc2Us
IGFzIGludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoKSBwaWNrcyB1cCB0aGUKc2xhY2sgZm9yIHdo
ZW4gd2UgdHJ1bHkgbmVlZCBpdC4gSGVyZSwgbXkgaW50ZW50IHdhcyB0byBhdm9pZCB3YWl0aW5n
CmxvbmdlciB0aGFuIHdhcyBzdHJpY3RseSBuZWNlc3NhcmlseS4KCkkgcHJvYmFibHkgc2hvdWxk
IGhhdmUgbWVudGlvbmVkIHRoYXQgYXMgdGhlIHN0YW5kYnkuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
