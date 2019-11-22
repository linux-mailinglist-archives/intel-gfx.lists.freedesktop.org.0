Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD1C106C38
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D756F521;
	Fri, 22 Nov 2019 10:51:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AA7F6F51F;
 Fri, 22 Nov 2019 10:50:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19298556-1500050 for multiple; Fri, 22 Nov 2019 10:50:56 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191122104307.30412-1-tvrtko.ursulin@linux.intel.com>
References: <20191122104307.30412-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157441985351.2524.12609643141969854182@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 22 Nov 2019 10:50:53 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/query: Check no buffer
 overwrite
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAxMDo0MzowNykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENoZWNrIHRoYXQgdGhl
IGVuZ2luZSBxdWVyeSBpcyBub3QgcG9sbHV0aW5nIHRoZSBidWZmZXIgcGFzdCB0aGUgc2l6ZSBp
dAo+IGluZGljYXRlZCBpdCB3b3VsZCB3cml0ZS4KClRydWUgYW5kIGRlZmluaXRlbHkgdXNlZnVs
IHRvIGNoZWNrLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICB0ZXN0cy9pOTE1L2k5MTVfcXVlcnkuYyB8IDE3ICsr
KysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvaTkxNV9xdWVyeS5jIGIvdGVz
dHMvaTkxNS9pOTE1X3F1ZXJ5LmMKPiBpbmRleCBlY2JlYzNhZTE0MWQuLjkyZGQ4ZjQ4YTVkMCAx
MDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2k5MTVfcXVlcnkuYwo+ICsrKyBiL3Rlc3RzL2k5MTUv
aTkxNV9xdWVyeS5jCj4gQEAgLTQ5Niw3ICs0OTYsOCBAQCBzdGF0aWMgdm9pZCBlbmdpbmVzX2lu
dmFsaWQoaW50IGZkKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfZW5naW5l
X2luZm8gKmVuZ2luZXM7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSBpdGVt
Owo+IC0gICAgICAgdW5zaWduZWQgaW50IGxlbjsKPiArICAgICAgIHVuc2lnbmVkIGludCBpLCBs
ZW47Cj4gKyAgICAgICBjaGFyICpidWY7Cj4gIAo+ICAgICAgICAgLyogRmxhZ3MgaXMgTUJaLiAq
Lwo+ICAgICAgICAgbWVtc2V0KCZpdGVtLCAwLCBzaXplb2YoaXRlbSkpOwo+IEBAIC01NzQsNiAr
NTc1LDIwIEBAIHN0YXRpYyB2b2lkIGVuZ2luZXNfaW52YWxpZChpbnQgZmQpCj4gICAgICAgICAg
ICAgICAgICAgICAgICAtMSwgMCk7Cj4gICAgICAgICBpZ3RfYXNzZXJ0KGVuZ2luZXMgIT0gTUFQ
X0ZBSUxFRCk7Cj4gIAo+ICsgICAgICAgLyogQ2hlY2sgbm8gd3JpdGUgcGFzdCBsZW4uICovCj4g
KyAgICAgICBtZW1zZXQoZW5naW5lcywgMCwgNDA5Nik7Cj4gKyAgICAgICBtZW1zZXQoJml0ZW0s
IDAsIHNpemVvZihpdGVtKSk7Cj4gKyAgICAgICBpdGVtLnF1ZXJ5X2lkID0gRFJNX0k5MTVfUVVF
UllfRU5HSU5FX0lORk87Cj4gKyAgICAgICBpdGVtLmxlbmd0aCA9IGxlbjsKPiArICAgICAgIGl0
ZW0uZGF0YV9wdHIgPSB0b191c2VyX3BvaW50ZXIoZW5naW5lcyk7Cj4gKyAgICAgICBpOTE1X3F1
ZXJ5X2l0ZW1zKGZkLCAmaXRlbSwgMSk7Cj4gKyAgICAgICBpZ3RfYXNzZXJ0X2VxKGl0ZW0ubGVu
Z3RoLCBsZW4pOwo+ICsgICAgICAgYnVmID0gKGNoYXIgKillbmdpbmVzOwo+ICsgICAgICAgYnVm
ICs9IGxlbjsKPiArICAgICAgIGZvciAoaSA9IDA7IGkgPCA0MDk2IC0gbGVuOyBpKyssIGJ1Zisr
KQo+ICsgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0X2YoKmJ1ZiA9PSAwLCAiR2FyYmFnZSAldSBi
eXRlcyBhZnRlciBidWZmZXIhICgleClcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBpLCAqYnVmKTsKCkkgd291bGQgc3VnZ2VzdCBzb21lIG5vbi16ZXJvIHZhbHVlLCBtYXliZSBl
dmVuIHJhbmRvbSwgYXMgemVyby1leHRlbmQKaXMgYSBjb250ZW5kZXIgZm9yIGEgbGlrZWx5IGtl
cm5lbCBidWcuCgpPdGhlcndpc2UsClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
