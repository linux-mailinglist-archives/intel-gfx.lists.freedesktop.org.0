Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB9D21073
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 00:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C5088007;
	Thu, 16 May 2019 22:10:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3870688007
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 22:10:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16582230-1500050 for multiple; Thu, 16 May 2019 23:10:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
 <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
In-Reply-To: <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
Message-ID: <155804461077.21432.17200943459090833080@skylake-alporthouse-com>
Date: Thu, 16 May 2019 23:10:10 +0100
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTYgMjM6MDc6NDMpCj4gUXVvdGluZyBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA1LTE2IDIyOjU2OjMxKQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+ID4gaW5kZXggYjk2NGNhN2FmOWM4Li4wZTM4MTdm
OTc4NWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1l
X3BtLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uaAo+
ID4gQEAgLTYsNiArNiw3IEBACj4gPiAgI2lmbmRlZiBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4g
PiAgI2RlZmluZSBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4gPiAgCj4gPiArI2luY2x1ZGUgPGxp
bnV4L2RldmljZS5oPgo+IAo+IFRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBhbnkgcGVla2luZyBp
bnRvIHN0cnVjdCBkZXZpY2UsIHNvIGRvIHdlIG5vdAo+IGp1c3QgbmVlZCB0aGUgc3RydWN0IGRl
dmljZSBmb3J3YXJkIGRlY2wgaGVyZT8KCkFuZCBhZGQgaXQgdG8gTWFrZWZpbGUuaGVhZGVyc190
ZXN0Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
