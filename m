Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44672AFFAD
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 17:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C8A36EB32;
	Wed, 11 Sep 2019 15:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB776EB32
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 15:11:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18453287-1500050 for multiple; Wed, 11 Sep 2019 16:11:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190911125717.28997-1-chris@chris-wilson.co.uk>
 <87sgp3rnet.fsf@gaia.fi.intel.com>
In-Reply-To: <87sgp3rnet.fsf@gaia.fi.intel.com>
Message-ID: <156821469158.3439.8698945002813614086@skylake-alporthouse-com>
Date: Wed, 11 Sep 2019 16:11:31 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Disable read-only support
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTExIDE0OjA4OjEwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgc2FtZSByZWFk
LW9ubHkgYWZmbGljdGlvbiBhcyBiZWZlbGwgSWNlbGFrZSBpcyBhZmZlY3RpbmcgVGlnZXJsYWtl
Lgo+ID4gRGlzYWJsZSB0aGUgcmVhZC1vbmx5IHN1cHBvcnQgYXMgY2xlYXJ5IGl0IHdhcyBub3Qg
Zml4ZWQuCj4gPgo+ID4gVGVzdGNhc2U6IGlndC9pOTE1X3NlbGZ0ZXN0cy9saXZlX2dlbV9jb250
ZXh0Cj4gPiBSZWZlcmVuY2VzOiAzOTM2ODY3ZGJjMWUgKCJkcm0vaTkxNTogRGlzYWJsZSByZWFk
IG9ubHkgcHBndHQgc3VwcG9ydCBmb3IgZ2VuMTEiKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gUmV2aWV3ZWQtYnk6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKUHVzaGVkLCB3ZSBjYW4gdHJ5
IGFnYWluIGxhdGVyLCBidXQgZm9yIG5vdyB0aGlzIHNob3VsZCByZW1vdmUgb25lIG1vcmUKZmFp
bCB3aGVuIFRpZ2VybGFrZSBjb21lcyBiYWNrIG9ubGluZS4gUHJvdmlkZWQgaXQgc3Vydml2ZXMg
bG9uZyBlbm91Z2gKdG8gcnVuIHNlbGZ0ZXN0cy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
