Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A20FC56C4F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814C26E45D;
	Wed, 26 Jun 2019 14:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387336E462
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:38:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17032460-1500050 for multiple; Wed, 26 Jun 2019 15:38:08 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190626143618.21800-1-jani.nikula@intel.com>
References: <20190626143618.21800-1-jani.nikula@intel.com>
Message-ID: <156155988517.26855.8106595872151907631@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 15:38:05 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: prefix header search path
 with $(srctree)/
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNiAxNTozNjoxNykKPiBQZXIgY29tbWl0IDQz
MDY4Y2I3YmExZiAoImRybTogcHJlZml4IGhlYWRlciBzZWFyY2ggcGF0aHMgd2l0aAo+ICQoc3Jj
dHJlZSkvIikgdGhpcyBpcyB3aGF0IHdlIHNob3VsZCBiZSBkb2luZy4gRm9sbG93IHN1aXQuCgpC
bGV1Z2gsIGl0J3Mgbm90IG1lbnRpb25lZCBpbiBEb2N1bWVudGlvbi9rYnVpbGQgYnV0IGl0IGlz
IHVzZWQgaW4gb25lCm9mIHRoZWlyIGV4YW1wbGVzLgogCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KZm9yIHNvbWUgdmFsdWUgb2YgcmV2aWV3LgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
