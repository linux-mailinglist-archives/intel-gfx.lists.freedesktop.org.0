Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03069BDE9B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 15:11:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59E016E03D;
	Wed, 25 Sep 2019 13:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B3F26E03D
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 13:11:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18612122-1500050 for multiple; Wed, 25 Sep 2019 14:11:19 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-23-chris@chris-wilson.co.uk>
 <72f190c5-182f-9f35-c00b-f5b28b743015@linux.intel.com>
 <156941601316.4979.6446919481910178240@skylake-alporthouse-com>
 <4ceb0514-e826-c977-93e8-66f2629aeb6b@linux.intel.com>
In-Reply-To: <4ceb0514-e826-c977-93e8-66f2629aeb6b@linux.intel.com>
Message-ID: <156941707351.4979.8688981001329114955@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 14:11:13 +0100
Subject: Re: [Intel-gfx] [PATCH 22/27] drm/i915/overlay: Drop struct_mutex
 guard
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNSAxNDowMTo1MSkKPiAKPiBPbiAyNS8w
OS8yMDE5IDEzOjUzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTI1IDEzOjQzOjQ2KQo+ID4+Cj4gPj4gT24gMjUvMDkvMjAxOSAxMTowMSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0
LmMKPiA+Pj4gaW5kZXggMjY4NWMwMTAzZTkwLi5lZTBjNWMyNDI4MmMgMTAwNjQ0Cj4gPj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+Pj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4+PiBAQCAtMTI2NSwxMCArMTI2
NSw2IEBAIGludCBpbnRlbF9ndF90ZXJtaW5hbGx5X3dlZGdlZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+ID4+PiAgICAgICAgaWYgKCF0ZXN0X2JpdChJOTE1X1JFU0VUX0JBQ0tPRkYsICZndC0+cmVz
ZXQuZmxhZ3MpKQo+ID4+PiAgICAgICAgICAgICAgICByZXR1cm4gLUVJTzsKPiA+Pj4gICAgCj4g
Pj4+IC0gICAgIC8qIFhYWCBpbnRlbF9yZXNldF9maW5pc2goKSBzdGlsbCB0YWtlcyBzdHJ1Y3Rf
bXV0ZXghISEgKi8KPiA+Pj4gLSAgICAgaWYgKG11dGV4X2lzX2xvY2tlZCgmZ3QtPmk5MTUtPmRy
bS5zdHJ1Y3RfbXV0ZXgpKQo+ID4+PiAtICAgICAgICAgICAgIHJldHVybiAtRUFHQUlOOwo+ID4+
PiAtCj4gPj4KPiA+PiBXaGF0IGlzIHRoaXMgaHVuayBkb2luZyBoZXJlPwo+ID4gCj4gPiBCZWNh
dXNlIHRoZSBvdmVybGF5IHVzZWQgc3RydWN0X211dGV4LCBub3cgaXQgZG9lcyBub3QuCj4gCj4g
Tm93IHlvdSBzZWUgd2h5IEkgaW5zaXN0IG9uIGNvbW1lbnRzIGFuZCBldmVuIGJldHRlciBpZiB0
aGV5IGFyZSB1cCB0byAKPiBkYXRlISA6KSAoaW50ZWxfcmVzZXRfZmluaXNoPyEpCgpJbiB0aGlz
IGNhc2UsIHRoZSBsYXN0IHJlbWFpbmluZyB1c2Ugd2FzIGFjdHVhbGx5IGludGVsX3Jlc2V0X3By
ZXBhcmUsCmFzIHdlIGhhdmUgdG8gZGlzYWJsZSB0aGUgb3ZlcmxheSBiZWZvcmUgZG9pbmcgYSBH
UFUgcmVzZXQuICBJdCdzIGp1c3QKdGhhdCB3ZSBjb3VsZCBoYXZlIG1pdGlnYXRlZCB0aGUgcHJl
cGFyZSwgYnV0IGhhZCBiZWVuIHN0eW1pZWQgYnkgdGhlCmludGVsX3Jlc2V0X2ZpbmlzaCBzdHJ1
Y3RfbXV0ZXggcmVjdXJzaW9uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
