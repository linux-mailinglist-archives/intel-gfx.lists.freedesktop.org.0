Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E025CEE8
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF67C8999A;
	Tue,  2 Jul 2019 11:55:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26578999A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:55:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17098347-1500050 for multiple; Tue, 02 Jul 2019 12:54:56 +0100
MIME-Version: 1.0
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702113149.21200-2-michal.winiarski@intel.com>
References: <20190702113149.21200-1-michal.winiarski@intel.com>
 <20190702113149.21200-2-michal.winiarski@intel.com>
Message-ID: <156206849334.2466.9227965345023350539@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 12:54:53 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gtt: Don't check PPGTT
 presence on PPGTT-only platforms
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

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAxOS0wNy0wMiAxMjozMTo0OSkKPiBXZSBtaXNz
ZWQgb25lIHBsYWNlIHdoZXJlIHdlIGNoZWNrIFBQR1RULW9ubHkgcGxhdGZvcm0gZm9yIFBQR1RU
Cj4gcHJlc2VuY2UuIExldCdzIHJlbW92ZSBpdC4KPiBXaGlsZSBJJ20gaGVyZSBsZXQncyBhc3Nl
cnQgdGhhdCB0aGlzIHBhcnRpY3VsYXIgY29kZSBpcyBuZXZlciBjYWxsZWQgb24KPiBwcmUtZ2Vu
OCBwbGF0Zm9ybXMuCj4gCj4gUmVmZXJlbmNlczogNGJkYWZiOWRkZmE0ICgiZHJtL2k5MTU6IFJl
bW92ZSBpOTE1LmVuYWJsZV9wcGd0dCBvdmVycmlkZSIpCj4gU2lnbmVkLW9mZi1ieTogTWljaGHF
giBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSGF6eSBtZW1vcnkgc2F5cyB0aGF0IGRpc2FibGlu
ZyBwYXQgKG1ha2luZyBldmVyeXRoaW5nIHVuY2FjaGVkKSB3YXMKZGVzaXJlZCBmb3Igc29tZSBl
YXJseSBzYW5pdHkgY2hlY2tzLiBIbW0sIHRoZXJlIG1pZ2h0IGJlIHNjb3BlIGluIGhlcmUKZm9y
IHNvbWUgc2VsZnRlc3RzICh0byB3aGljaCBJIG1lYW4gdGhlcmUgaXMgZGVmaW5pdGVseSByb29t
IGZvciBtb3JlISkKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
