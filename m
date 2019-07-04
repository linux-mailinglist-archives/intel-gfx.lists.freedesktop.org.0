Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 876565FB45
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 17:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B48786E362;
	Thu,  4 Jul 2019 15:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EE606E362
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 15:54:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17131531-1500050 for multiple; Thu, 04 Jul 2019 16:54:33 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
References: <20190704154407.25551-1-mika.kuoppala@linux.intel.com>
Message-ID: <156225567088.25091.1560874213326601592@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 04 Jul 2019 16:54:30 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gtt: pde entry encoding is
 identical
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDE2OjQ0OjA1KQo+ICsjZGVmaW5lIHNl
dF9wZF9lbnRyeShwZCwgcGRlLCB0bykgICh7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBc
Cj4gKyAgICAgICBfX3dyaXRlX3BkX2VudHJ5KChwZCksIChwZGUpLCBweF9iYXNlKHRvKSwgZ2Vu
OF9wZGVfZW5jb2RlKTsgXAo+ICsgICAgICAgYXRvbWljX2luYygmKHBkKS0+dXNlZCk7ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBcCgppbmMgYmVmb3JlIHdyaXRlIHNvIHRoYXQg
eW91IGhhdmUgYSBuaWNlIG9uaW9uIHdpdGggY2xlYXIuCgo+ICt9KQo+ICsKPiArI2RlZmluZSBj
bGVhcl9wZF9lbnRyeShwZCwgcGRlLCB0bykgKHsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBcCgpZb3Ugd2FudCB0byBwdWxsIHRoZSBHRU1fQlVHX09OIGhlcmUgc28gdGhhdCBpcyB0aWdo
dGx5IGNvdXBsZWQgd2l0aCB0aGUKYXRvbWljX2RlYyAtLSBpdCdzIGFuIHVuZGVyZmxvdyBjaGVj
ay4KCj4gKyAgICAgICBfX3dyaXRlX3BkX2VudHJ5KChwZCksIChwZGUpLCBweF9iYXNlKHRvKSwg
Z2VuOF9wZGVfZW5jb2RlKTsgXAo+ICsgICAgICAgYXRvbWljX2RlYygmcGQtPnVzZWQpOyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKPiArfSkKCkkgd291bGQgaGF2ZSBw
cmVmZXJyZWQgdGhlc2UgYXMgaW5saW5lcyAoZXZlbiBpZiBtZWFucyAicGFzc2luZyIgYW4KZXh0
cmEgYXJnKSwgYnV0IGxldCdzIHNlZSB3aGF0IHRoZSBuZXh0IHR3byBwYXRjaGVzIGJyaW5nLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
