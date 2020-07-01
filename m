Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A00BF210EEC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C378C6E929;
	Wed,  1 Jul 2020 15:18:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7186E929
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:18:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21677168-1500050 for multiple; Wed, 01 Jul 2020 16:17:56 +0100
MIME-Version: 1.0
In-Reply-To: <20200701150721.423630-1-michal@hardline.pl>
References: <20200701150721.423630-1-michal@hardline.pl>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2020 16:17:57 +0100
Message-ID: <159361667722.23379.11112968827469591639@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reboot CI if we get wedged during
 driver init
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Michał Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wMSAxNjowNzoyMSkKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gCj4gR2V0dGlu
ZyB3ZWRnZWQgZGV2aWNlIG9uIGRyaXZlciBpbml0IGlzIHByZXR0eSBtdWNoIHVucmVjb3ZlcmFi
bGUuCj4gU2luY2Ugd2UncmUgcnVubmluZyB2ZXJpb3VzIHNjZW5hcmlvcyB0aGF0IG1heSBwb3Rl
bnRpYWxseSBoaXQgdGhpcyBpbgo+IENJIChtb2R1bGUgcmVsb2FkIC8gc2VsZnRlc3RzIC8gaG90
dW5wbHVnKSwgYW5kIGlmIGl0IGhhcHBlbnMsIGl0IG1lYW5zCj4gdGhhdCB3ZSBjYW4ndCB0cnVz
dCBhbnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKPiB0
YWludCB0byBsZXQgdGhlIENJIGtub3cgdGhhdCBpdCBzaG91bGQgcmVib290IChDSSBjaGVja3Mg
dGFpbnQgYmV0d2Vlbgo+IHRlc3QgcnVucykuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBX
aW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0
dmFsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMgfCAyICsrCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiBpbmRleCAwMTU2ZjFmNWM3MzYuLmQyN2U4
YmI3ZDU1MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNl
dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+IEBAIC0x
MzYwLDYgKzEzNjAsOCBAQCB2b2lkIGludGVsX2d0X3NldF93ZWRnZWRfb25faW5pdChzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQo+ICAgICAgICAgICAgICAgICAgICAgIEk5MTVfV0VER0VEX09OX0lOSVQp
Owo+ICAgICAgICAgaW50ZWxfZ3Rfc2V0X3dlZGdlZChndCk7Cj4gICAgICAgICBzZXRfYml0KEk5
MTVfV0VER0VEX09OX0lOSVQsICZndC0+cmVzZXQuZmxhZ3MpOwo+ICsKCkFoLCB3ZSBkb24ndCBz
YXkgYXJvdW5kIGhlcmUgdGhhdCB0aGlzIFdFREdFRF9PTl9JTklUIGlzIG5vbi1yZWNvdmVyYWJs
ZSwKY291bGQgeW91IHBsZWFzZSBhZGQgYSBjb21tZW50IHRvIHRoYXQgZWZmZWN0PwoKPiArICAg
ICAgIGFkZF90YWludF9mb3JfQ0koVEFJTlRfV0FSTik7Cj4gIH0KPiAgCj4gIHZvaWQgaW50ZWxf
Z3RfaW5pdF9yZXNldChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+IC0tIAo+IDIuMjcuMAo+Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
