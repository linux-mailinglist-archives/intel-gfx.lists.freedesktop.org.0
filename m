Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F597A2EC
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:12:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105296E43D;
	Tue, 30 Jul 2019 08:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20B8D6E43D
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:12:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17721885-1500050 for multiple; Tue, 30 Jul 2019 09:12:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-7-daniele.ceraolospurio@intel.com>
 <ba072476-2221-dd16-906e-aa30c5bb4015@linux.intel.com>
In-Reply-To: <ba072476-2221-dd16-906e-aa30c5bb4015@linux.intel.com>
Message-ID: <156447433162.6373.8767394540057374759@skylake-alporthouse-com>
Date: Tue, 30 Jul 2019 09:12:11 +0100
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: introduce intel_gt_suspend
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMCAwODozMzoyOCkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDAwOjQ3LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+ID4gRm9yIHN5bW1l
dHJ5IHdpdGggaW50ZWxfZ3RfcmVzdW1lIGFuZCB0byBoaWRlIG1vcmUgc3R1ZmYgZnJvbSB0aGUg
dG9wCj4gPiBsZXZlbCB1bmRlciBpbnRlbF9ndC4gTm90ZSB0aGF0IHRoZSBzd2l0Y2hfdG9fa2Vy
bmVsX2NvbnRleHRfc3luYyBoYXMKPiA+IG5vdCBiZWVuIG1vdmVkIGR1cmUgdG8gdGhlIGxvY2tp
bmcgYW5kIG9yZGVyaW5nIHJlcXVpcmVtZW50cyB0aGF0IGV4aXN0Cj4gCj4gVHlwbyBpbiBkdWUu
Cj4gCj4gU2hvdWxkIHdlIGFkZCBpbnRlbF9ndF9zdXNwZW5kX2Vhcmx5L2xhdGUsIHdpdGggdGhl
IGZvcm1lciBkZWFsaW5nIHdpdGggCj4gc3dpdGNoX3RvX2tlcm5lbF9jb250ZXh0X3N5bmM/IEFs
dGhvdWdoIHRoYXQgcmFpc2VzIGFuIGludGVyZXN0aW5nIAo+IGNvbnVuZHJ1bSBzaW5jZSBpdCBv
cGVyYXRlcyBvbiBHRU0gYW5kIEdULiBCZXN0IHRoZW4gdG8gbGVhdmUgaXQgCj4gdW53cmFwcGVk
IGZvciBub3cgSSB0aGluay4KPiAKPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KCkFoLCBJIHdvdWxkbid0IGFwcGx5IHRoaXMgcGF0Y2ggeWV0
IGZvciBleGFjdGx5IHRoYXQgcmVhc29uOiB3ZQpzaG91bGRuJ3QgYmUgZHJpdmluZyBHVCBzdXNw
ZW5kIGZyb20gaW5zaWRlIEdFTSwgc28gd291bGQgd2FpdCB1bnRpbCB3ZQpoYXZlIGEgZmV3IG1v
cmUgcGllY2VzIG9mIHRoZSBwdXp6bGUgcmV2aWV3ZWReVyB1bnJhdmVsbGVkLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
