Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2361D5642
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 18:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9876E191;
	Fri, 15 May 2020 16:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E80146ECF5
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 16:38:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21207148-1500050 for multiple; Fri, 15 May 2020 17:38:23 +0100
MIME-Version: 1.0
In-Reply-To: <20191028113036.27553-3-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <20191028113036.27553-3-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158956070186.29850.17139706761107026437@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 17:38:21 +0100
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Fix overlay colorkey for
 30bpp and 8bpp
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEwLTI4IDExOjMwOjMzKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQXMgd2l0aCB0
aGUgdmlkZW8gc3ByaXRlcyB0aGUgY29sb3JrZXkgaXMgYWx3YXlzIHNwZWNpZmllZAo+IGFzIDhi
cGMuCgo+IEZvciAxMGJwYyBwcmltYXJ5IHBsYW5lIGZvcm1hdHMgd2UganVzdCBpZ25vcmUgdGhl
Cj4gdHdvIGxzYnMgb2YgZWFjaCBjb21wb25lbnQuCgpTZW5zaWJsZS4KCj4gRm9yIEM4IHdlJ2xs
IHJlcGxpY2F0ZSB0aGUgc2FtZQo+IGtleSB0byBlYWNoIGNoYW5lbCwgd2hpY2ggaXMgd2hhdCB0
aGUgaGFyZHdhcmUgd2FudHMuCgpHcmF5LCBvay4KCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgfCAxNCArKysrKysrKysrKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYwo+IGluZGV4IDg0
OGNlMDdhOGVjMi4uMjM4MjkzNzRmNzUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKPiBAQCAtMTAxLDEyICsxMDEsMTUgQEAKPiAgI2RlZmlu
ZSBDTEtfUkdCMjRfTUFTSyAgICAgICAgIDB4MAo+ICAjZGVmaW5lIENMS19SR0IxNl9NQVNLICAg
ICAgICAgMHgwNzAzMDcKPiAgI2RlZmluZSBDTEtfUkdCMTVfTUFTSyAgICAgICAgIDB4MDcwNzA3
Cj4gLSNkZWZpbmUgQ0xLX1JHQjhJX01BU0sgICAgICAgICAweGZmZmZmZgo+ICAKPiArI2RlZmlu
ZSBSR0IzMF9UT19DT0xPUktFWShjKSBcCj4gKyAgICAgICAoKChjICYgMHgzRkMwMDAwMCkgPj4g
NikgfCAoKGMgJiAweDAwMEZGMDAwKSA+PiA0KSB8ICgoYyAmIDB4MDAwMDAzRkMpID4+IDIpKQog
ICAgICAgICAgICAgMHgwMGZmMDAwMDAgICAgICAgICAgICAgICAweDAwMDBmZjAwICAgICAgICAg
ICAgICAgIDB4MDAwMDAwZmYKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
