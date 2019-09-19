Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A56B7C0B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D820C6F973;
	Thu, 19 Sep 2019 14:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7456C6F50D;
 Thu, 19 Sep 2019 14:20:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18546929-1500050 for multiple; Thu, 19 Sep 2019 15:20:15 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190919140857.GA3723@intel.intel>
References: <20190911101501.7182-1-chris@chris-wilson.co.uk>
 <20190919140857.GA3723@intel.intel>
Message-ID: <156890281365.591.11945403003016053142@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 15:20:13 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] i915/gem_eio: Race kms
 on/off vs reset
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA5LTE5IDE1OjA4OjU3KQo+IEhpIENocmlzLAo+IAo+
IE9uIFdlZCwgU2VwIDExLCAyMDE5IGF0IDExOjE0OjU5QU0gKzAxMDAsIENocmlzIFdpbHNvbiB3
cm90ZToKPiA+IE9uIG9sZGVyIHBsYXRmb3JtcywgcGVyZm9ybWluZyBhIEdQVSByZXNldCBjbG9i
YmVycyB0aGUgZGlzcGxheS4KPiA+IEV4ZXJjaXNlIHRoZSBpbnRlcmFjdGlvbnMgYmV0d2VlbiBy
ZXNldC93ZWRnZSBhbmQgdGhlIGRpc3BsYXkgYW5kCj4gPiBob3BlZnVsbHkgcHJldmVudCBhbnkg
cmFjZXMgY3JlZXBpbmcgaW4uCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSXMgVmlsbGUgQ2MnZWQgZm9yIHJlYWwgb3Ig
anVzdCBub21pbmFsbHk/CgpIZSdzIGluIHRoZSBvcmlnaW5hbCBjYy4gQXMgaXQgaXMgdXNpbmcg
IlN5cmrDpGzDpCIsIHRoYXQgbWVhbnMgSSBjb3BpZWQKaGlzIGVtYWlsIGFkZHJlc3MgZnJvbSBv
bmUgb2YgaGlzIGNvbW1pdHMsIHNvIGl0IHNob3VsZCBiZSB0aGUgcmlnaHQKYWRkcmVzcy4KCm1h
aWxtYW4gbmF0dXJhbGx5IGRyb3BzIGNjIG9mIGxpc3QgbWVtYmVycy4uLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
