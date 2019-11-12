Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFF1F92D8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2019 15:39:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F2946EB44;
	Tue, 12 Nov 2019 14:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AAB6EB44
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Nov 2019 14:39:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19174703-1500050 for multiple; Tue, 12 Nov 2019 14:39:45 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191112092854.869-1-chris@chris-wilson.co.uk>
 <87mud141il.fsf@gaia.fi.intel.com>
In-Reply-To: <87mud141il.fsf@gaia.fi.intel.com>
Message-ID: <157356958359.28106.16035922168920708123@skylake-alporthouse-com>
Date: Tue, 12 Nov 2019 14:39:43 +0000
Subject: Re: [Intel-gfx] [PATCH 01/27] drm/i915: Flush context free work on
 cleanup
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTEyIDE0OjIzOjE0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaHJvdyBpbiBhIGZs
dXNoX3dvcmsoKSBhbmQgcmN1X2JhcnJpZXIoKSB0byBzcGVjaWZpY2FsbHkgZmx1c2ggdGhlCj4g
PiBjb250ZXh0IGNsZWFudXAgd29yay4KPiA+Cj4gPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjQ4Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxICsKPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAgIHwgMSArCj4gPiAgMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+IGluZGV4IDcyZDM4OWFmYTI4YS4uMTdmMzk1NjcyZTVl
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQu
Ywo+ID4gQEAgLTc3Niw2ICs3NzYsNyBAQCBpbnQgaTkxNV9nZW1faW5pdF9jb250ZXh0cyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICB2b2lkIGk5MTVfZ2VtX2RyaXZlcl9yZWxl
YXNlX19jb250ZXh0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiA+ICB7Cj4gPiAg
ICAgICBkZXN0cm95X2tlcm5lbF9jb250ZXh0KCZpOTE1LT5rZXJuZWxfY29udGV4dCk7Cj4gPiAr
ICAgICBmbHVzaF93b3JrKCZpOTE1LT5nZW0uY29udGV4dHMuZnJlZV93b3JrKTsKPiA+ICB9Cj4g
PiAgCj4gPiAgc3RhdGljIGludCBjb250ZXh0X2lkcl9jbGVhbnVwKGludCBpZCwgdm9pZCAqcCwg
dm9pZCAqZGF0YSkKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
Cj4gPiBpbmRleCBiOTYxM2QwNDQzOTMuLjFmNjg3MDBhMjMxMSAxMDA2NDQKPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ID4gQEAgLTQwMiw2ICs0MDIsNyBA
QCB2b2lkIGludGVsX2VuZ2luZXNfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4gICAg
ICAgICAgICAgICBndC0+ZW5naW5lW2lkXSA9IE5VTEw7Cj4gPiAgICAgICAgICAgICAgIGd0LT5p
OTE1LT5lbmdpbmVbaWRdID0gTlVMTDsKPiA+ICAgICAgIH0KPiA+ICsgICAgIHJjdV9iYXJyaWVy
KCk7Cj4gCj4gSSBndWVzcyB3ZSBuZWVkIHRoaXMgZm9yIHJlbGVhc2luZyBrZXJuZWxfY3R4IGJ1
dCBJIGRvbid0IHNlZSB3aHkKPiBleGFjdGx5LgoKSXQncyB0aGUgcmN1J2VkIHBwZ3R0IEkgd29y
cnkgYWJvdXQuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
