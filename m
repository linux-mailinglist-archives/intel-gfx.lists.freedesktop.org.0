Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A87A562AFF
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 23:33:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6013789B60;
	Mon,  8 Jul 2019 21:33:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62B8D89B60
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 21:33:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17175348-1500050 for multiple; Mon, 08 Jul 2019 22:16:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190705124325.14270-1-chris@chris-wilson.co.uk>
 <20190705124325.14270-2-chris@chris-wilson.co.uk>
 <ad7ddb7012dcab894ab70de28f7d4794daacd884.camel@intel.com>
In-Reply-To: <ad7ddb7012dcab894ab70de28f7d4794daacd884.camel@intel.com>
Message-ID: <156262061017.9375.13213041843548215775@skylake-alporthouse-com>
Date: Mon, 08 Jul 2019 22:16:50 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Remove presumption of RCS0
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

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMDctMDggMjI6MTE6MTUpCj4gT24gRnJpLCAy
MDE5LTA3LTA1IGF0IDEzOjQzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBub3cg
dHJhY2sgZmVhdHVyZXMgY29ycmVjdGx5IGluc3RlYWQgb2YgcHJvYmluZyBpOTE1LT5lbmdpbmVb
UkNTMF0KPiA+IHdoaWNoIGlzIG11Y2ggbW9yZSBmbGV4aWJsZSBhbmQgYXZvaWRzIGFueSBuYXN0
eSBzdXJwcmlzZXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYyB8IDYgLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdp
bmVfY3MuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+
ID4gaW5kZXggZGY1OTMyZjVmNTc4Li5iZGYyNzlmYTNiMmUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPiA+IEBAIC00NDgsMTIgKzQ0OCw2IEBA
IGludCBpbnRlbF9lbmdpbmVzX2luaXRfbW1pbyhzdHJ1Y3QKPiA+IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gPiAgICAgICBpZiAoV0FSTl9PTihtYXNrICE9IGVuZ2luZV9tYXNrKSkKPiA+ICAg
ICAgICAgICAgICAgZGV2aWNlX2luZm8tPmVuZ2luZV9tYXNrID0gbWFzazsKPiA+ICAKPiA+IC0g
ICAgIC8qIFdlIGFsd2F5cyBwcmVzdW1lIHdlIGhhdmUgYXQgbGVhc3QgUkNTIGF2YWlsYWJsZSBm
b3IgbGF0ZXIKPiA+IHByb2JpbmcgKi8KPiA+IC0gICAgIGlmIChXQVJOX09OKCFIQVNfRU5HSU5F
KGk5MTUsIFJDUzApKSkgewo+ID4gLSAgICAgICAgICAgICBlcnIgPSAtRU5PREVWOwo+ID4gLSAg
ICAgICAgICAgICBnb3RvIGNsZWFudXA7Cj4gPiAtICAgICB9Cj4gPiAtCj4gCj4gSnVzdCBnb2lu
ZyBieSB0aGUgc2VyaWVzIGhlcmUsIHdlIGhhdmUgcXVpdGUgYSBmZXcgb3RoZXIgcGxhY2Ugd2Ug
YXJlCj4gdG91Y2hpbmcgUkNTMCBzcGVjaWZpY2FsbHkgZHVyaW5nIGRyaXZlciBsb2FkLiBEbyB3
ZSByZWFsbHkgd2FudCB0byBnZXQKPiByaWQgb2YgdGhpcz8gT3IgaXMgdGhlcmUgYW4gYWx0ZXJu
YXRpdmUgaWYgUkNTMCBpc24ndCBwcmVzZW50IGZvciBzb21lCj4gcmVhc29uPwoKT3V0c2lkZSBv
ZiBndnQvICh3aGljaCBJIGRvbid0IGRhcmUgdG8gdHJ5IGFuZCB2ZXJpZnkpLCB0aGUgb25seSBw
bGFjZXMKd2hlcmUgd2Ugbm93IG1lbnRpb24gUkNTMCBhcmUgaW4gZGlyZWN0IGh3IG1hcHBpbmdz
IHRvIHRoYXQgZW5naW5lCihlLmcuIGludGVycnVwdHMgYW5kIG1taW8gc2V0dXApLiBbRXhjbHVk
aW5nIHNlbGZ0ZXN0cy8gd2hpY2ggYXJlIG1vc3RseQpjb252ZXJ0ZWQgYW5kIHJlYWxseSBqdXN0
IGEgbWF0dGVyIG9mIGdlbmVyYWxpc2luZyBpZiBhcHBsaWNhYmxlIG9yCm1hcmtpbmcgYXMgIm5v
IHJlYWxseSwgdGhpcyBvbmx5IGFwcGxpZXMgdG8gUkNTMCIuXSBBc3N1bWluZyB0aGUgb3RoZXIK
Y291cGxlIG9mIHBhdGNoZXMgYWxzbyBsYW5kLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
