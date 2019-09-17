Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48062B4D1D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 13:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B7E66EBDF;
	Tue, 17 Sep 2019 11:43:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EC546EBDF
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 11:43:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18518528-1500050 for multiple; Tue, 17 Sep 2019 12:42:57 +0100
MIME-Version: 1.0
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <867bbbc9-6c5f-7f34-2eb6-51874f28016c@linux.intel.com>
References: <20190917112348.31500-1-chris@chris-wilson.co.uk>
 <867bbbc9-6c5f-7f34-2eb6-51874f28016c@linux.intel.com>
Message-ID: <156872057515.5729.2882450614922920490@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 12:42:55 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Run forked mmap
 tests on tgl
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

UXVvdGluZyBNYXJ0aW4gUGVyZXMgKDIwMTktMDktMTcgMTI6Mzc6MjUpCj4gCj4gCj4gT24gMTcv
MDkvMjAxOSAxNDoyMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gVGlnZXJsYWtlIGRvZXMgbm90
IHNlZW0gdG8gYmUgc3VmZmVyaW5nIGZyb20gdGhlIHNhbWUgZmF1bHQgYXMgSWNlbGFrZQo+ID4g
ZGlkLCBzbyBsZXQgdGhlIHRlc3RzIHJ1biBhcyB0aGV5IHNob3VsZCBjb21wbGV0ZSB3aXRoaW4g
dGhlIHRpbWVvdXQuCj4gPiAKPiA+IEVhcmx5IHRnbCByZXN1bHRzOgo+ID4gCj4gPiBiYXNpYy1z
bWFsbC1jb3B5OiBTVUNDRVNTICgxLDY3MXMpCj4gPiBmb3JrZWQtYmFzaWMtc21hbGwtY29weTog
U1VDQ0VTUyAoMzcsNTY4cykKPiA+IAo+ID4gbWVkaXVtLWNvcHk6IFNVQ0NFU1MgKDMsMzA3cykK
PiA+IGZvcmtlZC1tZWRpdW0tY29weTogU1VDQ0VTUyAoNzYsNjE0cykKPiA+IGZvcmtlZC1tZWRp
dW0tY29weS1YWTogU1VDQ0VTUyAoMjAzLDI1MXMpCj4gPiBmb3JrZWQtbWVkaXVtLWNvcHktb2Rk
OiBTVUNDRVNTICgyMDQsMjY1cykKPiAKPiBUaGFua3MgZm9yIGNoZWNraW5nIHRoaXMgb3V0IQo+
IAo+IDMgbWludXRlcyBmb3IgYSBzdWJ0ZXN0IGlzIHN0aWxsIGFuIGV0ZXJuaXR5Li4uIEhvdyBt
dWNoIGxvc3QgY292ZXJhZ2UKPiB3b3VsZCBpdCBiZSBpZiB3ZSBkaWQgbm90IGV4ZWN1dGUgdGhl
IG5vbi1zbWFsbCBmb3JrZWQgdGVzdD8KClRoZSBvdGhlcnMgY2hlY2sgb3V0IHRoZSBwYXJ0aWFs
IGZlbmNpbmcsIHdoaWNoIGluIHRoZW9yeSBpcyBjaGVja2VkCmV4dGVuc2l2ZWx5IGluIHRoZSBz
ZWxmdGVzdHMgKGxpdmVfbW1hbikuIEl0IHNob3VsZG4ndCBiZSBhbiBpc3N1ZSwgYnV0Cml0IHdh
cyB0aGUgZm9ya2VkLW1lZGl1bS1jb3B5IHRoYXQgaGl0IHRoZSB0aW1lb3V0IGFuZCBzbyB3YXJu
ZWQgdXMKYWJvdXQgaWNsLiB+b34KCiogc3RhcnRzIHBsYXlpbmcgb24gaGlzIHRpbnkgZmlkZGxl
IHRvIHRoZSB0dW5lIG9mIEV6QmVuY2gKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
