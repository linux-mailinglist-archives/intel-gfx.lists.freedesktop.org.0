Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9960D45A4E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 12:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8097389385;
	Fri, 14 Jun 2019 10:24:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D28B89385
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 10:24:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16900356-1500050 for multiple; Fri, 14 Jun 2019 11:23:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-17-tvrtko.ursulin@linux.intel.com>
 <156043460670.17012.7120509194419771135@skylake-alporthouse-com>
 <15623051-38a0-88a6-a1d2-578abb0117ea@linux.intel.com>
In-Reply-To: <15623051-38a0-88a6-a1d2-578abb0117ea@linux.intel.com>
Message-ID: <156050783417.12536.6776047670176121851@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 11:23:54 +0100
Subject: Re: [Intel-gfx] [RFC 16/28] drm/i915: Compartmentalize
 i915_ggtt_probe_hw
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxMDozNTo1NykKPiAKPiBPbiAxMy8w
Ni8yMDE5IDE1OjAzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTEzIDE0OjM1OjI3KQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBIYXZpbmcgbWFkZSBzdGFydCB0byBiZXR0
ZXIgY29kZSBjb21wYXJ0bWVudGFsaXphdGlvbiBieSBpbnRyb2R1Y2luZwo+ID4+IHN0cnVjdCBp
bnRlbF9ndCwgY29udGludWUgdGhlIHRoZW1lIGVsc2V3aGVyZSBpbiBjb2RlIGJ5IG1ha2luZyBm
dW5jdGlvbnMKPiA+PiB0YWtlIHBhcmFtZXRlcnMgdGFrZSB3aGF0IGxvZ2ljYWxseSBtYWtlcyBt
b3N0IHNlbnNlIGZvciB0aGVtIGluc3RlYWQgb2YKPiA+PiB0aGUgZ2xvYmFsIHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlLgo+ID4gCj4gPiBJcyB0aGF0IGEgY2FuIG9mIHdvcm1zIEkgc2VlPyA6KQo+
ID4gCj4gPiBXaGlsZSB5b3UgYXJlIGhlcmUsIGNhcmUgdG8gcHVsbCBpbiB0aGUgZ21jaCBwcm9i
ZSBzbyB3ZSBjYW4gZHJvcCB0aGUKPiA+IGZyYW5rZW5zdGVpbiBhcHByb2FjaC4KPiAKPiBXaGF0
IGV4YWN0bHkgZG8geW91IG1lYW4/IFB1bGwgaW4gd2hhdCBmcm9tIHdoZXJlIHRvIHdoZXJlPwoK
aW50ZWxfZ3R0LmtvIGlzIHRoZSBvdGhlciBoYWxmIG9mIGk5MTVfZ2VtX2d0dC5jCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
