Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8342321BAF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67DD8987C;
	Fri, 17 May 2019 16:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410D18987C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:36:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16592194-1500050 for multiple; Fri, 17 May 2019 17:36:41 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190517162227.6436-7-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-7-michal.wajdeczko@intel.com>
Message-ID: <155811099924.826.14922938916489825273@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 17:36:39 +0100
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/uc: Stop GuC submission during
 reset prepare
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE3OjIyOjI2KQo+ICt2b2lkIGlu
dGVsX2d1Y19zdWJtaXNzaW9uX3N0b3Aoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICt7Cj4gKyAg
ICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7Cj4g
Kwo+ICsgICAgICAgR0VNX0JVR19PTihpOTE1LT5ndC5hd2FrZSk7IC8qIEdUIHNob3VsZCBiZSBw
YXJrZWQgZmlyc3QgKi8KCkhvdyBpcyB0aGlzIHRydWUgZm9yIHJlc2V0PyBOb3RlLCBpdCdzIGFu
IHVubG9ja2VkIHJlYWQsIHNvIFJFQURfT05DRSgpCm9yIHNvbWV0aGluZyBhbG9uZyBHRU1fQlVH
X09OKGludGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSkKClRob3VnaCBJIHRo
aW5rIHRoaXMgaXMgd3JvbmchCgppOTE1X3Jlc2V0IG9yIGk5MTVfZ2VtX3NldF93ZWRnZWQKIC0+
IHJlc2V0X3ByZXBhcmUKICAgIC0+IGludGVsX3VjX3Jlc2V0X3ByZXBhcmUKICAgICAgIC0+IGlu
dGVsX2d1Y19zdWJtaXNzaW9uX3N0b3AKCk5vIGxvY2tzLCBubyBwYXJraW5nLiBTbyBob3cgZG9l
cyB0aGlzIHN1cnZpdmUgc2VsZnRlc3RzPyA6KAotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
