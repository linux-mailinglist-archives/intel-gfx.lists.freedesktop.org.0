Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6630C0AA0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 19:53:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 327F16E1A2;
	Fri, 27 Sep 2019 17:53:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADE66E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 17:53:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643290-1500050 for multiple; Fri, 27 Sep 2019 18:52:50 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-20-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-20-matthew.auld@intel.com>
Message-ID: <156960676611.1880.13107392156077672136@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 18:52:46 +0100
Subject: Re: [Intel-gfx] [PATCH 19/22] drm/i915: error capture with no ggtt
 slot
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzQ6MDYpCj4gQEAgLTI2OTIsMTMg
KzI2OTMsMTUgQEAgc3RhdGljIGludCBpbml0X2dndHQoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkK
PiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gIAo+IC0g
ICAgICAgLyogUmVzZXJ2ZSBhIG1hcHBhYmxlIHNsb3QgZm9yIG91ciBsb2NrbGVzcyBlcnJvciBj
YXB0dXJlICovCj4gLSAgICAgICByZXQgPSBkcm1fbW1faW5zZXJ0X25vZGVfaW5fcmFuZ2UoJmdn
dHQtPnZtLm1tLCAmZ2d0dC0+ZXJyb3JfY2FwdHVyZSwKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBQQUdFX1NJWkUsIDAsIEk5MTVfQ09MT1JfVU5FVklDVEFCTEUs
Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgMCwgZ2d0dC0+bWFw
cGFibGVfZW5kLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERS
TV9NTV9JTlNFUlRfTE9XKTsKPiAtICAgICAgIGlmIChyZXQpCj4gLSAgICAgICAgICAgICAgIHJl
dHVybiByZXQ7Cj4gKyAgICAgICBpZiAoSEFTX01BUFBBQkxFX0FQRVJUVVJFKGdndHQtPnZtLmk5
MTUpKSB7CgpVaC4gSWYgb25seSB3ZSBoYWQgdGhlIGFuc3dlciB0byBoYW5kLi4uCgppZiAoZ2d0
dC0+bWFwcGFibGVfZW5kKSB7CgpPciBtYWtlIEhBU19NQVBQQUJMRV9BUEVSVFVSRSB0YWtlIGdn
dHQuIFRob3VnaCBJJ2Qgdm90ZSBmb3IgbGVzcwpzaG91dGluZy4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
