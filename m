Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA3D2663D
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 16:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8469899E8;
	Wed, 22 May 2019 14:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F5C78999C
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 14:47:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16642432-1500050 for multiple; Wed, 22 May 2019 15:47:33 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190520080127.18255-1-chris@chris-wilson.co.uk>
 <20190520080127.18255-25-chris@chris-wilson.co.uk>
 <87mujepnjx.fsf@gaia.fi.intel.com>
In-Reply-To: <87mujepnjx.fsf@gaia.fi.intel.com>
Message-ID: <155853645239.28319.11715647419995798146@skylake-alporthouse-com>
Date: Wed, 22 May 2019 15:47:32 +0100
Subject: Re: [Intel-gfx] [PATCH 25/33] drm/i915: Move object close under its
 own lock
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTIyIDE1OjMyOjM0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiAtc3RhdGljIHZvaWQgZnJl
ZV9lbmdpbmVzX3JjdShzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKPiA+ICtzdGF0aWMgdm9pZCBm
cmVlX2VuZ2luZXNfcmN1KHN0cnVjdCByY3VfaGVhZCAqcmN1KQo+ID4gIHsKPiA+IC0gICAgIHN0
cnVjdCBpOTE1X2dlbV9lbmdpbmVzICplID0KPiA+IC0gICAgICAgICAgICAgY29udGFpbmVyX29m
KHdyaywgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMsIHJjdS53b3JrKTsKPiA+IC0gICAgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZS0+aTkxNTsKPiA+IC0KPiA+IC0gICAgIG11dGV4
X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ID4gLSAgICAgZnJlZV9lbmdpbmVzKGUp
Owo+ID4gLSAgICAgbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiA+ICsg
ICAgIGZyZWVfZW5naW5lcyhjb250YWluZXJfb2YocmN1LCBzdHJ1Y3QgaTkxNV9nZW1fZW5naW5l
cywgcmN1KSk7Cj4gPiAgfQoKPiA+IEBAIC0xNjY2LDggKzE2NzgsNyBAQCBzZXRfZW5naW5lcyhz
dHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ID4gICAgICAgcmN1X3N3YXBfcHJvdGVjdGVk
KGN0eC0+ZW5naW5lcywgc2V0LmVuZ2luZXMsIDEpOwo+ID4gICAgICAgbXV0ZXhfdW5sb2NrKCZj
dHgtPmVuZ2luZXNfbXV0ZXgpOwo+ID4gIAo+ID4gLSAgICAgSU5JVF9SQ1VfV09SSygmc2V0LmVu
Z2luZXMtPnJjdSwgZnJlZV9lbmdpbmVzX3JjdSk7Cj4gPiAtICAgICBxdWV1ZV9yY3Vfd29yayhz
eXN0ZW1fd3EsICZzZXQuZW5naW5lcy0+cmN1KTsKPiA+ICsgICAgIGNhbGxfcmN1KCZzZXQuZW5n
aW5lcy0+cmN1LCBmcmVlX2VuZ2luZXNfcmN1KTsKPiAKPiBXaHkgY2FuIHdlIG9taXQgdGhlIHF1
ZXVlIG5vdz8KCldlIG9ubHkgcmVxdWlyZWQgdGhlIHdvcmtlciBmb3IgYWNxdWlyaW5nIHN0cnVj
dF9tdXRleC4gQWZ0ZXIgdGhlCnJlbW92YWwsIHdlIGNhbiBkbyB0aGUga3JlZl9wdXQgYW5kIGlu
dGVsX2NvbnRleHQgZGVzdHJveSBmcm9tIHNvZnRpcnEKY29udGV4dC4uLgoKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMKPiA+IGluZGV4IDVmYmVhMDg5MmYzMy4uMDAwZTFhOWI2
NzUwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV90aW1lbGluZS5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3RpbWVsaW5lLmMKPiA+IEBAIC02
MSw3ICs2MSw3IEBAIGh3c3BfYWxsb2Moc3RydWN0IGk5MTVfdGltZWxpbmUgKnRpbWVsaW5lLCB1
bnNpZ25lZCBpbnQgKmNhY2hlbGluZSkKPiA+ICAKPiA+ICAgICAgIEJVSUxEX0JVR19PTihCSVRT
X1BFUl9UWVBFKHU2NCkgKiBDQUNIRUxJTkVfQllURVMgPiBQQUdFX1NJWkUpOwo+ID4gIAo+ID4g
LSAgICAgc3Bpbl9sb2NrKCZndC0+aHdzcF9sb2NrKTsKPiA+ICsgICAgIHNwaW5fbG9ja19pcnEo
Jmd0LT5od3NwX2xvY2spOwo+IAo+IFdoeSBkbyB3ZSBuZWVkIHRoaXM/CgpCZWNhdXNlIHdlIGNh
biBub3cgcmVhY2ggb3RoZXIgaHdzcF9sb2NrIGNhbGxzaXRlcyBmcm9tIHNvZnRpcnEgY29udGV4
dC4KV2UgbWlnaHQgYmUgYWJsZSB0byBnZXQgYXdheSB3aXRoIF9iaCAtLSBJIG1heSBoYXZlIG92
ZXJyZWFjdGVkIHRvIHRoZQpsb2NrZGVwIHdhcm5pbmcuCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
