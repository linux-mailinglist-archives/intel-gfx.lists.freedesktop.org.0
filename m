Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9A3D10E7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 16:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7320E89C83;
	Wed,  9 Oct 2019 14:10:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DAF589C84
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 14:10:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18778661-1500050 for multiple; Wed, 09 Oct 2019 15:10:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
 <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
 <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
 <7faf81f6-33a5-bad1-6f6c-a6c7252536b5@intel.com>
In-Reply-To: <7faf81f6-33a5-bad1-6f6c-a6c7252536b5@intel.com>
Message-ID: <157063022485.18808.17487424164878345808@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 15:10:24 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wOSAxNDo0ODo0MikKPiBPbiAwOS8x
MC8yMDE5IDE2OjQwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTEwLTA5IDE0OjM0OjQ5KQo+ID4+IE9uIDA5LzEwLzIwMTkgMTU6NDUsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0x
MC0wOSAxMzo0MzozMikKPiA+Pj4+IERvIHlvdSBoYXZlIGJyYW5jaCBzb21ld2hlcmUgd2l0aCB0
aGlzIHNlcmllcz8KPiA+Pj4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+aWNrbGUvbGlu
dXgtMi42L2xvZy8/aD13aXAtcGVyZgo+ID4+PiAtQ2hyaXMKPiA+Pj4KPiA+PiBDaGVlcnMsCj4g
Pj4KPiA+Pgo+ID4+IEkndmUgbW9kaWZpZWQgdGhlIHRvcCBwYXRjaCB0byBzZXQgdGhlIG5vcHJl
ZW1wdCBmbGFnIGZvciBhcyBsb25nIGFzIHRoZQo+ID4+IGNvbnRleHQgaGFzIGJlZW4gZmxhZ2dl
ZCAoYXMgbG9uZyBhdCB0aGUgcGVyZiBzdHJlYW0gaXMgb3BlbmVkKSA6Cj4gPj4gaHR0cHM6Ly9n
aXRodWIuY29tL2RqZGVhdGgvbGludXgvY29tbWl0L2QzMzI3YjMwYzYxNDFmYWM5OGEzZDQ2ZjMz
OThjODdmZTcwOTc2YWEKPiA+IFRoYXQgbWVhbnMgeW91IGFyZSBub3QgcGFzc2luZyBpbiB0aGUg
ZXh0X3BlcmZfY29uZmlnIHRvIGV2ZXJ5IGJhdGNoIHRoYXQKPiA+IGlzIHVzaW5nIGl0LCByaWdo
dD8gVGhlIG9hX2NvbmZpZyB0cmFja2luZyBhbHNvIGhpbmdlcyBvbiB0aGF0IHlvdSBkby4KPiA+
IC1DaHJpcwo+ID4KPiBMaWtlIEkgbWVudGlvbmVkLCB0aGVyZSBhcmUgZW1wdHkgYmF0Y2ggdG8g
ZHJhaW4gdGhlIGNvbnRleHQgdGhhdCB3ZSAKPiBlbWl0IHdpdGhvdXQgT0EgcmVjb25maWd1cmF0
aW9uLgo+IAo+IFRoZXJlIGNvdWxkIGFsc28gYmUgYSBzZXF1ZW5jZSBzdWNoIGFzIDoKPiAKPiAg
wqDCoMKgIC0gYmF0Y2gwIChpbmNsdWRlcyBwZXJmIHF1ZXJ5IGNvbmZpZz00MikKPiAKPiAgwqDC
oMKgIC0gYmF0Y2gxIChubyBwZXJmIHF1ZXJ5LCBpbmNsdWRlcyB0aW1lc3RhbXAgb3IgcGlwZWxp
bmUgcXVlcnkpCgpCdXQgdGhpcyBleGVjYnVmIGlzIG5vdCB1c2luZyB0aGUgb2FfY29uZmlnLCBz
byB3aHkgc2hvdWxkIGl0PyBUaGUKZGlyZWN0aW9uIHlvdSd2ZSBzdWdnZXN0ZWQgaXMgdGhhdCB3
ZSBzaG91bGQgYXR0YWNoIHRoZSBwZXJmIHN0YXRlIHRvCnRoZSBjb250ZXh0LiAKCmViX29hX2Nv
bmZpZygpOgoJc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbTsKCgkvKiBhdHRhY2hlZC9y
ZW1vdmVkIGJ5IHBlcmZfaW9jdGwgKi8KCXN0cmVhbSA9IHJjdV9nZXQoZWItPmdlbV9jb250ZXh0
LT5wZXJmKTsKCWlmICghc3RyZWFtKQoJCXJldHVybjsKCglpZiAoc3RyZWFtLT5vYV9jb25maWcg
IT0gc3RyZWFtLT5wZXJmLT5vYV9jb25maWcpIHsKCQltdXRleF9sb2NrKCZwZXJmLT5sb2NrKTsK
CQkuLi4KCQltdXRleF91bmxvY2soJnBlcmYtPmxvY2spOwoJfQoKCWlmIChzdHJlYW0tPmhvbGRf
cHJlZW1wdGlvbikKCQllYi0+cmVxdWVzdC0+ZmxhZ3MgfD0gTk9QUkVFTVBUOwoJCglpOTE1X3Bl
cmZfc3RyZWFtX3B1dChzdHJlYW0pOwoKVGhlbiBpbnN0ZWFkIG9mIGFuIGV4ZWNidWYgZXh0ZW5z
aW9uIGl0IHdvdWxkIGVpdGhlciBiZSBhIHBlcmYgaW9jdGwgdG8KdXBkYXRlIHRoZSBvYV9jb25m
aWcgb24gdGhlIGF0dGFjaGVkIHNwZWNpZmllZCBjb250ZXh0LCBvciBhIGNvbnRleHQKcGFyYW0u
IFVzaW5nIHRoZSBwZXJmIGlvY3RsIGRvZXMgbm90IHNlZW0gYW1pc3MuCgo+ICDCoMKgwqAgLSBi
YXRjaDIgKGluY2x1ZGVzIHBlcmYgcXVlcnkgY29uZmlnPTQyKQo+IAo+ICDCoMKgwqAgLSBiYXRj
aDMgKGluY2x1ZGVzIHBlcmYgcXVlcnkgY29uZmlnPTQzKQo+IAo+IAo+IEl0IHNvdW5kcyByZWFz
b25hYmxlIHRvIGVuc3VyZSB0aGF0IGFsbCB0aGUgcmVxdWVzdHMgYXJlIGZsYWdnZWQgd2l0aCAK
PiBub3ByZWVtcHQgdG8gZW5zdXJlIHdlIGRvbid0IHByZWVtcHQgb25lIGJlY2F1c2Ugd2UgZG9u
J3QgaGF2ZSAKPiB2aXNpYmlsaXR5IG9uIHdoYXQncyBjb21wbGV0ZWQgd2hlbiByZWxvYWRpbmcg
dGhlIGV4ZWNsaXN0cyBwb3J0cy4KPiAKPiBUaGlzIGVudGlyZSBzZXF1ZW5jZSBhYm92ZSB3b3Vs
ZCBiZSBzdXJyb3VuZGVkIGJ5IG9wZW4vY2xvc2Ugb2YgdGhlIHBlcmYgCj4gc3RyZWFtLiBPbmNl
IGNsb3NlKCkgcmV0dXJucywgdGhlbiBhbnkgbmV3IHJlcXVlc3Qgd29uJ3QgYmUgZmxhZ2dlZCB3
aXRoIAo+IG5vcHJlZW1wdCBidXQgaXQncyB0aGUgYXBwbGljYXRpb24ncyByZXNwb25zYWJpbGl0
eSB0byBoYXZlIGNvbGxlY3RlZCAKPiBhbGwgdGhlIHF1ZXJpZXMnIHJlc3VsdHMgYmVmb3JlIGNs
b3NpbmcgdGhlIHN0cmVhbS4KCkFyZSB5b3UgaGFwcHkgd2l0aCBhc3NvY2lhdGluZyB0aGUgaTkx
NV9wZXJmX3N0cmVhbSB3aXRoIHRoZQpzcGVjaWZpY19jdHggYW5kIGNvbnRyb2xsaW5nIGFsbCB0
aGUgcGFyYW1ldGVycyB2aWEgcGVyZi1pb2N0bD8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
