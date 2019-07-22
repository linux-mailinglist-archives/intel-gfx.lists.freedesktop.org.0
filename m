Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A726C70536
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA07589CF9;
	Mon, 22 Jul 2019 16:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 208F489CF9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:16:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17509348-1500050 for multiple; Mon, 22 Jul 2019 17:16:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-10-chris@chris-wilson.co.uk>
 <4a0ad40c-d2e9-c507-483e-c9b2ac54153a@linux.intel.com>
In-Reply-To: <4a0ad40c-d2e9-c507-483e-c9b2ac54153a@linux.intel.com>
Message-ID: <156381217148.31349.4766597572982524456@skylake-alporthouse-com>
Date: Mon, 22 Jul 2019 17:16:11 +0100
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915: Isolate
 i915_getparam_ioctl()
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yMiAxNzowNDo1NCkKPiBGb3Jnb3QgdG8g
c2F5Li4uCj4gCj4gT24gMTgvMDcvMjAxOSAwODowMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
VGhpcyBnaWFudCBzd2l0Y2ggaGFzIHRlbmRyaWxzIG92ZXIgb3RoZXIgdGhlIHN0cnVjdCBhbmQg
ZG9lcyBub3QgZml0Cj4gCj4gLi4uICJvdmVyIHRoZSBzdHJ1Y3QiPyBPdmVyIHNvbWV0aGluZyBl
bHNlIEkgdGhpbmssIGp1c3QgY2FuJ3QgZ3Vlc3MgCj4gd2hhdCB5b3Ugd2FudGVkIHRvIHNheS4g
OikKCkFsbCBvdmVyLiBWZXJ5IGNvbmZ1c2VkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
