Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B7CD8B86
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 10:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC8E89D84;
	Wed, 16 Oct 2019 08:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F9489D84
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 08:42:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18853129-1500050 for multiple; Wed, 16 Oct 2019 09:42:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191016040558.12862-1-prathap.kumar.valsan@intel.com>
In-Reply-To: <20191016040558.12862-1-prathap.kumar.valsan@intel.com>
Message-ID: <157121535663.22469.496046380262440471@skylake-alporthouse-com>
Date: Wed, 16 Oct 2019 09:42:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move L3 MOCS to engine reset
 domain.
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

UXVvdGluZyBQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMjAxOS0xMC0xNiAwNTowNTo1OCkKPiBHZW4x
MiBoYXMgTDMgTU9DUyBpbiBlbmdpbmUgcmVzZXQgZG9tYWluLCBoYXZpbmcgdXMgdG8gcmUtaW5p
dGlhbGl6ZSBvbgo+IGFuIGVuZ2luZSByZXNldC4KCkhtbSwgYWl1aSB3ZSBjYW4gZG8gdGhpcyBi
eSByZW1vdmluZyBoYWxmIG9mIGludGVsX21vY3MuYy4uLgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
