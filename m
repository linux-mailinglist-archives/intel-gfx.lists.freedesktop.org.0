Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0137E11720
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 12:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D993892F8;
	Thu,  2 May 2019 10:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5FCB892F8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 10:21:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16426855-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 May 2019 11:21:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190502094119.17416-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190502094119.17416-1-chris@chris-wilson.co.uk>
Message-ID: <155679247994.9023.14775754480519421691@skylake-alporthouse-com>
Date: Thu, 02 May 2019 11:21:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Unshadow
 MI_USER_INTERRUPT
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMDIgMTA6NDE6MTkpCj4gR2l2ZW4gYW4gaW1t
ZWRpYXRlIHByZWVtcHRpb24gZXZlbnQgb24gcmUtZW5hYmxpbmcgYXJiaXRyYXRpb24KPiAoTUlf
QVJCX09OX09GRiB8IE1JX0FSQl9FTkFCTEUpIGl0IGFwcGVhcnMgdGhhdCB0aGUgSFcgbWF5IGZv
cmdldCBhYm91dAo+IHRoZSBvbmdvaW5nIE1JX1VTRVJfSU5URVJSVVBULCBsb3NpbmcgdGhlIGlu
dGVycnVwdCBpbiB0aGUgcHJvY2Vzcy4gSWYKPiB3ZSBoYXBwZW4gdG8gYmUgd2FpdGluZyBvbiB0
aGF0IGludGVycnVwdCBhdCB0aGUgdGltZSwgdGhlIHN5c3RlbSBtYXkKPiB0aGVuIGdyaW5kIHRv
IGEgaGFsdC4KPiAKPiBNeSBwcmVzdW1wdGlvbiBpcyB0aGF0IHRoZXJlIGlzIGFuIGVmZmVjdGl2
ZSBzaGFkb3cgaW5zaWRlIHRoZSBDUyBhcyBpdAo+IHBhcnNlcyBhbmQgYnVmZmVycyB0aGUgY29t
bWFuZHMsIGFuZCBpZiB3ZSBwdXNoIHRoZSBNSV9VU0VSX0lOVEVSUlVQVAo+IG91dCBvZiB0aGUg
aW1tZWRpYXRlIHBhcnNlIGJ1ZmZlciBpdCBpcyBub3QgbG9zdCBieSB0aGUgYXJiaXRyYXRpb24K
PiBjaGVjay4KPiAKPiBUZXN0Y2FzZTogaWd0L2dlbV9jb25jdXJyZW50X2JsaXQKPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiBQ
bGF1c2libGU/IEkgbmVlZCBhIGZldyBob3VycyB0byBjb25maXJtIG15IGh1bmNoLgoKU2FkbHks
IGl0IGdvdCBzdHVjayBhZ2Fpbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
