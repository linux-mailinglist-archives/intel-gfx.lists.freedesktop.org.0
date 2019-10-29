Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6332E8505
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:04:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E5436E190;
	Tue, 29 Oct 2019 10:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92B46E190
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:04:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19004188-1500050 for multiple; Tue, 29 Oct 2019 10:04:20 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191029095856.25431-2-matthew.auld@intel.com>
References: <20191029095856.25431-1-matthew.auld@intel.com>
 <20191029095856.25431-2-matthew.auld@intel.com>
Message-ID: <157234345792.10560.11391718845038542483@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 10:04:17 +0000
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: do not map aperture if it is
 not available.
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMjkgMDk6NTg6NTEpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBT
a2lwIGJvdGggc2V0dXAgYW5kIGNsZWFudXAgb2YgdGhlIGFwZXJ0dXJlIG1hcHBpbmcgaWYgdGhl
IEhXIGRvZXNuJ3QKPiBoYXZlIGFuIGFwZXJ0dXJlIGJhci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzMSArKysrKysrKysr
KysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwg
MTIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRl
eCBlZWJjN2ZlZTgxZTIuLjczZGFkOGM2YWNjMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCj4gQEAgLTI3NzAsNyArMjc3MCw5IEBAIHN0YXRpYyB2b2lkIGdndHRfY2xlYW51
cF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ICAgICAgICAgaTkxNV9hZGRyZXNzX3NwYWNl
X2ZpbmkoJmdndHQtPnZtKTsKPiAgCj4gICAgICAgICBhcmNoX3BoeXNfd2NfZGVsKGdndHQtPm10
cnIpOwo+IC0gICAgICAgaW9fbWFwcGluZ19maW5pKCZnZ3R0LT5pb21hcCk7Cj4gKwo+ICsgICAg
ICAgaWYgKGdndHQtPmlvbWFwLnNpemUpCj4gKyAgICAgICAgICAgICAgIGlvX21hcHBpbmdfZmlu
aSgmZ2d0dC0+aW9tYXApOwoKTWFyZ2luYWxseSBhbm5veWluZyB3ZSBoYWQgbm90IG1hZGUgaW9f
bWFwcGluZ19maW5pKCkgbm9wLXByb29mLgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
