Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37FB801BE
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 22:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E206E485;
	Fri,  2 Aug 2019 20:30:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244D06E485
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 20:30:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17826877-1500050 for multiple; Fri, 02 Aug 2019 21:30:45 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190802204111.7344-1-prathap.kumar.valsan@intel.com>
In-Reply-To: <20190802204111.7344-1-prathap.kumar.valsan@intel.com>
Message-ID: <156477784355.6598.13904246729423995531@skylake-alporthouse-com>
Date: Fri, 02 Aug 2019 21:30:43 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Separate pinning of pages from
 i915_vma_insert()
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

UXVvdGluZyBQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMjAxOS0wOC0wMiAyMTo0MToxMSkKPiBDdXJy
ZW50bHkgaTkxNV92bWFfaW5zZXJ0KCkgaXMgcmVzcG9uc2libGUgZm9yIGFsbG9jYXRpbmcgZHJt
IG1tIG5vZGUKPiBhbmQgYWxzbyBhbGxvY2F0aW5nIG9yIGdhdGhlcmluZyBwaHlzaWNhbCBwYWdl
cy4gTW92ZSB0aGUgbGF0dGVyIHRvIGEKPiBzZXBhcmF0ZSBmdW5jdGlvbiBmb3IgYmV0dGVyIHJl
YWRhYmlsaXR5LgoKQ2xvc2UgYnV0IGlmIHlvdSBsb29rIGF0IHRoZSBtdXRleCBwYXRjaGVzLCB5
b3UnbGwgc2VlIHdoeSBpdCBoYXMgdG8gYmUKYmVmb3JlLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
