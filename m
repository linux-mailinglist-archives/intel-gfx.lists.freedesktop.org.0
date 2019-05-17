Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B7621C2C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 19:04:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2A189933;
	Fri, 17 May 2019 17:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAB0989933
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 17:04:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16592481-1500050 for multiple; Fri, 17 May 2019 18:04:10 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z1x09rdcxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
 <20190517162227.6436-8-michal.wajdeczko@intel.com>
 <155811046421.826.15844367297246569999@skylake-alporthouse-com>
 <op.z1x09rdcxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <155811264831.1890.3296575520875753956@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 17 May 2019 18:04:08 +0100
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915/uc: Don't forget to prepare
 GuC for the reset
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTE3IDE3OjU0OjUzKQo+IE9uIEZyaSwg
MTcgTWF5IDIwMTkgMTg6Mjc6NDQgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDUtMTcgMTc6MjI6MjcpCj4gPj4gV2hlbiB3ZSByZXNldCBlbmdpbmVzIHVzaW5nIEFMTF9F
TkdJTkVTIG1hc2ssIHdlIHdpbGwgZG8KPiA+PiBmdWxsIEdQVSByZXNldCBhbmQgR3VDIHdpbGwg
YmUgYWxzbyBhZmZlY3RlZC4gTGV0IEd1QyBiZQo+ID4+IHByZXBhcmVkIGZvciB1cGNvbWluZyBy
ZXNldC4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53
YWpkZWN6a29AaW50ZWwuY29tPgo+ID4+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiA+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJh
b2xvc3B1cmlvQGludGVsLmNvbT4KPiA+PiAtLS0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmVzZXQuYyB8IDQgKysrKwo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYyAgCj4gPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
Cj4gPj4gaW5kZXggNDY0MzY5YmM1NWFkLi5jYTZlNDBiNmI0ZTIgMTAwNjQ0Cj4gPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+PiBAQCAtNTY0LDYgKzU2NCwxMCBAQCBz
dGF0aWMgaW50IGdlbjhfcmVzZXRfZW5naW5lcyhzdHJ1Y3QgIAo+ID4+IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUsCj4gPj4gICAgICAgICAgICAgICAgICAqLwo+ID4+ICAgICAgICAgfQo+ID4+Cj4g
Pj4gKyAgICAgICAvKiBXZSBhcmUgYWJvdXQgdG8gZG8gZnVsbCBHUFUgcmVzZXQsIGRvbid0IGZv
cmdldCBhYm91dCBHdUMgKi8KPiA+PiArICAgICAgIGlmIChlbmdpbmVfbWFzayA9PSBBTExfRU5H
SU5FUykKPiA+PiArICAgICAgICAgICAgICAgaW50ZWxfdWNfcmVzZXRfcHJlcGFyZShpOTE1KTsK
PiA+Cj4gPiBFaCwgdGhpcyBpcyBkb25lIGluIHJlc2V0X3ByZXBhcmUgYWxyZWFkeS4gVGhlIG9u
bHkgb3RoZXIgcGF0aCB0byBjYWxsCj4gPiBpbnRlbF9ncHVfcmVzZXQoKSBkaXJlY3RseSBpcyBh
bG9uZyBzYW5pdGl6YXRpb24sIHdoaWNoIHNob3VsZCBhbHNvIGhhdmUKPiA+IGFscmVhZHkgc2Fu
aXRpemVkIHRoZSBndWMgYXMgd2VsbC4gTm8/Cj4gCj4gVGhlcmUgaXMgaWd0X2F0b21pY19yZXNl
dCBzZWxmdGVzdCB3aGljaCBkb2VzIG5vdCBjYWxsIHJlc2V0X3ByZXBhcmUuCj4gQW5kIHNpbmNl
IHdlIGxvc3QgR3VDIGluIGdlbjZfcmVzZXRfZW5naW5lcyBkdWUgdG8gR0VONl9HUkRPTV9GVUxM
LAo+IG91ciBsYXRlciBncmFjZWZ1bCBnb29kYnllIHdpdGggR3VDIHdhcyBub3Qgd29ya2luZy4K
CihBcG9sb2dpZXMgaWYgcmVzZW50LikKCkFoLCBzbyB0aGUgaW50ZW50IHRoZXJlIHdhcyB0byBw
cmV2ZW50IHNsZWVwcyBzbGlwcGluZyBpbnRvIHRoZQpkZXZpY2UtbGV2ZWwgcmVzZXQgKHNvIHRo
YXQgd2UgY291bGQgcHVsbCBpdCB1bmRlciBhIGhlYXZ5IGhhbW1lciBsaWtlCnN0b3BfbWFjaGlu
ZSgpIHRvIHNlcmlhbGlzZSB0aGUgcmVzZXQgd2l0aCBkaXJlY3QgdXNlciBhY2Nlc3MpLiBBdCBv
bmUKcG9pbnQsIEkgaG9wZWQgd2UgY291bGQgbWFrZSBpOTE1X3Jlc2V0KCkgY29tcGxldGVseSBm
YXN0IGFuZCBsb2NrbGVzcywKYnV0IHRoYXQgd2FzIGEgZmxlZXRpbmcgZmFuY3kuCgpJdCBsb29r
cyByZWFzb25hYmxlIHRvIHB1dCB0aGF0IHVuZGVyIGEgcmVzZXRfcHJlcGFyZS9yZXNldF9maW5p
c2ggYW5kCmtlZXAgdGhlIHRlc3Qgc2VtYW50aWNzLiBUaGF0IHdvdWxkIGFsc28gbWVhbiB3ZSBo
YXZlIHRvIG1vdmUgaXQgb3V0IG9mCnRoZSBpbmNyZWFzaW5nbHkgbWlzbmFtZWQgc2VsZnRlc3Rf
aGFuZ2NoZWNrLmMgaW50byBhIHNlbGZ0ZXN0X3Jlc2V0LmMKLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
