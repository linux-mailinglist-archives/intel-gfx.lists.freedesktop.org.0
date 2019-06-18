Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2070B49BD0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 10:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776626E113;
	Tue, 18 Jun 2019 08:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9449C6E113
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 08:14:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16936073-1500050 for multiple; Tue, 18 Jun 2019 09:14:40 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190618074153.16055-23-chris@chris-wilson.co.uk>
References: <20190618074153.16055-1-chris@chris-wilson.co.uk>
 <20190618074153.16055-23-chris@chris-wilson.co.uk>
Message-ID: <156084568121.2258.12146551709677727245@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 18 Jun 2019 09:14:41 +0100
Subject: Re: [Intel-gfx] [PATCH 23/26] drm/i915: Rename
 intel_wakeref_[is]_active
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTggMDg6NDE6NTApCj4gQEAgLTQyMiw2ICs0
MjMsMTEgQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX2VuZ2luZV9yZXNldChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gIGJvb2wgaW50ZWxfZW5naW5lX2lzX2lkbGUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKPiAgYm9vbCBpbnRlbF9lbmdpbmVzX2FyZV9pZGxl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gIAo+ICtzdGF0aWMgaW5saW5l
IGJvb2wgaW50ZWxfZW5naW5lX2lzX2FjdGl2ZShjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCgpPbiByZXZpZXcsIEkgdGhpbmsgSSBwcmVmZXIgaW50ZWxfZW5naW5lX2lzX2F3
YWtlKCkgaGVyZSBzbyB0aGF0IGl0IGlzCnNsaWdodGx5IG1vcmUgZGlzdGluY3QgZnJvbSBpbnRl
bF9lbmdpbmVfaXNfaWRsZSgpLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
