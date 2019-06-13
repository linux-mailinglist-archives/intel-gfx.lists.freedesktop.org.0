Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06094436D8
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB29789A4A;
	Thu, 13 Jun 2019 13:49:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C49789A4A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:49:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16889334-1500050 for multiple; Thu, 13 Jun 2019 14:49:02 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
Message-ID: <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 14:49:00 +0100
Subject: Re: [Intel-gfx] [RFC 06/28] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xMyAxNDozNToxNykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFN0YXJ0IHVzaW5nIHRo
ZSBuZXdseSBpbnRyb2R1Y2VkIHN0cnVjdCBpbnRlbF9ndCB0byBmdXNlIHRvZ2V0aGVyIGNvcnJl
Y3QKPiBsb2dpY2FsIGluaXQgZmxvdyB3aXRoIHVuY29yZSBmb3IgbW9yZSByZW1vdmFsIG9mIGlt
cGxpY2l0IGRldl9wcml2IGluCj4gbW1pbyBhY2Nlc3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkxvb2tzIGZpbmUsIEkgbWln
aHQgbW92ZSBpdCBhZ2FpbiBsYXRlciBuZXh0IHRvIHRoZSBmZW5jZSByZWdpc3RlcnMsIG9yCmF0
IGxlYXN0IHB1bGwgdGhpcyBhbmQgdGhlIGRldGVjdGlvbiBpbnRvIGl0cyBvd24gaW50ZWxfZ3Rf
c3dpenpsaW5nLmMKCkhtbSwgbm93IHRoYXQgSSBzYWlkIHRoYXQsIGRvZXMgdGhhdCBzZWVtIGxp
a2UgYSByZWFzb25hYmxlIHRoaW5nIHRvIGRvCnJpZ2h0IGF3YXksIHNlZSBpOTE1X2dlbV9mZW5j
ZV9yZWdzLmMgZm9yIHRoZSBzd2l6emxlIHByb2JlPwotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
