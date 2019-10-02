Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 424BDC49E8
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 10:48:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2D06E916;
	Wed,  2 Oct 2019 08:48:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A89046E90F;
 Wed,  2 Oct 2019 08:47:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18689696-1500050 for multiple; Wed, 02 Oct 2019 09:47:54 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0ae718ca-00f1-8ed5-6a46-c2142f84693e@linux.intel.com>
References: <20191001174924.20227-1-chris@chris-wilson.co.uk>
 <0ae718ca-00f1-8ed5-6a46-c2142f84693e@linux.intel.com>
Message-ID: <157000607131.1880.16367953660241073776@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 02 Oct 2019 09:47:51 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_userptr_blits:
 Check for allowed GTT mmaps
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wMiAwOTo0MjowMSkKPiAKPiBPbiAwMS8x
MC8yMDE5IDE4OjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBAQCAtMTIyNSw3ICsxMjQ3LDcg
QEAgc3RhdGljIHZvaWQgdGVzdF9yZWFkb25seV9tbWFwKGludCBpOTE1KQo+ID4gICAgICAgb3Jp
Z2luYWwgPSBnX2NvbXB1dGVfY2hlY2tzdW1fZm9yX2RhdGEoR19DSEVDS1NVTV9TSEExLCBwYWdl
cywgc3opOwo+ID4gICAKPiA+ICAgICAgIHB0ciA9IF9fZ2VtX21tYXBfX2d0dChpOTE1LCBoYW5k
bGUsIHN6LCBQUk9UX1dSSVRFKTsKPiA+IC0gICAgIGlndF9hc3NlcnQocHRyID09IE5VTEwpOwo+
ID4gKyAgICAgaWd0X3JlcXVpcmUocHRyICE9IE5VTEwpOwo+IAo+IFRoaXMgc2hvdWxkIGJlIGFi
bGUgdG8gc3RheSB1bmNoYW5nZWQsIG5vPyBXaGV0aGVyIHJlYWQtb25seSBvciBtbWFwX2d0dCAK
PiBpcyBkaXNhbGxvd2VkIGl0IG11c3QgYWx3YXlzIGJlIE5VTEwgaGVyZS4gTm9uLU5VTEwgc2hv
dWxkIGJlIHRlc3QgZmFpbC4KClRoZSB0ZXN0IGlzIGFsc28gY2hlY2tpbmcgdGhhdCByZWFkb25s
eSBpcyBob25vdXJlZCB0aHJvdWdoIHRoZSBHVFQgbW1hcAppbnRlcmZhY2UsIGkuZS4gdGhhdCB5
b3UgY2Fubm90IHdyaXRlIGludG8gaW1wb3J0ZWQgbWVtb3J5LCB0aGVyZWJ5CmNpcmN1bXZlbnRp
bmcgdXNlcnB0cihtbWFwKCIvZXRjL3Bhc3N3ZCIsIFBST1RfUkVBRCkpLgoKSSBzdHVjayB0aGUg
cmVxdWlyZSBpbiB0aGUgd3Jvbmcgc3BvdC4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
