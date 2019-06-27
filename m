Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6298058EDA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 02:00:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BA66E853;
	Fri, 28 Jun 2019 00:00:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC26B6E855
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:59:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17050857-1500050 for multiple; Fri, 28 Jun 2019 00:59:56 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-24-matthew.auld@intel.com>
In-Reply-To: <20190627205633.1143-24-matthew.auld@intel.com>
Message-ID: <156167999441.21955.8125281027793266828@skylake-alporthouse-com>
Date: Fri, 28 Jun 2019 00:59:54 +0100
Subject: Re: [Intel-gfx] [PATCH v2 23/37] drm/i915: expose missing map_gtt
 support to users
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMjcgMjE6NTY6MTkpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBE
b25lIGJ5IHJldHVybmluZyAtRU5PREVWIGZyb20gdGhlIG1hcF9ndHQgdmVyc2lvbiBpb2N0bC4K
PiAKPiBDYzogQW50b25pbyBBcmdlbnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29t
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDIgKysKPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+IGluZGV4IGFjOGZiYWRhMDQwNi4uMzRlZGMwMzAyNjkxIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5jCj4gQEAgLTQyNSw2ICs0MjUsOCBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1f
aW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm4gdmFsdWU7Cj4gICAgICAgICAgICAgICAgIGJyZWFrOwo+ICAgICAg
ICAgY2FzZSBJOTE1X1BBUkFNX01NQVBfR1RUX1ZFUlNJT046Cj4gKyAgICAgICAgICAgICAgIGlm
ICghSEFTX01BUFBBQkxFX0FQRVJUVVJFKGRldl9wcml2KSkKPiArICAgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gLUVOT0RFVjsKClRoZSBpb2N0bCB2ZXJzaW9uIGlzIHN0aWxsIGdvaW5nIHRv
IGJlIHRoZXJlLCBzaW5jZSB3ZSBqdXN0IGV4dGVuZCBpdApyZXBvcnQgb2Zmc2V0cyBmb3QgdGhl
IG1hbnkgYWx0ZXJuYXRpdmUgbWFwcGluZ3MsIHdpdGggdGhlIGRpZmZlcmVudApmZW5jZXMgYW5k
IGV2ZXJ5dGhpbmcuIFJpZ2h0PwoKSWYgd2UgZG9uJ3Qgc3VwcG9ydCBhIGdndHQgbW1hcCB2aWEg
dGhlIGV4dGVuZGVkIG1tYXBfb2Zmc2V0IGlvY3RsLCB3ZQpyZXBvcnQgdGhlIGZsYWdzIGFzIGJl
aW5nIGludmFsaWQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
