Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E98F050580
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 11:18:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A13108918D;
	Mon, 24 Jun 2019 09:18:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C14E8918D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 09:18:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17002621-1500050 for multiple; Mon, 24 Jun 2019 10:18:03 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
 <87mui75p8r.fsf@gaia.fi.intel.com>
In-Reply-To: <87mui75p8r.fsf@gaia.fi.intel.com>
Message-ID: <156136787988.15678.9866740483242300072@skylake-alporthouse-com>
Date: Mon, 24 Jun 2019 10:17:59 +0100
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/execlists: Always clear
 ring_pause if we do not submit
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI0IDEwOjAzOjQ4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJbiB0aGUgdW5saWtl
bHkgY2FzZSAodGhhbmsgeW91IENJISksIHdlIG1heSBmaW5kIG91cnNlbHZlcyB3YW50aW5nIHRv
Cj4gPiBpc3N1ZSBhIHByZWVtcHRpb24gYnV0IGhhdmluZyBubyBydW5uYWJsZSByZXF1ZXN0cyBs
ZWZ0LiBJbiB0aGlzIGNhc2UsCj4gPiB3ZSBzZXQgdGhlIHNlbWFwaG9yZSBiZWZvcmUgY29tcHV0
aW5nIHRoZSBwcmVlbXB0aW9uIGFuZCBzbyBtdXN0IHVuc2V0Cj4gPiBpdCBiZWZvcmUgZm9yZ2V0
dGluZyAob3IgZWxzZSB3ZSBsZWF2ZSB0aGUgbWFjaGluZSBidXN5d2FpdGluZyB1bnRpbCB0aGUK
PiA+IG5leHQgcmVxdWVzdCBjb21lcyBhbG9uZyBhbmQgc28gbGlrZWx5IGhhbmcpLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA5ICsrKysr
KysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gaW5kZXggYzhhMGM5YjMy
NzY0Li5lZmNjYzMxODg3ZGUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiA+IEBAIC0yMzMsMTMgKzIzMywxOCBAQCBzdGF0aWMgaW5saW5lIHUzMiBpbnRlbF9od3Nf
cHJlZW1wdF9hZGRyZXNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICBzdGF0
aWMgaW5saW5lIHZvaWQKPiA+ICByaW5nX3NldF9wYXVzZWQoY29uc3Qgc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBpbnQgc3RhdGUpCj4gPiAgewo+ID4gKyAgICAgdTMyICpzZW1hID0g
JmVuZ2luZS0+c3RhdHVzX3BhZ2UuYWRkcltJOTE1X0dFTV9IV1NfUFJFRU1QVF07Cj4gPiArCj4g
PiArICAgICBpZiAoKnNlbWEgPT0gc3RhdGUpCj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+
ICsKPiAKPiBTbyB5b3Ugd2FudCB0byBhdm9pZCB1c2VsZXNzIHdtYiwgYXMgSSBkb24ndCBzZWUg
b3RoZXIKPiBiZW5lZml0LiBNYWtlcyB0aGlzIGxvb2sgc3VzcGljaW91c2x5IHJhY3kgYnV0IHNl
ZW1zCj4gdG8gYmUganVzdCBteSB1c3VhbCBwYXJhbm9pYS4KCkluc3RlYWQgb2YgdGhlIHJlYWRi
YWNrLAoJaWYgKHN0YXRlKQoJCXdtYigpOwp3b3VsZCBhbHNvIHdvcmssIGlmIHdlIGRpdGNoIG9u
ZSBoYWxmIHRoZSBwYXJhbm9pYS4gVGhhdCdzIGJldHRlci4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
