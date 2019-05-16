Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1310A210A7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 00:42:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518FB893D0;
	Thu, 16 May 2019 22:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB39893D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 22:42:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16582366-1500050 for multiple; Thu, 16 May 2019 23:42:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
 <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
 <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
In-Reply-To: <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
Message-ID: <155804656786.21432.5178995588934161825@skylake-alporthouse-com>
Date: Thu, 16 May 2019 23:42:47 +0100
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: move and rename i915_runtime_pm
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTYgMjM6MTA6MTApCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDUtMTYgMjM6MDc6NDMpCj4gPiBRdW90aW5nIERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gKDIwMTktMDUtMTYgMjI6NTY6MzEpCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ydW50aW1lX3BtLmgKPiA+ID4gaW5kZXggYjk2NGNhN2FmOWM4Li4wZTM4MTdmOTc4NWUg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0u
aAo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKPiA+
ID4gQEAgLTYsNiArNiw3IEBACj4gPiA+ICAjaWZuZGVmIF9fSU5URUxfUlVOVElNRV9QTV9IX18K
PiA+ID4gICNkZWZpbmUgX19JTlRFTF9SVU5USU1FX1BNX0hfXwo+ID4gPiAgCj4gPiA+ICsjaW5j
bHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gPiAKPiA+IFRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBh
bnkgcGVla2luZyBpbnRvIHN0cnVjdCBkZXZpY2UsIHNvIGRvIHdlIG5vdAo+ID4ganVzdCBuZWVk
IHRoZSBzdHJ1Y3QgZGV2aWNlIGZvcndhcmQgZGVjbCBoZXJlPwo+IAo+IEFuZCBhZGQgaXQgdG8g
TWFrZWZpbGUuaGVhZGVyc190ZXN0CgpIaW50OiB3ZSBtYXkgbmVlZCB0byBzcGxpdCBvdXQgaW50
ZWxfZGlzcGxheV9wb3dlci5bY2hdCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
