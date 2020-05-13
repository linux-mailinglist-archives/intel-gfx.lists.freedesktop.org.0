Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CA81D1811
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 16:57:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87B5C6EA63;
	Wed, 13 May 2020 14:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A6F6EA63
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 14:57:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21188438-1500050 for multiple; Wed, 13 May 2020 15:57:20 +0100
MIME-Version: 1.0
In-Reply-To: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
References: <20200302143943.32676-1-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158938183932.29850.9901227653127012566@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 13 May 2020 15:57:19 +0100
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Nuke pointless div by 64bit
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAzLTAyIDE0OjM5OjM4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQnVuY2ggb2Yg
cGxhY2VzIHVzZSBhIDY0Yml0IGRpdmlzb3IgbmVlZGxlc3NseS4gU3dpdGNoCj4gdG8gMzJiaXQg
ZGl2aXNvci4KPiAKPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVy
Zi5jIHwgMTEgKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwg
NiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDIzMzRj
NDVmMWQwOC4uNzE2ZmU2ZTRlNTZjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBA
QCAtMTY2NywxMCArMTY2Nyw5IEBAIHN0YXRpYyBpbnQgYWxsb2Nfbm9hX3dhaXQoc3RydWN0IGk5
MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0ICpibzsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+ICAgICAgICAgY29uc3Qg
dTY0IGRlbGF5X3RpY2tzID0gMHhmZmZmZmZmZmZmZmZmZmZmIC0KPiAtICAgICAgICAgICAgICAg
RElWNjRfVTY0X1JPVU5EX1VQKAo+IC0gICAgICAgICAgICAgICAgICAgICAgIGF0b21pYzY0X3Jl
YWQoJnN0cmVhbS0+cGVyZi0+bm9hX3Byb2dyYW1taW5nX2RlbGF5KSAqCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAgUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2to
eiwKPiAtICAgICAgICAgICAgICAgICAgICAgICAxMDAwMDAwdWxsKTsKPiArICAgICAgICAgICAg
ICAgRElWX1JPVU5EX1VQX1VMTChhdG9taWM2NF9yZWFkKCZzdHJlYW0tPnBlcmYtPm5vYV9wcm9n
cmFtbWluZ19kZWxheSkgKgo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFJVTlRJ
TUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHosCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgMTAwMDAwMCk7Cj4gICAgICAgICBjb25zdCB1MzIgYmFzZSA9
IHN0cmVhbS0+ZW5naW5lLT5tbWlvX2Jhc2U7Cj4gICNkZWZpbmUgQ1NfR1BSKHgpIEdFTjhfUklO
R19DU19HUFIoYmFzZSwgeCkKPiAgICAgICAgIHUzMiAqYmF0Y2gsICp0czAsICpjcywgKmp1bXA7
Cj4gQEAgLTM0NjcsOCArMzQ2Niw4IEBAIGk5MTVfcGVyZl9vcGVuX2lvY3RsX2xvY2tlZChzdHJ1
Y3QgaTkxNV9wZXJmICpwZXJmLAo+ICAKPiAgc3RhdGljIHU2NCBvYV9leHBvbmVudF90b19ucyhz
dHJ1Y3QgaTkxNV9wZXJmICpwZXJmLCBpbnQgZXhwb25lbnQpCj4gIHsKPiAtICAgICAgIHJldHVy
biBkaXY2NF91NjQoMTAwMDAwMDAwMFVMTCAqICgyVUxMIDw8IGV4cG9uZW50KSwKPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgMTAwMFVMTCAqIFJVTlRJTUVfSU5GTyhwZXJmLT5pOTE1KS0+Y3Nf
dGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopOwo+ICsgICAgICAgcmV0dXJuIGRpdl91NjQoMTAwMDAw
MCAqICgyVUxMIDw8IGV4cG9uZW50KSwKPiArICAgICAgICAgICAgICAgICAgICAgIFJVTlRJTUVf
SU5GTyhwZXJmLT5pOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopOwo+ICB9CgpSZXZp
ZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
