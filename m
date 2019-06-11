Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5686B3D733
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 21:52:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8004D8828C;
	Tue, 11 Jun 2019 19:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD58D8828C
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 19:52:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16868938-1500050 for multiple; Tue, 11 Jun 2019 20:52:02 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156028211967.2193.8722711225416380430@skylake-alporthouse-com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
 <20190611172731.19174-2-mika.kuoppala@linux.intel.com>
 <156028211967.2193.8722711225416380430@skylake-alporthouse-com>
Message-ID: <156028272153.2193.9506133225647562057@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Jun 2019 20:52:01 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gtt: Use a common type for
 page directories
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMTEgMjA6NDE6NTkpCj4gUXVvdGluZyBNaWth
IEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjI0KQo+ID4gIHN0cnVjdCBpOTE1X3BhZ2VfdGFi
bGUgewo+ID4gICAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RtYSBiYXNlOwo+ID4gLSAgICAgICBh
dG9taWNfdCB1c2VkX3B0ZXM7Cj4gPiArICAgICAgIGF0b21pY190IHVzZWQ7Cj4gPiAgfTsKPiA+
ICAKPiA+ICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSB7Cj4gPiAgICAgICAgIHN0cnVjdCBp
OTE1X3BhZ2VfZG1hIGJhc2U7Cj4gPiAtCj4gPiAtICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfdGFi
bGUgKnBhZ2VfdGFibGVbSTkxNV9QREVTXTsgLyogUERFcyAqLwo+ID4gLSAgICAgICBhdG9taWNf
dCB1c2VkX3BkZXM7Cj4gPiAtICAgICAgIHNwaW5sb2NrX3QgbG9jazsKPiA+IC19Owo+ID4gLQo+
ID4gLXN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5X3BvaW50ZXIgewo+ID4gLSAgICAgICBzdHJ1
Y3QgaTkxNV9wYWdlX2RtYSBiYXNlOwo+ID4gLSAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVj
dG9yeSAqKnBhZ2VfZGlyZWN0b3J5Owo+ID4gLSAgICAgICBhdG9taWNfdCB1c2VkX3BkcGVzOwo+
ID4gLSAgICAgICBzcGlubG9ja190IGxvY2s7Cj4gPiAtfTsKPiA+IC0KPiA+IC1zdHJ1Y3QgaTkx
NV9wbWw0IHsKPiA+IC0gICAgICAgc3RydWN0IGk5MTVfcGFnZV9kbWEgYmFzZTsKPiA+IC0gICAg
ICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnlfcG9pbnRlciAqcGRwc1tHRU44X1BNTDRFU19Q
RVJfUE1MNF07Cj4gPiArICAgICAgIGF0b21pY190IHVzZWQ7Cj4gPiAgICAgICAgIHNwaW5sb2Nr
X3QgbG9jazsKPiA+ICsgICAgICAgdm9pZCAqZW50cnlbMF07Cj4gPiAgfTsKPiAKPiBBbmQgYWx3
YXlzIChhbGJlaXQgd2l0aCBhIHNpbmdsZSBic3cgZGlzY3JlcGFuY3kpIDUxMi4gQXQgdGhlIHZl
cnkgbGVhc3QKPiB5b3UgY2FuIGFsaWFzIGEgZml4ZWQgc2l6ZWQgdmFyaWFudCBvdmVyIHRoZSB0
b3AgdG8gcmVtb3ZlIHRoZSBleHRyYQo+IHBvaW50ZXIgY2hhc2luZyB5b3UgYWRkZWQuCgpJIHdv
dWxkIGZsb2F0IHlvdXIgbWFrZSBic3cgYmVoYXZlIGlkZW50aWNhbGx5IHBhdGNoLiBJbiB0aGUg
Z3JhbmQKc2NoZW1lIG9mIHRoaW5ncywgbm8gb25lIHdpbGwgZXZlciBub3RpY2UgdGhhdCBic3cg
YWxvbmUgc2F2ZWQgYSBjb3VwbGUKb2YgcGFnZXMgcGVyIEdUVC4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
