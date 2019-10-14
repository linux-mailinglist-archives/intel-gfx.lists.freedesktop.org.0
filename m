Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CEAD6402
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641306E4AF;
	Mon, 14 Oct 2019 13:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DDE6E4AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:23:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18832537-1500050 for multiple; Mon, 14 Oct 2019 14:23:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-11-chris@chris-wilson.co.uk>
 <8b030734-330f-49e1-cbd0-d7d44c965983@linux.intel.com>
 <157105478333.18859.11636359770694964440@skylake-alporthouse-com>
 <9d2f73a9-745d-7c59-770e-c94fc40e7a1c@linux.intel.com>
 <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
 <157105880297.18859.7992408403808576383@skylake-alporthouse-com>
 <3264aa4b-997b-f012-7d97-f1e1cf21f676@linux.intel.com>
In-Reply-To: <3264aa4b-997b-f012-7d97-f1e1cf21f676@linux.intel.com>
Message-ID: <157105938286.18859.17442370513635200680@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 14:23:02 +0100
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915/execlists: Cancel banned
 contexts on schedule-out
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxNDoxOToxOSkKPiAKPiBPbiAxNC8x
MC8yMDE5IDE0OjEzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0xMC0xNCAxMzozNDozNSkKPiA+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5
LTEwLTE0IDEzOjI1OjU4KQo+ID4+Pgo+ID4+PiBPbiAxNC8xMC8yMDE5IDEzOjA2LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4gPj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEwLTE0IDEz
OjAwOjAxKQo+ID4+Pj4+Cj4gPj4+Pj4gT24gMTQvMTAvMjAxOSAxMDowNywgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+ID4+Pj4+PiArc3RhdGljIHZvaWQgY2FuY2VsX2FjdGl2ZShzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSwKPiA+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ID4+Pj4+PiArewo+ID4+Pj4+PiArICAgICBzdHJ1Y3QgaW50
ZWxfY29udGV4dCAqIGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4gPj4+Pj4+ICsKPiA+Pj4+
Pj4gKyAgICAgLyoKPiA+Pj4+Pj4gKyAgICAgICogVGhlIGV4ZWN1dGluZyBjb250ZXh0IGhhcyBi
ZWVuIGNhbmNlbGxlZC4gRml4dXAgdGhlIGNvbnRleHQgc28gdGhhdAo+ID4+Pj4+PiArICAgICAg
KiBpdCB3aWxsIGJlIG1hcmtlZCBhcyBpbmNvbXBsZXRlIFstRUlPXSB1cG9uIHJlc3VibWlzc2lv
biBhbmQgbm90Cj4gPj4+Cj4gPj4+IChyZWFkIGJlbG93IGZpcnN0KQo+ID4+Pgo+ID4+PiAuLi4g
YW5kIG5vdCBtaXNsZWFkaW5nbHkgc2F5ICJGaXh1cCB0aGUgY29udGV4dCBzbyB0aGF0IGl0IHdp
bGwgYmUKPiA+Pj4gbWFya2VkIGFzIGluY29tcGxldGUiIGJlY2F1c2UgdGhlcmUgaXMgbm90aGlu
ZyBpbiB0aGlzIGZ1bmN0aW9uIHdoaWNoCj4gPj4+IGRvZXMgdGhhdC4gSXQgbW9zdGx5IGhhcHBl
bnMgYnkgdGhlIHZpcnR1YWwgb2YgY29udGV4dCBhbHJlYWR5IGJlaW5nCj4gPj4+IG1hcmtlZCBh
cyBiYW5uZWQgc29tZXdoZXJlIGVsc2UuIFRoaXMgY29tbWVudCBzaG91bGQganVzdCBleHBsYWlu
IHRoZQo+ID4+PiBkZWNpc2lvbiB0byByZXdpbmQgdGhlIHJpbmctPmhlYWQgZm9yIG1vcmUgZGV0
ZXJtaW5pc20uIEl0IGNhbiBzdGlsbAo+ID4+PiBtZW50aW9uIGNhbmNlbGluZyBvZiB1c2VyIHBh
eWxvYWQgYW5kIC1FSU8uIEp1c3QgbmVlZHMgdG8gYmUgY2xlYXIgb2YKPiA+Pj4gdGhlIHNpbmds
ZSBleHRyYSB0aGluZyBhY2hpZXZlZCBoZXJlIGJ5IHRoZSBoZWFkIHJld2luZCBhbmQgY29udGV4
dCBlZGl0Lgo+ID4+Cj4gPj4gSSB0aG91Z2h0IEkgd2FzIGNsZWFyOiAidXBvbiByZXN1Ym1pc3Np
b24iLiBTbyB1c2UgYSBtb3JlIGFjdGl2ZSB2b2ljZSB0bwo+ID4+IHJlZHVjZSBhbWJpZ3VpdHks
IGdvdGNoYS4KPiA+IAo+ID4gICAgICAgICAgLyoKPiA+ICAgICAgICAgICAqIFRoZSBleGVjdXRp
bmcgY29udGV4dCBoYXMgYmVlbiBjYW5jZWxsZWQuIFdlIHdhbnQgdG8gcHJldmVudAo+ID4gICAg
ICAgICAgICogZnVydGhlciBleGVjdXRpb24gYWxvbmcgdGhpcyBjb250ZXh0IGFuZCBwcm9wYWdh
dGUgdGhlIGVycm9yIG9uCj4gPiAgICAgICAgICAgKiB0byBhbnl0aGluZyBkZXBlbmRpbmcgb24g
aXRzIHJlc3VsdHMuCj4gPiAgICAgICAgICAgKgo+ID4gICAgICAgICAgICogSW4gX19pOTE1X3Jl
cXVlc3Rfc3VibWl0KCksIHdlIGFwcGx5IHRoZSAtRUlPIGFuZCByZW1vdmUgdGhlCj4gPiAgICAg
ICAgICAgKiByZXF1ZXN0cyBwYXlsb2FkIGZvciBhbnkgYmFubmVkIHJlcXVlc3RzLiBCdXQgZmly
c3QsIHdlIG11c3QKPiA+ICAgICAgICAgICAqIHJld2luZCB0aGUgY29udGV4dCBiYWNrIHRvIHRo
ZSBzdGFydCBvZiB0aGUgaW5jb21wbGV0ZSByZXF1ZXN0IHNvCj4gPiAgICAgICAgICAgKiB0aGF0
IHdlIGRvbid0IGp1bXAgYmFjayBpbnRvIHRoZSBtaWRkbGUgb2YgdGhlIGJhdGNoLgo+ID4gICAg
ICAgICAgICoKPiA+ICAgICAgICAgICAqIFdlIHByZXNlcnZlIHRoZSBicmVhZGNydW1icyBhbmQg
c2VtYXBob3JlcyBvZiB0aGUgaW5jb21wbGV0ZQo+ID4gICAgICAgICAgICogcmVxdWVzdHMgc28g
dGhhdCBpbnRlci10aW1lbGluZSBkZXBlbmRlbmNpZXMgKGkuZSBvdGhlciB0aW1lbGluZXMpCj4g
PiAgICAgICAgICAgKiByZW1haW4gY29ycmVjdGx5IG9yZGVyZWQuCj4gPiAgICAgICAgICAgKi8K
PiA+IAo+IAo+IFNvdW5kcyBnb29kLgo+IAo+IEJ0dy4uIGRvZXMgdGhpcyB3b3JrPyA6KSBJZiBj
b250ZXh0IHdhcyBwcmVlbXB0ZWQgaW4gdGhlIG1pZGRsZSBvZiBhIAo+IGJhdGNoIGJ1ZmZlciB0
aGVyZSBtdXN0IGJlIHNvbWUgb3RoZXIgc3RhdGUgc2F2ZWQgKG90aGVyIHRoYW4gUklOR19IRUFE
KSAKPiB3aGljaCBvbiBjb250ZXh0IHJlc3RvcmUgZW5hYmxlcyBpdCB0byBjb250aW51ZSBmcm9t
IHRoZSByaWdodCBwbGFjZSAKPiAqd2l0aGluKiB0aGUgYmF0Y2guIElzIHRoaXMgY29kZSB6YXBw
aW5nIHRoYXQgc3RhdGUgYXMgd2VsbCBzbyBHUFUgd2lsbCAKPiBmdWxseSBmb3JnZXQgaXQgd2Fz
IGluc2lkZSB0aGUgYmF0Y2g/CgpZZXMuIFdlIGFyZSByZXNldHRpbmcgdGhlIGNvbnRleHQgaW1h
Z2UgYmFjayB0byB2YW5pbGxhLCBhbmQgdGhlbgpyZXN0b3JlIHRoZSByaW5nIHJlZ2lzdGVycyB0
byByZXN0YXJ0IGZyb20gdGhpcyByZXF1ZXN0LiBUaGUgc2VsZnRlc3RzCmFyZSB1c2luZyBzcGlu
bmluZyBiYXRjaGVzIHRvIHNpbXVsYXRlIHRoZSBiYW5uZWQgY29udGV4dC4KLUNocmlzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
