Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67463E7559
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8AB46E939;
	Mon, 28 Oct 2019 15:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEE26E939
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 15:40:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18995298-1500050 for multiple; Mon, 28 Oct 2019 15:40:33 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.0adjjrw5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20191028125703.29872-1-michal.wajdeczko@intel.com>
 <157226814562.32326.13807251276342582214@skylake-alporthouse-com>
 <op.0adjjrw5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <157227723156.869.774634128884171740@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 28 Oct 2019 15:40:31 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Use vfunc to check
 engine submission mode
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTEwLTI4IDE0OjIyOjI5KQo+IE9uIE1vbiwg
MjggT2N0IDIwMTkgMTQ6MDk6MDUgKzAxMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMTAtMjggMTI6NTc6MDMpCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5oICAKPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5oCj4gPj4gaW5kZXggOTlkYzU3NmE0ZTI1Li4yM2RkZTkwODMzNDkgMTAwNjQ0Cj4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmgKPiA+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuaAo+ID4+IEBAIC0xNDUsNCArMTQ1LDYgQEAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqCj4gPj4gIGludGVsX3ZpcnR1YWxfZW5naW5lX2dldF9zaWJs
aW5nKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiA+PiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgc2libGluZyk7Cj4gPj4KPiA+PiArYm9vbCBp
bnRlbF9lbmdpbmVfaW5fZXhlY2xpc3RzX3N1Ym1pc3Npb25fbW9kZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICAKPiA+PiAqZW5naW5lKTsKPiA+Cj4gPiBQbGFubmluZyB0byB1c2UgaXQgb3V0c2lk
ZT8KPiAKPiBZZXMsIHRoZXJlIGFyZSBmZXcgcGxhY2VzIHdoZXJlIGdsb2JhbCBVU0VTX0dVQ19T
VUJNSVNTSU9OKGk5MTUpIGlzIHVzZWQsCj4gYW5kIHNvbWUgb2YgdGhlbSBjYW4gYmUgcmVwbGFj
ZWQgYnkgaW5fZXhlY2xpc3RzX3N1Ym1pc3Npb25fbW9kZShlKSByaWdodAo+IGF3YXkgKGk5MTVf
cGVyZi5jKS4KCkF5ZSwgcGVyZiBsb29rcyBsaWtlIGEgZ29vZCBjYW5kaWRhdGUgdG8gcHV0IHRo
aXMgdG8gaW1tZWRpYXRlIHVzZS4gQ2FyZQp0byBpbmNsdWRlIHRoYXQgd2l0aApSZXZpZXdlZC1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
