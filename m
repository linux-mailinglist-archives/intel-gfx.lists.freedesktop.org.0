Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CCC795A9
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 21:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AEC6E1D3;
	Mon, 29 Jul 2019 19:45:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3396A6E1D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 19:45:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17709191-1500050 for multiple; Mon, 29 Jul 2019 20:45:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729152301.22588-1-michal.wajdeczko@intel.com>
 <20190729152301.22588-2-michal.wajdeczko@intel.com>
 <68fcfb3c-6558-3c03-b519-8eae3453ce5c@intel.com>
In-Reply-To: <68fcfb3c-6558-3c03-b519-8eae3453ce5c@intel.com>
Message-ID: <156442950927.6373.13671285812756694712@skylake-alporthouse-com>
Date: Mon, 29 Jul 2019 20:45:09 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Report -ENODEV after
 injecting probe failure
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA3LTI5IDE4OjU0OjE1KQo+IAo+
IAo+IE9uIDcvMjkvMTkgODoyMiBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiA+IFdlIHdh
bnQgdG8gZG8gbW9yZSBkcml2ZXIgdGVzdGluZyB1c2luZyBpbmplY3RlZCBsb2FkIGVycm9ycywK
PiA+IGJ1dCB3ZSBkb24ndCB3YW50IHRvIGxpbWl0IG91cnNlbHZlcyB0byB1c2Ugb25seSAtRU5P
REVWIChhcwo+ID4gb3RoZXIgZXJyb3JzIGFyZSBpbnRlcnByZXRlZCBhcyByZWFsIGlzc3Vlcywg
bGlrZSB0aGlzOgo+ID4gCj4gPiA8ND4gWzM4MS41Njk0NzldIGk5MTU6IHByb2JlIG9mIDAwMDA6
MDA6MDIuMCBmYWlsZWQgd2l0aCBlcnJvciAtNwo+ID4gCj4gPiBTdWdnZXN0ZWQtYnk6IERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KPiA+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPgo+IAo+IElJUkMgdGhlIGZpbmFsIG91dGNvbWUgb2YgdGhlIGRpc2N1c3Npb24g
d2UgaGFkIG9uIHRoaXMgYSB3aGlsZSBiYWNrIHdhcyAKPiB0aGF0IENJIHdvdWxkIGlnbm9yZSB0
aGlzIGtpbmQgb2YgZXJyb3IgbWVzc2FnZS4gQW55dGhpbmcgY2hhbmdlZD8gV2UgCj4gYWxyZWFk
eSBoYXZlIHBsYWNlcyB3ZSByZXR1cm4gc29tZXRoaW5nIGRpZmZlcmVudCBmcm9tIC1FTk9ERVYg
KGUuZy4gCj4gX19md19kb21haW5faW5pdCgpIGluIGludGVsX3VuY29yZS5jKQoKSWYgaXQgd2Fz
IG9ubHkgYSBub3RlLCBpdCB3b3VsZCBiZSBuYXR1cmFsbHkgaWdub3JlZC4uLiBXZSBjb3VsZCBz
aW1wbHkKbWFrZSBpdCBhIG5vdGljZSBhbmQganVzdGlmeSBhcyB0aGUgYmFzZSByZWFsbHkgZG9l
c24ndCBrbm93IGhvdyBzZXZlcmUKdGhlIGVycm9yIGlzLCBqdXN0IHRoYXQgdGhlIHByb2JlIGZh
aWxlZDoKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Jhc2UvZGQuYyBiL2RyaXZlcnMvYmFzZS9kZC5j
CmluZGV4IDk5NGE5MDc0NzQyMC4uODc3NzM1ZjJkZmQ0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2Jh
c2UvZGQuYworKysgYi9kcml2ZXJzL2Jhc2UvZGQuYwpAQCAtNjEzLDcgKzYxMyw3IEBAIHN0YXRp
YyBpbnQgcmVhbGx5X3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IGRldmljZV9kcml2
ZXIgKmRydikKICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgIGRlZmF1bHQ6CiAgICAgICAg
ICAgICAgICAvKiBkcml2ZXIgbWF0Y2hlZCBidXQgdGhlIHByb2JlIGZhaWxlZCAqLwotICAgICAg
ICAgICAgICAgcHJpbnRrKEtFUk5fV0FSTklORworICAgICAgICAgICAgICAgcHJpbnRrKEtFUk5f
Tk9USUNFCiAgICAgICAgICAgICAgICAgICAgICAgIiVzOiBwcm9iZSBvZiAlcyBmYWlsZWQgd2l0
aCBlcnJvciAlZFxuIiwKICAgICAgICAgICAgICAgICAgICAgICBkcnYtPm5hbWUsIGRldl9uYW1l
KGRldiksIHJldCk7CiAgICAgICAgfQoKPiAKPiBEYW5pZWxlCj4gCj4gPiAtLS0KPiA+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8IDIgKy0KPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYwo+ID4gaW5kZXggYmQ5MjExYjNkNzZlLi4zMzI5NDljMjBhMjkgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCj4gPiBAQCAtOTU2LDcgKzk1Niw3IEBAIHN0YXRpYyBpbnQgaTkx
NV9wY2lfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2aWNl
X2lkICplbnQpCj4gPiAgIAo+ID4gICAgICAgZXJyID0gaTkxNV9kcml2ZXJfcHJvYmUocGRldiwg
ZW50KTsKPiA+ICAgICAgIGlmIChlcnIpCj4gPiAtICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4g
PiArICAgICAgICAgICAgIHJldHVybiBpOTE1X2Vycm9yX2luamVjdGVkKCkgPyAtRU5PREVWIDog
ZXJyOwo+ID4gICAKPiA+ICAgICAgIGlmIChpOTE1X2luamVjdF9wcm9iZV9mYWlsdXJlKCkpIHsK
PiA+ICAgICAgICAgICAgICAgaTkxNV9wY2lfcmVtb3ZlKHBkZXYpOwo+ID4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
