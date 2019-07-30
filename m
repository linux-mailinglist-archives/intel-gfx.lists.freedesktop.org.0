Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2B7AAA8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:12:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F6A36E544;
	Tue, 30 Jul 2019 14:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF15C6E544
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 14:12:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17731706-1500050 for multiple; Tue, 30 Jul 2019 15:12:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-7-chris@chris-wilson.co.uk>
 <bae3dc6b-68b4-f1da-c74c-3f31abf40033@linux.intel.com>
In-Reply-To: <bae3dc6b-68b4-f1da-c74c-3f31abf40033@linux.intel.com>
Message-ID: <156449596206.6373.5993156315069616309@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 15:12:42 +0100
Subject: Re: [Intel-gfx] [PATCH 06/17] drm/i915: Move aliasing_ppgtt
 underneath its i915_ggtt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMCAxNDo1ODowNykKPiAKPiBPbiAzMC8w
Ny8yMDE5IDE0OjMwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGUgYWxpYXNpbmdfcHBndHQg
cHJvdmlkZXMgYSBQSU5fVVNFUiBhbGlhcyBmb3IgdGhlIGdsb2JhbCBndHQsIHNvIG1vdmUKPiA+
IGl0IHVuZGVyIHRoZSBpOTE1X2dndHQgdG8gc2ltcGxpZnkgbGF0ZXIgdHJhbnNmb3JtYXRpb25z
IHRvIGVuYWJsZQo+ID4gaW50ZWxfY29udGV4dC52bS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gIEZyb20gZmV3IGRh
eXMgYmFjazoKPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KCk9vcHMsIEkgd2FzIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRoYXQgSSBoYWQg
ZmFpbGVkIHRvIGNvbnZpbmNlIHlvdSB0aGlzCndhcyBhIHN0ZXAgaW4gdGhlIHJpZ2h0IGRpcmVj
dGlvbi4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
