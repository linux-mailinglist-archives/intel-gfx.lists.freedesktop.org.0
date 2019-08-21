Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE51F977C8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 13:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535906E2C8;
	Wed, 21 Aug 2019 11:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB7886E2C8
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 11:13:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18212929-1500050 for multiple; Wed, 21 Aug 2019 12:13:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190820134847.22991-1-chris@chris-wilson.co.uk>
 <20190820135232.31961-1-chris@chris-wilson.co.uk>
 <94ecfac7-1afa-b0c4-dd35-5af81dd69dbb@intel.com>
In-Reply-To: <94ecfac7-1afa-b0c4-dd35-5af81dd69dbb@intel.com>
Message-ID: <156638601548.1374.17246910685470635542@skylake-alporthouse-com>
Date: Wed, 21 Aug 2019 12:13:35 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Serialise the fill BLT with the
 vma pinning
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMjEgMTI6MDA6MDcpCj4gT24gMjAvMDgvMjAx
OSAxNDo1MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gTWFrZSBzdXJlIHRoYXQgd2Ugd2FpdCBm
b3IgdGhlIHZtYSB0byBiZSBwaW5uZWQgcHJpb3IgdG8gdGVsbGluZyB0aGUgR1BVCj4gPiB0byBm
aWxsIHRoZSBwYWdlcyB0aHJvdWdoIHRoYXQgdm1hLgo+ID4gCj4gPiBIb3dldmVyLCBzaW5jZSBv
dXIgYXN5bmMgb3BlcmF0aW9ucyBmaWdodCBvdmVyIG9iai0+cmVzdi0+ZXhjbF9mZW5jZSB3ZQo+
ID4gbXVzdCBtYW51YWxseSBvcmRlciB0aGVtLiBUaGlzIG1ha2VzIGl0IG11Y2ggbW9yZSBmcmFn
aWxlLCBhbmQgZ2l2ZXMgYW4KPiA+IG91dHNpZGUgb2JzZXJ2ZXIgdGhlIGNoYW5jZSB0byBzZWUg
dGhlIGludGVybWVkaWF0ZSBmZW5jZXMuIFRvIGJlCj4gPiBkaXNjdXNzZWQhCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gICAu
Li4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCA0NiArKysrKysr
KysrKysrKy0tLS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCAxMSBk
ZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY2xpZW50X2JsdC5jCj4gPiBpbmRleCAzNTAyMDcxZTEzOTEuLmJiYmMxMDQ5OTA5OSAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0
LmMKPiA+IEBAIC03MSwxMCArNzEsMzAgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3NsZWV2ZSAqY3Jl
YXRlX3NsZWV2ZShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiA+ICAgICAgICAgICAg
ICAgZ290byBlcnJfZnJlZTsKPiA+ICAgICAgIH0KPiA+ICAgCj4gPiArICAgICAvKgo+ID4gKyAg
ICAgICogWFhYIGZpeCBzY2hlZHVsaW5nIHdpdGggZ2V0X3BhZ2VzICYgY2xlYXIgd29ya2Vycwo+
ID4gKyAgICAgICoKPiA+ICsgICAgICAqIFRoZSBjb21wbGljYXRpb24gaXMgdGhhdCB3ZSBlbmQg
dXAgb3ZlcndyaXRpbmcgdGhlIHNhbWUKPiA+ICsgICAgICAqIG9iai0+cmVzdi0+ZXhjbF9mZW5j
ZSBmb3IgZWFjaCBzdGFnZSBvZiB0aGUgb3BlcmF0aW9uLiBUaGF0IGZlbmNlCj4gPiArICAgICAg
KiBzaG91bGQgYmUgc2V0IG9uIHNjaGVkdWxpbmcgdGhlIHdvcmssIGFuZCBvbmx5IHNpZ25hbGVk
IHVwb24KPiA+ICsgICAgICAqIGNvbXBsZXRpb24gb2YgdGhlIGVudGlyZSB3b3JrcXVldWUuCj4g
PiArICAgICAgKgo+ID4gKyAgICAgICogV2l0aGluIHRoZSB3b3JrcXVldWUsIHdlIHVzZSB0aGUg
ZmVuY2UgdG8gc2NoZWR1bGUgZWFjaCBpbmRpdmlkdWFsCj4gPiArICAgICAgKiB0YXNrLiBFYWNo
IGluZGl2aWR1YWwgdGFzayBrbm93cyB0byB1c2Ugb2JqLT5yZXN2LT5mZW5jZS4KPiA+ICsgICAg
ICAqCj4gPiArICAgICAgKiBUbyBhbiBvdXRzaWRlciwgdGhleSBtdXN0IHdhaXQgdW50aWwgdGhl
IGVuZCBhbmQgc28gdGhlCj4gPiArICAgICAgKiBvYmotPnJlc3YtPmZlbmNlIG11c3QgYmUgdGhl
IGNvbXBvc2l0ZS4KPiA+ICsgICAgICAqCj4gPiArICAgICAgKiBJZGVhcz8KPiA+ICsgICAgICAq
Lwo+IAo+IEkgZG9uJ3QgaGF2ZSBhbnkgZ29vZCBpZGVhcy4uLgo+IAo+IEFyZSB3ZSBtZWFudCB0
byBzb21laG93IGhhdmUgYSAic2hhZG93IiByZXN2IG9iaiB0aGF0IHdlIHVzZSBmb3Igb3VyIAo+
IGludGVybWVkaWF0ZSBwaXBlbGluZWQgb3BzLCBzdWNoIHRoYXQgd2UgZG9uJ3QgbGVhayBhbnl0
aGluZz8KCkEgc2tldGNoIEkgaGF2ZW4ndCBwdXQgYW55IGNvZGUgdG8gaXMgYSBzdHJ1Y3QgY2hh
aW5fZmVuY2UgewoJc3RydWN0IGRtYV9mZW5jZSBiYXNlOwoJc3RydWN0IGRtYV9mZW5jZSAqcHJl
djsKCXN0cnVjdCBkbWFfZmVuY2VfY2IgY2I7CgkvKiBpZiBvbmx5IGRtYV9jaGFpbl9mZW5jZSB3
YW4ndCBhbHJlYWR5IHRha2VuLCBtYXliZSBkbWFfY29tcG9zaXRlX2ZlbmNlICovCiB9OyB0aGF0
IHdlIGluc2VydCBhcyBkbWFfcmVzdl9hZGRfZXhjbF9mZW5jZSgpIGFuZCB0aGVuCnBhc3MgdG8g
YWxsIHRoZSBhc3luYyBvcGVyYXRpb25zIHRoYXQgdGhlbiBjaGFpbiB0by4gSXQgbWVhbnMgbW9y
ZSB3b3JrCmluIG1ha2luZyBzdXJlIHdlIGhhdmUgdGhlIGZlbmNlIGF2YWlsYWJsZSBhdCBhbGwg
dGltZXMsIGFsbCB0aGUgd2F5CmRvd24gdGhlIGNoYWluLCBidXQgaXQgc2hvdWxkIHdvcmsgKG5v
dyBhbmQgaW4gdGhlIGZ1dHVyZSkuLi4gR2l2ZSBvcgp0YWtlIHZhcmlvdXMgZmFjdG9ycyB0byBt
YWtlIHN1cmUgd2UgZG9uJ3Qgd2FpdCBvbiB0aGUgc2FtZSBmZW5jZSB3aGlsZQpidWlsZGluZyBp
dCAoZXZpY3Rpb24gYW5kIHNocmlua2luZykuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
