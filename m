Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E51A25C090
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 13:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B1E6E9D2;
	Thu,  3 Sep 2020 11:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003976E9DA
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 11:49:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22322140-1500050 for multiple; Thu, 03 Sep 2020 12:32:46 +0100
MIME-Version: 1.0
In-Reply-To: <ca140ae5-96be-e72c-662d-64a0d8ad9689@shipmail.org>
References: <20200826132811.17577-1-chris@chris-wilson.co.uk>
 <20200826132811.17577-35-chris@chris-wilson.co.uk>
 <b2ebd7c1-733f-04aa-78cd-f05e5ff5438a@shipmail.org>
 <ca140ae5-96be-e72c-662d-64a0d8ad9689@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Thomas Hellström (Intel) <thomas_os@shipmail.org>, intel-gfx@lists.freedesktop.org
Date: Thu, 03 Sep 2020 12:32:44 +0100
Message-ID: <159913276436.16735.6772809621876628533@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 35/39] drm/i915: Encode fence specific
 waitqueue behaviour into the wait.flags
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

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA5LTAzIDEwOjUwOjQ1KQo+
IAo+IE9uIDkvMi8yMCA0OjAyIFBNLCBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpIHdyb3RlOgo+
ID4gSGksIENocmlzLAo+ID4KPiA+IE9uIDgvMjYvMjAgMzoyOCBQTSwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID4+IFVzZSB0aGUgd2FpdF9xdWV1ZV9lbnRyeS5mbGFncyB0byBkZW5vdGUgdGhlIHNw
ZWNpYWwgZmVuY2UgYmVoYXZpb3VyCj4gPj4gKGZsYXR0ZW5pbmcgY29udGludWF0aW9ucyBhbG9u
ZyBmZW5jZSBjaGFpbnMsIGFuZCBmb3IgcHJvcGFnYXRpbmcKPiA+PiBlcnJvcnMpIHJhdGhlciB0
aGFuIHRyeWluZyB0byBkZXRlY3Qgb3JkaW5hcnkgd2FpdGVycyBieSB0aGVpcgo+ID4+IGZ1bmN0
aW9ucy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgo+ID4+IC0tLQo+ID4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3dfZmVuY2UuYyB8IDI1ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0KPiA+PiDCoCAxIGZpbGUg
Y2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jIAo+ID4+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5jZS5jCj4gPj4gaW5kZXggNGNkMjAzOGNiZTM1
Li40ZTU1N2QxYzQ2NDQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9zd19mZW5jZS5jCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zd19mZW5j
ZS5jCj4gPj4gQEAgLTE4LDEwICsxOCwxNSBAQAo+ID4+IMKgICNkZWZpbmUgSTkxNV9TV19GRU5D
RV9CVUdfT04oZXhwcikgQlVJTERfQlVHX09OX0lOVkFMSUQoZXhwcikKPiA+PiDCoCAjZW5kaWYK
PiA+PiDCoCAtI2RlZmluZSBJOTE1X1NXX0ZFTkNFX0ZMQUdfQUxMT0MgQklUKDMpIC8qIGFmdGVy
IFdRX0ZMQUdfKiBmb3IgCj4gPj4gc2FmZXR5ICovCj4gPj4gLQo+ID4+IMKgIHN0YXRpYyBERUZJ
TkVfU1BJTkxPQ0soaTkxNV9zd19mZW5jZV9sb2NrKTsKPiA+PiDCoCArI2RlZmluZSBXUV9GTEFH
X0JJVFMgXAo+ID4+ICvCoMKgwqAgQklUU19QRVJfVFlQRSh0eXBlb2ZfbWVtYmVyKHN0cnVjdCB3
YWl0X3F1ZXVlX2VudHJ5LCBmbGFncykpCj4gPj4gKwo+ID4+ICsvKiBhZnRlciBXUV9GTEFHXyog
Zm9yIHNhZmV0eSAqLwo+ID4+ICsjZGVmaW5lIEk5MTVfU1dfRkVOQ0VfRkxBR19GRU5DRSBCSVQo
V1FfRkxBR19CSVRTIC0gMSkKPiA+PiArI2RlZmluZSBJOTE1X1NXX0ZFTkNFX0ZMQUdfQUxMT0Mg
QklUKFdRX0ZMQUdfQklUUyAtIDIpCj4gPgo+ID4gTm90IHN1cmUgaWYgc2hhcmluZyB0aGUgZmxh
Z3MgZmllbGQgd2l0aCB0aGUgd2FpdC5jIGltcGxlbWVudGF0aW9uIGlzIAo+ID4gZnVsbHkgT0sg
ZWl0aGVyLiBJcyB0aGUgQGtleSBwYXJhbWV0ZXIgdG8gdGhlIHdha2UgZnVuY3Rpb24gdXNlYWJs
ZT8gSSAKPiA+IG1lYW4gcmF0aGVyIHRoYW4gcGFzc2luZyBqdXN0IGEgbGlzdCBoZWFkIGNvdWxk
IHdlIHBhc3Mgc29tZXRoaW5nIGxpa2UKPiA+Cj4gPiBzdHJ1Y3QgaTkxNV9zd19mZW5jZV9rZXkg
ewo+ID4gwqDCoMKgIGJvb2wgbm9fcmVjdXJzaW9uOyAvKiBNYWtlcyB0aGUgd2FpdCBmdW5jdGlv
biBqdXN0IHB1dCBpdHMgZW50cnkgCj4gPiBvbiBAY29udGludWF0aW9uIGFuZCByZXR1cm4gKi8K
PiA+IMKgwqDCoCBpbnQgZXJyb3I7Cj4gPiDCoMKgwqAgc3RydWN0IGxpc3RfaGVhZCBjb250aW51
YXRpb247Cj4gPiB9CgpUaGF0IHdvdWxkIG1lYW4gd2FpdF9ldmVudC1lc3F1ZSByb3V0aW5lcyBk
byBub3Qgd29yayBvbiBhIGZlbmNlLgoKPiBpbnRlcm5hbCB3YWtlIGZ1bmN0aW9uIGluc3RlYWQg
b2YgdGhlIGF1dG9yZW1vdmVfd2FrZV9mdW5jdGlvbiByZW1vdmUgCj4gdGhlIGZyYWdpbGl0eS4g
V291bGQgdGhhdCBiZSBwb3NzaWJsZT8KCmF1dG9yZW1vdmUgaXMgdGhlIGZ1bmN0aW9uIHVzZWQg
YnkgZGlzcGxheSBmb3IgaXRzIHdhaXRfZXZlbnQgbG9vcCBvdmVyCm11bHRpcGxlIHNvdXJjZXMu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
