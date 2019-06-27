Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A1A5811F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84AF06E0CE;
	Thu, 27 Jun 2019 11:05:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75C216E0CD;
 Thu, 27 Jun 2019 11:05:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17042570-1500050 for multiple; Thu, 27 Jun 2019 12:05:41 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <64046d00-7562-1731-1d2f-8f89183696d8@linux.intel.com>
References: <20190627102019.9019-1-tvrtko.ursulin@linux.intel.com>
 <156163172754.20851.9496452054329054119@skylake-alporthouse-com>
 <64046d00-7562-1731-1d2f-8f89183696d8@linux.intel.com>
Message-ID: <156163353778.8887.14218573940881096379@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 12:05:37 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_switch: Update
 with engine discovery
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0yNyAxMTo1NTo1NikKPiAKPiBPbiAyNy8w
Ni8yMDE5IDExOjM1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA2LTI3IDExOjIwOjE5KQo+ID4+IEBAIC0xMjUsMTMgKzEyOCwxNCBAQCBzdGF0
aWMgdm9pZCBzaW5nbGUoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsCj4gPj4gICAgICAgICAgc2hh
cmVkID0gbW1hcChOVUxMLCA0MDk2LCBQUk9UX1dSSVRFLCBNQVBfU0hBUkVEIHwgTUFQX0FOT04s
IC0xLCAwKTsKPiA+PiAgICAgICAgICBpZ3RfYXNzZXJ0KHNoYXJlZCAhPSBNQVBfRkFJTEVEKTsK
PiA+PiAgIAo+ID4+IC0gICAgICAgZ2VtX3JlcXVpcmVfcmluZyhmZCwgZS0+ZXhlY19pZCB8IGUt
PmZsYWdzKTsKPiA+PiAtCj4gPj4gICAgICAgICAgZm9yIChuID0gMDsgbiA8IDY0OyBuKyspIHsK
PiA+PiAgICAgICAgICAgICAgICAgIGlmIChmbGFncyAmIFFVRVVFKQo+ID4+ICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb250ZXh0c1tuXSA9IGdlbV9xdWV1ZV9jcmVhdGUoZmQpOwo+ID4+ICAg
ICAgICAgICAgICAgICAgZWxzZQo+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0
c1tuXSA9IGdlbV9jb250ZXh0X2NyZWF0ZShmZCk7Cj4gPj4gKwo+ID4+ICsgICAgICAgICAgICAg
ICBpZiAoZ2VtX2NvbnRleHRfaGFzX2VuZ2luZV9tYXAoZmQsIDApKQo+ID4+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGdlbV9jb250ZXh0X3NldF9hbGxfZW5naW5lcyhmZCwgY29udGV4dHNbbl0p
Owo+ID4gCj4gPiBUaGF0IHdhcyBhIG1vbWVudCBvZiBkb3VidCBvbiBob3cgd2VsbCBzZXR0aW5n
IGVuZ2luZXMgb24gYSAicXVldWUiCj4gPiB3b3JrZWQgOikKPiAKPiBXaHkgaXQgd291bGRuJ3Qg
d29yaz8KCkJlY2F1c2UgSSBleHBlY3RlZCB0byBoYXZlIG1hZGUgYSBtaXN0YWtlIDopCgo+ID4g
T2ssIHRoYXQgbG9va3MgbGlrZSB3aGF0IEkgd291bGQgZXhwZWN0LiBGb3IgY3J1eCB0ZXN0cywg
d2UgaXRlcmF0ZSBvdmVyCj4gPiBib3RoIHRoZSBsZWdhY3kgcmluZyBzZWxlY3RvciwgYW5kIGFs
b25nIHRoZSBlbmdpbmVbXSBpbmRpY2VzLgo+ID4gCj4gPj4gLSAgICAgICBpZ3Rfc3VidGVzdCgi
YmFzaWMtYWxsLWxpZ2h0IikKPiA+PiArICAgICAgIGlndF9zdWJ0ZXN0KCJhbGwtbGlnaHQiKQo+
ID4+ICAgICAgICAgICAgICAgICAgYWxsKGZkLCBsaWdodCwgMCwgNSk7Cj4gPj4gLSAgICAgICBp
Z3Rfc3VidGVzdCgiYmFzaWMtYWxsLWhlYXZ5IikKPiA+PiArICAgICAgIGlndF9zdWJ0ZXN0KCJh
bGwtaGVhdnkiKQo+ID4+ICAgICAgICAgICAgICAgICAgYWxsKGZkLCBoZWF2eSwgMCwgNSk7Cj4g
PiAKPiA+IEFuZCBmb3IgImFsbCIgdGVzdHMgd2hlcmUgd2UgYXJlIGp1c3QgdHJ5aW5nIHRvIHV0
aWxpc2UgYWxsIGVuZ2luZXMgYXQKPiA+IG9uY2UsIHdlIG9ubHkgY2FyZSBhYm91dCB0aGUgdW5k
ZXJseWluZyBIVyB1dGlsaXNhdGlvbiBhbmQgc28gdGhlIG5ldwo+ID4gcXVlcnkgaW50ZXJmYWNl
IHdvcmtzIGJlc3QuCj4gCj4gQ29vbCwgc28gbm8gY29tcGxhaW50cz8KClN0cmF0ZWd5IHdvcmtz
IGZvciBtZS4gV2UgY2FuIGFyZ3VlIGFib3V0IHdoaWNoIHRlc3RzIG5lZWQgYm90aCBhbmQKaG9w
ZWZ1bGx5IGNvbWUgdXAgd2l0aCBhIG1pbmltdW0gc2V0IHRoYXQgZ2l2ZXMgZ29vZCBjb3ZlcmFn
ZSBvZiBhY3RpdmUKbGVnYWN5IEFCSS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
