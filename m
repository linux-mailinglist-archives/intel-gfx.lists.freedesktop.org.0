Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6898E5801A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14776E117;
	Thu, 27 Jun 2019 10:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79C66E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:21:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17041829-1500050 for multiple; Thu, 27 Jun 2019 11:21:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190627080339.9178-1-lionel.g.landwerlin@intel.com>
Message-ID: <156163086213.20851.13729658057147323012@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 11:21:02 +0100
Subject: Re: [Intel-gfx] [PATCH v2 0/2] drm/i915: timeline semaphore support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAwOTowMzozNykKPiBIaSwKPiAK
PiBUaGlzIHJldmlzaW9uIGdldHMgcmlkIG9mIHRoZSBzeW5jaHJvbm91cyB3YWl0LiBXZSBub3cg
aW1wbGVtZW50IHRoZQo+IHN5bmNocm9ub3VzIHdhaXQgYXMgcGFydCBvZiB0aGUgdXNlcnNwYWNl
IGRyaXZlci4gQSB0aHJlYWQgaXMgc3Bhd25lZAo+IGZvciBlYWNoIGVuZ2luZSBhbmQgd2FpdHMg
Zm9yIGF2YWlsYWJpbGl0eSBvZiB0aGUgc3luY29ianMgYmVmb3JlCj4gY2FsbGluZyBpbnRvIGV4
ZWNidWZmZXIuCgpXaHkgd291bGQgeW91IGRvIHRoYXQ/IEl0J3Mgbm90IGxpa2UgdGhlIGtlcm5l
bCBhbHJlYWR5IGhhcyB0aGUgYWJpbGl0eQp0byBzZXJpYWxpc2VzIGV4ZWN1dGlvbiBhc3luY2hy
b25vdXNseS4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
