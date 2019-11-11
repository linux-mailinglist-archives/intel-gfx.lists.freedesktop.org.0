Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B29DF72B5
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B2D6E8A8;
	Mon, 11 Nov 2019 11:04:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20016E8A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:04:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19157845-1500050 for multiple; Mon, 11 Nov 2019 11:04:38 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-7-chris@chris-wilson.co.uk>
 <878som65ux.fsf@gaia.fi.intel.com>
In-Reply-To: <878som65ux.fsf@gaia.fi.intel.com>
Message-ID: <157347027385.28106.12299078517436926628@skylake-alporthouse-com>
Date: Mon, 11 Nov 2019 11:04:33 +0000
Subject: Re: [Intel-gfx] [PATCH 07/25] drm/i915: Cancel context if it hangs
 after it is closed
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTExIDEwOjU0OjE0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB3ZSBkZXRlY3Qg
YSBoYW5nIGluIGEgY2xvc2VkIGNvbnRleHQsIGp1c3QgZmx1c2ggYWxsIG9mIGl0cyByZXF1ZXN0
cwo+ID4gYW5kIGNhbmNlbCBhbnkgcmVtYWluaW5nIGV4ZWN1dGlvbiBhbG9uZyB0aGUgY29udGV4
dC4gTm90ZSB0aGF0IGFmdGVyCj4gPiBjbG9zaW5nIHRoZSBjb250ZXh0LCB0aGUgbGFzdCByZWZl
cmVuY2UgdG8gdGhlIGNvbnRleHQgbWF5IGJlIGRyb3BwZWQsCj4gPiBsZWF2aW5nIGl0IG9ubHkg
dmFsaWQgdW5kZXIgUkNVLgo+IAo+IFNvdW5kIGdvb2QuIEJ1dCBpcyB0aGVyZSBhIHdpbmRvdyBm
b3IgdXNlcnNwYWNlIHRvIHN0YXJ0Cj4gdG8gc2VlIC1FSU8gaWYgaXQgcmVzdWJtaXRzIHRvIGEg
Y2xvc2VkIGNvbnRleHQ/CgpVc2Vyc3BhY2UgY2FuIG5vdCBzdWJtaXQgdG8gYSBjbG9zZWQgY29u
dGV4dCAoLUVOT0VOVCkgYXMgdGhhdCB3b3VsZCBiZQp0YW50YW1vdW50IHRvIGEgdXNlLWFmdGVy
LWZyZWUga2VybmVsIGJ1Zy4KIAo+IEluIG90aGVyIHdvcmRzLCBhZnRlciB1c2Vyc3BhY2UgZG9p
bmcgZ2VtX2N0eF9kZXN0cm95KGN0eF9oYW5kbGUpLAo+IHdlIHdvdWxkIHJldHVybiAtRUlOVkFM
IGR1ZSB0byBjdHhfaGFuZGxlIGJlaW5nIHN0YWxlCj4gZWFybGllciB0aGFuIHdlIGNoZWNrIGZv
ciBiYW5uZWQgc3RhdHVzIGFuZCByZXR1cm4gLUVJTz8KCkl0J3MgYXMgc2ltcGxlIGFzIGlmIHRo
ZSBjb250ZXh0IGlzIGNsb3NlZCwgaXQgaXMgcmVtb3ZlZCBmcm9tIHRoZQpmaWxlLT5jb250ZXh0
X2lkciBhbmQgdXNlcnNwYWNlIGNhbm5vdCBhY2Nlc3MgaXQuIElmIHVzZXJzcGFjZSBpcyByYWNp
bmcKd2l0aCBpdHNlbGYsIHRoZXJlJ3Mgbm90IG11Y2ggd2UgY2FuIGRvIG90aGVyIHRoYW4gcHJv
dGVjdCBvdXIKcmVmZXJlbmNlcy4gSWYgdXNlcnNwYWNlIHN1Y2NlZWRzIGluIHN1Ym1pdHRpbmcg
dG8gdGhlIGNvbnRleHQgcHJpb3IgdG8KY2xvc2luZyBpdCBpbiBhbm90aGVyIHRocmVhZCwgaXQg
aGFzIHRoZSBjb250ZXh0IHRvIGNvbnRpbnVlIChhbmQgaWYKdGhlbiBoYW5ncywgaXQgd2lsbCBi
ZSBzaG90IGRvd24gaW1tZWRpYXRlbHkpLiBJZiBpdCBsb3NlcyB0aGF0IHJhY2UsIGl0CmdldHMg
YW4gLUVOT0VOVC4gSWYgaXQgbG9zZXMgdGhhdCByYWNlIHNvIGJhZGx5IHRoZSBjb250ZXh0IGlk
IGlzCnJlcGxhY2UgYnkgYSBuZXcgY29udGV4dCwgaXQgc3VibWl0cyB0byB0aGF0IG5ldyBjb250
ZXh0OyB3aGljaCBzdXJlbHkKd2lsbCBlbmQgaW4gdGVhcnMgYW5kIEdQVSBoYW5ncywgYnV0IG5v
dCBvdXIgZmF1bHQgYW5kIG5vdGhpbmcgd2UgY2FuIGRvCnRvIHByZXZlbnQgdGhhdC4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
