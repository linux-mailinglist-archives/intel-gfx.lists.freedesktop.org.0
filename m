Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8680DDD6B
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Oct 2019 11:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A026289AAE;
	Sun, 20 Oct 2019 09:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B03BD89AAE
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Oct 2019 09:05:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18900354-1500050 for multiple; Sun, 20 Oct 2019 10:05:04 +0100
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>, Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191020005045.19730-1-andi@etezian.org>
References: <20191020005045.19730-1-andi@etezian.org>
Message-ID: <157156230122.18397.10880267152116361414@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 20 Oct 2019 10:05:01 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extract GT ring management
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

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTEwLTIwIDAxOjUwOjQ1KQo+IEZyb206IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+IAo+IEFsdGhvdWdoIHRoZSByaW5nIG1hbmFnZW1l
bnQgaXMgbXVjaCBzbWFsbGVyIGNvbXBhcmVkIHRvIHRoZSBvdGhlciBHVAo+IHBvd2VyIG1hbmFn
ZW1lbnQgZnVuY3Rpb25zLCBjb250aW51ZSB0aGUgdGhlbWUgb2YgZXh0cmFjdGluZyBpdCBvdXQg
b2YKPiB0aGUgaHVnZSBpbnRlbF9wbS5jIGZvciBtYWludGVuYW5jZS4KPiAKPiBCYXNlZCBvbiBh
IHBhdGNoIGJ5IENocmlzIFdpbHNvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmRpIFNoeXRpIDxh
bmRpLnNoeXRpQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpPaywganVzdCBtb3ZpbmcgdGhlIHN0cnVjdCBhcm91bmQuCgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJIGhhdmUgYW4gaWRl
YSBmb3IgYSBzZWxmdGVzdCB0aGF0IEknbGQgbGlrZSB0byBpbmNsdWRlLi4uCihKdXN0IGEgcGxh
aW4gcmVhZGJhY2sgYWZ0ZXIgcmVzdW1lIHdoZW4gd2UgZXhwZWN0IHRoZSByaW5nIGZyZXFzIHRv
IGJlCmFjdGl2ZS4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
