Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E73D67C1B7
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 14:40:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC4789D9A;
	Wed, 31 Jul 2019 12:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC0B389D9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 12:40:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17759234-1500050 for multiple; Wed, 31 Jul 2019 13:40:31 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
 <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
Message-ID: <156457683041.6373.9454577018894385800@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 13:40:30 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/uc: Move uC WOPCM setup in
 uc_init_hw
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTMxIDAwOjA3OjQwKQo+IFRo
ZSByZWdpc3RlciB3ZSB3cml0ZSBhcmUgbm90IFdPUENNIHJlZ3MgYnV0IHVDIG9uZXMgcmVsYXRl
ZCB0byBob3cKPiBHdUMgYW5kIEh1QyBhcmUgZ29pbmcgdG8gdXNlIHRoZSBXT1BDTSwgc28gaXQg
bWFrZXMgbG9naWNhbCBzZW5zZQo+IGZvciB0aGVtIHRvIGJlIHByb2dyYW1tZWQgYXMgcGFydCBv
ZiB1Y19pbml0X2h3LiBUaGUgV09QQ00gbWFwIG9uIHRoZQo+IG90aGVyIHNpZGUgaXMgbm90IHVD
LXNwZWNpZmljIChhbHRob3VnaCB0aGF0IGlzIG91ciBtYWluIHVzZS1jYXNlKSwgc28KPiBrZWVw
IHRoYXQgc2VwYXJhdGUuCj4gCj4gdjI6IG1vdmUgd3JpdGVfYW5kX3ZlcmlmeSB0byB1bmNvcmUs
IGZpeCBsb2csIHJlLXVzZSBlcnJfb3V0IHRhZywKPiAgICAgYWRkIGludGVsX3dvcGNtX2d1Y19i
YXNlLCBmaXggbG9nCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8
bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgoKUHVzaGVkIHRoZSBmaXJzdCAyLiBKdXN0IHRoZSB1c3VhbCBuYW1p
bmcgZGViYXRlIGFzIGEgaG9sZCB1cCBmb3IgdGhlCmNvbXBsZXRpb24uCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
