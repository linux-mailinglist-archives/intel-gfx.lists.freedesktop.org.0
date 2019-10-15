Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8A7D723F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 11:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B4156E79B;
	Tue, 15 Oct 2019 09:26:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1063B6E799
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 09:26:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18841383-1500050 for multiple; Tue, 15 Oct 2019 10:26:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
 <20191014220534.1662-2-chris@chris-wilson.co.uk>
 <1e4de31a-25c9-d266-712c-da59c632e392@linux.intel.com>
In-Reply-To: <1e4de31a-25c9-d266-712c-da59c632e392@linux.intel.com>
Message-ID: <157113156145.22469.3789100290652245137@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 10:26:01 +0100
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/execlists: Clear semaphore
 immediately upon ELSP promotion
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNSAxMDoxNjowMSkKPiAKPiBPbiAxNC8x
MC8yMDE5IDIzOjA1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGVyZSBpcyBubyBzaWduaWZp
Y2FuY2UgdG8gb3VyIGRlbGF5IGJlZm9yZSBjbGVhcmluZyB0aGUgc2VtYXBob3JlIHRoZQo+ID4g
ZW5naW5lIGlzIHdhaXRpbmcgb24sIHNvIHJlbGVhc2UgaXQgYXMgc29vbiBhcyB3ZSBhY2tub3ds
ZWRnZSB0aGUgQ1MKPiA+IHVwZGF0ZSBmb2xsb3dpbmcgb3VyIHByZWVtcHRpb24gcmVxdWVzdC4K
PiAKPiBBbmQgc2lnbmlmaWNhbmNlIG9mIG1vdmluZyBpdCBlYXJsaWVyPyBNb3JlIHBhcmFsbGVs
aXphdGlvbiBiZXR3ZWVuIEdQVSAKPiBhbmQgQ1BVPyBDb3VsZCBkcm9wIGEgbm90ZSB0byBzYXkg
c28uCgpZdXAuIEJ1dCB3ZSB0YWxraW5nIG1pY3JvIG9wdGltaXNhdGlvbnMgb24gYSAoaG9wZWZ1
bGx5IDopIGZhc3QgcGF0aC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
