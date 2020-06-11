Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D011F67EC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 14:36:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22DFA6E15C;
	Thu, 11 Jun 2020 12:36:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1926E15C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 12:36:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21464518-1500050 for multiple; Thu, 11 Jun 2020 13:36:35 +0100
MIME-Version: 1.0
In-Reply-To: <20200611123038.91855-2-chris@chris-wilson.co.uk>
References: <20200611123038.91855-1-chris@chris-wilson.co.uk>
 <20200611123038.91855-2-chris@chris-wilson.co.uk>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <159187899353.1506.17977517184833304797@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 11 Jun 2020 13:36:33 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Tighten timestamp around
 vblank sampling
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMjAtMDYtMTEgMTM6MzA6MzgpCj4gVGlnaHRlbiB0aGUg
dGltZXN0YW1wIHF1ZXJpZXMgYmVmb3JlL2FmdGVyIHRoZSByZWdpc3RlciByZWFkIHNvIHRoYXQg
d2UKPiBoYXZlIGxlc3MgdW5jZXJ0YWluaXR5IGZvciB3aGVuIHRoZSByZWFkIGFjdHVhbGx5IHRv
b2sgcGxhY2UuIFRoaXMgaXMKPiBtb3JlIGFwdCBmb3IgdGhlIG9sZGVyIGdlbmVyYXRpb25zIHdo
ZXJlIGl0IGlzIG5vdCBhIHNpbXBsZSBzaW5nbGUKPiByZWdpc3RlciByZWFkLiBXaGV0aGVyIHdl
IGFyZSBhYmxlIHRvIGRpc2Nlcm4gYW4gaW1wcm92ZW1lbnQgaW4gb3VyCj4gc2FtcGxpbmcgYWNj
dXJhY3kgcmVtYWlucyB0byBiZSBzZWVuLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIHwgNTcgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfaXJxLmMKPiBpbmRleCA4ZTgyM2JhMjVmNWYuLjljNDRkZjhlY2NlNyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IEBAIC03MTMsNyArNzEzLDkgQEAgdTMyIGc0eF9nZXRf
dmJsYW5rX2NvdW50ZXIoc3RydWN0IGRybV9jcnRjICpjcnRjKQo+ICAgKiBUaGlzIGZ1bmN0aW9u
IHdpbGwgdXNlIEZyYW1lc3RhbXAgYW5kIGN1cnJlbnQKPiAgICogdGltZXN0YW1wIHJlZ2lzdGVy
cyB0byBjYWxjdWxhdGUgdGhlIHNjYW5saW5lLgo+ICAgKi8KPiAtc3RhdGljIHUzMiBfX2ludGVs
X2dldF9jcnRjX3NjYW5saW5lX2Zyb21fdGltZXN0YW1wKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
KQo+ICtzdGF0aWMgdTMyCj4gK19faW50ZWxfZ2V0X2NydGNfc2NhbmxpbmVfZnJvbV90aW1lc3Rh
bXAoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBrdGltZV90ICpzdGltZSwga3RpbWVfdCAqZXRpbWUpCj4gIHsKPiAgICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOwo+ICAgICAgICAgc3RydWN0IGRybV92YmxhbmtfY3J0YyAqdmJsYW5rID0KPiBAQCAt
NzM3LDYgKzczOSw5IEBAIHN0YXRpYyB1MzIgX19pbnRlbF9nZXRfY3J0Y19zY2FubGluZV9mcm9t
X3RpbWVzdGFtcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgICAgICAgICAgICAgICAgICog
cGlwZSBmcmFtZSB0aW1lIHN0YW1wLiBUaGUgdGltZSBzdGFtcCB2YWx1ZQo+ICAgICAgICAgICAg
ICAgICAgKiBpcyBzYW1wbGVkIGF0IGV2ZXJ5IHN0YXJ0IG9mIHZlcnRpY2FsIGJsYW5rLgo+ICAg
ICAgICAgICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgaWYgKHN0aW1lKQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICpzdGltZSA9IGt0aW1lX2dldCgpOwo+ICsKPiAgICAgICAgICAgICAg
ICAgc2Nhbl9wcmV2X3RpbWUgPSBpbnRlbF9kZV9yZWFkX2Z3KGRldl9wcml2LAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUElQRV9GUk1UTVNUTVAo
Y3J0Yy0+cGlwZSkpOwo+ICAKPiBAQCAtNzQ2LDYgKzc1MSw5IEBAIHN0YXRpYyB1MzIgX19pbnRl
bF9nZXRfY3J0Y19zY2FubGluZV9mcm9tX3RpbWVzdGFtcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKPiAgICAgICAgICAgICAgICAgICovCj4gICAgICAgICAgICAgICAgIHNjYW5fY3Vycl90aW1l
ID0gaW50ZWxfZGVfcmVhZF9mdyhkZXZfcHJpdiwgSVZCX1RJTUVTVEFNUF9DVFIpOwo+ICAKPiAr
ICAgICAgICAgICAgICAgaWYgKGV0aW1lKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICpldGlt
ZSA9IGt0aW1lX2dldCgpOwoKSSBndWVzcyB3aXRoIFBSRUVNUFRfUlQgYW5kIHNsZWVwaW5nIHNw
aW5sb2NrcywgdGhlc2UgdGltZXN0YW1wcyArCmludGVsX2RlX3JlYWRfZncgZGVzZXJ2ZSB0byBi
ZSB3aXRoaW4gcHJlZW1wdF9kaXNhYmxlKCkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
