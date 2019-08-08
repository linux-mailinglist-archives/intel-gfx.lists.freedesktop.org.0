Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D612C86260
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 14:55:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078656E49E;
	Thu,  8 Aug 2019 12:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292286E49E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 12:55:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17930569-1500050 for multiple; Thu, 08 Aug 2019 13:55:12 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190808110612.23539-1-chris@chris-wilson.co.uk>
 <87sgqbhloy.fsf@gaia.fi.intel.com>
In-Reply-To: <87sgqbhloy.fsf@gaia.fi.intel.com>
Message-ID: <156526890945.21710.10276730902976614858@skylake-alporthouse-com>
Date: Thu, 08 Aug 2019 13:55:09 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Allocate kernel_contexts
 directly
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDEzOjQzOjI1KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gPiBAQCAtMTMzNiw0MyArMTM0
Nyw0OSBAQCBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgICAgICAgICAgICAgICAqLwo+ID4gICAgICAg
ICAgICAgICBlcnIgPSBpOTE1X3ZtYV91bmJpbmQoc3RhdGUpOwo+ID4gICAgICAgICAgICAgICBp
ZiAoZXJyKQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2FjdGl2ZTsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPiA+ICAKPiA+ICAgICAgICAgICAgICAgaTkx
NV9nZW1fb2JqZWN0X2xvY2soc3RhdGUtPm9iaik7Cj4gPiAgICAgICAgICAgICAgIGVyciA9IGk5
MTVfZ2VtX29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihzdGF0ZS0+b2JqLCBmYWxzZSk7Cj4gCj4g
T2sgdGhpcyBoYXMgdGhlIGltcGxpY2l0IHdhaXQgb24gaXQuIFdhcyBjb25mdXNlZCBmb3IgYSBt
b21lbnQKPiB0aGF0IGhvdyBjYW4gd2UgZmV0Y2ggdGhlIHN0YXRlIGFzeW5jLgoKVGhlcmUncyBh
bHNvIGEgZ2xvYmFsIHdhaXRfZm9yX2lkbGUganVzdCBhYm92ZS4gKEkgYW0gdGVtcHRlZCB0bwpz
dHJlYW1saW5lIHRoaXMgYW5kIHJ1biBpdCBpbiBwYXJhbGxlbCB1c2luZyBrd29ya2VycywgYnV0
IGZpcnN0IHdlIG5lZWQKdG8gZmluaXNoIHJlZmFjdG9yaW5nIHRoZSBpbnRlbF9ndF9wbS4pCiAK
PiBUaGUgcGF0aCBhaGVhZCB0aGF0IG5vIG5lZWQgZm9yIGdsb2JhbCBrZXJuZWwgY29udGV4dCBi
dXQKPiBlbmdpbmVzIHNldHVwIHRoZWlyIGRlZmF1bHQgZm9yIGNsb25pbmcgbmV3IG9uZXM/Cgpp
bnRlbF9lbmdpbmVfY3MgY3JlYXRlIHRoZWlyIG93biBrZXJuZWxfY29udGV4dCwgd2hpY2ggYXJl
IG5vdCB0byBiZQooZGlyZWN0bHkpIHVzZWQgYnkgdXNlcnNwYWNlLgoKR0VNIGNvbnRleHQgY3Jl
YXRlcyBhIGZyZXNoIHNldCBvZiBwZXItZW5naW5lIGxvZ2ljYWwgY29udGV4dHMgb24gZWFjaApj
cmVhdGlvbi4gKFdoZW4gd2Ugc3RvcCBjcmVhdGluZyBhIGk5MTUtPmtlcm5lbF9jb250ZXh0LCB3
ZSB3aWxsIHJlbW92ZQp0aGUgZHVwbGljYXRpb24gLS0gYnV0IG5vdyBhcyB3ZSBuZXZlciB1c2Ug
dGhlbSwgd2UgbmV2ZXIgYWxsb2NhdGUKc3RhdGUsIHNvIG5vdCBtdWNoIHdhc3RhZ2UgYnkgYWxs
b2NhdGluZyBlbmdpbmUtPmtlcm5lbF9jb250ZXh0CmRpcmVjdGx5LikKIAo+IENhbid0IHBva2Ug
aG9sZXMgb24gdGhpcy4gRGlkbid0IGdldCBpbnRvIGJvdHRvbSBvZiBob3cgdGhlCj4gYWN0aXZl
IHRyYWNraW5nIGdyYWJzIHRoZSBjZSByZWZlcmVuY2Ugb24gcGlubmluZyBidXQKPiBldmVyeXRo
aW5nIHN0YXlzIHRoZSBzYW1lIG9uIHRoYXQgZnJvbnQgc28gd2FzIGp1c3Qgd2FuZGVyaW5nCj4g
YXJvdW5kIGluIG90aGVyIHVua25vd24gcGF0aHMuCgpJdCdzIGFjdGl2ZSByZWZlcmVuY2VzIGZv
ciBldmVyeWJvZHkuIFdlIHRyYWNrIGNvbnRleHQgYWN0aXZpdHkgYnkKaTkxNV9hY3RpdmUsIGlu
dGVsX2NvbnRleHRfcGluKCkgbWFya3MgaXQgYXMgYWN0aXZlIGFuZCBvdXIKaW50ZWxfY29udGV4
dF9hY3RpdmUgY2FsbGJhY2sgdGFrZXMgYSByZWZlcmVuY2UuIGludGVsX2NvbnRleHRfdW5waW4o
KQpyZWxlYXNlcyB0aGUgaTkxNV9hY3RpdmUgb24gdGhlIG5leHQgaWRsZSByZXF1ZXN0LCBhdCB3
aGljaCB0aW1lIHdlIGNhbGwKdGhlIGludGVsX2NvbnRleHRfcmV0aXJlIGNhbGxiYWNrIGFuZCBk
cm9wIHRoZSByZWZlcmVuY2UuIFRodXMgZm9yIGFzCmxvbmcgYXMgd2Ugc3VzcGVjdCB0aGUgSFcg
aGFzIGFjY2VzcyB0byB0aGUgY29udGV4dCAoaS5lLiBwaW4gdW50aWwgbmV4dApjb250ZXh0IHN3
aXRjaCkgd2Uga2VlcCB0aGUgY29udGV4dCBzdGF0ZSBhbGl2ZSBhbmQgYm91bmQuCgpXZSBoYWQg
dG8gcmVzb3J0IHRvIHN1Y2ggY29tcGxleGl0eSBiZWNhdXNlIHdlIGhhdmUgdG8gdHJlYXQgc3Vi
bWlzc2lvbgphcyBhIGJsYWNrIGJveCAtLSB3ZSBjYW5ub3QgcHJlc3VtZSB0aGUgb3JkZXIgb2Yg
ZXhlY3V0aW9uIChndWMpLgpIb3dldmVyLCBpdCB0aWVzIGl0IGFsbCB0b2dldGhlciBiZWNhdXNl
IHdlIGhhdmUgdGhlIHNhbWUgc29ydCBvZgpwcm9ibGVtIHdpdGggdHJhY2tpbmcgdm1hIGFuZCBi
dWZmZXIgYWN0aXZpdHkuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
