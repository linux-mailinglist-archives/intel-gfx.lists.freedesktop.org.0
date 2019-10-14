Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7F4D5ED4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851036E200;
	Mon, 14 Oct 2019 09:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCB6C6E200
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:28:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18828988-1500050 for multiple; Mon, 14 Oct 2019 10:28:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191013193115.16844-1-chris@chris-wilson.co.uk>
 <15bcf769-999a-20bc-6884-af74c731b6b7@linux.intel.com>
In-Reply-To: <15bcf769-999a-20bc-6884-af74c731b6b7@linux.intel.com>
Message-ID: <157104527935.18859.15288695469053949608@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 10:27:59 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMDoyNTowNCkKPiAKPiBPbiAxMy8x
MC8yMDE5IDIwOjMxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSByZWx5IG9uIG9ubHkgdGhl
IHRhc2tsZXQgYmVpbmcgYWxsb3dlZCB0byBjYWxsIGludG8gcHJvY2Vzc19jc2IoKSwgc28KPiA+
IGFzc2VydCB0aGF0IGlzIGxvY2tlZCB3aGVuIHdlIGRvLiBBcyB0aGUgdGFza2xldCB1c2VzIGEg
c2ltcGxlIGJpdGxvY2ssCj4gPiB0aGVyZSBpcyBubyBzdHJvbmcgbG9ja2RlcCBjaGVja2luZyBz
byB3ZSBtdXN0IG1ha2UgZG8gd2l0aCBhIHBsYWluCj4gPiBhc3NlcnRpb24gdGhhdCB0aGUgdGFz
a2xldCBpcyBydW5uaW5nIGFuZCBhc3N1bWUgdGhhdCB3ZSBhcmUgdGhlCj4gPiB0YXNrbGV0IQo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+
ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMSArCj4g
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggICAgIHwgNSArKysrKwo+ID4gICAy
IGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+ID4gaW5kZXggOGJlOWU2OWQ1NzE4Li5hYjIwNDMzMTgyZDEgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0xOTg0LDYgKzE5ODQs
NyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpCj4gPiAgICAgICB1OCBoZWFkLCB0YWlsOwo+ID4gICAKPiA+ICAgICAgIEdFTV9CVUdfT04o
VVNFU19HVUNfU1VCTUlTU0lPTihlbmdpbmUtPmk5MTUpKTsKPiA+ICsgICAgIEdFTV9CVUdfT04o
IXRhc2tsZXRfaXNfbG9ja2VkKCZleGVjbGlzdHMtPnRhc2tsZXQpKTsKPiAKPiBJIHNlZSBzb21l
IHJlc2V0IHBhdGhzIGNhbGxpbmcgcHJvY2Vzc19jc2Igd2hpY2ggbG9va3MgbGlrZSBhIHByb2Js
ZW0gCj4gZm9yIHRoaXMgYXNzZXJ0LgoKT2gsIG5vIGl0J3Mgbm90IDopCgpleGVjbGlzdHNfcmVz
ZXQoKSBpcyBzdXJyb3VuZGVkIGJ5IHJlc2V0X3ByZXBhcmUgYW5kIHJlc2V0X2ZpbmlzaCB3aG8K
YXJlIHJlc3BvbnNpYmxlIGZvciBkaXNhYmxpbmcgdGhlIHRhc2tsZXQgYW5kIHNlcmlhbGlzaW5n
IHdpdGggZGlyZWN0CnN1Ym1pc3Npb24gYXJvdW5kIHRoZSByZXNldC4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
