Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 581751009E0
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 18:03:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0428947A;
	Mon, 18 Nov 2019 17:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F908947A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 17:03:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19245168-1500050 for multiple; Mon, 18 Nov 2019 17:02:58 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191118162342.2452211-1-chris@chris-wilson.co.uk>
References: <20191118162342.2452211-1-chris@chris-wilson.co.uk>
Message-ID: <157409657644.24372.8777392982234269794@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 18 Nov 2019 17:02:56 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Unlock engine-pm after queuing
 the kernel context switch
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTggMTY6MjM6NDIpCj4gSW4gY29tbWl0IGE3
OWNhNjU2YjY0OCAoImRybS9pOTE1OiBQdXNoIHRoZSB3YWtlcmVmLT5jb3VudCBkZWZlcnJhbCB0
bwo+IHRoZSBiYWNrZW5kIiksIEkgZXJyb25lb3VzbHkgY29uY2x1ZGVkIHRoYXQgd2UgbGFzdCBt
b2RpZnkgdGhlIGVuZ2luZQo+IGluc2lkZSBfX2k5MTVfcmVxdWVzdF9jb21taXQoKSBtZWFuaW5n
IHRoYXQgd2UgY291bGQgZW5hYmxlIGNvbmN1cnJlbnQKPiBzdWJtaXNzaW9uIGZvciB1c2Vyc3Bh
Y2UgYXMgd2UgZW5xdWV1ZWQgdGhpcyByZXF1ZXN0LiBIb3dldmVyLCB0aGlzCj4gZmFsbHMgaW50
byBhIHRyYXAgd2l0aCBvdGhlciB1c2VycyBvZiB0aGUgZW5naW5lLT5rZXJuZWxfY29udGV4dCB3
YWtpbmcKPiB1cCBhbmQgc3VibWl0dGluZyB0aGVpciByZXF1ZXN0IGJlZm9yZSB0aGUgaWRsZS1z
d2l0Y2ggaXMgcXVldWVkLCB3aXRoCj4gdGhlIHJlc3VsdCB0aGF0IHRoZSBrZXJuZWxfY29udGV4
dCBpcyBleGVjdXRlZCBvdXQtb2Ytc2VxdWVuY2UgbW9zdAo+IGxpa2VseSB1cHNldHRpbmcgdGhl
IEdQVSBhbmQgY2VydGFpbmx5IG91cnNlbHZlcyB3aGVuIHdlIHRyeSB0byByZXRpcmUKPiB0aGUg
b3V0LW9mLXNlcXVlbmNlIHJlcXVlc3RzLgo+IAo+IEFzIHN1Y2ggd2UgbmVlZCB0byBob2xkIG9u
dG8gdGhlIGVmZmVjdGl2ZSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0IG11dGV4Cj4gbG9jayAodmlh
IHRoZSBlbmdpbmUgcG0gbXV0ZXggcHJveHkpIHVudGlsIHdlIGhhdmUgZmluaXNoIHF1ZXVpbmcg
dGhlCj4gcmVxdWVzdCB0byB0aGUgZW5naW5lLgo+IAo+IEZpeGVzOiBhNzljYTY1NmI2NDggKCJk
cm0vaTkxNTogUHVzaCB0aGUgd2FrZXJlZi0+Y291bnQgZGVmZXJyYWwgdG8gdGhlIGJhY2tlbmQi
KQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgfCA1ICsrKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMKPiBpbmRleCAzYzBmNDkwZmYyYzcuLjJk
MmEyMTc1MmFlNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfcG0uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9w
bS5jCj4gQEAgLTExNiwxMSArMTE2LDEyIEBAIHN0YXRpYyBib29sIHN3aXRjaF90b19rZXJuZWxf
Y29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAgICAgICBycS0+c2No
ZWQuYXR0ci5wcmlvcml0eSA9IEk5MTVfUFJJT1JJVFlfQkFSUklFUjsKPiAgICAgICAgIF9faTkx
NV9yZXF1ZXN0X2NvbW1pdChycSk7Cj4gIAo+IC0gICAgICAgLyogUmVsZWFzZSBvdXIgZXhjbHVz
aXZlIGhvbGQgb24gdGhlIGVuZ2luZSAqLwo+IC0gICAgICAgX19pbnRlbF93YWtlcmVmX2RlZmVy
X3BhcmsoJmVuZ2luZS0+d2FrZXJlZik7Cj4gICAgICAgICBfX2k5MTVfcmVxdWVzdF9xdWV1ZShy
cSwgTlVMTCk7Cj4gIAo+ICsgICAgICAgLyogUmVsZWFzZSBvdXIgZXhjbHVzaXZlIGhvbGQgb24g
dGhlIGVuZ2luZSAqLwo+ICsgICAgICAgX19pbnRlbF93YWtlcmVmX2RlZmVyX3BhcmsoJmVuZ2lu
ZS0+d2FrZXJlZik7Cj4gICAgICAgICByZXN1bHQgPSBmYWxzZTsKCkdhaCwgbm93IEkgcmVtZW1i
ZXIgd2h5IEkgcHV0IGl0IGJlZm9yZToKCmlmIHRoZXJlIGlzIGEgY29uY3VycmVudCByZXRpcmUg
cmVxdWVzdHMsIGl0IG1heSBub3cgc2VlIHRoZSByZXF1ZXN0CmNvbXBsZXRpb24gcHJpb3IgdG8g
dXMgbWFya2luZyB0aGUgZW5naW5lIGFzIGF3YWtlID0+IGNvdW50ZXIgdW5kZXJmbG93LgoKV2F0
Y2ggdGhpcyBzcGFjZSBmb3IgbW9yZSB0cmlja3MgOigKLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
