Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EBDE4AF5
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 14:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929F86E9E1;
	Fri, 25 Oct 2019 12:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61CE56E9E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 12:23:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18962089-1500050 for multiple; Fri, 25 Oct 2019 13:22:57 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191025121718.18806-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20191025121718.18806-1-lionel.g.landwerlin@intel.com>
Message-ID: <157200617446.2725.7580006989346450131@skylake-alporthouse-com>
Date: Fri, 25 Oct 2019 13:22:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: capture aux page table error
 register
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0yNSAxMzoxNzoxOCkKPiBUR0wgaW50
cm9kdWNlZCBhIGZlYXR1cmUgaW4gd2hpY2ggd2UgbWFwIHRoZSBtYWluIHN1cmZhY2UgdG8gdGhl
Cj4gYXV4aWxsaWFyeSBzdXJmYWNlLiBJZiB3ZSBzY3JldyB1cCB0aGUgcGFnZSB0YWJsZXMsIHRo
ZSBIVyBoYXMgYQo+IHJlZ2lzdGVyIHRvIHRlbGwgdXMgd2hpY2ggZW5naW5lIGVuY291bnRlcnMg
YSBmYXVsdCBpbiB0aGUgcGFnZSB0YWJsZQo+IHdhbGsuCgpQbGF0Zm9ybSBzcGVjaWZpYywgb3Ig
Zm9yIGxpa2VseSBhbGwgZ2VuMTIgYW5kIHRoZW4gZ2VuMTIrPwogCj4gU2lnbmVkLW9mZi1ieTog
TGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgpBY2tlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJJ20gcmVtaW5kZWQg
b2YgbXkgZGVzaXJlIHRvIGp1c3QgZ3JhYiBhIHNuYXBzaG90IG9mIGFsbCBuZWFyYnkgbW1pbyBh
bmQKemlwIGl0IHVwLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
