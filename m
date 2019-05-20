Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819752315E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E907F88A36;
	Mon, 20 May 2019 10:31:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C4388A36
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 10:31:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16613343-1500050 for multiple; Mon, 20 May 2019 11:30:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190520101816.20016-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190520101816.20016-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <155834824798.6928.8947545360163356953@skylake-alporthouse-com>
Date: Mon, 20 May 2019 11:30:48 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/selftests: Verify context
 workarounds
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMCAxMToxODoxNSkKPiBAQCAtMTM1Miwx
MSArMTM1NywxMSBAQCBzdGF0aWMgaW50IGVuZ2luZV93YV9saXN0X3ZlcmlmeShzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAgICAgICBpZiAoIXdhbC0+Y291bnQpCj4gICAgICAg
ICAgICAgICAgIHJldHVybiAwOwo+ICAKPiAtICAgICAgIHZtYSA9IGNyZWF0ZV9zY3JhdGNoKCZl
bmdpbmUtPmk5MTUtPmdndHQudm0sIHdhbC0+Y291bnQpOwo+ICsgICAgICAgdm1hID0gY3JlYXRl
X3NjcmF0Y2goJmNlLT5nZW1fY29udGV4dC0+aTkxNS0+Z2d0dC52bSwgd2FsLT5jb3VudCk7CgpV
c2UgY2UtPmVuZ2luZS0+aTkxNS0+Z2d0dC52bSB0byBzYXZlIG1lIGEgaGVhZGFjaGUgbGF0ZXIu
Cgo+ICAgICAgICAgaWYgKElTX0VSUih2bWEpKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gUFRS
X0VSUih2bWEpOwo+ICAKPiAtICAgICAgIHJxID0gaTkxNV9yZXF1ZXN0X2NyZWF0ZShlbmdpbmUt
Pmtlcm5lbF9jb250ZXh0KTsKPiArICAgICAgIHJxID0gaW50ZWxfY29udGV4dF9jcmVhdGVfcmVx
dWVzdChjZSk7Cj4gICAgICAgICBpZiAoSVNfRVJSKHJxKSkgewo+ICAgICAgICAgICAgICAgICBl
cnIgPSBQVFJfRVJSKHJxKTsKPiAgICAgICAgICAgICAgICAgZ290byBlcnJfdm1hOwoKPiBAQCAt
MTAwMywyOCArMTAxMCwzNiBAQCBzdGF0aWMgaW50IGxpdmVfaXNvbGF0ZWRfd2hpdGVsaXN0KHZv
aWQgKmFyZykKPiAgICAgICAgIHJldHVybiBlcnI7Cj4gIH0KPiAgCj4gLXN0YXRpYyBib29sIHZl
cmlmeV9ndF9lbmdpbmVfd2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgd2FfbGlzdHMgKmxpc3RzLCBjb25zdCBj
aGFyICpzdHIpCj4gK3N0YXRpYyBib29sCj4gK3ZlcmlmeV93YV9saXN0cyhzdHJ1Y3QgaTkxNV9n
ZW1fY29udGV4dCAqY3R4LCBzdHJ1Y3Qgd2FfbGlzdHMgKmxpc3RzLAo+ICsgICAgICAgICAgICAg
ICBjb25zdCBjaGFyICpzdHIpCj4gIHsKPiAtICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
KmVuZ2luZTsKPiAtICAgICAgIGVudW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+ICsgICAgICAgc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBjdHgtPmk5MTU7Cj4gKyAgICAgICBzdHJ1Y3Qg
aTkxNV9nZW1fZW5naW5lc19pdGVyIGl0Owo+ICsgICAgICAgc3RydWN0IGludGVsX2NvbnRleHQg
KmNlOwo+ICAgICAgICAgYm9vbCBvayA9IHRydWU7Cj4gIAo+ICAgICAgICAgb2sgJj0gd2FfbGlz
dF92ZXJpZnkoJmk5MTUtPnVuY29yZSwgJmxpc3RzLT5ndF93YV9saXN0LCBzdHIpOwo+ICAKPiAt
ICAgICAgIGZvcl9lYWNoX2VuZ2luZShlbmdpbmUsIGk5MTUsIGlkKSB7Cj4gLSAgICAgICAgICAg
ICAgIG9rICY9IGVuZ2luZV93YV9saXN0X3ZlcmlmeShlbmdpbmUsCj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmbGlzdHMtPmVuZ2luZVtpZF0ud2FfbGlzdCwK
PiArICAgICAgIGZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIGk5MTVfZ2VtX2NvbnRleHRfbG9ja19l
bmdpbmVzKGN0eCksIGl0KSB7CgpBbmQgZm9yIG15IHBpZWNlIG9mIG1pbmQsCglHRU1fQlVHX09O
KGl0LmlkeCAhPSBjZS0+ZW5naW5lLT5pZCkKYXMgSSBhbHJlYWR5IGZvcmdvdCB0aGUgcmVsYXRp
b25zaGlwIGZvciB0aGUgZGVmYXVsdCBlbmdpbmUgbWFwLgoKPiArICAgICAgICAgICAgICAgb2sg
Jj0gZW5naW5lX3dhX2xpc3RfdmVyaWZ5KGNlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgJmxpc3RzLT5lbmdpbmVbaXQuaWR4XS53YV9saXN0LAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RyKSA9PSAwOwo+ICsKPiAr
ICAgICAgICAgICAgICAgb2sgJj0gZW5naW5lX3dhX2xpc3RfdmVyaWZ5KGNlLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJmxpc3RzLT5lbmdpbmVbaXQuaWR4
XS5jdHhfd2FfbGlzdCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHN0cikgPT0gMDsKPiAgICAgICAgIH0KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
