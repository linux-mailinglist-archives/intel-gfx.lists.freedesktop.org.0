Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED24F729A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59206E8A9;
	Mon, 11 Nov 2019 10:58:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EADEC6E8A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:58:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19157732-1500050 for multiple; Mon, 11 Nov 2019 10:58:54 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-3-chris@chris-wilson.co.uk>
 <87blti666z.fsf@gaia.fi.intel.com>
In-Reply-To: <87blti666z.fsf@gaia.fi.intel.com>
Message-ID: <157346993019.28106.16212399260649337062@skylake-alporthouse-com>
Date: Mon, 11 Nov 2019 10:58:50 +0000
Subject: Re: [Intel-gfx] [PATCH 03/25] drm/i915/gem: Update context name on
 closing
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTExIDEwOjQ3OjAwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBVcGRhdGUgdGhlIGNv
bnRleHQubmFtZSBvbiBjbG9zaW5nIHNvIHRoYXQgdGhlIHBlcnNpc3RlbnQgcmVxdWVzdHMgYXJl
Cj4gPiBjbGVhciBpbiBkZWJ1ZyBwcmludHMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIHwgMTggKysrKysrKysrKysrKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+IGluZGV4IDk4Mjc3MGU4MTYz
ZC4uNzJkMzg5YWZhMjhhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwo+ID4gQEAgLTQ2MSwxMSArNDYxLDI5IEBAIHN0YXRpYyB2b2lkIGtp
bGxfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQo+ID4gICAgICAgfQo+ID4g
IH0KPiA+ICAKPiA+ICtzdGF0aWMgdm9pZCBzZXRfY2xvc2VkX25hbWUoc3RydWN0IGk5MTVfZ2Vt
X2NvbnRleHQgKmN0eCkKPiA+ICt7Cj4gPiArICAgICBjaGFyICpzOwo+ID4gKwo+ID4gKyAgICAg
LyogUmVwbGFjZSAnW10nIHdpdGggJzw+JyB0byBpbmRpY2F0ZSBjbG9zZWQgaW4gZGVidWcgcHJp
bnRzICovCj4gPiArCj4gPiArICAgICBzID0gc3RycmNocihjdHgtPm5hbWUsICdbJyk7Cj4gPiAr
ICAgICBpZiAoIXMpCj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsgICAgICpz
ID0gJzwnOwo+ID4gKwo+ID4gKyAgICAgcyA9IHN0cmNocihzICsgMSwgJ10nKTsKPiAKPiBJIGNh
bid0IHRoaW5rIG9mIGEgd2F5IGZvciBzKzEgdG8gYmUgTlVMTCBhcyB0aGUgVEFTS0NPTV9MRU4g
KyA4Cj4gbWFrZXMgdGhlIFtwaWRdIGFwcGVhciBhdCB0aGUgZW5kLgo+IAo+IFdpdGggZXh0ZW5k
aW5nIHRoZSBidWZmZXIsIG9uZSBjb3VsZCBoYXZlIGdvbmUgd2l0aCAKPiArPSAiKGNsb3NlZCki
LiBUbyBiZSBtb3JlIHJlYWRhYmxlLgoKWWVhaCwgW10gdnMgPD4gaXMgc3VidGxlLiBJdCdzIGRl
YnVnIHNvIGlmIHdlIHdhbnQgdG8gbWFrZSBpdCBtb3JlCm9idmlvdXMgbGF0ZXIsIG9yIGVuY29k
ZSBtb3JlIGluZm9ybWF0aW9uIGluIHRoZXJlLCBJIGRvIG5vdCBmb3Jlc2VlCm11Y2ggcHJvYmxl
bSBpbiBkb2luZyBzby4KCj4gQnV0IHdvdWxkIGJsb2F0IHRoZSBidWZmZXIgbW9yZS4KCldoYXQn
cyBhIGZldyBieXRlcyBtb3JlIHdoZW4gd2Ugd2FzdGUgcGFnZXMgcGVyIGNvbnRleHQgOykKIAo+
IFdoaWNoIGxlYWRzIHRvIHRoaW5raW5nIHRoYXQgcGVyaGFwcyB3ZSBzaG91bGQgZ3JhYiBvbmx5
Cj4gdGhlIHRhc2tuYW1lL3BpZCBhbmQgdGhlbiBjb25zdHJ1Y3QgdGhlIG5hbWUgb24gdGhlIGZs
eS4KPiAKPiBUaGF0IG5lZWRzIGJ1ZmZlciBmb3IgY2FsbGVycywgd2hpY2ggbWlnaHQgYmUgbm9u
dHJpdmlhbAo+IGR1ZSB0byB1c2FnZSBvbiBlcnJvciBzaXR1YXRpb25zLgoKRXhhY3RseSwgYW5k
IHdlIGNhbid0IGFsbG9jYXRlIHRoZXJlIGVpdGhlci4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
