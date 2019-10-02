Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80354C8B31
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 16:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B33EF6E061;
	Wed,  2 Oct 2019 14:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AAB6E040
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 14:28:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18694771-1500050 for multiple; Wed, 02 Oct 2019 15:28:13 +0100
MIME-Version: 1.0
To: "Bloomfield, Jon" <jon.bloomfield@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <AD48BB7FB99B174FBCC69E228F58B3B68CE4E0A3@FMSMSX119.amr.corp.intel.com>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
 <20191002112000.12280-21-chris@chris-wilson.co.uk>
 <AD48BB7FB99B174FBCC69E228F58B3B68CE4E0A3@FMSMSX119.amr.corp.intel.com>
Message-ID: <157002648973.1880.13519069431885903204@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 02 Oct 2019 15:28:09 +0100
Subject: Re: [Intel-gfx] [PATCH 21/30] drm/i915: Replace hangcheck by
 heartbeats
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

UXVvdGluZyBCbG9vbWZpZWxkLCBKb24gKDIwMTktMTAtMDIgMTQ6NTU6MzIpCj4gPiAtLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gRnJvbTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBTZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMiwgMjAxOSA0OjIwIEFN
Cj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gQ2M6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgSm9vbmFzIExhaHRpbmVuCj4gPiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT47IFVyc3VsaW4sIFR2cnRrbyA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPjsKPiA+IEJsb29tZmllbGQsIEpvbiA8am9uLmJsb29tZmllbGRAaW50
ZWwuY29tPgo+ID4gU3ViamVjdDogW1BBVENIIDIxLzMwXSBkcm0vaTkxNTogUmVwbGFjZSBoYW5n
Y2hlY2sgYnkgaGVhcnRiZWF0cwo+ID4gCj4gPiBSZXBsYWNlIHNhbXBsaW5nIHRoZSBlbmdpbmUg
c3RhdGUgZXZlcnkgc28gb2Z0ZW4gd2l0aCBhIHBlcmlvZGljCj4gPiBoZWFydGJlYXQgcmVxdWVz
dCB0byBtZWFzdXJlIHRoZSBoZWFsdGggb2YgYW4gZW5naW5lLiBUaGlzIGlzIGNvdXBsZWQKPiA+
IHdpdGggdGhlIGZvcmNlZC1wcmVlbXB0aW9uIHRvIGFsbG93IGxvbmcgcnVubmluZyByZXF1ZXN0
cyB0byBzdXJ2aXZlIHNvCj4gPiBsb25nIGFzIHRoZXkgZG8gbm90IGJsb2NrIG90aGVyIHVzZXJz
Lgo+ID4gCj4gPiBUaGUgaGVhcnRiZWF0IGludGVydmFsIGNhbiBiZSBhZGp1c3RlZCBwZXItZW5n
aW5lIHVzaW5nLAo+ID4gCj4gPiAgICAgICAvc3lzL2NsYXNzL2RybS9jYXJkMC9lbmdpbmUvKi9o
ZWFydGJlYXRfaW50ZXJ2YWxfbXMKPiAKPiBOb3QgdHJ1ZSBmb3IgZGlzY3JldGUgOi0pCj4gCj4g
UGVyaGFwczogL3N5cy9jbGFzcy9kcm0vY2FyZDxuPi9lbmdpbmUvKi9oZWFydGJlYXRfaW50ZXJ2
YWxfbXMKPiBBbmQgYWdhaW4gaW4gdGhlIGNvZGUgYmVsb3cuCgpJIGxlZnQgdGhlIGV4dHJhcG9s
YXRpb24gdG8gdGhlIHVzZXIgLS0gSSB0aG91Z2h0IGl0IHdhcyBjbGVhciBlbm91Z2gKd2l0aG91
dCBzYXlpbmcgY2FyZE4sIGNhcmQ8Tj4sIG9yIGNhcmQ/LiBUaG91Z2ggc2luY2UgaXQncyB1c2lu
ZwpnbG9iaW5nIGluIG9uZSBsb2NhdGlvbiBjYXJkPwotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
