Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B223B4D95
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA686EC17;
	Tue, 17 Sep 2019 12:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146046EC17
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:13:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18518896-1500050 for multiple; Tue, 17 Sep 2019 13:13:31 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87tv9bqgbz.fsf@gaia.fi.intel.com>
References: <20190917112348.31500-1-chris@chris-wilson.co.uk>
 <87tv9bqgbz.fsf@gaia.fi.intel.com>
Message-ID: <156872240962.5729.2687476249062328872@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 13:13:29 +0100
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTE3IDEzOjA0OjMyKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaWdlcmxha2UgZG9l
cyBub3Qgc2VlbSB0byBiZSBzdWZmZXJpbmcgZnJvbSB0aGUgc2FtZSBmYXVsdCBhcyBJY2VsYWtl
Cj4gPiBkaWQsIHNvIGxldCB0aGUgdGVzdHMgcnVuIGFzIHRoZXkgc2hvdWxkIGNvbXBsZXRlIHdp
dGhpbiB0aGUgdGltZW91dC4KPiA+Cj4gPiBFYXJseSB0Z2wgcmVzdWx0czoKPiA+Cj4gPiBiYXNp
Yy1zbWFsbC1jb3B5OiBTVUNDRVNTICgxLDY3MXMpCj4gPiBmb3JrZWQtYmFzaWMtc21hbGwtY29w
eTogU1VDQ0VTUyAoMzcsNTY4cykKPiA+Cj4gPiBtZWRpdW0tY29weTogU1VDQ0VTUyAoMywzMDdz
KQo+ID4gZm9ya2VkLW1lZGl1bS1jb3B5OiBTVUNDRVNTICg3Niw2MTRzKQo+ID4gZm9ya2VkLW1l
ZGl1bS1jb3B5LVhZOiBTVUNDRVNTICgyMDMsMjUxcykKPiA+IGZvcmtlZC1tZWRpdW0tY29weS1v
ZGQ6IFNVQ0NFU1MgKDIwNCwyNjVzKQo+ID4KPiA+IE5vdCBncmVhdCwgYnV0IG5vd2hlcmUgbmVh
ciBhcyBiYWQgYXMgaWNsLAo+ID4gICAgICAgIHNpbmdsZSAgICAgIGZvcmtlZAo+ID4gZ2xrOiAg
ICAyLjE1cyAgICAgICAyLjg5cwo+ID4gaWNsOiAgICAyLjUwcyAgICAgMjgxLjA4cwo+ID4KPiA+
IFJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMDg4Mgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gPiBDYzogTWFydGluIFBlcmVzIDxtYXJ0aW4ucGVyZXNAbGludXguaW50ZWwuY29t
Pgo+ID4gLS0tCj4gPiAgdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyB8IDIgKy0KPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0
LmMKPiA+IGluZGV4IGFjNDM5Y2RmOC4uZTJjNmFkOWEwIDEwMDY0NAo+ID4gLS0tIGEvdGVzdHMv
aTkxNS9nZW1fbW1hcF9ndHQuYwo+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwo+
ID4gQEAgLTc5Miw3ICs3OTIsNyBAQCB0ZXN0X2h1Z2VfY29weShpbnQgZmQsIGludCBodWdlLCBp
bnQgdGlsaW5nX2EsIGludCB0aWxpbmdfYiwgaW50IG5jcHVzKQo+ID4gICAgICAgdWludDY0X3Qg
aHVnZV9vYmplY3Rfc2l6ZSwgaTsKPiA+ICAgICAgIHVuc2lnbmVkIG1vZGUgPSBDSEVDS19SQU07
Cj4gPiAgCj4gPiAtICAgICBpZ3RfZmFpbF9vbl9mKGludGVsX2dlbihkZXZpZCkgPj0gMTEgJiYg
bmNwdXMgPiAxLAo+ID4gKyAgICAgaWd0X2ZhaWxfb25fZihpbnRlbF9nZW4oZGV2aWQpID09IDEx
ICYmIG5jcHVzID4gMSwKPiA+ICAgICAgICAgICAgICAgICAgICAgIlBsZWFzZSBhZGp1c3QgeW91
ciBleHBlY3RhdGlvbnMsIGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dp
P2lkPTExMDg4MlxuIik7Cj4gCj4gSXQgc2VlbXMgdG8gYmUgc3RpbGwgZXhwb25lbnRpYWwgc28g
aG93IGFib3V0LAo+IAo+IGlmIChpbnRlbF9nZW4oZGV2aWQpID49IDExKQo+ICAgIG5jcHVzID0g
bWF4KDIsIChuY3B1cy0xKS8yKTsKPiAKPiBXb3VsZCBkcm9wIHRoZSBtZWRpdW0tb2RkIHRvIDE0
IHNlY29uZHMsIHdpdGhvdXQgaHVnZSBkZW50IGluIGNvdmVyYWdlIGFzCj4gYXMgb2RkIG51bWJl
ciBvZiBjcHVzIHdvdWxkIGJlIGJvdW5jaW5nIG9uIGl0PwoKTXkgd29ycnkgaXMgdGhhdCBvdXIg
ZGlzY292ZXJ5IHRoYXQgdGhleSBpbnRyb2R1Y2VkIHRoaXMgbGF0ZSBjaGFuZ2UKaW50byBJY2Vs
YWtlIGlzIHB1cmUgc2VyZW5kaXBpdHksIGFuZCBzbyBJIGhlc2l0YXRlIGRldmlhdGluZyB0b28g
ZmFyCmZyb20gdGhlIHRlc3Qgc2V0dXAgdGhhdCBvcmlnaW5hbGx5IGZvdW5kIHRoZSBwcm9ibGVt
LiBJJ2QgcmF0aGVyIGV4dGVuZAp0aGUgdGVzdGluZyB0byBzdHVkeSB0aGUgY29ycmVsYXRpb24g
YmV0d2VlbiBuY3B1cyBhbmQgdGltZSB0aGFuIHJlZHVjZQppdCA6KAoKVGhpbmtpbmcgYWJvdXQg
dGhlIGVmZmVjdHMgd29ydGggaW52ZXN0aWdhdGluZyBoZXJlLCBkb2luZyBhIGNwdXNldCB0bwpi
aW5kIHRoZSBwcm9jZXNzIHRvIGEgc2luZ2xlIGNwdSwgdGhlbiBmb3JraW5nIHR3byBwcm9jZXNz
ZXMgc2hvdWxkCm1pbmltYWxseSBjb3ZlciB0aGUgdWFiaSBiZWhhdmlvdXIuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
