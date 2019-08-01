Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5C87DA13
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 13:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C596E4A7;
	Thu,  1 Aug 2019 11:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 142D46E4AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 11:13:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17785784-1500050 for multiple; Thu, 01 Aug 2019 12:13:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-3-chris@chris-wilson.co.uk>
 <7a17fe1a-4972-658a-3e9d-550ceb788201@linux.intel.com>
 <0f4b8c49-ffe3-87a5-6abb-dffa6f9fef8b@linux.intel.com>
 <156464886350.2512.13201380958664478117@skylake-alporthouse-com>
 <340df1ef-0d75-131d-cc39-b3d9edb9c3ec@linux.intel.com>
 <156465702635.2512.9932000772655773495@skylake-alporthouse-com>
In-Reply-To: <156465702635.2512.9932000772655773495@skylake-alporthouse-com>
Message-ID: <156465803327.5400.3625959459348155022@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 12:13:53 +0100
Subject: Re: [Intel-gfx] [PATCH 03/23] drm/i915: Remove lrc default desc
 from GEM context
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDEgMTE6NTc6MDYpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wOC0wMSAwOTo1MzoxNSkKPiA+IFdlIGNvdWxkIHN0b3JlIGl0IGlu
IGNlIHRoZW4uIFdlIGFscmVhZHkgaGF2ZSB3ZWxsIGRlZmluZWQgY29udHJvbCAKPiA+IHBvaW50
cyBmb3Igd2hlbiB2bSBjaGFuZ2VzIHdoZW4gYWxsIGFyZSB1cGRhdGVkLgo+IAo+IFdlIGFyZSBz
dG9yaW5nIGl0IGluIGNlOyBpdCdzIG5vdCBsaWtlIHdlIHJlY29tcHV0ZSBpdCBhbGwgdGhhdCBv
ZnRlbiwKPiBhbmQgd2hlbiB3ZSBkbyBpdCdzIGJlY2F1c2Ugd2UgaGF2ZSByZWJvdW5kIHRoZSB2
bWEuCj4gCj4gPiBJZiBkb25lIGxpa2UgdGhpcyB0aGVuIGl0IGxvb2tzIGxpa2UgYXNzaWduaW5n
IGN0eC0+aHdfaWQgY291bGQgYWxzbyBkbyAKPiA+IHRoZSBkZWZhdWx0X2Rlc2MgdXBkYXRlLCBz
byB0aGF0IHdlIGNhbiBhdm9pZCBldmVuIG1vcmUgd29yayBkb25lIGF0IHBpbiAKPiA+IHRpbWUu
Cj4gCj4gV2hhdCBjdHgtPmh3X2lkPyBZb3UgYXJlIGltYWdpbmluZyB0aGluZ3MgYWdhaW4gOi1w
Cj4gCj4gUmVtZW1iZXIgdGhhdCB3ZSBvbmx5IGRvIHRoaXMgb24gZmlyc3QgcGluIGZyb20gaWRs
ZSwgbm90IGV2ZXJ5IHBpbi4KCkZ3aXcsIEkgcXVpY2tseSBsb29rZWQgYXQgb25seSBkb2luZyBp
dCBpZiB0aGUgdm1hIGlzIHJlYm91bmQsIGJ1dAp0aGF0J3MgbW92ZSBicmFuY2hlcyBqdXN0IHRv
IHNhdmUgYSBjb3VwbGUuIFRoZSBsb3cgZnJlcXVlbmN5IGF0IHdoaWNoCndlIGhhdmUgdG8gYWN0
dWFsbHkgY29tcHV0ZSB0aGlzICh3YWxrIGEgZmV3IG1vcmUgYnJhbmNoZXMgaW5zaWRlIGFuCmFs
cmVhZHkgYnJhbmNoeSBjb250eHRfcGluKSBkb2Vzbid0IHNlZW0gdG8ganVzdGlmeSB0aGUgZXh0
cmEgc3RvcmFnZSBmb3IKbWUuIEl0J3Mgbm90IGxpa2Ugd2UgYXJlIHJlY29tcHV0aW5nIGxyY19k
ZXNjIG9uIGV2ZXJ5IHN1Ym1pdCBhcyBpdCBvbmNlCndhcy4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
