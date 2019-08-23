Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDDC9A8BF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 09:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1C416EBBF;
	Fri, 23 Aug 2019 07:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F486EBBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 07:28:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18235448-1500050 for multiple; Fri, 23 Aug 2019 08:27:27 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
Message-ID: <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 08:27:25 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDAzOjA5OjA5KQo+IFRH
TCBoYXMgYW4gaW1wcm92ZWQgQ1MgcHJlLXBhcnNlciB0aGF0IGNhbiBub3cgcHJlLWZldGNoIGNv
bW1hbmRzIGFjcm9zcwo+IGJhdGNoIGJvdW5kYXJpZXMuIFRoaXMgaW1wcm92ZXMgcGVyZm9ybWFu
Y2VzIHdoZW4gbG90cyBvZiBzbWFsbCBiYXRjaGVzCj4gYXJlIHVzZWQsIGJ1dCBoYXMgYW4gaW1w
YWN0IG9uIHNlbGYtbW9kaWZ5aW5nIGNvZGUuIElmIHdlIHdhbnQgdG8gbW9kaWZ5Cj4gdGhlIGNv
bnRlbnQgb2YgYSBiYXRjaCBmcm9tIGFub3RoZXIgcmluZy9iYXRjaCwgd2UgbmVlZCB0byBlaXRo
ZXIKPiBndWFyYW50ZWUgdGhhdCB0aGUgbWVtb3J5IGxvY2F0aW9uIGlzIHVwZGF0ZWQgYmVmb3Jl
IHRoZSBwcmUtcGFyc2VyIGdldHMKPiB0byBpdCBvciB3ZSBuZWVkIHRvIHR1cm4gdGhlIHByZS1w
YXJzZXIgb2ZmIGFyb3VuZCB0aGUgbW9kaWZpY2F0aW9uLgo+IEluIGk5MTUsIHdlIHVzZSBzZWxm
LW1vZGlmeWluZyBjb2RlIG9ubHkgZm9yIEdQVSByZWxvY2F0aW9ucy4KPiAKPiBUaGUgcHJlLXBh
cnNlciBmZXRjaGVzIGFjcm9zcyBtZW1vcnkgc3luY2hyb25pemF0aW9uIGNvbW1hbmRzIGFzIHdl
bGwsCj4gc28gdGhlIG9ubHkgd2F5IHRvIGd1YXJhbnRlZSB0aGF0IHRoZSB3cml0ZXMgbGFuZCBi
ZWZvcmUgdGhlIHBhcnNlciBnZXRzCj4gdG8gaXQgaXMgdG8gaGF2ZSBtb3JlIGluc3RydWN0aW9u
cyBiZXR3ZWVuIHRoZSBzeW5jIGFuZCB0aGUgZGVzdGluYXRpb24KPiB0aGFuIHRoZSBwYXJzZXIg
RklGTyBkZXB0aCwgd2hpY2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24uCgpXZWxsLCBvdXIg
QUJJIGlzIHRoYXQgbWVtb3J5IGlzIGNvaGVyZW50IGJlZm9yZSB0aGUgYnJlYWRjcnVtYiBvZiAq
ZWFjaCoKYmF0Y2guIFRoYXQgaXMgYSBmdW5kYW1lbnRhbCByZXF1aXJlbWVudCBmb3Igb3VyIHNp
Z25hbGluZyB0byB1c2Vyc3BhY2UuClBsZWFzZSB0ZWxsIG1lIHRoYXQgdGhlcmUgaXMgYSBjb250
ZXh0IGZsYWcgdG8gdHVybiB0aGlzIG9mZiwgb3Igd2UgZWxzZQp3ZSBuZWVkIHRvIGVtaXQgMzJ4
IGZsdXNoZXMgb3Igd2hhdGV2ZXIgaXQgdGFrZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
