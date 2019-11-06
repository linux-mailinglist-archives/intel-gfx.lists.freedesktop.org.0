Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF20F1C9B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 18:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCD056E081;
	Wed,  6 Nov 2019 17:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F7C6E081
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 17:38:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19105437-1500050 for multiple; Wed, 06 Nov 2019 17:38:48 +0000
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191106172349.11987-1-ville.syrjala@linux.intel.com>
References: <20191106172349.11987-1-ville.syrjala@linux.intel.com>
Message-ID: <157306192625.26738.4881106515096173919@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 17:38:46 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't oops in dumb_create ioctl
 if we have no crtcs
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTExLTA2IDE3OjIzOjQ5KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTWFrZSBzdXJl
IHdlIGhhdmUgYSBjcnRjIGJlZm9yZSBwcm9iaW5nIGl0cyBwcmltYXJ5IHBsYW5lJ3MKPiBtYXgg
c3RyaWRlLiBJbml0aWFsbHkgSSB0aG91Z2h0IHdlIGNhbid0IGdldCB0aGlzIGZhciB3aXRob3V0
Cj4gY3J0Y3MsIGJ1dCBsb29rcyBsaWtlIHdlIGNhbiB2aWEgdGhlIGR1bWJfY3JlYXRlIGlvY3Rs
Lgo+IAo+IE5vdCBzdXJlIGlmIHdlIHNob3VsZG4ndCBkaXNhYmxlIGR1bWIgYnVmZmVyIHN1cHBv
cnQgZW50aXJlbHkKPiB3aGVuIHdlIGhhdmUgbm8gY3J0Y3MsIGJ1dCB0aGF0IHdvdWxkIHJlcXVp
cmUgc29tZSBhbW91bnQgb2Ygd29yawo+IGFzIHRoZSBvbmx5IHRoaW5nIGN1cnJlbnRseSBiZWlu
ZyBjaGVja2VkIGlzIGRldi0+ZHJpdmVyLT5kdW1iX2NyZWF0ZQo+IHdoaWNoIHdlJ2QgaGF2ZSB0
byBjb252ZXJ0IHRvIHNvbWUgZGV2aWNlIHNwZWNpZmljIGR5bmFtaWMgdGhpbmcuCj4gCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBSZXBvcnRlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlr
YS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gRml4ZXM6IGFhNWNhOGI3NDIxYyAoImRybS9p
OTE1OiBBbGlnbiBkdW1iIGJ1ZmZlciBzdHJpZGUgdG8gNGsgdG8gYWxsb3cgZm9yIGd0dCByZW1h
cHBpbmciKQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5k
ZXggMWY5Mzg2MGZiODk3Li4zMzEwMzA3NjVjYTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0yNTQzLDYgKzI1NDMsOSBAQCB1MzIg
aW50ZWxfcGxhbmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4gICAgICAgICAgKiB0aGUgaGlnaGVzdCBzdHJpZGUgbGltaXRzIG9mIHRoZW0gYWxsLgo+
ICAgICAgICAgICovCj4gICAgICAgICBjcnRjID0gaW50ZWxfZ2V0X2NydGNfZm9yX3BpcGUoZGV2
X3ByaXYsIFBJUEVfQSk7Cj4gKyAgICAgICBpZiAoIWNydGMpCj4gKyAgICAgICAgICAgICAgIHJl
dHVybiAwOwo+ICsKCkNhbGxlcnM6CmludGVsX2ZiX21heF9zdHJpZGUgLT4gaW50ZWxfZnJhbWVi
dWZmZXJfaW5pdCwgbm90IHVzZWQgaWYgbm8gZGlzcGxheQppbnRlbF9mYl9zdHJpZGVfYWxpZ25t
ZW50LAoJMCAtPiBpbnRlbF90aWxlX3NpemUoKSBhbGlnbm1lbnQuIG9rIC0+CglpbnRlbF9mcmFt
ZWJ1ZmZlcl9pbml0LCBub3QgdXNlZCBhcyBubyBkaXNwbGF5CgotPiBpOTE1X2dlbV9kdW1iX2Ny
ZWF0ZSAtPiBhcmdzLT5waXRjaCA9IFBBR0VfQUxJR04oKQoKT2ssIG5vdCBhcyBob3JyaWJsZSBh
cyBJIGZlYXJlZCB3aGVuIEkgc2F3IHJldHVybiAwIGZyb20gbWF4X3N0cmlkZSEKClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
