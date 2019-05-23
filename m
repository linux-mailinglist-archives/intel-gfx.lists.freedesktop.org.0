Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D1B27C34
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 13:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45D0489C9C;
	Thu, 23 May 2019 11:52:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295BF89C9C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 11:52:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16654068-1500050 for multiple; Thu, 23 May 2019 12:52:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190523114620.19335-1-lionel.g.landwerlin@intel.com>
 <20190523114620.19335-3-lionel.g.landwerlin@intel.com>
In-Reply-To: <20190523114620.19335-3-lionel.g.landwerlin@intel.com>
Message-ID: <155861233043.28319.5452168515708280707@skylake-alporthouse-com>
Date: Thu, 23 May 2019 12:52:10 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add syncobj timeline support
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMyAxMjo0NjoyMCkKPiAtICAgICAg
ICAgICAgICAgc3luY29iaiA9IGRybV9zeW5jb2JqX2ZpbmQoZmlsZSwgZmVuY2UuaGFuZGxlKTsK
PiAtICAgICAgICAgICAgICAgaWYgKCFzeW5jb2JqKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgRFJNX0RFQlVHKCJJbnZhbGlkIHN5bmNvYmogaGFuZGxlIHByb3ZpZGVkXG4iKTsKPiAtICAg
ICAgICAgICAgICAgICAgICAgICBlcnIgPSAtRU5PRU5UOwo+IC0gICAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICh1c2VyX2ZlbmNlLmZs
YWdzICYgX19JOTE1X0VYRUNfRkVOQ0VfVU5LTk9XTl9GTEFHUykgewo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZXJyID0gLUVJTlZBTDsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGdvdG8gZXJyOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiArCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgaWYgKHVzZXJfZmVuY2UuZmxhZ3MgJiBJOTE1X0VYRUNfRkVO
Q0VfV0FJVCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gZHJtX3N5
bmNvYmpfZmluZF9mZW5jZSgKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZmlsZSwgdXNlcl9mZW5jZS5oYW5kbGUsIHVzZXJfZmVuY2UudmFsdWUsCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9TWU5DT0JKX1dBSVRfRkxBR1NfV0FJ
VF9GT1JfU1VCTUlULAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAm
c3luY29iaiwgJmZlbmNlKTsKCklzIHRoaXMgc3RpbGwgYSBzeW5jaHJvbm91cyB3YWl0PyBUaGF0
IHdvdWxkIGJlIGFuIHVuZm9ydHVuYXRlIGNoYW5nZSBpbgpiZWhhdmlvdXIgYW5kIGFudGl0aGVz
aXMgdG8gaGF2aW5nIGEgc2NoZWR1bGVyLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
