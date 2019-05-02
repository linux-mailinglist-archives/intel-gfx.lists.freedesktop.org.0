Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FD711B44
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7503789598;
	Thu,  2 May 2019 14:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A24F89598
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:21:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16430048-1500050 for multiple; Thu, 02 May 2019 15:21:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
 <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
 <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
 <d9f738e1-52a9-ef72-374c-c42dbbedcbbb@linux.intel.com>
In-Reply-To: <d9f738e1-52a9-ef72-374c-c42dbbedcbbb@linux.intel.com>
Message-ID: <155680686989.9023.6629699137280028848@skylake-alporthouse-com>
Date: Thu, 02 May 2019 15:21:09 +0100
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet
 on parking
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNToxNDowOCkKPiAKPiBPbiAwMi8w
NS8yMDE5IDE0OjUzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTAyIDE0OjQ4OjE4KQo+ID4+Cj4gPj4gT24gMDEvMDUvMjAxOSAxMjo0NSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBUaWR5IHVwIHRoZSBjbGVhbnVwIHNlcXVlbmNlIGJ5
IGFsd2F5cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+ID4+PiBmbHVzaGVkIG9uIHBhcmtp
bmcgKGJlZm9yZSB3ZSBjbGVhbnVwKS4gVGhlIHBhcmtpbmcgcHJvdmlkZXMgYQo+ID4+PiBjb252
ZW5pZW50IHBvaW50IHRvIGVuc3VyZSB0aGF0IHRoZSBiYWNrZW5kIGlzIHRydWx5IGlkbGUuCj4g
Pj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+ID4+PiAtLS0KPiA+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgICAgICAgICB8IDcgKysrKysrLQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgMSArCj4gPj4+ICAgIDIgZmlsZXMgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jCj4gPj4+IGluZGV4IDg1MWU2MmRkY2I4Ny4uN2JlNTRiODY4ZDhlIDEwMDY0
NAo+ID4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4+PiBAQCAtMjMzMSw2
ICsyMzMxLDExIEBAIHN0YXRpYyBpbnQgZ2VuOF9pbml0X3Jjc19jb250ZXh0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQo+ID4+PiAgICAgICAgcmV0dXJuIGk5MTVfZ2VtX3JlbmRlcl9zdGF0ZV9l
bWl0KHJxKTsKPiA+Pj4gICAgfQo+ID4+PiAgICAKPiA+Pj4gK3N0YXRpYyB2b2lkIGV4ZWNsaXN0
c19wYXJrKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+Pj4gK3sKPiA+Pj4gKyAg
ICAgdGFza2xldF9raWxsKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0KTsKPiA+Pgo+ID4+IElz
bid0IGl0IGFjdHVhbGx5IGEgcHJvYmxlbSBpZiB0YXNrbGV0IGlzIHNjaGVkdWxlZCBhbmQgdW5z
dGFydGVkLCBvcgo+ID4+IGV2ZW4gaW4gcHJvZ3Jlc3MgYXQgdGhlIHBvaW50IG9mIGVuZ2luZSBn
ZXR0aW5nIHBhcmtlZD8KPiA+IAo+ID4gVGhhdCB3b3VsZCBiZSBhIGJyb2tlbiBkcml2ZXIuIDp8
Cj4gPiAKPiA+IFdlIG11c3QgYmUgcXVpdGUgc3VyZSB0aGF0IGVuZ2luZSBpc24ndCBnb2luZyB0
byBzZW5kIGFuIGludGVycnVwdCBhcyB3ZQo+ID4gYXJlIGp1c3QgYWJvdXQgdG8gZHJvcCB0aGUg
d2FrZXJlZiB3ZSBuZWVkIHRvIHNlcnZpY2UgdGhhdCBpbnRlcnJ1cHQuCj4gPiAKPiA+IHRhc2ts
ZXRfa2lsbCgpCj4gPiBHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xpc3RzLmFjdGl2ZSk7Cj4gCj4g
T3IgaW5zdGVhZCBvZiBib3RoOgo+IAo+IC8qIFRhc2tsZXQgbXVzdCBub3QgYmUgcnVubmluZyBv
ciBzY2hlZHVsZWQgYXQgdGhpcyBwb2ludC4gKi8KPiBHRU1fQlVHX09OKGVuZ2luZS0+ZXhlY2xp
c3RzLnRhc2tsZXQuc3RhdGUpOwoKVGhlcmUncyB0aGUgZGlsZW1tYSB0aGF0IHdlIHN0YXJ0IHBh
cmtpbmcgYmFzZWQgb24gcmV0aXJlbWVudCBub3QKZmluYWwgQ1MgZXZlbnQuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
