Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F97D25C21C
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 16:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBB536E02C;
	Thu,  3 Sep 2020 14:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47F586E02C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Sep 2020 14:01:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22323675-1500050 for multiple; Thu, 03 Sep 2020 15:01:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200903133144.740-1-mika.kuoppala@linux.intel.com>
References: <20200903133144.740-1-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 03 Sep 2020 15:01:54 +0100
Message-ID: <159914171489.16735.10329798270889946153@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Unlock the shared hwsp_gtt object
 after pinning
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
Cc: Thomas Hellström <thomas.hellstrom@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDIwLTA5LTAzIDE0OjMxOjQ0KQo+IEZyb206IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KPiAKPiBUaGUgaHdzcF9n
dHQgb2JqZWN0IGlzIHVzZWQgZm9yIHN1Yi1hbGxvY2F0aW9uIGFuZCBjb3VsZCB0aGVyZWZvcmUK
PiBiZSBzaGFyZWQgYnkgbWFueSBjb250ZXh0cyBjYXVzaW5nIHVubmVjZXNzYXJ5IGNvbnRlbnRp
b24gZHVyaW5nCj4gY29uY3VycmVudCBjb250ZXh0IHBpbm5pbmcuCj4gSG93ZXZlciBzaW5jZSB3
ZSdyZSBjdXJyZW50bHkgbG9ja2luZyBpdCBvbmx5IGZvciBwaW5uaW5nLCBpdCByZW1haW5zCj4g
cmVzaWRlbnQgdW50aWwgd2UgdW5waW4gaXQsIGFuZCB0aGVyZWZvcmUgaXQncyBzYWZlIHRvIGRy
b3AgdGhlCj4gbG9jayBlYXJseSwgYWxsb3dpbmcgZm9yIGNvbmN1cnJlbnQgdGhyZWFkIGFjY2Vz
cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYyB8IDcgKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+IGluZGV4IDYxYjA1Y2Q0YzQ3
YS4uNjVlOTU2YmExOWUxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2NvbnRleHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRl
eHQuYwo+IEBAIC0yNzEsNiArMjcxLDEzIEBAIGludCBfX2ludGVsX2NvbnRleHRfZG9fcGluX3d3
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAgICAgICAgIGk5MTVfYWN0aXZlX3JlbGVhc2Uo
JmNlLT5hY3RpdmUpOwo+ICBlcnJfY3R4X3VucGluOgo+ICAgICAgICAgaW50ZWxfY29udGV4dF9w
b3N0X3VucGluKGNlKTsKPiArCj4gKyAgICAgICAvKgo+ICsgICAgICAgICogVW5sb2NrIHRoZSBo
d3NwX2dndHQgb2JqZWN0IHNpbmNlIGl0J3Mgc2hhcmVkLiBUaGlzIGlzIGZpbmUgZm9yIG5vdwo+
ICsgICAgICAgICogc2luY2UgdGhlIGxvY2sgaGFzIGJlZW4gdXNlZCBmb3IgcGlubmluZyBvbmx5
LCBub3QgZmVuY2luZy4KPiArICAgICAgICAqLwo+ICsgICAgICAgaTkxNV9nZW1fd3dfdW5sb2Nr
X3NpbmdsZShjZS0+dGltZWxpbmUtPmh3c3BfZ2d0dC0+b2JqKTsKClRoZSB0aW1lbGluZSBpcyBu
b3Qgc3BlY2lhbCBoZXJlLCB0aGUgc2FtZSBydWxlcyBmb3IgbG9ja2luZy91bmxvY2sgY2FuCmVx
dWFsbHkgYmUgYXBwbGllZCB0byBhbGwgdGhlIGdsb2JhbCBzdGF0ZS4gWW91IG1heSBldmVuIGdv
IGFzIGZhciBhcwpwdXR0aW5nIGEgbG9jYWwgYWNxdWlyZSBjb250ZXh0IGhlcmUsIHdoaWNoIHdv
dWxkIHRoZW4gaGF2ZSBhdm9pZGVkIHRoZQpjcm9zcyBkcml2ZXIgcG9sbHV0aW9uLgoKQW55d2F5
LCBpZiBpdCB3b3JrcyBmb3IgdGhlIHRpbWVsaW5lLCB0aGVyZSBpcyBubyByZWFzb24gdG8ga2Vl
cCB0aGUKb3RoZXIgZ2xvYmFscyBsb2NrZWQuIFRoZXkgYXJlIHBpbm5lZCBhbmQgb24gY29tcGxl
dGVseSBkaWZmZXJlbnQgdXNhZ2UKY3ljbGVzIHRvIHRoZSB1c2VyIG9iamVjdHMuIFtUaGV5IGNh
bid0IGJlIGV2aWN0ZWQgd2l0aG91dCBpbnRlcmFjdGluZwp3aXRoIHRoZSBIVyB0byBlbnN1cmUg
dGhlIGNvbnRleHQgaGFzIGJlZW4gZmx1c2hlZCwgc28gZmFyIHRoZXJlIGhhcwpiZWVuIG5vIHdh
eSB0byBkbyBzbyB3aXRob3V0IHN0YWxsaW5nIGZvciBhIGZyZXNobHkgc3VibWl0dGVkIHJlcXVl
c3QsCmhlbmNlIHdlIGxldCB0aGVtIHJldGlyZSBncmFjZWZ1bGx5IGFuZCBraWNrIHRoZSBrZXJu
ZWwgdGltZWxpbmVzIHRvCmZsdXNoIGNvbXBsZXRlZCBjb250ZXh0cy5dCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
