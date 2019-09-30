Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFADFC2061
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 14:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8729F89FF7;
	Mon, 30 Sep 2019 12:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3062D89FF7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 12:10:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18666392-1500050 for multiple; Mon, 30 Sep 2019 13:09:58 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8736gem1p2.fsf@gaia.fi.intel.com>
References: <20190928100145.13165-1-chris@chris-wilson.co.uk>
 <20190930091135.11971-1-chris@chris-wilson.co.uk>
 <8736gem1p2.fsf@gaia.fi.intel.com>
Message-ID: <156984539265.1880.5836465553787026204@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 30 Sep 2019 13:09:52 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Magic interrupt shadow to
 relieve some random lockups
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTMwIDEzOjAyOjQ5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBNeSBjdXJyZW50IHRo
ZW9yeSBpcyB0aGF0IHRoaXMgbWFza3MgaW50ZXJydXB0IGRlbGl2ZXJ5IHRvIHRoZSBsb2NhbCBD
UFUKPiA+IGR1cmluZyBhIGNyaXRpY2FsIHBoYXNlLiBQdXJlbHkgcGFwZXJpbmcgb3ZlciB0aGUg
c3ltcHRvbXMgd2l0aCBhIGRlbGF5Cj4gPiBwbHVja2VkIG91dCBvZiB0aGluIGFpciBmcm9tIHRl
c3Rpbmcgb24gdGdsMS1nZW0sIHJlZmluZWQgc2xpZ2h0bHkgYnkKPiA+IGp1c3Qgd2FpdGluZyBm
b3IgdGhlIG5leHQgYWNrICh0aG91Z2ggdGVjaG5pY2FsbHkgdGhlIG5leHQgQ1MgZXZlbnQgbWF5
Cj4gPiBub3QgYmUgdGhlIGNvcnJlc3BvbmRpbmcgZXZlbnQgZm9yIHRoaXMgc3VibWl0LCBidXQg
YW4gaW50ZXJtZWRpYXRlCj4gPiBjb21wbGV0aW9uKS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBBbmRpIFNoeXRpIDxh
bmRpLnNoeXRpQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIHwgOSArKysrKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRp
b25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IGluZGV4IGFi
NzI1YTZjYTBhYy4uMzU0MTBkNjQ3YjUyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gPiBAQCAtMTE1NSw2ICsxMTU1LDcgQEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQo
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cywKPiA+ICBzdGF0
aWMgdm9pZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVu
Z2luZSkKPiA+ICB7Cj4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhl
Y2xpc3RzID0gJmVuZ2luZS0+ZXhlY2xpc3RzOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IHRhaWwg
PSBSRUFEX09OQ0UoKmV4ZWNsaXN0cy0+Y3NiX3dyaXRlKTsKPiA+ICAgICAgIHVuc2lnbmVkIGlu
dCBuOwo+ID4gIAo+ID4gICAgICAgR0VNX0JVR19PTighYXNzZXJ0X3BlbmRpbmdfdmFsaWQoZXhl
Y2xpc3RzLCAic3VibWl0IikpOwo+ID4gQEAgLTExODYsNiArMTE4NywxNCBAQCBzdGF0aWMgdm9p
ZCBleGVjbGlzdHNfc3VibWl0X3BvcnRzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
PiA+ICAgICAgIC8qIHdlIG5lZWQgdG8gbWFudWFsbHkgbG9hZCB0aGUgc3VibWl0IHF1ZXVlICov
Cj4gPiAgICAgICBpZiAoZXhlY2xpc3RzLT5jdHJsX3JlZykKPiA+ICAgICAgICAgICAgICAgd3Jp
dGVsKEVMX0NUUkxfTE9BRCwgZXhlY2xpc3RzLT5jdHJsX3JlZyk7Cj4gPiArCj4gCj4gSSBkb24n
dCBkb3VidCB3ZSBmb3JnZXQgdGhpcyBidXQgYSBjb21tZW50IHdvdWxkIHN0aWxsIGJlCj4gZ29v
ZCB0aGF0IHdlIGxpbWl0IHRoZSBpbnRyIGdlbmVyYXRpb24gZm9yIHJlYXNvbnMgc3RpbGwKPiB1
bmtub3duLgo+IAo+ID4gKyAgICAgaWYgKElTX1RJR0VSTEFLRShlbmdpbmUtPmk5MTUpKSB7Cj4g
PiArICAgICAgICAgICAgIHU2NCBzdGFydCA9IGxvY2FsX2Nsb2NrKCk7Cj4gPiArICAgICAgICAg
ICAgIGRvCj4gPiArICAgICAgICAgICAgICAgICAgICAgY3B1X3JlbGF4KCk7Cj4gPiArICAgICAg
ICAgICAgIHdoaWxlICh0YWlsID09IFJFQURfT05DRSgqZXhlY2xpc3RzLT5jc2Jfd3JpdGUpICYm
Cj4gPiArICAgICAgICAgICAgICAgICAgICAobG9jYWxfY2xvY2soKSAtIHN0YXJ0KSA+PiAyMCA9
PSAwKTsKPiAKPiAxbXMuLndlbGwsIGlmIGl0IHdvcmtzIDpPCj4gCj4gTmVlZCB0byB0cmFjayB0
aGlzIGNsb3NlbHkgYW5kIHBscyBjb25zaWRlciBsaW1pdGluZyB0aGlzIHRvIGN1cnJlbnQgcmV2
aWQKPiBqdXN0IHNvIHRoYXQgd2Ugd291bGQgbm90aWNlIHRoZSBkaWZmIGltbWVkaWF0ZWx5IHdo
ZW4gd2UgZ2V0IHVwZGF0ZXMuCj4gCj4gQWNrZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgoKWWVhaCwgdGhpcyBvbmUgSSdtIG5vdCBzbyBrZWVuIHRv
IHB1dCBpbiBkcm0taW50ZWwtbmV4dC1xdWV1ZWQgaXRzZWxmLgpJdCdzIGNsZWFyIHRoYXQgd2Ug
YXJlIG5vdCBwcnVuaW5nIGZlYXR1cmVzIHRvIGFjaGlldmUgYSBzdGFibGUgYmFzZSwKYnV0IG5v
dyBpbnRvIHRoZSBoYXggdGVycml0b3J5LgoKSWYgcG9zc2libGUsIHdlJ2xsIGdldCBhIHRvcGlj
L3RnbC1zbmFmdSBicmFuY2ggd2hlcmUgd2UgY2FuIHNvYWsgdGVzdApzdWNoIGhheCBvbiBDSS4g
QnV0IGZhaWxpbmcgdGhhdCwgSSdsbCB0cnkgc29ha2luZyBpdCBpbiBjb3JlLWZvci1DSSAtLQpv
bmNlIHRoYXQgaXMgcmViYXNlZCBvbiB0byB2NS40LXJjMS4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
