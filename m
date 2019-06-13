Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC8443A37
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B461E89B38;
	Thu, 13 Jun 2019 15:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4400A89B38
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:20:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16890643-1500050 for multiple; Thu, 13 Jun 2019 16:19:45 +0100
MIME-Version: 1.0
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0000a4b2-ac8b-a18d-4c78-0db197c712a1@linux.intel.com>
References: <20190612162900.13777-1-lucas.demarchi@intel.com>
 <0000a4b2-ac8b-a18d-4c78-0db197c712a1@linux.intel.com>
Message-ID: <156043918400.17012.6235201090156630460@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Jun 2019 16:19:44 +0100
Subject: Re: [Intel-gfx] [PATCH] gpu/drm/i915: globally replace dev_priv
 with i915
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNjoxMjoxNikKPiAKPiBPbiAxMi8w
Ni8yMDE5IDE3OjI5LCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gPiBXZSBhcmUgc2xvd2x5IGNv
bnZlcnRpbmcgZGV2X3ByaXYgdG8gaTkxNSBldmVyeXdoZXJlLCBzcHJlYWQgaW50bwo+ID4gc21h
bGxlciBzZXJpZXMuIFdoaWxlIHRoaXMgaXMgZ29vZCB0byBhdm9pZCB1bnJlbGF0ZWQgYnJlYWth
Z2VzIHRvIG90aGVyCj4gPiBpbmZsaWdodCBwYXRjaGVzLCBpdCdzIGJhZCBiZWNhdXNlIGluZmxp
Z2h0IHBhdGNoZXMgb24gbmVhcmJ5IHBhdGhzIGtlZXAKPiA+IGJyZWFraW5nLiBQYWlyZWQgd2l0
aCBvdGhlciBjb2RlIG1vdmVzIGFuZCByZWZhY3RvcmVzIHRoaXMgaXMgYmVjb21pbmcgYQo+ID4g
bmlnaHRtYXJlLgo+ID4gCj4gPiBOb3cgdGhhdCBJOTE1X3tSRUFELFdSSVRFfSBhcmUgZ29uZSBh
bmQgaW1wbGljaXQgYWNjZXNzIHRvIGRldl9wcml2IG5vCj4gCj4gV2hvIHJlbW92ZWQgSTkxNV9S
RUFEL1dSSVRFPyBJbiBmYWN0IEkgc2VlIHNvbWUgaW4gdGhpcyBwYXRjaC4gV2VsbCAKPiBjb2xv
dXIgbWUgY29uZnVzZWQuLiBob3cgZGlkIHRoZSBwYXRjaCBjb21waWxlPwoKVGhlIHNlY3JldCBp
cyBpbiBjaGFuZ2luZyB0aGUgaW1wbGljaXQgcGFyYW1ldGVyIGFzIHdlbGwsIHMvZGV2X3ByaXYv
aTkxNS8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
