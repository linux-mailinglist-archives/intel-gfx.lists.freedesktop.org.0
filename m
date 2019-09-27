Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2BDC04F7
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 14:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12426E1D7;
	Fri, 27 Sep 2019 12:16:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 334466E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 12:16:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18639173-1500050 for multiple; Fri, 27 Sep 2019 13:16:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-8-chris@chris-wilson.co.uk>
 <a1305fcf-1ac4-6c06-3553-49a6684168ed@linux.intel.com>
 <156958352829.32596.13199670465422748570@skylake-alporthouse-com>
 <85a5f7de-3837-3017-cb20-23258a61075f@linux.intel.com>
In-Reply-To: <85a5f7de-3837-3017-cb20-23258a61075f@linux.intel.com>
Message-ID: <156958660601.32596.13285971368792453394@skylake-alporthouse-com>
Date: Fri, 27 Sep 2019 13:16:46 +0100
Subject: Re: [Intel-gfx] [PATCH 07/27] drm/i915: Coordinate i915_active with
 its own mutex
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNyAxMzowODo1MSkKPiAKPiBPbiAyNy8w
OS8yMDE5IDEyOjI1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTI3IDEyOjEwOjI5KQo+ID4+Cj4gPj4gT24gMjUvMDkvMjAxOSAxMTowMSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiArc3RydWN0IGRtYV9mZW5jZSAqCj4gPj4+ICtfX2k5
MTVfYWN0aXZlX2ZlbmNlX3NldChzdHJ1Y3QgaTkxNV9hY3RpdmVfZmVuY2UgKmFjdGl2ZSwKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQo+ID4+Cj4g
Pj4gQ2FuIHlvdSBhZGQgYSBzaG9ydCBjb21tZW50IGZvciB0aGlzIGZ1bmN0aW9uIGV4cGxhaW5p
bmcgdGhlIHJhY3luZXNzCj4gPj4gYW5kIHNvIHdoeSBpdCByZXR1cm5zIHByZXYgYW5kIHdoYXQg
c2hvdWxkIHRoZSBjYWxsZXJzIGRvIHdpdGggaXQ/Cj4gPiAKPiA+IEJlZm9yZSB1c2luZyB0aGlz
IGZ1bmN0aW9uLCB3ZSBoYWQgdGhlIGNhbGxlcnMgZGVjbGFyZSB3aGF0IG11dGV4IGd1YXJkcwo+
ID4gdGhpcyB0aW1lbGluZSBhbmQgd2UgY2hlY2sgaGVyZSB0aGF0IGlzIGhlbGQuCj4gCj4gTm8s
IEkgbWVhbiBiZWNhdXNlIGl0IGhhcyB0byByZWxvYWQgcHJldiBhbmQgcmV0dXJuIGl0IHRvIHRo
ZSBjYWxsZXIsIAo+IHdoaWNoIGltcGxpZXMgdGhhdCBpcyB0byBoYW5kbGUgc29tZSBkZXNpZ25l
ZC1pbiByYWN5LW5lc3Mgd2hpY2ggSSB0aGluayAKPiBzaG91bGQgYmUgbWVudGlvbmVkLgoKQnV0
IHRoYXQncyBub3QgcmFjaW5nIHdpdGggdGhlIGNhbGxlciwgdGhhdCBqdXN0IHJhY2luZyB3aXRo
IHRoZQpjYWxsYmFjayBmcm9tIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBhbmQgdGhlIHJlYXNvbiB3
aHkgd2UgaGF2ZSB0byBjaGVjawphZnRlciBzZXJpYWxpc2luZyBpcyBjYWxsZWQgb3V0LiAvKiBz
ZXJpYWxpc2Ugd2l0aCBwcmV2LT5jYl9saXN0ICovID8KClRoZSBjYWxsZXIgaXMgcmVzcG9uc2li
bGUgZm9yIGVuc3VyaW5nIHRoYXQgcHJldiBpcyBleGVjdXRlZCBiZWZvcmUKZmVuY2UgdG8ga2Vl
cCB0aGUgdGltZWxpbmUgaW4gdGhlIHNhbWUgb3JkZXIgYXMgcmVjb3JkZWQuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
