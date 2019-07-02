Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6BDC5CDAC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 12:36:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8072889471;
	Tue,  2 Jul 2019 10:36:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0735F89471
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 10:36:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17097181-1500050 for multiple; Tue, 02 Jul 2019 11:36:24 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702102313.9333-3-tvrtko.ursulin@linux.intel.com>
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
 <20190702102313.9333-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <156206378130.2466.9151377721718293973@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 11:36:21 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Remove some legacy mmio
 accessors from interrupt handling
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0wMiAxMToyMzoxMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IE1vc3RseSBpbiBnZW4x
MSBpbnRlcnJ1cHQgaGFuZGxpbmcgYW5kIGEgY291cGxlIG5laWdoYm91cmluZyBmdW5jdGlvbnMK
PiB3aGljaCB3ZXJlIGVhc3kgc2luY2UgdW5jb3JlIGxvY2FsIHdhcyBhbHJlYWR5IGF2YWlsYWJs
ZS4KPiAKPiBDby1hdXRob3JlZC1ieTogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUGF1bG8gWmFub25pIDxwYXVsby5yLnphbm9uaUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KCk1ha2VzIHNlbnNlIHRvIG1lLApSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CmJ1dCBJJ20gd2FyeSB0aGF0IHRoaXMgaXMg
dG9vIGxpdHRsZSBvZiBhIGRyb3AgaW4gYSBjaHVybmluZyBvY2Vhbi4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
