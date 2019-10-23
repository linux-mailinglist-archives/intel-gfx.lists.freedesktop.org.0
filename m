Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E4AE1ABC
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E1D76EA80;
	Wed, 23 Oct 2019 12:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B006EA7E
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:36:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18937107-1500050 for multiple; Wed, 23 Oct 2019 13:36:33 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191023123216.GA4125@intel.intel>
References: <20191023093821.3350-1-andi.shyti@intel.com>
 <20191023095000.3782-1-andi.shyti@intel.com>
 <157183266196.15766.14782680783428472038@skylake-alporthouse-com>
 <20191023123216.GA4125@intel.intel>
Message-ID: <157183418163.15766.12473099234353818990@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 23 Oct 2019 13:36:21 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Extract GT render power
 state management
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTIzIDEzOjMyOjE2KQo+ID4gPiAgICAgICAgICAq
IG1heGltdW0gY2xvY2tzIGZvbGxvd2luZyBhIHZibGFuayBtaXNzIChzZWUgZG9fcnBzX2Jvb3N0
KCkpLgo+ID4gPiAgICAgICAgICAqLwo+ID4gPiAgICAgICAgIGlmICghaW50ZWxfc3RhdGUtPnJw
c19pbnRlcmFjdGl2ZSkgewo+ID4gPiAtICAgICAgICAgICAgICAgaW50ZWxfcnBzX21hcmtfaW50
ZXJhY3RpdmUoZGV2X3ByaXYsIHRydWUpOwo+ID4gPiArICAgICAgICAgICAgICAgaW50ZWxfcnBz
X21hcmtfaW50ZXJhY3RpdmUoJmRldl9wcml2LT5ndC5ycHMsIHRydWUpOwo+ID4gCj4gPiBJIHdv
bmRlciBpZiB3ZSBjYW4gZG8gJnBsYW5lLT52bWEtPnZtLT5ndC0+cnBzCj4gCj4gYWdyZWUsIGxv
b2tzIHVnbHksIEkgY291bGQgZml4IGl0IGJ5IGV4dHJhY3RpbmcgcnBzLiBTaGFsbCBJIGRvCj4g
aXQgbm93IGluIGEgdjMgb3IgYWZ0ZXIgdGhlIHBhdGNoIGdldHMgbWVyZ2VkPyBBcyB5b3UgY2Fu
IGd1ZXMKPiBJJ2QgcHJlZmVyIGRvaW5nIGFmdGVyIHRoZSBwYXRjaCBpcyBtZXJnZWQgOikKCk1v
c3RseSB0aGlua2luZyBhbG91ZC4gSSBwbGFuIG9uIHNvYWsgdGVzdGluZyB0aGlzIGZpcnN0OyBz
b21ldGhpbmcgZGlkCm5vdCBsb29rIHF1aXRlIHJpZ2h0IGFyb3VuZCBwbV9lbmFibGUvcG1fZGlz
YWJsZSB2cyBndF9yZXN1bWUvZ3Rfc3VzcGVuZAooaS5lLiBkaWQgbm90IG1hdGNoIG15IGN1cnJl
bnQgZXhwZWN0YXRpb25zIG9mIHdoZXJlIHRvIHB1c2ggdGhlIGd0IGluaXQKbmV4dCkuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
