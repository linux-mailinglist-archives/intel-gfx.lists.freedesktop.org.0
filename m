Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCCC162EB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 13:36:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F386E7A9;
	Tue,  7 May 2019 11:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58B336E7A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 11:36:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16475924-1500050 for multiple; Tue, 07 May 2019 12:36:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190507105557.5385-1-matthew.auld@intel.com>
In-Reply-To: <20190507105557.5385-1-matthew.auld@intel.com>
Message-ID: <155722897664.2489.8543639285352309255@skylake-alporthouse-com>
Date: Tue, 07 May 2019 12:36:16 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/gtt: grab wakeref in
 gen6_alloc_va_range
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDUtMDcgMTE6NTU6NTYpCj4gU29tZSBzdGVwcyBp
biBnZW42X2FsbG9jX3ZhX3JhbmdlIHJlcXVpcmUgdGhlIEhXIHRvIGJlIGF3YWtlLCBzbyBpZGVh
bGx5Cj4gd2Ugc2hvdWxkIGJlIGdyYWJiaW5nIHRoZSB3YWtlcmVmIG91cnNlbHZlcyBhbmQgbm90
IHJlbHlpbmcgb24gdGhlCj4gY2FsbGVyIGFscmVhZHkgaG9sZGluZyBpdCBmb3IgdXMuCj4gCj4g
U3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBT
aWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgOCArKysrKysrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRleCA4ZjVkYjc4N2I3ZjIuLmZmYjhjM2QwMTFl
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTE3NDUsMTAgKzE3
NDUsMTMgQEAgc3RhdGljIGludCBnZW42X2FsbG9jX3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtLAo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQg
PSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPiAgICAgICAgIHN0cnVjdCBp
OTE1X3BhZ2VfdGFibGUgKnB0Owo+ICsgICAgICAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4g
ICAgICAgICB1NjQgZnJvbSA9IHN0YXJ0Owo+ICAgICAgICAgdW5zaWduZWQgaW50IHBkZTsKPiAg
ICAgICAgIGJvb2wgZmx1c2ggPSBmYWxzZTsKPiAgCj4gKyAgICAgICB3YWtlcmVmID0gaW50ZWxf
cnVudGltZV9wbV9nZXQodm0tPmk5MTUpOwo+ICsKPiAgICAgICAgIGdlbjZfZm9yX2VhY2hfcGRl
KHB0LCAmcHBndHQtPmJhc2UucGQsIHN0YXJ0LCBsZW5ndGgsIHBkZSkgewo+ICAgICAgICAgICAg
ICAgICBjb25zdCB1bnNpZ25lZCBpbnQgY291bnQgPSBnZW42X3B0ZV9jb3VudChzdGFydCwgbGVu
Z3RoKTsKPiAgCj4gQEAgLTE3NzQsMTIgKzE3NzcsMTUgQEAgc3RhdGljIGludCBnZW42X2FsbG9j
X3ZhX3JhbmdlKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAo+ICAKPiAgICAgICAgIGlm
IChmbHVzaCkgewo+ICAgICAgICAgICAgICAgICBtYXJrX3RsYnNfZGlydHkoJnBwZ3R0LT5iYXNl
KTsKPiAtICAgICAgICAgICAgICAgZ2VuNl9nZ3R0X2ludmFsaWRhdGUocHBndHQtPmJhc2Uudm0u
aTkxNSk7Cj4gKyAgICAgICAgICAgICAgIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHZtLT5pOTE1KTsK
PiAgICAgICAgIH0KPiAgCj4gKyAgICAgICBpbnRlbF9ydW50aW1lX3BtX3B1dCh2bS0+aTkxNSwg
d2FrZXJlZik7Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIAo+ICB1bndpbmRfb3V0Ogo+ICsg
ICAgICAgaW50ZWxfcnVudGltZV9wbV9wdXQodm0tPmk5MTUsIHdha2VyZWYpOwo+ICAgICAgICAg
Z2VuNl9wcGd0dF9jbGVhcl9yYW5nZSh2bSwgZnJvbSwgc3RhcnQgLSBmcm9tKTsKPiAgICAgICAg
IHJldHVybiAtRU5PTUVNOwoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgoKSXQncyBhIGJpdCB0b28gZmlkZGx5IGhlcmUgdG8gdHJ5IGFuZCBkZWZl
ciBpdCB1bnRpbCB0aGUgbmV4dCB0aW1lIHRoZQpIVyBpcyBhd2FrZSAtLSBhbmQgcmVhbGx5IGlm
IHdlIGFyZSBhZGp1c3RpbmcgdGhlIGlvdmEsIHRoZW4gd2UgYXJlCmdvaW5nIHRvIGJlIHVzaW5n
IHRoZSBIVywgYW5kIG5vcm1hbGx5IHdvdWxkIGJlIHVuZGVyIGEgbG9uZ3Rlcm0gd2FrZXJlZgoo
ZS5nLiBleGVjYnVmKSBidXQgZm9yIGluLWtlcm5lbCBjbGllbnRzLCB3ZSBuZWVkIHRvIGJlIG1v
cmUgcHJlY2lzZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
