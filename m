Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF142F44C4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:40:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991CA6F92B;
	Fri,  8 Nov 2019 10:40:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 639966F92B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:40:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19126273-1500050 for multiple; Fri, 08 Nov 2019 10:40:05 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uE5tCFHALPQbYJkJdC0iVXMeO3ut37MrT02f4e6aveEhQ@mail.gmail.com>
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-2-chris@chris-wilson.co.uk>
 <CAKMK7uFSfEPYgzeLtZXTOH7o77jDu7ULtvexq-=R6jeXwsLGTQ@mail.gmail.com>
 <157320790442.9461.15671764737191591137@skylake-alporthouse-com>
 <CAKMK7uE5tCFHALPQbYJkJdC0iVXMeO3ut37MrT02f4e6aveEhQ@mail.gmail.com>
Message-ID: <157320960375.9461.12119953763105684230@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 10:40:03 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Drop inspection of execbuf
 flags during evict
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4IDEwOjIwOjIzKQo+IE9uIEZyaSwgTm92
IDgsIDIwMTkgYXQgMTE6MTEgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+ID4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4IDA5OjU0OjQy
KQo+ID4gPiBPbiBXZWQsIE5vdiA2LCAyMDE5IGF0IDQ6NDkgUE0gQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gV2l0aCB0aGUgZ29h
bCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBleGVjYnVmLCB3ZSB3
aWxsCj4gPiA+ID4gbm8gbG9uZ2VyIGhhdmUgdGhlIHByaXZpbGVnZSBvZiB0aGVyZSBiZWluZyBh
IHNpbmdsZSBleGVjYnVmIGluIGZsaWdodAo+ID4gPiA+IGF0IGFueSB0aW1lIGFuZCBzbyB3aWxs
IG9ubHkgYmUgYWJsZSB0byBpbnNwZWN0IHRoZSB1c2VyJ3MgZmxhZ3Mgd2l0aGluCj4gPiA+ID4g
dGhlIGNhcmVmdWxseSBjb250cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3Rf
Zm9yX25vZGUoKSBpcwo+ID4gPiA+IHRoZSBvbmx5IHVzZXIgb3V0c2lkZSBvZiBleGVjYnVmIHRo
YXQgY3VycmVudGx5IHBlZWtzIGF0IHRoZSBmbGFnIHRvCj4gPiA+ID4gY29udmVydCBhbiBvdmVy
bGFwcGluZyBzb2Z0cGlubmVkIHJlcXVlc3QgZnJvbSBFTk9TUEMgdG8gRUlOVkFMLiBSZXRyYWN0
Cj4gPiA+ID4gdGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0IEVOT1NQQyBpZiB0aGUgbG9jYXRp
b24gaXMgaW4gY3VycmVudCB1c2UsCj4gPiA+ID4gZWl0aGVyIGR1ZSB0byB0aGlzIGV4ZWNidWYg
b3IgYW5vdGhlci4KPiA+ID4gPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4KPiA+ID4g
U2FtZSByZWFzb25zIGFzIGZvciBwYXRjaCAzLCBJIGRvbid0IHRoaW5rIHdlIGhhdmUgdG8gZG8g
dGhpcyBhdCBhbGwuCj4gPgo+ID4gVGhpcyBpcyBhbHJlYWR5IHVuZGVmaW5lZCBiZWhhdmlvdXIu
IFRoYXQgZmllbGQgaXMgcHJvdGVjdGVkIGJ5Cj4gPiBzdHJ1Y3RfbXV0ZXggYW5kIGJlaW5nIGV2
YWx1YXRlZCBvdXRzaWRlIG9mIHRoYXQgbG9jay4KPiAKPiBJZiB0aGlzIGNhbiBiZSBjYWxsZWQg
b24gb2JqZWN0cyBpbnZvbHZlZCBpbiBleGVjYnVmLCB3aXRob3V0Cj4gc3RydWN0X211dGV4LCB0
aGVuIHdlIGFscmVhZHkgaGF2ZSBhIGNvcnJlY3RuZXNzIHByb2JsZW0gb2Ygdm1hIHNwYWNlCj4g
KHdoaWNoIGlzIHN1cGVyIHRpZ2h0IG9uIG9sZCBwbGF0Zm9ybXMgYW5kIHJhdGhlciBtdWNoIHJl
cXVpcmVkIHRvIGJlCj4gd2VsbC1tYW5hZ2VkIGJlY2F1c2Ugb2YgdGhhdCkgYmVpbmcgbG9zdCBi
ZWNhdXNlIGNvbmN1cnJlbnQgdGhyZWFkcwo+IHRocmFzaCBpdCBpbnN0ZWFkIG9mIGZvcm1pbmcg
YW4gb3JkZXJseSBxdWV1ZS4gQW5kIGlmIHRoYXQncyBub3QgdGhlCj4gY2FzZSwgYW5kIHRoZXkg
ZG8gZm9ybSBhbiBvcmRlcmx5IHF1ZXVlLCB0aGVuIHRoZXJlJ3Mgbm8gcHJvYmxlbSBzaW5jZQo+
IGV2ZW4gdGhlIGFzLW5lZWRlZC1vbmx5IG9yZGVybHkgcXVldWUgcHJvdmlkZWQgYnkgd3dfbXV0
ZXggd2lsbCB0aGVuCj4gYmUgZW5vdWdoIGxvY2tpbmcgdG8ga2VlcCB0aGlzIHdvcmtpbmcuCgpJ
dCBkb2Vzbid0IGdldCBjYWxsZWQgb24gdGhvc2Ugb2JqZWN0cywgdGhvc2Ugb2JqZWN0cyBtYXkg
anVzdCBiZQpuZWlnaGJvdXJpbmcgYW5kIGJlaW5nIGluc3BlY3RlZCBmb3IgcG90ZW50aWFsIGV2
aWN0aW9uIGNhbmRpZGF0ZXMuIFRoZQpsaXN0cyB0aGVtc2VsdmVzIGFyZSBwcm90ZWN0ZWQgYnkg
dGhlaXIgbXV0ZXgsIGl0J3MganVzdCB0aGUgY29udGVudGlvbgpvdmVyIHRoZSBwaW5fY291bnQu
CiAKPiBBc2lkZTogWWVhaCBJIHRoaW5rIHdlIG5lZWQgdG8gcmUtYWRkIHN0cnVjdF9tdXRleCB0
byB0aGUgZ3R0IGZhdWx0Cj4gcGF0aCwgdGhlIHRlbXBvcmFyeSBwaW5uaW5nIGluIHRoZXJlIGNv
dWxkIGVhc2lseSBzdGFydmUgZXhlY2J1ZiBvbgo+IHBsYXRmb3JtcyB3aGVyZSBiYXRjaGVzIHJ1
biBpbiBnZ3R0LiBNYXliZSBhbHNvIHNvbWUgb3RoZXIgYXJlYXMgd2hlcmUKPiB3ZSBsb3N0IHN0
cnVjdF9tdXRleCBhcm91bmQgdGVtcG9yYXJ5IHZtYS0+cGluX2NvdW50IGVsZXZhdGlvbnMuCgpU
aGF0J3Mgd2hlcmUgd2UgYXJlIGdvaW5nIG5leHQ7IG5vdCB3aXRoIHN0cnVjdF9tdXRleCBidXQg
ZmVuY2VkIGFjY2Vzcwp0byByZXNlcnZhdGlvbnMgdG8gcmVwbGFjZSB0aGUgdGVtcG9yYXJ5IChu
b3QgSFcgYWNjZXNzKSBwaW5uaW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
