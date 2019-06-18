Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82E24A6F4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:32:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDAB6E190;
	Tue, 18 Jun 2019 16:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CD226E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:32:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16943461-1500050 for multiple; Tue, 18 Jun 2019 17:32:32 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190618161731.15607-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190618161731.15607-1-mika.kuoppala@linux.intel.com>
Message-ID: <156087555349.31375.1232847972150261025@skylake-alporthouse-com>
Date: Tue, 18 Jun 2019 17:32:33 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE4IDE3OjE3OjI5KQo+IEZvciBhbGwgcGFn
ZSBkaXJlY3RvcnkgZW50cmllcywgdGhlIHBkZSBlbmNvZGluZyBpcwo+IGlkZW50aWNhbC4gRG9u
J3QgY29tcGlsaWNhdGUgY2FsbCBzaXRlcyB3aXRoIGRpZmZlcmVudAo+IHZlcnNpb25zIG9mIGRv
aW5nIHRoZSBzYW1lIHRoaW5nLiBXZSBjaGVjayB0aGUgZXhpc3RlbmNlIG9mCj4gcGh5c2ljYWwg
cGFnZSBiZWZvcmUgd3JpdGluZyB0aGUgZW50cnkgaW50byBpdC4gVGhpcyBmdXJ0aGVyCj4gZ2Vu
ZXJhbGl6ZXMgdGhlIHBkIHNvIHRoYXQgbWFuaXB1bGF0aW9uIGluIGNhbGxzaXRlcyB3aWxsIGJl
Cj4gaWRlbnRpY2FsLCByZW1vdmluZyB0aGUgbmVlZCB0byBoYW5kbGUgcGRwcyBkaWZmZXJlbnRs
eSBmb3IgZ2VuOC4KCkFuZCB3ZSBjYW4gcHVsbCBpbiB0aGUgYXRvbWljX2luYyBhcyB3ZWxsPyBB
dCB0aGUgdG9wIGxldmVsIHRoZSByZXN1bHQKZ29lcyB1bnVzZWQsIGJ1dCBzaW5jZSB3ZSBzaG91
bGQgbm90IGJlIGFzIGZyZXF1ZW50bHkgaW5zZXJ0aW5nIG5ldwpwYWdlcyB0aGUgaGlnaGVyIHVw
IHdlIGdvLCB0aGF0IHNob3VsZCBiZSBpbnNpZ25pZmljYW50LgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
