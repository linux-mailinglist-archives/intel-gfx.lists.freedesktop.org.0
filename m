Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4DF7D702
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 10:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685956E3C4;
	Thu,  1 Aug 2019 08:13:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04F056E3C4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 08:13:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17780409-1500050 for multiple; Thu, 01 Aug 2019 09:13:29 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190801080811.GA27472@intel.intel>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-2-chris@chris-wilson.co.uk>
 <20190801080811.GA27472@intel.intel>
Message-ID: <156464720716.2512.13104214910830054265@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 01 Aug 2019 09:13:27 +0100
Subject: Re: [Intel-gfx] [PATCH 01/17] drm/i915/execlists: Always clear
 pending&inflight requests on reset
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA4LTAxIDA5OjA4OjExKQo+IEhpIENocmlzLAo+IAo+
ID4gSWYgd2Ugc2tpcCB0aGUgcmVzZXQgYXMgd2UgZm91bmQgdGhlIGVuZ2luZSBpbmFjdGl2ZSBh
dCB0aGUgdGltZSBvZiB0aGUKPiA+IHJlc2V0LCB3ZSBzdGlsbCBuZWVkIHRvIGNsZWFyIHRoZSBy
ZXNpZHVhbCBpbmZsaWdodCAmIHBlbmRpbmcgcmVxdWVzdAo+ID4gYm9va2tlZXBpbmcgdG8gcmVm
bGVjdCB0aGUgY3VycmVudCBzdGF0ZSBvZiBIVy4KPiAKPiBbLi4uXQo+IAo+ID4gV2hlcmUgbm90
IGhhdmluZyBjbGVhcmVkIHRoZSBwZW5kaW5nIGFycmF5IG9uIHJlc2V0LCBpdCBwZXJzaXN0cwo+
ID4gaW5kZWZpbml0ZWx5Lgo+IAo+IGRlcyB0aGlzIGZpeCBCdWcgMTExMTQ0KCopPwoKSXQgc2hv
dWxkbid0LCBzaW5jZSB0aGUgc3RhbGwgaXMgbm90IG9uIHRoZSBlbmdpbmUgdGhhdCBpcyBiZWlu
ZyByZXNldC4KCj4gPiAtICAgICAvKgo+ID4gLSAgICAgICogQ2F0Y2ggdXAgd2l0aCBhbnkgbWlz
c2VkIGNvbnRleHQtc3dpdGNoIGludGVycnVwdHMuCj4gPiAtICAgICAgKgo+ID4gLSAgICAgICog
SWRlYWxseSB3ZSB3b3VsZCBqdXN0IHJlYWQgdGhlIHJlbWFpbmluZyBDU0IgZW50cmllcyBub3cg
dGhhdCB3ZQo+ID4gLSAgICAgICoga25vdyB0aGUgZ3B1IGlzIGlkbGUuIEhvd2V2ZXIsIHRoZSBD
U0IgcmVnaXN0ZXJzIGFyZSBzb21ldGltZXNeVwo+ID4gLSAgICAgICogb2Z0ZW4gdHJhc2hlZCBh
Y3Jvc3MgYSBHUFUgcmVzZXQhIEluc3RlYWQgd2UgaGF2ZSB0byByZWx5IG9uCj4gPiAtICAgICAg
KiBndWVzc2luZyB0aGUgbWlzc2VkIGNvbnRleHQtc3dpdGNoIGV2ZW50cyBieSBsb29raW5nIGF0
IHdoYXQKPiA+IC0gICAgICAqIHJlcXVlc3RzIHdlcmUgY29tcGxldGVkLgo+ID4gLSAgICAgICov
Cj4gPiAtICAgICBleGVjbGlzdHNfY2FuY2VsX3BvcnRfcmVxdWVzdHMoZXhlY2xpc3RzKTsKPiA+
IC0KPiAKPiB3aHkgZGlkIHRoaXMgZW5kIHVwIGhlcmUgaW4gYSBmaXJzdCBwbGFjZT8KCkhpc3Rv
cnksIHRoYXQncyB3aGVyZSBpdCBzdGFydGVkLCB0aGVuIGNvZGUgZ290IHJlYXJyYW5nZWQgYXJv
dW5kIGl0LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
