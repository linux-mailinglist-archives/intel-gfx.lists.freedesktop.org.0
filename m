Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4920EB2CD
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 15:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D7CB6EEA4;
	Thu, 31 Oct 2019 14:33:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EDCE6EEA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 14:33:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19034475-1500050 for multiple; Thu, 31 Oct 2019 14:33:07 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191031100249.1626-1-chris@chris-wilson.co.uk>
 <20191031101116.19894-1-chris@chris-wilson.co.uk>
 <871rutknrl.fsf@gaia.fi.intel.com>
 <157253153647.11954.14804810030906563091@skylake-alporthouse-com>
In-Reply-To: <157253153647.11954.14804810030906563091@skylake-alporthouse-com>
Message-ID: <157253238555.11954.9104169948286950027@skylake-alporthouse-com>
Date: Thu, 31 Oct 2019 14:33:05 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Pretty print the
 i915_active
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMzEgMTQ6MTg6NTYpCj4gTXkgbWVtb3J5IHNh
eXMsIGFuZCBteSBhc3N1bXB0aW9uIGluIHRoaXMgY29kZSwgaXMgdGhhdCB0aGUKPiB0aGUgaXRl
cmF0b3IgaXMgc2FmZSBhZ2FpbnN0IGluc2VydGlvbnMgLS0gd2Ugd29uJ3QgZ2V0IGhvcnJpYmx5
IGxvc3QgaWYKPiB0aGUgdHJlZSBpcyByZWJhbGFuY2VkIGFzIHdlIHdhbGsuCgpBY3R1YWxseSwg
dGhlIGl0ZXJhdG9yIGlzIG5vdCBwZXJmZWN0IGFjcm9zcyByZWJhbGFuY2VzLiBJdCB3b24ndCBt
YXR0ZXIKaGVyZSBpbiB0aGUgc2VsZnRlc3QsIHNpbmNlIHdlIGFyZSB0aGUgb25seSBhY2Nlc3Nv
ciwgdGhlIHR3byBvdGhlcgp1c2VycyBkZXNlcnZlIHRocm91Z2h0LgoKSW4gX19hY3RpdmVfcmV0
aXJlLCB3ZSBoYXZlIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIHRyZWUgYXMgd2UgYXJlCmZyZWVp
bmcgdGhlIG5vZGVzLiBTYWZlLgoKSW4gaTkxNV9hY3RpdmVfd2FpdCgpIFt3ZSBjYW4ndCB0YWtl
IHRoZSBtdXRleCBoZXJlIGR1ZSB0byBzaHJpbmtlcgppbnZlcnNpb25zIV0sIHdlIHdhbGsgdGhl
IHRyZWUgdG8ga2ljayBzaWduYWxpbmcgb24gdGhlIG5vZGVzLiBTbyB0aGUKaXRlcmF0b3IgaXMg
bm90IHBlcmZlY3QsIGJ1dCBjYWxsaW5nIGVuYWJsZV9zaWduYWxpbmcoKSBpcyBtb3N0bHkgYW4K
b3B0aW1pc2F0aW9uIHNvIHRoYXQgd2UgZG9uJ3QgaGF2ZSB0byB3YWl0IHVwb24gdGhlIGJhY2tn
cm91bmQgZmx1c2guIFNvCkkgdGhpbmsgd2UgYXJlIHNhZmUgdG8gbWlzcyBub2Rlcywgc28gbG9u
ZyBhcyB0aGUgaXRlcmF0b3IgaXRzZWxmIGlzCmJvdW5kZWQgKHdoaWNoIGl0IG11c3QgYmUpLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
