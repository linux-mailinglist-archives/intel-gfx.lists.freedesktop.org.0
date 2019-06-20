Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933634D241
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 17:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01B6B6E5CD;
	Thu, 20 Jun 2019 15:37:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E608B6E5D5
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 15:37:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16968441-1500050 for multiple; Thu, 20 Jun 2019 16:36:51 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190620153136.26200-1-tvrtko.ursulin@linux.intel.com>
References: <20190619213437.1190-11-tvrtko.ursulin@linux.intel.com>
 <20190620153136.26200-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156104500849.3202.7021056385847007945@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Jun 2019 16:36:48 +0100
Subject: Re: [Intel-gfx] [CI v3 11/33] drm/i915: Store backpointer to
 intel_gt in the engine
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yMCAxNjozMTozNikKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYwo+IGluZGV4IDgyYjdhY2U2MmQ5Ny4uODJmZTZkNWYwOGQ0IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMzI5MCw2ICszMjkwLDcg
QEAgaW50ZWxfZXhlY2xpc3RzX2NyZWF0ZV92aXJ0dWFsKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgsCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+ICAKPiAg
ICAgICAgIHZlLT5iYXNlLmk5MTUgPSBjdHgtPmk5MTU7Cj4gKyAgICAgICB2ZS0+YmFzZS5ndCA9
IHNpYmxpbmdzWzBdLT5ndDsKClRoYXQgcG9zZXMgYW4gaW50ZXJlc3RpbmcgZGlsZW1tYToKCglp
ZiAoc2libGluZ3Nbbl0tPmd0ICE9IHZlLT5iYXNlLmd0KQoJCXJldHVybiAtRUlOVkFMPwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
