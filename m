Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDE6E8C89
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:17:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EF266E446;
	Tue, 29 Oct 2019 16:17:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A9F76E450
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:17:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19009173-1500050 for multiple; Tue, 29 Oct 2019 16:17:05 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191029091632.26281-1-chris@chris-wilson.co.uk>
 <877e4nleep.fsf@gaia.fi.intel.com>
In-Reply-To: <877e4nleep.fsf@gaia.fi.intel.com>
Message-ID: <157236582330.2489.3654926986106606516@skylake-alporthouse-com>
Date: Tue, 29 Oct 2019 16:17:03 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Make timeslice duration
 configurable
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTI5IDE2OjExOjU4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBFeGVjbGlzdHMgdXNl
cyBhIHNjaGVkdWxpbmcgcXVhbnR1bSAoYSB0aW1lc2xpY2UpIHRvIGFsdGVybmF0ZSBleGVjdXRp
b24KPiA+IGJldHdlZW4gcmVhZHktdG8tcnVuIGNvbnRleHRzIG9mIGVxdWFsIHByaW9yaXR5LiBU
aGlzIGVuc3VyZXMgdGhhdCBhbGwKPiA+IHVzZXJzICh0aG91Z2ggb25seSBpZiB0aGV5IG9mIGVx
dWFsIGltcG9ydGFuY2UpIGhhdmUgdGhlIG9wcG9ydHVuaXR5IHRvCj4gPiBydW4gYW5kIHByZXZl
bnRzIGxpdmVsb2NrcyB3aGVyZSBjb250ZXh0cyBtYXkgaGF2ZSBpbXBsaWNpdCBvcmRlcmluZyBk
dWUKPiA+IHRvIHVzZXJzcGFjZSBzZW1hcGhvcmVzLiBIb3dldmVyLCBub3QgYWxsIHdvcmtsb2Fk
cyBuZWNlc3NhcmlseSBiZW5lZml0Cj4gPiBmcm9tIHRpbWVzbGljaW5nIGFuZCBpbiB0aGUgZXh0
cmVtZSBzb21lIHN5c2FkbWluIG1heSB3YW50IHRvIGRpc2FibGUgb3IKPiA+IHJlZHVjZSB0aGUg
dGltZXNsaWNpbmcgZ3JhbnVsYXJpdHkuCj4gPgo+ID4gVGhlIHRpbWVzbGljaW5nIG1lY2hhbmlz
bSBjYW4gYmUgY29tcGlsZWQgb3V0IHdpdGgKPiAKPiBzL2NvbXBpbGVkL2Rpc2FibGVkCgpCZWhv
bGQgdGhlIHBvd2VyIG9mIERDRSA6KQogCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmUuaAo+ID4gaW5kZXggYzY4OTU5MzhiNjI2Li4wNTk3Yjc3ZjU4MTggMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKPiA+IEBAIC0zMzUsNCArMzM1LDEz
IEBAIGludGVsX2VuZ2luZV9oYXNfcHJlZW1wdF9yZXNldChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCj4gPiAgICAgICByZXR1cm4gaW50ZWxfZW5naW5lX2hhc19wcmVlbXB0
aW9uKGVuZ2luZSk7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbAo+ID4gK2lu
dGVsX2VuZ2luZV9oYXNfdGltZXNsaWNlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCj4gPiArewo+ID4gKyAgICAgaWYgKCFDT05GSUdfRFJNX0k5MTVfVElNRVNMSUNFX0RV
UkFUSU9OKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsKPiBzLzAvZmFsc2U7CgpUcnVlLgoK
PiA+IC1zdGF0aWMgYm9vbAo+ID4gLWVuYWJsZV90aW1lc2xpY2UoY29uc3Qgc3RydWN0IGludGVs
X2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKPiA+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVk
IGxvbmcKPiA+ICt0aW1lc2xpY2UoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQo+IAo+IGNvdWxkIGJlIHRpbWVzbGljZV9kdXJhdGlvbiwgYnV0IG5vdCBpbnNpc3RpbmcKCkkg
d2FzIGNvdW50aW5nIHRoZSBjaGFyYWN0ZXJzIGlpcmMuLi4KCj4gPiAgc3RhdGljIHZvaWQgcmVj
b3JkX3ByZWVtcHRpb24oc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykK
PiA+IEBAIC0xNjY3LDggKzE2ODQsOSBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVxdWV1ZShz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgKi8KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGlmICghZXhlY2xp
c3RzLT50aW1lci5leHBpcmVzICYmCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbmVlZF90aW1lc2xpY2UoZW5naW5lLCBsYXN0KSkKPiA+IC0gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgbW9kX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyLAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgamlmZmllcyArIDEpOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZXRfdGltZXJfbXMoJmV4
ZWNsaXN0cy0+dGltZXIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB0aW1lc2xpY2UoZW5naW5lKSk7Cgp0byBmaXQgaXQgdGhlcmUgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtXgoKPiAKPiAKPiBJIHRyaXBwZWQgaW50
byB0aGUgaGlkZGVuIGNhbmNlbGxhdGlvbiBpbiBoZXJlLiBOb3QgdGhhdCBpdAo+IHdvdWxkIGhh
cHBlbi4gU3RpbGwgdXBzZXQgSSBhbSBvZiB0aGlzIHNldF90aW1lcl9tcyh0aW1lciwgMCkKCkhl
aCwgSSB0aG91Z2h0IEkgaGFkIHNhdmVkIHNvbWUgdHJvdWJsZSBieSBjZW50cmFsaXNpbmcgYWxs
IHRoZQpkZWxfdGltZXIsIG1zZWNzX3RvX2ppZmZpZXMsIG1vZF90aW1lciBldGMgOikKLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
