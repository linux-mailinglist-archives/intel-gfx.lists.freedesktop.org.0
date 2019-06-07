Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A29389F2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 784C989DC9;
	Fri,  7 Jun 2019 12:14:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30FA489DC9
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:14:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16825371-1500050 for multiple; Fri, 07 Jun 2019 13:14:03 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190607115932.20271-1-tvrtko.ursulin@linux.intel.com>
References: <20190607115932.20271-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155990964078.19464.10683106781281786712@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 07 Jun 2019 13:14:00 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move i915_check_and_clear_faults
 to intel_reset.c
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0wNyAxMjo1OTozMikKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRoZSBjb2RlIGlzIGxv
Z2ljYWxseSBhYm91dCByZXNldCBzbyBpdCBtYWtlcyBzZW5zZS4KPiAKPiBJdCBhbHNvIGVuYWJs
ZXMgbWFraW5nIGk5MTVfY2xlYXJfZXJyb3JfcmVnaXN0ZXJzIHN0YXRpYy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFN1Z2dl
c3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpZdXAsIGxv
b2tzIGxpa2UgYSBzdGVwIGluIHRoZSByaWdodCBkaXJlY3Rpb24uCgpSZXZpZXdlZC1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJIGNhbid0IGRlY2lkZSBqdXN0
IHF1aXRlIGhvdyBpdCBzaG91bGQgbG9vayBiZXR3ZWVuIHRoZSBlbmdpbmVzCnNhbml0aXppbmcg
dGhlIHN0cmF5IGVycm9ycywgb3IgaWYgd2Ugc2hvdWxkIGRvIGFuIGludGVsX3Jlc2V0X2luaXQg
LwppbnRlbF9yZXNldF9zYW5pdGl6ZSBwYXNzLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
