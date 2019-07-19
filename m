Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C656E80E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B94378924F;
	Fri, 19 Jul 2019 15:39:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 992E46E843
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:39:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17432809-1500050 for multiple; Fri, 19 Jul 2019 16:39:06 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190719153322.10464-1-michal.wajdeczko@intel.com>
References: <20190719153322.10464-1-michal.wajdeczko@intel.com>
Message-ID: <156355074440.24728.14541564472554967767@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 19 Jul 2019 16:39:04 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Don't try to clear failed
 empty pd allocation
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTE5IDE2OjMzOjIyKQo+IFdoZW4gX19n
ZW44X3BwZ3R0X2FsbG9jIGZhaWxzIHdpdGhvdXQgYWxsb2NhdGluZyBhbnl0aGluZwo+IHdlIHNo
b3VsZCBub3QgdHJ5IHRvIGNhbGwgX19nZW44X3BwZ3R0X2NsZWFyIGFzIHRoZXJlIGlzCj4gbm90
aGluZyB0byBjbGVhciBhbmQgdW5kZXJseWluZyBjb2RlIHdpbGwgY29tcGxhaW4gd2l0aDoKPiAK
PiBbICAxNTcuODYxNjQ1XSBnZW44X3BkX3JhbmdlOjg4MSBHRU1fQlVHX09OKHN0YXJ0ID49IGVu
ZCkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtv
QGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+IGluZGV4IDIyMGFiYTVhOTRkMi4uNWU3NTNlMDc1MDQ3IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBAQCAtMTExNSw3ICsxMTE1LDcgQEAgc3Rh
dGljIGludCBnZW44X3BwZ3R0X2FsbG9jKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+
ICAKPiAgICAgICAgIGVyciA9IF9fZ2VuOF9wcGd0dF9hbGxvYyh2bSwgaTkxNV92bV90b19wcGd0
dCh2bSktPnBkLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZzdGFydCwgc3Rh
cnQgKyBsZW5ndGgsIHZtLT50b3ApOwo+IC0gICAgICAgaWYgKHVubGlrZWx5KGVycikpCj4gKyAg
ICAgICBpZiAodW5saWtlbHkoZXJyICYmIGZyb20gIT0gc3RhcnQpKQo+ICAgICAgICAgICAgICAg
ICBfX2dlbjhfcHBndHRfY2xlYXIodm0sIGk5MTVfdm1fdG9fcHBndHQodm0pLT5wZCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZyb20sIHN0YXJ0LCB2bS0+dG9wKTsKClVn
aC4gRXZlcnlvbmUncyBmYXZvdXJpdGUgZXJyb3IgdG9kYXkuCgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
