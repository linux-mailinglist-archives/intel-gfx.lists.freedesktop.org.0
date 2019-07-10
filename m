Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD809647A9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 15:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7B376E0E1;
	Wed, 10 Jul 2019 13:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDEFE6E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 13:55:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17200317-1500050 for multiple; Wed, 10 Jul 2019 14:55:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
 <87pnmiq9ta.fsf@gaia.fi.intel.com>
In-Reply-To: <87pnmiq9ta.fsf@gaia.fi.intel.com>
Message-ID: <156276694529.4055.11385351593683694629@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 14:55:45 +0100
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/gtt: Compute the radix for
 gen8 page table levels
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE0OjQ5OjA1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiArc3RhdGljIGlubGluZSB1
bnNpZ25lZCBpbnQgZ2VuOF9wdF9jb3VudCh1NjQgYWRkciwgdTY0IGVuZCkKPiA+ICt7Cj4gPiAr
ICAgICBHRU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKPiA+ICsgICAgIGlmICgoYWRkciBeIGVuZCkg
JiB+STkxNV9QREVfTUFTSykKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIEk5MTVfUERFUyAtIChh
ZGRyICYgSTkxNV9QREVfTUFTSyk7Cj4gCj4gT2ssIEkgeWllbGQgb24gNTEyLiBJOTE1X1BERVMg
aXMgZmluZSBhcyBpdCBhdGxlYXN0Cj4gY291cGxlcyBpdCB0byBtYXNrIDpPCgpJIGhhZCBhbHJl
YWR5IHJlbW92ZWQgdGhlbSBhbGwhIDotcAoKR2l2ZSBvciB0YWtlIGEgZmV3IEdFTjhfUERFUyBz
aW5jZSB0aGF0IGVuZHMgdXAgYmVpbmcgdGhlIHNpbmdsZQpjb25zdGFudCB3ZSByZXF1aXJlLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
