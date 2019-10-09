Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54AED18FE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 21:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF3F6EA40;
	Wed,  9 Oct 2019 19:31:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F9F6EA40
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 19:31:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18782562-1500050 for multiple; Wed, 09 Oct 2019 20:31:29 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
 <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
 <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
 <7faf81f6-33a5-bad1-6f6c-a6c7252536b5@intel.com>
 <157063022485.18808.17487424164878345808@skylake-alporthouse-com>
 <20baa165-5e0a-bb23-a97e-86b967606544@intel.com>
In-Reply-To: <20baa165-5e0a-bb23-a97e-86b967606544@intel.com>
Message-ID: <157064948734.18808.17017755822264094662@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 20:31:27 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wOSAxNToxNTo1NSkKPiBPbiAwOS8x
MC8yMDE5IDE3OjEwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcmUgeW91IGhhcHB5IHdpdGgg
YXNzb2NpYXRpbmcgdGhlIGk5MTVfcGVyZl9zdHJlYW0gd2l0aCB0aGUKPiA+IHNwZWNpZmljX2N0
eCBhbmQgY29udHJvbGxpbmcgYWxsIHRoZSBwYXJhbWV0ZXJzIHZpYSBwZXJmLWlvY3RsPwo+ID4K
PiAKPiBZZWFoIHNvdW5kcyBsaWtlIGl0IHNob3VsZCB3b3JrLCBJIHdvdWxkIGxpa2UgdG8gdGVz
dCB0aGUgd2hvbGUgc2V0dXAuCj4gCj4gSWYgeW91IGNhbiBzaGFyZSB0aGUgcGF0Y2hlcyBjaGFu
Z2luZyB0aGUgY29uZmlnIHRocm91Z2ggYSBwZXJmIHN0cmVhbSAKPiBpb2N0bCwgSSdsbCB1cGRh
dGUgbXkgZHJpdmVyIGFuZCB0ZXN0LgoKQWgsCmh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcv
fmlja2xlL2xpbnV4LTIuNi9sb2cvP2g9d2lwLXBlcmYtY29udGV4dAp0aGF0IHR1cm5lZCBvdXQg
bXVjaCBzaW1wbGVyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
