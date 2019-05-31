Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15BE830CBD
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 12:40:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B4189147;
	Fri, 31 May 2019 10:40:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52026890AA;
 Fri, 31 May 2019 10:40:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16746809-1500050 for multiple; Fri, 31 May 2019 11:40:31 +0100
MIME-Version: 1.0
To: Colin King <colin.king@canonical.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190531103201.10124-1-colin.king@canonical.com>
References: <20190531103201.10124-1-colin.king@canonical.com>
Message-ID: <155929922781.27302.13050993726222660588@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 31 May 2019 11:40:27 +0100
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915: fix use of uninitialized
 pointer vaddr
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDb2xpbiBLaW5nICgyMDE5LTA1LTMxIDExOjMyOjAxKQo+IEZyb206IENvbGluIElh
biBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4gCj4gVGhlIGFzc2lnbm1lbnQgb2Yg
ZXJyIGlzIHVzaW5nIHRoZSBpbmNvcnJlY3QgcG9pbnRlciB2YWRkciB0aGF0IGhhcwo+IG5vdCBi
ZWVuIGluaXRpYWxpemVkLiBGaXggdGhpcyBieSB1c2luZyB0aGUgY29ycmVjdCBwb2ludGVyIG9i
aiBpbnN0ZWFkLgo+IAo+IEFkZHJlc3Nlcy1Db3Zlcml0eTogKCJVbmluaXRpYWxpemVkIHBvaW50
ZXIgcmVhZCIpCj4gRml4ZXM6IDY1MDFhYTRlM2E0NSAoImRybS9pOTE1OiBhZGQgaW4ta2VybmVs
IGJsaXR0ZXIgY2xpZW50IikKPiBTaWduZWQtb2ZmLWJ5OiBDb2xpbiBJYW4gS2luZyA8Y29saW4u
a2luZ0BjYW5vbmljYWwuY29tPgoKUmV2aWV3ZWQgYW5kIHB1c2hlZCwgdGhhbmtzIGZvciB0aGUg
Zml4IQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
